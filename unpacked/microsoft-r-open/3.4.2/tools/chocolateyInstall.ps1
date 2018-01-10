$packageName = 'microsoft-r-open'
$installerType = 'EXE'
$url = 'https://mran.blob.core.windows.net/install/mro/3.4.2/microsoft-r-open-3.4.2.exe'
$checksum = '2B2421D175B1C129EF6CE72DA2A3D9A792FE31464090877E7059CCA1356B4CD7'
$checkumType = 'sha256'
$silentArgs = '/quiet'
$validExitCodes = @(0, 1603, 1626)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" -Url64Bit "$url" -checksum $checksum -checksumType $checkumType -validExitCodes $validExitCodes