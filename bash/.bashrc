#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

export GOPATH=~/.go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

alias ll="ls -l"
alias mc="mc -b"
alias artisan="php artisan"
alias dev-server="php -S localhost:8000"
alias daleksay="cowsay -f dalek.cow"

#export PS1="[\[$(ppwd)\]\u@\h \W]$ "

#export PATH='/home/eugen/bin/todo':$PATH
#alias todo="/home/eugen/bin/todo/todo.sh"
#complete -F _todo todo

#eval $(thefuck --alias)

export VISUAL=vim

export PATH=$PATH:'/home/eugen/.composer/vendor/bin'

. /home/eugen/bin/undistract-me/long-running.bash && notify_when_long_running_commands_finish_install

