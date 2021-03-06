###############################################################################
#
##  service.boxik.firmware Addon
#
###############################################################################
BOXIK_SERVICE_VERSION = fb32387ab9710b813def668fc1dcf2055ef011c1
BOXIK_SERVICE_SITE = https://github.com/Ilia/service.boxik.firmware.git
BOXIK_SERVICE_SITE_METHOD = git
BOXIK_SERVICE_INSTALL_STAGING = NO
BOXIK_SERVICE_INSTALL_TARGET = YES

define BOXIK_SERVICE_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/service.boxik.firmware
	cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/service.boxik.firmware/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,boxik_service))
