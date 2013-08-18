VERSION=1

e.cfg: e.src module.clock.src module.fileman.src module.ibar.src module.pager.src
	eet -e e.cfg config e.src 1
	eet -e module.clock.cfg config module.clock.src 1
	eet -e module.fileman.cfg config module.fileman.src 1
	eet -e module.ibar.cfg config module.ibar.src 1
	eet -e module.pager.cfg config module.pager.src 1	

install: e.cfg
	install -m 0755 -d "$(DESTDIR)"/usr/share/enlightenment/data/config/openSUSE-classic
	install -m 0644 -t "$(DESTDIR)"/usr/share/enlightenment/data/config/openSUSE-classic *.cfg openSUSE17.png profile.desktop
	
clean:
	rm -f *.cfg