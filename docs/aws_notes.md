## Glossary
- Amazon Elastic Container Registry: A registry for our docker images
- Amazon Elastic Container Service: a place to manage AND run our docker images 

## AWS CLI user guide
https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html

## docker
[To authenticate Docker to an Amazon ECR private registry with get-login-password](https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry_auth.html)
`aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 963026277714.dkr.ecr.eu-central-1.amazonaws.com`
