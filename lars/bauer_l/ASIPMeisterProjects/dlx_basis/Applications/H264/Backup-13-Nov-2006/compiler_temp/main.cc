#define COSY
#ifndef COSY
#include "stdio.h"
#else
#include "lib_lcd.h"
#include "intToStr.h"
#include "clockCounter.h"
#endif

//#define SPECIAL_INSTRUCTIONS

struct doubleInt { int a; int b; };


#ifdef COSY
#ifdef SPECIAL_INSTRUCTIONS

asm struct doubleInt Hadamard_2x2_Chroma(int in1, int in2) {
  @[
  ]
	;; SINAS: Hadamard 2x2 Chroma()
	nop
	nop
	nop
	ht2x2cr	@{a}, @{b}, @{in1}, @{in2}
	nop
	nop
	nop
}

#else

void Hadamard_2x2_Chroma(int in1, int in2, int* out1, int* out2)
{
	int temp0, temp1, temp2, temp3;
	int t0, t1, t2, t3;

	/*  DATA EXTRACTION		  */
	temp0   =   ((in1&0xFFFF0000)>>16);
	temp1   =   ((in2&0xFFFF0000)>>16);
	temp2   =   (((in1&0x0000FFFF)<<16)>>16);
	temp3   =   (((in2&0x0000FFFF)<<16)>>16);

	/*  2X2 transform of DC coeffs  */
	t0	  =   ((temp0 + temp2)	  + (temp1 + temp3));
	t1	  =   ((temp0 - temp2)	  + (temp1 - temp3));
	t2	  =   ((temp1 - temp3)	  - (temp0 - temp2));
	t3	  =   ((temp1 + temp3)	  - (temp0 + temp2));

	/*  DATA PACKING			  */
	*out1  =   (((t0&0x0000FFFF)<<16) | (t2&0x0000FFFF));
	*out2  =   (((t1&0x0000FFFF)<<16) | (t3&0x0000FFFF));
}

#endif
#endif

#ifdef COSY
#ifdef SPECIAL_INSTRUCTIONS

asm void Hadamard_4x4_IntraLuma(int* DCT_start, int* HT_start) {
  @[
  	.barrier
  ]
	;; SINAS: Hadamard 4x4 IntraLuma()
	nop
	nop
	nop
	ht4x4il @{DCT_start}, @{HT_start}
	nop
	nop
	nop
}

#else

