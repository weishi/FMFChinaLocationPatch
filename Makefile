export ARCHS=armv7 arm64
export TARGET=iphone:7.0:2.0

include theos/makefiles/common.mk

TWEAK_NAME = FMFIPSpoofer
FMFIPSpoofer_FILES = Tweak.xm
FMFIPSpoofer_FRAMEWORKS = CoreLocation

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += fmfprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
