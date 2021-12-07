#
# Copyright (c) 2017-2021 NVIDIA CORPORATION & AFFILIATES.
# Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# libsaithrift-dev package

SAI_VER = 0.9.4

LIBSAITHRIFTV2_DEV = libsaithriftv2-dev_$(SAI_VER)_$(CONFIGURED_ARCH).deb
$(LIBSAITHRIFTV2_DEV)_SRC_PATH = $(SRC_PATH)/sonic-sairedis/SAI
$(LIBSAITHRIFTV2_DEV)_DEPENDS += $(LIBTHRIFT_0_13_0) $(LIBTHRIFT_DEV_0_13_0) $(PYTHON3_THRIFT_0_13_0) $(THRIFT_COMPILER_0_13_0) $(MLNX_SAI) $(MLNX_SAI_DEV)
$(LIBSAITHRIFTV2_DEV)_RDEPENDS += $(LIBTHRIFT_0_13_0) $(MLNX_SAI)
$(LIBSAITHRIFTV2_DEV)_BUILD_ENV = SAITHRIFTV2=true
SONIC_DPKG_DEBS += $(LIBSAITHRIFTV2_DEV)

PYTHON3_SAITHRIFT = python3-saithrift_$(SAI_VER)_$(CONFIGURED_ARCH).deb
$(eval $(call add_extra_package,$(LIBSAITHRIFTV2_DEV),$(PYTHON3_SAITHRIFT)))

SAISERVERV2 = saiserverv2_$(SAI_VER)_$(CONFIGURED_ARCH).deb
$(SAISERVERV2)_RDEPENDS += $(LIBTHRIFT_0_13_0) $(MLNX_SAI)
$(eval $(call add_extra_package,$(LIBSAITHRIFTV2_DEV),$(SAISERVERV2)))

SAISERVERV2_DBG = saiserverv2-dbg_$(SAI_VER)_$(CONFIGURED_ARCH).deb
$(SAISERVERV2_DBG)_RDEPENDS += $(SAISERVERV2)
$(eval $(call add_extra_package,$(LIBSAITHRIFTV2_DEV),$(SAISERVERV2_DBG)))
