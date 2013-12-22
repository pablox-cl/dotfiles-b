#
# Add some special bindkeys for vi mode.
#
# Authors:
#   Pablo Olmos de Aguilera <pablo at glatelier dot org>
#
# Tip:
# To see the key combo you want to use just do:
# cat > /dev/null
# And press it
# github.com/spicycode/ze-best-zsh-config

bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^E' end-of-line

bindkey -M viins 'jj' vi-cmd-mode
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M vicmd '^R' history-incremental-search-backward

#bindkey -M viins '^U' kill-whole-line # already defined?
bindkey -M viins '^Y' yank

# This is not working (yet)
# See: https://github.com/zsh-users/zsh-syntax-highlighting/issues/99
bindkey -M viins '^[y' yank-pop

