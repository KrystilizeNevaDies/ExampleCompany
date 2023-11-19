Write-Output "Linking Dependencies for Open Company"

$lethalCompanyPath = (Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 1966720").InstallLocation
if ($null -eq $lethalCompanyPath) {
    throw "Steam Lethal Company install not found"
}

$cd = Get-Location
$dependenciesPath = Join-Path $cd "dependencies"

# BepInEx/core
Copy-Item (Join-Path $lethalCompanyPath "BepInEx/core") (Join-Path $dependenciesPath "BepInEx/core") -Recurse -Force

# Lethal Company_Data/Managed
Copy-Item (Join-Path $lethalCompanyPath "Lethal Company_Data/Managed") (Join-Path $dependenciesPath "Lethal Company_Data/Managed") -Recurse -Force