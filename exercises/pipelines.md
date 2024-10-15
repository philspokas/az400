
## Exercise: Install Azure DevOps Agent
1. install a custom agent
1. Review generated capabilities
1. Add a user defined capabibility
1. Request the capability in a build

## Exercise: Checkout Multiple Repos in ADO Pipeline
- ADO checks out current repo by default with default params ```checkout: self```
- Additional ADO repos can be checked out using ``` checkout: ```
- GitHub, BitBucket and ADO repos in different orgs can be used via ``` repositories: ```
- Microsoft Learn reference [Check out multiple repositories in your pipeline ](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/multi-repo-checkout?view=azure-devops)


1. Add a pipeline to an existing repo and modify default checkout to disable shallow fetch
1. Add a second checkout to the pipeline to check out a repo in another ADO project in the same org
1. Add a GitHub repository and check it out. Note this will require adding a Pipelines connection to GitHub

## Exercise: Author templates
<p>Azure Pipelines support 2 types of templates</p>

- Includes templates: insert reusable content into a pipeline
- Extends templates: control what is allowed in a pipeline

Using the [Template usage reference](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops&pivots=templates-includes) on Microsofot Learn, complete the following:

1. Create a simple include template and use it in a workflow
2. Create a simple extends template
3. Leverage expressions to dynamically resolve values
4. Add parameters 

## Exercise: Author a Pipeline Decorator
A pipeline decorator can be used to automatically run pre-defined setps. Follow the step by step on Microsoft Learn to create a simple "Hello World" style decorator: [Author a pipeline decorator](https://learn.microsoft.com/en-us/azure/devops/extend/develop/add-pipeline-decorator?view=azure-devops)

