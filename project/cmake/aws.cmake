# Amazon FreeRTOS Directories
#----------------------------------------#
set(AMAZON_DIR           "${BASEDIR}/component/application/amazon-freertos")
set(AMAZON_CMAKE_DIR     "${AMAZON_DIR}/project/cmake")
set(AMAZON_DEMOS_DIR     "${AMAZON_DIR}/demos")
set(AMAZON_LIBRARIES_DIR "${AMAZON_DIR}/libraries")
set(AMAZON_PORTS_DIR     "${AMAZON_DIR}/ports")
set(AMAZON_TOOLS_DIR     "${AMAZON_DIR}/tools")

# Amazon FreeRTOS libraries Subdirectories
#----------------------------------------#
set(AMAZON_THIRD_PARTY_DIR       "${AMAZON_LIBRARIES_DIR}/3rdparty")
set(AMAZON_MBEDTLS_DIR           "${AMAZON_LIBRARIES_DIR}/3rdparty/mbedtls")
set(AMAZON_TINYCBOR_DIR          "${AMAZON_LIBRARIES_DIR}/3rdparty/tinycbor")

set(AMAZON_LIBRARIES_COMMON_DIR  "${AMAZON_LIBRARIES_DIR}/common")
set(AMAZON_ABSTRACTIONS_DIR      "${AMAZON_LIBRARIES_DIR}/common/abstractions")
set(AMAZON_FREERTOS_PLUS_DIR     "${AMAZON_LIBRARIES_DIR}/common/freertos_plus")
set(AMAZON_LOGGING_DIR           "${AMAZON_LIBRARIES_DIR}/common/logging")
set(AMAZON_C_SDK_DIR             "${AMAZON_LIBRARIES_DIR}/common/c_sdk")

set(AMAZON_BACKOFF_ALGO_DIR      "${AMAZON_LIBRARIES_DIR}/backoffAlgorithm")

set(AMAZON_CORE_HTTP_DIR         "${AMAZON_LIBRARIES_DIR}/coreHTTP")
set(AMAZON_CORE_JSON_DIR         "${AMAZON_LIBRARIES_DIR}/coreJSON")
set(AMAZON_CORE_MQTT_DIR         "${AMAZON_LIBRARIES_DIR}/coreMQTT")
set(AMAZON_CORE_MQTT_AGENT_DIR   "${AMAZON_LIBRARIES_DIR}/coreMQTT-Agent")
set(AMAZON_CORE_PKCS11_DIR       "${AMAZON_LIBRARIES_DIR}/corePKCS11")

set(AMAZON_DEVICE_DEFENDER_DIR   "${AMAZON_LIBRARIES_DIR}/device_defender_for_aws")
set(AMAZON_DEVICE_SHADOW_DIR     "${AMAZON_LIBRARIES_DIR}/device_shadow_for_aws")
set(AMAZON_JOBS_DIR              "${AMAZON_LIBRARIES_DIR}/jobs_for_aws")
set(AMAZON_OTA_DIR               "${AMAZON_LIBRARIES_DIR}/ota_for_aws")
set(AMAZON_MQTT_FILE_STREAMS_DIR "${AMAZON_LIBRARIES_DIR}/mqtt_file_streams_for_aws")

# Amazon FreeRTOS demos Subdirectories
#----------------------------------------#
set(AMAZON_DEMOS_COMMON_DIR            "${AMAZON_DEMOS_DIR}/common")
set(AMAZON_DEMOS_OTA_DIR               "${AMAZON_DEMOS_DIR}/ota")
set(AMAZON_DEMOS_DEVICE_DEFENDER_DIR   "${AMAZON_DEMOS_DIR}/device_defender_for_aws")
set(AMAZON_DEMOS_DEVICE_SHADOW_DIR     "${AMAZON_DEMOS_DIR}/device_shadow_for_aws")
set(AMAZON_DEMOS_JOBS_DIR              "${AMAZON_DEMOS_DIR}/jobs_for_aws")
set(AMAZON_DEMOS_CORE_HTTP_DIR         "${AMAZON_DEMOS_DIR}/coreHTTP")
set(AMAZON_DEMOS_CORE_MQTT_DIR         "${AMAZON_DEMOS_DIR}/coreMQTT")
set(AMAZON_DEMOS_DEV_MODE_KEY_PROV_DIR "${AMAZON_DEMOS_DIR}/dev_mode_key_provisioning")

set(AMAZON_DEMO_ENTRY_DIR              "${AMAZON_DEMOS_DIR}/demo_entry")

# Amazon FreeRTOS example checking
#----------------------------------------#
# List of available Amazon FreeRTOS Examples
set(AMAZON_ALL_EXAMPLES
    "mqtt_mutual_auto"
    "http_mutual_auto"
    "device_shadow"
    "device_defender"
    "ota_over_mqtt"
    "ota_over_mqtt_streams"
)

# Check if example exists in the list
list(FIND AMAZON_ALL_EXAMPLES ${AMAZON_EXAMPLE} AMAZON_EXAMPLE_INDEX)

if(AMAZON_EXAMPLE_INDEX GREATER -1)
    message(STATUS      "'${AMAZON_EXAMPLE}' example is going to be compiled")
else()
    string(REPLACE ";" ", " TIDY_EXAMPLES "${AMAZON_ALL_EXAMPLES}")
    message(FATAL_ERROR "'${AMAZON_EXAMPLE}' example is not available. Available examples: ${TIDY_EXAMPLES}")
endif()

# LwIP configuration
set(LWIP_OPTS_FILE "${BASEDIR}/component/lwip/api/lwipopts.h")
# Check LWIP_DEBUG to set flag for LwIP
file(READ ${LWIP_OPTS_FILE} LWIP_OPTS_CONTENT)
string(REGEX MATCH "(^|\n)[ \t]*#define[ \t]+LWIP_UDP([ \t]|/\\*.*\\*/)+1" LWIP_UDP_ENABLED "${LWIP_OPTS_CONTENT}")
if(LWIP_UDP_ENABLED)
    message(STATUS "LWIP_UDP is set to 1")
    set(CONFIG_LWIP_UDP 1)
else()
    message(STATUS "LWIP_UDP is set to 0")
    set(CONFIG_LWIP_UDP 0)
endif()
