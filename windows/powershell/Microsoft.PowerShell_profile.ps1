clear

Set-PSReadlineKeyHandler -Chord Ctrl+d -Function DeleteCharOrExit

# remove weird blue bg from directory names in ls output
$PSStyle.FileInfo.Directory = "`e[34;1m"

Import-Module -Name Microsoft.WinGet.CommandNotFound

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

Invoke-Expression (&starship init powershell)
