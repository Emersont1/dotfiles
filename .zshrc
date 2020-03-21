# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.dotfiles/oh-my-zsh"
ZSH_THEME="nanotech"
CASE_SENSITIVE="true"
plugins=(git zsh-completions)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
