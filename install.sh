# Install Pacakges
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

sudo curl -sL install-node.now.sh/lts | bash

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# install autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# install vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


####### MAIN #######

# Zsh
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc

# Vim
sudo apt install -y vim

rm -rf ~/.vim
ln -sf ~/.dotfiles/vim ~/.vim
ln -sf ~/.dotfiles/vim/.vimrc ~/.vimrc

source ~/.vimrc
vim +PlugInstall +qall
