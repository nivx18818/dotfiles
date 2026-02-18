# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Komorebi Start
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🍉

# Documentation:
# @raycast.author nivx18818
# @raycast.authorURL https://raycast.com/nivx18818

$Env:DOTFILES="D:\code\dotfiles"
$Env:KOMOREBI_CONFIG_HOME="$Env:DOTFILES\komorebi"
$Env:WHKD_CONFIG_HOME="$Env:DOTFILES\komorebi\whkd"

komorebic start --whkd
