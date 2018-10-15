# Language Default
set -x LC_ALL pt_BR.UTF-8
set -x LC_CTYPE pt_BR.UTF-8

# add homebrew to the beginning of PATH
set -x PATH "/usr/local/bin" $PATH
set -x PATH "/usr/local/sbin" $PATH
set -x PATH "$HOME/bin" $PATH

# ruby - [ ]
    # # setup rbenv (from https://gist.github.com/2937920)
    # set -x PATH "$HOME/.rbenv/bin" $PATH
    # set -x PATH "$HOME/.rbenv/shims" $PATH
    # # to make Ruby faster http://tmm1.net/ruby21-rgengc/?utm_source=rubyweekly&utm_medium=email
    # set -x  RUBY_GC_HEAP_INIT_SLOTS 600000
    # set -x  RUBY_GC_HEAP_FREE_SLOTS 600000
    # set -x  RUBY_GC_HEAP_GROWTH_FACTOR 1.25
    # set -x  RUBY_GC_HEAP_GROWTH_MAX_SLOTS 300000

# nodejs - [X]
    npm config set prefix '~/.npm-global'
    set -x NPM_GLOBAL "$HOME/.npm-global"
    set -x PATH "$NPM_GLOBAL/bin" $PATH
    # yarn
    set -x PATH $PATH "$HOME/.config/yarn/global/node_modules/.bin"


# python - [X]
    set -x ENVS "$HOME/.virtualenvs/"
    ## Virtualenv Wrapper - Setup
    # set -x VENV_WRAPPER "/usr/bin/virtualenvwrapper.sh"
    # . $VENV_WRAPPER
    set -x PROJECT_HOME "$HOME/dev"
    set -x VIRTUALENVWRAPPER_PYTHON "/usr/bin/python3"
    # run virtualfish
    eval (python -m virtualfish)

    # Config `pip' to bail outside a virtualenv by default, see function gpip
    set -x PIP_REQUIRE_VIRTUALENV 1
    # Disable `virtualenv' activate script to override prompt
    set -x VIRTUAL_ENV_DISABLE_PROMPT 1

# go - [x]
    set -x GOPATH "$HOME/.go"
    set -x PATH "$GOPATH/bin" $PATH
    set -x PATH "/usr/local/opt/go/libexec/bin" $PATH

# haskell - [ ]
    # set -x PATH "$HOME/.cabal/bin" $PATH

# flutter - [ ]
    # set -x PATH "$HOME/project/flutter/bin" $PATH

# respect local bins
    set -x PATH "./bin" $PATH

# editor
    set -x EDITOR "nvim"

# LESS with colors
    # from http://blog.0x1fff.com/2009/11/linux-tip-color-enabled-pager-less.html
    set -x LESS "-RSM~gIsw"

    # Colorful man pages
    # from http://pastie.org/pastes/206041/text
    set -gx LESS_TERMCAP_mb (set_color -o red)
    set -gx LESS_TERMCAP_md (set_color -o red)
    set -gx LESS_TERMCAP_me (set_color normal)
    set -gx LESS_TERMCAP_se (set_color normal)
    set -gx LESS_TERMCAP_so (set_color -b blue -o yellow)
    set -gx LESS_TERMCAP_ue (set_color normal)
    set -gx LESS_TERMCAP_us (set_color -o green)

# grep colors