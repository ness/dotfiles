.PHONY: all bash xorg clean_all ctags ctags_clean

DOTDIR:=$(shell pwd)
LN_OPTS:=-i

all: bash xorg tmux

clean_all: clean_bash

bash:
	ln -s $(LN_OPTS) $(DOTDIR)/bash/bashrc ~/.bashrc
	ln -s $(LN_OPTS) $(DOTDIR)/bash/bash_profile ~/.bash_profile

clean_bash:
	rm ~/.bashrc
	rm ~/.bash_profile

xorg:
	ln -s $(LN_OPTS) $(DOTDIR)/Xresources ~/.Xresources
	ln -s $(LN_OPTS) $(DOTDIR)/Xresources.d ~/.Xresources.d
	ln -s $(LN_OPTS) $(DOTDIR)/xinitrc ~/.xinitrc

clean_xorg:
	rm ~/.Xresources
	rm ~/.xinitrc

tmux:
	ln -s  $(LN_OPTS) $(DOTDIR)/tmux.conf ~/.tmux.conf

clean_tmux:
	rm ~/.tmux.conf

ctags:
	ln -s $(LN_OPTS) $(DOTDIR)/ctags ~/.ctags

ctags_clean:
	rm ~/.ctags

isort:
	ln -s $(LN_OPTS) $(DOTDIR)/isort ~/.isort.cfg

isort_clean:
	rm ~/.isort.cfg

