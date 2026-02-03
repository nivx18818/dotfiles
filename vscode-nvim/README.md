# VSCode Neovim Integration

This setup allows you to use Neovim as the backend for VSCode's editing capabilities.

## Prerequisites

- Install [Neovim](https://neovim.io/).

  - Winget

    ```powershell
    winget install Neovim.Neovim
    ```

  - Scoop

    ```powershell
    scoop bucket add main
    scoop install main/neovim
    ```

- Install [VSCode](https://code.visualstudio.com/).

- Install the [VSCode Neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim) and [Which Key](https://marketplace.visualstudio.com/items?itemName=VSpaceCode.whichkey) extensions for VSCode.

## Configuration

### Neovim

#### `XDG_CONFIG_HOME`

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

- Create a symbolic link from this repository's `nvim` folder to your Neovim configuration directory:

  ```powershell
  New-Item -ItemType SymbolicLink -Path "$Env:XDG_CONFIG_HOME\nvim" -Target "<path-to-this-repository>\vscode-nvim\nvim"
  ```

- Allow the execution of PowerShell scripts if you haven't already done so:

  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

- Restart your PowerShell session to apply the changes.

### VSCode

#### Neovim Path

- Configure the **VSCode Neovim** extension to point to your Neovim installation by setting the `neovim.neovimExecutablePaths.windows` option.

  - Open VSCode settings (`Ctrl+,`), search for `neovim executable`, and set the path to your Neovim installation, typically:

    ```powershell
    C:\Program Files\Neovim\bin\nvim.exe
    ```

  > Note: You can leave it blank if Neovim is already in your system's `PATH`.

#### `settings.json` & `keybindings.json`

- Add this folder's `vscode/settings.json` and `vscode/keybindings.json` files to your VSCode configuration.

  - Open the Command Palette (`Ctrl+Shift+P`), type `Preferences: Open Settings (JSON)`, and press `Enter`.
  - Copy the contents of `vscode/settings.json` into your VSCode `settings.json`.
  - Similarly, open the Command Palette, type `Preferences: Open Keyboard Shortcuts (JSON)`, and press `Enter`.
  - Copy the contents of `vscode/keybindings.json` into your VSCode `keybindings.json`.

#### Styles

The styles are inspired by:

- [evondev's vscode-custom](https://github.com/evondev/vscode-custom),
- [Aikoyori's ProgrammingVTuberLogos](https://github.com/Aikoyori/ProgrammingVTuberLogos).
- [SAWARATSUKI's KawaiiLogos](https://github.com/SAWARATSUKI/KawaiiLogos).
