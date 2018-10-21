# Language Default
set -x LC_ALL pt_BR.UTF-8
set -x LC_CTYPE pt_BR.UTF-8

# add homebrew to the beginning of PATH
set -x PATH "/usr/local/bin" $PATH
#set -x PATH "/usr/local/sbin" $PATH
set -g VIRTUALFISH_COMPAT_ALIASES yes
# set -x PATH "$HOME/bin" $PATH

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
    . "$HOME/.config/fish/functions/node.fish"


# python - [X]
    . "$HOME/.config/fish/functions/virtualfish.fish"


# go - [x]
    . "$HOME/.config/fish/functions/go.fish"

# haskell - [ ]
    # set -x PATH "$HOME/.cabal/bin" $PATH

# flutter - [ ]
    # set -x PATH "$HOME/project/flutter/bin" $PATH

# respect local bins - [ ]
    # set -x PATH "./bin" $PATH

# editor
    set -x EDITOR "vim"

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
