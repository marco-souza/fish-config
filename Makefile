all: deps apply

deps:
	git submodule update
	sudo pip install virtualfish
	curl -L https://get.oh-my.fish | fish

apply:
	cp -r ./* ~/.config/fish/
	omf install batman