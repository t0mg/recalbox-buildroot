################################################################################
#
# controlblock
#
################################################################################

CONTROLBLOCK_VERSION = 1.0
CONTROLBLOCK_SOURCE = ControlBlockService-$(CONTROLBLOCK_VERSION).tar.gz
CONTROLBLOCK_SITE = https://github.com/t0mg/ControlBlockService/releases/download/$(CONTROLBLOCK_VERSION)
CONTROLBLOCK_DEPENDENCIES = libbcm2835 jsoncpp i2c-tools python-smbus

define CONTROLBLOCK_POST_INSTALL_INSTALLSERVICE
	$(TARGET_MAKE_ENV) $(MAKE) installservice -C $(@D)
endef

CONTROLBLOCK_POST_INSTALL_TARGET_HOOKS += CONTROLBLOCK_POST_INSTALL_INSTALLSERVICE

define CONTROLBLOCK_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_ARGS) \
		$(TARGET_CONFIGURE_OPTS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		LDFLAGS="$(TARGET_LDFLAGS) -lc" \
		CROSS_COMPILE="$(HOST_DIR)/usr/bin/" \
		./configure \
		--prefix=/usr \
	)
endef

define CONTROLBLOCK_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define CONTROLBLOCK_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) installservice -C $(@D)
	#$(MAKE) -C $(@D) install INSTALL_ROOT=$(TARGET_DIR)
  	#$(MAKE) -C $(@D) DESTDIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
