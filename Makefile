 
V=1.0.0

PREFIX = /usr/local

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 namib{.gpg,-trusted,-revoked} $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/namib{.gpg,-trusted,-revoked}
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

