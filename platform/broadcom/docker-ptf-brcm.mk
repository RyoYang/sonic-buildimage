# docker image for docker-ptf

DOCKER_PTF_BRCM = docker-ptf-brcm.gz
$(DOCKER_PTF_BRCM)_PATH = $(PLATFORM_PATH)/docker-ptf-brcm
$(DOCKER_PTF_BRCM)_DEPENDS += $(LIBTHRIFT_0_13_0) $(PYTHON_THRIFT_0_13_0)$(PYTHON3_THRIFT_0_13_0) $(PTF) $(PYTHON_SAITHRIFT)
SONIC_DOCKER_IMAGES += $(DOCKER_PTF_BRCM)

ifneq ($(ENABLE_SYNCD_RPC),y)
SONIC_INSTALL_DOCKER_IMAGES += $(DOCKER_PTF_BRCM)
endif