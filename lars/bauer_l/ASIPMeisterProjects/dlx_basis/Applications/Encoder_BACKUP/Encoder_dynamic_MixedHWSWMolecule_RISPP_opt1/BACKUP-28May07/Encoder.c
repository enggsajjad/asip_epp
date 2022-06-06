/*===================================================================================*/
/*===================================================================================*/
/*

Start Date	: 15-MAY-2007

Group		:	Prof. Dr. Joerg Henkel
				CES - Chair for Embedded Systems
				Computer Science Department
				University of Karlsruhe

Authors 	:	MUHAMMAD SHAFIQUE

Description :	H264 Encoder for DLXSIM testing.
			Reference SW Architecture. Also used by different companies...Give references from papers (TODO)
				First MB Loop for MC
				Then MB Loop for ME(SAD and SATD), DCT, Q, IDCT, IQ, CAVLC
				At End MB Loop for Deblocking Filter

/*===================================================================================*/
/*===================================================================================*/


/************************************************************************************************************
 Include the libraries
************************************************************************************************************/

#ifndef COSY
#include "stdio.h"
#endif

#include "forecasts.h"

#ifdef COSY
#define SPECIAL_INSTRUCTIONS
#endif

/*
#ifndef COSY
	#include <stdio.h>
	#include <stdlib.h>
#else
	#include "lib_lcd.h"
	#include "intToStr.h"
	#include "clockCounter.h"
#endif
*/

/************************************************************************************************************/
/******************************************* DATA STRUCTURE ************************************************/
/***********************************************************************************************************/

/****************************************** Picture Variables ***********************************************/
// 16 rows of a Current Macroblock (MB) and each row contains 4 integers and 4 bytes packed in one Integer

unsigned char curr_MB[16*16] = 	{	
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177,
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177,
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177,
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177,
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177,
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177, 
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177,
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177,
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177, 
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177, 
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177,
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177, 
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177,
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177, 
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177, 
									255, 0, 15, 128, 24, 32, 68, 45, 87, 122, 245, 35, 64, 91, 219, 177
								};	

unsigned char ref_MB[16*16] =	{	
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191,
									129, 20, 27, 110, 97, 32, 169, 187, 11, 91, 0, 245, 64, 21, 197, 191
								};	
unsigned int SAD_Array[396];	// SAD Array for 396 MBs i.e. for 1 CIF Frame


int mbArray[10]={0,1,2,1,1,2,0,1,0,1};

