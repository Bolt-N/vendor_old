# Sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Playa.ogg \
    ro.config.notification_sound=regulus.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg

# Selinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# SuperSU
PRODUCT_COPY_FILES += \
 vendor/dk/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
 vendor/dk/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

PRODUCT_COPY_FILES += \
 vendor/dk/prebuilt/common/addon.d/91-v4a.sh:system/addon.d/91-v4a.sh \
 vendor/dk/prebuilt/common/etc/v4a.zip:system/addon.d/v4a.zip
 
# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/dk/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/dk/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/dk/prebuilt/bin/50-hosts.sh:system/addon.d/50-hosts.sh \
    vendor/dk/prebuilt/bin/blacklist:system/addon.d/blacklist

# init.d support
#PRODUCT_COPY_FILES += \
#    vendor/dk/prebuilt/bin/sysinit:system/bin/sysinit

# Init script file with DarkKat extras
#PRODUCT_COPY_FILES += \
#    vendor/dk/prebuilt/etc/init.local.rc:root/init.dk.rc

# Additional packages
-include vendor/dk/config/packages.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/dk/overlay

# Versionning
-include vendor/dk/config/version.mk
