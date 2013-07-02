.PHONY: all bash clean_all

DOTDIR:=$(shell pwd)

all: bash

bash:
	ln -s $(DOTDIR)/bash/bashrc ~/.bashrc
	ln -s $(DOTDIR)/bash/bash_profile ~/.bash_profile

clean_all:
	rm ~/.bashrc ~/.bash_profile
