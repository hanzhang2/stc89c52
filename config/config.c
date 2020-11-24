#include "config.h"
void DelayMs(u16 time){
    u8 i,j;
    for(i=0;i<time;i++){
        for(j=0;j<100;j++){
            _nop_;
        }
    }
}

void DelayUs(u16 i){
    while(i--);
}