alias ll='ls -alFh'
alias ls='ls --color=always -FCX'
alias la='ls -la'
alias grep="grep --color"
#make dir and cd into it
mcd(){ mkdir -p "$1"; cd "$1";}
#cd into dir and list content
cls(){ cd "$1"; ls;}
#http://xmodulo.com/useful-bash-aliases-functions.html
alias c="clear"
alias ..='cd ..'
alias ...='cd ../..'

#sort files by size
sbs(){ du -b --max-depth 1 | sort -nr | perl -pe 's{([0-9]+)}{sprintf "%.1f%s", $1>=2**30? ($1/2**30, "G"): $1>=2**20? ($1/2**20, "M"): $1>=2**10? ($1/2**10, "K"): ($1, "")}e';}

#show memory information
alias meminfo='free -m -l -t'

#search for prcess
alias ps?="ps aux | grep"

#show listen ports with processes
alias listen="lsof -P -i -n"

#get public ip address
alias ipinfo="curl ipecho.net/plain"
alias ipinfo2="curl ifconfig.me"

alias rd="python rdcli.py"

#PS1='\n\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\w(\u@\h)\nλ '
#PS1='\n\e[0;33m\]\u\[\e[0m\]\e[0;32m\]@\[\e[0m\]\e[0;31m\]\h\[\e[0m\]: \e[0;36m\]\w\[\e[0m\]\a${debian_chroot:+($debian_chroot)}\n\e[0;35m\]λ\[\e[0m\] '
PS1="\[\e[00;33m\]\n\[\e[0m\]\[\e[00;33m\]\u\[\e[0m\]\[\e[00;32m\]@\[\e[0m\]\[\e[00;31m\]\h\[\e[0m\]\[\e[00;32m\]: \[\e[0m\]\[\e[00;36m\]\w\[\e[0m\]\[\e[00;33m\]\n\[\e[0m\]\[\e[00;35m\]λ \[\e[0m\]"
