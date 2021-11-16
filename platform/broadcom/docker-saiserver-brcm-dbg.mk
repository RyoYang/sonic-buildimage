# docker image for brcm saiserver debug version

DOCKER_SAISERVER_BRCM_DBG = docker-saiserver-brcm-dbg.gz
$(DOCKER_SAISERVER_BRCM_DBG)_PATH = $(PLATFORM_PATH)/docker-saiserver-brcm-dgb
$(DOCKER_SAISERVER_BRCM_DBG)_DEPENDS += $(SAISERVER_DBG)
$(DOCKER_SAISERVER_BRCM_DBG)_FILES += $(DSSERVE) $(BCMCMD)
$(DOCKER_SAISERVER_BRCM_DBG)_LOAD_DOCKERS += $(DOCKER_CONFIG_ENGINE_BUSTER)
SONIC_DOCKER_IMAGES += $(DOCKER_SAISERVER_BRCM_DBG)

$(DOCKER_SAISERVER_BRCM_DBG)_CONTAINER_NAME = saiserver-dbg
$(DOCKER_SAISERVER_BRCM_DBG)_RUN_OPT += --privileged -t
$(DOCKER_SAISERVER_BRCM_DBG)_RUN_OPT += -v /host/machine.conf:/etc/machine.conf
$(DOCKER_SAISERVER_BRCM_DBG)_RUN_OPT += -v /var/run/docker-saiserver:/var/run/sswsyncd
$(DOCKER_SAISERVER_BRCM_DBG)_RUN_OPT += -v /etc/sonic:/etc/sonic:ro
$(DOCKER_SAISERVER_BRCM_DBG)_RUN_OPT += -v /host/warmboot:/var/warmboot

$(DOCKER_SAISERVER_BRCM_DBG)_BASE_IMAGE_FILES += bcmcmd:/usr/bin/bcmcmd
$(DOCKER_SAISERVER_BRCM_DBG)_BASE_IMAGE_FILES += bcmsh:/usr/bin/bcmsh
