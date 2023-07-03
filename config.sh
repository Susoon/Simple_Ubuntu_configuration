terminator(){
    echo 'Terminate configuration'
    kill $PPID
    exit 1
}

trap 'terminator' SIGINT

# Update and upgrade images
echo "Do you want to update and upgrade ubuntu? [y/n(default)]"
read choice

if [ "${choice}" == 'y' ]; then
    echo "sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove"
    sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove
else
    echo "Skip the update and upgrade process"
fi

# Install essential applications
echo "sudo apt install build-essential vim curl wget tmux exuberant-ctags cscope snap"
sudo apt install build-essential vim curl wget tmux exuberant-ctags cscope snap

# Install ripgrep
echo "sudo snap install ripgrep --classic"
sudo snap install ripgrep --classic

# Install Vundle
echo "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install vim-plug
echo "curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install fzf for autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Change configurations
echo "cp ./mkcscope.sh ~/"
cp ./mkcscope.sh ~/

echo "cp ./.vimrc ~/"
cp ./.vimrc ~/

echo "cp ./.tmux.conf ~/"
cp ./.tmux.conf ~/

echo "cat ~/.bashrc ./aliases > ./.bashrc && mv ./.bashrc ~/"
cat ~/.bashrc ./aliases > ./.bashrc && mv ./.bashrc ~/

echo "Do you want to set ssh aliases? [y/n(default)]"
read ssh_choice

if [ "${ssh_choice}" == 'y' ]; then
    echo "cat ~/.bashrc ./ssh_aliases > ./.bashrc && mv ./.bashrc ~/"
    cat ~/.bashrc ./ssh_aliases > ./.bashrc && mv ./.bashrc ~/
else
    echo "Skip setup ssh aliases"
fi

source ~/.bashrc

echo "cp ./.ripgreprc ~/"
cp ./.ripgreprc ~/

# Notify vim plugin installation
echo "vim -c PluginInstall -c q -c q"
vim -c PluginInstall -c q -c q

echo "vim -c PlugInstall -c q -c q"
vim -c PlugInstall -c q -c q

source ~/.bashrc

echo "Finished"
