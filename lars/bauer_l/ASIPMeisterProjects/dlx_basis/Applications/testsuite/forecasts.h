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









/* Dummy instructions */
#define SNAME S00
#include "specop.h"
#define SNAME S01
#include "specop.h"
#define SNAME S02
#include "specop.h"
#define SNAME S03 
#include "specop.h"
#define SNAME S04
#include "specop.h"
#define SNAME S05
#include "specop.h"
#define SNAME S06
#include "specop.h"
#define SNAME S07
#include "specop.h"
#define SNAME S08
#include "specop.h"
#define SNAME S09
#include "specop.h"
#define SNAME S10
#include "specop.h"
#define SNAME S11
#include "specop.h"
#define SNAME S12
#include "specop.h"
#define SNAME S13
#include "specop.h"
#define SNAME S14
#include "specop.h"
#define SNAME S15
#include "specop.h"
#define SNAME S16
#include "specop.h"
#define SNAME S17
#include "specop.h"
#define SNAME S18
#include "specop.h"
#define SNAME S19
#include "specop.h"
#define SNAME S20
#include "specop.h"
#define SNAME S21
#include "specop.h"
#define SNAME S22
#include "specop.h"
#define SNAME S23
#include "specop.h"
#define SNAME S24
#include "specop.h"
#define SNAME S25
#include "specop.h"
#define SNAME S26
#include "specop.h"
#define SNAME S27
#include "specop.h"
#define SNAME S28
#include "specop.h"
#define SNAME S29
#include "specop.h"
#define SNAME S30
#include "specop.h"
#define SNAME S31
#include "specop.h"
#define SNAME S32
#include "specop.h"
#define SNAME S33
#include "specop.h"
#define SNAME S34
#include "specop.h"
#define SNAME S35
#include "specop.h"
#define SNAME S36
#include "specop.h"
#define SNAME S37
#include "specop.h"
#define SNAME S38
#include "specop.h"
#define SNAME S39
#include "specop.h"
#define SNAME S40
#include "specop.h"
#define SNAME S41
#include "specop.h"
#define SNAME S42
#include "specop.h"
#define SNAME S43
#include "specop.h"
#define SNAME S44
#include "specop.h"
#define SNAME S45
#include "specop.h"
#define SNAME S46
#include "specop.h"
#define SNAME S47
#include "specop.h"
#define SNAME S48
#include "specop.h"
#define SNAME S49
#include "specop.h"
#define SNAME S50
#include "specop.h"
#define SNAME S51
#include "specop.h"
#define SNAME S52
#include "specop.h"
#define SNAME S53
#include "specop.h"
#define SNAME S54
#include "specop.h"
#define SNAME S55
#include "specop.h"
#define SNAME S56
#include "specop.h"
#define SNAME S57
#include "specop.h"
#define SNAME S58
#include "specop.h"
#define SNAME S59
#include "specop.h"
#define SNAME S60
#include "specop.h"
#define SNAME S61
#include "specop.h"
#define SNAME S62
#include "specop.h"
#define SNAME S63
#include "specop.h"
#define SNAME S64
#include "specop.h"
#define SNAME S65
#include "specop.h"
#define SNAME S66
#include "specop.h"
#define SNAME S67
#include "specop.h"
#define SNAME S68
#include "specop.h"
#define SNAME S69
#include "specop.h"
#define SNAME S70
#include "specop.h"
#define SNAME S71
#include "specop.h"
#define SNAME S72
#include "specop.h"
#define SNAME S73
#include "specop.h"
#define SNAME S74
#include "specop.h"
#define SNAME S75
#include "specop.h"
#define SNAME S76
#include "specop.h"
#define SNAME S77
#include "specop.h"
#define SNAME S78
#include "specop.h"
#define SNAME S79
#include "specop.h"
#define SNAME S80
#include "specop.h"
#define SNAME S81
#include "specop.h"
#define SNAME S82
#include "specop.h"
#define SNAME S83
#include "specop.h"
#define SNAME S84
#include "specop.h"
#define SNAME S85
#include "specop.h"
#define SNAME S86
#include "specop.h"
#define SNAME S87
#include "specop.h"
#define SNAME S88
#include "specop.h"
#define SNAME S89
#include "specop.h"
#define SNAME S90
#include "specop.h"
#define SNAME S91
#include "specop.h"
#define SNAME S92
#include "specop.h"
#define SNAME S93
#include "specop.h"
#define SNAME S94
#include "specop.h"
#define SNAME S95
#include "specop.h"
#define SNAME S96
#include "specop.h"
#define SNAME S97
#include "specop.h"
#define SNAME S98
#include "specop.h"
#define SNAME S99
#include "specop.h"




