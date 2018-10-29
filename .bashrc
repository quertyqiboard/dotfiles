# Makes my bash name look nice
if [ "$EUID" -ne 0 ]
then export PS1="\[$(tput bold)\]\[$(tput setaf 6)\][\[$(tput setaf 3)\]\u\[$(tput setaf 6)\]@\[$(tput setaf 6)\]\h \[$(tput setaf 2)\]\d\[$(tput setaf 6)\]] \[$(tput setaf 1)\]\[$(tput setaf 6)\][\[$(tput setaf 1)\]\w\[$(tput setaf 7)\]\[$(tput setaf 6)\]] \[$(tput sgr0)\]\n\[$(tput setaf 6)\]\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput bold)\]\[$(tput setaf 6)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 6)\]@\[$(tput setaf 6)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 1)\]\w\[$(tput setaf 1)\]]\[$(tput setaf 7)\] \[$(tput sgr0)\]\n# "
fi

HISTSIZE=100000

export NICKNAME="Henning"
export EDITOR=vim
shopt -s histappend
shopt -s autocd
shopt -s  cdspell
stty -ixon # Disables Strg-S and Strg-Q
# System
alias ift="sudo iftop"
# alias sapt="sudo apt"
# alias saptupd="sudo apt update"
# alias saptupg="sudo apt upgrade"
alias pmans="sudo pacman -Syu"
alias pmanr="sudo pacman -R"
alias off="sudo shutdown 0"
alias rm="rm -ir"
alias frm=" rm -rf"
alias mv="mv -i"
alias cp="cp -i"
alias v="vim"
alias sv="sudo vim"
alias sv="sudo vim"
alias cl="clear"
alias email="thunderbird &"
alias htop="htop -d 3"
alias df="df -h |grep /$"
alias ht="htop -d 3"
alias grep="grep --color=auto"
alias cding="cd ~/Coding/"
# ls-command shortcuts
alias ls="ls -F --color=auto"
alias la="ls -ahH --color=auto --group-directories-first"
alias lla="ls -alhH --color=auto --group-directories-first"
alias ll='sudo ls -hHn --color=auto --group-directories-first'
alias lwatch="watch -n .2 ls -lh"
alias lalwatch="watch -n .2 ls -alHnh --color=auto --group-directories-first"
alias so="sudo du -hcs"
alias soa="sudo du -ahc -d 3 ./ 2>/dev/null | sort -h "
alias soar="sudo du -ahc -d 8 / 2>/dev/null | sort -h "
# Shortcuts to edit config files
alias rcconf="sudo vim ~/.config/ranger/rc.conf"
alias conf="vim ~/.i3/config"
alias sconf="sudo vim /etc/i3status.conf"
alias bashrc="sudo vim ~/.bashrc"
alias xres="sudo vim ~/.Xresources"
alias xresr="xrdb ~/.Xresources"
alias vimrc="sudo vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
# Pogram shortcuts
alias c="sudo code ."
# alias gc="google-chrome"
# alias gcp="google-chrome --incognito"
alias tb="thunderbird"
# Git dotfiles version controll
alias dfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dfilescommit="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME commit -a -m"
