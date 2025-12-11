ameba_list_append(private_sources
    ${AMAZON_THIRD_PARTY_DIR}/mbedtls_rtk/net_sockets.c
    ${AMAZON_MBEDTLS_DIR}/library/aes.c
    ${AMAZON_MBEDTLS_DIR}/library/aesni.c
    #${AMAZON_MBEDTLS_DIR}/library/arc4.c #3.6
    ${AMAZON_MBEDTLS_DIR}/library/aria.c
    ${AMAZON_MBEDTLS_DIR}/library/asn1parse.c
    ${AMAZON_MBEDTLS_DIR}/library/asn1write.c
    ${AMAZON_MBEDTLS_DIR}/library/base64.c
    ${AMAZON_MBEDTLS_DIR}/library/bignum.c
    ${AMAZON_MBEDTLS_DIR}/library/bignum_core.c #3.6
    ${AMAZON_MBEDTLS_DIR}/library/block_cipher.c #3.6
    #${AMAZON_MBEDTLS_DIR}/library/blowfish.c #3.6
    ${AMAZON_MBEDTLS_DIR}/library/camellia.c
    ${AMAZON_MBEDTLS_DIR}/library/ccm.c
    #${AMAZON_MBEDTLS_DIR}/library/certs.c #3.6
    ${AMAZON_MBEDTLS_DIR}/library/chacha20.c
    ${AMAZON_MBEDTLS_DIR}/library/chachapoly.c
    ${AMAZON_MBEDTLS_DIR}/library/cipher.c
    ${AMAZON_MBEDTLS_DIR}/library/cipher_wrap.c
    ${AMAZON_MBEDTLS_DIR}/library/cmac.c
    ${AMAZON_MBEDTLS_DIR}/library/constant_time.c
    ${AMAZON_MBEDTLS_DIR}/library/ctr_drbg.c
    ${AMAZON_MBEDTLS_DIR}/library/debug.c
    ${AMAZON_MBEDTLS_DIR}/library/des.c
    ${AMAZON_MBEDTLS_DIR}/library/dhm.c
    ${AMAZON_MBEDTLS_DIR}/library/ecdh.c
    ${AMAZON_MBEDTLS_DIR}/library/ecdsa.c
    ${AMAZON_MBEDTLS_DIR}/library/ecjpake.c
    ${AMAZON_MBEDTLS_DIR}/library/ecp.c
    ${AMAZON_MBEDTLS_DIR}/library/ecp_curves.c
    ${AMAZON_MBEDTLS_DIR}/library/entropy.c
    ${AMAZON_MBEDTLS_DIR}/library/entropy_poll.c
    ${AMAZON_MBEDTLS_DIR}/library/error.c
    ${AMAZON_MBEDTLS_DIR}/library/gcm.c
    #${AMAZON_MBEDTLS_DIR}/library/havege.c
    ${AMAZON_MBEDTLS_DIR}/library/hkdf.c
    ${AMAZON_MBEDTLS_DIR}/library/hmac_drbg.c
    ${AMAZON_MBEDTLS_DIR}/library/md.c
    #${AMAZON_MBEDTLS_DIR}/library/md2.c #3.6
    #${AMAZON_MBEDTLS_DIR}/library/md4.c #3.6
    ${AMAZON_MBEDTLS_DIR}/library/md5.c
    ${AMAZON_MBEDTLS_DIR}/library/memory_buffer_alloc.c
    ${AMAZON_MBEDTLS_DIR}/library/mps_reader.c #3.6
    ${AMAZON_MBEDTLS_DIR}/library/mps_trace.c #3.6
    ${AMAZON_MBEDTLS_DIR}/library/nist_kw.c
    ${AMAZON_MBEDTLS_DIR}/library/oid.c
    ${AMAZON_MBEDTLS_DIR}/library/padlock.c
    ${AMAZON_MBEDTLS_DIR}/library/pem.c
    ${AMAZON_MBEDTLS_DIR}/library/pk.c
    ${AMAZON_MBEDTLS_DIR}/library/pk_ecc.c #3.6
    ${AMAZON_MBEDTLS_DIR}/library/pk_wrap.c
    #${AMAZON_MBEDTLS_DIR}/library/pkcs11.c #3.6
    ${AMAZON_MBEDTLS_DIR}/library/pkcs12.c
    ${AMAZON_MBEDTLS_DIR}/library/pkcs5.c
    ${AMAZON_MBEDTLS_DIR}/library/pkparse.c
    ${AMAZON_MBEDTLS_DIR}/library/pkwrite.c
    ${AMAZON_MBEDTLS_DIR}/library/platform.c
    ${AMAZON_MBEDTLS_DIR}/library/platform_util.c
    ${AMAZON_MBEDTLS_DIR}/library/poly1305.c

    ${AMAZON_MBEDTLS_DIR}/library/ripemd160.c
    ${AMAZON_MBEDTLS_DIR}/library/rsa.c
    ${AMAZON_MBEDTLS_DIR}/library/rsa_alt_helpers.c
    #${AMAZON_MBEDTLS_DIR}/library/rsa_internal.c #3.6
    ${AMAZON_MBEDTLS_DIR}/library/sha1.c 
    ${AMAZON_MBEDTLS_DIR}/library/sha3.c #3.6
    ${AMAZON_MBEDTLS_DIR}/library/sha256.c
    ${AMAZON_MBEDTLS_DIR}/library/sha512.c
    ${AMAZON_MBEDTLS_DIR}/library/ssl_cache.c
    ${AMAZON_MBEDTLS_DIR}/library/ssl_ciphersuites.c
    #${AMAZON_MBEDTLS_DIR}/library/ssl_cli.c
    ${AMAZON_MBEDTLS_DIR}/library/ssl_client.c #3.6
    ${AMAZON_MBEDTLS_DIR}/library/ssl_cookie.c
    ${AMAZON_MBEDTLS_DIR}/library/ssl_msg.c
    #${AMAZON_MBEDTLS_DIR}/library/ssl_srv.c
    ${AMAZON_MBEDTLS_DIR}/library/ssl_ticket.c
    ${AMAZON_MBEDTLS_DIR}/library/ssl_tls.c
    ${AMAZON_MBEDTLS_DIR}/library/ssl_tls12_client.c
    ${AMAZON_MBEDTLS_DIR}/library/ssl_tls12_client.c
    ${AMAZON_MBEDTLS_DIR}/library/ssl_tls13_client.c
    ${AMAZON_MBEDTLS_DIR}/library/ssl_tls13_generic.c
    ${AMAZON_MBEDTLS_DIR}/library/ssl_tls13_keys.c
    ${AMAZON_MBEDTLS_DIR}/library/ssl_tls13_server.c
    ${AMAZON_MBEDTLS_DIR}/library/threading.c
    ${AMAZON_MBEDTLS_DIR}/library/timing.c
    ${AMAZON_MBEDTLS_DIR}/library/version.c
    ${AMAZON_MBEDTLS_DIR}/library/version_features.c
    ${AMAZON_MBEDTLS_DIR}/library/x509.c
    ${AMAZON_MBEDTLS_DIR}/library/x509_create.c
    ${AMAZON_MBEDTLS_DIR}/library/x509_crl.c
    ${AMAZON_MBEDTLS_DIR}/library/x509_crt.c
    ${AMAZON_MBEDTLS_DIR}/library/x509_csr.c
    ${AMAZON_MBEDTLS_DIR}/library/x509write_crt.c
    ${AMAZON_MBEDTLS_DIR}/library/x509write_csr.c
    #${AMAZON_MBEDTLS_DIR}/library/xtea.c

    # ${AMAZON_THIRD_PARTY_DIR}/mbedtls_utils/mbedtls_error.c
    # ${AMAZON_THIRD_PARTY_DIR}/mbedtls_utils/mbedtls_utils.c

)
