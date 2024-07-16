param (

   [string]$mainDir,
   [string]$env,
   [string]$filename
 )
Write-Host "Creating replace config Folder Structure"
if (!(Test-Path -Path "$mainDir/$env/$filename")) {
    Write-Host "Creating $mainDir if doesnt exist"
    New-Item -Path "$mainDir" -ItemType Directory -Force
    New-Item -Path "$mainDir/$env" -ItemType Directory
    New-Item -Path "$mainDir/$env/$filename" -ItemType File
    Add-Content -Path "$mainDir/$env/$filename" -Value (Get-Date) -PassThru
    Get-Content -Path "$mainDir/$env/$filename"
        
} else {
    Write-Host "$filename already exists" 
    Add-Content -Path "$mainDir/$env/$filename" -Value (Get-Date) -PassThru -NoNewline
    Get-Content -Path "$mainDir/$env/$filename"  
    
}