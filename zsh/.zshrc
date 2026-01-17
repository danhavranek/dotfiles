# Navigation
setopt auto_cd

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

# Git
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gba='git branch --all'
alias gc='git commit --verbose'
alias gco='git checkout'
alias gsw='git switch'
alias gswc='git switch --create'
alias gd='git diff'
alias gf='git fetch'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias gm='git merge'
alias gl='git pull'
alias gp='git push'
alias gst='git status'
alias gss='git status --short'


# Use vim keys in tab complete menu
autoload -Uz compinit
compinit
zmodload zsh/complist

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# vi mode
bindkey -v
bindkey -v '^?' backward-delete-char
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Yazi
# quit into active directory
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# LSD aliases
alias l="lsd --group-directories-first"
alias ll="lsd -la --group-directories-first"
alias ld="lsd -ld */"

# phpbrew
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Python version manager
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Composer global
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Open markdown in MarkText from CLI
alias marktext="/Applications/MarkText.app/Contents/MacOS/MarkText"

# Node version manager

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load zsh-syntax-highlighting; should be last
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ============================================
# Starship (have to be at the end of this file)
eval "$(starship init zsh)"

# If you want to use Homebrew as a different user, uncomment the following alias
# and replace [brew_user] with the user that installed brew on this system.
# See https://www.codejam.info/2021/11/homebrew-multi-user.html for expanation.
# alias brew='sudo -Hu [brew_user] brew'

