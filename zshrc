# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
# bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/ique/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

## completions ####
autoload -U zstyle+
## General completion technique
# case-insensitive (uppercase from lowercase) completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' completer _complete _list _oldlist _expand _ignored _match _correct _approximate _prefix
## complete less
#zstyle ':completion:*' completer _expand _complete _list _ignored _approximate
## complete minimal
#zstyle ':completion:*' completer _complete _ignored

# Do history search backwards and forwards by Ctrl-A and Ctrl-B
bindkey "^A" history-search-backward
bindkey "^B" history-search-forward

# Set prompt to quite minimalistic one
PROMPT='%~ $ '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# PATH Exports
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/local/git/bin:$PATH
export PATH=$PATH:~/.stack/programs/x86_64-osx/ghc-7.10.2/bin
export PATH="/usr/local/sbin:$PATH"

alias b="cd .."
alias bb="cd ../../"
alias bbb="cd ../../../"
alias killaudio="sudo kill `ps -ax | grep 'coreaudiod' | grep 'sbin' |awk '{print $1}'`"

# Git aliases
alias co="git checkout"

export GOPATH=$HOME/code/golang
export PATH=$PATH:$GOPATH/bin

# Ansible setup
# export PATH=/Users/folsen/code/ansible/bin:$PATH
# export PYTHONPATH=/Users/folsen/code/ansible/lib:
# export ANSIBLE_LIBRARY=/Users/folsen/code/ansible/library
# export ANSIBLE_HOSTS=~/ansible_hosts

# The next line updates PATH for the Google Cloud SDK.
source '/Users/folsen/google-cloud-sdk/path.zsh.inc'
# The next line enables bash completion for gcloud.
source '/Users/folsen/google-cloud-sdk/completion.zsh.inc'

# load rebenv
# eval "$(rbenv init -)"

# Load docker vars
# eval "$(docker-machine env dev)"
