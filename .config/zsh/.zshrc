eval "$(starship init zsh)"
source $ZDOTDIR/.aliases.zsh

setopt AUTO_CD COMPLETE_ALIASES NO_BEEP

# allow use of control as a modifier key for shortcuts
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^H' backward-kill-word
bindkey '5~' kill-word

export CURRENT_TERMINAL=$(ps -p $(ps -p $$ -o ppid --no-headers) -o args --no-headers)

if [[ ! $CURRENT_TERMINAL == "/usr/share/code/code"* ]]
then
	ff
fi