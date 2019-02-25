# Data Physics User Manual Installer

## Instructions
- Click Start and run `PowerShell.exe` as administrator.
- Type `Set-ExecutionPolicy Unrestricted`.

  **Run these scripts in order**
  - `0-install_chocolatey.ps1`
  - `1-install_dependencies.ps1`
  - `2-download-repository.ps1`

- Default installation folder is `C:\Data-Physics-User-Manual-Generator`.
- Extract user manual package under `Contents` directory.
- Run `Compile.ps1` to generate the website and/or the PDF.
