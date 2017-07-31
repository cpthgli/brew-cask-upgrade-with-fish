DIR = ${CURDIR}
TARGET = /usr/local/bin

all: brew_cask_update.fish brew_cask_upgrade.fish
	chmod 755 brew_cask_update.fish brew_cask_upgrade.fish

install: brew_cask_update.fish brew_cask_upgrade.fish
	ln -s ${DIR}/brew_cask_update.fish ${TARGET}/brew_cask_update
	ln -s ${DIR}/brew_cask_upgrade.fish ${TARGET}/brew_cask_upgrade
