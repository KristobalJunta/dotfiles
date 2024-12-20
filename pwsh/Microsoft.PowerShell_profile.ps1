Set-PSReadlineKeyHandler -Chord Ctrl+d -Function DeleteCharOrExit
Set-Alias -Name compose -Value docker-compose
Set-Alias -Name vim -Value 'C:\Program Files\Git\usr\bin\vim'

clear

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
