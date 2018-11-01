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
alias v="vim"
alias p="sudo pacman"
alias r="ranger"
alias c="sudo code ."
alias tb="thunderbird"
alias sr="sudo ranger"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias sv="sudo vim"
alias sv="sudo vim"
alias cl="clear"
alias df="df -h |grep /$"
alias ht="htop -d 3"
alias off="sudo shutdown 0"
alias frm=" rm -rf"
alias grep="grep --color=auto"
alias htop="htop -d 3"
alias email="thunderbird &"
alias cding="cd ~/Coding/"
alias article="cp ~/Templates/article.tex ./article_new.tex"
alias repbar="killall polybar; polybar default -q &"
alias starwars="telnet towel.blinkenlights.nl"
# ls-command shortcuts
alias ls="ls -F --color=auto"
alias la="ls -ahH --color=auto --group-directories-first"
alias ll='sudo ls -hHn --color=auto --group-directories-first'
alias so="sudo du -hcs"
alias lla="ls -alhH --color=auto --group-directories-first"
alias soa="sudo du -ahc -d 3 ./ 2>/dev/null | sort -h "
alias soar="sudo du -ahc -d 8 / 2>/dev/null | sort -h "
alias lwatch="watch -n .2 ls -lh"
alias lalwatch="watch -n .2 ls -alHnh --color=auto --group-directories-first"
# Shortcuts to edit config files
alias rcconf="sudo vim ~/.config/ranger/rc.conf"
alias conf="vim ~/.i3/config"
alias sconf="sudo vim /etc/i3status.conf"
alias bashrc="sudo vim ~/.bashrc"
alias xres="sudo vim ~/.Xresources"
alias xresr="xrdb ~/.Xresources"
alias vimrc="sudo vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias pbar="vim ~/.config/polybar/config"
# Git dotfiles version controll
alias dfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dfilescommit="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME commit -m"
