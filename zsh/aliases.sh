#!/bin/zsh
alias getgpu="qlogin -q gpu.q"
alias get980="qlogin -q gpu.q@@980"
alias gettitanx="qlogin -q gpu.q@@titanx"
alias cuda0="export CUDA_VISIBLE_DEVICES=0"
alias cuda1="export CUDA_VISIBLE_DEVICES=1"
alias work="ssh -p 10022 samr@cantab-vm.linkpc.net"
alias qq="qstat -f -u '*' | less "
alias colo="ssh samr@cam2c01.farm.speechmatics.io"
alias venv="source ~/venv/bin/activate"
alias tf="source ~/tf_venv/bin/activate"
alias azure="ssh samr@172.31.101.14"
alias dirvenv="source venv/bin/activate"
export NPS_IP="82.8.135.62"
export MOWBRAY_IP="86.26.38.2"
alias sergeijl="ssh -N -L localhost:8888:localhost:8888 sam@$MOWBRAY_IP"
alias sergei="ssh sam@$MOWBRAY_IP"
alias v="vim"
alias g="git"
alias rl="readlink -f"
alias ns="nvidia-smi"
alias tb="~/git/dotfiles/scripts/local_tensorboard_launch.sh"
alias ltb="~/git/dotfiles/scripts/remote_tensorboard_launch.sh"
alias todo="tmux attach -t TODO"
alias notes="tmux attach -t NOTES"
alias gpp='git push --set-upstream origin $(git_current_branch)'
alias c='cd'
alias dot='cd $HOME/git/dotfiles'
alias hdata="cd /cantab/dev/inbetweeners/hydra"
alias ph="cd ${HOME}/git/hydra/heads/phone_id"
alias sc="cd ${HOME}/git/hydra/heads/speaker_change"
alias vq="cd ${HOME}/git/hydra/body/vqvae"
alias sc="cd ${HOME}/git/hydra/body/vqvae/scripts"
alias phones="cd /home/exp0/exp/inbetweeners/hydra/samr_phone_id_head_best.sh"
alias pe="cd /home/exp0/exp/inbetweeners/hydra/samr_body_pixel_cnn.sh"
alias vqs="cd ${HOME}/git/hydra/body/vqvae/scripts"
alias h="cd ${HOME}/git/hydra"
alias vqe="cd /home/exp0/exp/inbetweeners/hydra/samr_body_vqvae_encshrink.sh"
alias ie="cd /exp/inbetweeners/hydra/samr_body_vqvae_imagenet.sh"
alias lsune="cd /exp/inbetweeners/hydra/samr_body_vqvae_lsun.sh"
alias gpu="ssh cam2aml01.aml.speechmatics.io"
