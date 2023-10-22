# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Proxy
export ALL_PROXY="http://127.0.0.1:7890"
# host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
# Proxy for WSL
# export ALL_PROXY="http://$host_ip:7890"

# Path
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH" # Homebrew

#Alias
alias clc="clear"
alias doom="~/.config/emacs/bin/doom"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git
        zsh-autosuggestions
        zsh-syntax-highlighting
        z
        sudo)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
