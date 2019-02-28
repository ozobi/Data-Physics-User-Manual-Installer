function PAUSE{
    write-host "Paused! Press Enter to continue..." -foregroundcolor Red
    read-host 
}

try{
	write-host "1/5 Installing Chocolatey..." -foregroundcolor Yellow
	write-host 
	$p1i = Resolve-Path $PSScriptRoot\scripts\install_chocolatey.ps1
	$p1 = Start-Process -FilePath powershell.exe -ArgumentList "-file `"$($p1i.Path)`"" -Verb runAs -PassThru
	$p1.WaitForExit()
	
	write-host "2/5 Installing dependencies..." -foregroundcolor Yellow
	write-host 
	$p2i = Resolve-Path $PSScriptRoot\scripts\install_dependencies.ps1
	$p2 = Start-Process -FilePath powershell.exe -ArgumentList "-file `"$($p2i.Path)`"" -Verb runAs -PassThru
	$p2.WaitForExit()
	
	write-host "3/5 Updating MikTeX..." -foregroundcolor Yellow
	write-host 
	$p3i = Resolve-Path $PSScriptRoot\scripts\update_miktex.ps1
	$p3 = Start-Process -FilePath powershell.exe -ArgumentList "-file `"$($p3i.Path)`"" -Verb runAs -PassThru
	$p3.WaitForExit()
	
	write-host "4/5 Downloading repository..." -foregroundcolor Yellow
	write-host 
	$p4i = Resolve-Path $PSScriptRoot\scripts\download_repository.ps1
	$p4 = Start-Process -FilePath powershell.exe -ArgumentList "-file `"$($p4i.Path)`"" -Verb runAs -PassThru
	$p4.WaitForExit()
	
	write-host "5/5 Preparing a test page..." -foregroundcolor Yellow
	write-host 
	$p5i = Resolve-Path $PSScriptRoot\scripts\compile_test_page.ps1
	$p5 = Start-Process -FilePath powershell.exe -ArgumentList "-file `"$($p5i.Path)`"" -Verb runAs -PassThru
	$p5.WaitForExit()
	
	write-host "Done!" -foregroundcolor Green
	write-host 
	PAUSE
	
} catch{
	write-host "Fail!" -foregroundcolor Red
	write-host 
	PAUSE
}
