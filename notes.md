## Practices, tooling, techniques

Example practices: 
- use swimlanes to manage work by service class
- create and use a Definition of Done

Tooling:
- Git, Pipelines, Actions,  ...

Techniques:
- Parallizing, 

Azure services like App Service

Compare DevOps with GitHub
Details of git

Traffic Manager distributiion

Pipeline secrt and variable limits (100 secrets)

Interact with Key Vault from Pipeline

OWASP ZAP
https://www.zaproxy.org/docs/desktop/start/features/contexts/

GitHub secret Scanning

Package dependencies    


Azure 
* App Service staging
* Traffic Manager IPV6 [learn resource](https://learn.microsoft.com/training/modules/implement-canary-releases-dark-launching/3-examine-traffic-manager)
- Azure App Configuration for feature management 
- Azure Automation w/ PowerShell DSC


# Build and Release
* Parallel jobs at org level
* secruity scan in integration job
* site security scan in deployment job
* Microsoft vs. self-hosted agents
* mulit-job configuration
* retention policies

## Azure Pipelines
* [Pipeline completion triggers](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/pipeline-triggers?view=azure-devops#configure-pipeline-resource-triggers)
* 

## GitHub Action Workflows
### Secrets
* 100 secrets per workflow
* secret must be less than 48K
* use "with:" keyword to use secrets in a "step"
* use "env:" to pass a secret into an environment variable
* not secrets not available in an if statement unless set in environment



# Infrastrcture

## PowerShell DSC
- Azure Automation
    - agent
    - extension
- MOF files
- [learn module](https://learn.microsoft.com/training/modules/implement-desired-state-configuration-dsc/4-explore-azure-automation)

## IaC
- ARM Templates
- Bicep including modules
- 3rd party tools
Basic familiarity with Ansible, Chef, Puppet and Azure Automation
Ansible: agentless
Auzre Automation: Agent or extension

Power BI and pipeline analytics [exercise](https://learn.microsoft.com/training/modules/create-release-pipeline/6-monitor-pipeline-health)

# Azure Services
Know what the service is used for in a DevOps context as well as how the service can be used.

- Azure Data Explorer
    - ingest and query logs, events from ADO et.al.
- Azure Monitor
- App Service
    - Blue green deployments
- App Configuration Service
    - Common config across multiple apps and environments
    - Feature Flag impelementation
- Functions
    - Live site tests in Monitor
- Container Instances
    - Easy/cheap deployment of single service
- Container Apps
    - managed k8s
- AKS
    - container orchestration
- Logic Apps
    - integrate with Monitor scenarios


# Work Management
- Traceability
  - work, source, bug, quality
* KPIs: 
  * Mean time to recover, 
  * Lead Time, 
  * Mean time to detection
  * Retension rates
  * ...
* https://learn.microsoft.com/training/paths/az-400-work-git-for-enterprise-devops/
* What are swimlanes used for. Example is service level class or priority https://learn.microsoft.com/en-us/azure/devops/boards/boards/expedite-work?view=azure-devops
* Definition of Done
* use App Insights to create work items
* Common Vulnerability Scoring System (CVSS) 
* Excercise: https://microsoftlearning.github.io/AZ400-DesigningandImplementingMicrosoftDevOpsSolutions/Instructions/Labs/AZ400_M01_L01_Agile_Plan_and_Portfolio_Management_with_Azure_Boards.html

# Git
* GitHub Flow
* LFS
* pre-commit hook
* Git Machete: repo org
* GitFlow branching model
* Gitx: extension for improved dev flow
* ssh not supported when using LFS
* forking workflow
* merge policies and strategies
* BFG
* git filter-branch and filter-repo

# Process Collaboration

Defining processes for team collaboration
https://learn.microsoft.com/en-us/training/modules/manage-git-branches-workflows/4-explore-git-branch-model-for-continuous-delivery


## Branching workflows
* Feature Branch
    * all work takes place on branch
    * Easy encapuslation
    * Support PR flow
    - Push to central repo
* Release Branch
    * branch dedicated to a release
    * create from stable feature branch
    * test, fix, stabalize
    * isolate relase from feature
    * merge to main and/or deploy 
* Trunk Based
    * cetnroal repo...
    ? concept or different technique

### Flow
1. create branch
2. add commits
3. open PR
4. discuss and review
5. deploy
6. merge

associate issues
Business domain feature sets


Git Forking Worflow
Gitflow Workflow

Why? just enough process to help insure quality, idea is to ship
The right strategy is the one that works for your team


# Monitoring
* [App Insight Availablity tests](https://learn.microsoft.com/en-us/azure/azure-monitor/app/availability?tabs=standard)
* on prem monitoring with Azure Monitor Agent
* kql, project, reduce, take, where
* mapping dependencies

# Additional Topics
- Semantic versioning
- Microsoft dev approach

## To Do:
* https://learn.microsoft.com/en-us/training/courses/az-400t00
* git pull vs rebase (https://stackoverflow.com/questions/2472254/when-should-i-use-git-pull-rebase)

"Alice creates topic branch A, and works on it
Bob creates unrelated topic branch B, and works on it
Alice does git checkout master && git pull. Master is already up to date.
Bob does git checkout master && git pull. Master is already up to date.
Alice does git merge topic-branch-A
Bob does git merge topic-branch-B
Bob does git push origin master before Alice
Alice does git push origin master, which is rejected because it's not a fast-forward merge.
Alice looks at origin/master's log, and sees that the commit is unrelated to hers.
Alice does git pull --rebase origin master
Alice's merge commit is unwound, Bob's commit is pulled, and Alice's commit is applied after Bob's commit.
Alice does git push origin master, and everyone is happy they don't have to read a useless merge commit when they look at the logs in the future.""

* add badges
* https://learn.microsoft.com/en-us/training/courses/az-400t00


* gh release notes and release.yml


## MeasureUp Exam
107
* Lock a branch and required reviewers
* OWASP Dependency-Check and OWASP ZAP
* log analytics workspace architecture 
* app insight sampling
* GitHub access token and system keychain
* No more than 2 WIP (sure, but do one thing at a time whenever possible)
* Team Retrospectives extension
* multiple repos checked out into
* crash dump settings and DataCollectors
* Azure Data Explorer and Pipeline integration
* Using Azure App Configuration Feature Flags
* Requirements Traceability Matrix
* use KeyVault during deployment
* test executiong tren
* SAFe and boards
* Remove large binary with git rebase and git push --force
* JMeter
* GitHub Package feed configuration
* Azure Automanage Machine Configuration
* PowerShell DSC sample configuration
* Pipeline retention policies and leases
* Deployment groups
* DevOps Service Hooks and notifications
* Bicep
* Azure Deployment Environments
* Azure DevOps extensions and pipeline decorator
* Azure Automation State Configuration
* Packer
* Github vs. GHE connecting to boards: PAT/uname and pw vs. OAuth
* Azure DevOps Throughput Units
* Ansible, Chef Infra, DSC
* Pipeline pass rate report
* auto vs. manual service connection. Manual to set connection details, auto to use your own
* NUnit tests
* Integrate Synk with webhooks and apis
* Ansible is agentless but does require Python and SSH
* DevOps Security: Project Admin can edit Project Page
* PAT notifications
* az commands are idempotent
* GitVersion and GitTools
* git and Scalar
* git repack and git gc

### references
- docker agent
https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops
- permisions: https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/permissions?view=azure-devops
- change analysis: https://learn.microsoft.com/en-us/azure/azure-monitor/change/change-analysis
- pipeline decorator: https://learn.microsoft.com/en-us/azure/devops/extend/develop/add-pipeline-decorator?view=azure-devops
- pipeline expressions: https://learn.microsoft.com/en-us/azure/devops/pipelines/process/expressions?view=azure-devops
- Auzre Automation State Configuration: https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview
- Connect Boards to GH https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops
- connect ADO to Defender: https://learn.microsoft.com/en-us/azure/defender-for-cloud/quickstart-onboard-devops
- ADO rate and usage limits:https://learn.microsoft.com/en-us/azure/devops/integrate/concepts/rate-limits?view=azure-devops
- chef architecture: ![alt text](image.png)
- Anzible: https://www.ansible.com/how-ansible-works/
- az repos: https://learn.microsoft.com/en-us/cli/azure/repos/policy/approver-count?view=azure-cli-latest
- pipeline reports: https://learn.microsoft.com/en-us/azure/devops/pipelines/reports/pipelinereport?view=azure-devops
- test analytics: https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-analytics?view=azure-devops
- status checks: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/collaborating-on-repositories-with-code-quality-features/about-status-checks
- env locks in pipelines: https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops&tabs=check-pass#exclusive-lock
- synk and dbot:  https://janaka.dev/devsecops-aking-snyk-github-dependabot-test-drive/
- code scan: https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning-with-codeql
- static analyzers: https://dev.to/dbalikhin/a-quick-comparison-of-security-static-code-analyzers-for-c-2l5h
- How MS: https://learn.microsoft.com/en-us/devops/plan/how-microsoft-plans-devops

- permission sets: https://learn.microsoft.com/en-us/azure/devops/project/wiki/wiki-readme-permissions?view=azure-devops

- Storage Insights: https://learn.microsoft.com/en-us/azure/storage/common/storage-insights-overview
- Container Insights: https://learn.microsoft.com/en-us/azure/azure-monitor/containers/container-insights-analyze
- Semantic release: https://github.com/lluchmk/semantic-release-ado
- gitversion: https://gitversion.net/docs/
- multi repos: https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/multi-repo-checkout?view=azure-devops
- retros: https://marketplace.visualstudio.com/items?itemName=ms-devlabs.team-retrospectives
- https://learn.microsoft.com/en-us/azure/devops/boards/sprints/scrum-key-concepts?view=azure-devops
- key vault and secret rotation: https://learn.microsoft.com/en-us/azure/key-vault/secrets/tutorial-rotation
- cumulative flow: https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cumulative-flow-cycle-lead-time-guidance?view=azure-devops
- kv in pipelines: https://learn.microsoft.com/en-us/azure/devops/pipelines/release/azure-key-vault?view=azure-devops&tabs=classic
- ghd auth: https://docs.github.com/en/desktop/installing-and-authenticating-to-github-desktop/authenticating-to-github-in-github-desktop
- log analytics workspace arch: https://learn.microsoft.com/en-us/azure/azure-monitor/logs/workspace-design
- otel sampling: https://learn.microsoft.com/en-us/previous-versions/azure/azure-monitor/app/sampling
- owasp dependency chec: https://owasp.org/www-project-dependency-check/
- devops security: https://learn.microsoft.com/en-us/azure/defender-for-cloud/devops-support
- Microsoft Security DevOps Azure DevOps https://learn.microsoft.com/en-us/azure/defender-for-cloud/azure-devops-extension
- Cloud devosp security https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction
- release notes generator https://github.com/azure-samples/azure-devops-release-notes/tree/main
- remove a large binary: https://learn.microsoft.com/en-us/azure/devops/repos/git/remove-binaries?view=azure-devops
- SAFe and Boards: https://learn.microsoft.com/en-us/azure/devops/boards/plans/safe-concepts?view=azure-devops&tabs=agile-process
- test execution trend: https://learn.microsoft.com/en-us/azure/devops/report/powerbi/sample-test-plans-execution-trend?view=azure-devops&tabs=powerbi
- test execution trend report: https://learn.microsoft.com/en-us/azure/devops/report/powerbi/sample-test-plans-execution-trend?view=azure-devops&tabs=powerbi
- metric widgets: https://marketplace.visualstudio.com/items?itemName=solidify.devops-metrics
- keyvault secure deployment: https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/key-vault-parameter?tabs=azure-cli
- Requirements Traceability Matrix: https://www.wrike.com/blog/what-is-requirements-traceability-matrix/
- ADO Requirements Traceability: https://learn.microsoft.com/en-us/azure/devops/pipelines/test/requirements-traceability?view=azure-devops
- feature flags: https://learn.microsoft.com/en-us/azure/azure-app-configuration/quickstart-feature-flag-dotnet-background-service
- app config feature flags: https://learn.microsoft.com/en-us/azure/azure-app-configuration/manage-feature-flags?tabs=azure-portal
- DevOps Task for Azure Data Explorer: https://learn.microsoft.com/en-us/azure/data-explorer/devops
