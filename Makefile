export ARCHS=armv7
export TARGET=iphone:latest:4.3

include theos/makefiles/common.mk

TWEAK_NAME = FindMyFriendsChinaLocationPatch
FindMyFriendsChinaLocationPatch_FILES = Tweak.xm
FindMyFriendsChinaLocationPatch_FRAMEWORKS = CoreLocation

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += fmfprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
