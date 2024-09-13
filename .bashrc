#     █████                       █████
#    ░░███                       ░░███
#     ░███████   ██████    █████  ░███████   ████████   ██████
#     ░███░░███ ░░░░░███  ███░░   ░███░░███ ░░███░░███ ███░░███
#     ░███ ░███  ███████ ░░█████  ░███ ░███  ░███ ░░░ ░███ ░░░
#     ░███ ░███ ███░░███  ░░░░███ ░███ ░███  ░███     ░███  ███
#  ██ ████████ ░░████████ ██████  ████ █████ █████    ░░██████
# ░░ ░░░░░░░░   ░░░░░░░░ ░░░░░░  ░░░░ ░░░░░ ░░░░░      ░░░░░░

## If not running interactively, don't do anything.

case $- in
*i*) ;;
*) return ;;
esac

## History

HISTCONTROL=ignoreboth
HISTFILE="$HOME/.bash_history"
HISTSIZE=10000
HISTFILESIZE=100000
export HISTTIMEFORMAT="%Y-%m-%d (%H:%M)"
shopt -s histappend

## Ensure ~/bin and ~/.local/bin are in PATH.

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

## Use custom file colours.

if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)"
else
  eval "$(dircolors -b)"
fi

## Use custom aliases.

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Laptop aliases.

if [ "$(hostname)" = "spring-terrace" ]; then
  alias bakcloud="laptop_bakcloud"
  alias bakhome="laptop_bakhome"
fi

## Auto Complete

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

## Update window size after command.

shopt -s checkwinsize

## "**" will match all files and zero or more directories and subdirectories.

shopt -s globstar

## Enable lesspipe for non-text files.

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

## Coloured GCC warnings and errors.

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

## Display custom header in terminal.

terminal_header

## Prompt

PS1='\[\e[1m\]\u\[\e[3m\]@\h\[\e[0m\] [\j][\[\e[1m\]\!\[\e[0m\]] 📁 \w\n\$ '

## Initialize fzf

eval "$(fzf --bash)"

## Initialize Oh My Posh

eval "$(oh-my-posh init bash --config ~/appdata/ohmyposh/idk-hul10.omp.json)"

## Initialize Zoxide

eval "$(zoxide init bash)"

## Change theme for bat.

export BAT_THEME="1337" # bat theme

## Enable custom ranger config.

export RANGER_LOAD_DEFAULT_RC=FALSE

# Add Flatpaks

export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:/home/iain/.local/share/flatpak/exports/share

# End
