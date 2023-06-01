cd ~
# install some packages
sudo pacman -Syu base-devel nerd-fonts-terminus nerd-fonts-noto-sans-mono noto-fonts-cjk noto-fonts-emoji jq yq ttf-fira-code firefox ripgrep neovim pip3

# install yay
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

# install oh-my-zsh
cd ~
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# TODO: copy config file 

# copy .zshrc to ~/.zshrc

# install google-chrome
yay google-chrome amazon-corretto-11 jetbrains-toolbox

# fix audio
install_pulse

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

# install pritunl from the website
sudo tee -a /etc/pacman.conf << EOF
[pritunl]
Server = https://repo.pritunl.com/stable/pacman
EOF

sudo pacman-key --keyserver hkp://keyserver.ubuntu.com -r 7568D9BB55FF9E5287D586017AE645C0CF8E292A
sudo pacman-key --lsign-key 7568D9BB55FF9E5287D586017AE645C0CF8E292A
sudo pacman -Sy
sudo pacman -S pritunl-client-electron

# fix ntp ???
systemctl status systemd-timesyncd

# TODO: install aws
# TODO: install kubectl
# TODO: copy nvim config (.config) and plugins (.local/nvim)
