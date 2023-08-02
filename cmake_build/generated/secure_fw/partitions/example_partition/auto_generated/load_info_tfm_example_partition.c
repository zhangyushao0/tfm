/*
 * Copyright (c) 2021-2022, Arm Limited. All rights reserved.
 * Copyright (c) 2021-2022 Cypress Semiconductor Corporation (an Infineon
 * company) or an affiliate of Cypress Semiconductor Corporation. All rights
 * reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 *
 */

/***********  WARNING: This is an auto-generated file. Do not edit!  ***********/

#include <stdint.h>
#include <stddef.h>
#include "config_tfm.h"
#include "region.h"
#include "region_defs.h"
#include "spm.h"
#include "load/interrupt_defs.h"
#include "load/partition_defs.h"
#include "load/service_defs.h"
#include "load/asset_defs.h"
#include "tfm_peripherals_def.h"
#include "psa_manifest/pid.h"
#include "psa_manifest/sid.h"
#include "psa_manifest/tfm_example_partition.h"

#define TFM_SP_EXAMPLE_NDEPS                                    (1)
#define TFM_SP_EXAMPLE_NSERVS                                   (1)
#if TFM_LVL == 3
#define TFM_SP_EXAMPLE_NASSETS                                  (1 + 1)
#else
#define TFM_SP_EXAMPLE_NASSETS                                  (1)
#endif
#define TFM_SP_EXAMPLE_NIRQS                                    (1)

/* Memory region declaration */
#if TFM_LVL == 3
REGION_DECLARE(Image$$, PT_TFM_SP_EXAMPLE_PRIVATE, _DATA_START$$Base);
REGION_DECLARE(Image$$, PT_TFM_SP_EXAMPLE_PRIVATE, _DATA_END$$Base);
#endif

extern uint8_t tfm_sp_example_stack[];

/* Entrypoint function declaration */
extern void tfm_example_partition_main(void);

/* Interrupt init functions */
extern enum tfm_hal_status_t tfm_timer0_irq_init(void *p_pt,
                                                            const struct irq_load_info_t *p_ildi);

/* partition load info type definition */
struct partition_tfm_sp_example_load_info_t {
    /* common length load data */
    struct partition_load_info_t    load_info;
    /* per-partition variable length load data */
    uintptr_t                       stack_addr;
    uintptr_t                       heap_addr;
    uint32_t                        deps[TFM_SP_EXAMPLE_NDEPS];
    struct service_load_info_t      services[TFM_SP_EXAMPLE_NSERVS];
#if TFM_LVL == 3
    struct asset_desc_t             assets[TFM_SP_EXAMPLE_NASSETS];
#else
    struct asset_desc_t             assets[TFM_SP_EXAMPLE_NASSETS];
#endif
    struct irq_load_info_t          irqs[TFM_SP_EXAMPLE_NIRQS];
} __attribute__((aligned(4)));

/* Partition load, deps, service load data. Put to a dedicated section. */
#if defined(__ICCARM__)
#pragma location = ".part_load_priority_normal"
__root
#endif /* __ICCARM__ */
const struct partition_tfm_sp_example_load_info_t tfm_sp_example_load
    __attribute__((used, section(".part_load_priority_normal"))) = {
    .load_info = {
        .psa_ff_ver                 = 0x0100 | PARTITION_INFO_MAGIC,
        .pid                        = TFM_SP_EXAMPLE,
        .flags                      = 0
                                    | PARTITION_MODEL_IPC
                                    | PARTITION_PRI_NORMAL,
        .entry                      = ENTRY_TO_POSITION(tfm_example_partition_main),
        .stack_size                 = 0x200,
        .heap_size                  = 0,
        .ndeps                      = TFM_SP_EXAMPLE_NDEPS,
        .nservices                  = TFM_SP_EXAMPLE_NSERVS,
        .nassets                    = TFM_SP_EXAMPLE_NASSETS,
        .nirqs                      = TFM_SP_EXAMPLE_NIRQS,
    },
    .stack_addr                     = (uintptr_t)tfm_sp_example_stack,
    .heap_addr                      = 0,
    .deps = {
        TFM_CRYPTO_SID,
    },
    .services = {
        {
            .name_strid             = STRING_PTR_TO_STRID("TFM_EXAMPLE_SERVICE"),
            .sfn                    = 0,
            .signal                 = TFM_EXAMPLE_SERVICE_SIGNAL,

            .sid                    = 0x00000E0,
            .flags                  = 0
                                    | SERVICE_FLAG_NS_ACCESSIBLE
                                    | SERVICE_VERSION_POLICY_STRICT,
            .version                = 1,
        },
    },
#if TFM_LVL == 3
    .assets                         = {
        {
            .mem.start              = (uintptr_t)&REGION_NAME(Image$$, PT_TFM_SP_EXAMPLE_PRIVATE, _DATA_START$$Base),
            .mem.limit              = (uintptr_t)&REGION_NAME(Image$$, PT_TFM_SP_EXAMPLE_PRIVATE, _DATA_END$$Base),
            .attr                   = ASSET_ATTR_READ_WRITE,
        },
        {
            .dev.dev_ref            = PTR_TO_REFERENCE(TFM_PERIPHERAL_TIMER0),
            .attr                   = ASSET_ATTR_NAMED_MMIO
                                    | ASSET_ATTR_READ_WRITE,
        },
    },
#else
    .assets                         = {
        {
            .dev.dev_ref            = PTR_TO_REFERENCE(TFM_PERIPHERAL_TIMER0),
            .attr                   = ASSET_ATTR_NAMED_MMIO
                                    | ASSET_ATTR_READ_WRITE,
        },
    },
#endif
    .irqs = {
        {
            .init = tfm_timer0_irq_init,
            .flih_func = 0,
            .pid = TFM_SP_EXAMPLE,
            .source = TFM_TIMER0_IRQ,
            .signal = TFM_EXAMPLE_SIGNAL_TIMER_0_IRQ,
        },
    },
};

/* Placeholder for partition and service runtime space. Do not reference it. */
#if defined(__ICCARM__)
#pragma location=".bss.part_runtime_priority_normal"
__root
#endif /* __ICCARM__ */
static struct partition_t tfm_sp_example_partition_runtime_item
    __attribute__((used, section(".bss.part_runtime_priority_normal")));
#if defined(__ICCARM__)
#pragma location = ".bss.serv_runtime_priority_normal"
__root
#endif /* __ICCARM__ */
static struct service_t tfm_sp_example_service_runtime_item[TFM_SP_EXAMPLE_NSERVS]
    __attribute__((used, section(".bss.serv_runtime_priority_normal")));