export ARCHS=armv7
export TARGET=iphone:latest:4.3

include theos/makefiles/common.mk

TWEAK_NAME = aosTest
aosTest_FILES = Tweak.xm
aosTest_FRAMEWORKS = CoreLocation

include $(THEOS_MAKE_PATH)/tweak.mk
