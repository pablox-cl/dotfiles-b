# Use Ctrl-x,Ctrl-l to get the output of the last command
# rip-off: https://github.com/skwp/dotfiles/blob/master/zsh/last-command.zsh

zmodload -i zsh/parameter
insert-last-command-output() {
  LBUFFER+="$(eval $history[$((HISTCMD-1))])"
}

zle -N insert-last-command-output
bindkey "^X^L" insert-last-command-output
