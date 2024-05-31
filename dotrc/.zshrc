# Set up the prompt
export CLICOLOR=1

#export PS1='%n@%m:%~$ '
autoload -Uz promptinit
promptinit
prompt adam1
setopt autocd
export MAKEFLAGS="-j16"
#export CC=clang
#export CXX=clang++
export SCYLLA_HOME=~/work/scylla/db

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e
#bindkey "^P" history-beginning-search-backward
#bindkey "^N" history-beginning-search-forward

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
#
source ~/.sh_aliases
ulimit -c unlimited
#export MTR_MEM=1
#export MTR_PARALLEL=8
#export MTR_BUILD_THREAD=auto
export TREE=/home/kostja/work/tarantool-1
export VALGRIND_OPTS="--num-callers=40 --leak-resolution=high --leak-check=yes --show-reachable=yes"
PATH="/home/kostja/local/bin:/usr/lib/ccache:$PATH"
export PATH
export MANSECT="2:3:5:7:1:4:8"
export GOPATH=/home/kostja/.go
export CQLSH_SEARCH_MANAGEMENT_TIMEOUT_SECONDS=900
# Include general profile if it exists
source ~/.profile

# Created by `userpath` on 2020-09-23 06:53:27
export PATH="$PATH:/home/kostja/.local/bin"
export EDITOR=vim
