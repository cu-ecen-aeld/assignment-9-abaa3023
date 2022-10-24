##############################################################
#
# LDD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = 57b2c8267349d16fb8566165431574ddf641596f
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:

LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-abaa3023.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/*  $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/*  $(TARGET_DIR)/usr/bin
endef

LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

$(eval $(kernel-module))
$(eval $(generic-package))
