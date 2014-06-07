###############################################################################
#
## Xbmc Help Addon
#
###############################################################################
HELP_VERSION = b9786fbefe2001cbfd0770a03fca348aaa3976d7
HELP_SITE = https://github.com/Ilia/plugin.video.boxik.channel.git
HELP_SITE_METHOD = git
HELP_INSTALL_STAGING = NO
HELP_INSTALL_TARGET = YES

define HELP_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/plugin.video.boxik.channel
        cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/plugin.video.boxik.channel/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,help))
