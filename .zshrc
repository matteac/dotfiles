export TERMINAL=/usr/bin/alacritty
export BAT_THEME="gruvbox-dark"


export PATH=$HOME/.cache/rebar3/bin:$PATH 
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.zig/$(cat $HOME/.zig/version):$PATH
export PATH=$HOME/.lsp:$PATH

# OMZ
plugins=(
  dotenv
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# ASDF
source ~/.asdf/asdf.sh

# DENO
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# GO
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin"

# BUN
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# STARSHIP
eval "$(starship init zsh)"
export STARSHIP_CONFIG=$HOME/.config/starship.toml

# ZOXIDE
eval "$(zoxide init zsh)"
alias cd="z"

# SPICETIFY
export PATH=$PATH:$HOME/.spicetify




# ALIASES
alias :q="exit"
alias ls="lsd -lXt"

alias v="vim"
alias nv="nvim" 
alias gs="git status"



eval "$(ssh-agent -s)" > /dev/null # suppress output of ssh-agent

source "$HOME/.secrets"
