all:

CURRENTRELEASE:=$(shell git tag --list --sort=-creatordate | grep -e '^v' | head -1)

ver:
	@echo $(CURRENTRELEASE)

changes:
	git log --format="- %s" $(CURRENTRELEASE)..HEAD > changes.txt

OSNAME := $(shell uname -s)

showos:
	echo $(OSNAME)
