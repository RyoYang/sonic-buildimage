# libsaithrift-dev package

SAI_VER = 0.9.4

LIBSAITHRIFT_DEV = libsaithrift-dev_$(SAI_VER)_$(CONFIGURED_ARCH).deb
$(LIBSAITHRIFT_DEV)_SRC_PATH = $(SRC_PATH)/sonic-sairedis/SAI
$(LIBSAITHRIFT_DEV)_DEPENDS += $(LIBTHRIFT_0_13_0) $(LIBTHRIFT_DEV_0_13_0) $(PYTHON_THRIFT_0_13_0) $(THRIFT_COMPILER_0_13_0) $(BFN_SAI) $(BFN_SAI_DEV)
$(LIBSAITHRIFT_DEV)_RDEPENDS += $(LIBTHRIFT_0_13_0) $(BFN_SAI)
$(LIBSAITHRIFT_DEV)_BUILD_ENV = SAITHRIFTV2=true
SONIC_DPKG_DEBS += $(LIBSAITHRIFT_DEV)

PYTHON_SAITHRIFT = python-saithrift_$(SAI_VER)_$(CONFIGURED_ARCH).deb
$(eval $(call add_extra_package,$(LIBSAITHRIFT_DEV),$(PYTHON_SAITHRIFT)))

SAISERVER = saiserver_$(SAI_VER)_$(CONFIGURED_ARCH).deb
$(SAISERVER)_RDEPENDS += $(LIBTHRIFT_0_13_0) $(BRCM_SAI)
$(eval $(call add_extra_package,$(LIBSAITHRIFT_DEV),$(SAISERVER)))

SAISERVER_DBG = saiserver-dbg_$(SAI_VER)_$(CONFIGURED_ARCH).deb
$(SAISERVER_DBG)_RDEPENDS += $(SAISERVER)
$(eval $(call add_extra_package,$(LIBSAITHRIFT_DEV),$(SAISERVER_DBG)))
