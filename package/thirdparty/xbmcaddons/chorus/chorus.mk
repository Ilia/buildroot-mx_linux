###############################################################################
#
## Xbmc Chorus Web Interface Addon
#
###############################################################################
CHORUS_VERSION = 0.3.9
CHORUS_SOURCE = webinterface.chorus.$(CHORUS_VERSION).zip
CHORUS_SITE = https://github.com/jez500/chorus/blob/master/ 
CHORUS_INSTALL_STAGING = NO
CHORUS_INSTALL_TARGET = YES

define CHORUS_EXTRACT_CMDS
        unzip $(DL_DIR)/$(FAVOURITES_SOURCE) -d $(@D)
endef

define CHORUS_INSTALL_TARGET_CMDS
        cp -rf $(@D)/webinterface.chorus $(TARGET_DIR)/usr/share/xbmc/addons/
endef

$(eval $(call xbmc-addon,package/thirdparty/xbmcaddons,chorus))
