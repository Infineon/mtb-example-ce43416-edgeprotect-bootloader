################################################################################
# \file detect_platform.mk
#
# \brief
# Sets FAMILY and PLATFORM to PSC3_P8 when TARGET matches a PSC3_P8 kit.
# Included by common.mk via wildcard, so it is only necessary to add 
# a new TARGET to the appropriate detect_platform.mk to set FAMILY and PLATFORM
# for that TARGET.
################################################################################

ifeq ($(filter $(TARGET),KIT_PSC3M8_EVK APP_KIT_PSC3M8_EVK KIT_PSC3M8_CC1 APP_KIT_PSC3M8_CC1),$(TARGET))
    FAMILY ?= PSC3_P8
    PLATFORM ?= PSC3_P8
endif
