Import-Module -Name Terminal-Icons 
Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1

$omp_config = Join-Path $PSScriptRoot "takuya.omp.json"
oh-my-posh init pwsh --config $omp_config | Invoke-Expression

#Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr

# Utilities
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
		Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue 
}

