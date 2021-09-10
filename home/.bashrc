#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1
#PS1='[\u@\h \W]\$ '
PS1='\e[32m\u@\h\e[m \e[33m\w\e[m\n$? > '
# git-completion
if [ -e /usr/share/git/completion/git-completion.bash ]; then
    source /usr/share/git/completion/git-completion.bash
fi
# Python
export PIPENV_VENV_IN_PROJECT=true

# WSL
if [ -e /mnt/c/Windows/System32/wsl.exe ]; then
  # Display
  export DISPLAY=`hostname`.mshome.net:0
fi
