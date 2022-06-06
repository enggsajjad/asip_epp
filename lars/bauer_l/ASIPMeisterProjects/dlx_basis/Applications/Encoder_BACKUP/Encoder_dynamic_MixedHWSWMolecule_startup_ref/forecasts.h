/* ---- HELPER INSTRUCTIONS ---- */
#ifndef FORECASTS_H
#define FORECASTS_H

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

#define SI_SAD16			0
#define SI_ht2x2cr  			1
#define SI_ht4x4il  			2
#define SI_MC_Hz4			3
#define SI_IPred_HDC16x16	4
#define SI_IPred_VDC16x16	5
#define SI_LoopFilter			6
#define SI_satd4x4 			7
#define SI_dct4x4 			8

// FCs for I-FRAMES
//ADD_FORECAST(SI_IPred_HDC16x16,  396);
//ADD_FORECAST(SI_IPred_VDC16x16,  396);

// For static FC
//ADD_FORECAST(SI_IPred_HDC16x16,  73);
//ADD_FORECAST(SI_IPred_VDC16x16,  73);
//ADD_FORECAST(SI_MC_Hz4,  323);


//1 FOR CIF
// FCs for I- & P-FRAMES for Reference Software
//ADD_FORECAST		(SI_SAD16,				424512);
ADD_FORECAST		(SI_SAD16,				2653);
ADD_FORECAST		(SI_satd4x4,				10137);
ADD_FORECAST		(SI_IPred_HDC16x16, 	317);
ADD_FORECAST		(SI_IPred_VDC16x16, 	317);
ADD_FORECAST		(SI_MC_Hz4,  			3801);
ADD_FORECAST		(SI_dct4x4,				3801);
ADD_FORECAST		(SI_ht4x4il,				79);
ADD_FORECAST		(SI_ht2x2cr,				1267);
ADD_FORECAST		(SI_LoopFilter, 			1267);

// FCs for I- & P-FRAMES for Optimized Software
ADD_FORECAST		(SI_IPred_HDC16x16, 	3);
ADD_FORECAST		(SI_IPred_VDC16x16, 	3);
ADD_FORECAST		(SI_MC_Hz4, 			3768);
ADD_FORECAST		(SI_dct4x4, 				1901);
ADD_FORECAST		(SI_ht4x4il,				4);
ADD_FORECAST		(SI_ht2x2cr,				634);

//1 FOR QCIF
// FCs for I- & P-FRAMES for Reference Software
//ADD_FORECAST		(SI_SAD16,				424512);
ADD_FORECAST		(SI_SAD16,				6633);
ADD_FORECAST		(SI_satd4x4,				25344);
ADD_FORECAST		(SI_IPred_HDC16x16, 	792);
ADD_FORECAST		(SI_IPred_VDC16x16, 	792);
ADD_FORECAST		(SI_MC_Hz4, 			9504);
ADD_FORECAST		(SI_dct4x4, 				9504);
ADD_FORECAST		(SI_ht4x4il,				198);
ADD_FORECAST		(SI_ht2x2cr,				3168);
ADD_FORECAST		(SI_LoopFilter, 			3168);
ADD_FORECAST		(SI_MC_Hz4, 			104544);

// FCs for I- & P-FRAMES for Optimized Software
ADD_FORECAST		(SI_IPred_HDC16x16, 	7);
ADD_FORECAST		(SI_IPred_VDC16x16, 	7);
ADD_FORECAST		(SI_MC_Hz4, 			9420);
ADD_FORECAST		(SI_dct4x4, 				4752);
ADD_FORECAST		(SI_ht4x4il,				2);
ADD_FORECAST		(SI_ht2x2cr,				1584);


// FCs for I- & P-FRAMES for Optimized Software..QCIF--SCALED
ADD_FORECAST		(SI_SAD16,				663);
ADD_FORECAST		(SI_satd4x4,				2534);
ADD_FORECAST		(SI_IPred_HDC16x16, 	79);
ADD_FORECAST		(SI_IPred_VDC16x16, 	79);
ADD_FORECAST		(SI_MC_Hz4, 			10454);
ADD_FORECAST		(SI_dct4x4, 				950);
ADD_FORECAST		(SI_ht4x4il,				20);
ADD_FORECAST		(SI_ht2x2cr,				317);
ADD_FORECAST		(SI_LoopFilter, 			317);


// FCs for I- & P-FRAMES for Reference Software
//ADD_FORECAST		(SI_IPred_HDC16x16, 	80);
//ADD_FORECAST		(SI_IPred_VDC16x16, 	80);
//ADD_FORECAST		(SI_MC_Hz4, 			20275);

// Termination Forecasts
ADD_FORECAST		(SI_SAD16,				0);
ADD_FORECAST		(SI_satd4x4,				0);
ADD_FORECAST		(SI_IPred_HDC16x16, 	0);
ADD_FORECAST		(SI_IPred_VDC16x16, 	0);
ADD_FORECAST		(SI_MC_Hz4, 			0);
ADD_FORECAST		(SI_dct4x4, 				0);
ADD_FORECAST		(SI_ht4x4il,				0);
ADD_FORECAST		(SI_ht2x2cr,				0);
ADD_FORECAST		(SI_LoopFilter, 			0);

#endif
