# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/colinmikolajczak/.oh-my-zsh"

plugins=(
git
docker
rust
vscode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Example aliases
alias zshconfig="code ~/.zshrc"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="PYENV_ROOT/shims:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)

eval "$(oh-my-posh init zsh --config /opt/homebrew/opt/oh-my-posh/themes/material.omp.json)"

alias cd..="cd .."
alias tracked="git add -u"
alias stageall="git add -A"
alias amend="git commit --amend --no-edit"

# Created by `userpath` on 2021-09-06 13:45:36
export PATH="$PATH:/Users/colinmikolajczak/.local/bin"
