###############################################################################
#
## Xbmc script.cinema.experience Addon
#
###############################################################################
CINEX_VERSION = 4.0.10
CINEX_SOURCE = script.cinema.experience-$(CINEX_VERSION).zip
CINEX_SITE = http://mirrors.xbmc.org/addons/gotham/script.cinema.experience/
CINEX_INSTALL_STAGING = NO
CINEX_INSTALL_TARGET = YES

define CINEX_EXTRACT_CMDS
	unzip $(DL_DIR)/$(CINEX_SOURCE) -d $(@D)
endef

define CINEX_INSTALL_TARGET_CMDS
	cp -rf $(@D)/script.cinema.experience $(TARGET_DIR)/usr/share/xbmc/addons/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,cinex))
