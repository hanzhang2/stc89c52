#include "time/time.h"
#include "car/car.h"
#include "interrupt/interrupt.h"

int main(){
	Timer0Init();
	EXT0Init();
	while(1){
		Trace();
	}
} 