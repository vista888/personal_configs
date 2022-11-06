# History settings based on 
# https://www.shellhacks.com/tune-command-line-history-bash/
export HISTSIZE=10000
export HISTFILESIZE=10000
shopt -s histappend
PROMPT_COMMAND='history -a'
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE="ls:ps:history"
shopt -s cmdhist
export HISTTIMEFORMAT="%h %d %H:%M:%S "
# Set vi keybindings for the bash shell
set -o vi
