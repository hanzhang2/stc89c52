;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module car
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _move_PARM_4
	.globl _move_PARM_3
	.globl _move_PARM_2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _move
	.globl _Trace
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_move_PARM_2:
	.ds 1
_move_PARM_3:
	.ds 1
_move_PARM_4:
	.ds 1
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'move'
;------------------------------------------------------------
;b                         Allocated with name '_move_PARM_2'
;c                         Allocated with name '_move_PARM_3'
;d                         Allocated with name '_move_PARM_4'
;a                         Allocated to registers 
;------------------------------------------------------------
;	../../car/car.c:3: int move(u8 a,u8 b,u8 c,u8 d){
;	-----------------------------------------
;	 function move
;	-----------------------------------------
_move:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_pwm1,dpl
;	../../car/car.c:5: pwm2=b;
	mov	_pwm2,_move_PARM_2
;	../../car/car.c:6: if(c=='z'){
	mov	a,#0x7a
	cjne	a,_move_PARM_3,00102$
;	../../car/car.c:7: IN1 = 1;
;	assignBit
	setb	_P1_0
;	../../car/car.c:8: IN2 = 0;
;	assignBit
	clr	_P1_1
00102$:
;	../../car/car.c:10: if(c=='f'){
	mov	a,#0x66
	cjne	a,_move_PARM_3,00104$
;	../../car/car.c:11: IN1 = 0;
;	assignBit
	clr	_P1_0
;	../../car/car.c:12: IN2 = 1;
;	assignBit
	setb	_P1_1
00104$:
;	../../car/car.c:14: if(d=='z'){
	mov	a,#0x7a
	cjne	a,_move_PARM_4,00106$
;	../../car/car.c:15: IN3 = 1;
;	assignBit
	setb	_P1_2
;	../../car/car.c:16: IN4 = 0;
;	assignBit
	clr	_P1_3
00106$:
;	../../car/car.c:18: if(d=='f'){
	mov	a,#0x66
	cjne	a,_move_PARM_4,00108$
;	../../car/car.c:19: IN3 = 0;
;	assignBit
	clr	_P1_2
;	../../car/car.c:20: IN4 = 1;
;	assignBit
	setb	_P1_3
00108$:
;	../../car/car.c:22: return 0;
	mov	dptr,#0x0000
;	../../car/car.c:23: }	
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Trace'
;------------------------------------------------------------
;flag                      Allocated to registers r7 
;------------------------------------------------------------
;	../../car/car.c:25: void Trace(){													           
;	-----------------------------------------
;	 function Trace
;	-----------------------------------------
_Trace:
;	../../car/car.c:26: u8 flag=0;
	mov	r7,#0x00
;	../../car/car.c:27: if((!track1==0)&&(!track2==0)&&(!track3==0)&&(!track4==0)){
	jnb	_P2_0,00102$
	jnb	_P2_1,00102$
	jnb	_P2_2,00102$
	jnb	_P2_3,00102$
;	../../car/car.c:28: flag=1;										 
	mov	r7,#0x01
00102$:
;	../../car/car.c:30: if((!track1==0)&&(!track2==0)&&(!track3==1)&&(!track4==0)){	  		  
	jnb	_P2_0,00107$
	jnb	_P2_1,00107$
	jb	_P2_2,00107$
	jnb	_P2_3,00107$
;	../../car/car.c:31: flag=2;										 
	mov	r7,#0x02
00107$:
;	../../car/car.c:33: if((!track1==0)&&(!track2==1)&&(!track3==0)&&(!track4==0)){	  		 
	jnb	_P2_0,00112$
	jb	_P2_1,00112$
	jnb	_P2_2,00112$
	jnb	_P2_3,00112$
;	../../car/car.c:34: flag=3;										 
	mov	r7,#0x03
00112$:
;	../../car/car.c:36: if((!track1==1)&&(!track2==0)&&(!track3==0)&&(!track4==0)){
	jb	_P2_0,00117$
	jnb	_P2_1,00117$
	jnb	_P2_2,00117$
	jnb	_P2_3,00117$
;	../../car/car.c:37: flag=4;										 
	mov	r7,#0x04
00117$:
;	../../car/car.c:39: if((!track1==0)&&(!track2==0)&&(!track3==0)&&(!track4==1)){
	jnb	_P2_0,00122$
	jnb	_P2_1,00122$
	jnb	_P2_2,00122$
	jb	_P2_3,00122$
;	../../car/car.c:40: flag=5;										 
	mov	r7,#0x05
00122$:
;	../../car/car.c:42: if((!track1==1)&&(!track2==1)&&(!track3==1)&&(!track4==1)){
	jb	_P2_0,00127$
	jb	_P2_1,00127$
	jb	_P2_2,00127$
	jb	_P2_3,00127$
;	../../car/car.c:43: flag=6;										 
	mov	r7,#0x06
00127$:
;	../../car/car.c:45: if((!track1==0)&&(!track2==0)&&(!track3==1)&&(!track4==1)){
	jnb	_P2_0,00132$
	jnb	_P2_1,00132$
	jb	_P2_2,00132$
	jb	_P2_3,00132$
;	../../car/car.c:46: flag=7;										 
	mov	r7,#0x07
00132$:
;	../../car/car.c:48: if((!track1==0)&&(!track2==1)&&(!track3==1)&&(!track4==1)){
	jnb	_P2_0,00137$
	jb	_P2_1,00137$
	jb	_P2_2,00137$
	jb	_P2_3,00137$
;	../../car/car.c:49: flag=8;										 
	mov	r7,#0x08
00137$:
;	../../car/car.c:51: switch(flag){
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00316$
	ljmp	00148$
00316$:
	mov	a,r7
	add	a,#(00317$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00318$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00317$:
	.db	00148$
	.db	00141$
	.db	00148$
	.db	00142$
	.db	00143$
	.db	00144$
	.db	00145$
	.db	00146$
	.db	00147$
00318$:
	.db	00148$>>8
	.db	00141$>>8
	.db	00148$>>8
	.db	00142$>>8
	.db	00143$>>8
	.db	00144$>>8
	.db	00145$>>8
	.db	00146$>>8
	.db	00147$>>8
;	../../car/car.c:52: case(1):move(80,80,'f','z');break;							
00141$:
	mov	_move_PARM_2,#0x50
	mov	_move_PARM_3,#0x66
	mov	_move_PARM_4,#0x7a
	mov	dpl,#0x50
;	../../car/car.c:53: case(3):move(0,80,'f','z');break;                 
	ljmp	_move
00142$:
	mov	_move_PARM_2,#0x50
	mov	_move_PARM_3,#0x66
	mov	_move_PARM_4,#0x7a
	mov	dpl,#0x00
;	../../car/car.c:54: case(4):move(0,80,'f','z');break;
	ljmp	_move
00143$:
	mov	_move_PARM_2,#0x50
	mov	_move_PARM_3,#0x66
	mov	_move_PARM_4,#0x7a
	mov	dpl,#0x00
;	../../car/car.c:55: case(5):move(50 ,0,'f','z');break;
	ljmp	_move
00144$:
	mov	_move_PARM_2,#0x00
	mov	_move_PARM_3,#0x66
	mov	_move_PARM_4,#0x7a
	mov	dpl,#0x32
;	../../car/car.c:56: case(6):move(0,0,'f','z');break;
	ljmp	_move
00145$:
	mov	_move_PARM_2,#0x00
	mov	_move_PARM_3,#0x66
	mov	_move_PARM_4,#0x7a
	mov	dpl,#0x00
;	../../car/car.c:57: case(7):move(80,80,'f','z');break;
	ljmp	_move
00146$:
	mov	_move_PARM_2,#0x50
	mov	_move_PARM_3,#0x66
	mov	_move_PARM_4,#0x7a
	mov	dpl,#0x50
;	../../car/car.c:58: case(8):move(0,0,'f','z');break;
	ljmp	_move
00147$:
	mov	_move_PARM_2,#0x00
	mov	_move_PARM_3,#0x66
	mov	_move_PARM_4,#0x7a
	mov	dpl,#0x00
;	../../car/car.c:59: default:move(80,80,'f','z');break;
	ljmp	_move
00148$:
	mov	_move_PARM_2,#0x50
	mov	_move_PARM_3,#0x66
	mov	_move_PARM_4,#0x7a
	mov	dpl,#0x50
;	../../car/car.c:60: }
;	../../car/car.c:61: }
	ljmp	_move
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
