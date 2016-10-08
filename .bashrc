# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
PS1="[\u@\h \w]\$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/( \1 )/')\$ "


EDITOR=/bin/nvim
VISUAL=/bin/nvim


alias v=nvim
alias vim=nvim


bind -f ~/.inputrc


if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
  exec startx
fi
