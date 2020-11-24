                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module car
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _move_PARM_4
                                     12 	.globl _move_PARM_3
                                     13 	.globl _move_PARM_2
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _FL
                                     21 	.globl _P
                                     22 	.globl _TF2
                                     23 	.globl _EXF2
                                     24 	.globl _RCLK
                                     25 	.globl _TCLK
                                     26 	.globl _EXEN2
                                     27 	.globl _TR2
                                     28 	.globl _C_T2
                                     29 	.globl _CP_RL2
                                     30 	.globl _T2CON_7
                                     31 	.globl _T2CON_6
                                     32 	.globl _T2CON_5
                                     33 	.globl _T2CON_4
                                     34 	.globl _T2CON_3
                                     35 	.globl _T2CON_2
                                     36 	.globl _T2CON_1
                                     37 	.globl _T2CON_0
                                     38 	.globl _PT2
                                     39 	.globl _PS
                                     40 	.globl _PT1
                                     41 	.globl _PX1
                                     42 	.globl _PT0
                                     43 	.globl _PX0
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD
                                     51 	.globl _RXD
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _ET2
                                     62 	.globl _ES
                                     63 	.globl _ET1
                                     64 	.globl _EX1
                                     65 	.globl _ET0
                                     66 	.globl _EX0
                                     67 	.globl _P2_7
                                     68 	.globl _P2_6
                                     69 	.globl _P2_5
                                     70 	.globl _P2_4
                                     71 	.globl _P2_3
                                     72 	.globl _P2_2
                                     73 	.globl _P2_1
                                     74 	.globl _P2_0
                                     75 	.globl _SM0
                                     76 	.globl _SM1
                                     77 	.globl _SM2
                                     78 	.globl _REN
                                     79 	.globl _TB8
                                     80 	.globl _RB8
                                     81 	.globl _TI
                                     82 	.globl _RI
                                     83 	.globl _T2EX
                                     84 	.globl _T2
                                     85 	.globl _P1_7
                                     86 	.globl _P1_6
                                     87 	.globl _P1_5
                                     88 	.globl _P1_4
                                     89 	.globl _P1_3
                                     90 	.globl _P1_2
                                     91 	.globl _P1_1
                                     92 	.globl _P1_0
                                     93 	.globl _TF1
                                     94 	.globl _TR1
                                     95 	.globl _TF0
                                     96 	.globl _TR0
                                     97 	.globl _IE1
                                     98 	.globl _IT1
                                     99 	.globl _IE0
                                    100 	.globl _IT0
                                    101 	.globl _P0_7
                                    102 	.globl _P0_6
                                    103 	.globl _P0_5
                                    104 	.globl _P0_4
                                    105 	.globl _P0_3
                                    106 	.globl _P0_2
                                    107 	.globl _P0_1
                                    108 	.globl _P0_0
                                    109 	.globl _B
                                    110 	.globl _A
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _TH2
                                    114 	.globl _TL2
                                    115 	.globl _RCAP2H
                                    116 	.globl _RCAP2L
                                    117 	.globl _T2MOD
                                    118 	.globl _T2CON
                                    119 	.globl _IP
                                    120 	.globl _P3
                                    121 	.globl _IE
                                    122 	.globl _P2
                                    123 	.globl _SBUF
                                    124 	.globl _SCON
                                    125 	.globl _P1
                                    126 	.globl _TH1
                                    127 	.globl _TH0
                                    128 	.globl _TL1
                                    129 	.globl _TL0
                                    130 	.globl _TMOD
                                    131 	.globl _TCON
                                    132 	.globl _PCON
                                    133 	.globl _DPH
                                    134 	.globl _DPL
                                    135 	.globl _SP
                                    136 	.globl _P0
                                    137 	.globl _move
                                    138 	.globl _Trace
                                    139 ;--------------------------------------------------------
                                    140 ; special function registers
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0	=	0x0080
                           000081   145 _SP	=	0x0081
                           000082   146 _DPL	=	0x0082
                           000083   147 _DPH	=	0x0083
                           000087   148 _PCON	=	0x0087
                           000088   149 _TCON	=	0x0088
                           000089   150 _TMOD	=	0x0089
                           00008A   151 _TL0	=	0x008a
                           00008B   152 _TL1	=	0x008b
                           00008C   153 _TH0	=	0x008c
                           00008D   154 _TH1	=	0x008d
                           000090   155 _P1	=	0x0090
                           000098   156 _SCON	=	0x0098
                           000099   157 _SBUF	=	0x0099
                           0000A0   158 _P2	=	0x00a0
                           0000A8   159 _IE	=	0x00a8
                           0000B0   160 _P3	=	0x00b0
                           0000B8   161 _IP	=	0x00b8
                           0000C8   162 _T2CON	=	0x00c8
                           0000C9   163 _T2MOD	=	0x00c9
                           0000CA   164 _RCAP2L	=	0x00ca
                           0000CB   165 _RCAP2H	=	0x00cb
                           0000CC   166 _TL2	=	0x00cc
                           0000CD   167 _TH2	=	0x00cd
                           0000D0   168 _PSW	=	0x00d0
                           0000E0   169 _ACC	=	0x00e0
                           0000E0   170 _A	=	0x00e0
                           0000F0   171 _B	=	0x00f0
                                    172 ;--------------------------------------------------------
                                    173 ; special function bits
                                    174 ;--------------------------------------------------------
                                    175 	.area RSEG    (ABS,DATA)
      000000                        176 	.org 0x0000
                           000080   177 _P0_0	=	0x0080
                           000081   178 _P0_1	=	0x0081
                           000082   179 _P0_2	=	0x0082
                           000083   180 _P0_3	=	0x0083
                           000084   181 _P0_4	=	0x0084
                           000085   182 _P0_5	=	0x0085
                           000086   183 _P0_6	=	0x0086
                           000087   184 _P0_7	=	0x0087
                           000088   185 _IT0	=	0x0088
                           000089   186 _IE0	=	0x0089
                           00008A   187 _IT1	=	0x008a
                           00008B   188 _IE1	=	0x008b
                           00008C   189 _TR0	=	0x008c
                           00008D   190 _TF0	=	0x008d
                           00008E   191 _TR1	=	0x008e
                           00008F   192 _TF1	=	0x008f
                           000090   193 _P1_0	=	0x0090
                           000091   194 _P1_1	=	0x0091
                           000092   195 _P1_2	=	0x0092
                           000093   196 _P1_3	=	0x0093
                           000094   197 _P1_4	=	0x0094
                           000095   198 _P1_5	=	0x0095
                           000096   199 _P1_6	=	0x0096
                           000097   200 _P1_7	=	0x0097
                           000090   201 _T2	=	0x0090
                           000091   202 _T2EX	=	0x0091
                           000098   203 _RI	=	0x0098
                           000099   204 _TI	=	0x0099
                           00009A   205 _RB8	=	0x009a
                           00009B   206 _TB8	=	0x009b
                           00009C   207 _REN	=	0x009c
                           00009D   208 _SM2	=	0x009d
                           00009E   209 _SM1	=	0x009e
                           00009F   210 _SM0	=	0x009f
                           0000A0   211 _P2_0	=	0x00a0
                           0000A1   212 _P2_1	=	0x00a1
                           0000A2   213 _P2_2	=	0x00a2
                           0000A3   214 _P2_3	=	0x00a3
                           0000A4   215 _P2_4	=	0x00a4
                           0000A5   216 _P2_5	=	0x00a5
                           0000A6   217 _P2_6	=	0x00a6
                           0000A7   218 _P2_7	=	0x00a7
                           0000A8   219 _EX0	=	0x00a8
                           0000A9   220 _ET0	=	0x00a9
                           0000AA   221 _EX1	=	0x00aa
                           0000AB   222 _ET1	=	0x00ab
                           0000AC   223 _ES	=	0x00ac
                           0000AD   224 _ET2	=	0x00ad
                           0000AF   225 _EA	=	0x00af
                           0000B0   226 _P3_0	=	0x00b0
                           0000B1   227 _P3_1	=	0x00b1
                           0000B2   228 _P3_2	=	0x00b2
                           0000B3   229 _P3_3	=	0x00b3
                           0000B4   230 _P3_4	=	0x00b4
                           0000B5   231 _P3_5	=	0x00b5
                           0000B6   232 _P3_6	=	0x00b6
                           0000B7   233 _P3_7	=	0x00b7
                           0000B0   234 _RXD	=	0x00b0
                           0000B1   235 _TXD	=	0x00b1
                           0000B2   236 _INT0	=	0x00b2
                           0000B3   237 _INT1	=	0x00b3
                           0000B4   238 _T0	=	0x00b4
                           0000B5   239 _T1	=	0x00b5
                           0000B6   240 _WR	=	0x00b6
                           0000B7   241 _RD	=	0x00b7
                           0000B8   242 _PX0	=	0x00b8
                           0000B9   243 _PT0	=	0x00b9
                           0000BA   244 _PX1	=	0x00ba
                           0000BB   245 _PT1	=	0x00bb
                           0000BC   246 _PS	=	0x00bc
                           0000BD   247 _PT2	=	0x00bd
                           0000C8   248 _T2CON_0	=	0x00c8
                           0000C9   249 _T2CON_1	=	0x00c9
                           0000CA   250 _T2CON_2	=	0x00ca
                           0000CB   251 _T2CON_3	=	0x00cb
                           0000CC   252 _T2CON_4	=	0x00cc
                           0000CD   253 _T2CON_5	=	0x00cd
                           0000CE   254 _T2CON_6	=	0x00ce
                           0000CF   255 _T2CON_7	=	0x00cf
                           0000C8   256 _CP_RL2	=	0x00c8
                           0000C9   257 _C_T2	=	0x00c9
                           0000CA   258 _TR2	=	0x00ca
                           0000CB   259 _EXEN2	=	0x00cb
                           0000CC   260 _TCLK	=	0x00cc
                           0000CD   261 _RCLK	=	0x00cd
                           0000CE   262 _EXF2	=	0x00ce
                           0000CF   263 _TF2	=	0x00cf
                           0000D0   264 _P	=	0x00d0
                           0000D1   265 _FL	=	0x00d1
                           0000D2   266 _OV	=	0x00d2
                           0000D3   267 _RS0	=	0x00d3
                           0000D4   268 _RS1	=	0x00d4
                           0000D5   269 _F0	=	0x00d5
                           0000D6   270 _AC	=	0x00d6
                           0000D7   271 _CY	=	0x00d7
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable register banks
                                    274 ;--------------------------------------------------------
                                    275 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        276 	.ds 8
                                    277 ;--------------------------------------------------------
                                    278 ; internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area DSEG    (DATA)
                                    281 ;--------------------------------------------------------
                                    282 ; overlayable items in internal ram 
                                    283 ;--------------------------------------------------------
                                    284 	.area	OSEG    (OVR,DATA)
      00000B                        285 _move_PARM_2:
      00000B                        286 	.ds 1
      00000C                        287 _move_PARM_3:
      00000C                        288 	.ds 1
      00000D                        289 _move_PARM_4:
      00000D                        290 	.ds 1
                                    291 ;--------------------------------------------------------
                                    292 ; indirectly addressable internal ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area ISEG    (DATA)
                                    295 ;--------------------------------------------------------
                                    296 ; absolute internal ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area IABS    (ABS,DATA)
                                    299 	.area IABS    (ABS,DATA)
                                    300 ;--------------------------------------------------------
                                    301 ; bit data
                                    302 ;--------------------------------------------------------
                                    303 	.area BSEG    (BIT)
                                    304 ;--------------------------------------------------------
                                    305 ; paged external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area PSEG    (PAG,XDATA)
                                    308 ;--------------------------------------------------------
                                    309 ; external ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area XSEG    (XDATA)
                                    312 ;--------------------------------------------------------
                                    313 ; absolute external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XABS    (ABS,XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; external initialized ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XISEG   (XDATA)
                                    320 	.area HOME    (CODE)
                                    321 	.area GSINIT0 (CODE)
                                    322 	.area GSINIT1 (CODE)
                                    323 	.area GSINIT2 (CODE)
                                    324 	.area GSINIT3 (CODE)
                                    325 	.area GSINIT4 (CODE)
                                    326 	.area GSINIT5 (CODE)
                                    327 	.area GSINIT  (CODE)
                                    328 	.area GSFINAL (CODE)
                                    329 	.area CSEG    (CODE)
                                    330 ;--------------------------------------------------------
                                    331 ; global & static initialisations
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.area GSFINAL (CODE)
                                    336 	.area GSINIT  (CODE)
                                    337 ;--------------------------------------------------------
                                    338 ; Home
                                    339 ;--------------------------------------------------------
                                    340 	.area HOME    (CODE)
                                    341 	.area HOME    (CODE)
                                    342 ;--------------------------------------------------------
                                    343 ; code
                                    344 ;--------------------------------------------------------
                                    345 	.area CSEG    (CODE)
                                    346 ;------------------------------------------------------------
                                    347 ;Allocation info for local variables in function 'move'
                                    348 ;------------------------------------------------------------
                                    349 ;b                         Allocated with name '_move_PARM_2'
                                    350 ;c                         Allocated with name '_move_PARM_3'
                                    351 ;d                         Allocated with name '_move_PARM_4'
                                    352 ;a                         Allocated to registers 
                                    353 ;------------------------------------------------------------
                                    354 ;	../../car/car.c:3: int move(u8 a,u8 b,u8 c,u8 d){
                                    355 ;	-----------------------------------------
                                    356 ;	 function move
                                    357 ;	-----------------------------------------
      0000F0                        358 _move:
                           000007   359 	ar7 = 0x07
                           000006   360 	ar6 = 0x06
                           000005   361 	ar5 = 0x05
                           000004   362 	ar4 = 0x04
                           000003   363 	ar3 = 0x03
                           000002   364 	ar2 = 0x02
                           000001   365 	ar1 = 0x01
                           000000   366 	ar0 = 0x00
      0000F0 85 82 08         [24]  367 	mov	_pwm1,dpl
                                    368 ;	../../car/car.c:5: pwm2=b;
      0000F3 85 0B 09         [24]  369 	mov	_pwm2,_move_PARM_2
                                    370 ;	../../car/car.c:6: if(c=='z'){
      0000F6 74 7A            [12]  371 	mov	a,#0x7a
      0000F8 B5 0C 04         [24]  372 	cjne	a,_move_PARM_3,00102$
                                    373 ;	../../car/car.c:7: IN1 = 1;
                                    374 ;	assignBit
      0000FB D2 90            [12]  375 	setb	_P1_0
                                    376 ;	../../car/car.c:8: IN2 = 0;
                                    377 ;	assignBit
      0000FD C2 91            [12]  378 	clr	_P1_1
      0000FF                        379 00102$:
                                    380 ;	../../car/car.c:10: if(c=='f'){
      0000FF 74 66            [12]  381 	mov	a,#0x66
      000101 B5 0C 04         [24]  382 	cjne	a,_move_PARM_3,00104$
                                    383 ;	../../car/car.c:11: IN1 = 0;
                                    384 ;	assignBit
      000104 C2 90            [12]  385 	clr	_P1_0
                                    386 ;	../../car/car.c:12: IN2 = 1;
                                    387 ;	assignBit
      000106 D2 91            [12]  388 	setb	_P1_1
      000108                        389 00104$:
                                    390 ;	../../car/car.c:14: if(d=='z'){
      000108 74 7A            [12]  391 	mov	a,#0x7a
      00010A B5 0D 04         [24]  392 	cjne	a,_move_PARM_4,00106$
                                    393 ;	../../car/car.c:15: IN3 = 1;
                                    394 ;	assignBit
      00010D D2 92            [12]  395 	setb	_P1_2
                                    396 ;	../../car/car.c:16: IN4 = 0;
                                    397 ;	assignBit
      00010F C2 93            [12]  398 	clr	_P1_3
      000111                        399 00106$:
                                    400 ;	../../car/car.c:18: if(d=='f'){
      000111 74 66            [12]  401 	mov	a,#0x66
      000113 B5 0D 04         [24]  402 	cjne	a,_move_PARM_4,00108$
                                    403 ;	../../car/car.c:19: IN3 = 0;
                                    404 ;	assignBit
      000116 C2 92            [12]  405 	clr	_P1_2
                                    406 ;	../../car/car.c:20: IN4 = 1;
                                    407 ;	assignBit
      000118 D2 93            [12]  408 	setb	_P1_3
      00011A                        409 00108$:
                                    410 ;	../../car/car.c:22: return 0;
      00011A 90 00 00         [24]  411 	mov	dptr,#0x0000
                                    412 ;	../../car/car.c:23: }	
      00011D 22               [24]  413 	ret
                                    414 ;------------------------------------------------------------
                                    415 ;Allocation info for local variables in function 'Trace'
                                    416 ;------------------------------------------------------------
                                    417 ;flag                      Allocated to registers r7 
                                    418 ;------------------------------------------------------------
                                    419 ;	../../car/car.c:25: void Trace(){													           
                                    420 ;	-----------------------------------------
                                    421 ;	 function Trace
                                    422 ;	-----------------------------------------
      00011E                        423 _Trace:
                                    424 ;	../../car/car.c:26: u8 flag=0;
      00011E 7F 00            [12]  425 	mov	r7,#0x00
                                    426 ;	../../car/car.c:27: if((!track1==0)&&(!track2==0)&&(!track3==0)&&(!track4==0)){
      000120 30 A0 0B         [24]  427 	jnb	_P2_0,00102$
      000123 30 A1 08         [24]  428 	jnb	_P2_1,00102$
      000126 30 A2 05         [24]  429 	jnb	_P2_2,00102$
      000129 30 A3 02         [24]  430 	jnb	_P2_3,00102$
                                    431 ;	../../car/car.c:28: flag=1;										 
      00012C 7F 01            [12]  432 	mov	r7,#0x01
      00012E                        433 00102$:
                                    434 ;	../../car/car.c:30: if((!track1==0)&&(!track2==0)&&(!track3==1)&&(!track4==0)){	  		  
      00012E 30 A0 0B         [24]  435 	jnb	_P2_0,00107$
      000131 30 A1 08         [24]  436 	jnb	_P2_1,00107$
      000134 20 A2 05         [24]  437 	jb	_P2_2,00107$
      000137 30 A3 02         [24]  438 	jnb	_P2_3,00107$
                                    439 ;	../../car/car.c:31: flag=2;										 
      00013A 7F 02            [12]  440 	mov	r7,#0x02
      00013C                        441 00107$:
                                    442 ;	../../car/car.c:33: if((!track1==0)&&(!track2==1)&&(!track3==0)&&(!track4==0)){	  		 
      00013C 30 A0 0B         [24]  443 	jnb	_P2_0,00112$
      00013F 20 A1 08         [24]  444 	jb	_P2_1,00112$
      000142 30 A2 05         [24]  445 	jnb	_P2_2,00112$
      000145 30 A3 02         [24]  446 	jnb	_P2_3,00112$
                                    447 ;	../../car/car.c:34: flag=3;										 
      000148 7F 03            [12]  448 	mov	r7,#0x03
      00014A                        449 00112$:
                                    450 ;	../../car/car.c:36: if((!track1==1)&&(!track2==0)&&(!track3==0)&&(!track4==0)){
      00014A 20 A0 0B         [24]  451 	jb	_P2_0,00117$
      00014D 30 A1 08         [24]  452 	jnb	_P2_1,00117$
      000150 30 A2 05         [24]  453 	jnb	_P2_2,00117$
      000153 30 A3 02         [24]  454 	jnb	_P2_3,00117$
                                    455 ;	../../car/car.c:37: flag=4;										 
      000156 7F 04            [12]  456 	mov	r7,#0x04
      000158                        457 00117$:
                                    458 ;	../../car/car.c:39: if((!track1==0)&&(!track2==0)&&(!track3==0)&&(!track4==1)){
      000158 30 A0 0B         [24]  459 	jnb	_P2_0,00122$
      00015B 30 A1 08         [24]  460 	jnb	_P2_1,00122$
      00015E 30 A2 05         [24]  461 	jnb	_P2_2,00122$
      000161 20 A3 02         [24]  462 	jb	_P2_3,00122$
                                    463 ;	../../car/car.c:40: flag=5;										 
      000164 7F 05            [12]  464 	mov	r7,#0x05
      000166                        465 00122$:
                                    466 ;	../../car/car.c:42: if((!track1==1)&&(!track2==1)&&(!track3==1)&&(!track4==1)){
      000166 20 A0 0B         [24]  467 	jb	_P2_0,00127$
      000169 20 A1 08         [24]  468 	jb	_P2_1,00127$
      00016C 20 A2 05         [24]  469 	jb	_P2_2,00127$
      00016F 20 A3 02         [24]  470 	jb	_P2_3,00127$
                                    471 ;	../../car/car.c:43: flag=6;										 
      000172 7F 06            [12]  472 	mov	r7,#0x06
      000174                        473 00127$:
                                    474 ;	../../car/car.c:45: if((!track1==0)&&(!track2==0)&&(!track3==1)&&(!track4==1)){
      000174 30 A0 0B         [24]  475 	jnb	_P2_0,00132$
      000177 30 A1 08         [24]  476 	jnb	_P2_1,00132$
      00017A 20 A2 05         [24]  477 	jb	_P2_2,00132$
      00017D 20 A3 02         [24]  478 	jb	_P2_3,00132$
                                    479 ;	../../car/car.c:46: flag=7;										 
      000180 7F 07            [12]  480 	mov	r7,#0x07
      000182                        481 00132$:
                                    482 ;	../../car/car.c:48: if((!track1==0)&&(!track2==1)&&(!track3==1)&&(!track4==1)){
      000182 30 A0 0B         [24]  483 	jnb	_P2_0,00137$
      000185 20 A1 08         [24]  484 	jb	_P2_1,00137$
      000188 20 A2 05         [24]  485 	jb	_P2_2,00137$
      00018B 20 A3 02         [24]  486 	jb	_P2_3,00137$
                                    487 ;	../../car/car.c:49: flag=8;										 
      00018E 7F 08            [12]  488 	mov	r7,#0x08
      000190                        489 00137$:
                                    490 ;	../../car/car.c:51: switch(flag){
      000190 EF               [12]  491 	mov	a,r7
      000191 24 F7            [12]  492 	add	a,#0xff - 0x08
      000193 50 03            [24]  493 	jnc	00316$
      000195 02 02 21         [24]  494 	ljmp	00148$
      000198                        495 00316$:
      000198 EF               [12]  496 	mov	a,r7
      000199 24 0A            [12]  497 	add	a,#(00317$-3-.)
      00019B 83               [24]  498 	movc	a,@a+pc
      00019C F5 82            [12]  499 	mov	dpl,a
      00019E EF               [12]  500 	mov	a,r7
      00019F 24 0D            [12]  501 	add	a,#(00318$-3-.)
      0001A1 83               [24]  502 	movc	a,@a+pc
      0001A2 F5 83            [12]  503 	mov	dph,a
      0001A4 E4               [12]  504 	clr	a
      0001A5 73               [24]  505 	jmp	@a+dptr
      0001A6                        506 00317$:
      0001A6 21                     507 	.db	00148$
      0001A7 B8                     508 	.db	00141$
      0001A8 21                     509 	.db	00148$
      0001A9 C7                     510 	.db	00142$
      0001AA D6                     511 	.db	00143$
      0001AB E5                     512 	.db	00144$
      0001AC F4                     513 	.db	00145$
      0001AD 03                     514 	.db	00146$
      0001AE 12                     515 	.db	00147$
      0001AF                        516 00318$:
      0001AF 02                     517 	.db	00148$>>8
      0001B0 01                     518 	.db	00141$>>8
      0001B1 02                     519 	.db	00148$>>8
      0001B2 01                     520 	.db	00142$>>8
      0001B3 01                     521 	.db	00143$>>8
      0001B4 01                     522 	.db	00144$>>8
      0001B5 01                     523 	.db	00145$>>8
      0001B6 02                     524 	.db	00146$>>8
      0001B7 02                     525 	.db	00147$>>8
                                    526 ;	../../car/car.c:52: case(1):move(80,80,'f','z');break;							
      0001B8                        527 00141$:
      0001B8 75 0B 50         [24]  528 	mov	_move_PARM_2,#0x50
      0001BB 75 0C 66         [24]  529 	mov	_move_PARM_3,#0x66
      0001BE 75 0D 7A         [24]  530 	mov	_move_PARM_4,#0x7a
      0001C1 75 82 50         [24]  531 	mov	dpl,#0x50
                                    532 ;	../../car/car.c:53: case(3):move(0,80,'f','z');break;                 
      0001C4 02 00 F0         [24]  533 	ljmp	_move
      0001C7                        534 00142$:
      0001C7 75 0B 50         [24]  535 	mov	_move_PARM_2,#0x50
      0001CA 75 0C 66         [24]  536 	mov	_move_PARM_3,#0x66
      0001CD 75 0D 7A         [24]  537 	mov	_move_PARM_4,#0x7a
      0001D0 75 82 00         [24]  538 	mov	dpl,#0x00
                                    539 ;	../../car/car.c:54: case(4):move(0,80,'f','z');break;
      0001D3 02 00 F0         [24]  540 	ljmp	_move
      0001D6                        541 00143$:
      0001D6 75 0B 50         [24]  542 	mov	_move_PARM_2,#0x50
      0001D9 75 0C 66         [24]  543 	mov	_move_PARM_3,#0x66
      0001DC 75 0D 7A         [24]  544 	mov	_move_PARM_4,#0x7a
      0001DF 75 82 00         [24]  545 	mov	dpl,#0x00
                                    546 ;	../../car/car.c:55: case(5):move(50 ,0,'f','z');break;
      0001E2 02 00 F0         [24]  547 	ljmp	_move
      0001E5                        548 00144$:
      0001E5 75 0B 00         [24]  549 	mov	_move_PARM_2,#0x00
      0001E8 75 0C 66         [24]  550 	mov	_move_PARM_3,#0x66
      0001EB 75 0D 7A         [24]  551 	mov	_move_PARM_4,#0x7a
      0001EE 75 82 32         [24]  552 	mov	dpl,#0x32
                                    553 ;	../../car/car.c:56: case(6):move(0,0,'f','z');break;
      0001F1 02 00 F0         [24]  554 	ljmp	_move
      0001F4                        555 00145$:
      0001F4 75 0B 00         [24]  556 	mov	_move_PARM_2,#0x00
      0001F7 75 0C 66         [24]  557 	mov	_move_PARM_3,#0x66
      0001FA 75 0D 7A         [24]  558 	mov	_move_PARM_4,#0x7a
      0001FD 75 82 00         [24]  559 	mov	dpl,#0x00
                                    560 ;	../../car/car.c:57: case(7):move(80,80,'f','z');break;
      000200 02 00 F0         [24]  561 	ljmp	_move
      000203                        562 00146$:
      000203 75 0B 50         [24]  563 	mov	_move_PARM_2,#0x50
      000206 75 0C 66         [24]  564 	mov	_move_PARM_3,#0x66
      000209 75 0D 7A         [24]  565 	mov	_move_PARM_4,#0x7a
      00020C 75 82 50         [24]  566 	mov	dpl,#0x50
                                    567 ;	../../car/car.c:58: case(8):move(0,0,'f','z');break;
      00020F 02 00 F0         [24]  568 	ljmp	_move
      000212                        569 00147$:
      000212 75 0B 00         [24]  570 	mov	_move_PARM_2,#0x00
      000215 75 0C 66         [24]  571 	mov	_move_PARM_3,#0x66
      000218 75 0D 7A         [24]  572 	mov	_move_PARM_4,#0x7a
      00021B 75 82 00         [24]  573 	mov	dpl,#0x00
                                    574 ;	../../car/car.c:59: default:move(80,80,'f','z');break;
      00021E 02 00 F0         [24]  575 	ljmp	_move
      000221                        576 00148$:
      000221 75 0B 50         [24]  577 	mov	_move_PARM_2,#0x50
      000224 75 0C 66         [24]  578 	mov	_move_PARM_3,#0x66
      000227 75 0D 7A         [24]  579 	mov	_move_PARM_4,#0x7a
      00022A 75 82 50         [24]  580 	mov	dpl,#0x50
                                    581 ;	../../car/car.c:60: }
                                    582 ;	../../car/car.c:61: }
      00022D 02 00 F0         [24]  583 	ljmp	_move
                                    584 	.area CSEG    (CODE)
                                    585 	.area CONST   (CODE)
                                    586 	.area XINIT   (CODE)
                                    587 	.area CABS    (ABS,CODE)
