
install:
	chmod 755 ./brew_cask_update.fish
	chmod 755 ./brew_cask_upgrade.fish
	ln -s "$(CURDIR)/brew_cask_update.fish" /usr/local/bin/brew_cask_update
	ln -s "$(CURDIR)/brew_cask_upgrade.fish" /usr/local/bin/brew_cask_upgrade
