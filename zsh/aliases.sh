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
alias gpu2="ssh cam2aml02.aml.speechmatics.io"
alias aue="cd /cantab/dev/inbetweeners/hydra/samr_body_improved_architecture.sh"
alias bse="cd /cantab/dev/inbetweeners/hydra/samr_body_batch_size_vs_window_size.sh"
alias sce="cd /cantab/dev/inbetweeners/hydra/samr_body_architecture_scaling.sh"
alias au="cd /home/samr/git/hydra/body/research/hqa_audio"
alias aus="cd /home/samr/git/hydra/body/research/hqa_audio/scripts"
alias l1e="cd /cantab/dev/inbetweeners/hydra/samr_body_l1_iterate.sh"
alias lsm="cd /home/samr/git/hydra/body/research/lsm"
alias lsms="cd /home/samr/git/hydra/body/research/lsm/scripts"
alias 44ef="cd /cantab/dev/inbetweeners/hydra/samr_body_exp44khz_full_stack.sh_s1"
alias him="cd /home/samr/git/hydra/body/research/hqa"
alias bfe="cd /cantab/dev/inbetweeners/hydra/samr_body_44khz_bugfix_l2_l3.sh_s1"
alias hqa="cd /home/samr/git/hydra/body/research/hqa"
alias celebe="cd /cantab/dev/inbetweeners/hydra/samr_body_CelebA_fixed_full_stack.sh_s2"
alias commite="cd /cantab/dev/inbetweeners/hydra/samr_body_upweight_commit_loss.sh_s1"
alias 16e="cd /cantab/dev/inbetweeners/hydra/samr_body_16khz_full_stack_new_commitment_loss.sh_s1"
alias bige="cd /cantab/dev/inbetweeners/hydra/samr_body_16khz_full_stack_big_boi.sh_s1"
alias 16debug="cd /cantab/dev/inbetweeners/hydra/samr_body_16khz_debug.sh_s1"
alias cm="cd /home/samr/git/hydra/body/research/compress_predict"
alias cms="cd /home/samr/git/hydra/body/research/compress_predict/scripts"
alias cme="cd /cantab/dev/inbetweeners/hydra/samr_body_compress_predict_arch_sweep.sh_s1"
alias 44e="cd /cantab/dev/inbetweeners/hydra/samr_body_44khz_exp_decay_temp.sh_s1"
alias apc="cd /home/samr/git/hydra/body/research/apc"
alias lsme="cd /cantab/dev/inbetweeners/hydra/samr_body_lsm_hqa_full_stack.sh"
