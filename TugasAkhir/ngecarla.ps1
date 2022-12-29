. $PSScriptRoot\\utils.ps1

function Ngecarla {
    Write-Host "Ngecarla: Starting";

    ChangeDirectory-Project school; # Move to SchoolDirectory
    Set-Location "carla"; # Move to carla directory

    # Duplicate tab
    $customScriptDir = "\PythonAPI\customs\";
    Write-Host -NoNewline "Duplicating tab: Duplicate and move to $($customScriptDir)...";
    DuplicateTab -childDir "$customScriptDir" -commands "conda activate tensorflow";
    Write-Host "Done";

    # Maintain focus on the first tab
    ChangeFocusTab;

    # Open code
    Write-Host -NoNewline "Opening VSCode...";
    OpenCode;
    Write-Host "Done";

    Write-Host "Ngecarla: Done";
}