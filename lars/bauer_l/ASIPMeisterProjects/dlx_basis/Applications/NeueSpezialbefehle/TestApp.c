/* Forecasts */
#ifdef COSY
  #define ADD_FORECAST(NAME, FREQUENCY) \
    asm void forecast_ ## NAME ## _ ## FREQUENCY() { \
	@[ .barrier ] \
	forecast	$ ## NAME ##, $ ## FREQUENCY \
    }
#else
  #define ADD_FORECAST(NAME, FREQUENCY) \
    void forecast_ ## NAME ## _ ## FREQUENCY() { }
#endif

#define SI_SAD16		0
#define SI_ht2x2cr  		1
#define SI_ht4x4il  		2
#define SI_MC_Hz4		3
#define SI_IPred_HDC16x16	4
#define SI_IPred_VDC16x16	5
#define SI_LoopFilter		6
#define SI_satd4x4 		7
#define SI_dct4x4 		8


// FCs
ADD_FORECAST	(SI_SAD16, 100);
ADD_FORECAST	(SI_satd4x4, 100);
ADD_FORECAST	(SI_IPred_HDC16x16, 100);
ADD_FORECAST	(SI_IPred_VDC16x16, 100);
ADD_FORECAST	(SI_MC_Hz4, 100);
ADD_FORECAST	(SI_dct4x4, 100);
ADD_FORECAST	(SI_ht4x4il, 100);
ADD_FORECAST	(SI_ht2x2cr, 100);
ADD_FORECAST	(SI_LoopFilter, 100);

// Termination Forecasts
ADD_FORECAST	(SI_SAD16, 0);
ADD_FORECAST	(SI_satd4x4, 0);
ADD_FORECAST	(SI_IPred_HDC16x16, 0);
ADD_FORECAST	(SI_IPred_VDC16x16, 0);
ADD_FORECAST	(SI_MC_Hz4, 0);
ADD_FORECAST	(SI_dct4x4, 0);
ADD_FORECAST	(SI_ht4x4il, 0);
ADD_FORECAST	(SI_ht2x2cr, 0);
ADD_FORECAST	(SI_LoopFilter, 0);


struct doubleInt { int a; int b; };


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

asm struct doubleInt HT_2x2_Chroma(int in1, int in2) {
  @[
  ]
	;; SINAS: HT_2x2_Chroma()
	nop
	nop
	nop
	ht2x2cr @{a}, @{b}, @{in1}, @{in2}
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



int main() {
  int i, retVal=0;
  int a=0, b=0, c=0, d=0;
  struct doubleInt di;

  forecast_SI_SAD16_100();
  forecast_SI_satd4x4_100();
  forecast_SI_IPred_HDC16x16_100();
  forecast_SI_IPred_VDC16x16_100();
  forecast_SI_MC_Hz4_100();
  forecast_SI_dct4x4_100();
  forecast_SI_ht4x4il_100();
  forecast_SI_ht2x2cr_100();
  forecast_SI_LoopFilter_100();

  for (i=0; i<100; i++) {
    SAD_16(&a, &b, c, &d);
    retVal += SATD_4x4(&a, b, &c);

    DCT_4x4(&a, b, &c, &d);

    HT_4x4_IntraLuma(&a, &b);
    di = HT_2x2_Chroma(a, b);
    retVal += di.a * di.b;

    LoopFilter(&a, b, &c);

    IPred_HDC_16x16(&a, b, &c, &d);

    IPred_VDC_16x16(&a, b, &c);

    MC_Hz_4(&a, b, &c);
  }

  forecast_SI_SAD16_0();
  forecast_SI_satd4x4_0();
  forecast_SI_IPred_HDC16x16_0();
  forecast_SI_IPred_VDC16x16_0();
  forecast_SI_MC_Hz4_0();
  forecast_SI_dct4x4_0();
  forecast_SI_ht4x4il_0();
  forecast_SI_ht2x2cr_0();
  forecast_SI_LoopFilter_0();

  retVal += a*b*c*d;

  return retVal;
}
