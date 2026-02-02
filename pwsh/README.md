# PowerShell

## Configuration

- Open PowerShell and run the following command to check whether you already have a profile file:

  ```powershell
  Test-Path $PROFILE
  ```

  If the command returns `False`, create the profile file by running:

  ```powershell
  New-Item -Path $PROFILE -ItemType File -Force
  ```

- Open the profile file with your favorite text editor and add the following lines at the end of the file to source this repository's PowerShell profile:

  ```powershell
  . "<path-to-this-repository>\pwsh\profile.ps1"
  ```

  For example:

  ```powershell
  . "D:\code\dotfiles\pwsh\profile.ps1"
  ```

- Allow the execution of PowerShell scripts if you haven't already done so:

  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

- Restart your PowerShell session to apply the changes.

## Modules

- [Terminal-Icons](https://github.com/devblackops/Terminal-Icons) — PowerShell module to display file icons in the terminal.

  Install via PowerShell Gallery:

  ```powershell
  Install-Module -Name Terminal-Icons -Repository PSGallery -Scope CurrentUser
  ```

  Or via Scoop:

  ```powershell
  scoop bucket add extras
  scoop install terminal-icons
  ```
