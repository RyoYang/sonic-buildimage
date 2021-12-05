# docker image for saiserver

DOCKER_SAISERVER_BFN = docker-saiserver-bfn.gz
$(DOCKER_SAISERVER_BFN)_PATH = $(PLATFORM_PATH)/docker-saiserver-bfn
$(DOCKER_SAISERVER_BFN)_DEPENDS += $(SAISERVER)
$(DOCKER_SAISERVER_BFN)_LOAD_DOCKERS += $(DOCKER_CONFIG_ENGINE_BUSTER)
SONIC_DOCKER_IMAGES += $(DOCKER_SAISERVER_BFN)

$(DOCKER_SAISERVER_BFN)_CONTAINER_NAME = saiserver
$(DOCKER_SAISERVER_BFN)_RUN_OPT += --net=host --privileged -t
$(DOCKER_SAISERVER_BFN)_RUN_OPT += -v /host/machine.conf:/etc/machine.conf
$(DOCKER_SAISERVER_BFN)_RUN_OPT += -v /etc/sonic:/etc/sonic:ro
$(DOCKER_SAISERVER_BFN)_RUN_OPT += -v /host/warmboot:/var/warmboot