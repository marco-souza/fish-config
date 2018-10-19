alias ..="cd .."
alias ...="cd ../.."
# alias -="cd -"

alias la="ls -Gla"

# List only directories
alias lsd='ls -l | grep "^d"'

alias ll='ls -ahlF'
alias l='ls -CF'

################################
###  File ShortCut
################################
    alias D="cd ~/Downloads"
    # alias d="cd ~/Dropbox"
    # alias p="cd ~/project"
    # alias e="emacsclient -t"
    # alias ec="emacsclient -c"
    # alias sbp="cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/"
    # alias sbu="cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User"
    alias g="git"
    alias v="$EDITOR -v"
    alias $EDITOR="$EDITOR -v"
    alias s="sublime"
    alias ci="code-insiders"

################################
###  Program ShortCut
################################

# git related shortcut
    alias undopush="git push -f origin HEAD^:master"
    alias gcl="git clone"
    alias gd="git diff"
    alias gdc="git diff --cached"
    alias ga="git add"
    alias gca="git commit -a -m"
    alias gcm="git commit -m"
    alias gbd="git branch -D"
    alias gst="git status -sb --ignore-submodules"
    alias gm="git merge --no-ff"
    alias gpt="git push --tags"
    alias gp="git push"
    alias grs="git reset --soft"
    alias grh="git reset --hard"
    alias gb="git branch"
    alias gcob="git checkout -b"
    alias gco="git checkout"
    alias gba="git branch -a"
    alias gcp="git cherry-pick"
    alias gl="git log"
    alias gpom="git pull origin master"
# turn on coloring on grep
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

# Quick check running state of a process
    alias psef="ps -ef | peco "
    alias top="top -o cpu"

# from http://news.ycombinator.com/item?id=4492682
    function tree1; tree --dirsfirst -ChFLQ 1 $argv; end
    function tree2; tree --dirsfirst -ChFLQ 2 $argv; end
    function tree3; tree --dirsfirst -ChFLQ 3 $argv; end
    function tree4; tree --dirsfirst -ChFLQ 4 $argv; end
    function tree5; tree --dirsfirst -ChFLQ 5 $argv; end
    function tree6; tree --dirsfirst -ChFLQ 6 $argv; end

# Package Manager
    alias y="yaourt --noconfirm"
    alias i="yaourt -Sy --noconfirm"
    alias u="yaourt -Syu --aur --noconfirm"
    alias r="yaourt -Rs --noconfirm"

# npm Aliases
    alias ni="npm i -g"
    alias nr="npm r -g"
    alias nu="npm up -g"

# yarn Aliases
    alias js="yarn"
    alias js0="yarn init"
    alias jsi="yarn add"
    alias jsig="yarn add -g"
    alias jsid="yarn add -D"
    alias jsr="yarn remove"

# make aliases
    alias mk="make"

# docker aliases
    alias dk="docker"
    alias dkr="docker run"
    alias dkc="docker-compose"
    alias dkm="docker-machine"
    alias dkps="docker ps"

# utils
    # kill
    function tid
        # conda_env=${1:-workspace}
        ps -ax | grep $argv | grep -v 0:00.00 | awk '{ print $1 }' | uniq
    end
    function ak
        kill -9 (tid $argv)
    end
    # volume
    function vol
        eval "pactl -- set-sink-volume 0 $argv%"
    end
    set -x VOLUME 100
    function tvol
        if test $VOLUME -eq 100
            set -x VOLUME 150
        else
            set -x VOLUME 100
        end
        vol $VOLUME
    end
    # edit
    set -x ALIAS_FILE "$HOME/.config/fish/functions/aliases.fish"
    set -x FISH_CONFIG "$HOME/.config/fish/config.fish"
    function edit_config
        # echo $EDITOR $argv
        eval $EDITOR $argv
        . $argv
    end
    function ealiases
        edit_config $ALIAS_FILE
    end
    function efish
        edit_config $FISH_CONFIG
    end