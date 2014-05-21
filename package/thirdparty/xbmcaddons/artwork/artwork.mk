###############################################################################
#
## Xbmc Artwork Addon
#
###############################################################################
ARTWORK_VERSION = e93b0e996e8003a55a199ae27f28ca027c3e1d4e
ARTWORK_SOURCE = xbmc-script.artwork.downloader-$(ARTWORK_VERSION).tar.gz
ARTWORK_SITE = https://github.com/XBMC-Addons/script.artwork.downloader.git
ARTWORK_SITE_METHOD = git
ARTWORK_INSTALL_STAGING = NO
ARTWORK_INSTALL_TARGET = YES

define ARTWORK_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/script.artwork.downloader
        cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/script.artwork.downloader/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,artwork))
