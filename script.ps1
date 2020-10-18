# Run the registry files
.\changeFont.reg
New-Item –Path "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" –Name MTCUVC
.\changeVolumeSlider.reg

# Install Classic Shell
$url = "https://github.com/streamsniperrty/custom-windows10/releases/download/v1.0/ClassicShellSetup_4_3_1.exe"
$outpath = "$(Get-Location)/classicShell.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath
.\classicShell.exe

# Install PowerToys
$url = "https://github.com/microsoft/PowerToys/releases/download/v0.23.2/PowerToysSetup-0.23.2-x64.exe"
$outpath = "$(Get-Location)/powertoys.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath
.\powertoys.exe