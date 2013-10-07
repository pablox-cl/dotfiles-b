#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Pablo Olmos de Aguilera C. <pablo at glatelier dot org>
#

function {
  while read -r line; do
    if [[ ! $line == '#'* ]]; then            # ignore lines starting with an `#`
      if (( ${#line} > 0 )); then             # ignore empty lines
        line=${line%%\#*}
        line=${line%%+([[:space:]])}          # remove trailing whitespace characters
        systemctl --user set-environment $line
      fi
    fi
  done < $HOME/.systemd-profile
}

[[ $TTY == /dev/tty1 ]] \
  && (( $UID )) \
  && [[ -z $DISPLAY ]]  \
  && systemctl --user start wm.target
#   && exec /usr/lib/systemd/systemd --user

