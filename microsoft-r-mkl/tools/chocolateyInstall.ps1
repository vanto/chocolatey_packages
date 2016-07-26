$packageName = 'microsoft-r-mkl'
$installerType = 'EXE'
$url = '{{DownloadUrl}}'
$silentArgs = '/silent'
$validExitCodes = @(0)

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $scriptPath "$($packageName)Install.ahk"
$ahkProc = Start-Process -FilePath $ahkExe `
                           -ArgumentList $ahkFile `
                           -PassThru
$ahkId = $ahkProc.Id
Write-Debug "$ahkExe start time:`t$($ahkProc.StartTime.ToShortTimeString())"
Write-Debug "Process ID:`t$ahkId"                        
Write-Debug "$Env:ChocolateyInstall\helpers\functions"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes