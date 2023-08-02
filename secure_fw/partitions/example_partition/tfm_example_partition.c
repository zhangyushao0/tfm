/*
 * Copyright (c) 2020-2021, Arm Limited. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 *
 */

#include <stdint.h>

#include "psa/service.h"
#include "psa/crypto.h"
#include "psa_manifest/tfm_example_partition.h"
#include "mpu.h"
// #include "tfm/tfm_spm_services.h"
#include "tfm_plat_test.h"
#include "tfm_sp_log.h"

/**
 * \brief An example service implementation that prints out an argument from the
 *        client and then starts a timer.
 */
static void tfm_example_service(void)
{
    psa_status_t status;
    uint8_t read_buf[32];
    uint8_t write_buf[32];
    psa_msg_t msg;

    /* Retrieve the message corresponding to the example service signal */
    status = psa_get(TFM_EXAMPLE_SERVICE_SIGNAL, &msg);
    if (status != PSA_SUCCESS)
    {
        return;
    }

    /* Decode the message */
    switch (msg.type)
    {
    case PSA_IPC_CONNECT:
    case PSA_IPC_DISCONNECT:
        /* This service does not require any setup or teardown on connect or
         * disconnect, so just reply with success.
         */
        status = PSA_SUCCESS;
        break;
    case PSA_IPC_CALL:

        /* Print arg from client */
        for (int i = 0; i < 1; ++i)
        {
            psa_read(msg.handle, 0, &read_buf, msg.in_size[i]);
            LOG_INFFMT("[Example partition] Service called from client[%d]\r\n", msg.client_id);
            LOG_INFFMT("%s\r\n", read_buf);

            psa_crypto_init();
            psa_hash_operation_t ho = psa_hash_operation_init();
            psa_hash_setup(&ho, PSA_ALG_SHA_256);

            psa_status_t st = psa_hash_update(&ho, (const uint8_t *)&read_buf, msg.in_size[i] - 1);
            int length = 0;
            st = psa_hash_finish(&ho, write_buf, 32, &length);
            if (st == PSA_SUCCESS)
            {
                LOG_INFFMT("Crypto service called successfully, sha256 for the string is:\r\n");
                for (int k = 0; k < length; ++k)
                    LOG_INFFMT("%X", write_buf[k]);
            }
            LOG_INFFMT("\r\n");
            mpu_enable();
        }
        /* Start timer. The interrupt triggered when it expires will be handled
         * by tfm_example_timer_handler().
         */
        // tfm_plat_test_secure_timer_start();
        // LOG_INFFMT("[Example partition] Timer started...\r\n");
        status = PSA_SUCCESS;
        break;
    default:
        /* Invalid message type */
        status = PSA_ERROR_PROGRAMMER_ERROR;
        break;
    }

    /* Reply with the message result status to unblock the client */
    psa_reply(msg.handle, status);
}

/**
 * \brief An example interrupt handler.
 */
static void tfm_example_timer_handler(void)
{
    /* Stop timer */
    // tfm_plat_test_secure_timer_stop();
    /* Inform the SPM that the timer interrupt has been handled */
    psa_eoi(TFM_EXAMPLE_SIGNAL_TIMER_0_IRQ);
}

/**
 * \brief The example partition's entry function.
 */
void tfm_example_partition_main(void)
{
    psa_signal_t signals;
    /* Enable timer IRQ */
    // psa_irq_enable(TFM_EXAMPLE_SIGNAL_TIMER_0_IRQ);

    /* Continually wait for one or more of the partition's RoT Service or
     * interrupt signals to be asserted and then handle the asserted signal(s).
     */
    while (1)
    {
        signals = psa_wait(PSA_WAIT_ANY, PSA_BLOCK);

        if (signals & TFM_EXAMPLE_SERVICE_SIGNAL)
        {
            tfm_example_service();
        }
        if (signals & TFM_EXAMPLE_SIGNAL_TIMER_0_IRQ)
        {
            tfm_example_timer_handler();
        }
    }
}