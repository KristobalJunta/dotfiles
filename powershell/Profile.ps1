try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

# set Ctrl+D as "exit shell" hotkey
Set-PSReadlineKeyHandler -Chord Ctrl+d -Function DeleteCharOrExit

# removes a weird blue highligitng of directory names in output of `ls`
$PSStyle.FileInfo.Directory = "`e[34;1m"

# disabled to speed up loading the proifile
# if (Get-Module -ListAvailable -Name Microsoft.WinGet.CommandNotFound) {
#     Import-Module -Name Microsoft.WinGet.CommandNotFound
# }

Switch (( get-date ).DayOfWeek)
{
    'Monday'    { $env:PROMPT_EMOJI = '✨✨✨' }
    'Tuesday'   { $env:PROMPT_EMOJI = '🐄🐄🐄' }
    'Wednesday' { $env:PROMPT_EMOJI = '🐸🐸🐸' }
    'Thursday'  { $env:PROMPT_EMOJI = '🐟🐟🐟' }
    'Friday'    { $env:PROMPT_EMOJI = '🍺🍺🍺' }
    'Saturday'  { $env:PROMPT_EMOJI = '🛋️🛋️🛋️' }
    'Sunday'    { $env:PROMPT_EMOJI = '☀️☀️☀️' }
    default     { $env:PROMPT_EMOJI = '✨✨✨' }
}

Clear-Host

if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    fastfetch
}

if (Get-Command starship -ErrorAction SilentlyContinue) {
    Invoke-Expression (&starship init powershell)
}

# Aliases
Set-Alias -Name lg -Value "lazygit"
Set-Alias -Name vim -Value "nvim"
Set-Alias -Name vi -Value "nvim"

$env:XDG_CONFIG_HOME = "$HOME/.config"
