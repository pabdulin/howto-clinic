param (
    [parameter(Mandatory=$false,Position=0)]
    [string]$imageTag
)

if ($imageTag -eq "")
{
	$imageTag = "latest"
}

$repositoryName="someid.dkr.ecr.us-east-2.amazonaws.com/mainapp"
$imageFullName="${repositoryName}:${imageTag}"

echo "[Main App STARTING] building $imageFullName..."

echo "[Main App] creating jar..."
Start-Process $PSScriptRoot\..\gradlew -ArgumentList "bootJar --no-daemon" -Wait

echo "[Main App] creating docker image..."
docker build -t $imageFullName $PSScriptRoot

echo "[Main App FINISHED] image has been built"
