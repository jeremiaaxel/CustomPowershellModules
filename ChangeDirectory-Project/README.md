# ChangeDirectory-Project
Shortcut to change to project directory. Just a wrapper of `cd` command. Using key-value map to define the key and the directory.

## Available Features
| Feature        | Description                                                |
|----------------|------------------------------------------------------------|
| `cdprj <key>`  | Change the directory to the supplied key                   |
| `cdprj -list`  | Show the list of available mappings                        |
| `cdprj config` | Change the directory into the powershell profile directory |

## Changing Mappings
The (currently) only way is you can manually change the mappings by editing the `ChangeDirectory-Project.psm1`.

## Informations
1. Make the directories. Recommended at the `$HOME` directory.
2. Make sure the directory is exist, the script does not automatically create a directory if the directory is not exist.