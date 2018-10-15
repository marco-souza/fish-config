all: deps apply

deps:
	git submodule update
	sudo pip install virtualfish

apply:
	cp -r ./* ~/.config/fish/