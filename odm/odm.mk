# device/<odm>/<project>/odm/odm.mk
LOCAL_PATH := $(call my-dir)

CUSTOM_IMAGE_MOUNT_POINT := odm
# set odm partition size = 32M bytes
CUSTOM_IMAGE_PARTITION_SIZE := 33554432
CUSTOM_IMAGE_FILE_SYSTEM_TYPE := ext4
CUSTOM_IMAGE_DICT_FILE := $(LOCAL_PATH)/odm.dict
CUSTOM_IMAGE_SELINUX := true

# The following is for vboot 1.0.
CUSTOM_IMAGE_SUPPORT_VERITY := true
CUSTOM_IMAGE_VERITY_BLOCK_DEVICE := /dev/block/platform/mtk-msdc\.0/11230000\.msdc0/by-name/odm

# The following is for vboot 2.0 (AVB).
# CUSTOM_IMAGE_AVB_HASH_ENABLE := true

# CUSTOM_IMAGE_AVB_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
# CUSTOM_IMAGE_AVB_ALGORITHM := SHA256_RSA2048
# CUSTOM_IMAGE_AVB_ROLLBACK_INDEX := 11
# CUSTOM_IMAGE_AVB_ROLLBACK_INDEX_LOCATION := 22

CUSTOM_IMAGE_COPY_FILES := \
    $(LOCAL_PATH)/odm.prop:odm.prop \
    $(LOCAL_PATH)/init.rc:etc/init/init.rc
