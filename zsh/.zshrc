export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  ag
  command-not-found
  cp
  docker-compose
  emacs
  fzf
  vagrant
  vi-mode
  history-substring-search
)

source $ZSH/oh-my-zsh.sh

export MODE_CURSOR_VIINS="#00ff00 blinking bar"
export MODE_CURSOR_REPLACE="$MODE_CURSOR_VIINS #ff0000"
export MODE_CURSOR_VICMD="green block"
export MODE_CURSOR_SEARCH="#ff00ff steady underline"
export MODE_CURSOR_VISUAL="$MODE_CURSOR_VICMD steady bar"
export MODE_CURSOR_VLINE="$MODE_CURSOR_VISUAL #00ffff"

alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.SpaceVim.d/init.toml"
alias tmuxconfig="vim ~/.tmux.conf"

alias vj="vim ~/journals/vimjournal.md"
alias rj="vim ~/journals/rustjournal.md"
alias bj="vim ~/journals/bashjournal.md"
alias ej="vim ~/journals/emacsjournal.md"
alias sj="vim ~/journals/symfonyjournal.md"

alias ls='exa -la --git --icons --group-directories-first'
alias cat='bat'
alias vim='nvim'
alias us='update_stow'

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
export HISTFILE=~/.zsh_history

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"


