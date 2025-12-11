ameba_list_append(public_includes
    #Use relative path: from current CMakeLists.txt's dir
    ${AMAZON_DIR}
    ${AMAZON_THIRD_PARTY_DIR}
    ${AMAZON_THIRD_PARTY_DIR}/mbedtls_config
    ${AMAZON_THIRD_PARTY_DIR}/mbedtls_utils
)

if(CONFIG_MBEDTLS_AMAZON_DEFINED)
ameba_list_append(public_includes
    #Use relative path: from current CMakeLists.txt's dir
    ${AMAZON_MBEDTLS_DIR}/include
    ${AMAZON_MBEDTLS_DIR}/include/psa
    ${AMAZON_MBEDTLS_DIR}/include/mbedtls
    ${AMAZON_MBEDTLS_DIR}/library
)
endif()
