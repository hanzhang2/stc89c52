#ifndef __CAR__H
#define __CAR__H

#include "../time/time.h"
#include "../config/config.h"

#define ENA  P1_5				  	  
#define IN1  P1_0
#define IN2  P1_1
#define IN3  P1_2
#define IN4  P1_3
#define ENB  P1_6


#define track1  P2_0					  
#define track2  P2_1
#define track3  P2_2
#define track4  P2_3

void Trace();
int move(u8 a,u8 b,u8 c,u8 d);

#endif