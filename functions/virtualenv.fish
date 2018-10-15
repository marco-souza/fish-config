set -x ENVS "$HOME/.virtualenvs/"
function setvirtualenvproject
    if test "$VIRTUAL_ENV" = ""
        echo "No virtualenv activated!"
        return 1
    end
    set project $argv "."
    set fullproject (readlink -e $project[1])
    if test "$fullproject" = ""
        echo "$project[1] does not exist"
        return 1
    end
    echo "Setting virtualenv project home to $fullproject"
    echo "$fullproject" > "$VIRTUAL_ENV/.project"
end
# run virtualfish
eval (python -m virtualfish)

set -x PROJECT_HOME "$HOME/dev"
set -x VIRTUALENVWRAPPER_PYTHON "/usr/bin/python3"

# Config `pip' to bail outside a virtualenv by default, see function gpip
set -x PIP_REQUIRE_VIRTUALENV 1
# Disable `virtualenv' activate script to override prompt
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

