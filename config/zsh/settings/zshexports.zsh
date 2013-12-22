# ZSH Exports

# ===== Setup terminal
# export screen-256color for tmux
if [[ -n $TMUX ]]; then
  TERM=screen-256color
else
  TERM=xterm-256color
fi

# dircolors
# https://github.com/seebi/dircolors-solarized
[[ -d $HOME/.dircolors ]] && eval `dircolors ${HOME}/.dircolors/dircolors.256dark`

# improve Less input preprocessor
if (( $+commands[source-highlight] )); then
  export LESSOPEN='| /usr/bin/env source-highlight-esc.sh %s 2>&-'
fi

# ===== Good ol' GREP
GREP_COLOR='0;35'

# ===== History
HISTSIZE=20000

# ===== Misc
MANWIDTH=80 # make sure man pages doesn't overflow

export GREP_COLOR MANWIDTH TERM HISTSIZE