/* Spezialbefehle und ihre Kennung: */
/* Sinnvolle Befehle */
#define INSTRUCTION_F     0		// Blowfish F
#define INSTRUCTION_XCHG  1		// Blowfish xchg
#define INSTRUCTION_MAD   2		// mac
#define INSTRUCTION_MOD   3		// mod
#define INSTRUCTION_MODU  4		// modu

/* Dummy-Befehle (100 Stück) */
#define INSTRUCTION_S00    5
#define INSTRUCTION_S01    6
#define INSTRUCTION_S02    7
#define INSTRUCTION_S03    8
#define INSTRUCTION_S04    9
#define INSTRUCTION_S05   10
#define INSTRUCTION_S06   11
#define INSTRUCTION_S07   12
#define INSTRUCTION_S08   13
#define INSTRUCTION_S09   14
#define INSTRUCTION_S10   15
#define INSTRUCTION_S11   16
#define INSTRUCTION_S12   17
#define INSTRUCTION_S13   18
#define INSTRUCTION_S14   19
#define INSTRUCTION_S15   20
#define INSTRUCTION_S16   21
#define INSTRUCTION_S17   22
#define INSTRUCTION_S18   23
#define INSTRUCTION_S19   24
#define INSTRUCTION_S20   25
#define INSTRUCTION_S21   26
#define INSTRUCTION_S22   27
#define INSTRUCTION_S23   28
#define INSTRUCTION_S24   29
#define INSTRUCTION_S25   30
#define INSTRUCTION_S26   31
#define INSTRUCTION_S27   32
#define INSTRUCTION_S28   33
#define INSTRUCTION_S29   34
#define INSTRUCTION_S30   35
#define INSTRUCTION_S31   36
#define INSTRUCTION_S32   37
#define INSTRUCTION_S33   38
#define INSTRUCTION_S34   39
#define INSTRUCTION_S35   40
#define INSTRUCTION_S36   41
#define INSTRUCTION_S37   42
#define INSTRUCTION_S38   43
#define INSTRUCTION_S39   44
#define INSTRUCTION_S40   45
#define INSTRUCTION_S41   46
#define INSTRUCTION_S42   47
#define INSTRUCTION_S43   48
#define INSTRUCTION_S44   49
#define INSTRUCTION_S45   50
#define INSTRUCTION_S46   51
#define INSTRUCTION_S47   52
#define INSTRUCTION_S48   53
#define INSTRUCTION_S49   54
#define INSTRUCTION_S50   55
#define INSTRUCTION_S51   56
#define INSTRUCTION_S52   57
#define INSTRUCTION_S53   58
#define INSTRUCTION_S54   59
#define INSTRUCTION_S55   60
#define INSTRUCTION_S56   61
#define INSTRUCTION_S57   62
#define INSTRUCTION_S58   63
#define INSTRUCTION_S59   64
#define INSTRUCTION_S60   65
#define INSTRUCTION_S61   66
#define INSTRUCTION_S62   67
#define INSTRUCTION_S63   68
#define INSTRUCTION_S64   69
#define INSTRUCTION_S65   70
#define INSTRUCTION_S66   71
#define INSTRUCTION_S67   72
#define INSTRUCTION_S68   73
#define INSTRUCTION_S69   74
#define INSTRUCTION_S70   75
#define INSTRUCTION_S71   76
#define INSTRUCTION_S72   77
#define INSTRUCTION_S73   78
#define INSTRUCTION_S74   79
#define INSTRUCTION_S75   80
#define INSTRUCTION_S76   81
#define INSTRUCTION_S77   82
#define INSTRUCTION_S78   83
#define INSTRUCTION_S79   84
#define INSTRUCTION_S80   85
#define INSTRUCTION_S81   86
#define INSTRUCTION_S82   87
#define INSTRUCTION_S83   88
#define INSTRUCTION_S84   89
#define INSTRUCTION_S85   90
#define INSTRUCTION_S86   91
#define INSTRUCTION_S87   92
#define INSTRUCTION_S88   93
#define INSTRUCTION_S89   94
#define INSTRUCTION_S90   95
#define INSTRUCTION_S91   96
#define INSTRUCTION_S92   97
#define INSTRUCTION_S93   98
#define INSTRUCTION_S94   99
#define INSTRUCTION_S95  100
#define INSTRUCTION_S96  101
#define INSTRUCTION_S97  102
#define INSTRUCTION_S98  103
#define INSTRUCTION_S99  104




