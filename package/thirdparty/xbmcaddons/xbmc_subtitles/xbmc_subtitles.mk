###############################################################################
#
## Xbmc Subtitles Addon
#
###############################################################################
XBMC_SUBTITLES_VERSION = 566e1578c2c0e0ae11e7d280f2b99fdcb0d10c7e
XBMC_SUBTITLES_SOURCE = xbmc_subtitles-$(XBMC_SUBTITLES_VERSION).tar.gz
XBMC_SUBTITLES_SITE = git@github.com:amet/script.xbmc.subtitles.git
XBMC_SUBTITLES_SITE_METHOD = git
XBMC_SUBTITLES_INSTALL_STAGING = NO
XBMC_SUBTITLES_INSTALL_TARGET = YES

define XBMC_SUBTITLES_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/script.xbmc.subtitles
	cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/script.xbmc.subtitles/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,xbmc_subtitles))