void Hadamard_4x4_IntraLuma(int* DCT_start, int* HT_start)
{

	int temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
	int temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15;

	int m0, m1, m2, m3;
	int t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15;
	int x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15;

	/*		FORMAT: 		DCT_start [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15	 16 ...... 255] 	*/

	/*	DATA EXTRACTION 		*/
	temp0	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp1	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp2	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp3	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp4	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp5	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp6	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp7	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp8	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp9	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp10	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp11	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp12	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp13	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp14	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;
	temp15	=	((DCT_start[0]&0xFFFF0000)>>16);		DCT_start+=8;

	/*HORIZONTAL TRANSFORM*/
	m0	=	temp0 + temp12; 		m3	=	temp0 - temp12; 	m1	=	temp4 + temp8;		m2	=	temp4 - temp8;
	x0	=	m0 + m1;			x8	=	m0 - m1;			x4	=	m3 + m2;			x12 =	m3 - m2;

	m0	=	temp1 + temp13; 		m3	=	temp1 - temp13; 	m1	=	temp5 + temp9;		m2	=	temp5 - temp9;
	x1	=	m0 + m1;			x9	=	m0 - m1;			x5	=	m3 + m2;			x13 =	m3 - m2;

	m0	=	temp2 + temp14; 		m3	=	temp2 - temp14; 	m1	=	temp6 + temp10; 		m2	=	temp6 - temp10;
	x2	=	m0 + m1;			x10 =	m0 - m1;			x6	=	m3 + m2;			x14 =	m3 - m2;

	m0	=	temp3 + temp15; 		m3	=	temp3 - temp15; 	m1	=	temp7 + temp11; 		m2	=	temp7 - temp11;
	x3	=	m0 + m1;			x11 =	m0 - m1;			x7	=	m3 + m2;			x15 =	m3 - m2;

	/*VERTICAL TRANSFORM*/
	m0	=	x0 + x3;				m3	=	x0 - x3;				m1	=	x1 + x2;				m2	=	x1 - x2;
	t0	=	((m0 + m1)>>1); 		t2	=	((m0 - m1)>>1); 		t1	=	((m3 + m2)>>1); 		t3	=	((m3 - m2)>>1);

	m0	=	x4 + x7;				m3	=	x4 - x7;				m1	=	x5 + x6;				m2	=	x5 - x6;
	t4	=	((m0 + m1)>>1); 		t6	=	((m0 - m1)>>1); 		t5	=	((m3 + m2)>>1); 		t7	=	((m3 - m2)>>1);

	m0	=	x8 + x11;			m3	=	x8 - x11;				m1	=	x9 + x10;			m2	=	x9 - x10;
	t8	=	((m0 + m1)>>1); 		t10 =	((m0 - m1)>>1); 		t9	=	((m3 + m2)>>1); 		t11 =	((m3 - m2)>>1);

	m0	=	x12 + x15;			m3	=	x12 - x15;			m1	=	x13 + x14;			m2	=	x13 - x14;
	t12 =	((m0 + m1)>>1); 		t14 =	((m0 - m1)>>1); 		t13 =	((m3 + m2)>>1); 		t15 =	((m3 - m2)>>1);

	/*	DATA PACKING		*/
	HT_start[0] =	(((t0&0x0000FFFF)<<16)	| (t3&0x0000FFFF));
	HT_start[1] =	(((t1&0x0000FFFF)<<16)	| (t2&0x0000FFFF));
	HT_start[2] =	(((t4&0x0000FFFF)<<16)	| (t7&0x0000FFFF));
	HT_start[3] =	(((t5&0x0000FFFF)<<16)	| (t6&0x0000FFFF));
	HT_start[4] =	(((t8&0x0000FFFF)<<16)	| (t11&0x0000FFFF));
	HT_start[5] =	(((t9&0x0000FFFF)<<16)	| (t10&0x0000FFFF));
	HT_start[6] =	(((t12&0x0000FFFF)<<16) 	| (t15&0x0000FFFF));
	HT_start[7] =	(((t13&0x0000FFFF)<<16) 	| (t14&0x0000FFFF));

}

#endif
#endif

#ifdef COSY
#ifdef SPECIAL_INSTRUCTIONS

asm int SATD_4x4(int* SB_start, int Stride, int* Cand_start) {
  @[
	.barrier
  ]
	;; SINAS: SATD_4x4()
	nop
	nop
	nop
	satd4x4 @{}, @{SB_start}, @{Stride}, @{Cand_start}
	nop
	nop
	nop
}

#else

#define ABS(A)		((A<0)?(-A):(A)) 

