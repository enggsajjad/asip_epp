#ifndef COSY
#include "stdio.h"
#else
#include "lib_lcd.h"
#include "intToStr.h"
#include "clockCounter.h"
#endif

#include "forecasts.h"

#define SPECIAL_INSTRUCTIONS
//#define START_UP_RECONFIGURATION


int c=0;
int mbArray[10]={0,1,2,1,1,2,0,1,0,1};

#if 1
// 742 Entries of I MBs in CIF (396 MB per Image)
int I_MB[] = {396,35,35,38,42,31,30,29,36,38,32,33,31,24,28,20,30,23,38,30,28,34,21,24,29,29,30,29,25,26,21,27,20,27,
	26,35,27,32,30,22,26,37,31,34,29,31,23,18,30,27,26,23,23,17,15,25,20,18,20,20,20,21,20,16,12,10,9,11,9,4,3,7,9,13,6,7,12,
	11,11,8,10,12,14,13,14,20,22,23,25,20,29,28,26,17,19,27,22,17,24,25, 27,29,22,38,37,39,35,38,32,26,25,27,27,23,20,21,16,
	21,15,22,23,23,21,15,22,25,27,27,19,13,18,22,10,21,12,15,15,18,16,24,10,6,8,9,7,5,6,4,9,7,8,9,11,6,7,6,4,7,9,8,10,8,13,18,11,
	8,11,16,19,17,26,29,20,19,24,25,18,15,18,27,29,28,28,28,28,29,32,25,33,40,43,47,46,52,53,56,49,51,53,48,61,60,39,45,53,50,
	56,48,53,53,54,54,56,56,54,58,49,36,37,36,38,37,40,40,42,52,50,44,57,54,48,59,56,66,68,69,85,79,81,175,186,183,193,158,156,
	144,189,160,146,163,178,145,155,153,188,146,149,156,190,143,145,143,366,167,173,176,376,168,170,181,374,169,170,168,
	367,162,170,157,370,150,143,150,356,156,159,157,294,147,165,177,372,182,189,173,218,158,158,162,206,142,142,152,209,
	143,160,149,378,161,152,159,371,156,164,163,279,153,159,155,202,135,169,161,361,129,132,139,353,141,155,145,356,121,
	131,142,355,133,134,143,361,148,154,145,355,130,155,147,0,0,0,0,0,0,3,7,8,15,27,45,57,50,37,21,17,14,6,0,0,0,0,3,15,28,36,
	26,6,12,11,11,14,13,16,19,16,12,16,30,25,25,22,18,14,6,1,5,12,13,22,24,35,42,42,27,3,2,3,5,16,23,30,33,38,44,35,30,18,9,6,10,19,
	14,6,4,15,17,29,19,9,3,1,11,19,23,21,3,2,4,4,6,0,0,2,5,8,5,5,0,1,1,1,1,0,1,1,0,1,5,0,2,1,6,3,2,5,4,8,0,2,3,
	2,5,1,4,2,4,2,5,1,2,	0,3,3,1,7,6,10,21,32,39,43,55,81,104,114,118,114,84,67,73,83,77, 102,98,80,71,67,64,64,63,55,34,32,
	39,24,22,20,22,24,41,20,24,24,15,19,21,18,16,15,12,11,16,13,6,7,7,7,14,8,10,7,9,6,5,7,3,36,51,57,58,72,68,85,101,99,109,126,
	151,124,135,123,107,131,126,120,129,137,123,113,120,97,92,88,96,73,85,77,69,76,85,72,59,63,67,66,74,69,57,68,88,71,74,84,
	60,49,53,57,62,57,59,57,52, 64,62,56,61,61,55,57,61,59,58,60,58,52,53,48,52,45,50,50,54,55,64,66,54,54,58,54,49,50,65,64,57,
	55,58,57,51,40,53,47,55,47,56,50,15,34,40,27,29,18,18,17,25,19,19,28,44,44,34,18,14,13,6,6,10,16,13,10,13,5,6,5,2,2,4,7,17,17,
	13,13,16,9,6,16,17,13,13,13,7,6,21,33,19,18,7,10,22,24,22,18,11,18,14,7,6,9,9,18,19,25,21,17,16,30,36,60,33,16,18,24,43,45,34,
	37,42,29,23,37,30,23,20,19,41,52,59,72,86,95,27,19,17,11,4};
