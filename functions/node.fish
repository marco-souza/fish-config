npm config set prefix '~/.npm-global'
set -x NPM_GLOBAL "$HOME/.npm-global"
set -x PATH "$NPM_GLOBAL/bin" $PATH
# yarn
# set -x PATH $PATH "$HOME/.config/yarn/global/node_modules/.bin"