$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'gdlauncher'
  fileType      = 'EXE'
  url           = 'https://github.com/gorilla-devs/GDLauncher/releases/download/v1.1.20/GDLauncher-win-setup.exe'
  checksum      = 'deed87cdc8be94e6de03dd6594f95c68440ff949775ceec9da130c68f409f1b4'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'GDLauncher*'
}

Install-ChocolateyPackage @packageArgs
