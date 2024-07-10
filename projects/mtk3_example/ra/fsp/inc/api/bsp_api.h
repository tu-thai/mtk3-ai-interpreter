/*
* Copyright (c) 2020 - 2024 Renesas Electronics Corporation and/or its affiliates
*
* SPDX-License-Identifier: BSD-3-Clause
*/

#ifndef BSP_API_H
#define BSP_API_H

/***********************************************************************************************************************
 * Includes   <System Includes> , "Project Includes"
 **********************************************************************************************************************/

/* FSP Common Includes. */
#include "fsp_common_api.h"

/* Gets MCU configuration information. */
#include "bsp_cfg.h"

#if defined(__GNUC__) && !defined(__ARMCC_VERSION)

/* Store warning settings for 'conversion' and 'sign-conversion' to as specified on command line. */
 #pragma GCC diagnostic push

/* CMSIS-CORE currently generates 2 warnings when compiling with GCC. One in core_cmInstr.h and one in core_cm4_simd.h.
 * We are not modifying these files so we will ignore these warnings temporarily. */
 #pragma GCC diagnostic ignored "-Wconversion"
 #pragma GCC diagnostic ignored "-Wsign-conversion"
#endif

/* Vector information for this project. This is generated by the tooling. */
#include "../../src/bsp/mcu/all/bsp_exceptions.h"
#include "vector_data.h"

/* CMSIS-CORE Renesas Device Files. Must come after bsp_feature.h, which is included in bsp_cfg.h. */
#include "../../src/bsp/cmsis/Device/RENESAS/Include/renesas.h"
#include "../../src/bsp/cmsis/Device/RENESAS/Include/system.h"

#if defined(__GNUC__) && !defined(__ARMCC_VERSION)

/* Restore warning settings for 'conversion' and 'sign-conversion' to as specified on command line. */
 #pragma GCC diagnostic pop
#endif

#if defined(BSP_API_OVERRIDE)
 #include BSP_API_OVERRIDE
#else

/* BSP Common Includes. */
 #include "../../src/bsp/mcu/all/bsp_common.h"

/* BSP MCU Specific Includes. */
 #include "../../src/bsp/mcu/all/bsp_register_protection.h"
 #include "../../src/bsp/mcu/all/bsp_irq.h"
 #include "../../src/bsp/mcu/all/bsp_io.h"
 #include "../../src/bsp/mcu/all/bsp_group_irq.h"
 #include "../../src/bsp/mcu/all/bsp_clocks.h"
 #include "../../src/bsp/mcu/all/bsp_module_stop.h"
 #include "../../src/bsp/mcu/all/bsp_security.h"

/* Factory MCU information. */
 #include "../../inc/fsp_features.h"

/* BSP Common Includes (Other than bsp_common.h) */
 #include "../../src/bsp/mcu/all/bsp_delay.h"
 #include "../../src/bsp/mcu/all/bsp_mcu_api.h"

#endif

/** Common macro for FSP header files. There is also a corresponding FSP_FOOTER macro at the end of this file. */
FSP_HEADER

/***********************************************************************************************************************
 * Typedef definitions
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * Exported global variables
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * Exported global functions (to be accessed by other files)
 **********************************************************************************************************************/

/*******************************************************************************************************************//**
 * @addtogroup BSP_MCU
 * @{
 **********************************************************************************************************************/

fsp_err_t R_FSP_VersionGet(fsp_pack_version_t * const p_version);

/** @} (end addtogroup BSP_MCU) */

/** Common macro for FSP header files. There is also a corresponding FSP_HEADER macro at the top of this file. */
FSP_FOOTER

#endif
