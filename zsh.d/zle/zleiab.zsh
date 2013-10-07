# Idea stolen from:
# https://github.com/grml/grml-etc-core/blob/master/etc/zsh/zshrc#L995
# http://zshwiki.org/home/examples/zleiab

function zleiab {
  emulate -L zsh
  setopt extendedglob
  local MATCH

  LBUFFER=${LBUFFER%%(#m)[.\-+:|_a-zA-Z0-9]#}
  LBUFFER+=${abbreviations[$MATCH]:-$MATCH}

}

# magic espace abbreviations
# magic-abbrev-expand() {
#     local MATCH
#     LBUFFER=${LBUFFER%%(#m)[_a-zA-Z0-9]#}
#     LBUFFER+=${abbreviations[$MATCH]:-$MATCH}
#     zle self-insert
# }

# no-magic-abbrev-expand() {
#   LBUFFER+=' '
# }

# zle -N magic-abbrev-expand
# zle -N no-magic-abbrev-expand
# bindkey " " magic-abbrev-expand
# bindkey "^x " no-magic-abbrev-expand
# bindkey -M isearch " " self-insert

zle -N zleiab
bindkey '^X.' zleiab
