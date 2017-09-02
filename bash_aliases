###
# Aliases
###
alias ..='cd ..'
alias 01-24='jot -w "%02d" 24 1'
alias beep='echo -n '
alias beeps='for x in {1..5}; do sleep 1; beep; done'
alias gitfind='find . \! -path "*modules*" -a \! -path "*.git*" -a -type f'
alias grep='LC_ALL="C" grep'
alias irb='pry'
alias less='less -R'
alias ll='ls -la'
alias ls='ls -G'
alias nocomment="sed -e 's/\([^#]*\)#.*$/\1/; /^[[:space:]]*$/d; /^#/d;'"
alias now='date -j +"%s"'
alias screensaver='open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'
alias top='top -F -R -ocpu'
alias untar='tar xvpf'
alias x509='openssl x509 -text -noout -in'

# git aliases
alias git='EDITOR=vim hub'
alias gc='git checkout'
alias gca='git commit -a'
alias gcam='git commit -a -m'
alias gd='git diff -b --word-diff --color=always'
alias gdl='git diff -b'
alias gl='git log'
alias gp='git pull'
alias gs='git status'
function gr {
  git remote -v | awk '{print $2}' | head -n1
}
alias grp='gr | pbcopy'
alias pr='~/bin/make_pr.sh'

# editor aliases
alias e='~/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t'
alias ew='~/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c --no-wait'
alias emacs='~/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
alias emacsd='~/Applications/Emacs.app/Contents/MacOS/Emacs --daemon'
alias z='zile'
#alias e="~/bin/ec -t -a ~/bin/ess"
#alias e="~/bin/emacsclient -n -a emacs"
#alias e='~/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n -a ~/Applications/Emacs.app/Contents/MacOS/Emacs'
#alias ew='~/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c -nw -a ~/Applications/Emacs.app/Contents/MacOS/Emacs'
#alias e='emacsclient -t'
#alias ew='emacsclient -c --no-wait'
#alias e="/usr/local/bin/emacsclient -nw -a emacs"
#alias emacs='emacs -nw'

# colorization
alias cat='ccat'
alias diff='colordiff'
alias hl='source-highlight -f esc256'
alias hlc='source-highlight -f esc256 -s C'
alias hlr='source-highlight -f esc256 -s ruby'
alias hlp='source-highlight -f esc256 -s python'

# fun stuff
alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"
alias graydient='yes "$(seq 232 255;seq 254 -1 233)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .01; done'
function fortune_quote {
  curl -s http://bash.org/?random1 | \
  grep -oE "<p class=\"quote\">.*</p>.*</p>" | \
  grep -oE "<p class=\"qt.*?</p>" | \
  sed -e 's/<\/p>/\n/g' -e 's/<p class=\"qt\">//g' -e 's/<p class=\"qt\">//g' | \
  perl -ne 'use HTML::Entities;print decode_entities($_),"\n"' | \
  head -1 | \
  sed -e 's/n$//'
}

###
# Keybindings
###
# from http://www.yellowbluebus.com/blog/2009/06/22/make-homeend-key-work-in-solaris-bash/
#bind '"\e[1~": beginning-of-line'
#bind '"\e[3~": delete-char'
#bind '"\e[4~": end-of-line'
#bind '"\e[5~": history-search-backward'
#bind '"\e[6~": history-search-forward'
# Advanced history search with up/down
#bind '"\e[A"':history-search-backward
#bind '"\e[B"':history-search-forward
bind '"\C-[": dynamic-complete-history'
bind '"\C-]": menu-complete'
