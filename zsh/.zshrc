# Path to your oh-my-zsh installation.
ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"

# Delete old recorded entry if new entry is a duplicate
setopt hist_ignore_all_dups

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting autojump zsh-vi-mode poetry)

# Environment variables set everywhere
export VISUAL=nvim;
export EDITOR=nvim;
export PSQL_EDITOR=/usr/local/bin/nvim
export PATH="$HOME/bin:$PATH" 

# Oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Remap caps to escape
setxkbmap -option caps:escape
setxkbmap "us,ru" ",winkeys" "grp:ctrl_shift_toggle"

#Disable touchpad
synclient TouchpadOff=1

# Remove percent sign for same-line outputs
unsetopt PROMPT_SP

# Autoload vcs and colors
autoload -Uz vcs_info
autoload -U colors && colors

# Enable only git
zstyle ':vcs_info:*' enable git

# Setup a hook that runs before every ptompt.
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# add a function to check for untracked files in the directory.
# from https://github.com/zsh-users/zsh/blob/master/Misc/vcs_info-examples
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
#
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        # This will show the marker if there are any untracked files in repo.
        # If instead you want to show the marker only if there are untracked
        # files in $PWD, use:
        #[[ -n $(git ls-files --others --exclude-standard) ]] ; then
        hook_com[staged]+='!' # signify new files with a bang
    fi
}

zstyle ':vcs_info:*' check-for-changes true
# zstyle ':vcs_info:git:*' formats " %r/%S %b %m%u%c "
zstyle ':vcs_info:git:*' formats " %{$fg[blue]%}(%{$fg[red]%}%m%u%c%{$fg[magenta]%}%{$fg[magenta]%} %b%{$fg[blue]%})"

# format our main prompt for hostname current folder, and permissions.
PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$fg[cyan]%}%c%{$reset_color%}"
# PROMPT="%{$fg[green]%}%n@%m %~ %{$reset_color%}%#> "
PROMPT+="\$vcs_info_msg_0_ "

# Disable underline 
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Key-bindings
function zvm_after_init() {
  zvm_bindkey viins '^j' end-of-line
  zvm_bindkey viins '^H' backward-kill-word
}

# fh - repeat history
h() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac --height "50%" | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}

# Aliases
if [ -f ~/.aliases  ]; then
    . ~/.aliases
fi

# This speeds up pasting w/ autosuggest
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# Poetry
export PATH="$HOME/.poetry/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv" 
export PATH="$PYENV_ROOT/bin:$PATH" 
eval "$(pyenv init --path)" 
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/home/rnd/yandex-cloud/path.bash.inc' ]; then source '/home/rnd/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/home/rnd/yandex-cloud/completion.zsh.inc' ]; then source '/home/rnd/yandex-cloud/completion.zsh.inc'; fi


