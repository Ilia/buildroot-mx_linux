###############################################################################
#
## Xbmc Chorus Web Interface Addon
#
###############################################################################
CHORUS_VERSION = 94e575ee5eb2bbaa607387a7c94ec1c95fe6d0ec
CHORUS_SOURCE = webinterface.chorus-$(CHORUS_VERSION).tar.gz
CHORUS_SITE = https://github.com/jez500/chorus.git
CHORUS_SITE_METHOD = git
CHORUS_INSTALL_STAGING = NO
CHORUS_INSTALL_TARGET = YES

define CHORUS_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/webinterface.chorus
	cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/webinterface.chorus/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,chorus))
