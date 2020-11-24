#include "car.h"

int move(u8 a,u8 b,u8 c,u8 d){
	pwm1=a;
	pwm2=b;
	if(c=='z'){
	IN1 = 1;
	IN2 = 0;
	}
	if(c=='f'){
	IN1 = 0;
	IN2 = 1;
	}
	if(d=='z'){
	IN3 = 1;
	IN4 = 0;
	}
	if(d=='f'){
	IN3 = 0;
	IN4 = 1;
	}
	return 0;
}	

void Trace(){													           
	u8 flag=0;
	if((!track1==0)&&(!track2==0)&&(!track3==0)&&(!track4==0)){
		flag=1;										 
	}
		if((!track1==0)&&(!track2==0)&&(!track3==1)&&(!track4==0)){	  		  
		flag=2;										 
	}
		if((!track1==0)&&(!track2==1)&&(!track3==0)&&(!track4==0)){	  		 
		flag=3;										 
	}
		if((!track1==1)&&(!track2==0)&&(!track3==0)&&(!track4==0)){
		flag=4;										 
	}
		if((!track1==0)&&(!track2==0)&&(!track3==0)&&(!track4==1)){
		flag=5;										 
	}
		if((!track1==1)&&(!track2==1)&&(!track3==1)&&(!track4==1)){
		flag=6;										 
	}
		if((!track1==0)&&(!track2==0)&&(!track3==1)&&(!track4==1)){
		flag=7;										 
	}
		if((!track1==0)&&(!track2==1)&&(!track3==1)&&(!track4==1)){
		flag=8;										 
	}
	switch(flag){
        case(1):move(80,80,'f','z');break;							
        case(3):move(0,80,'f','z');break;                 
        case(4):move(0,80,'f','z');break;
        case(5):move(50 ,0,'f','z');break;
        case(6):move(0,0,'f','z');break;
        case(7):move(80,80,'f','z');break;
        case(8):move(0,0,'f','z');break;
	    default:move(80,80,'f','z');break;
	}
}
