THEOS_PACKAGE_DIR_NAME = debs
TARGET=:clang
ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = ActiveAlarm
ActiveAlarm_OBJC_FILES = ActiveAlarm.xm
ActiveAlarm_FRAMEWORKS = Foundation UIKit
ActiveAlarm_PRIVATE_FRAMEWORKS = MobileTimer
ActiveAlarm_LDFLAGS = -lactivator -Ltheos/lib

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

internal-after-install::
	install.exec "killall -9 backboardd"