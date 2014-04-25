###############################################################################
#
## Xbmc NetworkManager Addon
#
###############################################################################
NM_VERSION = 1883d2fc9f9823a7816ae2def15b3551a8c02fd0
NM_SOURCE=nm-$(NM_VERSION).tar.gz
NM_SITE = https://github.com/Ilia/script.mxlinux.wifimanager.git
NM_SITE_METHOD = git
NM_INSTALL_STAGING = NO
NM_INSTALL_TARGET = YES

define NM_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/script.linux.nm
	cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/script.linux.nm/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,nm))
