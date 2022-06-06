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


/*********************************** IMAGE LEVEL MOTION ESTIMATION *****************************************/
int SAD_Array[396];
int doMotionEstimation(int* curr_frame, int* ref_frame, int macroblockCount, int Stride) {
  int*    currMB          =       curr_frame;
  int*    refMB           =       ref_frame;
  int     w_Stride        =       Stride/4;
  int mvx                 =       0;
  int mvy                 =       0;
  unsigned int    SAD     =       0;
  unsigned int minSAD     =       0xFFFFFFFF;
  int best_mvx            =       0;
  int best_mvy            =       0;
  unsigned int Satd       =       0;
  int i=0, j=0, c=0;
  int currentMB=0;
  
  for(currentMB=0; currentMB<macroblockCount; currentMB++) {
    c = c + SAD;
    refMB = (int*)((unsigned long)ref_frame+(mvy*Stride)+mvx);
#if 0
    for(i=0;i<(67*16);i++) { // 16 Calls per Candidate and total 67 Candidates (8HV+1Z+1T+3N+18-3LH+12-2SH+24-3SS)
      SAD_16(refMB, w_stride, &SAD);
    }
#endif
    
    // SAD_16...This one is for a complete MB.....
    for(i=0;i<67;i++) { // 1 Calls per Candidate and total 67 Candidates (8HV+1Z+1T+3N+18-3LH+12-2SH+24-3SS)
      SAD_16(currMB, refMB, w_Stride, &SAD);
      if(SAD<minSAD) {
	minSAD          =       SAD;
	best_mvx        =       mvx;
	best_mvy        =       mvy;
      }
    }

    for(i=0;i<16;i++) {   // 16 Calls per Candidate and total 16 Candidates (8-Half_Pel + 8-Quarter_Pel)
      for(j=0;j<16;j++) { // 16 Calls per Candidate and total 16 Candidates (8-Half_Pel + 8-Quarter_Pel)
	Satd += SATD_4x4(currMB, w_Stride, refMB);
      }
      if(Satd<minSAD) {
	minSAD          =       Satd;
	best_mvx        =       mvx;
	best_mvy        =       mvy;
      }
      Satd=0;
    }
    SAD_Array[currentMB] = minSAD;
  }
  
  return c;
}


int main() {
  int currentImage;
  int numberOfImages	= 1;
  int startImage		= 0;
  int numberOfMacroblocks = 99;
  int retVal		= 0;
  int* curr_frame		= 0;
  int* ref_frame		= 0;
  int Stride		= 352;
  int i;
  
  // START THE IMAGE PROCESSING LOOP
  for(currentImage=startImage; currentImage<startImage+numberOfImages; currentImage++) {
    forecast_SI_SAD16_1();
    forecast_SI_satd4x4_1();
    retVal += doMotionEstimation(curr_frame, ref_frame, numberOfMacroblocks, Stride);
    forecast_SI_SAD16_0();
    forecast_SI_satd4x4_0();
  }
  return retVal;
}
