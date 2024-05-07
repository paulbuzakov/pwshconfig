if ($IsMacOS) {
	& "$PSScriptRoot\macos.ps1"
}

oh-my-posh init pwsh --config=$PSScriptRoot'/catppuccin_mocha.omp.json' | Invoke-Expression

Set-Alias -Name powershell	-Value pwsh
Set-Alias -Name g		-Value git
Set-Alias -Name v		-Value nvim

function ll () {
	ls -la
}
