$lethalCompanyPath = (Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 1966720").InstallLocation
if ($null -eq $lethalCompanyPath) {
    throw "Steam Lethal Company install not found"
}

$cd = Get-Location
$dllPath = Join-Path $cd "OpenCompany/bin/Debug/OpenCompany.dll"

# Copy to BepInEx/plugins
$destPath = Join-Path $lethalCompanyPath "BepInEx/plugins/OpenCompany.dll"
Copy-Item $dllPath $destPath -Force