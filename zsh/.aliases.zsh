alias update='source ~/.zshrc'
alias config='vim ~/.zshrc'
alias al='vim ~/.aliases.zsh'
alias uu='sudo apt update && sudo apt -y upgrade'
alias path="echo $PATH | tr : '\n'"
alias vim=nvim
alias df='df -h'
alias tor=torbrowser-launcher
alias ff=ffsend
alias python=python3
alias ls='ls --color -h --group-directories-first'
alias headon='bluetoothctl connect E0:9D:FA:BA:CE:0B'
alias headoff='bluetoothctl disconnect'
alias night='xrandr --output eDP-1 --brightness 0.3 && shutdown +60'
alias day='xrandr --output eDP-1 --brightness 1'
alias xprop='xprop | grep WM_CLASS'
alias mux=tmuxinator
alias gotop=gotop-brlin
alias ttl="sudo iptables -t mangle -A POSTROUTING -j TTL --ttl-set 65 && echo '-> ttl 65'"
alias dud='du -h -d 1 | sort -hr' 
alias mkdir="mkdir -p"

# copy working directory
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'

# untar
alias untar='tar xvf'

# Pipe my public key to my clipboard.
alias pubkey="cat ~/.ssh/id_rsa.pub | xclip -selection clipboard | echo '-> Public key copied to pasteboard.'"

# SSH kitty
if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

# docker
alias dcu='docker-compose up -d'
alias dcd='docker-compose down'

# ports
alias ports='sudo lsof -i -P -n | grep LISTEN'
