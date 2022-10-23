function ChangeDirectory-Project() { 
    <#
        .SYNOPSIS
        Change directory into the specified directory keys

        .PARAMETER target
        Specifies target project
        .PARAMETER -list
        Print the list of available mappings to directories

        .EXAMPLE
        PS> cdprj school
    #>
    [Alias('cdprj')]

    param (
        [string]$target = $null,
        [switch]$list
    )
    
    function printAvailableKeys([hashtable]$keyToProjectMap) {
        $maxLength = 0;
        foreach($item in $keyToProjectMap.GetEnumerator()){
            if ($item.Key.Length -gt $maxLength)
            {
                $maxLength = $item.Key.Length;
            }
        }

        "Available keys are:";
        foreach($item in $keyToProjectMap.GetEnumerator()){
            "{0, -$maxLength} : {1}" -f "$($item.key)", "$($item.value)"
        }
    }
    
    $basePath = "$($HOME)\";
    $result = "";
    $defaultKey = 'school';
    $keyToProjectMap = @{ 
        'school' = $basePath + 'SchoolProjects';
        'sch' = $basePath + 'SchoolProjects';
        
        'personal' = $basePath + 'PersonalProjects';
        'self' = $basePath + 'PersonalProjects';
        
        'work' = $basePath + 'WorkProjects';
        'config' = (Get-Item $PROFILE).Directoryname;
    }

    if ($list) {
        printAvailableKeys($keyToProjectMap);
        if (!$target) { return; }
    }

    if (!$keyToProjectMap.ContainsKey($target)) {
        "Key `"$target`" does not exist in the mappings.";
        "``cdprj -list`` for the list of keys.";
        "Defaulting to $defaultKey";
    } 
    $result += ($keyToProjectMap[$target] ?? $keyToProjectMap[$defaultKey]);
    cd $result;
}
Export-ModuleMember -Function ChangeDirectory-Project -Alias cdprj