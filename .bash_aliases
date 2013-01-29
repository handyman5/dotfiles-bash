###
# Aliases
###
alias ..='cd ..'
alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"
alias freq='cat ~/.bash_history | frequency | sort -rn | head'
alias graydient='yes "$(seq 232 255;seq 254 -1 233)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .01; done'
alias gitfind='find . \! -path "*modules*" -a \! -path "*.git*" -a -type f'
alias less='less -R'
alias ll='ls -la'
alias ls='ls -G'
alias nocomment="sed -e 's/\([^#]*\)#.*$/\1/; /^[[:space:]]*$/d; /^#/d;'"
alias now='date -j +"%s"'
alias untar='tar xvpf'

# git aliases
alias gc='git checkout'
alias gd='git diff -b'
alias gl='git log'
alias gp='git pull'
alias gs='git status'
alias gca='git commit -a'
alias gcam='git commit -a -m'
