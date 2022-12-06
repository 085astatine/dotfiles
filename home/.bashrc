#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1
#PS1='[\u@\h \W]\$ '
PS1='\e[32m\u@\h\e[m \e[33m\w\e[m\n$? > '
# Python
export PIPENV_VENV_IN_PROJECT=true

# key bind
stty stop undef

# WSL
if [ -e /mnt/c/Windows/System32/wsl.exe ]; then
  # LANG
  export LANG=en_US.UTF-8
  # PATH
  export PATH=~/bin:$PATH
  # Display
  export DISPLAY=`hostname`.mshome.net:0
fi

# IME: fcitx
if [ -e /usr/bin/fcitx-autostart ]; then
  export GTK_IM_MODULE=fcitx
  export QT_IM_MODULE=fcitx
  export XMODIFIERS=@im=fcitx
  (fcitx-autostart >/dev/null 2>&1 &)
fi
