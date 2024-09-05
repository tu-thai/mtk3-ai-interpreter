#include "tk/tkernel.h"
#include "SEGGER_RTT.h"
#include "person_detection.h"

#define RTT_BUFFER_INDEX 0

LOCAL void person_detection_task(INT stacd, void *exinf);
LOCAL void person_detection_input_task(INT stacd, void *exinf);
LOCAL void person_detection_output_task(INT stacd, void *exinf);
LOCAL void person_detection_input_message(int input_class);
LOCAL void person_detection_message(void);

LOCAL ID person_detection_task_id;
LOCAL ID person_detection_input_task_id;
LOCAL ID person_detection_output_task_id;

LOCAL T_CTSK person_detection_task_package =
{
    .itskpri = 1,
    .stksz = 2 * 1024,
    .task = person_detection_task,
    .tskatr = TA_HLNG | TA_RNG3,
};

LOCAL T_CTSK person_detection_input_task_package =
{
    .itskpri = 1,
    .stksz = 256,
    .task = person_detection_input_task,
    .tskatr = TA_HLNG | TA_RNG3,
};

LOCAL T_CTSK person_detection_output_task_package =
{
    .itskpri = 1,
    .stksz = 256,
    .task = person_detection_output_task,
    .tskatr = TA_HLNG | TA_RNG3,
};

LOCAL void person_detection_task(INT stacd, void *exinf)
{
    tk_slp_tsk(TMO_FEVR);
    while (1)
    {
        tk_wup_tsk(person_detection_output_task_id);
        person_detection_message();
        person_detection_run();
        tk_slp_tsk(TMO_FEVR);
    }
}

LOCAL void person_detection_input_task(INT stacd, void *exinf)
{
    while (1)
    {
        tk_wup_tsk(person_detection_task_id);
        int input_class = person_detection_input();
        person_detection_input_message(input_class);
        tk_slp_tsk(TMO_FEVR);
    }
}

LOCAL void person_detection_output_task(INT stacd, void *exinf)
{
    tk_slp_tsk(TMO_FEVR);
    while (1)
    {
        person_detection_output();
        tk_wup_tsk(person_detection_input_task_id);
        tk_slp_tsk(TMO_FEVR);
    }
}

LOCAL void person_detection_input_message(int input_class)
{
    const char* data_class = input_class ? "person data" : "no person data";
    SEGGER_RTT_printf(RTT_BUFFER_INDEX, "Input %s ", data_class);
}

LOCAL void person_detection_message(void)
{
    SEGGER_RTT_printf(RTT_BUFFER_INDEX, "... detecting ... ");
}

EXPORT INT usermain(void)
{
    SEGGER_RTT_printf(RTT_BUFFER_INDEX, RTT_CTRL_CLEAR);
    SEGGER_RTT_printf(RTT_BUFFER_INDEX, "uT-Kernel: Start usermain.\n");

    SEGGER_RTT_printf(RTT_BUFFER_INDEX, "Info: Initialize person detection.\n");
    person_detection_init();

    SEGGER_RTT_printf(RTT_BUFFER_INDEX, "uT-Kernel: Create person_detection_input_task.\n");
    person_detection_input_task_id = tk_cre_tsk(&person_detection_input_task_package);
    tk_sta_tsk(person_detection_input_task_id, 0);

    SEGGER_RTT_printf(RTT_BUFFER_INDEX, "uT-Kernel: Create person_detection_task.\n");
    person_detection_task_id = tk_cre_tsk(&person_detection_task_package);
    tk_sta_tsk(person_detection_task_id, 0);

    SEGGER_RTT_printf(RTT_BUFFER_INDEX, "uT-Kernel: Create person_detection_output_task.\n");
    person_detection_output_task_id = tk_cre_tsk(&person_detection_output_task_package);
    tk_sta_tsk(person_detection_output_task_id, 0);

    tk_slp_tsk(TMO_FEVR);
    return 0;
}
