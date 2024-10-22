# Pipeline Jobs Exercises

Job related exercises

## Dependent Jobs
- Create a pipeline with 4 jobs
- Jobs 2 and 3 depend on job 1 and can run in parallel
- Job 4 is a deployment job that depends on Jobs 2 and 3 and always runs regardless of Job 2 and Job 3 outcome
- Reference https://learn.microsoft.com/en-us/azure/devops/pipelines/process/phases?view=azure-devops
- Use expressions to verify status https://learn.microsoft.com/en-us/azure/devops/pipelines/process/expressions?view=azure-devops

## Matrix jobs
- Use matrix to run a job on multiple platforms

## Container Jobs
- Create an Azure Pipelines pipline that uses a container job
https://learn.microsoft.com/en-us/azure/devops/pipelines/process/container-phases?view=azure-devops&tabs=linux
- Service containers provide supporting services to running jobs. An example is a database to execute integration tests. Use with container or other job type
