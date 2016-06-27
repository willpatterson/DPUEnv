.PHONY deploy pull

SOURCEDIR = './dotfiles/'
DFILES = $(shell find $(SOURCEDIR) -name '*')

deploy:
        for f in $(DFILES); do cp ./dotfiles/$(f) ~/.$(f); done

pull:
        for f in $(DFILES);  do cp ~/.$(f) ./dotfiles; done

