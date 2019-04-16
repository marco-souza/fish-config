all: deps apply

deps:
	git submodule update
	sudo pip install virtualfish

apply:
	cp -r ./* ~/.config/fish/
	# install oh my fish
	curl -L https://get.oh-my.fish | fish
	omf install batman
	omf install https://github.com/jhillyerd/plugin-git