#ifndef KEIL_H
#define KEIL_H

#define code 
#define __sfr //code//


/* BYTE addressable registers */
char  P0          ;
char SP          ;
char  DPL         ;
char  DPH         ;
char  PCON        ;
char  TCON        ;
char  TMOD        ;
char  TL0         ;
char  TL1         ;
char  TH0         ;
char  TH1         ;
char  P1          ;
char  SCON        ;
char  SBUF        ;
char  P2          ;
char IE          ;
char  P3          ;
char  IP          ;
char  T2CON       ;
char  T2MOD       ;
char  RCAP2L      ;
char  RCAP2H      ;
char  TL2         ;
char  TH2         ;
char  PSW         ;
char  ACC         ;
char  A           ;
char B           ;


/* BIT addressable registers */
/* P0 */
char  P0_0       ;
char  P0_1       ;
char  P0_2       ;
char P0_3       ;
char  P0_4       ;
char  P0_5       ;
char P0_6       ;
char P0_7       ;

char  P1_0       ;
char  P1_1       ;
char  P1_2       ;
char  P1_3       ;
char P1_4       ;
char  P1_5       ;
char  P1_6       ;
char  P1_7       ;

char  P2_0       ;
char  P2_1       ;
char  P2_2       ;
char  P2_3       ;
char  P2_4       ;
char  P2_5       ;
char  P2_6       ;
char  P2_7       ;


/* TCON */
char  IT0        ;
char  IE0        ;
char  IT1        ;
char IE1        ;
char  TR0        ;
char  TF0        ;
char  TR1        ;
char  TF1        ;

/* P1 */


char T2         ;
char T2EX       ;

/* SCON */
char  RI         ;
char TI         ;
char  RB8        ;
char  TB8        ;
char  REN        ;
char  SM2        ;
char  SM1        ;
char  SM0        ;

/* P2 */


/* IE */
char  EX0        ;
char  ET0        ;
char  EX1        ;
char  ET1        ;
char ES         ;
char ET2        ;
char  EA         ;

/* P3 */

char  RXD        ;
char  TXD        ;
char  INT0       ;
char INT1       ;
char T0         ;
char  T1         ;
char WR         ;
char RD         ;

/* IP */ 
char  PX0        ;
char  PT0        ;
char  PX1        ;
char  PT1        ;
char  PS         ;
char  PT2        ;

/* T2CON */


char  CP_RL2     ;
char C_T2       ;
char  TR2        ;
char  EXEN2      ;
char  TCLK       ;
char RCLK       ;
char  EXF2       ;
char TF2        ;

/* PSW */
char P          ;
char FL         ;
char OV         ;
char RS0        ;
char  RS1        ;
char F0         ;
char AC         ;
char  CY         ;


/* BIT definitions for bits that are not directly accessible */
/* PCON bits */
#define IDL             0x01
#define PD              0x02
#define GF0             0x04
#define GF1             0x08
#define SMOD            0x80

#define IDL_            0x01
#define PD_             0x02
#define GF0_            0x04
#define GF1_            0x08
#define SMOD_           0x80

/* TMOD bits */
#define M0_0            0x01
#define M1_0            0x02
#define C_T0            0x04
#define GATE0           0x08
#define M0_1            0x10
#define M1_1            0x20
#define C_T1            0x40
#define GATE1           0x80

#define M0_0_           0x01
#define M1_0_           0x02
#define C_T0_           0x04
#define GATE0_          0x08
#define M0_1_           0x10
#define M1_1_           0x20
#define C_T1_           0x40
#define GATE1_          0x80

#define T0_M0           0x01
#define T0_M1           0x02
#define T0_CT           0x04
#define T0_GATE         0x08
#define T1_M0           0x10
#define T1_M1           0x20
#define T1_CT           0x40
#define T1_GATE         0x80

#define T0_M0_          0x01
#define T0_M1_          0x02
#define T0_CT_          0x04
#define T0_GATE_        0x08
#define T1_M0_          0x10
#define T1_M1_          0x20
#define T1_CT_          0x40
#define T1_GATE_        0x80

#define T0_MASK         0x0F
#define T1_MASK         0xF0

#define T0_MASK_        0x0F
#define T1_MASK_        0xF0

/* T2MOD bits */
#define DCEN            0x01
#define T2OE            0x02

#define DCEN_           0x01
#define T2OE_           0x02


/* Interrupt numbers: address = (number * 8) + 3 */
#define IE0_VECTOR      0       /* 0x03 external interrupt 0 */
#define TF0_VECTOR      1       /* 0x0b timer 0 */
#define IE1_VECTOR      2       /* 0x13 external interrupt 1 */
#define TF1_VECTOR      3       /* 0x1b timer 1 */
#define SI0_VECTOR      4       /* 0x23 serial port 0 */
#define TF2_VECTOR      5       /* 0x2B timer 2 */
#define EX2_VECTOR      5       /* 0x2B external interrupt 2 */
 
#endif
