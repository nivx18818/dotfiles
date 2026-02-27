# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Windows Image Cleanup
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon ⚙️
# @raycast.description Remove old versions of system components

# Documentation:
# @raycast.author nivx18818
# @raycast.authorURL https://raycast.com/nivx18818

Write-Output "[!] Requires gsudo: https://github.com/gerardog/gsudo"
sudo Dism.exe /Online /Cleanup-Image /StartComponentCleanup
