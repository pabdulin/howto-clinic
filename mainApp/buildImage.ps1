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

echo "[Main App STARTING] building $imageFullName..."

echo "[Main App] creating jar..."
Start-Process $PSScriptRoot\..\gradlew -ArgumentList "bootJar --no-daemon" -Wait

echo "[Main App] creating docker image..."
docker build -t $imageFullName $PSScriptRoot

echo "[Main App FINISHED] image has been built"
