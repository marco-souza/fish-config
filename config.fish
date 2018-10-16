# need a way to auto load these
. "$HOME/.config/fish/functions/export.fish"
. "$HOME/.config/fish/functions/aliases.fish"
. "$HOME/.config/fish/functions/utils.fish"

# virtualenv support in fish
set -g VIRTUALFISH_COMPAT_ALIASES
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/virtual.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/compat_aliases.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/environment.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/auto_activation.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/global_requirements.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/projects.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/update_python.fish"

# fenv
set fish_function_path $fish_function_path "$HOME/.config/fish/plugins/plugin-foreign-env/functions"

# Nix
if test -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
      fenv source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
end

# Shell Integration
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
