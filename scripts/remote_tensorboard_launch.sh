#! /bin/bash -e

port=6006
# Override port if it is given
if [[ $# -eq 1 ]]; then
    port=$1
fi
if [[ ! $HOME == "/home/sam" ]]; then
    source $HOME/tb_venv/bin/activate
fi
echo "tensorboard running"
tensorboard --logdir=.
