.PHONY = all install uninstall doc
VERSION = 0.0.1

all:
	@echo 'to install type: make install'

install:
	/usr/bin/install -g root -o root -m 0755 distcleaner /usr/bin

uninstall:
	/bin/rm -f /usr/bin/distcleaner

doc: distcleaner
	/bin/cp distcleaner tmp/DistfilesCleaner.py
	epydoc --html -o doc/html/ tmp/DistfilesCleaner.py
	/bin/rm tmp/DistfilesCleaner.py
	 
dist:
	rm -f /tmp/distcleaner-$(VERSION).tar.bz2
	(cd ../ ; find  distcleaner -depth -type f|grep -v \/.svn |grep -v bz2$$| sort |  xargs tar cf /tmp/distcleaner-$(VERSION).tar)
	bzip2 -9 /tmp/distcleaner-$(VERSION).tar
	mv /tmp/distcleaner-$(VERSION).tar.bz2 .
