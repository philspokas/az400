# Container Exercises
Create and run containers. Pre-built images and custom built are used

Pre-requisites for local operations
* Docker Desktop

Pre-requisites for deploying containers to Azure
* Azure subscription
* Azure Container Registry is created and available

## Getting Started with Containers
* Follow [Develop with containers](https://docs.docker.com/get-started/introduction/develop-with-containers/)
* Note that an LAMP stack  application and tech stack can be run
    * Containers created in virtual network
    * Data volume for sql data created
    * React, Node, php
    * Traefik reverse proxy
    * Mysql
* After running ```docker compose watch``` note containers running in Docker Desktop
* Run ```docker compose down``` noting containers are shutdown and removed

## Create and deploy .NET Container

### Publish
* Production and SDK images
* "Chiseled" container images contain minimal components

1. Use dotnet publish to build a container image [Step by step](https://learn.microsoft.com/en-us/dotnet/core/docker/introduction?view=vs-2022#building-container-images)
    - note container ddetails in Docker Desktop
    - review [Docker coommand line options](https://docs.docker.com/reference/cli/docker/container/run/)
1. Use ```docker init``` to generate default Dockerfile and compose.yaml

### Containerize
1. Follow [step by step](https://learn.microsoft.com/en-us/dotnet/core/docker/build-container?view=vs-2022&tabs=windows&pivots=dotnet-8-0) to containerize a .NET appp 
    - note multi-stage build process using sdk image and runtime image 
1. Use ```docker run -it --entrypoint=sh counter-image``` to inspect contents

## Publish App 
https://learn.microsoft.com/en-us/dotnet/core/docker/publish-as-container?pivots=dotnet-8-0

## Publish to Azure 
1. Push to ACR
https://learn.microsoft.com/en-us/azure/container-registry/container-registry-get-started-docker-cli?tabs=azure-cli

1. Deploy to Azure Container Instance

https://learn.microsoft.com/en-us/azure/container-instances/container-instances-tutorial-prepare-app
1. Deploy to Azure Container App

1. Build pipeline to deploy

## Containerize Coalesce
1. Generate simple widgets app
https://intellitect.github.io/Coalesce/stacks/vue/getting-started.html
1. Use Publish to run in a continer
1. Use Docker init and Docker Compose to add database service container
1. Push to Azure 

## AKS w/ Bicep
https://learn.microsoft.com/en-us/azure/aks/learn/quick-kubernetes-deploy-bicep

## AKS w/ Terraform
https://learn.microsoft.com/en-us/azure/aks/learn/quick-kubernetes-deploy-terraform

## Azure Container Apps
https://learn.microsoft.com/en-us/azure/container-apps/quickstart-code-to-cloud?tabs=bash%2Ccsharp&pivots=with-dockerfile

## Multi-container builds
https://docs.docker.com/build/building/multi-platform/
https://devblogs.microsoft.com/dotnet/improving-multiplatform-container-support/