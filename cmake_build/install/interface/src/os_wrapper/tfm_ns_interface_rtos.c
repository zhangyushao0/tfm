/*
 * Copyright (c) 2017-2021, Arm Limited. All rights reserved.
 * Copyright (c) 2023 Cypress Semiconductor Corporation (an Infineon company)
 * or an affiliate of Cypress Semiconductor Corporation. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 *
 */

/* This file provides implementation of TF-M NS os wrapper functions for the
 * RTOS use case. This implementation provides multithread safety, so it
 * can be used in RTOS environment.
 */

#include <stdint.h>

#include "os_wrapper/mutex.h"
#include "FreeRTOS.h"
#include "semphr.h"
#include "tfm_ns_interface.h"

/**
 * \brief the ns_lock ID
 */
static SemaphoreHandle_t ns_lock_handle;
int32_t tfm_ns_interface_dispatch(veneer_fn fn,
                                  uint32_t arg0, uint32_t arg1,
                                  uint32_t arg2, uint32_t arg3)
{
    int32_t result;

    /* TFM request protected by NS lock */
    while (xSemaphoreTake(ns_lock_handle, portMAX_DELAY) != pdPASS)
    {
    }

    result = fn(arg0, arg1, arg2, arg3);

    while (xSemaphoreGive(ns_lock_handle) != pdPASS)
    {
    }

    return result;
}

uint32_t tfm_ns_interface_init(void)
{
    void *handle;

    handle = xSemaphoreCreateMutex();
    if (!handle)
    {
        return OS_WRAPPER_ERROR;
    }

    ns_lock_handle = handle;
    return OS_WRAPPER_SUCCESS;
}
