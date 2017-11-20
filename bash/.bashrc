# ~/.bashrc
# by @KristobalJunta


# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# bashrc extensions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if [ -f ~/.extend.bashrc ]; then
    source ~/.extend.bashrc
fi
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        source /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        source /etc/bash_completion
    fi
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# undistract me
if [ -d ~/bin/undistract-me ]; then
    source /home/eugen/bin/undistract-me/long-running.bash
    notify_when_long_running_commands_finish_install
fi


# PATH tweaks
export GOPATH=~/.go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$HOME/bin
export PATH=$PATH:'/home/eugen/.config/composer/vendor/bin'

# aliases
alias ll="ls -l"
alias la='ls -alF'
alias mc="mc -b"
alias artisan="php artisan"
if [ -f ~/documents/dreamspace.sh ]; then
    alias screenfetch="screenfetch -a ~/documents/dreamspace.sh -D 'Dreamspace OS 17.10'"
else
    alias screenfetch="screenfetch -D 'Dreamspace OS 17.10'"
fi

# set vim as default editor
export VISUAL=`which vim`
export EDITOR=`which vim`

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# custom bash prompt
# but dont replace it on Fedora, it's already nice there
osname=`cat /etc/os-release | egrep ^NAME | cut -d '=' -f2 | sed -e "s/^\"//" -e "s/\"$//"`
if [ ! $osname == 'Fedora' ]; then
    export PS1="[\u@\h \W]$ "
fi