#endif


#ifdef SPECIAL_INSTRUCTIONS
	asm void optimize_F(int* refMB, int w_Stride, int* DC_V) {
	  @[
		.barrier
	  ]
		;; SINAS: optimize_F()
		nop
		nop
		nop
		optimizeF @{DC_V}, @{refMB}, @{w_Stride}
		nop
		nop
		nop
	}
#else

	void optimize_F(int* refMB, int w_Stride, int* DC_V)
	{
	}
#endif

#ifdef SPECIAL_INSTRUCTIONS
	asm void HD_SI(int* refMB, int w_Stride, int* DC_V) {
	  @[
		.barrier
	  ]
		;; SINAS: HD_SI()
		nop
		nop
		nop
		HD @{DC_V}, @{refMB}, @{w_Stride}
		nop
		nop
		nop
	}
#else

	void HD_SI(int* refMB, int w_Stride, int* DC_V)
	{
	}
#endif

#if 1
#ifdef COSY

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
		;; SINAS: MC_Hz_4()
		nop
		nop
		nop
		MC_Hz4 @{dest_MCH}, @{refPtr}, @{SH}
		nop
		nop
		nop
	}
#else

	#define BYTEPACK_M(shift,r0,r1) 		(((r0)<<(shift))|((r1)>>((32-shift))))
	#define CLIP3_M(src,min,max) 		((src<min) ? min : ((src>max) ? max : src))
	
	void MC_Hz_4(int* refPtr, int SH, int* dest_MCH)
	{
		int shift;
		int* src_ptr;
		int f0, f1, f2, f3;
		unsigned int r0, r1, r2, r3, DCV;
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
#endif
#endif

int doMotionEstimation(int imageNumber, int macroblockCount) 
{
	int i=0, j=0;

	//iterate over every Macroblock and the make some dummy operations;
	for(i=0; i<macroblockCount; i++) 
	{
		for(j=0; j<100; j++) 
		{
			// Put SI here
			// BlowFish
			c = c + j;
			optimize_F(0, 0, 0);
		}
	}

	return c;
}

int doEncodeMB(int imageNumber, int macroblockCount) 
{
	int i=0, j=0;
	int IPred_HDC_16x16_Counter 	=	0;
	int IPred_VDC_16x16_Counter 	=	0;
	int MC_Hz_4_Counter 				=	0;
	char tempString[20];
	int refMB [16];
	int Pred_H [16];
	int DC_H=0;
	int DC_V=0;
	int dest_MCH=0;
	int shift=1;
	
	int IMB	=	I_MB[imageNumber];
	int PMB	=	macroblockCount -IMB;

	if(imageNumber==150)
	{
		IMB = 396;
		PMB = 0;
	}
	
#if 1
	//iterate over every Macroblock and the make some dummy operations;
	for(i=0; i<IMB; i++)
	{
			IPred_HDC_16x16(refMB, 1, &DC_H, Pred_H);
			IPred_VDC_16x16(refMB, 1, &DC_V);

			c = 0;
			for(j=0; j<100; j++) 
			{
				c = c + j;
			}
	}
	for(i=0; i<PMB; i++) 
	{
		MC_Hz_4(refMB, shift, &dest_MCH);
		for(j=0; j<100; j++) 
		{	
			c = c + j;
		}
	}
	
	return c;
	
#else
	//iterate over every Macroblock and the make some dummy operations;
	for(i=0; i<macroblockCount; i++) 
	{
		if(mbArray[i%10] == 0)
		{
				writeClockCounter(0);
				IPred_HDC_16x16(refMB, 1, &DC_H, Pred_H);
				IPred_HDC_16x16_Counter+=readClockCounter();

				writeClockCounter(0);
				IPred_VDC_16x16(refMB, 1, &DC_V);
				IPred_VDC_16x16_Counter+=readClockCounter();

				intToStr(IPred_HDC_16x16_Counter, tempString);
				t_print(tempString);
				t_print("\r\n");
				
				intToStr(IPred_VDC_16x16_Counter, tempString);
				t_print(tempString);
				t_print("\r\n");

			//DUMMY LINE
			//DC_H = DC_H+DC_V+Pred_H[0]+Pred_H[15];
			
			c = 0;
			for(j=0; j<100; j++) 
			{
				c = c + j;
			}
		}
		else
		{
				writeClockCounter(0);
				MC_Hz_4(refMB, shift, &dest_MCH);
				MC_Hz_4_Counter+=readClockCounter();

				intToStr(MC_Hz_4_Counter, tempString);
				t_print(tempString);
				t_print("\r\n");

			c = 0;
			for(j=0; j<100; j++) 
			{	
				c = c + j;
			}
		}
	}	// Dummy Return
	DC_H=DC_H+DC_V+dest_MCH;
	return DC_H;

#endif


}

int doLoopFilter(int imageNumber, int macroblockCount) 
{
	int i=0, j=0;

	//iterate over every Macroblock and the make some dummy operations;
	for(i=0; i<macroblockCount; i++) 
	{
		for(j=0; j<32; j++) 
		{
			// Put SI here
			// HD
			c = c + j;
			HD_SI(0, 1, 0);
		}
	}

	return c;
}

    
int main() 
{
	int i, j, k;
	
#if 1
	int numberOfImages 		= 	375;
	int numberOfMacroblocks 	= 	396;
#else
	int numberOfImages		=	1;
	int numberOfMacroblocks 	=	100;
#endif

	int a		=	0;
	int b 	= 	0;
	int d		=	0;



#if 1		
	
	#ifdef START_UP_RECONFIGURATION
			forecast_IPred_HDC16x16_73();
			forecast_IPred_VDC16x16_73();
			forecast_MC_Hz4_323();
			forecast_optimizeF_39600();		//	396 x 100
			forecast_HD_12672();			// 	396 x 32
	#else
			forecast_IPred_HDC16x16_396();
			forecast_IPred_VDC16x16_396();
	#endif
	
	// DUMMY LOOP TO REPRESENT CONTROL FLOW AND MEMORY INITIALIZATIONS
	// It also provides some time for initial reconfiguations
	for(i=0; i<numberOfMacroblocks; i++) 
	{
		for(j=0; j<100; j++) 
		{
			a = a + j;
		}
	}

	// START THE IMAGE PROCESSING LOOP
	for(i=150; i<150+numberOfImages; i++)
	{
		if(i != 150)
		{
			#ifndef START_UP_RECONFIGURATION
				forecast_optimizeF_39600();
			#endif
		
			a += doMotionEstimation(i, numberOfMacroblocks);

                        #ifndef START_UP_RECONFIGURATION
			        forecast_optimizeF_0();
				forecast_IPred_HDC16x16_46();
				forecast_IPred_VDC16x16_46();
				forecast_MC_Hz4_350();
                        #endif
		}
		
		a += doEncodeMB(i, numberOfMacroblocks);
		
		#ifndef START_UP_RECONFIGURATION
			forecast_IPred_HDC16x16_0();
			forecast_IPred_VDC16x16_0();
			forecast_MC_Hz4_0();
			forecast_HD_12672();
		#endif

		a += doLoopFilter(i, numberOfMacroblocks);	
		
                #ifndef START_UP_RECONFIGURATION
			forecast_HD_0();
                #endif
	}

#else

// DUMMY LOOP TO REPRESENT CONTROL FLOW AND MEMORY INITIALIZATIONS
// It also provides some time for initial reconfiguations
	for(i=0; i<numberOfMacroblocks; i++) 
	{
		for(j=0; j<100; j++) 
		{
			a = a + j;
		}
	}

	optimize_F(0, 0, 0);
	optimize_F(0, 0, 0);
	HD_SI(0, 1, 0);
	
#endif
	
	return a;
	
}


