### Git Aliases
function Git-Clone() { 
    [Alias('gcln')]
    param($params)
    git clone $params;
}
Export-ModuleMember -Function Git-Clone -Alias gcln

function Git-Status() { 
    [Alias('gst')]
    param($params)
    git status $params;
}
Export-ModuleMember -Function Git-Status -Alias gst

function Git-Commit() { 
    [Alias('gcmt')]
    param($params)
    git commit $params;
}
Export-ModuleMember -Function Git-Commit -Alias gcmt

function Git-CommitMessage() { 
    [Alias('gcmsg')]
    param($params)
    git commit -m $params;
}
Export-ModuleMember -Function Git-CommitMessage -Alias gcmsg

function Git-Push() { 
    [Alias('gpsh')]
    param($params)
    git push $params;
}
Export-ModuleMember -Function Git-Push -Alias gpsh

function Git-Pull() { 
    [Alias('gpll')]
    param($params)
    git pull $params;
}
Export-ModuleMember -Function Git-Pull -Alias gpll

function Git-Checkout() { 
    [Alias('gco')]
    param($params)
    git checkout $params;
}
Export-ModuleMember -Function Git-Checkout -Alias gco

function Git-Branch() { 
    [Alias('gb')]
    param($params)
    git branch $params;
}
Export-ModuleMember -Function Git-Branch -Alias gb

function Git-Restore() { 
    [Alias('grst')]
    param($params)
    git restore $params;
}
Export-ModuleMember -Function Git-Restore -Alias grst

function Git-Log() { 
    [Alias('glog')]
    param($params)
    git log $params;
}
Export-ModuleMember -Function Git-Log -Alias glog

function Git-Add() { 
    [Alias('ga')]
    param($params)
    git add $params;
}
Export-ModuleMember -Function Git-Add -Alias ga

function Git-AddAll() { 
    [Alias('gaa')]
    param($params)
    git add .;
}
Export-ModuleMember -Function Git-AddAll -Alias gaa

function Git-Diff() { 
    [Alias('gdiff')]
    param($params)
    git diff $params;
}
Export-ModuleMember -Function Git-Diff -Alias gdiff