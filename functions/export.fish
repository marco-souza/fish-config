# Language Default
set -x LC_ALL pt_BR.UTF-8
set -x LC_CTYPE pt_BR.UTF-8

# add homebrew to the beginning of PATH
set -x PATH "/usr/local/bin" $PATH
set -x PATH "/usr/local/sbin" $PATH
set -g VIRTUALFISH_COMPAT_ALIASES yes

# nodejs - [X]
    . "$HOME/.config/fish/functions/node.fish"


# python - [X]
    . "$HOME/.config/fish/functions/virtualfish.fish"


# go - [x]
    . "$HOME/.config/fish/functions/go.fish"

# editor
    set -x EDITOR "vim"

# browser
    set -x BROWSER "/usr/bin/vivaldi-stable"

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