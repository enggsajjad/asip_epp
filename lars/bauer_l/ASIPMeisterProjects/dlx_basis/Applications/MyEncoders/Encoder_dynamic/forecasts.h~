/* ---- HELPER INSTRUCTIONS ---- */
#ifndef FORECASTS_H
#define FORECASTS_H


/* Forecasts */
#ifdef COSY
  #define ADD_FORECAST(NAME, FREQUENCY) \
    asm void forecast_ ## NAME ## _ ## FREQUENCY() { \
	@[ .barrier ] \
	forecast	$INSTRUCTION_ ## NAME ##, $ ## FREQUENCY \
    }
#else
  #define ADD_FORECAST(NAME, FREQUENCY) \
    void forecast_ ## NAME ## _ ## FREQUENCY() { }
#endif



#define HT_2X2  			25
#define HT_4X4  			26
#define INSTRUCTION_MC_Hz4		27
#define INSTRUCTION_IPred_HDC16x16	28
#define INSTRUCTION_IPred_VDC16x16	29
#define INSTRUCTION_HD			30


// FCs for I-FRAMES
ADD_FORECAST(IPred_HDC16x16,  396);
ADD_FORECAST(IPred_VDC16x16,  396);

//FCs for P-FRAMES
ADD_FORECAST(IPred_HDC16x16,  46);
ADD_FORECAST(IPred_VDC16x16,  46);
ADD_FORECAST(MC_Hz4,  350);

//For static FC
ADD_FORECAST(IPred_HDC16x16,  73);
ADD_FORECAST(IPred_VDC16x16,  73);
ADD_FORECAST(MC_Hz4,  323);
ADD_FORECAST(optimizeF,  39600);
ADD_FORECAST(HD,  12672);

/* "0"-Vorhersagen */
ADD_FORECAST(IPred_HDC16x16,  0);
ADD_FORECAST(IPred_VDC16x16,  0);
ADD_FORECAST(MC_Hz4,  0);
ADD_FORECAST(optimizeF,  0);
ADD_FORECAST(HD,  0);


#endif
