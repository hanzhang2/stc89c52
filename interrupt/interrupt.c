#include "interrupt.h"

void EXT0Init(){
    EX0 = 1;
    IT0 = 1;
    IE0 = 0;
    EA  = 1;
}

void EXT0Func() __interrupt 0
{
    
}