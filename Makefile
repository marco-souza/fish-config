all: deps apply

deps:
	git submodule update
	sudo pip install virtualfish

apply:
	cp -r ./* ~/.config/fish/
	OMF_PATH=$HOME/.local/share/omf
ifeq ("$(wildcard ${OMF_PATH})", "")
	curl -L https://get.oh-my.fish | fish
endif
	fish -c "omf install batman"
	fish -c "omf install https://github.com/jhillyerd/plugin-git"
	fish -c "omf install await"