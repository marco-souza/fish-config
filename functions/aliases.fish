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
    alias u="yaourt -Syu --aur --noconfirm; and npm i -g npm yarn"
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
# vscodium aliases
    alias code="vscodium"
    alias codei="vscodium --install-extension"
    alias coder="vscodium --uninstall-extension"

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
        function v+
            vol +10
        end

        function v-
            vol -10
        end

        function tvol
            if test $VOLUME -eq 100
                set -x VOLUME 150
            else
                set -x VOLUME 100
            end
            vol $VOLUME
        end

    # system utils
        function dir_name
            echo (basename $PWD)
        end

        function dd
            /usr/bin/dd $argv & await "building disk..."
        end