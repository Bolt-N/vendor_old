# Used to display the version
BOLT_VERSION_SHORT := N
BOLT_VERSION := Bolt-$(BOLT_VERSION_SHORT)
# Used to display the build version
BOLT_BUILD_VERSION := $(BUILD_ID)-$(shell date +%Y%m%d)
# Used for the rom zip name
BOLT_TARGET_PACKAGE_NAME := $(BOLT_VERSION)-$(shell date +%Y%m%d)-$(BOLT_BUILD_TYPE)-$(subst bolt_,,$(TARGET_PRODUCT))

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bolt.version_short=$(BOLT_VERSION_SHORT) \
    ro.bolt.version=$(BOLT_VERSION) \
    ro.bolt.build.version=$(BOLT_BUILD_VERSION) \
    ro.bolt.build.type=$(BOLT_BUILD_TYPE)
