LOCAL_PATH := $(call my-dir)

## libshim_asc
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mtk_asc.cpp

LOCAL_SHARED_LIBRARIES := libbinder libgui
LOCAL_MODULE := libshim_asc
include $(BUILD_SHARED_LIBRARY)


## libshim_ui
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mtk_ui.cpp

LOCAL_SHARED_LIBRARIES := libbinder libui
LOCAL_MODULE := libshim_ui
include $(BUILD_SHARED_LIBRARY)


## libshim_cam
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mtk_cam.cpp

LOCAL_SHARED_LIBRARIES := libbinder libgui libui
LOCAL_MODULE := libshim_cam
include $(BUILD_SHARED_LIBRARY)


## libshim_audio
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mtk_audio.cpp

LOCAL_SHARED_LIBRARIES := libbinder libui
LOCAL_MODULE := libshim_audio
include $(BUILD_SHARED_LIBRARY)


## libshim_audioCompat
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mtk_audioCompat.c

LOCAL_SHARED_LIBRARIES := libbinder libui
LOCAL_MODULE := libshim_audioCompat
include $(BUILD_SHARED_LIBRARY)


## libshim_gui
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mtk_gui.cpp

LOCAL_SHARED_LIBRARIES := libbinder libui
LOCAL_MODULE := libshim_gui
include $(BUILD_SHARED_LIBRARY)
