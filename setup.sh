home="$(getent passwd $SUDO_USER | cut -d: -f6)"
# install vim plug
curl -fLo $home/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir $home/.vim/plugged
cp -v "$1/.vimrc" $home

# install zsh
cp -v "$1/.zshrc" $home
apt-get install zsh
sudo -u $SUDO_USER chsh -s /bin/zsh
# install oh-my-zsh
sudo -u $SUDO_USER sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended --keep-zshrc"
# install powerlevel10k
cp -v "$1/.p10k.zsh" $home
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$home/.oh-my-zsh/custom}/themes/powerlevel10k
# install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$home/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$home/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-$home/.oh-my-zsh}/custom}/plugins/zsh-completions


