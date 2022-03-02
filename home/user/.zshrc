export _JAVA_AWT_WM_NONREPARENTING=1

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

export ZSH="/home/blaked/.oh-my-zsh"

ZSH_THEME="xxf"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
setopt INC_APPEND_HISTORY

plugins=(fast-syntax-highlighting zsh-autosuggestions git zsh-completions bgnotify last-working-dir)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export BROWSER=firefox
export TERMINAL=kitty

PRIV="sudo"

alias p="pwd -P"
alias s="sudo -s"

alias ff='firefox'
alias netprocs="lsof -P -i -n"
alias init.vim="vim ~/.config/nvim/init.vim"
alias dunstrc="vim ~/.config/dunst/dunstrc"
alias polyconf="vim ~/.config/polybar/config"
alias zshrc="vim ~/.zshrc"
alias c="clear"
alias q="exit"
alias pacrem="$PRIV pacman -Rcns"
alias pingoogle="ping 8.8.8.8"
alias nvimsu="$PRIV nvim"
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
