#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='[\h \[\e[1;34m\]\w\[\e[0m\]]\$ '
#
#
#
#
alias a=neofetch
alias b='firefox --private-window'
#alias bi='firefox -private https://www.binance.com/it/trade/BTC_USDT?theme=dark&type=spot'
alias bi='firefox --private-window https://www.mexc.com/exchange/BTC_USDT'
alias d='curl -L -O -C - '
alias dm='youtube-dl --prefer-ffmpeg --extract-audio --audio-format mp3 --audio-quality 0 --embed-thumbnail'
alias dv='youtube-dl --add-metadata -ic'
alias e='exit 0'
alias u='sudo pacman -Syu'
alias v=vim
alias c='sudo pacman -Sc'
alias s='pacman -Ss'
alias sx=startx
# alias t='top -i'
alias t='~/Telegram/Telegram'
# alias t=top
alias ux='sudo pacman -Syyu'
# alias grep='grep --color=auto'
alias tor='~/tor-browser/Browser/start-tor-browser'
alias r='systemctl reboot'
alias p='systemctl poweroff'
#alias pd='pd -font-face "Hack" -font-size 12 -font-weight normal'
#alias pdn='pd -nrt -font-face "Hack" -font-size 12 -font-weight normal'
# alias pd='pd -font-face "Fira Code" -font-size 12 -font-weight bold'
## alias pd='pd -font-face "JetBrainsMono Nerd Font" -font-size 12 -font-weight bold'
alias tel='Telegram/Telegram'
alias luna='curl -Ss 'https://wttr.in/moon''
alias b2="bash --init-file <(echo '. ~/.bashrc; unset HISTFILE')"
alias off='rfkill block all'
alias on='rfkill unblock all'

alias b2="bash --init-file <(echo '. ~/.bashrc; unset HISTFILE')"
# or:    And better put it in ~/.bash_aliases as permanent alias:
#alias b3='bash --rcfile <(echo '. ~/.bashrc; unset HISTFILE')'
alias m='chromium --incognito https://www.3bmeteo.com/meteo/bologna'
alias uptime='uptime -sp && uptime'
# alias meteo="curl -Ss 'https://wttr.in/bologna?0&T&Qi&lang=it'"
# alias meteo="curl 'it.wttr.in/Bologna?0'"
alias meteo="curl 'it.wttr.in/Civitanova?0'"
alias pd='puredata -font-face "JetBrains Mono" -font-size 12 -font-weight bold'
alias pdn='pd -nrt -font-face "Hack" -font-size 12 -font-weight normal'
alias tel='~/Telegram/Telegram'

#bind 'TAB:menu-complete'
#bind 'set show-all-if-ambiguous on'
#bind 'set completion-ignore-case on'
#bind '"\e[Z":menu-complete-backward'
#bind '"\e[A":history-search-backward'
#bind '"\e[B":history-search-forward'

HISTTIMEFORMAT="%Y-%m-%d %T "
#HISTSIZE=10998000
#HISTFILESIZE=10998000
shopt -s histappend

HISTSIZE= HISTFILESIZE= # Infinite history.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.

####
#alias ls='ls --color=auto'
#alias grep='grep --color=auto'
#alias luna='curl -Ss 'https://wttr.in/moon''
#alias meteo='command=curl -Ss 'https://wttr.in/bologna?0&T&Qi&lang=it' | cut -c 16- | head -2 | xargs echo'

#!/bin/sh
if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
  \e]P0151515
  \e]P1ac4142
  \e]P290a959
  \e]P3f4bf75
  \e]P46a9fb5
  \e]P5aa759f
  \e]P675b5aa
  \e]P7d0d0d0
  \e]P8505050
  \e]P9ac4142
  \e]PA90a959
  \e]PBf4bf75
  \e]PC6a9fb5
  \e]PDaa759f
  \e]PE75b5aa
  \e]PFf5f5f5
  "
  # get rid of artifacts
  clear
fi
####

export VISUAL="vim"
export EDITOR="$VISUAL"
export TERMINAL="alacritty"
export BROWSER="firefox"
# export XCURSOR_SIZE=72
export MYVIMRC="$HOME/.vimrc"
export VIMINIT="source $MYVIMRC"

export LC_ALL=it_IT.UTF-8

# alias al='alsamixer -c 1'
alias al=alsamixer
alias cb='v ~/.bashrc'
alias md='chromium 192.168.1.1'
alias rea='~/reaper_linux_x86_64/REAPER/reaper'
# alias up='apt list --upgradable'
#
alias bx='/usr/bin/brave-browser --password-store=basic --incognito'
alias br='/usr/bin/brave-browser --password-store=basic'
alias i='sudo pacman -S'
alias less='less -Q'
alias man='man -P "less -Q"'

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