int SATD_4x4(int* SB_start, int Stride, int* Cand_start)
{

	int satd = 0;

	int diff0, diff1, diff2, diff3, diff4, diff5, diff6, diff7;
	int diff8, diff9, diff10, diff11, diff12, diff13, diff14, diff15;

	int temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
	int temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15;

	int m0, m1, m2, m3;
	int t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15;
	int x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15;

	const int eight 	=	8;
	const int sixteen 	=	16;
	const int twenty4 	=	24;
	
	int test0, test1, test2, test3;
	/*		FORMAT: 		DCT_start [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15	 16 ...... 255] 	*/

	/*	DIFFERENCE CALCULATION	*/
	// TODO: Separate to different instructions for this example to find out, which part of the whole line creates the problem.


#if 1
	diff0		=	(((((SB_start[0]&0xFF000000)>>twenty4) - ((Cand_start[0]&0xFF000000)>>twenty4))<<sixteen) | ((((SB_start[0]&0x00FF0000)>>sixteen) - ((Cand_start[0]&0x00FF0000)>>sixteen))&0x0000FFFF));
	diff1		=	(((((SB_start[0]&0x0000FF00)>>eight) - ((Cand_start[0]&0x0000FF00)>>eight))<<sixteen) | (((SB_start[0]&0x000000FF) - (Cand_start[0]&0x000000FF))&0x0000FFFF));
	SB_start	+=	Stride; 	Cand_start	+=	4;

	diff2		=	(((((SB_start[0]&0xFF000000)>>twenty4) - ((Cand_start[0]&0xFF000000)>>twenty4))<<sixteen) | ((((SB_start[0]&0x00FF0000)>>sixteen) - ((Cand_start[0]&0x00FF0000)>>sixteen))&0x0000FFFF));
	diff3		=	(((((SB_start[0]&0x0000FF00)>>eight) - ((Cand_start[0]&0x0000FF00)>>eight))<<sixteen) | (((SB_start[0]&0x000000FF) - (Cand_start[0]&0x000000FF))&0x0000FFFF));
	SB_start	+=	Stride; 	Cand_start	+=	4;

	diff4		=	(((((SB_start[0]&0xFF000000)>>twenty4) - ((Cand_start[0]&0xFF000000)>>twenty4))<<sixteen) | ((((SB_start[0]&0x00FF0000)>>sixteen) - ((Cand_start[0]&0x00FF0000)>>sixteen))&0x0000FFFF));
	diff5		=	(((((SB_start[0]&0x0000FF00)>>eight) - ((Cand_start[0]&0x0000FF00)>>eight))<<sixteen) | (((SB_start[0]&0x000000FF) - (Cand_start[0]&0x000000FF))&0x0000FFFF));
	SB_start	+=	Stride; 	Cand_start	+=	4;

	diff6		=	(((((SB_start[0]&0xFF000000)>>twenty4) - ((Cand_start[0]&0xFF000000)>>twenty4))<<sixteen) | ((((SB_start[0]&0x00FF0000)>>sixteen) - ((Cand_start[0]&0x00FF0000)>>sixteen))&0x0000FFFF));
	diff7		=	(((((SB_start[0]&0x0000FF00)>>eight) - ((Cand_start[0]&0x0000FF00)>>eight))<<sixteen) | (((SB_start[0]&0x000000FF) - (Cand_start[0]&0x000000FF))&0x0000FFFF));

	/*	DATA EXTRACTION 		*/
	temp0	=	(((int)(diff0 & 0xFFFF0000))>>16);
	temp1	=	(((diff0&0x0000FFFF)<<16)>>16);
	temp2	=	(((int)(diff1 & 0xFFFF0000))>>16);
	temp3	=	(((diff1&0x0000FFFF)<<16)>>16);
	temp4	=	(((int)(diff2&0xFFFF0000))>>16);
	temp5	=	(((diff2&0x0000FFFF)<<16)>>16);
	temp6	=	(((int)(diff3&0xFFFF0000))>>16);
	temp7	=	(((diff3&0x0000FFFF)<<16)>>16);
	temp8	=	(((int)(diff4&0xFFFF0000))>>16);
	temp9	=	(((diff4&0x0000FFFF)<<16)>>16);
	temp10	=	(((int)(diff5&0xFFFF0000))>>16);
	temp11	=	(((diff5&0x0000FFFF)<<16)>>16);
	temp12	=	(((int)(diff6&0xFFFF0000))>>16);
	temp13	=	(((diff6&0x0000FFFF)<<16)>>16);
	temp14	=	(((int)(diff7&0xFFFF0000))>>16);
	temp15	=	(((diff7&0x0000FFFF)<<16)>>16);

	/*HORIZONTAL TRANSFORM*/
	m0	=	temp0 + temp12; 	m3	=	temp0 - temp12; 	m1	=	temp4 + temp8;		m2	=	temp4 - temp8;
	x0	=	m0 + m1;			x8	=	m0 - m1;			x4	=	m3 + m2;			x12 =	m3 - m2;

	m0	=	temp1 + temp13; 		m3	=	temp1 - temp13; 	m1	=	temp5 + temp9;		m2	=	temp5 - temp9;
	x1	=	m0 + m1;			x9	=	m0 - m1;			x5	=	m3 + m2;			x13 =	m3 - m2;

	m0	=	temp2 + temp14; 		m3	=	temp2 - temp14; 	m1	=	temp6 + temp10; 	m2	=	temp6 - temp10;
	x2	=	m0 + m1;			x10 =	m0 - m1;			x6	=	m3 + m2;			x14 =	m3 - m2;

	m0	=	temp3 + temp15; 		m3	=	temp3 - temp15; 	m1	=	temp7 + temp11; 	m2	=	temp7 - temp11;
	x3	=	m0 + m1;			x11 =	m0 - m1;			x7	=	m3 + m2;			x15 =	m3 - m2;

	/*VERTICAL TRANSFORM*/
	m0	=	x0 + x3;				m3	=	x0 - x3;				m1	=	x1 + x2;				m2	=	x1 - x2;
	t0	=	((m0 + m1)>>1); 		t2	=	((m0 - m1)>>1); 	t1	=	((m3 + m2)>>1); 		t3	=	((m3 - m2)>>1);
	
	satd += ((t0));
	satd += (ABS(t1));
	satd += (ABS(t2));	
	satd += (ABS(t3));
	m0	=	x4 + x7;				m3	=	x4 - x7;				m1	=	x5 + x6;				m2	=	x5 - x6;
	t4	=	((m0 + m1)>>1); 		t6	=	((m0 - m1)>>1); 	t5	=	((m3 + m2)>>1); 		t7	=	((m3 - m2)>>1);
	satd += (ABS(t4));
	satd += (ABS(t5));	
	satd += (ABS(t6));
	satd += (ABS(t7));

	m0	=	x8 + x11;			m3	=	x8 - x11;				m1	=	x9 + x10;			m2	=	x9 - x10;
	t8	=	((m0 + m1)>>1); 		t10 =	((m0 - m1)>>1); 		t9	=	((m3 + m2)>>1); 		t11 =	((m3 - m2)>>1);
	satd += (ABS(t8));
	satd += (ABS(t9));	
	satd += (ABS(t10));
	satd += (ABS(t11));

	m0	=	x12 + x15;			m3	=	x12 - x15;			m1	=	x13 + x14;			m2	=	x13 - x14;
	t12 =	((m0 + m1)>>1); 		t14 =	((m0 - m1)>>1); 		t13 =	((m3 + m2)>>1); 		t15 =	((m3 - m2)>>1);
	satd += (ABS(t12));
	satd += (ABS(t13)); 
	satd += (ABS(t14));
	satd += (ABS(t15));
#endif

	return (satd);

}

