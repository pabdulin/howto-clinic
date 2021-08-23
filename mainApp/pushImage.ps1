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

echo "[Main App STARTING] pushing $imageFullName..."

echo "[Main App] pushing..."
docker push $imageFullName

echo "[Main App FINISHED] image has been pushed"
