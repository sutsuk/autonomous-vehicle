#include <stdbool.h>
#include <stdlib.h>
#include "xgpio.h"
#include "xgpiops.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xparameters.h"

#define MIO07 7
#define MIO50 50
#define MIO51 51
#define XGPIOPS_INPUT 0
#define XGPIOPS_OUTPUT 1

int main(void) {
  XGpioPs gpiops;
  XGpioPs_Config *gpiops_cfg = XGpioPs_LookupConfig(XPAR_XGPIOPS_0_BASEADDR);
  if (XGpioPs_CfgInitialize(&gpiops, gpiops_cfg, gpiops_cfg->BaseAddr) != XST_SUCCESS) {
    xil_printf("XGpioPs Initialize Error\r\n");
    return 1;
  }
  XGpioPs_SetDirectionPin(&gpiops, MIO07, XGPIOPS_OUTPUT);
  XGpioPs_SetDirectionPin(&gpiops, MIO50, XGPIOPS_INPUT);
  XGpioPs_SetDirectionPin(&gpiops, MIO51, XGPIOPS_INPUT);
  XGpioPs_SetOutputEnablePin(&gpiops, MIO07, XGPIOPS_OUTPUT);
  XGpioPs_SetOutputEnablePin(&gpiops, MIO50, XGPIOPS_INPUT);
  XGpioPs_SetOutputEnablePin(&gpiops, MIO51, XGPIOPS_INPUT);
  u32 *ps_gpio0 = (u32 *)(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET);
  u32 *ps_gpio1 = (u32 *)(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA2_OFFSET);
  bool run = true;
  u32 btn0, btn1, led, ps_led;
  while (run) {
    btn0 = XGpioPs_ReadPin(&gpiops, MIO50);
    btn1 = XGpioPs_ReadPin(&gpiops, MIO51);
    led = 0;
    if (btn0 == 1) {
      led += 4;
    }
    if (btn1 == 1) {
      led += 8;
    }
    *ps_gpio1 = led;
    if (*ps_gpio0 & 15) {
      ps_led = 1;
    } else {
      ps_led = 0;
    }
    XGpioPs_WritePin(&gpiops, MIO07, ps_led);
    if (btn0 == 1 && btn1 == 1) {
      run = 0;
    }
  }
  xil_printf("exit\r\n");
  return 0;
}

