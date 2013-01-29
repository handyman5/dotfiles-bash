###
# Aliases
###
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"
alias freq='cat ~/.bash_history | frequency | sort -rn | head'
alias gitfind='find . \! -path "*modules*" -a \! -path "*.git*" -a -type f'
alias graydient='yes "$(seq 232 255;seq 254 -1 233)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .01; done'
alias less='less -R'
alias ll='ls -la'
alias ls='ls -G'
alias lss='ls -larSh'
alias lt='ls -lhtr'
alias nocomment="sed -e 's/\([^#]*\)#.*$/\1/; /^[[:space:]]*$/d; /^#/d;'"
alias now='date -j +"%s"'
alias ranbash="links http://www.bash.org/?random1"
alias top5="ps -eo pcpu,user,pid,cmd | sort -r | head -6"
alias untar='tar xvpf'

alias px="pushd -0"
alias nx="pushd +1"

# git aliases
alias gc='git checkout'
alias gd='git diff -b'
alias gl='git log'
alias gp='git pull'
alias gs='git status'
alias gca='git commit -a'
alias gcam='git commit -a -m'
