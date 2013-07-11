export ARCHS=armv7
export TARGET=iphone:latest:4.3

include theos/makefiles/common.mk

TWEAK_NAME = mapTest
mapTest_FILES = Tweak.xm
mapTest_FRAMEWORKS = CoreLocation

include $(THEOS_MAKE_PATH)/tweak.mk
