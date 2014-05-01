###############################################################################
#
##  service.boxik.firmware Addon
#
###############################################################################
BOXIK_SERVICE_VERSION = be3fbc141985e4eca9532c2453db35d148476170
BOXIK_SERVICE_SOURCE=boxik_service-$(BOXIK_SERVICE_VERSION).tar.gz
BOXIK_SERVICE_SITE = https://github.com/Ilia/service.boxik.firmware.git
BOXIK_SERVICE_SITE_METHOD = git
BOXIK_SERVICE_INSTALL_STAGING = NO
BOXIK_SERVICE_INSTALL_TARGET = YES

define BOXIK_SERVICE_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/service.boxik.firmware
	cp -rf $(@D)/* $(TARGET_DIR)/usr/share/xbmc/addons/service.boxik.firmware/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,boxik_service))
