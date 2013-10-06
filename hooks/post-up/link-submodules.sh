#!/bin/bash

# a simple impletation for now
# TODO: improve it please...

DOTFILES_DIRS="$HOME/.dotfiles"
LN="command ln -sv"

dirs_to_link=( 'zsh.d' 'zprezto' 'config/systemd' 'dircolors' )

# http://stackoverflow.com/questions/1063347/passing-arrays-as-parameters-in-bash
# http://stackoverflow.com/questions/16461656/bash-how-to-pass-array-as-an-argument-to-a-function
function walk_dirs {
  declare -a array=("${!1}")

  for dir in ${array[@]}; do
    if ! check_dir ${HOME}/.${dir}; then
      link_dir ${dir}
    fi
  done
}

# check if dirs exist
function check_dir {
  [[ -d ${1} ]] && echo "$1 already exist... skipping"
}

# linkage
function link_dir {
  local target=$1
  local link_name=.$1
  $LN ${DOTFILES_DIRS}/${target} ${HOME}/${link_name}
}

walk_dirs dirs_to_link[@]

