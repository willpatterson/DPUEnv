.PHONY: deploy pull

SOURCEDIR = ./dotfiles
DFILES = $(shell find ./dotfiles -type f -exec basename {} \;)

deploy:
	for f in $(DFILES); do cp $(SOURCEDIR)/$$f ~/.$$f; done

pull:
	for f in $(DFILES); do cp ~/.$$f $(SOURCEDIR); done
