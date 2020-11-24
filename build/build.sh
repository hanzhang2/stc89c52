#!/bin/sh
cd sources
sdcc -c ../../main.c
sdcc -c ../../config/config.c
sdcc -c ../../time/time.c
sdcc -c ../../car/car.c
sdcc -c ../../interrupt/interrupt.c
sdcc main.rel config.rel time.rel car.rel interrupt.rel
packihx main.ihx > ../main.hex
#sdcc -c main.c
#sdcc -c delay.c
#sdcc main.rel delay.rel