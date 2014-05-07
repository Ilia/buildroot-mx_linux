###############################################################################
#
## Xbmc artistslideshow Addon
#
###############################################################################
ARTISTSLIDESHOW_VERSION = fa278ca2af0294ef8f5e1581b87e5a0c1e1d8174
ARTISTSLIDESHOW_SOURCE = script.artistslideshow-$(ARTISTSLIDESHOW_VERSION).tar.gz
ARTISTSLIDESHOW_SITE = https://github.com/pkscout/script.artistslideshow.git
ARTISTSLIDESHOW_SITE_METHOD = git
ARTISTSLIDESHOW_INSTALL_STAGING = NO
ARTISTSLIDESHOW_INSTALL_TARGET = YES

define ARTISTSLIDESHOW_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/script.artistslideshow
        cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/script.artistslideshow/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,artistslideshow))
