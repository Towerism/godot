THREADS ?= 8
PREFIX ?= /usr/local/stow

.PHONY: all build install
.DEFAULT: build

all: build install

build:
	scons platform=x11 -j $(THREADS)

install:
	chmod a+x ./bin/godot.x11.tools.64
	mkdir -p $(PREFIX)
	cp ./bin/godot.x11.tools.64 $(PREFIX)/godotengine/godot
