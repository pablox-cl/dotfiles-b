#
# Go stuff
#
# Authors:
#   Pablo Olmos de Aguilera <pablo at glatelier dot org>

# Return if reqs are not found
if (( ! $+commands[go] )); then
  return 1
fi

export GOPATH=~/.go
path=(
  $GOPATH/bin
  $path
)
