#oh-my-posh --init --shell pwsh --config ~\AppData\Local\Programs\oh-my-posh\themes\powerlevel10k_rainbow.omp.json | Invoke-Expression
#oh-my-posh --init --shell pwsh --config ~\AppData\Local\Programs\oh-my-posh\themes\dracula.omp.json | Invoke-Expression
oh-my-posh --init --shell pwsh --config D:\Workspace\code\oh-my-posh-theme\powerlevel10k_dracula.omp.json | Invoke-Expression
# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -ShowToolTips

# Dracula readline configuration. Requires version 2.0, if you have 1.2 convert to `Set-PSReadlineOption -TokenType`
Set-PSReadlineOption -Color @{
  "Command"   = [ConsoleColor]::Green
  "Parameter" = [ConsoleColor]::Gray
  "Operator"  = [ConsoleColor]::Magenta
  "Variable"  = [ConsoleColor]::White
  "String"    = [ConsoleColor]::Yellow
  "Number"    = [ConsoleColor]::Blue
  "Type"      = [ConsoleColor]::Cyan
  "Comment"   = [ConsoleColor]::DarkCyan
}
# Dracula Prompt Configuration
Import-Module posh-git
$GitPromptSettings.DefaultPromptPrefix.Text = "$([char]0x2192) " # arrow unicode symbol
$GitPromptSettings.DefaultPromptPrefix.ForegroundColor = [ConsoleColor]::Green
$GitPromptSettings.DefaultPromptPath.ForegroundColor = [ConsoleColor]::Cyan
$GitPromptSettings.DefaultPromptSuffix.Text = "$([char]0x203A) " # chevron unicode symbol
$GitPromptSettings.DefaultPromptSuffix.ForegroundColor = [ConsoleColor]::Magenta
# Dracula Git Status Configuration
$GitPromptSettings.BeforeStatus.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.BranchColor.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.AfterStatus.ForegroundColor = [ConsoleColor]::Blue

Function CDPKM {Set-Location -Path D:\Workspace\pkm}

Set-Alias -Name gopkm -Value CDPKM
Set-Alias -Name code -Value code-insiders.cmd
