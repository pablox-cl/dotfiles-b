# editor
alias e=${(z)EDITOR}
alias _e='sudoedit '

# browser
alias br='${(z)BROWSER}'

# ls
alias ls='ls --group-directories-first --color=auto --classify' # classify symbols

# lazy person
alias cls='clear'                      # dos ftw
# alias q='exit'                         # too dangerous?
alias md='mkdir'
alias rdir='rmdir'
alias pp='prepend'

# modified commands
alias grep='grep -i'
alias du1='du --max-depth=1'
alias mkdir='nocorrect mkdir -pv'
alias ping='ping -c 4'
alias da='date "+%A, %B %d, %Y [%T]"'
alias bk='cd -'                        # go back to the last directory

# I don't like interactive commands
alias cp='nocorrect cp'
alias mv='nocorrect mv'
alias rm='nocorrect rm'
alias ln='nocorrect ln'

# I honestly don't remember why I did this... I'll keep it ignored from now
# alias chown='chown --preserve-root'
# alias chmod='chmod --preserve-root'
# alias chgrp='chgrp --preserve-root'

# privileged access
alias sudo='sudo '
alias root='sudo su'
alias reboot='sudo reboot'
alias halt='sudo halt'

# new commands
alias h='history | grep $1'
alias openports='netstat --all --numeric --programs --inet'
alias pgr='ps -Af | grep $1'

# zippin
alias gz='tar -zvcf'

# suffix aliases
# These are cool, following the alias below if I write
# `$ a_tex_doc.tex<Tab>`
# Will expand to:
# `$ vim a_tex_doc.tex`
# See more: man zshbuiltins - aliases
alias -s tex=vim

# useful pipe aliases
# kudos to zsh-lovers
# now in evaluation...

# # |& -> 2>&1 => connects stdout and stderr to the stdin (man zshmisc)
# alias -g DN=/dev/null
# alias -g EG='|& egrep'
# alias -g EH='|& head'
# alias -g EL='|& less'
# alias -g ELS='|& less -S'
# alias -g ET='|& tail'
# alias -g ETL='|& tail -20'
# alias -g F=' | fmt -'
# alias -g G='| grep'
# alias -g H='| head'
# alias -g HL='|& head -20'
# alias -g Sk="*~(*.bz2|*.gz|*.tgz|*.zip|*.z)"
# alias -g LL="2>&1 | less"
# alias -g L="| less"
# alias -g LS='| less -S'
# alias -g MM='| most'
# alias -g M='| more'
# alias -g NE="2> /dev/null"
# alias -g NS='| sort -n'
# alias -g NUL="> /dev/null 2>&1"
# alias -g PIPE='|'
# alias -g R=' > /c/aaa/tee.txt '
# alias -g RNS='| sort -nr'
# alias -g S='| sort'
# alias -g TL='| tail -20'
# alias -g T='| tail'
# alias -g US='| sort -u'
# alias -g VM=/var/log/messages
# alias -g X0G='| xargs -0 egrep'
# alias -g X0='| xargs -0'
# alias -g XG='| xargs egrep'
# alias -g X='| xargs'

# # http://www.zsh.org/mla/users/2011/msg00792.html
alias alert='notify-send --urgency=low -i \
  ${${?/0/terminal}//<->*/error} ${history[$HISTCMD]%[;&|]*}'

