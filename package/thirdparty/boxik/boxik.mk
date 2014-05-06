BOXIK_VERSION = e2934a083e5d724b3c149d26dc82aaa1d53d29d3
BOXIK_SITE_METHOD = git
BOXIK_SITE = https://github.com/Ilia/skin.boxik.git
BOXIK_INSTALL_STAGING = YES
BOXIK_INSTALL_TARGET = YES
BOXIK_SOURCE=boxik-$(BOXIK_VERSION).tar.gz
BOXIK_DEPENDENCIES = xbmc
TEXTURE_PACKER=$(XBMC_DIR)/tools/TexturePacker/TexturePacker

define BOXIK_BUILD_CMDS
    $(TEXTURE_PACKER) -use_none -i $(@D)/media -o $(@D)/media/Textures.xbt
endef

define BOXIK_INSTALL_STAGING_CMDS
    mkdir -p $(STAGING_DIR)/usr/share/xbmc/addons/skin.boxik
    cp -rf $(@D)/* $(STAGING_DIR)/usr/share/xbmc/addons/skin.boxik/
endef

define BOXIK_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/skin.boxik/media
    cd $(@D); cp -rf `ls -I media -1` $(TARGET_DIR)/usr/share/xbmc/addons/skin.boxik
    cp -f $(@D)/media/Textures.xbt $(TARGET_DIR)/usr/share/xbmc/addons/skin.boxik/media
endef

$(eval $(generic-package))
