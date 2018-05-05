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

export RHISK_COMM="zenbu"
source /usr/share/doc/pkgfile/command-not-found.zsh

alias vtop="vtop -t city"

autoload -U +X bashcompinit && bashcompinit
source /home/kmrn/bin/wzb-utils/autocomplete

