ameba_list_append(aws_includes
    ${c_CMPT_EXAMPLE_DIR}/application
)

# freertos
ameba_list_append(aws_includes
    ${c_FREERTOS_DIR}/portable/include
)
if(CONFIG_AMEBADPLUS)
ameba_list_append(aws_includes
    ${c_FREERTOS_DIR}/portable/AmebaDplus_KM4/secure
    ${c_FREERTOS_DIR}/portable/AmebaDplus_KM4/non_secure
)
elseif(CONFIG_AMEBALITE)
ameba_list_append(private_includes
    ${c_FREERTOS_DIR}/portable/AmebaLite_KM4/secure
    ${c_FREERTOS_DIR}/portable/AmebaLite_KM4/non_secure
)
elseif(CONFIG_AMEBASMART)
endif()

# demos
ameba_list_append(aws_includes
    ${AMAZON_DEMOS_DIR}/include
    ${AMAZON_DEMOS_COMMON_DIR}/http_demo_helpers
    ${AMAZON_DEMOS_COMMON_DIR}/mqtt_demo_helpers
    ${AMAZON_DEMOS_COMMON_DIR}/mqtt_subscription_manager
    ${AMAZON_DEMOS_COMMON_DIR}/pkcs11_helpers
    ${AMAZON_DEMOS_DEVICE_DEFENDER_DIR}
    ${AMAZON_DEMOS_DEV_MODE_KEY_PROV_DIR}/include
    ${AMAZON_DEMOS_OTA_DIR}/ota_demo_mqtt_streams
    ${AMAZON_DEMO_ENTRY_DIR}
)

# jsmn & tinycbor
ameba_list_append(aws_includes
    ${AMAZON_THIRD_PARTY_DIR}/jsmn
    ${AMAZON_TINYCBOR_DIR}/src
)

# corePKCS11
ameba_list_append(aws_includes
    ${AMAZON_CORE_PKCS11_DIR}/source/dependency/3rdparty/pkcs11/published/2-40-errata-1
    ${AMAZON_CORE_PKCS11_DIR}/source/dependency/3rdparty/pkcs11
    ${AMAZON_CORE_PKCS11_DIR}/source/include
)

# abstractions
ameba_list_append(aws_includes
    ${AMAZON_ABSTRACTIONS_DIR}/mqtt_agent/include
    ${AMAZON_ABSTRACTIONS_DIR}/platform/include
    ${AMAZON_ABSTRACTIONS_DIR}/platform/include/platform
    ${AMAZON_ABSTRACTIONS_DIR}/platform/freertos/include
    ${AMAZON_ABSTRACTIONS_DIR}/secure_sockets/include
    ${AMAZON_ABSTRACTIONS_DIR}/transport/secure_sockets
    ${AMAZON_ABSTRACTIONS_DIR}/wifi/include
)

# c_sdk
ameba_list_append(aws_includes
    ${AMAZON_C_SDK_DIR}/standard/common/include
    ${AMAZON_C_SDK_DIR}/standard/common/include/private
)

# freertos_plus
ameba_list_append(aws_includes
    ${AMAZON_FREERTOS_PLUS_DIR}/standard/crypto/include
    ${AMAZON_FREERTOS_PLUS_DIR}/standard/utils/include
    ${AMAZON_FREERTOS_PLUS_DIR}/standard/tls/include
)

# logging
ameba_list_append(aws_includes
    ${AMAZON_LOGGING_DIR}/include
)

# backoffAlgorithm
ameba_list_append(aws_includes
    ${AMAZON_BACKOFF_ALGO_DIR}/source/include
)

# coreHTTP
ameba_list_append(aws_includes
    ${AMAZON_CORE_HTTP_DIR}/source/include
    ${AMAZON_CORE_HTTP_DIR}/source/interface
    ${AMAZON_CORE_HTTP_DIR}/source/dependency/3rdparty/llhttp/include
)

# coreJSON
ameba_list_append(aws_includes
    ${AMAZON_CORE_JSON_DIR}/source/include
)

# coreMQTT
ameba_list_append(aws_includes
    ${AMAZON_CORE_MQTT_DIR}/source/include
    ${AMAZON_CORE_MQTT_DIR}/source/interface
)

# coreMQTT-Agent
ameba_list_append(aws_includes
    ${AMAZON_CORE_MQTT_AGENT_DIR}/source/include
)

# device_defender_for_aws
ameba_list_append(aws_includes
    ${AMAZON_DEVICE_DEFENDER_DIR}/source/include
)

# device_shadow_for_aws
ameba_list_append(aws_includes
    ${AMAZON_DEVICE_SHADOW_DIR}/source/include
)

# jobs_for_aws
ameba_list_append(aws_includes
    ${AMAZON_JOBS_DIR}/source/include
    ${AMAZON_JOBS_DIR}/source/otaJobParser/include
)

# ota
ameba_list_append(aws_includes
    ${AMAZON_OTA_DIR}/source/include
    ${AMAZON_OTA_DIR}/source
    ${AMAZON_OTA_DIR}/source/portable
    ${AMAZON_OTA_DIR}/source/portable/os

    ${AMAZON_MQTT_FILE_STREAMS_DIR}/source/include
)

ameba_list_append(private_includes
    ${AMAZON_PORTS_DIR}/config_files
    ${AMAZON_PORTS_DIR}/ota
)

ameba_list_append(private_includes
    ${aws_includes}
)
