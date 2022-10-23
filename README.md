# CustomPowershellModules
Instead of doing my final project, I created these powershell modules to "boost" my productivity.\
Made by [jeremiaaxel](https://github.com/jeremiaaxel/)

## Features
Currently consists of:
1. **ChangeDirectory-Project**\
Shortcut to change to project directory.\
[Learn more](./ChangeDirectory-Project/README.md)
2. **GitAliasesModule**\
Shortcut to some commonly used (by me of course) git commands.\
[Learn more](./GitAliasesModule/README.md)

## Requirements
1. [Powershell 7](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2)

## Setup
1. Clone this repository or copy the wanted module into the `Modules` folder in the powershell profile directory (or create one if there is none).

    Where is the powershell profile directory?
    ```powershell
    explorer.exe (Get-Item $PROFILE).Directoryname
    ```

2. Make sure the module is detected by the PowerShell.
    ```powershell
    Get-Module -ListAvailable
    ```
3. Import the modules into the powershell profile (or create one if there is none).
    Where is the powershell profile?
    ```powershell 
    code $PROFILE
    ```
    or open file `Microsoft.PowerShell_profile.ps1` from the step 1.

    How to import?\
    Insert

    ```powershell
    Import-Module <ModuleName> -DisableNameChecking
    ```
    into the PowerShell profile file.
4. Restart terminal/powershell.
5. Done.