﻿$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = '360ts'
  fileType               = 'exe'
  url                    = 'https://free.360totalsecurity.com/totalsecurity/360TS_Setup_11.0.0.1086.exe'
  checksum               = '2659348e73857d9e0945bb4e63e410aeb809ec34f274baafa1dbe17d54339ea7'
  checksumType           = 'sha256'
  silentArgs             = '/S'
  validExitCodes         = @(0)
  softwareName           = '360 Total Security'
}
Install-ChocolateyPackage @packageArgs
