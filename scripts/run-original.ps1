param([Parameter(Mandatory=$true)][string]$ProVerifExe)
$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $PSScriptRoot
$Model = Join-Path $Root "models\original\NSPK_Original.pv"
$OutDir = Join-Path $Root "results\original"
$OutFile = Join-Path $OutDir "verification.txt"
if (!(Test-Path $ProVerifExe)) { throw "Executable not found: $ProVerifExe" }
New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
& $ProVerifExe $Model 2>&1 | Tee-Object -FilePath $OutFile
Write-Host "Output saved to $OutFile"
