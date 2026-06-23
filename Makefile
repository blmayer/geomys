.PHONY: install uninstall

PREFIX ?= ~/.local
BINDIR?=$(PREFIX)/bin
DOCDIR?=$(PREFIX)/share/doc/geomys
MANDIR?=$(PREFIX)/share/man/man1
LICENSEDIR?=$(PREFIX)/share/doc/geomys

install:
	mkdir -p $(BINDIR) $(DOCDIR) $(LICENSEDIR) $(MANDIR)
	install -m +rx geomys $(BINDIR)/
	install -m +r README.md CONTRIBUTING.md $(DOCDIR)/
	install -m +r LICENSE $(LICENSEDIR)/
	install -m +r geomys.en.1 $(MANDIR)/geomys.1

uninstall:
	rm $(BINDIR)/geomys
	rm -rf $(DOCDIR)
	rm -rf $(LICENSEDIR)
	rm -f $(MANDIR)/geomys.1
