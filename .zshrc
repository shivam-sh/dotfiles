source ~/.zsh/aliases
source ~/.zsh/conda
source ~/.zsh/prompt

# bun completions
[ -s "/Users/shivam/.bun/_bun" ] && source "/Users/shivam/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/shivam/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
