include theos/makefiles/common.mk

BUNDLE_NAME = fmfprefs
fmfprefs_FILES = fmfprefs.mm
fmfprefs_INSTALL_PATH = /Library/PreferenceBundles
fmfprefs_FRAMEWORKS = UIKit
fmfprefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/fmfprefs.plist$(ECHO_END)
