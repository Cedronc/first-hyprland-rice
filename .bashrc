#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# load colorscheme
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias config="vim $HOME/.config"
alias yank="yay -S"
alias yeet="yay -R"

# PS1='[\u \W]\$ '
PS1='\u@\H \W \n 🀚 '

eval "$(starship init bash)"
export PATH=$PATH:/home/cedric/.spicetify
