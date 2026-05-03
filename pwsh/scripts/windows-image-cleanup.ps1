& (Join-Path -Path $PSScriptRoot -ChildPath "..\utils\require-admin.ps1")

Dism.exe /Online /Cleanup-Image /StartComponentCleanup
