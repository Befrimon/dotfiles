from os import system, walk

DOTFILES = ["./.zshrc", "./.p10k.zsh", ".config/alacritty", ".config/nvim", ".config/sway", ".config/swaync", ".config/waybar", ".config/wofi"]
HOME = "/home/gdev"
GIT = "/home/gdev/Projects/dotfiles"


if __name__ == "__main__":
    for file in DOTFILES:
        directory, filename = file.split('/')
        system(f"yes | cp -rfi {HOME}/{directory}/{filename} {GIT}/{directory}")

