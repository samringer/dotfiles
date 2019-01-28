# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
PATH=/bin:/usr/bin:/usr/local/bin:${PATH}

# Add anaconda to python path if on personal laptop 
if [ "$HOME" = "/Users/sam" ]; then
	export PATH=/Users/sam/anaconda3/bin:${PATH}
fi
# Add anaconda to python path if on work laptop 
if [ "$HOME" = "/Users/samringer" ]; then
	export PATH=/Users/samringer/anaconda3/bin:${PATH}
fi
# Add anaconda to python path if on sergei
if [ "$HOME" = "/home/sam" ]; then
	export PATH=/home/sam/anaconda3/bin:${PATH}
fi

export PATH
ZSH_THEME="avit"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(history-substring-search z gitfast pip compleat docker docker-compose zsh-completions brew)

source $ZSH/oh-my-zsh.sh

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# User configuration

source $HOME/.oh-my-zsh/lib/history.zsh
source $HOME/.oh-my-zsh/lib/key-bindings.zsh
source $HOME/.oh-my-zsh/lib/completion.zsh

# Quickly get output of a job
qcat () {
   if [ "$#" -eq 1 ]; then
	cat $(qstat -j $1 | grep log | grep std | cut -d ":" -f4)
   else
	echo "Usage: qcat <jobid>" >&2
   fi
}

# quickly search command history
hi () {
   if [ "$#" -eq 1 ]; then
	history | grep "$1"
   else
	echo "Usage: hi <substring>" >&2
   fi
}

# search queue for a string
qs () {
   if [ "$#" -eq 1 ]; then
	qstat -f -u '*' | grep "$1"
   else
	echo "Usage: qs <substring>" >&2
   fi
}

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Enable extended globbing
setopt extended_glob

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
alias paperspace="ssh paperspace@184.105.216.179"
alias srenv="source ~/srenv/bin/activate"
alias get980="qlogin -q gpu.q@@980"
alias gettitanx="qlogin -q gpu.q@@titanx"
alias venv2="source ~/srpython2/bin/activate"
alias cuda1="export CUDA_VISIBLE_DEVICES=0"
alias cuda0="export CUDA_VISIBLE_DEVICES=1"
alias work="ssh -p 10022 samr@cantab-vm.linkpc.net"
alias jn="jupyter notebook --no-browser --port=8889"
alias showjn="ssh -N -f -L localhost:8888:localhost:8889 samr@code0"
alias ct="cd /cantab/exp0/samr"
alias all_q="qstat -f -u '*' | less "
alias colo="ssh samr@cam2c01.farm.speechmatics.io"
alias venv="source ~/venv/bin/activate"
alias tf="source ~/tf_venv/bin/activate"
alias puncdata="cd /cantab/exp0/inbetweeners/punctuation"
alias azure="ssh samr@172.31.101.14"
alias dirvenv="source venv/bin/activate"
export homeIP="86.138.66.213"
alias sergei="ssh sam@samsergei.hopto.org"
alias sergeijl="ssh -N -L localhost:8888:localhost:8888 sam@samsergei.hopto.org"
alias sergeitb="ssh -N -L localhost:6006:localhost:6006 sam@samsergei.hopto.org"
alias sergeil="ssh 192.168.1.168"
#alias v="vim -p"
alias v="vim"
alias c="cd"

# ls after every cd
function chpwd() {
	emulate -L zsh
	ls
}
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
export PATH=$PATH:$HOME/git/dotfiles/utils
# Limit history
export HISTSIZE=1000
export HISTFILESIZE=1000
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
