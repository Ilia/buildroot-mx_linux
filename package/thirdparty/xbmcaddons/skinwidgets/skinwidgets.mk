###############################################################################
#
## Xbmc skinwidgets Addon
#
###############################################################################
SKINWIDGETS_VERSION = aa553dd3cdd3492910247850badace906aa97867
SKINWIDGETS_SOURCE = service.skin.widgets-$(SKINWIDGETS_VERSION).tar.gz
SKINWIDGETS_SITE = https://github.com/XBMC-Addons/service.skin.widgets.git
SKINWIDGETS_SITE_METHOD = git
SKINWIDGETS_INSTALL_STAGING = NO
SKINWIDGETS_INSTALL_TARGET = YES

define SKINWIDGETS_INSTALL_TARGET_CMDS
	cp -rf $(@D)/service.skin.widgets $(TARGET_DIR)/usr/share/xbmc/addons/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,skinwidgets))
