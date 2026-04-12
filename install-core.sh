#!/bin/bash

# Install Ghostty Terminal
# https://copr.fedorainfracloud.org/coprs/scottames/ghostty/

sudo dnf copr enable scottames/ghostty
sudo dnf check-updates
sudo dnf install ghostty


# Install VSCode

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc && echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

sudo dnf check-update 
sudo dnf install code # or code-insiders

