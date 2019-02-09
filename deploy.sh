echo "source $HOME/git/dotfiles/zsh/zshrc.sh" > $HOME/.zshrc
echo "source $HOME/git/dotfiles/vim/vimrc.vim" > $HOME/.vimrc
echo "source $HOME/git/dotfiles/tmux/tmux.conf" > $HOME/.tmux.conf
echo "[include]" > $HOME/.gitconfig
echo "path = $HOME/git/dotfiles/git.config" >> $HOME/.gitconfig
