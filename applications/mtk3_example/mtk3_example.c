#include <tk/tkernel.h>
#include <tm/tmonitor.h>

LOCAL void task_1(INT stacd, void *exinf);  // Task execution function
LOCAL ID tskid_1;  // Task ID number
LOCAL T_CTSK ctsk_1 = {  // Task creation information
  .itskpri = 10,
  .stksz = 1024,
  .task = task_1,
  .tskatr = TA_HLNG | TA_RNG3,
};

LOCAL void task_2(INT stacd, void *exinf);  // Task execution function
LOCAL ID tskid_2;  // Task ID number
LOCAL T_CTSK ctsk_2 = {  // Task creation information
  .itskpri = 10,
  .stksz = 1024,
  .task = task_2,
  .tskatr = TA_HLNG | TA_RNG3,
};

LOCAL void task_1(INT stacd, void *exinf)
{
  while(1) {
    tm_printf((UB*)"task 1\n");
    /* Inverts the LED on the board. */
    out_h(PORT_PODR(6), in_h(PORT_PODR(6))^(1<<0));
    out_h(PORT_PODR(4), in_h(PORT_PODR(4))^(1<<14));
    out_h(PORT_PODR(1), in_h(PORT_PODR(1))^(1<<7));
    tk_dly_tsk(500);
  }
}

LOCAL void task_2(INT stacd, void *exinf)
{
  while(1) {
    tm_printf((UB*)"task 2\n");
    tk_dly_tsk(700);
  }
}

/* usermain function */
EXPORT INT usermain(void)
{
  tm_putstring((UB*)"Start User-main program.\n");

  /* Turn off the LED on the board. */
    out_h(PORT_PODR(6), in_h(PORT_PODR(6))&~(1<<0));
    out_h(PORT_PODR(4), in_h(PORT_PODR(4))&~(1<<14));
    out_h(PORT_PODR(1), in_h(PORT_PODR(1))&~(1<<7));

  /* Create & Start Tasks */
  tskid_1 = tk_cre_tsk(&ctsk_1);
  tk_sta_tsk(tskid_1, 0);

  tskid_2 = tk_cre_tsk(&ctsk_2);
  tk_sta_tsk(tskid_2, 0);

  tk_slp_tsk(TMO_FEVR);

  return 0;
}
