. $PSScriptRoot\\utils.ps1

function Ngecarla {
    $customScriptDir = "\PythonAPI\customs\";

    Write-Host "Ngecarla: Starting";

    Write-Host "Duplicating tab: Duplicate and move to $($customScriptDir)";
    DuplicateTab -childDir "$customScriptDir" -commands "conda activate tensorflow";
    Write-Host "Duplicating tab: Done";

    # Maintain focus on the first tab
    ChangeFocusTab;

    Write-Host "Opening VSCode";
    OpenCode;
    Write-Host "Opening VSCode: Done";

    Write-Host "Ngecarla: Done";
}