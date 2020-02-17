# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from generic_x86 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := google
PRODUCT_DEVICE := generic_x86
PRODUCT_MANUFACTURER := google
PRODUCT_NAME := lineage_generic_x86
PRODUCT_MODEL := Automotive SDK built for x86

PRODUCT_GMS_CLIENTID_BASE := android-google
TARGET_VENDOR := google
TARGET_VENDOR_PRODUCT_NAME := generic_x86
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sdk_gcar_x86-user 9 PAG1.191007.002 5928337 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/sdk_gcar_x86/generic_x86:9/PAG1.191007.002/5928337:user/release-keys
