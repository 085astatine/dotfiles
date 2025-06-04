#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1
#PS1='[\u@\h \W]\$ '
PS1='\e[32m\u@\h\e[m \e[33m\w\e[m\n$? > '

# PATH
export PATH=~/bin:$PATH

# Python
export PIPENV_VENV_IN_PROJECT=true

# key bind
stty stop undef
bind '"\C-h": beginning-of-line'
bind '"\C-l": end-of-line'
bind '"\C-e": clear-screen'

# WSL
if [ -e /mnt/c/Windows/System32/wsl.exe ]; then
  # LANG
  export LANG=en_US.UTF-8
  # PATH
  if [ ! -d /usr/games ]; then
    export PATH=${PATH/:\/usr\/games:/:}
  fi
  if [ ! -d /usr/local/games ]; then
    export PATH=${PATH/:\/usr\/local\/games:/:}
  fi
  # DISPLAY
  if [ ! -e /mnt/wslg ]; then
    export DISPLAY=`hostname`.mshome.net:0
  fi
fi

# IME: fcitx5
if [ -e /usr/bin/fcitx5 ]; then
  export GTK_IM_MODULE=fcitx
  export QT_IM_MODULE=fcitx
  export XMODIFIERS=@im=fcitx
  (! pgrep fcitx5 &>> /dev/null && \
    fcitx5 --disable=wayland -d --verbose '*'=0 &>> /dev/null &)
fi
