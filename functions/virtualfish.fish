# setup envs paths
set -x ENVS "$HOME/.virtualenvs/"
set -x VIRTUALFISH_HOME $ENVS

# setup projects paths
set -x PROJECT_HOME "$HOME/dev"
set -x VIRTUALFISH_HOME $PROJECT_HOME

# setup default python
set -x VIRTUALFISH_DEFAULT_PYTHON "/usr/bin/python3"

# Config `pip' to bail outside a virtualenv by default, see function gpip
set -x PIP_REQUIRE_VIRTUALENV 1
# Disable `virtualenv' activate script to override prompt
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

# eval (python -m virtualfish compat_aliases auto_activation global_requirements projects)
