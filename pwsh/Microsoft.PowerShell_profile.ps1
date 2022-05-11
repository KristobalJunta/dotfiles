Set-PSReadlineKeyHandler -Chord Ctrl+d -Function DeleteCharOrExit
Set-Alias -Name compose -Value docker-compose
Set-Alias -Name vim -Value 'C:\Program Files\Git\usr\bin\vim'

clear

oh-my-posh init pwsh --config ~\AppData\Local\Programs\oh-my-posh\themes\kristobaljunta.omp.json | Invoke-Expression
