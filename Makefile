.PHONY: all build install
.DEFAULT: build

all: build install

build:
	scons platform=x11

install:
	chmod a+x ./bin/godot.x11.tools.64
	ln -srf "bin/godot.x11.tools.64" /bin/godot
	ln -srf "./godot_icon.png" /usr/share/pixmaps/godot.png
