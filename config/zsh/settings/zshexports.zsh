# ZSH Exports

# ===== Setup terminal
# export screen-256color for tmux
if [[ -n $TMUX ]]; then
  TERM=screen-256color
fi

# ===== Dircolors
# https://github.com/seebi/dircolors-solarized
[[ -d ${XDG_CONFIG_HOME:-$HOME/.config}/shell-colors/dircolors-solarized ]] && eval $(dircolors ${XDG_CONFIG_HOME:-$HOME/.config}/shell-colors/dircolors-solarized/dircolors.256dark)

# ===== Base16 Shell
# BASE16_SCHEME="default"
# BASE16_SHELL="$XDG_CONFIG_HOME/shell-colors/base16/base16-$BASE16_SCHEME.dark.sh"
# [[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

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
PACKER_CACHE_DIR=$XDG_CACHE_HOME/packer

export GREP_COLOR MANWIDTH TERM HISTSIZE PACKER_CACHE_DIR
