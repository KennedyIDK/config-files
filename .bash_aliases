#           $$\ $$\
#           $$ |\__|
#  $$$$$$\  $$ |$$\  $$$$$$\   $$$$$$$\  $$$$$$\   $$$$$$$\
#  \____$$\ $$ |$$ | \____$$\ $$  _____|$$  __$$\ $$  _____|
#  $$$$$$$ |$$ |$$ | $$$$$$$ |\$$$$$$\  $$$$$$$$ |\$$$$$$\
# $$  __$$ |$$ |$$ |$$  __$$ | \____$$\ $$   ____| \____$$\
# \$$$$$$$ |$$ |$$ |\$$$$$$$ |$$$$$$$  |\$$$$$$$\ $$$$$$$  |
#  \_______|\__|\__| \_______|\_______/  \_______|\_______/

# Print Aliases
# -------------
alias ali="bat --style=numbers --paging=never ~/.bash_aliases"

# Bash
# ----
alias eali="nvim ~/.bash_aliases"
alias ebrc="nvim ~/.bashrc"

# Clear
# -----
alias c="clear"
alias q="exit"

# History
# -------
alias h="__fzf_history__"

# DNF
# ---
alias dnfu="sudo dnf update"
alias dnfs="sudo dnf search"
alias dnfi="sudo dnf install"

# LS & LSD
# --------
alias ls="lsd"
alias l="lsd --long"
alias la="lsd --long --all"
alias ll="lsd --long --hyperlink always"
alias lm="lsd --long --all --timesort"
alias lb="lsd --long --all --sizesort"
alias le="lsd --long --all --extensionsort"
alias lt="lsd --long --all --tree"
alias ltd="lsd --long --all --tree --directory-only"

# CD & Zoxide
# -----------
alias zd="cd ~/Downloads"
alias ..="cd .."
alias zp="z -"

# Cat and Batcat
# --------------
alias cat="bat"
alias bat="bat --color=always --style=numbers"

# Color auto
# ----------
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# FZF
# ---
alias fzf='fzf --layout=reverse'
alias fzp='fzf --layout=reverse --preview="bat --color=always --style=numbers --line-range=:500 {}"'
alias fzv='nvim "$(fzf --layout=reverse --preview="bat --color=always --style=numbers --line-range=:500 {}")"'
alias fze='fzf --exact --layout=reverse --preview="bat --color=always --style=numbers --line-range=:500 {}"'
alias fzm='fzf --multi --layout=reverse --preview="bat --color=always --style=numbers --line-range=:500 {}"'

# Neovim
# -------
alias vim="nvim"

# Fastfetch
# ---------
alias ff='fastfetch --logo "$HOME/appdata/fastfetch/ff_spring_terrace.png"'
alias fastfetch='fastfetch --logo "$HOME/appdata/fastfetch/ff_spring_terrace.png"'

# VPN
# ---
alias vpn="nordvpn"
alias vpns="nordvpn status"
alias vpnc="nordvpn c"

# Kitty
# -----
alias icat="kitty +kitten icat"
alias diff="kitty +kitten diff"

# Ranger
# ------
alias r="ranger"

# DUF
# ---
alias duf="duf --only local"
alias dufa="duff"

# CP
# --
alias cp="cp -i"
alias mv="mv -i"
alias mkdir="mkdir -p"
