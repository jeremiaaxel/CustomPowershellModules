function OpenCode {
    param(
        [Parameter(Mandatory=$false)]
        [string]$targetDir = "."
    )
    code $targetDir;
}

function DuplicateTab() {
    param(
        [Parameter(Mandatory=$true)]
        [string]$childDir,

        [Parameter(Mandatory=$false)]
        [string]$commands
    )
    if ($commands) {
        wt -w 0 nt -d ("$(Get-Location)" + $childDir) pwsh -NoExit -Command $commands;
    } else {
        wt -w 0 nt -d ("$(Get-Location)" + $childDir) pwsh -NoExit;
    }
}

function ChangeFocusTab([int]$index = 0) {
    wt -w 0 ft -t $index;
}