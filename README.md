# howto-clinic
A 'HowTo' course 'Clinic' homework project.

## Project development structure overview
- Currently project is intended to be a 'Monolith' type app.
- The project is a 'Monorepo' style with this sinle repository.
- The project tend to use 'GitHubFlow' branching approach with a 'Trunk-based' as a final target.
- All commits to `master` branch are automatically deployed to production.
- A production instance deployed as a docker image to AWS PaaS - 'AWS Elastic Container Service' (AWS ECS).

## Rules and requirements
- Code-quality checks must pass (detekt).
- Code-style checks must pass (detekt).
- No warnings allowed.
- Code-coverage minimun of 80% required (JaCoCo).

## How to build
Gradle is used as a build tool for the project.
Run `./build.sh` then `./run.sh` or `./cleanAndRun.sh`.

## User Stories Map
[User Stories Map on miro.com](https://miro.com/app/board/o9J_l4Nx82Q=/)