// 742 Entries of I MBs in CIF (396 MB per Image)
int I_MB[] = {
  /*  0:*/ 396,35,35,38,42,31,30,29,36,38,32,33,31,24,28,20,30,23,38,30,28,34,21,24,29,29,30,29,25,26,
  /* 30:*/ 21,27,20,27,26,35,27,32,30,22,26,37,31,34,29,31,23,18,30,27,26,23,23,17,15,25,20,18,20,20,
  /* 60:*/ 20,21,20,16,12,10,9,11,9,4,3,7,9,13,6,7,12,11,11,8,10,12,14,13,14,20,22,23,25,
  /* 90:*/ 20,29,28,26,17,19,27,22,17,24,25,27,29,22,38,37,39,35,38,32,26,25,27,27,23,20,21,16,21,15,
  /*120:*/ 22,23,23,21,15,22,25,27,27,19,13,18,22,10,21,12,15,15,18,16,24,10,6,8,9,7,5,6,4,9,
  /*150:*/ 7,8,9,11,6,7,6,4,7,9,8,10,8,13,18,11,8,11,16,19,17,26,29,20,19,24,25,18,15,18,
  /*180:*/ 27,29,28,28,28,28,29,32,25,33,40,43,47,46,52,53,56,49,51,53,48,61,60,39,45,53,50,56,48,53,
  /*210:*/ 53,54,54,56,56,54,58,49,36,37,36,38,37,40,40,42,52,50,44,57,54,48,59,56,66,68,69,85,79,81,
  /*240:*/ 175,186,183,193,158,156,144,189,160,146,163,178,145,155,153,188,146,149,156,190,143,145,143,366,167,173,176,376,168,170,
  /*270:*/ 181,374,169,170,168,367,162,170,157,370,150,143,150,356,156,159,157,294,147,165,177,372,182,189,173,218,158,158,162,206,
  /*300:*/ 142,142,152,209,143,160,149,378,161,152,159,371,156,164,163,279,153,159,155,202,135,169,161,361,129,132,139,353,141,155,
  /*330:*/ 145,356,121,131,142,355,133,134,143,361,148,154,145,355,130,155,147,0,0,0,0,0,0,3,7,8,15,27,45,57,
  /*360:*/ 50,37,21,17,14,6,0,0,0,0,3,15,28,36,26,6,12,11,11,14,13,16,19,16,12,16,30,25,25,22,
  /*390:*/ 18,14,6,1,5,12,13,22,24,35,42,42,27,3,2,3,5,16,23,30,33,38,44,35,30,18,9,6,10,19,
  /*420:*/ 14,6,4,15,17,29,19,9,3,1,11,19,23,21,3,2,4,4,6,0,0,2,5,8,5,5,0,1,1,1,
  /*450:*/ 1,0,1,1,0,1,5,0,2,1,6,3,2,5,4,8,0,2,3,2,5,1,4,2,4,2,5,1,2,0,
  /*480:*/ 3,3,1,7,6,10,21,32,39,43,55,81,104,114,118,114,84,67,73,83,77,102,98,80,71,67,64,64,63,55,
  /*510:*/ 34,32,39,24,22,20,22,24,41,20,24,24,15,19,21,18,16,15,12,11,16,13,6,7,7,7,14,8,10,7,
        9,6,5,7,3,36,51,57,58,72,68,85,101,99,109,126,
	151,124,135,123,107,131,126,120,129,137,123,113,120,97,92,88,96,73,85,77,69,76,85,72,59,63,67,66,74,69,57,68,88,71,74,84,
	60,49,53,57,62,57,59,57,52,64,62,56,61,61,55,57,61,59,58,60,58,52,53,48,52,45,50,50,54,55,64,66,54,54,58,54,49,50,65,64,57,
	55,58,57,51,40,53,47,55,47,56,50,15,34,40,27,29,18,18,17,25,19,19,28,44,44,34,18,14,13,6,6,10,16,13,10,13,5,6,5,2,2,4,7,17,17,
	13,13,16,9,6,16,17,13,13,13,7,6,21,33,19,18,7,10,22,24,22,18,11,18,14,7,6,9,9,18,19,25,21,17,16,30,36,60,33,16,18,24,43,45,34,
	37,42,29,23,37,30,23,20,19,41,52,59,72,86,95,27,19,17,11,4};


#define USE_DETAILED_IP_SEQUENCE 0

#if USE_DETAILED_IP_SEQUENCE
// '0' means: P-MB and '1' means: I-MB. A Frame consists of 18 lines with 22 MBs each.
int IP_DistributionInOneFrame[396] = {
  /* 1:*/ 0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,
  /* 2:*/ 0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,
  /* 3:*/ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,
  /* 4:*/ 0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,
  /* 5:*/ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  /* 6:*/ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  /* 7:*/ 0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  /* 8:*/ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  /* 9:*/ 0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,
  /*10:*/ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,
  /*11:*/ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  /*12:*/ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  /*13:*/ 0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  /*14:*/ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  /*15:*/ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,
  /*16:*/ 0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,
  /*17:*/ 0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  /*18:*/ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0
};
#endif



/************************************************************************************************************/
/*********************************************** MACROS ****************************************************/
/***********************************************************************************************************/

#define ABS(A)		((A<0) ? (-A) : (A)) 
#define BYTEPACK_M(shift,r0,r1) 		(((r0)<<(shift))|((r1)>>((32-shift))))
#define CLIP3_M(src,min,max)		((src<min) ? min : ((src>max) ? max : src))


