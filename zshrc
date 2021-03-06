HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v

zstyle :compinstall filename '$HOME/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

MENU_COMPLETE=true

autoload -Uz compinit
compinit

source <(antibody init)
antibody bundle < ~/.zsh_bundles

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export EDITOR="nvim"
export GOPATH="$HOME/Code/go"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

. ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PATH=$GOPATH/bin:$PATH:/usr/local/sbin