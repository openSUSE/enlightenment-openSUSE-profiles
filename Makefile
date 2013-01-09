
SUBDIRS = openSUSE-classic

.PHONY: all

all:
	for subdir in $(SUBDIRS); do make -C $$subdir; done

install: all
	for subdir in $(SUBDIRS); do make -C $$subdir install $$DESTDIR="$(DESTDIR)"; done

clean:
	for subdir in $(SUBDIRS); do make -C $$subdir clean; done

dist-bzip2:
	TIMESTAMP=$$(git log -n 1 --date=short --pretty=format:%ad)
	tar cjf "openSUSE-profiles-$$TIMESTAMP.tar.bz2" --exclude-vcs *

