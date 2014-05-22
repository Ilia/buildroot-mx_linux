###############################################################################
#
## Xbmc simplejson Addon
#
###############################################################################
SIMPLEJSON_VERSION = f99c5d76522eac740b7c4afc212cb377b2d8b2fb
SIMPLEJSON_SOURCE = script.module.simplejson-$(SIMPLEJSON_VERSION).tar.gz
SIMPLEJSON_SITE = https://github.com/XBMC-Addons/script.module.simplejson.git
SIMPLEJSON_SITE_METHOD = git
SIMPLEJSON_INSTALL_STAGING = NO
SIMPLEJSON_INSTALL_TARGET = YES

define SIMPLEJSON_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/script.module.simplejson
        cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/script.module.simplejson/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,simplejson))
