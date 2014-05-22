###############################################################################
#
## Xbmc radio Addon
#
###############################################################################
RADIO_VERSION = 05910611d9b0e61ef4f44e0542df57340975237d
RADIO_SOURCE = plugin.audio.radio_de-$(RADIO_VERSION).tar.gz
RADIO_SITE = https://github.com/dersphere/plugin.audio.radio_de.git
RADIO_SITE_METHOD = git
RADIO_INSTALL_STAGING = NO
RADIO_INSTALL_TARGET = YES

define RADIO_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/plugin.audio.radio_de
        cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/plugin.audio.radio_de/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,radio))
