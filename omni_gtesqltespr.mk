#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2019-Present A-Team Digital Solutions
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from gtesqltespr device
$(call inherit-product, device/samsung/gtesqltespr/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/gtelwifiue/recovery/root,recovery/root)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gtesqltespr
PRODUCT_NAME := omni_gtesqltespr
PRODUCT_BRAND := Galaxy
PRODUCT_MODEL := SM-T377P
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RELEASE_NAME := Tab E 8.0
