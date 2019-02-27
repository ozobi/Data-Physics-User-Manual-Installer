function PAUSE{
    write-host "Paused! Press Enter to continue..." -foregroundcolor Red
    read-host 
}

try{
	write-host "1/5 Installing Chocolatey..." -foregroundcolor Yellow
	write-host 
	Start-Process powershell.exe (Resolve-Path .\scripts\install_chocolatey.ps1) -Verb runAs | Wait-Process
	
	write-host "2/5 Installing dependencies..." -foregroundcolor Yellow
	write-host 
	Start-Process powershell.exe (Resolve-Path .\scripts\install_dependencies.ps1) -Verb runAs | Wait-Process
	
	write-host "3/5 Updating MikTeX..." -foregroundcolor Yellow
	write-host 
	Start-Process powershell.exe (Resolve-Path .\scripts\update_miktex.ps1) -Verb runAs | Wait-Process
	
	write-host "4/5 Downloading repository..." -foregroundcolor Yellow
	write-host 
	Start-Process powershell.exe (Resolve-Path .\scripts\download_repository.ps1) -Verb runAs | Wait-Process
	
	write-host "5/5 Preparing a test page..." -foregroundcolor Yellow
	write-host 
	Start-Process powershell.exe (Resolve-Path .\scripts\compile_test_page.ps1) -Verb runAs | Wait-Process
	
	write-host "Done!" -foregroundcolor Green
	write-host 
	PAUSE
	
} catch{
	write-host "Fail!" -foregroundcolor Red
	write-host 
	PAUSE
}
