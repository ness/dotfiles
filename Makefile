.PHONY: all bash xorg clean_all

DOTDIR:=$(shell pwd)

all: bash xorg

bash:
	ln -s $(DOTDIR)/bash/bashrc ~/.bashrc
	ln -s $(DOTDIR)/bash/bash_profile ~/.bash_profile

xorg:
	ln -s $(DOTDIR)/Xresources ~/.Xresources
	ln -s $(DOTDIR)/xinitrc ~/.xinitrc

clean_all:
	rm ~/.bashrc ~/.bash_profile