/************************************************************************************************************/
/**************************************** SPECIAL INSTRUCTIONS **********************************************/
/***********************************************************************************************************/
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
/************************************************************************************************************
************************************************************************************************************/
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
	const int sixteen	=	16;
	const int twenty4	=	24;
	
	int test0, test1, test2, test3;
	/*		FORMAT: 		DCT_start [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15	 16 ...... 255] 	*/

	/*	DIFFERENCE CALCULATION	*/
	temp0	=	(((SB_start[0]&0xFF000000)>>twenty4) - ((Cand_start[0]&0xFF000000)>>twenty4));
	temp1	=	(((SB_start[0]&0x00FF0000)>>sixteen) - ((Cand_start[0]&0x00FF0000)>>sixteen));
	temp2	=	(((SB_start[0]&0x0000FF00)>>eight) - ((Cand_start[0]&0x0000FF00)>>eight));
	temp3	=	((SB_start[0]&0x000000FF) - (Cand_start[0]&0x000000FF));
	SB_start	+=	Stride; 	Cand_start	+=	4;
	
	temp4	=	(((SB_start[0]&0xFF000000)>>twenty4) - ((Cand_start[0]&0xFF000000)>>twenty4));
	temp5	=	(((SB_start[0]&0x00FF0000)>>sixteen) - ((Cand_start[0]&0x00FF0000)>>sixteen));
	temp6	=	(((SB_start[0]&0x0000FF00)>>eight) - ((Cand_start[0]&0x0000FF00)>>eight));
	temp7	=	((SB_start[0]&0x000000FF) - (Cand_start[0]&0x000000FF));
	SB_start	+=	Stride; 	Cand_start	+=	4;
	
	temp8	=	(((SB_start[0]&0xFF000000)>>twenty4) - ((Cand_start[0]&0xFF000000)>>twenty4));
	temp9	=	(((SB_start[0]&0x00FF0000)>>sixteen) - ((Cand_start[0]&0x00FF0000)>>sixteen));
	temp10	=	(((SB_start[0]&0x0000FF00)>>eight) - ((Cand_start[0]&0x0000FF00)>>eight));
	temp11	=	((SB_start[0]&0x000000FF) - (Cand_start[0]&0x000000FF));
	SB_start	+=	Stride; 	Cand_start	+=	4;
	
	temp12	=	(((SB_start[0]&0xFF000000)>>twenty4) - ((Cand_start[0]&0xFF000000)>>twenty4));
	temp13	=	(((SB_start[0]&0x00FF0000)>>sixteen) - ((Cand_start[0]&0x00FF0000)>>sixteen));
	temp14	=	(((SB_start[0]&0x0000FF00)>>eight) - ((Cand_start[0]&0x0000FF00)>>eight));
	temp15	=	((SB_start[0]&0x000000FF) - (Cand_start[0]&0x000000FF));
	

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

	return (satd);

}
#endif



#ifdef SPECIAL_INSTRUCTIONS
 	asm void MotionEstimation(int* currMB, int* refMB, int* SAD) {
	  @[
		.barrier
	  ]
		nop
		nop
		nop
		MotionEstimation @{SAD}, @{currMB}, @{refMB}
 		nop
		nop
		nop
	}
#else

	void MotionEstimation(int* currMB, int* refMB, int* SAD)
	{
		unsigned int 		SAD_temp 		= 	0;
		unsigned char* 	current_MB 		= 	(unsigned char*)currMB;
		unsigned char* 	reference_MB 	= 	(unsigned char*)refMB;
		
		int i = 0;
		
		for(i=0; i<16; i++)
		{
			SAD_temp += ABS(current_MB[0] - reference_MB[0]);
			SAD_temp += ABS(current_MB[1] - reference_MB[1]);
			SAD_temp += ABS(current_MB[2] - reference_MB[2]);
			SAD_temp += ABS(current_MB[3] - reference_MB[3]);
			SAD_temp += ABS(current_MB[4] - reference_MB[4]);
			SAD_temp += ABS(current_MB[5] - reference_MB[5]);
			SAD_temp += ABS(current_MB[6] - reference_MB[6]);
			SAD_temp += ABS(current_MB[7] - reference_MB[7]);
			SAD_temp += ABS(current_MB[8] - reference_MB[8]);
			SAD_temp += ABS(current_MB[9] - reference_MB[9]);
			SAD_temp += ABS(current_MB[10] - reference_MB[10]);
			SAD_temp += ABS(current_MB[11] - reference_MB[11]);
			SAD_temp += ABS(current_MB[12] - reference_MB[12]);
			SAD_temp += ABS(current_MB[13] - reference_MB[13]);
			SAD_temp += ABS(current_MB[14] - reference_MB[14]);
			SAD_temp += ABS(current_MB[15] - reference_MB[15]);
			current_MB+=16; reference_MB+=16; 
		}
		*SAD = SAD_temp;
	}
