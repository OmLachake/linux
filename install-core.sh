#!/bin/bash

# Install Ghostty Terminal
# https://copr.fedorainfracloud.org/coprs/scottames/ghostty/

sudo dnf copr enable scottames/ghostty 
sudo dnf check-updates
sudo dnf install ghostty -y


# Install VSCode

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc && echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

sudo dnf check-update 
sudo dnf install code git curl -y 
sudo dnf install neovim

# Containerization Tools

sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin kubernetes -y
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

# AI Tools

curl -fsSL https://claude.ai/install.sh | bash

# Other tools
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub md.obsidian.Obsidian -y
