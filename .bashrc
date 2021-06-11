#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias fixLang='setxkbmap -layout us,ru -option grp:caps_toggle'
alias cdpiano='cd $HOME/piano/gitrepos'
alias cal='khal calendar'

### WIFI ###
alias wifiScan='nmcli device wifi list'
alias wifiDisconnect='nmcli device disconnect wlo0'

wifiConnect () {
    nmcli device wifi connect "$1"
}

wifiConnectPassword () {
    nmcli device wifi connect "$1" password "$2"
}
### WIFI ###
