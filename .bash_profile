# [[ -f $HOME/.bashrc ]] && . ~/.bashrc
# [[ -f $HOME/.bash_aliases ]] && . ~/.bash_aliases
# [[ -f $HOME/.config/fzf/keybindings.bash ]] && . ~/.config/fzf/keybindings.bash
export EDITOR="nvim"
export HISTSIZE=2000
export HISTFILESIZE=2000 
export PS1="\[\033[38;5;39m\]\u\[$(tput bold)\]\[\033[38;5;14m\]@\[\033[38;5;42m\]\h:\[$(tput bold)\]\[\033[38;5;62m\][\w]\[$(tput sgr0)\]\n\\[\033[38;5;41m\]\$ \[$(tput sgr0)\]"
PATH=$PATH:$HOME/.local/bin/
PATH=$PATH:$HOME/go/bin/
PATH=$PATH:$HOME/node_modules/.bin/
source "$HOME/.cargo/env"
