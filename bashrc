#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='nwinkler'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/projects/go
export PATH=$PATH:$GOPATH/bin

# Load Bash It
source $BASH_IT/bash_it.sh

export EDITOR=vim

alias suijici='cedict-shuffler ~/cedict_1_0_ts_utf-8_mdbg.txt'
suijici

alias mempass='shuf -n 3 /usr/share/dict/british-english | sed "s/./\u&/" | tr -cd "[A-Za-z]"; echo $(shuf -i0-999 -n 1)'

alias rhc='w3m https://news.ycombinator.com/'

function saylang() {
     espeak -v "$1" "$(trans -b :\"$1\" \"$2\")"
}


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias urldecode='python -c "import sys, urllib as ul; \
	    print ul.unquote_plus(sys.argv[1])"'
alias urlencode='python -c "import urllib, sys; print urllib.quote(sys.argv[1])"'

nvm use node > /dev/null

rot() {
	echo $1 | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
}


# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.github.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh

if [[ ! $TERM =~ screen ]]; then
	exec tmux
fi

export PATH=$PATH:$HOME/.config/composer/vendor/bin/

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export GPG_TTY=$(tty)

# History ignore
export HISTIGNORE="${HISTIGNORE}:w3m*"

