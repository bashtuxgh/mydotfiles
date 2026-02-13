function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# Replace ls with eza
alias ls='eza'

# Long format with headers and icons
alias ll='eza -l --header --icons'

# Long format including hidden files
alias la='eza -la --header --icons'

# Tree view shortcut
alias tree='eza --tree'

alias v='nvim'

export EDITOR='nvim'
export VISUAL='nvim'

