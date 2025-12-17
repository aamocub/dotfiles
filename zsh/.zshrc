alias l="ls -laGh"
alias vi="nvim"

## General options
setopt HIST_SAVE_NO_DUPS
setopt MENU_COMPLETE
setopt AUTO_MENU
setopt LIST_PACKED
setopt ALWAYS_TO_END
setopt AUTO_PARAM_SLASH
setopt GLOB_COMPLETE
setopt SHARE_HISTORY

## Autocompletion
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi

autoload -Uz compinit
compinit

_comp_options+=(globdots)
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' menu select
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*' group-name ''
# zstyle ':completion:*' file-list all
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'

## Prompt customization
autoload -Uz vcs_info
precmd_vcs_info () { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats ' (git:%b) '
export PS1='%n@%m:%~${vcs_info_msg_0_}# '
export PATH="/opt/riscv32/bin:$PATH"

if type brew &>/dev/null; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
	export MANPATH="$MANPATH:/opt/homebrew/opt/erlang/lib/erlang/man"
	export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
	export PATH="/Users/aamocub/Desktop/personal/verilator/bin:$PATH"
fi
