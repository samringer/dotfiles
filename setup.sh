sudo apt install tmux
sudo apt install vim
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.1
sh ./deploy.sh
