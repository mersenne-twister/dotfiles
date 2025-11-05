#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s dotglob

# export PATH=$PATH:/opt/android-studio
export PATH=$PATH:/opt/aseprite

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

hyfetch

# init sway
# TODO: understand how the hell this works
if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    echo starting...
    exec sway --unsupported-gpu
fi
