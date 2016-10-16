# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
PS1="[\u@\h \w]\$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/( \1 )/')\$ "


EDITOR=/bin/nvim
VISUAL=/bin/nvim


alias nv=nvim
alias v=nvim
alias vim=nvim


bind -f ~/.inputrc


PATH="$PATH:$HOME/.gem/ruby/2.3.0/bin"
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
GEM_PATH=$GEM_HOME
GEM_PATH="$HOME/.gem/ruby/2.3.0:$GEM_PATH"


if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
  exec startx
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
