#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)usr

PATH_DWM_GNOME = $(PREFIX)/bin/dwm-gnome
PATH_DWM_GNOME_DESKTOP = $(PREFIX)/share/applications/dwm-gnome.desktop
PATH_DWM_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/dwm-gnome.session
PATH_DWM_GNOME_XSESSION = $(PREFIX)/share/xsessions/dwm-gnome.desktop
PATH_GNOME_SESSION_DWM = $(PREFIX)/bin/gnome-session-dwm

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/dwm-gnome-xsession.desktop $(PATH_DWM_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/dwm-gnome.desktop $(PATH_DWM_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/dwm-gnome.session $(PATH_DWM_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/dwm-gnome $(PATH_DWM_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-dwm $(PATH_GNOME_SESSION_DWM)



uninstall:
	rm -f $(PATH_DWM_GNOME)
	rm -f $(PATH_DWM_GNOME_DESKTOP)
	rm -f $(PATH_DWM_GNOME_SESSION)
	rm -f $(PATH_DWM_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_DWM)



.PHONY: all install uninstall