#endif

#ifdef SPECIAL_INSTRUCTIONS
	asm void LoopFilter(int* refMB, int w_Stride, int* DC_V) {
	  @[
		.barrier
	  ]
		nop
		nop
		nop
		LoopFilter @{DC_V}, @{refMB}, @{w_Stride}
		nop
		nop
		nop
	}
#else
	void LoopFilter(int* refMB, int w_Stride, int* DC_V)
	{
	}
#endif


// SHAF: SI for INTRA-PATH (I)
#ifdef SPECIAL_INSTRUCTIONS
	asm void IPred_HDC_16x16(int* refMB, int w_Stride, int* DC_H, int* Pred_H) {
	  @[
		.barrier
	  ]
		;; SINAS: IPred_HDC_16x16()
		nop
		nop
		nop
		IPred_HDC16x16 @{Pred_H}, @{DC_H}, @{refMB}, @{w_Stride}
		nop
		nop
		nop
	}
#else
	void IPred_HDC_16x16(int* refMB, int w_Stride, int* DC_H, int* Pred_H)
	{
		int* src_ptr;
		unsigned int DCH;
		unsigned int r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15;
		
		const int eight 	=	8;
		const int sixteen	=	16;
		const int twenty4	=	24;
		
		src_ptr	=	refMB - 1;
		r0		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r1		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r2		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r3		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r4		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r5		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r6		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r7		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r8		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r9		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r10		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r11		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r12		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r13		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r14		=	(src_ptr[0]&0x000000FF);	src_ptr+=w_Stride;
		r15		=	(src_ptr[0]&0x000000FF);
		
		Pred_H[0]	=	((r0<<twenty4)|(r0<<sixteen)|(r0<<eight)|(r0));
		Pred_H[1]	=	((r1<<twenty4)|(r1<<sixteen)|(r1<<eight)|(r1));
		Pred_H[2]	=	((r2<<twenty4)|(r2<<sixteen)|(r2<<eight)|(r2));
		Pred_H[3]	=	((r3<<twenty4)|(r3<<sixteen)|(r3<<eight)|(r3));
		Pred_H[4]	=	((r4<<twenty4)|(r4<<sixteen)|(r4<<eight)|(r4));
		Pred_H[5]	=	((r5<<twenty4)|(r5<<sixteen)|(r5<<eight)|(r5));
		Pred_H[6]	=	((r6<<twenty4)|(r6<<sixteen)|(r6<<eight)|(r6));
		Pred_H[7]	=	((r7<<twenty4)|(r7<<sixteen)|(r7<<eight)|(r7));
		Pred_H[8]	=	((r8<<twenty4)|(r8<<sixteen)|(r8<<eight)|(r8));
		Pred_H[9]	=	((r9<<twenty4)|(r9<<sixteen)|(r9<<eight)|(r9));
		Pred_H[10]	=	((r10<<twenty4)|(r10<<sixteen)|(r10<<eight)|(r10));
		Pred_H[11]	=	((r11<<twenty4)|(r11<<sixteen)|(r11<<eight)|(r11));
		Pred_H[12]	=	((r12<<twenty4)|(r12<<sixteen)|(r12<<eight)|(r12));
		Pred_H[13]	=	((r13<<twenty4)|(r13<<sixteen)|(r13<<eight)|(r13));
		Pred_H[14]	=	((r14<<twenty4)|(r14<<sixteen)|(r14<<eight)|(r14));
		Pred_H[15]	=	((r15<<twenty4)|(r15<<sixteen)|(r15<<eight)|(r15));
		
		DCH		=	r0 + r1 + r2 + r3 + r4 + r5 + r6 + r7 + r8 + r9 + r10 + r11 + r12 + r13 + r14 + r15;
		*DC_H	=	DCH;
	}
