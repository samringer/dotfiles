#! /bin/bash -e

port=6006
# Override port if it is given
if [[ $# -eq 1 ]]; then
    port=$1
fi
if [[ ! $HOME == "/Users/sam" ]]; then
    source $HOME/venv/bin/activate
fi
echo "tensorboard running on port ${1}"
tensorboard --logdir=.
