LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  lz4.c \
  lz4hc.c \
  lz4frame.c \
  xxhash.c

LOCAL_MODULE := liblz4
include $(BUILD_HOST_STATIC_LIBRARY)

$(call dist-for-goals,dist_files sdk,$(LOCAL_BUILT_MODULE))