#endif

#ifdef SPECIAL_INSTRUCTIONS
	asm void IPred_VDC_16x16(int* refMB, int w_Stride, int* DC_V) {
	  @[
		.barrier
	  ]
		;; SINAS: IPred_VDC_16x16()
		nop
		nop
		nop
		IPred_VDC16x16 @{DC_V}, @{refMB}, @{w_Stride}
		nop
		nop
		nop
	}
#else
	void IPred_VDC_16x16(int* refMB, int w_Stride, int* DC_V)
	{
		int* src_ptr;
		unsigned int r0, r1, r2, r3, DCV;
		unsigned int temp0, temp1, temp2, temp3;
		
		src_ptr	=	refMB - w_Stride;
		r0		=	src_ptr[0];
		r1		=	src_ptr[1];
		r2		=	src_ptr[2];
		r3		=	src_ptr[3];

		temp0	=	((r0&0xFF000000)+(r0&0x00FF0000)+(r0&0x0000FF00)+(r0&0x000000FF));
		temp1	=	((r1&0xFF000000)+(r1&0x00FF0000)+(r1&0x0000FF00)+(r1&0x000000FF));
		temp2	=	((r2&0xFF000000)+(r2&0x00FF0000)+(r2&0x0000FF00)+(r2&0x000000FF));
		temp3	=	((r3&0xFF000000)+(r3&0x00FF0000)+(r3&0x0000FF00)+(r3&0x000000FF));

		DCV		=	temp0+temp1+temp2+temp3;
		*DC_V	=	DCV;
	}
#endif


// SHAF: SI for INTER-PATH (P)
#ifdef SPECIAL_INSTRUCTIONS
	asm void MC_Hz_4(int* refPtr, int SH, int* dest_MCH) {
	  @[
		.barrier
	  ]
		nop
		nop
		nop
		MC_Hz4 @{dest_MCH}, @{refPtr}, @{SH}
		nop
		nop
		nop
	}
#else
	
	void MC_Hz_4(int* refPtr, int SH, int* dest_MCH)
	{
		int shift;
		int* src_ptr;
		int f0, f1, f2, f3;
		unsigned int r0, r1, r2;
		unsigned int temp0, temp1, temp2;
		
		const int eight 	=	8;
		const int sixteen	=	16;
		const int twenty4	=	24;
		
		shift		=	SH*8;
		
		src_ptr	=	refPtr;
		r0		=	refPtr[0];
		r1		=	refPtr[1];
		r2		=	refPtr[2];

		// ALIGN DATA AS PER SHIFT
		temp0	=	BYTEPACK_M(shift, r0, r1);
		temp1	=	BYTEPACK_M(shift, r1, r2);
		temp2	=	BYTEPACK_M(shift, r2, 0);

		f0		=	CLIP3_M((((temp0&0xFF000000)-(5*(temp0&0x00FF0000))+(20*(temp0&0x0000FF00))+(20*(temp0&0x000000FF))-(5*(temp1&0xFF000000))+(temp1&0x00FF0000)+16)>>5), 0, 255);
		f1		=	CLIP3_M((((temp0&0x00FF0000)-(5*(temp0&0x0000FF00))+(20*(temp0&0x000000FF))+(20*(temp1&0xFF000000))-(5*(temp1&0x00FF0000))+(temp1&0x0000FF00)+16)>>5), 0, 255);
		f2		=	CLIP3_M((((temp0&0x0000FF00)-(5*(temp0&0x000000FF))+(20*(temp1&0xFF000000))+(20*(temp1&0x00FF0000))-(5*(temp1&0x0000FF00))+(temp1&0x000000FF)+16)>>5), 0, 255);
		f3		=	CLIP3_M((((temp0&0x000000FF)-(5*(temp1&0xFF000000))+(20*(temp1&0x00FF0000))+(20*(temp1&0x0000FF00))-(5*(temp1&0x000000FF))+(temp2&0xFF000000)+16)>>5), 0, 255);
		
		*dest_MCH	=	((f0<<twenty4)|(f1<<sixteen)|(f2<<eight)|(f3));
	}
