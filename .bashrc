#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# shopt -s dotglob

export PATH=$PATH:/opt/android-studio
export PATH=$PATH:/opt/aseprite

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# to get flameshot working
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

# dunno what this is for lol
export EDITOR='helix'

alias hack-mainframe='echo breaching mainframe... && sleep 3 && for i in {1..287}; do echo $i endpoints pierced && sleep .01; done'

hyfetch

# init sway
# TODO: understand how the hell this works
if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    echo starting...
    exec sway
fi
# export PATH=$PATH:/opt/devkitpro/tools/bin
# export PATH=$PATH:/opt/devkitpro/devkitARM/bin
# # export PATH=${PATH}:$(find /opt/devkitpro -type d | tr '\n' ':' | sed 's/:$//')

# # should let one execute an alias with sudo (start-crd specifically)
# # alias sudo='sudo '
# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# # alias hx='helix'
# alias set-x-colemak='setxkbmap -layout us -variant colemak_dh'
# # 'set-x-colemak', as typed with colemak when qwerty is selected
# # alias dkf-z-qwksfo='setxkbmap -layout us -variant colemak_dh'
# alias set-x-qwerty='setxkbmap -layout us'
# alias start-crd='sudo /usr/bin/systemctl start chrome-remote-desktop@Iris'
# alias xmobuild='xmonad --recompile && nohup xmobar &'
# # TODO: cargo flags for showing output, piping, cross compiling commands
# alias latex-make='latexmk -auxdir=out/ -outdir=out/ -pdf -pvc -view=none'
# # so when people ask if I'm hacking becauce programming is obviously hacking, I can show them my "hacking" skills
# alias rm='rm -I'

# export EDITOR='helix'
# export DEVKITPRO=/opt/devkitpro
# export DEVKITARM=/opt/devkitpro/devkitARM
# export DEVKITPPC=/opt/devkitpro/devkitPPC
# PS1='[\u@\h \W]\$ '

# exec start-crd

# if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#   exec sway
# fi
# exec startx

# hyfetch

# if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
# start-crd
# startx
# fi
