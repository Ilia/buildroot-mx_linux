###############################################################################
#
## Xbmc fanart Addon
#
###############################################################################
FANART_VERSION = master
FANART_SITE = https://github.com/Ilia/service.skin.fanart.git
FANART_SITE_METHOD = git
FANART_INSTALL_STAGING = NO
FANART_INSTALL_TARGET = YES

define FANART_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/service.skin.fanart
        cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/service.skin.fanart/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,fanart))
