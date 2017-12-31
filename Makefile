.PHONY: all dotfiles

all: dotfiles

dotfiles:
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".git" -not -name ".gnupg"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done; \
	ln -sfn $(CURDIR)/i3 $(HOME)/.config/i3
	ln -sfn $(CURDIR)/polybar $(HOME)/.config/polybar
	ln -sfn $(CURDIR)/.gnupg/gpg.conf $(HOME)/.gnupg/gpg.conf
	ln -sfn $(CURDIR)/star_wars_ahsoka_by_wojtekfus.png $(HOME)/lockscreen.png
	ln -sfn $(CURDIR)/star_wars_peacekeeper_obi_wan_kenobi_by_thetechromancer.png $(HOME)/background.png
