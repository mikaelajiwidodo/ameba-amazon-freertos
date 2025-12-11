# mqtt streams demo
ameba_list_append(private_sources
    ${AMAZON_DEMOS_OTA_DIR}/ota_demo_mqtt_streams/ota_event_freertos.c
    ${AMAZON_DEMOS_OTA_DIR}/ota_demo_mqtt_streams/mqtt_wrapper.c
    ${AMAZON_DEMOS_OTA_DIR}/ota_demo_mqtt_streams/mqtt_agent_task.c
)

# demo code
ameba_list_append(private_sources
    ${AMAZON_DEMOS_COMMON_DIR}/http_demo_helpers/http_demo_utils.c
    ${AMAZON_DEMOS_COMMON_DIR}/mqtt_demo_helpers/mqtt_demo_helpers.c
    ${AMAZON_DEMOS_COMMON_DIR}/mqtt_subscription_manager/mqtt_subscription_manager.c
    ${AMAZON_DEMOS_COMMON_DIR}/ota_demo_helpers/ota_application_version.c
    ${AMAZON_DEMOS_COMMON_DIR}/pkcs11_helpers/pkcs11_helpers.c
    ${AMAZON_DEMOS_DEV_MODE_KEY_PROV_DIR}/src/aws_dev_mode_key_provisioning.c
    ${AMAZON_DEMOS_CORE_HTTP_DIR}/http_demo_mutual_auth.c
    ${AMAZON_DEMOS_CORE_MQTT_DIR}/mqtt_demo_mutual_auth.c
    ${AMAZON_DEMOS_DEVICE_SHADOW_DIR}/shadow_demo_main.c
    ${AMAZON_DEMOS_DEVICE_DEFENDER_DIR}/metrics_collector/lwip/metrics_collector.c
    ${AMAZON_DEMOS_DEVICE_DEFENDER_DIR}/defender_demo.c
    ${AMAZON_DEMOS_DEVICE_DEFENDER_DIR}/report_builder.c
    ${AMAZON_DEMOS_JOBS_DIR}/jobs_demo.c
    ${AMAZON_DEMOS_OTA_DIR}/ota_demo_core_mqtt/ota_demo_core_mqtt.c
    ${AMAZON_DEMOS_OTA_DIR}/ota_demo_mqtt_streams/ota_demo_mqtt_streams.c
    ${AMAZON_DEMO_ENTRY_DIR}/app_example.c
    ${AMAZON_DEMO_ENTRY_DIR}/aws_main.c
    ${AMAZON_DEMO_ENTRY_DIR}/example_amazon_freertos.c
)
