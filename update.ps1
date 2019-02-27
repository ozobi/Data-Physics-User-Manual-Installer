function PAUSE{
    write-host "Paused! Press Enter to continue..." -foregroundcolor Red
    read-host 
}

try{
	write-host "Starting update..." -foregroundcolor Yellow
	write-host 
	
	Start-Process powershell.exe (Resolve-Path .\scripts\update_repository.ps1) -Verb runAs | Wait-Process
	
	write-host "Done!" -foregroundcolor Green
	write-host 
	PAUSE
	
} catch{
	write-host "Fail!" -foregroundcolor Red
	write-host 
	PAUSE
}
