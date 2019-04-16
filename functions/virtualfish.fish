# virtualenv support in fish
set -g VIRTUALFISH_COMPAT_ALIASES
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/virtual.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/compat_aliases.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/environment.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/auto_activation.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/global_requirements.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/projects.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/update_python.fish"

# setup envs paths
set -x ENVS "$HOME/.virtualenvs"
set -x VIRTUALFISH_HOME $ENVS

# setup projects paths
set -x PROJECT_HOME "$HOME/dev"

# setup default python
set -x VIRTUALFISH_DEFAULT_PYTHON "/usr/bin/python3"

# Config `pip' to bail outside a virtualenv by default, see function gpip
set -x PIP_REQUIRE_VIRTUALENV 1
# Disable `virtualenv' activate script to override prompt
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

eval (python -m virtualfish compat_aliases auto_activation global_requirements projects)