#endif
#endif

#ifdef COSY
#ifdef SPECIAL_INSTRUCTIONS

asm void DCT_4x4(int* SB_start, int Stride, int* SubPred_start, int* DCT_start) {
  @[
	.barrier
  ]
	;; SINAS: DCT_4x4()
	nop
	nop
	nop
	dct4x4 @{DCT_start}, @{SB_start}, @{Stride}, @{SubPred_start}
	nop
	nop
	nop
}

#else

int DCT_4x4(int* SB_start, int Stride, int* SubPred_start, int* DCT_start)
{

	int i, j;

	int diff0, diff1, diff2, diff3, diff4, diff5, diff6, diff7;
	int diff8, diff9, diff10, diff11, diff12, diff13, diff14, diff15;

	int temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
	int temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15;

	int m0, m1, m2, m3;
	int t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15;
	int x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15;
	
	const int eight 	=	8;
	const int sixteen	=	16;
	const int twenty4	=	24;
	
	/*	DIFFERENCE CALCULATION		*/
	diff0		=	(((((SB_start[0]&0xFF000000)>>twenty4) - ((SubPred_start[0]&0xFF000000)>>twenty4))<<sixteen) | ((((SB_start[0]&0x00FF0000)>>sixteen) - ((SubPred_start[0]&0x00FF0000)>>sixteen))&0x0000FFFF));
	diff1		=	(((((SB_start[0]&0x0000FF00)>>eight) - ((SubPred_start[0]&0x0000FF00)>>eight))<<sixteen) | (((SB_start[0]&0x000000FF) - (SubPred_start[0]&0x000000FF))&0x0000FFFF));
	SB_start	+=	Stride; 	SubPred_start	+=	1;
	
	diff2		=	(((((SB_start[0]&0xFF000000)>>twenty4) - ((SubPred_start[0]&0xFF000000)>>twenty4))<<sixteen) | ((((SB_start[0]&0x00FF0000)>>sixteen) - ((SubPred_start[0]&0x00FF0000)>>sixteen))&0x0000FFFF));
	diff3		=	(((((SB_start[0]&0x0000FF00)>>eight) - ((SubPred_start[0]&0x0000FF00)>>eight))<<sixteen) | (((SB_start[0]&0x000000FF) - (SubPred_start[0]&0x000000FF))&0x0000FFFF));
	SB_start	+=	Stride; 	SubPred_start	+=	1;
	
	diff4		=	(((((SB_start[0]&0xFF000000)>>twenty4) - ((SubPred_start[0]&0xFF000000)>>twenty4))<<sixteen) | ((((SB_start[0]&0x00FF0000)>>sixteen) - ((SubPred_start[0]&0x00FF0000)>>sixteen))&0x0000FFFF));
	diff5		=	(((((SB_start[0]&0x0000FF00)>>eight) - ((SubPred_start[0]&0x0000FF00)>>eight))<<sixteen) | (((SB_start[0]&0x000000FF) - (SubPred_start[0]&0x000000FF))&0x0000FFFF));
	SB_start	+=	Stride; 	SubPred_start	+=	1;
	
	diff6		=	(((((SB_start[0]&0xFF000000)>>twenty4) - ((SubPred_start[0]&0xFF000000)>>twenty4))<<sixteen) | ((((SB_start[0]&0x00FF0000)>>sixteen) - ((SubPred_start[0]&0x00FF0000)>>sixteen))&0x0000FFFF));
	diff7		=	(((((SB_start[0]&0x0000FF00)>>eight) - ((SubPred_start[0]&0x0000FF00)>>eight))<<sixteen) | (((SB_start[0]&0x000000FF) - (SubPred_start[0]&0x000000FF))&0x0000FFFF));

	
	/*	DATA EXTRACTION 		*/
	temp0	=	(((int)(diff0&0xFFFF0000))>>16);
	temp1	=	(((diff0&0x0000FFFF)<<16)>>16);
	temp2	=	(((int)(diff1&0xFFFF0000))>>16);
	temp3	=	(((diff1&0x0000FFFF)<<16)>>16);
	temp4	=	(((int)(diff2&0xFFFF0000))>>16);
	temp5	=	(((diff2&0x0000FFFF)<<16)>>16);
	temp6	=	(((int)(diff3&0xFFFF0000))>>16);
	temp7	=	(((diff3&0x0000FFFF)<<16)>>16);
	temp8	=	(((int)(diff4&0xFFFF0000))>>16);
	temp9	=	(((diff4&0x0000FFFF)<<16)>>16);
	temp10	=	(((int)(diff5&0xFFFF0000))>>16);
	temp11	=	(((diff5&0x0000FFFF)<<16)>>16);
	temp12	=	(((int)(diff6&0xFFFF0000))>>16);
	temp13	=	(((diff6&0x0000FFFF)<<16)>>16);
	temp14	=	(((int)(diff7&0xFFFF0000))>>16);
	temp15	=	(((diff7&0x0000FFFF)<<16)>>16);

	/*HORIZONTAL TRANSFORM*/
	m0	=	temp0 + temp12; 		m3	=	temp0 - temp12; 		m1	=	temp4 + temp8;		m2	=	temp4 - temp8;
	x0	=	m0 + m1;			x8	=	m0 - m1;			x4	=	((m3 *2)+ m2);		x12 =	(m3 - (m2*2));

	m0	=	temp1 + temp13; 		m3	=	temp1 - temp13; 		m1	=	temp5 + temp9;		m2	=	temp5 - temp9;
	x1	=	m0 + m1;			x9	=	m0 - m1;			x5	=	((m3 *2)+ m2);		x13 =	(m3 - (m2*2));

	m0	=	temp2 + temp14; 		m3	=	temp2 - temp14; 		m1	=	temp6 + temp10; 		m2	=	temp6 - temp10;
	x2	=	m0 + m1;			x10 =	m0 - m1;			x6	=	((m3 *2)+ m2);		x14 =	(m3 - (m2*2));

	m0	=	temp3 + temp15; 		m3	=	temp3 - temp15; 		m1	=	temp7 + temp11; 		m2	=	temp7 - temp11;
	x3	=	m0 + m1;			x11 =	m0 - m1;			x7	=	((m3 *2)+ m2);		x15 =	(m3 - (m2*2));

	/*VERTICAL TRANSFORM*/
	m0	=	x0 + x3;				m3	=	x0 - x3;				m1	=	x1 + x2;				m2	=	x1 - x2;
	t0	=	(m0 + m1);			t2	=	(m0 - m1);			t1	=	((m3*2) + m2);		t3	=	(m3 - (m2*2));

	m0	=	x4 + x7;				m3	=	x4 - x7;				m1	=	x5 + x6;				m2	=	x5 - x6;
	t4	=	(m0 + m1);			t6	=	(m0 - m1);			t5	=	((m3*2) + m2);		t7	=	(m3 - (m2*2));

	m0	=	x8 + x11;			m3	=	x8 - x11;				m1	=	x9 + x10;			m2	=	x9 - x10;
	t8	=	(m0 + m1);			t10 =	(m0 - m1);			t9	=	((m3*2) + m2);		t11 =	(m3 - (m2*2));

	m0	=	x12 + x15;			m3	=	x12 - x15;			m1	=	x13 + x14;			m2	=	x13 - x14;
	t12 =	(m0 + m1);			t14 =	(m0 - m1);			t13 =	((m3*2) + m2);		t15 =	(m3 - (m2*2));

	/*	DATA PACKING		*/
	DCT_start[0]	=	(((t0&0x0000FFFF)<<16)	| (t3&0x0000FFFF));
	DCT_start[1]	=	(((t1&0x0000FFFF)<<16)	| (t2&0x0000FFFF));
	DCT_start[2]	=	(((t4&0x0000FFFF)<<16)	| (t7&0x0000FFFF));
	DCT_start[3]	=	(((t5&0x0000FFFF)<<16)	| (t6&0x0000FFFF));
	DCT_start[4]	=	(((t8&0x0000FFFF)<<16)	| (t11&0x0000FFFF));
	DCT_start[5]	=	(((t9&0x0000FFFF)<<16)	| (t10&0x0000FFFF));
	DCT_start[6]	=	(((t12&0x0000FFFF)<<16) 	| (t15&0x0000FFFF));
	DCT_start[7]	=	(((t13&0x0000FFFF)<<16) 	| (t14&0x0000FFFF));

}

