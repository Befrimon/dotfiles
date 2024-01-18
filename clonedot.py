from os import system, walk

copy_files = [".zshrc"]
copy_dirs = [".config"]
ignore = ["btop", "dconf", "neofetch", "pulse"]
HOME = "/home/gdev"
GIT = "/home/gdev/Projects/dotfiles"

for file in copy_files:
    system(f"yes | cp -rfi {HOME}/{file} {GIT}/")

conf_dir = []
for dir in copy_dirs:
    for _, dirnames, _ in walk(f"{HOME}/{dir}"):
        conf_dir.extend(dirnames)
        break

for dir in conf_dir:
    if dir in ignore:
        continue
    system(f"yes | cp -rfi {HOME}/.config/{dir} {GIT}/.config/")

