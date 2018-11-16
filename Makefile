CFLAGS += -std=c11 -Wall -Wextra -pedantic -Werror
PREFIX ?= /data/data/com.linuxdroid/files/usr

linuxdroid-api: linuxdroid-api.c

install: linuxdroid-api
	mkdir -p $(PREFIX)/bin/ $(PREFIX)/libexec/
	install linuxdroid-api $(PREFIX)/libexec/
	install scripts/* $(PREFIX)/bin/

.PHONY: install
