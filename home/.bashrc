#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\e[32m\u@\h\e[m \e[33m\w\e[m\n$? > '

# path
export PATH=~/bin:$PATH
