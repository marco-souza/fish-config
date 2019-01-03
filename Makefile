all: deps apply

deps:
	git submodule update
	sudo pip install virtualfish

apply:
	cp -r ./* ~/.config/fish/
	curl -L https://get.oh-my.fish | fish
	omf install batman