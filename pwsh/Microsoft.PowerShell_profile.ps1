Set-PSReadlineKeyHandler -Chord Ctrl+d -Function DeleteCharOrExit
Set-Alias -Name compose -Value docker-compose
Set-Alias -Name vim -Value 'C:\Program Files\Git\usr\bin\vim'

clear

Switch (( get-date ).DayOfWeek)
{
    'Wednesday' { $env:PROMPT_EMOJI = '🐸🐸🐸' }
    'Thursday'  { $env:PROMPT_EMOJI = '🐟🐟🐟' }
    'Friday'    { $env:PROMPT_EMOJI = '🍺🍺🍺' }
    default     { $env:PROMPT_EMOJI = '🚀🚀🚀' }
}

oh-my-posh init pwsh --config ~\Documents\PowerShell\kristobaljunta_compact.omp.json | Invoke-Expression
