VERSION=1

e.cfg: e.src
	eet -i e.cfg config e.src 0

install: e.cfg
	install -m 0755 -d "$(DESTDIR)"/usr/share/enlightenment/data/config/openSUSE-classic
	install -m 0644 -t "$(DESTDIR)"/usr/share/enlightenment/data/config/openSUSE-classic *.cfg openSUSE17.png profile.desktop
clean:
	rm -rf *~ *.cfg 