#endif


/************************************************************************************************************/
/***************************************** ENCODER FUNCTIONS ***********************************************/
/***********************************************************************************************************/


/*********************************** IMAGE LEVEL MOTION ESTIMATION *****************************************/
int doMotionEstimation(int* curr_frame, int* ref_frame, int macroblockCount, int Stride) 
{
	int* 	curr_MB_ptr		=	curr_frame;
	int* 	ref_MB_ptr 		=	ref_frame;
	int*	cand_ptr		=	ref_MB_ptr;
	int 	w_Stride		=	Stride/4;
	int mvx 				=	0;
	int mvy 				=	0;
	unsigned int 	SAD		=	0;
	
	unsigned int minSAD	=	0xFFFFFFFF;
	int best_mvx			=	0;
	int best_mvy			=	0;
	
	int i=0, j=0, c=0;
	
	
	//iterate over every Macroblock and the make some dummy operations;
	for(i=0; i<macroblockCount; i++) 
	{
		for(j=0; j<100; j++) 
		{
			c = c + SAD;
			cand_ptr = (int*)((unsigned long)ref_MB_ptr+(mvy*Stride)+mvx);
			//MotionEstimation(curr_MB_ptr, w_Stride, cand_ptr, &SAD);
			MotionEstimation(curr_MB_ptr, cand_ptr, &SAD);
			if(SAD<minSAD)
			{
				minSAD 		= 	SAD;
				best_mvx	=	mvx;
				best_mvy	=	mvy;
				//best_mvx 	= 	mvx<<2;		//Convert into Quater Pel Resolution ... TODO Later when MC is fully supported
				//best_mvy 	= 	mvy<<2;		//Convert into Quater Pel Resolution ... TODO Later when MC is fully supported
			}
		}
		SAD_Array[i] = SAD;
	}

	return c;
}

/************************************* MB LEVEL MOTION ESTIMATION *******************************************/
int doMB_MotionEstimation(int* curr_frame, int* ref_frame, int MBNumber, int Stride) 
{
	int*	curr_MB_ptr 	=	curr_frame;
	int*	ref_MB_ptr		=	ref_frame;
	int*	cand_ptr		=	ref_MB_ptr;
	int 	w_Stride		=	Stride/4;
	int mvx 				=	0;
	int mvy 				=	0;
	unsigned int	SAD 	=	0;
	
	unsigned int minSAD =	0xFFFFFFFF;
	int best_mvx			=	0;
	int best_mvy			=	0;
	
	int i=0, j=0, c=0;
	
	
	//iterate over every candidate;
	for(j=0; j<100; j++) 
	{
		c = c + SAD;
		cand_ptr = (int*)((unsigned long)ref_MB_ptr+(mvy*Stride)+mvx);
		//MotionEstimation(curr_MB_ptr, w_Stride, cand_ptr, &SAD);
		MotionEstimation(curr_MB_ptr, cand_ptr, &SAD);
		if(SAD<minSAD)
		{
			minSAD		=	SAD;
			best_mvx	=	mvx;
			best_mvy	=	mvy;
		}
	}
	SAD_Array[MBNumber] = SAD;

	return c;
}


