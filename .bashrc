# Color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white

# Prompt
#PS1="$HC$FBLK[$FBLE\u$FBLK]$FBLK$FBLK[$FBLE\w$FBLK]\$$FBLK$RS "
#PS1="$HC$FBLK┌─╼$FBLK[$FBLE\u$FBLK]$FBLK╾─╼$FBLK[$FBLE\w$FBLK]$FBLK\n└─╼$RS "
PS1="$HC$FBLE\w $FMAG» $RS"

# Don't put duplicate lines in the history and don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups

# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Colored ManPages:
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Add ~/bin to path
#export PATH=/home/noel/bin/:$PATH

# ALIASES

# for shutdown and restart
#alias sd="sudo shutdown -h now"
#alias sd1="sleep 1h && sudo shutdown -h now"
#alias rs="sudo shutdown -r now"

# for scrot
alias snap='scrot -cd 5 -q 100'

# for ls
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'

# for pacman
alias update="sudo pacman -Sy --color always"
alias upgrade="sudo pacman -Su --color always"
alias dist-upgrade="sudo pacman -Syu --color always"
alias install="sudo pacman -S --color always"
alias remove="sudo pacman -R --color always"
alias search="pacman -Ss --color always"

# for apt-get and aptitude
#alias update='sudo apt-get update'
#alias upgrade='sudo apt-get upgrade'
#alias dist-upgrade='sudo apt-get dist-upgrade'
#alias install='sudo apt-get install'
#alias remove='sudo apt-get remove'
#alias purge='sudo apt-get purge'
#alias autoremove='sudo apt-get autoremove'
#alias search='aptitude search'
#alias show='aptitude show'

# for yum
#alias update='sudo yum update'
#alias search='yum search'
#alias install='sudo yum install'
#alias remove='sudo yum remove'
#alias autoremove='sudo yum autoremove'

#for Openbox
alias obrs='openbox --restart'
alias obrc='openbox --reconfigure'

# quick access
alias cdcpp='cd ~/VTS/OOP/C++/'
alias cdsapps='cd ~/.steam/steam/steamapps/common/'

# for config files
alias bspwmcfg='vim ~/.config/bspwm/bspwmrc'
alias sxhkdcfg='vim ~/.config/sxhkd/sxhkdrc'
alias obcfg='vim ~/.config/openbox/rc.xml'
alias obmenucfg='vim ~/.config/openbox/menu.xml'
alias autostartcfg='vim ~/.config/openbox/autostart'
alias tintcfg='vim ~/.config/tint2/tint2rc'
alias vimcfg='vim ~/.vimrc'
alias bashcfg='vim ~/.bashrc'
alias tmuxcfg='vim ~/.tmux.conf'
alias resourcecfg='vim ~/.Xresources'
alias merge='xrdb -merge ~/.Xresources && xrdb -load ~/.Xresources'
alias comptoncfg='vim ~/.compton.conf'
alias i3cfg='vim ~/.i3/config'
alias termitecfg='vim ~/.config/termite/config'

# for phone mounting (android)
#alias android-connect='mtpfs -o allow_other /mnt/phone'
#alias android-disconnect='fusermount -u /mnt/phone'

# for tmux attaching
alias ta='tmux attach'

# for starting and stopping services
alias starthamachi='sudo systemctl start logmein-hamachi'
alias stophamachi='sudo systemctl stop logmein-hamachi'
alias restarthamachi='sudo systemctl restart logmein-hamachi'

alias starthttpd='sudo systemctl start httpd.service'
alias stophttpd='sudo systemctl stop httpd.service'
alias restarthttpd='sudo systemctl restart httpd.service'

alias startmysql='sudo systemctl start mysqld.service'
alias stopmysql='sudo systemctl stop mysqld.service'
alias restartmysql='sudo systemctl restart mysqld.service'

# for g++
alias g++='g++ -fdiagnostics-color=always'

# battery info
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0'

# music
alias music='mpd && mpdscribble && ncmpcpp'

# cpu temp monitoring
alias heat='watch -n 1 -d sensors'
