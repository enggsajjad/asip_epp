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

// FCs for I- & P-FRAMES for Optimized Software
ADD_FORECAST		(SI_IPred_HDC16x16, 	7);
ADD_FORECAST		(SI_IPred_VDC16x16, 	7);
ADD_FORECAST		(SI_MC_Hz4, 			9420);
ADD_FORECAST		(SI_dct4x4, 				4752);
ADD_FORECAST		(SI_ht4x4il,				2);
ADD_FORECAST		(SI_ht2x2cr,				1584);

// FCs for 'in-the-loop Forecasts' for 50%
ADD_FORECAST		(SI_SAD16,				3317);
ADD_FORECAST		(SI_satd4x4,				12672);
ADD_FORECAST		(SI_IPred_HDC16x16, 	4);
ADD_FORECAST		(SI_IPred_VDC16x16, 	4);
ADD_FORECAST		(SI_MC_Hz4, 			4710);
ADD_FORECAST		(SI_dct4x4, 				2376);
ADD_FORECAST		(SI_ht4x4il,				1);
ADD_FORECAST		(SI_ht2x2cr,				792);
ADD_FORECAST		(SI_LoopFilter, 			1584);

// FCs for 'in-the-loop Forecasts' for 75% (25% Forecasti for currently used SI)
ADD_FORECAST		(SI_SAD16,				1658);
ADD_FORECAST		(SI_satd4x4,				6336);
ADD_FORECAST		(SI_IPred_HDC16x16, 	2);
ADD_FORECAST		(SI_IPred_VDC16x16, 	2);
ADD_FORECAST		(SI_MC_Hz4, 			2355);
ADD_FORECAST		(SI_dct4x4, 				1188);
ADD_FORECAST		(SI_ht2x2cr,				396);
ADD_FORECAST		(SI_LoopFilter, 			792);


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
