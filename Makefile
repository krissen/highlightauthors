SHELL := /bin/sh
TEXMFHOME ?= $(HOME)/Library/texmf

.PHONY: check save install clean

check:
	l3build check

# TEST=<name> make save
save:
	l3build save -e luatex $(TEST)

install:
	l3build install --texmfhome "$(TEXMFHOME)"

clean:
	l3build clean
