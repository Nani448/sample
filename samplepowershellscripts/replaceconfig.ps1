param (

   [string]$Temp_Dir,
   [string]$DeploymentFolder,
   [string]$Environment
 )

 if ($Environment -eq "Dev")
 {
 Write-Host "Copying Dev Web.Conf file to $DeploymentFolder"
 Copy-Item -Path $Temp_Dir\WebConfig\Dev\Web.config -Destination $DeploymentFolder -ErrorAction Stop
 } 
 elseif ($Environment -eq "Cert") {
 Write-Host "Copying Cert Web.Conf file to $DeploymentFolder"
 Copy-Item -Path $Temp_Dir\WebConfig\Cert\Web.config -Destination $DeploymentFolder -ErrorAction Stop
 } 
 elseif ($Environment -eq "Prod") {
 Write-Host "Copying Prod Web.conf file to $DeploymentFolder"
 Copy-Item -Path $Temp_Dir\WebConfig\Prod\Web.config -Destination $DeploymentFolder -ErrorAction Stop
 } 
 else {
 write-host "None of the environments are selected"
 }