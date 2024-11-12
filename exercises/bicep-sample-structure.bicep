//Parameters
@minLength(3) 
@maxLength(11)
param storagePrefix string

param storageSKU string = 'Standard_LRS'
param location string = resourceGroup().location

//Variables
var uniqueStorageName = '${storagePrefix}${uniqueString(resourceGroup().id)}'

//Resources
resource stg 'Microsoft.Storage/storageAccounts@2019-04-01' = {
    name: uniqueStorageName
    location: location
    sku: {
        name: storageSKU
    }
    kind: 'StorageV2'
    properties: {
        supportsHttpsTrafficOnly: true
    }

    //Child
    resource service 'fileServices' = {
        name: 'default'

        //Nested child
        resource share 'shares' = {
            name: 'exampleshare'
        }
    }
}

//Alternative parent syntax
resource storage 'Microsoft.Storage/storageAccounts@2023-04-01' = {
  name: 'examplestorage'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

resource service 'Microsoft.Storage/storageAccounts/fileServices@2023-04-01' = {
  name: 'default'
  parent: storage
}

resource share 'Microsoft.Storage/storageAccounts/fileServices/shares@2023-04-01' = {
  name: 'exampleshare'
  parent: service
}

//Modules
module webModule './webApp.bicep' = {
    name: 'webDeploy'
    params: {
        skuName: 'S1'
        location: location
    }
}

//Output
output storageEndpoint object = stg.properties.primaryEndpoints
