# Tests and test results

## Setup
Exercises below will use a Coalesce gnerated app. What the app does is not important it is only used to demonstrate the concepts.

If you already have an application deployed that can be used you can save yourself some time. However, we do want to keep the solution small in order to focus on the testing topic.

## Unit Tests and Code Coverage
By default, executing tests with dotnet test will fail a build if a build fails. Unit tests can also be used to generate code coverage results. Unit tests are
- Small, fast, cheap to execute
- do not require a deployed environment
- Fail build if unit tests fail

Add code coverage to an existing dotnet project by following https://learn.microsoft.com/en-us/training/modules/run-quality-tests-build-pipeline/6-perform-code-coverage

- Exercise is dotnet, coverage can be generated for other stacks
- Once running locally, verify code coverage and results in Azure Pipelines

https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-code-coverage

## Integration Tests
Integration tests test 2 or more services of an application. This typically requires a deployment. Containers including service containers are an approach for executing integration tests without a deployment.
Integration tests can be written in any testing framework
API endpoints

1. Call api endpoints provided by the application
1. Containers to exeucte without deploying
1. Deployment environmnet

Be sure to fail a build if tests fail. If using "dotnet test" style exeuction this will happen by default.

## Automated Functional Tests
1. Add Playwright tests to existing web application

## Manual Functional Tests
1. Create and execute manual tests with Azure Test Plans


