# Inherit device configuration
$(call inherit-product, device/ouya/ouya_1_1/full_ouya_1_1.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_tablet_wifionly.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ouya_1_1 \
    TARGET_DEVICE=ouya_1_1 \
    BUILD_FINGERPRINT="OUYA/ouya_1_1/ouya_1_1:4.1.2/JZO54L-OUYA/1427:user/test-keys" \
    PRIVATE_BUILD_DESC="ouya_1_1-user 4.1.2 JZO54L-OUYA 1427 test-keys"

PRODUCT_NAME := cm_ouya_1_1
PRODUCT_DEVICE := ouya_1_1
