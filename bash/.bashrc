# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export GOPATH=~/.go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

alias ll="ls -l"
alias mc="mc -b"
alias artisan="php artisan"
#alias todo="/home/eugen/bin/todo/todo.sh"
alias daleksay="cowsay -f dalek.cow"
#alias composer="php -n -dextension=json.so -dextension=phar.so -dextension=mbstring.so -dextension=openssl.so /bin/composer"

export PS1="[\[$(ppwd)\]\u@\h \W]$ "
export PATH='/home/eugen/bin/todo':$PATH

#complete -F _todo todo

eval $(thefuck --alias)

export PATH=$PATH:'/home/eugen/.composer/vendor/bin'

. /home/eugen/bin/undistract-me/long-running.bash && notify_when_long_running_commands_finish_install

