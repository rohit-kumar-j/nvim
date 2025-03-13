# Manually do this the first time
#sudo echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
#sudo echo "fastestmirror=True" >> /etc/dnf/dnf.conf
#sudo echo "defaultyes=True" >> /etc/dnf/dnf.conf


#general
sudo dnf install neovim btop clang clang-tools-extra cmake ripgrep fd-find fzf nodejs-npm zsh golang


#shell
sudo dnf install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#oh-my-posh
mkdir ~/.local/bin
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin

#Plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#Brave
curl -fsS https://dl.brave.com/install.sh | sh

#kitty
mkdir ~/.config/kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
mv ~/.config/nvim/temp/keys_user.config ~/.config/kitty/keys_user.config
mv ~/.config/nvim/temp/prefs_user.config ~/.config/kitty/prefs_user.config

#Sioyek
sudo dnf install qt5-qtbase-devel qt5-qtbase-static qt5-qt3d-devel harfbuzz-devel mesa-libGL-devel glfw-devel
git clone --recursive https://github.com/ahrm/sioyek $HOME/Downloads/sioyek
cd $HOME/Downloads/sioyek
./build_linux.sh
sudo mv build/** /usr/local/bin/
cd
rm -rf $HOME/Downloads/sioyek

#Zig
cd Downloads
mkdir -p zig
cd zig
curl -L https://ziglang.org/download/0.14.0/zig-linux-aarch64-0.14.0.tar.xz > zig.tar.gz
tar -xvf zig.tar.gz
mv zig-linux-aarch64-0.14.0 zig

#nvim config
git clone https://github.com/rohit-kumar-j/nvim.git ~/.config/nvim
mv ~/.config/nvim/tmp/zshrc ~/.zshrc

#Cargo
curl https://sh.rustup.rs -sSf | sh

#lazygit
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit


sudo dnf update
