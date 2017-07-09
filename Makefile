ARCHS = armv7 armv7s arm64

include /var/theos/makefiles/common.mk

TWEAK_NAME = ZenX
ZenX_FILES = Tweak.xm
ZenX_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
