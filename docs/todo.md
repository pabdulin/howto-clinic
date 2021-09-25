# Project targets

## local dev env
It should as easy to setup and run the project as `git clone` and then `run.sh` to start environment.
- Following commands should be available for developer:
  - `build` - builds the project and performs checks (unit tests, linters, vulnerability, etc)
  - `run` - starts the local dev environment
  - `stop` - stops the local dev environment
  - `cleanAndRun` - clean up and run (clean build?)

Tools to use here:
- `gradle` used for builds
  - gradle plugins: [dependency-check](https://github.com/dependency-check/dependency-check-gradle), 
- `docker` and `docker-compose` are used to up and down local environments.

## deployment
A chain from "commit" to "production" i.e. we achieve [CD](https://en.wikipedia.org/wiki/Continuous_delivery). Pushing to `master` branch results in a:
- build, verifications (should at least include all checks that are running locally, ideally they should match) to validate the product is in good state
- on passed verification result is deployed to prod
- for failed deployments it should be easy to detect what was the reason, also the build reports and logs must be easily available

Tools to use here:
- gradle is also used here for a build. Gradle wrapper guarantees same version is used in server build too.
- using github action to deploy to AWS (`.github/aws-prod-dev.yml`)
- [github plugins](https://github.com/marketplace/category/free) - to extend automation features

