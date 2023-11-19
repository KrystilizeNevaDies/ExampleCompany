$lethalCompanyPath = (Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 1966720").InstallLocation
if ($null -eq $lethalCompanyPath) {
    throw "Steam Lethal Company install not found"
}

$cd = Get-Location
$dllPath = Join-Path $cd "ExampleCompany/bin/Debug/ExampleCompany.dll"

# Copy to BepInEx/plugins
$destPath = Join-Path $lethalCompanyPath "BepInEx/plugins/ExampleCompany.dll"
Copy-Item $dllPath $destPath -Force