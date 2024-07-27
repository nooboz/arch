#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
#### New line ####
if [ -z "$DISPLAY" ] && [ $(tty) == /dev/tty1 ]; then
    startx
fi

