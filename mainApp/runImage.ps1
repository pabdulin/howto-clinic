param (
    [parameter(Mandatory=$false,Position=0)]
    [string]$imageTag
)
$ErrorActionPreference = "Stop"

if ($imageTag -eq "")
{
	$imageTag = "latest"
}

$repositoryName="963026277714.dkr.ecr.eu-central-1.amazonaws.com/mainapp"
$imageFullName="${repositoryName}:${imageTag}"
$containerName="dkr-main-app"

docker stop -t 1 $containerName
docker rm -f $containerName
docker run --name $containerName -d -p 8080:8080 $imageFullName
