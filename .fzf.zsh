# Setup fzf
# ---------
if [[ ! "$PATH" == */home/mkaditya/.config/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/mkaditya/.config/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/mkaditya/.config/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/mkaditya/.config/fzf/shell/key-bindings.zsh"
