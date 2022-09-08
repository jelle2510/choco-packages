$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'gdlauncher'
  fileType      = 'EXE'
  url           = 'https://github.com/gorilla-devs/GDLauncher/releases/download/v1.1.29/GDLauncher-win-setup.exe'
  checksum      = '453a308a5d60b6370dc09343f193b46fed4dfdd654a24acd0bba01a778660430'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'GDLauncher*'
}

Install-ChocolateyPackage @packageArgs
