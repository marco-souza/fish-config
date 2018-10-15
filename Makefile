all: apply

deps:
	sudo pip install virtualfish

apply:
	cp -r ./* ~/.config/fish/