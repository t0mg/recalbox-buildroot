################################################################################
#
# python-smbus
#
################################################################################

PYTHON_SMBUS_VERSION = $(I2C_TOOLS_VERSION)
PYTHON_SMBUS_SOURCE = $(I2C_TOOLS_SOURCE)
PYTHON_SMBUS_SITE = $(I2C_TOOLS_SITE)
PYTHON_SMBUS_LICENSE = GPLv2
PYTHON_SMBUS_LICENSE_FILES = $(I2C_TOOLS_LICENSE_FILES)
PYTHON_SMBUS_SETUP_TYPE = distutils
PYTHON_SMBUS_SUBDIR = py-smbus

# the upstream setup.py doesn't set the needed in-tree include dir
# so we add it in the setup configuration file
define PYTHON_SMBUS_CONFIGURE_CMDS
	echo "[build_ext]" > $(@D)/$(PYTHON_SMBUS_SUBDIR)/setup.cfg
	echo "include_dirs = ../include" >> $(@D)/$(PYTHON_SMBUS_SUBDIR)/setup.cfg
endef

$(eval $(python-package))
