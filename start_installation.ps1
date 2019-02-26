write-host "Installing Chocolatey..." -foregroundcolor Yellow
write-host 
Start-Process powershell.exe (Resolve-Path .\scripts\install_chocolatey.ps1) -Verb runAs | Wait-Process
write-host "Installing dependencies..." -foregroundcolor Yellow
write-host 
Start-Process powershell.exe (Resolve-Path .\scripts\install_dependencies.ps1) -Verb runAs | Wait-Process
write-host "Updating MikTeX..." -foregroundcolor Yellow
write-host 
Start-Process powershell.exe (Resolve-Path .\scripts\update_miktex.ps1) -Verb runAs | Wait-Process
write-host "Downloading repository..." -foregroundcolor Yellow
write-host 
Start-Process powershell.exe (Resolve-Path .\scripts\download-repository.ps1) -Verb runAs | Wait-Process
write-host "Preparing a test page..." -foregroundcolor Yellow
write-host 
Start-Process powershell.exe (Resolve-Path .\scripts\create_test_page.ps1) -Verb runAs | Wait-Process
write-host "Done!" -foregroundcolor Green
write-host 
