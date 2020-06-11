alias | awk -F'[ =]' '{print $2}'
alias ls='ls --color=auto'

alias cfg-audio='pavucontrol'
alias cfg-display='arandr'
alias cfg-urxvt='xrdb ~/.Xresources'
alias show-java='archlinux-java status'
alias cfg-java='archlinux-java set'
alias vpn-connect="sudo protonvpn connect"
alias a-r='ionic cordova run android'
alias clock='tty-clock -tbcf %Y-%m-%d'
alias svr-task="ssh 185.227.108.211"
eval "$(thefuck --alias)"

