#!/bin/zsh

# Check if reqs are met
if (( ! $+commands[ssh] )); then
  return 1
fi

# by default create stronger ssh keys
# https://wiki.archlinux.org/index.php/SSH_Keys#Generating_an_SSH_key_pair
function secure-ssh-keygen() {

  [[ -z $1 ]] && { echo "need a remote"; return 1; }
  local remote=$1

  command ssh-keygen -t ecdsa -b 521 -f $HOME/.ssh/id_ecdsa.$remote \
    -C "$(whoami)@$(hostname)-$(date -I)"
}

# bitbucket and github doesn't accept ecdsa keys, so let's wrap ssh-keygen and
# let's give that rsa protocol
function ssh-keygen() {

  if [[ $1 =~ ^(github|bitbucket)$ ]]; then
    command ssh-keygen -t rsa -b 2048 -f $HOME/.ssh/id_rsa.$1 -C "$(whoami)@$(hostname)-$(date -I)"
  else
    command ssh-keygen "$@"
  fi
}


function simple-ssh-keygen() {
  command ssh-keygen -t rsa -b 2048 -f $HOME/.ssh/id_rsa.$1 -C "$(whoami)@$(hostname)-$(date -I)"
}
