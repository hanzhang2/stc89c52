#ifndef __INTERRUPT__H
#define __INTERRUPT__H

#include "../config/config.h"

void EXT0Init();
void EXT0Func() __interrupt 0;

#endif