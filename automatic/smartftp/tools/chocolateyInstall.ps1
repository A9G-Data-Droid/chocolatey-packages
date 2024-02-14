﻿$ErrorActionPreference = 'Stop'

if ([System.Environment]::OSVersion.Version -lt (new-object 'Version' 10, 0, 14393)) {
  $packageName = 'smartftp'
  $errorMessage = 'Your Windows version is not suitable for this package. This package is only for Windows 10 Version 1607 or higher'
  Write-Output $packageName $errorMessage
  throw $errorMessage
}

$packageArgs = @{
  packageName            = 'smartftp'
  fileType               = 'msi'
  url                    = 'https://www.smartftp.com/get/SmartFTP86.msi'
  url64bit               = 'https://www.smartftp.com/get/SmartFTP64.msi'
  checksum               = '8d885003aa204d160b3cfab01f7f686126dddc0e25d171ec7dd14bf3b369e85e'
  checksum64             = '9fd626cba54e4156db7a59a64e97ee2d5170bf318c9084cd90af0c7bd5bc8683'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/quiet'
  validExitCodes         = @(0)
  softwareName           = 'SmartFTP Client'
}
Install-ChocolateyPackage @packageArgs
