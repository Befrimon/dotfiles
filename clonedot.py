from os import system

copy_it = [".config", ".zshrc"]
HOME = "/home/gdev"
GIT = "/home/gdev/Projects/dotfiles"

for file in copy_it:
    system(f"yes | cp -rfi {HOME}/{file} {GIT}/")