/*
 * Entsprechende Menge an Vorhersagebefehlen.
 * 
 * Die Vorhersagebefehle sollen eine vernünftige Schätzung
 * der Häufigkeit beinhalten! An dieser Stelle zunächst nur
 * "1"- und "0"-Vorhersagen.
 */
/* "1"-VORHERSAGEN */
ADD_FORECAST(F,    1);
ADD_FORECAST(F,    16);
ADD_FORECAST(XCHG, 1);
ADD_FORECAST(XCHG, 17);
ADD_FORECAST(MAD,  1);
ADD_FORECAST(MAD,  8);
ADD_FORECAST(MAD,  64);
ADD_FORECAST(MAD,  512);
ADD_FORECAST(MOD,  1);
ADD_FORECAST(MODU, 1);

ADD_FORECAST(S00,  1);
ADD_FORECAST(S00,  100);
ADD_FORECAST(S01,  1);
ADD_FORECAST(S01,  64);
ADD_FORECAST(S02,  1);
ADD_FORECAST(S02,  2);
ADD_FORECAST(S03,  1);
ADD_FORECAST(S04,  1);
ADD_FORECAST(S05,  1);
ADD_FORECAST(S06,  1);
ADD_FORECAST(S06,  100);
ADD_FORECAST(S07,  1);
ADD_FORECAST(S07,  1000);
ADD_FORECAST(S08,  1);
ADD_FORECAST(S08,  128);
ADD_FORECAST(S08,  1000);
ADD_FORECAST(S09,  1);
ADD_FORECAST(S09,  2);
ADD_FORECAST(S09,  10);
ADD_FORECAST(S10,  1);
ADD_FORECAST(S11,  1);
ADD_FORECAST(S11,  1000);
ADD_FORECAST(S11,  256);
ADD_FORECAST(S11,  128);
ADD_FORECAST(S12,  1);
ADD_FORECAST(S12,  64);
ADD_FORECAST(S12,  100);
ADD_FORECAST(S12,  2);
ADD_FORECAST(S13,  1);
ADD_FORECAST(S13,  100);
ADD_FORECAST(S14,  1);
ADD_FORECAST(S15,  1);
ADD_FORECAST(S16,  1);
ADD_FORECAST(S17,  1);
ADD_FORECAST(S18,  1);
ADD_FORECAST(S19,  1);
ADD_FORECAST(S20,  1);
ADD_FORECAST(S21,  1);
ADD_FORECAST(S22,  1);
ADD_FORECAST(S23,  1);
ADD_FORECAST(S24,  1);
ADD_FORECAST(S25,  1);
ADD_FORECAST(S26,  1);
ADD_FORECAST(S27,  1);
ADD_FORECAST(S28,  1);
ADD_FORECAST(S29,  1);
ADD_FORECAST(S30,  1);
ADD_FORECAST(S31,  1);
ADD_FORECAST(S32,  1);
ADD_FORECAST(S33,  1);
ADD_FORECAST(S34,  1);
ADD_FORECAST(S35,  1);
ADD_FORECAST(S36,  1);
ADD_FORECAST(S37,  1);
ADD_FORECAST(S38,  1);
ADD_FORECAST(S39,  1);
ADD_FORECAST(S40,  1);
ADD_FORECAST(S41,  1);
ADD_FORECAST(S42,  1);
ADD_FORECAST(S43,  1);
ADD_FORECAST(S44,  1);
ADD_FORECAST(S45,  1);
ADD_FORECAST(S46,  1);
ADD_FORECAST(S47,  1);
ADD_FORECAST(S48,  1);
ADD_FORECAST(S49,  1);
ADD_FORECAST(S50,  1);
ADD_FORECAST(S51,  1);
ADD_FORECAST(S52,  1);
ADD_FORECAST(S53,  1);
ADD_FORECAST(S54,  1);
ADD_FORECAST(S55,  1);
ADD_FORECAST(S56,  1);
ADD_FORECAST(S57,  1);
ADD_FORECAST(S58,  1);
ADD_FORECAST(S59,  1);
ADD_FORECAST(S60,  1);
ADD_FORECAST(S61,  1);
ADD_FORECAST(S62,  1);
ADD_FORECAST(S63,  1);
ADD_FORECAST(S64,  1);
ADD_FORECAST(S65,  1);
ADD_FORECAST(S66,  1);
ADD_FORECAST(S67,  1);
ADD_FORECAST(S68,  1);
ADD_FORECAST(S69,  1);
ADD_FORECAST(S70,  1);
ADD_FORECAST(S71,  1);
ADD_FORECAST(S72,  1);
ADD_FORECAST(S73,  1);
ADD_FORECAST(S74,  1);
ADD_FORECAST(S75,  1);
ADD_FORECAST(S76,  1);
ADD_FORECAST(S77,  1);
ADD_FORECAST(S78,  1);
ADD_FORECAST(S79,  1);
ADD_FORECAST(S80,  1);
ADD_FORECAST(S81,  1);
ADD_FORECAST(S82,  1);
ADD_FORECAST(S83,  1);
ADD_FORECAST(S84,  1);
ADD_FORECAST(S85,  1);
ADD_FORECAST(S86,  1);
ADD_FORECAST(S87,  1);
ADD_FORECAST(S88,  1);
ADD_FORECAST(S89,  1);
ADD_FORECAST(S90,  1);
ADD_FORECAST(S91,  1);
ADD_FORECAST(S92,  1);
ADD_FORECAST(S93,  1);
ADD_FORECAST(S94,  1);
ADD_FORECAST(S95,  1);
ADD_FORECAST(S96,  1);
ADD_FORECAST(S97,  1);
ADD_FORECAST(S98,  1);
ADD_FORECAST(S99,  1);




