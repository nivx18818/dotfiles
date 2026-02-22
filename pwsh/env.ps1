param(
    [string]$Theme = "monochrome"
)

$Env:DOTFILES="D:\code\dotfiles"
$Env:KOMOREBI_CONFIG_HOME="$Env:DOTFILES\komorebi\$Theme"
$Env:WHKD_CONFIG_HOME="$Env:DOTFILES\komorebi\whkd"
$Env:YASB_CONFIG_HOME="$Env:DOTFILES\yasb\$Theme"
$Env:XDG_CONFIG_HOME="$HOME\.config"

if ($Theme -eq "catppuccin") {
    $OmpTheme = "poimandres"
    $InlinePrediction = "#767c9d"
} elseif ($Theme -eq "monochrome") {
    $OmpTheme = "vesper"
    $InlinePrediction = "#a0a0a0"
}
