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

#define SI_SAD16		0
#define SI_ht2x2cr  		1
#define SI_ht4x4il  		2
#define SI_MC_Hz4		3
#define SI_IPred_HDC16x16	4
#define SI_IPred_VDC16x16	5
#define SI_LoopFilter		6
#define SI_satd4x4 		7
#define SI_dct4x4 		8

ADD_FORECAST		(SI_SAD16, 1);
ADD_FORECAST		(SI_SAD16, 0);

ADD_FORECAST		(SI_satd4x4, 1);
ADD_FORECAST		(SI_satd4x4, 0);

ADD_FORECAST		(SI_IPred_HDC16x16, 1);
ADD_FORECAST		(SI_IPred_HDC16x16, 0);

ADD_FORECAST		(SI_IPred_VDC16x16, 1);
ADD_FORECAST		(SI_IPred_VDC16x16, 0);

ADD_FORECAST		(SI_MC_Hz4, 1);
ADD_FORECAST		(SI_MC_Hz4, 0);

ADD_FORECAST		(SI_dct4x4, 1);
ADD_FORECAST		(SI_dct4x4, 0);

ADD_FORECAST		(SI_ht4x4il, 1);
ADD_FORECAST		(SI_ht4x4il, 0);

ADD_FORECAST		(SI_ht2x2cr, 1);
ADD_FORECAST		(SI_ht2x2cr, 0);

ADD_FORECAST		(SI_LoopFilter, 1);
ADD_FORECAST		(SI_LoopFilter, 0);

#endif
