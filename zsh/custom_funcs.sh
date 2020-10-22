# Link an experiment directory to an alias quickly
dirl () {
    full_link=$(rl ${1})
    echo "alias ${2}=\"cd $(readlink -f ${1})\"" >> ~/git/dotfiles/zsh/aliases.sh
    zsh
}

# Unlink an alias quickly
dirul () {
    sed -i "/alias ${1}=\"cd/d" ~/git/dotfiles/zsh/aliases.sh
    zsh
}

# Quickly get output of a job
qcat () {
   if [ "$#" -eq 1 ]; then
	cat $(qstat -j $1 | grep log | grep std | cut -d ":" -f4)
   else
	echo "Usage: qcat <jobid>" >&2
   fi
}

# Pipe qcat through less
ql () {
   if [ "$#" -eq 1 ]; then
    qcat $1 | less
   else
	echo "Usage: ql <jobid>" >&2
   fi
}

# Tail the results.log of a job on the queue
qtail () {
   if [ "$#" -eq 1 ]; then
    tail -f $(qstat -j $1 | grep log | grep std | cut -d ":" -f4)
   else
	echo "Usage: qtail <jobid>" >&2
   fi
}

ns () {
    if [[ $(hostname) == *"bastion"* ]]; then
        ssh samr@cam2aml01.aml.speechmatics.io 'nvidia-smi'
    else;
        nvidia-smi
    fi
}


# Move to data directory relevant to machine
data () {
    if [[ $(hostname) == "sergei" ]]; then
        cd ~/data
    elif [[ $(hostname) == *".cantabresearch.com" ]]; then
        cd /cantab/data
    elif [[ $(hostname) == *"aml0"* ]]; then
        cd /data
    elif [[ $(hostname) == *"cam"* ]]; then
        cd /cantab/data
    else
        echo 'update this func'
    fi
}

# Move to dev directory relevant to machine
dev () {
    if [[ $(hostname) == "sergei" ]]; then
        echo 'not supported for sergei'
    elif [[ $(hostname) == *".cantabresearch.com" ]]; then
        cd /cantab/dev
    elif [[ $(hostname) == *"cam"* ]]; then
        echo 'not supported for colo yet'
    else
        echo 'update this func'
    fi
}


# ls after every cd
function chpwd() {
	emulate -L zsh
    ls --color --ignore="__pycache__" --ignore="*.pyc"
}


# like 'man but better
explain () {
  if [ "$#" -eq 0 ]; then
    while read  -p "Command: " cmd; do
      curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$cmd"
    done
    echo "Bye!"
  elif [ "$#" -eq 1 ]; then
    curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$1"
  else
    echo "Usage"
    echo "explain                  interactive mode."
    echo "explain 'cmd -o | ...'   one quoted command to explain it."
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


# quickly search command history
hi () {
   if [ "$#" -eq 1 ]; then
	history | grep "$1"
   else
	echo "Usage: hi <substring>" >&2
   fi
}


