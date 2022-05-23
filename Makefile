HUGO := hugo
PUBLIC_DIR := public/
.DEFAULT_GOAL := build-mac

serve:
	$(HUGO) server

build:
	$(HUGO)

clean-mac:
	rm -fr $(PUBLIC_DIR)

build-mac: clean-mac build
