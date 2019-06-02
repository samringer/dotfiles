#! /bin/bash

# Used for moving to the experiment directory that is relevant to the machine

if [[ $(hostname) == 'sergei' ]]; then
    cd $HOME/experiments
else
    echo "Update this script when we can see the codex paths etc"
fi
