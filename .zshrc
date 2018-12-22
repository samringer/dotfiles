# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/srenv/bin/jupyter:$PATH"
#export PATH=/Library/Frameworks/Python.framework/Version/3.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
#export PATH="/Users/samringer/anaconda3/bin:$PATH"

PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
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
#
# Quickly get output of a job
qcat () {
   if [ "$#" -eq 1 ]; then
	cat $(qstat -j $1 | grep log | grep std | cut -d ":" -f4)
   else
	echo "Usage: qcat <jobid>" >&2
   fi
}

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Use GNU core utils if on a mac
if [ ${HOME} = "/Users/samringer" ]; then
    export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
fi

# Enable extended globbing
setopt extended_glob

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# ls after every cd
function chpwd() {
	emulate -L zsh
	ls
}
#
# Using Vi Mode
bindkey -v

bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
#bindkey "^[[A" history-beginning-search-backward
#bindkey "^[[B" history-beginning-search-forward
#Allow smart searching
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
alias common="vim ~/git/normaliser/normaliser/common/baseNormaliser.py"
alias en="vim ~/git/normaliser/normaliser/en/langNormaliser.py"
alias norm="vim ~/git/normaliser/normaliser/normalise.py"
alias azure="ssh samr@172.31.101.14"
alias dirvenv="source venv/bin/activate"
alias sergei="mosh sam@192.168.1.168"
