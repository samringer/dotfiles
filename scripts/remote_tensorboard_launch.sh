#! /bin/bash -e

logdir=${1:-$PWD}

free_port=$(python -c 'import socket; s=socket.socket(); s.bind(("", 0)); print(s.getsockname()[1]); s.close()')
nohup bash -c "source ~/git/metalearning/venv/bin/activate && tensorboard --logdir=$logdir --host=localhost --port $free_port" &
sleep 1
echo "sshforward $(hostname -f) ${free_port}"
echo "tensorboard running..."
exit 0