/* "0"-Vorhersagen */
ADD_FORECAST(F,    0);
ADD_FORECAST(XCHG, 0);
ADD_FORECAST(MAD,  0);
ADD_FORECAST(MOD,  0);
ADD_FORECAST(MODU, 0);

ADD_FORECAST(S00,  0);
ADD_FORECAST(S01,  0);
ADD_FORECAST(S02,  0);
ADD_FORECAST(S03,  0);
ADD_FORECAST(S04,  0);
ADD_FORECAST(S05,  0);
ADD_FORECAST(S06,  0);
ADD_FORECAST(S07,  0);
ADD_FORECAST(S08,  0);
ADD_FORECAST(S09,  0);
ADD_FORECAST(S10,  0);
ADD_FORECAST(S11,  0);
ADD_FORECAST(S12,  0);
ADD_FORECAST(S13,  0);
ADD_FORECAST(S14,  0);
ADD_FORECAST(S15,  0);
ADD_FORECAST(S16,  0);
ADD_FORECAST(S17,  0);
ADD_FORECAST(S18,  0);
ADD_FORECAST(S19,  0);
ADD_FORECAST(S20,  0);
ADD_FORECAST(S21,  0);
ADD_FORECAST(S22,  0);
ADD_FORECAST(S23,  0);
ADD_FORECAST(S24,  0);
ADD_FORECAST(S25,  0);
ADD_FORECAST(S26,  0);
ADD_FORECAST(S27,  0);
ADD_FORECAST(S28,  0);
ADD_FORECAST(S29,  0);
ADD_FORECAST(S30,  0);
ADD_FORECAST(S31,  0);
ADD_FORECAST(S32,  0);
ADD_FORECAST(S33,  0);
ADD_FORECAST(S34,  0);
ADD_FORECAST(S35,  0);
ADD_FORECAST(S36,  0);
ADD_FORECAST(S37,  0);
ADD_FORECAST(S38,  0);
ADD_FORECAST(S39,  0);
ADD_FORECAST(S40,  0);
ADD_FORECAST(S41,  0);
ADD_FORECAST(S42,  0);
ADD_FORECAST(S43,  0);
ADD_FORECAST(S44,  0);
ADD_FORECAST(S45,  0);
ADD_FORECAST(S46,  0);
ADD_FORECAST(S47,  0);
ADD_FORECAST(S48,  0);
ADD_FORECAST(S49,  0);
ADD_FORECAST(S50,  0);
ADD_FORECAST(S51,  0);
ADD_FORECAST(S52,  0);
ADD_FORECAST(S53,  0);
ADD_FORECAST(S54,  0);
ADD_FORECAST(S55,  0);
ADD_FORECAST(S56,  0);
ADD_FORECAST(S57,  0);
ADD_FORECAST(S58,  0);
ADD_FORECAST(S59,  0);
ADD_FORECAST(S60,  0);
ADD_FORECAST(S61,  0);
ADD_FORECAST(S62,  0);
ADD_FORECAST(S63,  0);
ADD_FORECAST(S64,  0);
ADD_FORECAST(S65,  0);
ADD_FORECAST(S66,  0);
ADD_FORECAST(S67,  0);
ADD_FORECAST(S68,  0);
ADD_FORECAST(S69,  0);
ADD_FORECAST(S70,  0);
ADD_FORECAST(S71,  0);
ADD_FORECAST(S72,  0);
ADD_FORECAST(S73,  0);
ADD_FORECAST(S74,  0);
ADD_FORECAST(S75,  0);
ADD_FORECAST(S76,  0);
ADD_FORECAST(S77,  0);
ADD_FORECAST(S78,  0);
ADD_FORECAST(S79,  0);
ADD_FORECAST(S80,  0);
ADD_FORECAST(S81,  0);
ADD_FORECAST(S82,  0);
ADD_FORECAST(S83,  0);
ADD_FORECAST(S84,  0);
ADD_FORECAST(S85,  0);
ADD_FORECAST(S86,  0);
ADD_FORECAST(S87,  0);
ADD_FORECAST(S88,  0);
ADD_FORECAST(S89,  0);
ADD_FORECAST(S90,  0);
ADD_FORECAST(S91,  0);
ADD_FORECAST(S92,  0);
ADD_FORECAST(S93,  0);
ADD_FORECAST(S94,  0);
ADD_FORECAST(S95,  0);
ADD_FORECAST(S96,  0);
ADD_FORECAST(S97,  0);
ADD_FORECAST(S98,  0);
ADD_FORECAST(S99,  0);

#endif
