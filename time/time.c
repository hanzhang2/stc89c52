#include "time.h"
#include "../car/car.h"

u8 pwm1;
u8 pwm2;
u8 speed;

void Timer0Init(){                   
	TMOD |=0x01;	  
	TH0=(65536-100)/256;		
	TL0=(65636-100)%256;
	ET0=1;
	EA=1;
	TR0=1;
}

void Timer0() __interrupt 1   
{
	TH0=(65536-(u8)(100/FreqTime))/256;
	TL0=(65536-(u8)(100/FreqTime))%256;
	if(speed<pwm1){
		ENA = 1;
	} else {		
		ENA = 0;
	}
	if(speed<pwm2){
		ENB = 1;
	} else {
		ENB = 0;
	}
	++speed;
	if(speed>=50){	
		speed=0;
	}
}

