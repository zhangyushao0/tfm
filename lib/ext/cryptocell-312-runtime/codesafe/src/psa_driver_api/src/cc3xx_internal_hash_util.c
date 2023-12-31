/*
 * Copyright (c) 2021-2023, Arm Limited. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 *
 */

/** \file cc3xx_internal_hash_util.c
 *
 * This file contains the implementation of the internal utility functions used
 * to convert Hash types between PSA and low-level CC driver format
 *
 */

#include "psa/crypto.h"
#include "cc_ecpki_types.h"
#include "cc_rsa_types.h"
#include "cc_pal_log.h"

/* To be able to include the PSA style configuration */
#include "mbedtls/build_info.h"

/** \defgroup internal_hash_util Internal ECC utility functions
 *
 *  Internal functions required to provide utilities for handling hash type
 *  conversions
 *
 *  @{
 */
psa_status_t cc3xx_psa_hash_mode_to_cc_hash_mode(psa_algorithm_t alg,
                                                 bool performHashing,
                                                 void *hash_mode)
{
    psa_algorithm_t hash_alg;
#if defined(PSA_WANT_ALG_RSA_OAEP)
    if (PSA_ALG_IS_RSA_OAEP(alg)) {
        hash_alg = PSA_ALG_RSA_OAEP_GET_HASH(alg);
    } else
#endif /* PSA_WANT_ALG_RSA_OAEP */
    if (PSA_ALG_IS_HASH_AND_SIGN(alg)) {
        hash_alg = PSA_ALG_SIGN_GET_HASH(alg);
    } else
#if defined(PSA_WANT_ALG_RSA_PKCS1V15_SIGN_RAW)
    if (alg == PSA_ALG_RSA_PKCS1V15_SIGN_RAW) {
        *(CCRsaHashOpMode_t *)hash_mode = CC_RSA_HASH_NO_HASH_mode;
        return PSA_SUCCESS;
    } else
#endif /* PSA_WANT_ALG_RSA_PKCS1V15_SIGN_RAW */
    {
        CC_PAL_LOG_ERR("Algorithm 0x%x is not OAEP or HASH-AND-SIGN", alg);
        return PSA_ERROR_INVALID_ARGUMENT;
    }

    bool is_ecdsa = PSA_ALG_IS_ECDSA(alg);
    if (!is_ecdsa) {
        if (! (PSA_ALG_IS_RSA_PKCS1V15_SIGN(alg) ||
               PSA_ALG_IS_RSA_PSS(alg) ||
               PSA_ALG_IS_RSA_OAEP(alg)) ) {
            CC_PAL_LOG_ERR("Algorithm 0x%x is not ECDSA or RSA", alg);
            return PSA_ERROR_INVALID_ARGUMENT;
        }
    }

    switch (hash_alg) {
#if defined(PSA_WANT_ALG_SHA_1)
    case PSA_ALG_SHA_1:

        if (is_ecdsa) {
            *(CCEcpkiHashOpMode_t *)hash_mode =
                performHashing ? CC_ECPKI_HASH_SHA1_mode
                               : CC_ECPKI_AFTER_HASH_SHA1_mode;
        } else {
            *(CCRsaHashOpMode_t *)hash_mode =
                performHashing ? CC_RSA_HASH_SHA1_mode : CC_RSA_After_SHA1_mode;
        }
        break;
#endif /* PSA_WANT_ALG_SHA_1 */
#if defined(PSA_WANT_ALG_SHA_224)
    case PSA_ALG_SHA_224:

        if (is_ecdsa) {
            *(CCEcpkiHashOpMode_t *)hash_mode =
                performHashing ? CC_ECPKI_HASH_SHA224_mode
                               : CC_ECPKI_AFTER_HASH_SHA224_mode;
        } else {
            *(CCRsaHashOpMode_t *)hash_mode = performHashing
                                                  ? CC_RSA_HASH_SHA224_mode
                                                  : CC_RSA_After_SHA224_mode;
        }
        break;
#endif /* PSA_WANT_ALG_SHA_224 */
#if defined(PSA_WANT_ALG_SHA_256)
    case PSA_ALG_SHA_256:

        if (is_ecdsa) {
            *(CCEcpkiHashOpMode_t *)hash_mode =
                performHashing ? CC_ECPKI_HASH_SHA256_mode
                               : CC_ECPKI_AFTER_HASH_SHA256_mode;
        } else {
            *(CCRsaHashOpMode_t *)hash_mode = performHashing
                                                  ? CC_RSA_HASH_SHA256_mode
                                                  : CC_RSA_After_SHA256_mode;
        }
        break;
#endif /* PSA_WANT_ALG_SHA_256 */
#if defined(PSA_WANT_ALG_SHA_384)
    case PSA_ALG_SHA_384:
#endif /* PSA_WANT_ALG_SHA_384 */
#if defined(PSA_WANT_ALG_SHA_512)
    case PSA_ALG_SHA_512:
#endif /* PSA_WANT_ALG_SHA_512 */
    default:

        if (is_ecdsa) {
            *(CCEcpkiHashOpMode_t *)hash_mode = CC_ECPKI_HASH_OpModeLast;
        } else {
            *(CCRsaHashOpMode_t *)hash_mode = CC_RSA_HASH_OpModeLast;
        }
        CC_PAL_LOG_ERR("Extracted hash_alg 0x%x is not valid", hash_alg);
        return PSA_ERROR_INVALID_ARGUMENT;
    }

    return PSA_SUCCESS;
}
/** @} */ // end of internal_hash_util
