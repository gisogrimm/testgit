all:

latesttag:
	git tag --list --sort=-creatordate
