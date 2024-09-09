## About the exam
Exam AZ-400: Designing and Implementing Microsoft DevOps Solutions tests a broad set of knowledge and generally doesn't dive too deep.
However, one should expect some specific questions in some areas.

AZ-102 or AZ-204 pre-reqs to the [DevOps Engineer Expert](https://learn.microsoft.com/en-us/credentials/certifications/devops-engineer/) certification of which AZ-400 is a part. Expect to see some questions related to those areas on the exam.

Practices, tooling, techniques

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

GitHub Secret Scanning

Package dependencies    



Azure 
* App Service staging
* Traffic Manager IPV6 [learn resource](https://learn.microsoft.com/training/modules/implement-canary-releases-dark-launching/3-examine-traffic-manager)
- Azure App Configuration for feature management 
- Azure Automation w/ PowerShell DSC


Build and Release
* Parallel jobs at org level
* secruity scan in integration job
* site security scan in deployment job
* Microsoft vs. self-hosted agents
* mulit-job configuration
* retention policies



PowerShell DSC
- Azure Automation
- MOF files
- [learn module](https://learn.microsoft.com/training/modules/implement-desired-state-configuration-dsc/4-explore-azure-automation)

ARM Templates
Bicep including modules

Basic familiarity with Ansible, Chef, Puppet and Azure Automation
Ansible: agentless
Auzre Automation: Agent or extension

Power BI and pipeline analytics [exercise](https://learn.microsoft.com/training/modules/create-release-pipeline/6-monitor-pipeline-health)

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
* git pull vs rebase (https://stackoverflow.com/questions/2472254/when-should-i-use-git-pull-rebase)

Alice creates topic branch A, and works on it
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
Alice does git push origin master, and everyone is happy they don't have to read a useless merge commit when they look at the logs in the future.

