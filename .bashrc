# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


EDITOR=/bin/nvim
VISUAL=/bin/nvim


alias v=nvim
alias vim=nvim


bind -f ~/.inputrc


if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
  exec startx
fi
