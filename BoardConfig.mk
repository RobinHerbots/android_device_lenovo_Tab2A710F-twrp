#
# Device
#
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5955911680
BOARD_CACHEIMAGE_PARTITION_SIZE := 132120576
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

#
# Boot
#
BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/Tab2A710F/bootimg.mk
BOARD_MKBOOTIMG_ARGS := --base 0x80000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x00000100 --board 1438361675

#
# Kernel
#
TARGET_PREBUILT_RECOVERY_KERNEL := device/lenovo/Tab2A710F/kernel

#
# Debug
#
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

#
# TWRP
#
TWHAVE_SELINUX := true
#TW_USE_TOOLBOX := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"
TW_MAX_BRIGHTNESS := 255		# Max brightness to prevent display damage
TW_DEFAULT_BRIGHTNESS := 128
TW_EXTRA_LANGUAGES := true
TW_NO_REBOOT_BOOTLOADER := true

# Filesystem and storage
TW_INCLUDE_CRYPTO := true
RECOVERY_SDCARD_ON_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
FLASH_FROM_STORAGE := true		# flashes zips from their current location instead of copying them to /tmp
TW_INCLUDE_NTFS_3G := true
#TW_NO_EXFAT_FUSE := true
#TW_NO_EXFAT := true
#TARGET_USERIMAGES_USE_F2FS := true	# Compatible kernel needed
#TW_NEVER_UNMOUNT_SYSTEM := true	# Prevent TWRP from unmounting /system
BOARD_SUPPRESS_SECURE_ERASE := true # "Some MMCs have VERY slow secure erase - use standard erase instead"

# Theme and graphics
TW_THEME := portrait_mdpi
#TW_CUSTOM_THEME := device/lenovo/Tab2A710F/recovery/twres
TW_INCLUDE_FB2PNG := true
