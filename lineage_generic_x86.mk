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
PRODUCT_MODEL := sdk_google_atv_x86

PRODUCT_GMS_CLIENTID_BASE := android-google
TARGET_VENDOR := google
TARGET_VENDOR_PRODUCT_NAME := generic_x86
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sdk_google_atv_x86-userdebug 9 PSR1.180720.093 5456446 test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/sdk_google_atv_x86/generic_x86:9/PSR1.180720.093/5456446:userdebug/test-keys
