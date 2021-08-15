param (
    [parameter(Mandatory=$false,Position=0)]
    [string]$imageTag
)

if ($imageTag -eq "")
{
	$imageTag = "latest"
}

pwsh ./mainApp/buildImage.ps1 $imageTag
