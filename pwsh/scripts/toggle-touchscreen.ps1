$devices = Get-PnpDevice | Where-Object {
    $_.FriendlyName -like "*touch screen*" -and $_.Status -ne "Unknown"
}

if (-not $devices) {
    Write-Host "No touchscreen device found."
    exit
}

foreach ($device in $devices) {
    if ($device.Status -eq "OK") {
        Write-Host "Disabling: $($device.FriendlyName)"
        # Use gsudo to run as admin: https://github.com/gerardog/gsudo
        sudo { Disable-PnpDevice -InstanceId $args[0] -Confirm:$false } -args $device.InstanceId
    }
    else {
        Write-Host "Enabling: $($device.FriendlyName)"
        sudo { Enable-PnpDevice -InstanceId $args[0] -Confirm:$false } -args $device.InstanceId
    }
}
