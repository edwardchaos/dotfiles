export PATH="$HOME/bin:$HOME/.bin:$HOME/.local:$HOME/.local/bin/:$PATH"
alias l='ls -B --color=auto'
alias ls='ls --color=auto'
alias rm='rm -i'
alias python='python3'
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[38;5;245m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[38;5;081m\] \n$ \[\e[0m\]"
if [ -n "$SSH_CLIENT" ]; then
  export PS1= "(ssh) $PS1"
fi

function ranger-cd {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    /usr/bin/ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}
alias ranger='ranger-cd'

export VISUAL=vim
export EDITOR="$VISUAL"
set -o vi
