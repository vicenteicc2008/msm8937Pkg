#
#  Copyright (c) 2011-2015, ARM Limited. All rights reserved.
#  Copyright (c) 2014, Linaro Limited. All rights reserved.
#  Copyright (c) 2015 - 2016, Intel Corporation. All rights reserved.
#  Copyright (c) 2018 - 2019, RUIKAI LIU. All rights reserved.
#
#  This program and the accompanying materials
#  are licensed and made available under the terms and conditions of the BSD License
#  which accompanies this distribution.  The full text of the license may be found at
#  http://opensource.org/licenses/bsd-license.php
#
#  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
#  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
#
#

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  PLATFORM_NAME                  = msm8953
  PLATFORM_GUID                  = 566ba710-0bee-48e0-b56e-dcf4b0a38e04
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/msm8953-$(ARCH)
  SUPPORTED_ARCHITECTURES        = ARM
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = msm8953Pkg/msm8953.fdf


[PcdsFixedAtBuild.common]
  gArmTokenSpaceGuid.PcdSystemMemorySize|0x80000000         # 2GB
  gArmTokenSpaceGuid.PcdSystemMemoryBase|0x00000000
  gArmPlatformTokenSpaceGuid.PcdCoreCount|4
  gmsm8953PkgTokenSpaceGuid.PcdPreAllocatedMemorySize|0x7CD00000 #0FF00000
  gmsm8953PkgTokenSpaceGuid.PcdUefiMemPoolSize|0x03300000

  # Default resolution for this firmware can be seen in dec file, override here for specific platform configuration if needed
  #gmsm8953PkgTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  #gmsm8953PkgTokenSpaceGuid.PcdMipiFrameBufferHeight|1920
  #gmsm8953PkgTokenSpaceGuid.PcdMipiFrameBufferVisibleWidth|1080
  #gmsm8953PkgTokenSpaceGuid.PcdMipiFrameBufferVisibleHeight|1920

[PcdsDynamicDefault.common]
  #
  # Set video resolution for boot options and for text setup.
  # PlatformDxe can set the former at runtime.
  #
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoHorizontalResolution|1280
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoVerticalResolution|720
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupVideoHorizontalResolution|1280
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupVideoVerticalResolution|720
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupConOutRow|160
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupConOutColumn|37

!include msm8953Pkg/Shared.dsc.inc
