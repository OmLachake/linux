#!/bin/bash


sudo dnf install zsh -y
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo usermod -s $(which zsh) $USER
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc && source ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Install Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Install MesloLGS NF fonts
mkdir -p ~/.local/share/fonts
curl -fLo ~/.local/share/fonts/"MesloLGS NF Regular.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
curl -fLo ~/.local/share/fonts/"MesloLGS NF Bold.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
curl -fLo ~/.local/share/fonts/"MesloLGS NF Italic.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
curl -fLo ~/.local/share/fonts/"MesloLGS NF Bold Italic.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
fc-cache -fv

# Set font in Ghostty config
mkdir -p ~/.config/ghostty
echo "font-family = MesloLGS NF" >> ~/.config/ghostty/config.ghostty

# Link custom zshrc
ln -sf "$(cd "$(dirname "$0")" && pwd)/.zshrc" ~/.zshrc
