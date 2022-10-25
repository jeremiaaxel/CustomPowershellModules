### Git Aliases
function Git-Clone() { 
    git clone $args;
}
New-Alias -Name gcl -Value Git-Clone
Export-ModuleMember -Function Git-Clone -Alias gcl

function Git-Status() { 
    git status $args;
}
New-Alias -Name gst -Value Git-Status
Export-ModuleMember -Function Git-Status -Alias gst

function Git-Commit() { 
    git commit $args;
}
New-Alias -Name gcmt -Value Git-Commit
Export-ModuleMember -Function Git-Commit -Alias gcmt

function Git-CommitMessage() { 
    git commit -m $args;
}
New-Alias -Name gcmsg -Value Git-CommitMessage
Export-ModuleMember -Function Git-CommitMessage -Alias gcmsg

function Git-Push() { 
    git push $args;
}
New-Alias -Name gpsh -Value Git-Push
Export-ModuleMember -Function Git-Push -Alias gpsh

function Git-Pull() { 
    git pull $args;
}
New-Alias -Name gpl -Value Git-Pull
Export-ModuleMember -Function Git-Pull -Alias gpl

function Git-Checkout() { 
    git checkout $args;
}
New-Alias -Name gco -Value Git-Checkout
Export-ModuleMember -Function Git-Checkout -Alias gco

function Git-Branch() { 
    git branch $args;
}
New-Alias -Name gb -Value Git-Branch
Export-ModuleMember -Function Git-Branch -Alias gb

function Git-Restore() { 
    git restore $args;
}
New-Alias -Name grst -Value Git-Restore
Export-ModuleMember -Function Git-Restore -Alias grst

function Git-Log() { 
    git log $args;
}
New-Alias -Name glog -Value Git-Log
Export-ModuleMember -Function Git-Log -Alias glog

function Git-Add() { 
    git add $args;
}
New-Alias -Name ga -Value Git-Add
Export-ModuleMember -Function Git-Add -Alias ga

function Git-AddAll() { 
    git add . $args;
}
New-Alias -Name gaa -Value Git-AddAll
Export-ModuleMember -Function Git-AddAll -Alias gaa

function Git-Diff() { 
    git diff $args;
}
New-Alias -Name gdf -Value Git-Diff
Export-ModuleMember -Function Git-Diff -Alias gdf