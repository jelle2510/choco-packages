$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'gdlauncher'
  fileType      = 'EXE'
  url           = 'https://github.com/gorilla-devs/GDLauncher/releases/download/v1.0.11/GDLauncher-win-setup.exe'
  checksum      = 'e30bb1fb51e83251ec8acf1606d37defbda054668ad5f188013a44609409036e'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'GDLauncher*'
}

Install-ChocolateyPackage @packageArgs
