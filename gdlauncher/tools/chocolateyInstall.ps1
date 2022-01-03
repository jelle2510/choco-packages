$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'gdlauncher'
  fileType      = 'EXE'
  url           = 'https://github.com/gorilla-devs/GDLauncher/releases/download/v1.1.21/GDLauncher-win-setup.exe'
  checksum      = 'df6b8afa5a12788f48d1e8cb808abe8657c76d837caae969f877600172859176'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'GDLauncher*'
}

Install-ChocolateyPackage @packageArgs
