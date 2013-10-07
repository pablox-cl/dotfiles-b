#
# Helpers
#
# http://zsh.sourceforge.net/Doc/Release/Functions.html

# make an alert when commands take too long
# http://www.zsh.org/mla/users/2011/msg00792.html
#preexec() {
#  SECONDS=0
#}
#
#precmd() {
#  (( SECONDS > 120 )) &&
#    notify-send --urgency=low -i \
#      ${${?/0/terminal}//<->*/error} "[$?] $history[$[HISTCMD-1]]"
#}

# Lightweight and simple way to run (or source) a specific file automagically
# when entering a dir containing a previously defined project file (like what
# rvm does with .rvmrc).
# Right now this function it's not being used because of smart_cd
#chpwd() {
#  if [[ "$PWD" == *${PZT_PROJECT_DIR}* ]]; then
#    [[ -s ${PZT_PROJECT_FILE} ]] && source ${PZT_PROJECT_FILE}
#  fi
#}
