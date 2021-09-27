#
# ~/.bashrc
#
[ -z "$PS1" ] && return

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less
alias ll='ls -lha'
alias wifi-monitor='sudo /home/m4z3/.scripts/./monitoron.sh'
alias wifi-manager='sudo /home/m4z3/.scripts/./manageron.sh'
alias kbch='setxkbmap ch'
alias kbus='setxkbmap us'
alias mdp='xrandr --output DisplayPort-0 --set TearFree on --auto --output eDP --off'
alias mlp='mdp & xrandr --output eDP --set TearFree on --auto --output DisplayPort-0 --off'
alias mhd='xrandr --output HDMI-A-0 --set TearFree on --auto --output eDP --off'
alias code='/home/m4z3/.git/VSCode-linux-x64/./code& disown; exit'
xhost +local:root > /dev/null 2>&1

complete -cf sudo

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
export PYTHONPATH="${PYTHONPATH}:/home/m4z3/.local/lib/python3.9/site-packages/"


[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
