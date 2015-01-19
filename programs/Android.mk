LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  lz4cli.c \
  lz4io.c \
  bench.c

LOCAL_C_INCLUDES := external/lz4/lib

LOCAL_STATIC_LIBRARIES := liblz4

LOCAL_MODULE := lz4c
include $(BUILD_HOST_EXECUTABLE)

$(call dist-for-goals,dist_files sdk,$(LOCAL_BUILT_MODULE))
