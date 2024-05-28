# Boot animation
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \
    $(LOCAL_PATH)/configs/public.libraries.txt.backup:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt.backup \

# Ramdisk
PRODUCT_PACKAGES += \
    init.mt6762.rc \
    init.mt6765.rc \
    init.mt6765.usb.rc \
    fstab.mt6762 \
    fstab.mt6765

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0_system \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor 

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \

# Reduce system image size by limiting java debug info.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Speed profile services and wifi-service to reduce RAM and storage.
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile

# Always preopt extracted APKs to prevent extracting out of the APK
# for gms modules.
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true

# Properties
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Inherit Device Vendor

PRODUCT_SOONG_NAMESPACES := \
    device/samsung/a10s \
    device/mediatek/sepolicy \
    hardware/mediatek
