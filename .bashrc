#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias emacs='emacs -nw'
alias packer='TMPDIR=$HOME/build EDITOR=emacs packer --auronly'
alias bness='pkexec /usr/lib/gnome-settings-daemon/gsd-backlight-helper --set-brightness'
alias sudo='sudo '
