# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v

zstyle :compinstall filename '/home/kmrn/.zshrc'

autoload -Uz compinit
compinit

export TERM=xterm-256color
export RHISK_COMM="zenbu"
source /usr/share/doc/pkgfile/command-not-found.zsh

alias :q="exit"
alias vtop="vtop -t city"
alias vpnup="systemctl start openvpn-client@Switzerland.service"
alias vpndown="systemctl stop openvpn-client@Switzerland.service"
alias condaa="source /opt/anaconda/bin/activate root"
alias condad="source /opt/anaconda/bin/deactivate root"


autoload -U +X bashcompinit && bashcompinit
source /home/kmrn/bin/wzb-utils/autocomplete

export PATH=$PATH:$HOME/.local/bin
