# tinycbor
ameba_list_append(private_sources
    ${AMAZON_TINYCBOR_DIR}/src/cborencoder.c
    ${AMAZON_TINYCBOR_DIR}/src/cborencoder_close_container_checked.c
    ${AMAZON_TINYCBOR_DIR}/src/cborerrorstrings.c
    ${AMAZON_TINYCBOR_DIR}/src/cborparser.c
    ${AMAZON_TINYCBOR_DIR}/src/cborparser_dup_string.c
    ${AMAZON_TINYCBOR_DIR}/src/cborpretty.c
    ${AMAZON_TINYCBOR_DIR}/src/cborpretty_stdio.c
    ${AMAZON_TINYCBOR_DIR}/src/cborvalidation.c
)

# mqtt_agent
ameba_list_append(private_sources
    ${AMAZON_ABSTRACTIONS_DIR}/mqtt_agent/freertos_agent_message.c
    ${AMAZON_ABSTRACTIONS_DIR}/mqtt_agent/freertos_command_pool.c
)

# secure_sockets
ameba_list_append(private_sources
    ${AMAZON_ABSTRACTIONS_DIR}/transport/secure_sockets/transport_secure_sockets.c
)

# freertos_plus
ameba_list_append(private_sources
    ${AMAZON_FREERTOS_PLUS_DIR}/standard/crypto/src/iot_crypto.c
    ${AMAZON_FREERTOS_PLUS_DIR}/standard/tls/src/iot_tls.c
)

# logging
ameba_list_append(private_sources
    ${AMAZON_LOGGING_DIR}/iot_logging.c
    ${AMAZON_LOGGING_DIR}/iot_logging_task_dynamic_buffers.c
)

# backoffAlgorithm
ameba_list_append(private_sources
    ${AMAZON_BACKOFF_ALGO_DIR}/source/backoff_algorithm.c
)

# coreHTTP
ameba_list_append(private_sources
    ${AMAZON_CORE_HTTP_DIR}/source/dependency/3rdparty/llhttp/src/api.c
    ${AMAZON_CORE_HTTP_DIR}/source/dependency/3rdparty/llhttp/src/http.c
    ${AMAZON_CORE_HTTP_DIR}/source/dependency/3rdparty/llhttp/src/llhttp.c
    ${AMAZON_CORE_HTTP_DIR}/source/core_http_client.c
)

# coreJSON
ameba_list_append(private_sources
    ${AMAZON_CORE_JSON_DIR}/source/core_json.c
)

# coreMQTT
ameba_list_append(private_sources
    ${AMAZON_CORE_MQTT_DIR}/source/core_mqtt.c
    ${AMAZON_CORE_MQTT_DIR}/source/core_mqtt_serializer.c
    ${AMAZON_CORE_MQTT_DIR}/source/core_mqtt_state.c
)

# coreMQTT Agent
ameba_list_append(private_sources
    ${AMAZON_CORE_MQTT_AGENT_DIR}/source/core_mqtt_agent.c
    ${AMAZON_CORE_MQTT_AGENT_DIR}/source/core_mqtt_agent_command_functions.c
)

# corePKCS11
ameba_list_append(private_sources
    ${AMAZON_CORE_PKCS11_DIR}/source/portable/mbedtls/core_pkcs11_mbedtls.c
    ${AMAZON_CORE_PKCS11_DIR}/source/core_pkcs11.c
    ${AMAZON_CORE_PKCS11_DIR}/source/core_pki_utils.c
)

# device defender
ameba_list_append(private_sources
    ${AMAZON_DEVICE_DEFENDER_DIR}/source/defender.c
)

# device shadow
ameba_list_append(private_sources
    ${AMAZON_DEVICE_SHADOW_DIR}/source/shadow.c
)

# jobs_for_aws
ameba_list_append(private_sources
    ${AMAZON_JOBS_DIR}/source/jobs.c
    ${AMAZON_JOBS_DIR}/source/otaJobParser/job_parser.c
    ${AMAZON_JOBS_DIR}/source/otaJobParser/ota_job_handler.c
)

# ota_for_aws
ameba_list_append(private_sources
    ${AMAZON_OTA_DIR}/source/portable/os/ota_os_freertos.c
    ${AMAZON_OTA_DIR}/source/ota.c
    ${AMAZON_OTA_DIR}/source/ota_base64.c
    ${AMAZON_OTA_DIR}/source/ota_cbor.c
    ${AMAZON_OTA_DIR}/source/ota_http.c
    ${AMAZON_OTA_DIR}/source/ota_interface.c
    ${AMAZON_OTA_DIR}/source/ota_mqtt.c
)

# mbedtls_utils
ameba_list_append(private_sources
    ${AMAZON_THIRD_PARTY_DIR}/mbedtls_utils/mbedtls_error.c
    ${AMAZON_THIRD_PARTY_DIR}/mbedtls_utils/mbedtls_utils.c
)

# mqtt_file_streams_for_aws
ameba_list_append(private_sources
    ${AMAZON_MQTT_FILE_STREAMS_DIR}/source/MQTTFileDownloader.c
    ${AMAZON_MQTT_FILE_STREAMS_DIR}/source/MQTTFileDownloader_cbor.c
    ${AMAZON_MQTT_FILE_STREAMS_DIR}/source/MQTTFileDownloader_base64.c
)
