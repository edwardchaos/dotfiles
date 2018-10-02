export PATH="$HOME/bin:$HOME/.bin:$HOME/.local:$HOME/.local/bin/:$PATH"
export TERMINAL="urxvt"
#source ~/git-completion.bash

alias l='ls -B --color=auto'
alias ls='ls --color=auto'
alias rm='rm -i'
alias python='python3'
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[38;5;245m\]\w\[\033[33m\]\$(parse_git_branch) \[\e[0m\] \n▶ "
if [ -n "$SSH_CLIENT" ]; then
  export PS1= "(ssh) $PS1"
fi


export VISUAL=vim
export EDITOR="$VISUAL"
set -o vi
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
PATH="$PATH:/home/edwardchaos/.local/bin"

export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
source /usr/local/bin/virtualenvwrapper.sh

