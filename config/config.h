#ifndef __CONFIG__H
#define __CONFIG__H

#ifdef IDE_VSCODE
#include <keil.h>
#else
#include <at89x52.h>
#endif


typedef unsigned char u8;
typedef unsigned int u16;

#define _nop_ __asm nop __endasm

#define FreqTime 1.085 // 12/11.0592


void DelayMs(u16 time);
void DelayUs(u16 i);

#endif