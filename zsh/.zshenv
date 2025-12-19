export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_STATE_HOME=${XDG_STATE_HOME:-$HOME/.local/state}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}

export ZDOTDIR=${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}
export HISTFILE=$XDG_CACHE_HOME/zsh/.zhistory
export LESSHSTFILE="$XDG_STATE_HOME"/lesshst

export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export PATH="$PATH":"$XDG_DATA_HOME"/npm/bin
export PATH="$PATH":"$HOME"/.local/bin

export SHELL_SESSIONS_DISABLE=1

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

export RISCV=/opt/riscv32

export EDITOR="$(which nvim)"

if [[ "$OSTYPE" == "darwin" ]]; then
	export SHELL_SESSIONS_DISABLE=1
fi
