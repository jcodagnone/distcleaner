.PHONY = all install uninstall doc

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
	 

