# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-product.xml

# Properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.lens.oem_camera_package=com.sonymobile.photopro

$(call inherit-product, vendor/sony/pdx206-camera/pdx206-camera-vendor.mk)
