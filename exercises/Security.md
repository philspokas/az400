# Security

## GitHub Advanced Security

- Included in free or paid for private accounts
- Configure repo Security settings
- 

## Addiing OWASP ZAP (Zed Attack Proxy) to a pipeline

We'll use an existing pipeline that deploys a simple [Coalesce](https://intellitect.github.io/Coalesce/) app

Reference article https://devblogs.microsoft.com/premier-developer/azure-devops-pipelines-leveraging-owasp-zap-in-the-release-pipeline/

## Secure Files

Add a file, secure it to a pipeline and access it via a pipeline

https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops

The following snippet, taken from the lab, shows downloading a secure file and then installing it on the agent
```
- task: DownloadSecureFile@1
  name: caCertificate
  displayName: 'Download CA certificate'
  inputs:
    secureFile: 'myCACertificate.pem'

- script: |
    echo Installing $(caCertificate.secureFilePath) to the trusted CA directory...
    sudo chown root:root $(caCertificate.secureFilePath)
    sudo chmod a+r $(caCertificate.secureFilePath)
    sudo ln -s -t /etc/ssl/certs/ $(caCertificate.secureFilePath)
```

## Securing Agents

https://microsoftlearning.github.io/implement-security-through-pipeline-using-devops/Instructions/Labs/APL2001_M03_L03_Managed_Identity_for_Projects_and_Pipelines.html

## Integrate Key Vault in your pipeline

https://microsoftlearning.github.io/implement-security-through-pipeline-using-devops/Instructions/Labs/APL2001_M06_L06_Integrate_Azure_Key_Vault_With_Azure_Pipelines.html

## Connect Defender for Cloud

1. connect ADO to Defender: https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-devops

## Defender Azure DevOps Extension

https://learn.microsoft.com/en-us/azure/defender-for-cloud/azure-devops-extension

## Configure GitHub Advanced Security in Azure DevOps

https://learn.microsoft.com/en-us/azure/defender-for-cloud/azure-devops-extension
