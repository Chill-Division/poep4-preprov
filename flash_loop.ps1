# Paths aligned to your standalone exe directory
$Esptool = "esptool.exe"
$Firmware = "poep4-preprov-v1.factory.bin"
$Baud = "460800"
$Count = 1

# Safety checks to ensure paths are correct
if (-not (Test-Path $Esptool)) {
    Write-Error "Error: esptool.exe not found at $Esptool"
    exit
}

if (-not (Test-Path $Firmware)) {
    Write-Error "Error: Firmware file not found at $Firmware"
    exit
}

Write-Host "Starting Standalone Batch Flashing Script..."
Write-Host "Press [Ctrl+C] to exit at any time."

while ($true) {
    Write-Host "------------------------------------------------"
    Write-Host "Ready for Unit #$Count"
    Write-Host "1. Connect the ESP PoE-P4 via USB-C."
    Write-Host "2. Hold the button for 5 seconds to enter bootloader mode."
    Read-Host "Press [ENTER] to start flashing"

    Write-Host "Flashing... Do not unplug."
    
    # The '&' tells PowerShell to execute the path string as an application
    & $Esptool --chip esp32p4 --baud $Baud --before default-reset --after hard-reset write_flash 0x0 $Firmware

    if ($LASTEXITCODE -eq 0) {
        Write-Host "SUCCESS: Unit #$Count flashed successfully!"
        $Count++
    } else {
        Write-Host "ERROR: Flashing failed. Check your connections or button-press timing."
    }
    
    Write-Host "Disconnect the unit."
    Write-Host "" 
}