# Install Pacakges
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install build-essential
sudo apt install gdb
sudo apt install vim
sudo apt install zsh
sudo apt install ripgrep
sudo apt install ccls

sudo curl -sL install-node.now.sh/lts | sudo bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# install autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# install vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# install pwndbg
git clone https://github.com/pwndbg/pwndbg ~/.pwndbg
~/.pwndbg/setup.sh
git clone https://github.com/jerdna-regeiz/splitmind ~/.splitmind
source ~/.splitmind/gdbinit.py

####### MAIN #######

# GDB
cp ~/.dotfiles/gdb/.gdbinit ~/.gdbinit

# Zsh
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc

# Vim
sudo apt install -y vim

rm -rf ~/.vim
ln -sf ~/.dotfiles/vim ~/.vim
ln -sf ~/.dotfiles/vim/.vimrc ~/.vimrc

vim +PlugInstall +qall

# NVim
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
ln -sf ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim

# Tmux
rm -rf ~/.tmux
ln -sf ~/.dotfiles/tmux ~/.tmux
ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

tmux start-server
tmux new-session -d
tmux source ~/.tmux.conf
tmux kill-server

