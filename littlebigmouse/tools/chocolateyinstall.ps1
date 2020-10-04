$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'littlebigmouse'
  fileType      = 'EXE'
  url           = 'https://github.com/mgth/LittleBigMouse/releases/download/4.2.7124.42685/LittleBigMouse_4.2.7124.42685.exe'
  checksum      = '5760b36b506de39cbf8855f3947c57bd742175fed7560023e5d42639ce280d8a'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'LittleBigMouse*'
}

Install-ChocolateyPackage @packageArgs
