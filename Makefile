all: deps apply

deps:
	# Install omf
	OMF_PATH=$HOME/.local/share/omf
ifeq ("$(wildcard ${OMF_PATH})", "")
	curl -L https://get.oh-my.fish | fish
endif

	# install omf packages
	fish -c "omf install foreign-env"
	fish -c "omf install virtualfish"
	fish -c "omf install docker"
	fish -c "omf install node"
	fish -c "omf install https://github.com/jhillyerd/plugin-git"
	fish -c "omf install await"

apply:
	cp -r ./* ~/.config/fish/
	fish
