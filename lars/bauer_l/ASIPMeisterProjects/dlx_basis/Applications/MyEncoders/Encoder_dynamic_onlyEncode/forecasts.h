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



#define SI_MotionEstimation	0
#define SI_HT_2X2  		1
#define SI_HT_4X4  		2
#define SI_MC_Hz4			3
#define SI_IPred_HDC16x16		4
#define SI_IPred_VDC16x16		5
#define SI_LoopFilter		6


// FCs for I-FRAMES
ADD_FORECAST(SI_IPred_HDC16x16,  396);
ADD_FORECAST(SI_IPred_VDC16x16,  396);

//FCs for P-FRAMES
ADD_FORECAST(SI_IPred_HDC16x16,  46);
ADD_FORECAST(SI_IPred_VDC16x16,  46);
ADD_FORECAST(SI_MC_Hz4,  350);

//For static FC
ADD_FORECAST(SI_IPred_HDC16x16,  73);
ADD_FORECAST(SI_IPred_VDC16x16,  73);
ADD_FORECAST(SI_MC_Hz4,  323);
ADD_FORECAST(SI_MotionEstimation,  39600);
ADD_FORECAST(SI_LoopFilter,  12672);

/* "0"-Vorhersagen */
ADD_FORECAST(SI_IPred_HDC16x16,  0);
ADD_FORECAST(SI_IPred_VDC16x16,  0);
ADD_FORECAST(SI_MC_Hz4,  0);
ADD_FORECAST(SI_MotionEstimation,  0);
ADD_FORECAST(SI_LoopFilter,  0);


#endif
