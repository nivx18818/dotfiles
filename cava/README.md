# Cava

## Prerequisites

- Visual C++ redistributable: `scoop install vcredist`

## Installation

- Install from [GitHub Releases](https://github.com/karlstav/cava/releases).

- Or install via WinGet (not recommended since the version on WinGet is outdated):

  ```powershell
  winget install karlstav.cava
  ```

## `XDG_CONFIG_HOME`

- Open PowerShell and run the following command to check whether you already have a profile file:

  ```powershell
  Test-Path $PROFILE
  ```

  If the command returns `False`, create the profile file by running:

  ```powershell
  New-Item -Path $PROFILE -ItemType File -Force
  ```

- Open the profile file with your favorite text editor and add the following lines at the end of the file:

  ```powershell
  $Env:XDG_CONFIG_HOME="$HOME\.config"
  ```

- Create a symbolic link from this repository's `cava` folder to your cava configuration directory:

  ```powershell
  $Env:DOTFILES = "path\to\this\repo"
  ```

  ```powershell
  # Remove the existing Cava configuration directory if it exists
  Remove-Item "$Env:XDG_CONFIG_HOME\cava" -Recurse -Force -ErrorAction Ignore
  # Create a symbolic link to the cava configuration in this repository
  New-Item -ItemType SymbolicLink -Path "$Env:XDG_CONFIG_HOME\cava" -Target "$Env:DOTFILES\cava"
  ```

- Restart your PowerShell session to apply the changes.
