# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
source "$HOME/.cargo/env"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
setopt INC_APPEND_HISTORY

# owl4ce s preferences
PRIV="doas"

alias c="clear"
alias q="exit"
alias hd="hexdump -C"
alias default-apps="printf '\ec' && ~/.scripts/default-apps/launch && ~/.scripts/default-apps/launch -e"
alias pacrem="$PRIV pacman -Rcns"
alias yayupd="yay -Sy"
alias yayupg="yay -Syu"
alias emergeins="$PRIV emerge -av"
alias emergeinmask="$PRIV emerge -av --autounmask=y --autounmask-write"
alias emergepv="$PRIV emerge -pv"
alias emergeupd="$PRIV emaint -a sync"
alias emergeupg="$PRIV emerge -av --update --deep --changed-use @world"
alias emergedepc="$PRIV emerge --depclean -av"
alias emergenuse="$PRIV emerge -av --update --newuse --deep @world"
alias emergecuse="$PRIV emerge -av --update --changed-use --deep @world"
alias ecleandist="$PRIV eclean-dist --deep"
alias ecleanpkg="$PRIV eclean-pkg --deep"
alias ecleankern="$PRIV eclean-kernel -n 3"
alias rc-service="$PRIV rc-service"
alias rc-update="$PRIV rc-update"
alias pingoogle="ping 8.8.8.8"
alias trimall="$PRIV fstrim -va"
alias nanosu="$PRIV nano"
alias nvimsu="$PRIV nvim"
alias refram="$PRIV bash -c \"sync; echo 3 > /proc/sys/vm/drop_caches\""
#alias ls="exa -lgh --icons --group-directories-first"
#alias la="exa -lgha --icons --group-directories-first"

# Color toys aliases
alias 256colors2="~/.color-toys/256colors2.pl"
alias bloks="~/.color-toys/bloks"
alias colortest="~/.color-toys/colortest"
alias colortest-slim="~/.color-toys/colortest-slim"
alias colorview="~/.color-toys/colorview"
alias colorbars="~/.color-toys/colorbars"
alias panes="~/.color-toys/panes"
alias pipes1="~/.color-toys/pipes1"
alias pipes2="~/.color-toys/pipes2"
alias pipes2-slim="~/.color-toys/pipes2-slim"
# GPG Dialog
export GPG_TTY=$(tty)

# BAT Theme (cat replacement)
export BAT_THEME="base16"


autoload -U colors && colors	# Load colors


autoload -U compinit # completion
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#7ec0ee"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=1

export EDITOR="nvim"
export HISTSIZE=2000
export HISTFILESIZE=2000 

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'
[[ -f $HOME/.bash_aliases ]] && . ~/.bash_aliases


ROFI_PASS_CONFIG="$HOME/path/to/config" 


# Incorporate git information into prompt

[[ $USERNAME != "root" ]] && [[ $ZSH_NAME != "zsh-static" ]] && {

    # Async helpers
    _vbe_vcs_async_start() {
        async_start_worker vcs_info
        async_register_callback vcs_info _vbe_vcs_info_done
    }
    _vbe_vcs_info() {
        cd -q $1
        vcs_info
        print ${vcs_info_msg_0_}
    }
    _vbe_vcs_info_done() {
        local job=$1
        local return_code=$2
        local stdout=$3
        local more=$6
        if [[ $job == '[async]' ]]; then
            if [[ $return_code -eq 2 ]]; then
                # Need to restart the worker. Stolen from
                # https://github.com/mengelbrecht/slimline/blob/master/lib/async.zsh
                _vbe_vcs_async_start
                return
            fi
        fi
        vcs_info_msg_0_=$stdout
        [[ $more == 1 ]] || zle reset-prompt
    }
    _vbe_vcs_chpwd() {
        vcs_info_msg_0_=
    }
    _vbe_vcs_precmd() {
        async_flush_jobs vcs_info
        async_job vcs_info _vbe_vcs_info $PWD
    }

    autoload -Uz vcs_info

    zstyle ':vcs_info:*' enable git
    () {
        # local formats="${PRCH[branch]} %b%c%u"
        local formats=" %{$fg[blue]%}(%{$fg[red]%}%m%u%c%{$fg[yellow]%} %{$fg[magenta]%}%b%{$fg[blue]%})"
        zstyle    ':vcs_info:*:*' formats           $formats
        zstyle    ':vcs_info:*:*' check-for-changes true

        zstyle ':vcs_info:git*+set-message:*' hooks git-st git-untracked git-remotebranch

        +vi-git-untracked () {
            if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
                git status --porcelain | grep '??' &> /dev/null ; then
                # This will show the marker if there are any untracked files in repo.
                # If instead you want to show the marker only if there are untracked
                # files in $PWD, use:
                #[[ -n $(git ls-files --others --exclude-standard) ]] ; then
                hook_com[staged]+='T'
            fi
        }
        +vi-git-st() {
            local ahead behind
            local -a gitstatus

            # Exit early in case the worktree is on a detached HEAD
            git rev-parse ${hook_com[branch]}@{upstream} >/dev/null 2>&1 || return 0

            local -a ahead_and_behind=(
                $(git rev-list --left-right --count HEAD...${hook_com[branch]}@{upstream} 2>/dev/null)
            )

            ahead=${ahead_and_behind[1]}
            behind=${ahead_and_behind[2]}

            (( $ahead )) && gitstatus+=( "+${ahead}" )
            (( $behind )) && gitstatus+=( "-${behind}" )

            hook_com[misc]+=${(j:/:)gitstatus}
        }
         +vi-git-remotebranch() {
            local remote

            # Are we on a remote-tracking branch?
            remote=${$(git rev-parse --verify ${hook_com[branch]}@{upstream} \
                --symbolic-full-name 2>/dev/null)/refs\/remotes\/}

            # The first test will show a tracking branch whenever there is one. The
            # second test, however, will only show the remote branch's name if it
            # differs from the local one.
            if [[ -n ${remote} ]] ; then
            #if [[ -n ${remote} && ${remote#*/} != ${hook_com[branch]} ]] ; then
                hook_com[branch]="${hook_com[branch]} [${remote}]"
            fi
        }

    }

    # Asynchronous VCS status
    source $HOME/github/zsh-async/async.zsh
    async_init
    _vbe_vcs_async_start
    add-zsh-hook precmd _vbe_vcs_precmd
    add-zsh-hook chpwd _vbe_vcs_chpwd

    # Add VCS information to the prompt
    _vbe_add_prompt_vcs () {
	_vbe_prompt_segment cyan default ${vcs_info_msg_0_}
    }
}


setopt PROMPT_SUBST
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}"
PS1+='${vcs_info_msg_0_}'
PS1+=$'\n'"$%b "

# source $HOME/github/gitstatus/gitstatus.prompt.zsh
# PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%} "'$GITSTATUS_PROMPT'$'\n'"$%b "
