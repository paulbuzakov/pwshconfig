Set-Alias -Name powershell	-Value pwsh
Set-Alias -Name g		-Value git
Set-Alias -Name v		-Value nvim
Set-Alias -Name d		-Value dotnet

if ($IsMacOS) {
  Import-Module -Name $PSScriptRoot\macos.ps1
}
elseif ($IsWindows) {
  Import-Module -Name $PSScriptRoot\windows.ps1
}

oh-my-posh init pwsh --config=$PSScriptRoot'/catppuccin_mocha.omp.json' | Invoke-Expression