#endif
#endif

#define NULL 0

int main() 
{
/***********************************************************************************************************/
	int input1 = 42, input2 = 23;
	struct doubleInt di;
	char tempString[20];
	
/***********************************************************************************************************/
	int i, j, k;
	int src0			=	0x00FF00FF;
	int src1			=	0x00FF00FF;
	int dest0		=	0x00000000;
	int dest1		=	0x00000000;
	int Stride		=	0;						// Onnly used for SB_start and will be equal to the width of Image
	int Stride_word =	0;						// Onnly used for SB_start and will be equal to the width of Image
	unsigned int Satd 	  	=   0;
	unsigned int Satd_min	=   0;					  // Minimum value of SATD and it corresponds to the best Candidate
	int* Cand_start_ptr	=   NULL;
	int* DCT_ptr1 	  	=   NULL;
	int* DCT_ptr2 	  	=   NULL;
	int* HT_ptr		  	=   NULL;

	int* Sub_Block_ptr			[16];
	int* Cand_ptr 				[16];
	int* SubPred_ptr				[16];
	unsigned int SB_start 			[16 * 4 * 1];   // 16 rows of a Current Macroblock (MB) and each row contains 4 integers and 4 bytes packed in one Integer
	unsigned int Cand_start		[16 * 4 * 1];   // 16 rows of a Candidate Macroblock (MB) and each row contains 4 integers and 4 bytes packed in one Integer
	unsigned int SubPred_start		[16 * 4 * 1];   // 16 rows of a Prediction Block and each row contains 4 integers and 4 bytes packed in one Integer
	int DCT_start 				[16 * 8]; 	  // 16 rows of a Integer Transformed Coefficients and each row contains 8 integers and two 16-bit Coefficients packed in one Integer
	int HT_start					[4 * 2];		  // 4 rows of a Hadamard Transformed Coefficients and each row contains 2 integers and two 16-bit Coefficients packed in one Integer

	int SATD_Counter =0;
	int DCT_Counter =0;
	int HT_Counter =0;
	
/***********************************************************************************************************/
/******************************************* TEST BED INTIALIZATION *****************************************/
/***********************************************************************************************************/

	DCT_ptr1		=	DCT_start;
	DCT_ptr2		=	DCT_start;
	HT_ptr		=	HT_start;
	Stride		=	16;
	Stride_word	=	Stride/4;
	Satd			=	0;
	Satd_min		=	0xFFFFFFFF;
	
/***********************************************************************************************************/
	/* DCT_start */
	for(i=0; i<128; i++)
	{
		DCT_start[i]	=	0;
	}
	
	/* HT_start */
	for(i=0; i<8; i++)
	{
		HT_start[i] =	0;
	}
	
/***********************************************************************************************************/
	/* SB_start */	
	for(i=0; i<16; i++)
	{
		SB_start[i*4 + 0]		=	0x02020304;
		SB_start[i*4 + 1]		=	0x05060708;
		SB_start[i*4 + 2]		=	0x090A0B0C;
		SB_start[i*4 + 3]		=	0x0D0E0F00;
	}
	
	/* Cand_start */	
	for(i=0; i<16; i++)
	{
		Cand_start[i*4 + 0] =	0x090F0A09;
		Cand_start[i*4 + 1] =	0x070C0300;
		Cand_start[i*4 + 2] =	0x04080D01;
		Cand_start[i*4 + 3] =	0x060E0B05;
	}
	
	/* SubPred_start */
	for(i=0; i<16; i++)
	{
		SubPred_start[i*4 + 0] =	0x090F0A09;
		SubPred_start[i*4 + 1] =	0x070C0300;
		SubPred_start[i*4 + 2] =	0x04080D01;
		SubPred_start[i*4 + 3] =	0x060E0B05;
	}
	
/***********************************************************************************************************/
	/* Initialize Cand_ptr[i] and with the starting address of each 4x4 sub-block in MB */
	//printf("Cand_start: 0x%x\t SB_start: 0x%x\t SubPred_start: 0x%x\n",Cand_start, SB_start, SubPred_start);
	for(i=0; i<4; i++)
	{
		Cand_ptr[i*4 + 0]			=	&(Cand_start[i*Stride + 0]);
		Cand_ptr[i*4 + 1]			=	&(Cand_start[i*Stride + 1]);
		Cand_ptr[i*4 + 2]			=	&(Cand_start[i*Stride + 2]);
		Cand_ptr[i*4 + 3]			=	&(Cand_start[i*Stride + 3]);
		
		Sub_Block_ptr[i*4 + 0]		=	&(SB_start[i*Stride + 0]);
		Sub_Block_ptr[i*4 + 1]		=	&(SB_start[i*Stride + 1]);
		Sub_Block_ptr[i*4 + 2]		=	&(SB_start[i*Stride + 2]);
		Sub_Block_ptr[i*4 + 3]		=	&(SB_start[i*Stride + 3]);
	
		//printf("Cand_ptr[i]: 0x%x\t Sub_Block_ptr[i]: 0x%x\t SubPred_ptr[i]: 0x%x\n",Cand_ptr[i], Sub_Block_ptr[i], SubPred_ptr[i]);
		//getchar();
	}
	
	for(i=0; i<16; i++)
	{
		SubPred_ptr[i]		=	&(SubPred_start[i*4]);
	}
/***********************************************************************************************************/
	//for(j=0; j<16; j++)
	for(j=0; j<16; j++)
	{
		for(i=0; i<16; i++)
		{
			writeClockCounter(0);
			Satd = SATD_4x4(Sub_Block_ptr[j], Stride_word, Cand_ptr[i]);
			SATD_Counter+=readClockCounter();
			
			if(Satd < Satd_min)
			{
				Cand_start_ptr	=	Cand_ptr[i];
				Satd_min			=	Satd;
				Satd				=	0;
			}
		}

		writeClockCounter(0);
		DCT_4x4(Sub_Block_ptr[j], Stride_word, Cand_start_ptr, DCT_ptr1);		// Calculating 16 4x4 Transforms per MB
		DCT_Counter+=readClockCounter();
		
		#if 0
		for(i=0; i<8; i++)
		{
			intToStr(DCT_ptr1[i], tempString);
			t_print(tempString);
			t_print("\r\n");
		}
		#endif
		DCT_ptr1 += 8;
	}
	
	writeClockCounter(0);
	Hadamard_4x4_IntraLuma(DCT_ptr2, HT_ptr);
	HT_Counter+=readClockCounter();

	SATD_Counter 	= 	SATD_Counter/256;
	DCT_Counter 		= 	DCT_Counter/16;

	intToStr(SATD_Counter, tempString);
	t_print(tempString);
	t_print("\r\n");
	
	intToStr(DCT_Counter, tempString);
	t_print(tempString);
	t_print("\r\n");
	
	intToStr(HT_Counter, tempString);
	t_print(tempString);
	t_print("\r\n");
	
#if 0
	for(i=0; i<8; i++)
	{
		intToStr(HT_start[i], tempString);
		t_print(tempString);
		t_print("\r\n");
	}
	
#endif

/***********************************************************************************************************/
#if 0	
	#ifdef SPECIAL_INSTRUCTIONS
		//di = Hadamard_2x2_Chroma(src0, src1);
	#else
		Hadamard_2x2_Chroma(src0, src1, &dest0, &dest1);
	#endif
	
#ifndef COSY
		printf("in1:%i in2:%i out1:%i out2:%i\n", input1, input2, di.a, di.b);
#else
		intToStr(di.a, tempString);
		t_print(tempString);
		t_print("\r\n");
	
		intToStr(di.b, tempString);
		t_print(tempString);
		t_print("\r\n");
#endif
#endif
/***********************************************************************************************************/


	return HT_ptr;
}
