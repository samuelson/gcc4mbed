# Copyright (C) 2013 - Adam Green (http://mbed.org/users/AdamGreen/)
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.


# Clear out the include path for mbed components to be filled in by the
# components which are actually used according to MBED_LIBS.
MBED_INCLUDES :=


# Include makefiles to build the project and any of the mbed components it
# might require.
include $(GCC4MBED_DIR)/build/gcc4mbed-device.mk
include $(GCC4MBED_DIR)/build/mbed-device.mk
include $(GCC4MBED_DIR)/build/rtos-device.mk
include $(GCC4MBED_DIR)/build/lwip-device.mk
include $(GCC4MBED_DIR)/build/eth-device.mk
include $(GCC4MBED_DIR)/build/fs-device.mk
include $(GCC4MBED_DIR)/build/usbdevice-device.mk
include $(GCC4MBED_DIR)/build/usbhost-device.mk
include $(GCC4MBED_DIR)/build/rpc-device.mk
include $(GCC4MBED_DIR)/build/dsp-device.mk


# When building the project for this device, use this scoped include path for
# the mbed components used.
$(MBED_DEVICE): MBED_INCLUDES := $(patsubst %,-I%,$(MBED_INCLUDES))
