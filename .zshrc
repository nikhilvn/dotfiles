# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/nikhil/.zsh/completions:"* ]]; then export FPATH="/home/nikhil/.zsh/completions:$FPATH"; fi
# NOTE: Add and load zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

source <(fzf --zsh)

# NOTE: Add zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# NOTE: Load completions
autoload -U compinit && compinit

zinit cdreplay -q

# NOTE: History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# NOTE: Aliases
alias ls='eza --long --all --color=always --icons=always --no-user --no-filesize --no-permissions'
alias ll='eza --long --all --color=always --icons=always'
alias tree='eza --tree --color=always | head -200'
alias c='clear'
alias co='code'
alias v='nvim'
alias f='fzf'
alias sd='cd $(fdfind --type directory | fzf)'


# NOTE: Variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export EDITOR="/opt/nvim-linux-x86_64/bin/nvim"

# NOTE: Paths
export PATH=$PATH:~/zig/0.14.0
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:"$HOME/go/bin"
export PATH="$HOME/.tmuxifier/bin:$PATH"

# NOTE: Programs
eval "$(starship init zsh)" # starship
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" # homebrew
. "/home/nikhil/.deno/env"
