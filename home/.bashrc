#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Functions
function prepend_path() {
  if [[ ! ":$PATH:" =~ .*":$1:".* ]]; then
    export PATH=$1:$PATH
  fi
}

function remove_from_path() {
  if [[ ":$PATH:" =~ .*":$1:".* ]]; then
    export PATH=:${PATH}:
    export PATH=${PATH/:$1:/:}
    export PATH=${PATH#:}
    export PATH=${PATH%:}
  fi
}

# PS1
#PS1='[\u@\h \W]\$ '
PS1='\e[32m\u@\h\e[m \e[33m\w\e[m\n$? > '

# PATH
if [ -d "${HOME}/bin" ]; then
  prepend_path "${HOME}/bin"
fi

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
    remove_from_path /usr/games
  fi
  if [ ! -d /usr/local/games ]; then
    remove_from_path /usr/local/games
  fi
  # DISPLAY
  if [ ! -e /mnt/wslg ]; then
    display=$(hostname).mshome.net:0
    export DISPLAY=$display
    unset -v display
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

# Unset Functions
unset -f prepend_path
unset -f remove_from_path
