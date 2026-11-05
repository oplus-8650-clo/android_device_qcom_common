# Qualcomm Audio Soong configuration

# Primary Audio HAL
$(call soong_config_set,qtiaudio,feature_instance_id,$(if $(filter true,$(AUDIO_FEATURE_ENABLED_INSTANCE_ID)),true,false))
$(call soong_config_set_bool,qtiaudio,feature_gcov,$(if $(filter true,$(AUDIO_FEATURE_ENABLED_GCOV)),true,false))
$(call soong_config_set,qtiaudio,feature_disabled_dts_eagle,$(if $(filter true,$(AUDIO_FEATURE_DISABLED_DTS_EAGLE)),true,false))
$(call soong_config_set,qtiaudio,feature_lsm_hidl,$(if $(filter true,$(AUDIO_FEATURE_ENABLED_LSM_HIDL)),true,false))
$(call soong_config_set,qtiaudio,feature_pal_hidl,$(if $(filter true,$(AUDIO_FEATURE_ENABLED_PAL_HIDL)),true,false))
$(call soong_config_set,qtiaudio,feature_agm_hidl,$(if $(filter true,$(AUDIO_FEATURE_ENABLED_AGM_HIDL)),true,false))
$(call soong_config_set,qtiaudio,feature_gef_support,$(if $(filter true,$(AUDIO_FEATURE_ENABLED_GEF_SUPPORT)),true,false))

# AGM
$(call soong_config_set_bool,qtiaudio,feature_dynamic_log,$(if $(filter true,$(AUDIO_FEATURE_ENABLED_DYNAMIC_LOG)),true,false))

# PAL
$(call soong_config_set,qtiaudio,feature_bt_a2dp_lpi,$(if $(filter true,$(AUDIO_FEATURE_ENABLE_BT_A2DP_LPI)),true,false))

# AudioReach Graph Services
$(call soong_config_set,qtiaudio,feature_mcs,$(if $(filter true,$(AUDIO_FEATURE_ENABLED_MCS)),true,false))

# Sound Trigger HAL namespace dependencies
ifeq ($(BOARD_SUPPORTS_OPENSOURCE_STHAL),true)
$(call soong_config_set,qtiaudio,headers_namespace,$(QCOM_SOONG_NAMESPACE))
$(call soong_config_set,qtiaudio,libarpal_namespace,$(QCOM_SOONG_NAMESPACE))
endif
