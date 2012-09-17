## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := p350

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p350/p350.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p350
PRODUCT_NAME := cm_p350
PRODUCT_BRAND := lge
PRODUCT_MODEL := p350
PRODUCT_MANUFACTURER := lge
