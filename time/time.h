#ifndef __TIME__H
#define __TIME__H


#include "../config/config.h"

extern u8 pwm1;
extern u8 pwm2;
extern u8 speed;

void Timer0Init();
void Timer0() __interrupt 1  ;

#endif