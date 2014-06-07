###############################################################################
#
## Xbmc VEVO Addon
#
###############################################################################
VEVO_VERSION = 4e9ed3346625f2a2a59750839d0c5d753dd21db9
VEVO_SOURCE = plugin.video.vevo-$(VEVO_VERSION).tar.gz
VEVO_SITE = https://github.com/moneymaker365/plugin.video.vevo.git
VEVO_SITE_METHOD = git
VEVO_INSTALL_STAGING = NO
VEVO_INSTALL_TARGET = YES

define VEVO_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/plugin.video.vevo
	cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/plugin.video.vevo/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,vevo))
