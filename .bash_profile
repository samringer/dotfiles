# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
export SHELL=/bin/zsh
#The line below runs zsh automatically but has caused v annoying invisible errors. Should really find another way of doing it.
#exec /bin/zsh -l
