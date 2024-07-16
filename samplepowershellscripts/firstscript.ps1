Write-Host "Creating replace config Folder Structure"
if (!(Test-Path -Path "C:/NaveenDir/Dev/Web.config")) {
    Write-Host "Creating NaveenDir if doesnt exist"
    New-Item -Path "C:/NaveenDir" -ItemType Directory -Force
    New-Item -Path "C:/NaveenDir/Dev" -ItemType Directory
    New-Item -Path "C:/NaveenDir/Dev/web.config" -ItemType File
    Add-Content -Path "C:/NaveenDir/Dev/web.config" -Value (Get-Date) -PassThru
    Get-Content -Path "C:\NaveenDir/Dev/web.confg"
        
} else {
    Write-Host "Web.config already exists" 
    Add-Content -Path "C:/NaveenDir/Dev/web.config" -Value (Get-Date) -PassThru -NoNewline
    Get-Content -Path "C:/NaveenDir/Dev/web.config"  
    
}

if (!(Test-Path -Path "C:/NaveenDir/Cert/Web.config")) {
    Write-Host "Creating NaveenDir if doesnt exist"
    New-Item -Path "C:/NaveenDir" -ItemType Directory -Force
    New-Item -Path "C:/NaveenDir/Cert" -ItemType Directory
    New-Item -Path "C:/NaveenDir/Cert/web.config" -ItemType File
        
} else {
    Write-Host "Web.conf already exists"   
    
}
if (!(Test-Path -Path "C:/NaveenDir/Prod/Web.config")) {
    Write-Host "Creating NaveenDir if doesnt exist"
    New-Item -Path "C:/NaveenDir" -ItemType Directory -Force
    New-Item -Path "C:/NaveenDir/Prod" -ItemType Directory
    New-Item -Path "C:/NaveenDir/Prod/web.config" -ItemType File
        
} else {
    Write-Host "Web.config already exists"   
    
}

# If (Test-Path -Path C:/NaveenDir) {
#     New-Item -Path C:/NaveenDir/Dev -ItemType Directory
#     New-Item -Path C:/NaveenDir/Dev/Web.config -ItemType File
# }