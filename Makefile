HUGO ?= hugo
PUBLIC_DIR ?= public/
RM ?= rm -rf
DEV_FLAGS ?= -D -F --navigateToChanged --disableFastRender --noHTTPCache --enableGitInfo --bind 0.0.0.0 -p 1313
.DEFAULT_GOAL := build-mac
.PHONY: server server-dev build clean build-mac

server:
	$(HUGO) server

server-dev:
	$(HUGO) server $(DEV_FLAGS)

build:
	$(HUGO)

clean:
	$(RM) $(PUBLIC_DIR)

build-mac: clean build
