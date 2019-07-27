# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

source ~/git/dotfiles/zsh/keybindings.sh
source ~/git/dotfiles/zsh/aliases.sh
source ~/git/dotfiles/zsh/custom_funcs.sh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH=$HOME/anaconda3/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH

ZSH_THEME="avit"

#Allow for local pip
export Path=$HOME/.local/bin:$PATH

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(history-substring-search z gitfast pip compleat docker docker-compose brew)

source $ZSH/oh-my-zsh.sh

# User configuration

source $HOME/.oh-my-zsh/lib/history.zsh
source $HOME/.oh-my-zsh/lib/key-bindings.zsh
source $HOME/.oh-my-zsh/lib/completion.zsh

# Enable extended globbing
setopt extended_glob

# History across tmux windows
setopt inc_append_history
setopt share_history

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

#
# Using Vi Mode
bindkey -v

# Fix for arrow-key searching
# start typing + [Up-Arrow] - fuzzy find history forward
#if [[ "${terminfo[kcuu1]}" != "" ]]; then
#	autoload -U up-line-or-beginning-search
#	zle -N up-line-or-beginning-search
#	bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
#fi
# start typing + [Down-Arrow] - fuzzy find history backward
#if [[ "${terminfo[kcud1]}" != "" ]]; then
#	autoload -U down-line-or-beginning-search
#	zle -N down-line-or-beginning-search
#	bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
#fi

source ~/git/dotfiles/zsh/keybindings.sh
source ~/git/dotfiles/zsh/aliases.sh
source ~/git/dotfiles/zsh/custom_funcs.sh
export PATH=$PATH:$HOME/git/dotfiles/utils
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
bindkey "^N" history-substring-search-up
bindkey "^P" history-substring-search-down

# Use iterm2s shell integration features
#source ~/.iterm2_shell_integration.zsh
