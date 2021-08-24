param (
    [parameter(Mandatory=$false,Position=0)]
    [string]$imageTag
)
$ErrorActionPreference = "Stop"

if ($imageTag -eq "")
{
	$imageTag = "latest"
}

pwsh ./mainApp/runImage.ps1 $imageTag
