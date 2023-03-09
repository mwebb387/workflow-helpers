function Open-Directory {
  $curDir = pwd
  cd C:/

  $dir = fd -td -E 'Windows' -E 'Progra*' -E Drivers -E 'AppData' | fzf --preview 'dir {}'

  if (-Not $dir) {
    cd $curDir
    return
  }

  cd $dir
}

function Select-Project {
  if (-Not $Env:REPO_ROOT)
  {
    Write-Host 'No repository root folder.'
    Write-Host 'Please set the $Env:REPO_ROOT variable.'
    return $False
  }

  return (Get-Item $Env:REPO_ROOT).EnumerateDirectories().Name | fzf
}

function Open-Project {
  $proj = Select-Project

  if ($proj) {
    cd "$Env:REPO_ROOT$proj"
  }
}

Set-Alias -Name od -Value Open-Directory
Set-Alias -Name pjo -Value Open-Project

