DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-img2tar
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-img2tar
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/img2tar  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
