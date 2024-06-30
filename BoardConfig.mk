# Common
DEVICE_PATH := device/samsung/a10s
BOARD_VENDOR := samsung
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_USES_64_BIT_BINDER := true
ALLOW_MISSING_DEPENDENCIES := true

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true

# Build hacks
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
BUILD_BROKEN_ENFORCE_SYSPROP_OWNER := true
BUILD_BROKEN_INCORRECT_PARTITION_IMAGES := true
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true
BUILD_BROKEN_VERIFY_USES_LIBRARIES := true
RELAX_USES_LIBRARY_CHECK=true

# Bootloader
BOARD_VENDOR := samsung
TARGET_SOC := mt6765
TARGET_BOOTLOADER_BOARD_NAME := S96116CA1
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

# Samsung Audio Hal
TARGET_AUDIOHAL_VARIANT := samsung

# HWComposer
TARGET_HWC2_NO_SKIPVALIDATE := true

# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_HWC2 := true

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS += --header_version 2 --kernel_offset 0x00008000 --ramdisk_offset 0x11a88000 --second_offset 0x00e88000 --tags_offset 0x07808000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
KERNEL_TOOLCHAIN := /home/starlix/los20/prebuilts/clang/host/linux-x86/clang-11.x
TARGET_KERNEL_CLANG_VERSION := 11.x
TARGET_KERNEL_CONFIG := a10s_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a10s
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/Image.gz-dtb
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilts/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_INCLUDE_DTB_IN_BOOTIMG := 
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilts/dtbo.img
BOARD_KERNEL_SEPARATED_DTBO := 
endif

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_DTBOIMG_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3674210304
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10555997184
BOARD_VENDORIMAGE_PARTITION_SIZE := 469762048

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := system/product
TARGET_COPY_OUT_SYSTEM_EXT := system/system_ext

# Partitions (File systems)
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_METADATA_PARTITION := true

# Keymaster
TARGET_KEYMASTER_VARIANT := samsung

# HWUI
HWUI_COMPILE_FOR_PERF := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Bootanimation
TARGET_BOOTANIMATION_HALF_RES := true

# Platform
TARGET_BOARD_PLATFORM := mt6765
BOARD_HAS_MTK_HARDWARE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_INCLUDE_RECOVERY_DTBO := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# Lineage hardware
BOARD_HARDWARE_CLASS := \
    hardware/samsung/lineagehw

# SEPolicy
SELINUX_IGNORE_NEVERALLOWS := true
TARGET_USING_LEGACY_SELINUX := true
include device/mediatek/sepolicy_vndr/SEPolicy.mk
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Symbols
TARGET_LD_SHIM_LIBS := /system/lib/libshowlogo.so|libshim_showlogo.so

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Network Routing
TARGET_IGNORES_FTP_PPTP_CONNTRACK_FAILURE := true

# Ril
ENABLE_VENDOR_RIL_SERVICE := true
SIM_COUNT := 2

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# Security patch level
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/product_prop.mk
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor_prop.mk

# VNDK
BOARD_VNDK_VERSION := current

# HIDL
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.gpu@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.samsung.hardware.base@1.0-service.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_compatibility_matrix.xml

# OTA Assert
TARGET_OTA_ASSERT_DEVICE := a10s,a10sxx

