VERSION=2

SUBDIR_CLASSIC = openSUSE-classic
SUBDIR_DOCK = openSUSE-dock


e.cfg: $(SUBDIR_CLASSIC)/e.src $(SUBDIR_CLASSIC)/module.clock.src $(SUBDIR_CLASSIC)/module.fileman.src $(SUBDIR_CLASSIC)/module.ibar.src $(SUBDIR_CLASSIC)/module.pager.src $(SUBDIR_CLASSIC)/module.packagekit.src $(SUBDIR_DOCK)/e.src $(SUBDIR_DOCK)/module.clock.src $(SUBDIR_DOCK)/module.fileman.src $(SUBDIR_DOCK)/module.ibar.src $(SUBDIR_DOCK)/module.pager.src $(SUBDIR_DOCK)/module.packagekit.src
	eet -e "$(SUBDIR_CLASSIC)"/e.cfg 		config 	"$(SUBDIR_CLASSIC)"/e.src 1
	eet -e "$(SUBDIR_CLASSIC)"/e_bindings.cfg 	config "$(SUBDIR_CLASSIC)"/e_bindings.src 1
	eet -e "$(SUBDIR_CLASSIC)"/module.clock.cfg 	config "$(SUBDIR_CLASSIC)"/module.clock.src 1
	eet -e "$(SUBDIR_CLASSIC)"/module.fileman.cfg 	config "$(SUBDIR_CLASSIC)"/module.fileman.src 1
	eet -e "$(SUBDIR_CLASSIC)"/module.ibar.cfg 	config "$(SUBDIR_CLASSIC)"/module.ibar.src 1
	eet -e "$(SUBDIR_CLASSIC)"/module.pager.cfg 	config "$(SUBDIR_CLASSIC)"/module.pager.src 1
	eet -e "$(SUBDIR_CLASSIC)"/module.packagekit.cfg config "$(SUBDIR_CLASSIC)"/module.packagekit.src 1

	eet -e "$(SUBDIR_DOCK)"/e.cfg 			config "$(SUBDIR_DOCK)"/e.src 1
	eet -e "$(SUBDIR_DOCK)"/e_bindings.cfg 		config "$(SUBDIR_DOCK)"/e_bindings.src 1
	eet -e "$(SUBDIR_DOCK)"/module.clock.cfg 	config "$(SUBDIR_DOCK)"/module.clock.src 1
	eet -e "$(SUBDIR_DOCK)"/module.fileman.cfg 	config "$(SUBDIR_DOCK)"/module.fileman.src 1
	eet -e "$(SUBDIR_DOCK)"/module.ibar.cfg 	config "$(SUBDIR_DOCK)"/module.ibar.src 1
	eet -e "$(SUBDIR_DOCK)"/module.pager.cfg 	config "$(SUBDIR_DOCK)"/module.pager.src 1
	eet -e "$(SUBDIR_DOCK)"/module.packagekit.cfg 	config "$(SUBDIR_DOCK)"/module.packagekit.src 1


install: e.cfg
	install -m 0755 -d "$(DESTDIR)"/usr/share/enlightenment/data/config/openSUSE-classic
	install -m 0644 -t "$(DESTDIR)"/usr/share/enlightenment/data/config/openSUSE-classic "$(SUBDIR_CLASSIC)"/*.cfg "$(SUBDIR_CLASSIC)"/openSUSE-Enlightenment.png "$(SUBDIR_CLASSIC)"/profile.desktop	
	install -m 0755 -d "$(DESTDIR)"/usr/share/enlightenment/data/config/openSUSE-dock
	install -m 0644 -t "$(DESTDIR)"/usr/share/enlightenment/data/config/openSUSE-dock "$(SUBDIR_DOCK)"/*.cfg "$(SUBDIR_DOCK)"/openSUSE-Enlightenment.png "$(SUBDIR_DOCK)"/profile.desktop

	
clean:
	rm -f */*.cfg