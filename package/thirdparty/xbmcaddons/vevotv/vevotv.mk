###############################################################################
#
## Xbmc VevoTV Addon
#
###############################################################################
VEVOTV_VERSION = 985f842ff3d6dc8f8f1e47388db949d1d4593d09
VEVOTV_SOURCE = nm-$(VEVOTV_VERSION).tar.gz
VEVOTV_SITE = https://github.com/AddonScriptorDE/plugin.video.vevo_tv.git
VEVOTV_SITE_METHOD = git
VEVOTV_INSTALL_STAGING = NO
VEVOTV_INSTALL_TARGET = YES

define VEVOTV_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/plugin.video.vevo_tv
	cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/plugin.video.vevo_tv/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,vevotv))
