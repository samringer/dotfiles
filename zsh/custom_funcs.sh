# Move to experiment directory relevant to machine
exp () {
    if [[ $(hostname) == "sergei" ]]; then
        cd ~/experiments
    elif [[ $(hostname) == *".cantabresearch.com" ]]; then
        cd /cantab/exp0/inbetweeners/metalearning
    elif [[ $(hostname) == *"cam"* ]]; then
        cd /cantab/inbetweeners/metealearning
    else
        echo 'update this func'
    fi
}


# Move to data directory relevant to machine
data () {
    if [[ $(hostname) == "sergei" ]]; then
        cd ~/data
    elif [[ $(hostname) == *".cantabresearch.com" ]]; then
        cd /cantab/data
    elif [[ $(hostname) == *"cam"* ]]; then
        cd /cantab/data
    else
        echo 'update this func'
    fi
}


# ls after every cd
function chpwd() {
	emulate -L zsh
    ls --hide="__pycache__" --hide="*.pyc"
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


# Quickly get output of a job
qcat () {
   if [ "$#" -eq 1 ]; then
	cat $(qstat -j $1 | grep log | grep std | cut -d ":" -f4)
   else
	echo "Usage: qcat <jobid>" >&2
   fi
}
