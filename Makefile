
all:
	@echo 'to install type: make install'

install:
	/usr/bin/install -g root -o root -m 0755 distcleaner /usr/bin

uninstall:
	/bin/rm -f /usr/bin/distcleaner
