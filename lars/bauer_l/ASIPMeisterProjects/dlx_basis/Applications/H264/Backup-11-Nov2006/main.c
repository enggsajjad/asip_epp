#ifndef COSY
#include "stdio.h"
#else
#include "lib_lcd.h"
#include "intToStr.h"
#endif

struct doubleInt { int a; int b; };


#ifdef COSY
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
struct doubleInt Hadamard_2x2_Chroma(int in1, int in2) {
  struct doubleInt temp;
  temp.a = in1*in2;
  temp.b = in1+in2;
  return temp;
}
#endif

#ifdef COSY

asm void Hadamard_4x4_IntraLuma(int* in, int* out) {
  @[
  	.barrier
  ]
	;; SINAS: Hadamard 4x4 IntraLuma()
	nop
	nop
	nop
	ht4x4il @{in}, @{out}
	nop
	nop
	nop
}

#endif

#ifdef COSY

asm int SATD_4x4(int* in1, int in2, int* in3) {
  @[
	.barrier
  ]
	;; SINAS: SATD_4x4()
	nop
	nop
	nop
	satd4x4 @{}, @{in1}, @{in2}, @{in3}
	nop
	nop
	nop
}

asm void DCT_4x4(int* in1, int in2, int* in3, int* out) {
  @[
	.barrier
  ]
	;; SINAS: DCT_4x4()
	nop
	nop
	nop
	dct4x4 @{out}, @{in1}, @{in2}, @{in3}
	nop
	nop
	nop
}

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
			Satd = SATD_4x4(Sub_Block_ptr[j], Stride_word, Cand_ptr[i]);
			if(Satd < Satd_min)
			{
				Cand_start_ptr	=	Cand_ptr[i];
				Satd_min			=	Satd;
				Satd				=	0;
			}
		}
		DCT_4x4(Sub_Block_ptr[j], Stride_word, Cand_start_ptr, DCT_ptr1);		// Calculating 16 4x4 Transforms per MB
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
	
	Hadamard_4x4_IntraLuma(DCT_ptr2, HT_ptr);
	
#if 0
	for(i=0; i<8; i++)
	{
		intToStr(HT_start[i], tempString);
		t_print(tempString);
		t_print("\r\n");
	}
	
#endif

/***********************************************************************************************************/
	
	di = Hadamard_2x2_Chroma(src0, src1);

#if 0	
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


	return input1 + input2 + di.a + di.b;
}
