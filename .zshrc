if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## My aliases
alias reboot="/sbin/reboot"
alias poweroff="/sbin/poweroff"

alias wlist="nmcli device wifi list"
alias wlcon="nmcli device wifi connect"
alias wldis="nmcli connection down id"

## Execute sway wm on tty1
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec dbus-launch --exit-with-session sway --unsupported-gpu
fi

