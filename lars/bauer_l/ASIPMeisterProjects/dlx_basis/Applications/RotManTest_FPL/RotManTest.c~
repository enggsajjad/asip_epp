#ifndef COSY
#include "stdio.h"
#endif

#include "forecasts.h"

#ifdef COSY
#define SPECIAL_INSTRUCTIONS
#endif


asm void SAD_16(int* currMB, int* refMB, int w_Stride, int* SAD) {
  @[
	.barrier
  ]
	;; SINAS: SAD_16()
	nop
	nop
	nop
	SAD16 @{SAD}, @{currMB}, @{refMB}, @{w_Stride}
	nop
	nop
	nop
}

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

asm void DCT_4x4(int* SB_start, int Stride, int* SubPred_start, int* DCT_ptr) {
  @[
	.barrier
  ]
	;; SINAS: DCT_4x4()
	nop
	nop
	nop
	dct4x4 @{DCT_ptr}, @{SB_start}, @{Stride}, @{SubPred_start}
	nop
	nop
	nop
}

asm void HT_4x4_IntraLuma(int* DCT_ptr, int* HT_ptr) {
  @[
	.barrier
  ]
	;; SINAS: HT_4x4_IntraLuma()
	nop
	nop
	nop
	ht4x4il @{DCT_ptr}, @{HT_ptr}
	nop
	nop
	nop
}

asm void LoopFilter(int* refMB, int w_Stride, int* DC_V) {
  @[
	.barrier
  ]
	;; SINAS: LoopFilter()
	nop
	nop
	nop
	LoopFilter @{DC_V}, @{refMB}, @{w_Stride}
	nop
	nop
	nop
}

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


int main() 
{
	int currentImage;
	int numberOfImages	= 5;
	int startImage		= 0;
	int numberOfMacroblocks = 99;
	int retVal		= 0;
	int* curr_frame		= 0;
	int* ref_frame		= 0;
	int Stride		= 352;
	int i;
	
	// START THE IMAGE PROCESSING LOOP
	for(currentImage=startImage; currentImage<startImage+numberOfImages; currentImage++)
	{
		forecast_SI_SAD16_1();
		forecast_SI_satd4x4_1();

		for (i=0; i<100; i++) {
		  SAD_16(0, 0, 0, 0);
		  SATD_4x4(0, 0, 0);
		}

		forecast_SI_SAD16_0();
		forecast_SI_satd4x4_0();

		/*
		forecast_SI_MC_Hz4_1();
		forecast_SI_IPred_HDC16x16_1();
		forecast_SI_IPred_VDC16x16_1();
		forecast_SI_dct4x4_1();
		forecast_SI_ht4x4il_1();
		forecast_SI_ht2x2cr_1();
		retVal += doEncodeMB_new(curr_frame, ref_frame, Stride, currentImage, numberOfMacroblocks);
		forecast_SI_MC_Hz4_0();
		forecast_SI_IPred_HDC16x16_0();
		forecast_SI_IPred_VDC16x16_0();
		forecast_SI_dct4x4_0();
		forecast_SI_ht2x2cr_0();
		forecast_SI_ht4x4il_0();

		forecast_SI_LoopFilter_1();
		retVal += doLoopFilter(currentImage, numberOfMacroblocks);
		forecast_SI_LoopFilter_0();
		*/
	}
	return retVal;
}