int doEncodeMB(const int imageNumber, const int numberOfMBs) {
  int currentMB, i, dummy;
  int refMB[16];
  int Pred_H[16];
  int DC_H = 0;
  int DC_V = 0;
  int dest_MCH = 0;
  int shift = 1;
  int retVal = 0;

  const int numberOfIMBs = I_MB[imageNumber]; //imageNumber==150 ? 396 : I_MB[imageNumber];
  const int numberOfPMBs = numberOfMBs - numberOfIMBs; //imageNumber==150 ? 0 : (numberOfMBs - numberOfIMBs);
  const int thresholdRatio = numberOfIMBs==0 ? 0 : (numberOfPMBs << 7) / numberOfIMBs;  // The shift is for getting a higher precision (fixed-point number)
  int alreadyExecutedIMBs = 0;
  int alreadyExecutedPMBs = 0;


  //printf("\n--------------------------------------------------------------------\n");
  //printf("IMAGE: %i, numberOfIMBs: %i, numberOfPMBs: %i, thresholdRatio:%i\n", imageNumber, numberOfIMBs, numberOfPMBs, thresholdRatio);
  for (currentMB=0; currentMB < numberOfMBs; currentMB++) {
	
#if USE_DETAILED_IP_SEQUENCE
    if ( IP_DistributionInOneFrame[currentMB]==1 ) {
#else
    if ( numberOfIMBs>0 && (numberOfPMBs==0 || alreadyExecutedIMBs == 0 || ((alreadyExecutedPMBs<<7)/alreadyExecutedIMBs) > thresholdRatio ) ) {
#endif
      alreadyExecutedIMBs++;
      //printf("  Performing IMB    : executedIMBs: %i, executedPMBs: %i, threshold: %i\n", alreadyExecutedIMBs, alreadyExecutedPMBs,
      //       alreadyExecutedIMBs==0 ? 0 : ((alreadyExecutedPMBs<<7)/alreadyExecutedIMBs) );
      for (i=0; i<16; i++) {
	IPred_HDC_16x16(refMB, 1, &DC_H, Pred_H);
	IPred_VDC_16x16(refMB, 1, &DC_V);
      }
    } else {
      alreadyExecutedPMBs++;
      //printf("  Performing     PMB: executedIMBs: %i, executed PMBs: %i, threshold: %i\n", alreadyExecutedIMBs, alreadyExecutedPMBs,
      //       alreadyExecutedPMBs<<7/alreadyExecutedIMBs );
      for (i=0; i<16; i++) {
	MC_Hz_4(refMB, shift, &dest_MCH);
      }
    }
    for (dummy=0; dummy < 10; dummy++) {
      retVal += dummy;
    }
  }

  return retVal;
}



int doLoopFilter(int imageNumber, int macroblockCount) 
{
	int i=0, j=0, c=0;

	//iterate over every Macroblock and the make some dummy operations;
	for(i=0; i<macroblockCount; i++) 
	{
		for(j=0; j<32; j++) 
		{
			c = c + j;
			LoopFilter(0, 1, 0);
		}
	}

	return c;
}



/************************************************************************************************************/
/*************************************** MAIN ENCODING FUNCTION ********************************************/
/***********************************************************************************************************/

int main() 
{
	/**************************************** Variable Declaration *********************************************/
	int numberOfImages      	= 	30;
	int startImage          		= 	240;
	int numberOfMacroblocks	= 	396;
	int width 				= 	352;		// CIF : 352 x 288  => 396 MBs / Frame
	int height 				= 	288;
	int Stride 				= 	width;
	
	int* curr_frame			=	curr_MB;
	int* ref_frame			=	ref_MB;

	int currentImage;
	int retVal = 0;

	/************************************** START THE IMAGE LOOP *******************************************/
	for(currentImage=startImage; currentImage<startImage+numberOfImages; currentImage++)
	{
		// SHAF: Call this function if MB Level ME inside doEncodeMB Loop
		retVal += doMB_MotionEstimation(curr_frame, ref_frame, 0, Stride);
		retVal += doMotionEstimation(curr_frame, ref_frame, numberOfMacroblocks, Stride);
		retVal += doEncodeMB(currentImage, numberOfMacroblocks);
		retVal += doLoopFilter(currentImage, numberOfMacroblocks);
	}
	
	/************************************** START THE IMAGE LOOP *******************************************/
	#if 0
	for(currentImage=startImage; currentImage<startImage+numberOfImages; currentImage++)
	{
	  forecast_SI_IPred_HDC16x16_2800();
	  forecast_SI_IPred_VDC16x16_2800();
	  forecast_SI_MC_Hz4_3536();
	
	  retVal += doEncodeMB(currentImage, numberOfMacroblocks);
	
	  forecast_SI_IPred_HDC16x16_0();
	  forecast_SI_IPred_VDC16x16_0();
	  forecast_SI_MC_Hz4_0();
	  forecast_SI_LoopFilter_12672();
	
	  retVal += doLoopFilter(currentImage, numberOfMacroblocks);
	
	  forecast_SI_LoopFilter_0();
	}
	#endif
	
	return retVal;
}

