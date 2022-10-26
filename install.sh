cd ~
# install base-devel
sudo pacman -Syu base-devel

# install yay
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

# install oh-my-zsh
cd ~
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# TODO: copy config file 

# copy .zshrc to ~/.zshrc
# 
# install nerdfonts
sudo pacman -Syu nerd-fonts-terminus nerd-fonts-noto-sans-mono

# install jq & yq
sudo pacman -Syu jq yq
# install ripgrep
sudo pacman -Syu ripgrep
# install google-chrome
yay google-chrome
# install neovim & make alias(?)
sudo pacman -Syu neovim
# copy nvim config (.config) and plugins (.local/nvim)

# install amazon corretto
yay amazon-corretto-11
# install intelliJ IDEA
yay jetbrains-toolbox

# fix audio
install_pulse

#install pip3
sudo pacman -Syu pip3

# install nvm
# install pritunl from the website
# fix ntp ???
systemctl status systemd-timesyncd
