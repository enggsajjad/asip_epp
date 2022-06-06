/* ---- HELPER INSTRUCTIONS ---- */
#define COSY 1


#ifdef COSY
  #define ADD_HELPER_INSTRUCTIONS
#endif


/*
#ifdef ADD_HELPER_INSTRUCTIONS
  #define ADD_FORECAST(NAME, PROBABILITY, FREQUENCY) \
    asm void addForecast_ ## NAME ## _ ## PROBABILITY ## _ ## FREQUENCY() { \
	@[ .barrier ] \
	forecast	$INSTRUCTION_ ## NAME ##, $ ## PROBABILITY ## , $ ## FREQUENCY \
    }
#else
  #define ADD_FORECAST(NAME, PROBABILITY, FREQUENCY) \
    void addForecast_ ## NAME ## _ ## PROBABILITY ## _ ## FREQUENCY() { }
#endif

#define INSTRUCTION_my_mult 1

#define FALSE 0
#define TRUE  1

#ifndef COSY
  #include <stdio.h>
#endif


ADD_FORECAST(my_mult, 0, 1);
ADD_FORECAST(my_mult, 0, 0);
*/

typedef char Pixel;
typedef Pixel Image[8][8];

Image Input={
	{255, 255, 255, 255, 255, 255,   0,   0},
	{255, 255, 255, 255, 255,   0,   0,   0},
	{255, 255, 255, 255,   0,   0,   0, 255},
	{255, 255, 255,   0,   0,   0, 255, 255},
	{255, 255,   0,   0,   0, 255, 255, 255},
	{255,   0,   0,   0, 255, 255, 255, 255},
	{  0,   0,   0, 255, 255, 255, 255, 255},
	{  0,   0, 255, 255, 255, 255, 255, 255}
};

Image Output;

Image COS1={
	{ 125,  122,    115,    103,    88,     69,     47,     24  },
	{ 125,  103,    47,     -24,    -88,    -122,   -115,   -69  },
	{ 125,  69,     -47,    -122,   -88,    24,     115,    103  },
	{ 125,  24,     -115,   -69,    88,     103,    -47,    -122  },
	{ 125,  -24,    -115,   69,     88,     -103,   -47,    122  },
	{ 125,  -69,    -47,    122,    -88,    -24,    115,    -103  },
	{ 125,  -103,   47,     24,     -88,    122,    -115,   69  },
	{ 125,  -122,   115,    -103,   88,     -69,    47,     -24  }
};

Image COS2={
	{125, 125,  125,  125,  125,  125,  125,  125},
	{122, 103,  69,   24,   -24,  -69,  -103, -122},
	{115, 47,   -47,  -115, -115, -47,  47,   115},
	{103, -24,  -122, -69,  69,   122,  24,   -103},
	{88,  -88,  -88,  88,   88,   -88,  -88,  88},
	{69,  -122, 24,   103,  -103, -24,  122,  -69},
	{47,  -115, 115,  -47,  -47,  115,  -115, 47},
	{24,  -69,  103,  -122, 122,  -103, 69,   -24}
};






/*
#ifdef COSY
	asm int my_mult(int a, int b)
	{
		@[ .barrier ]
		; my_mult
		nop
		nop
		nop
		my_mult @{a}, @{b}, @{} 
		nop
		nop
		nop
		; my_mult
	};
#else
*/
	int my_mult(int a, int b)
	{
		return (a*b);
	};
/*
#endif
*/



void DCT()
{
	Image Temp;
	int i, j, k;
	Pixel sum;
/*	
	addForecast_my_mult_0_1();
*/	
	//First Temp=Input*COS2
	for (i=0; i<8; i++)
	{
		for (j=0; j<8; j++)
		{
			sum=0;
			for(k=0; k<8; k++)
				sum += (Input[i][k] * COS2[k][j]);
			Temp[i][j]=sum;
		}
	}

	//Second Output=COS1*Temp
	for (i=0; i<8; i++)
	{
		for (j=0; j<8; j++)
		{
			sum=0;
			for(k=0; k<8; k++)
				sum += (COS1[i][k] * Temp[k][j]);
			Output[i][j]=sum;
		}
	}
/*
	addForecast_my_mult_0_0();
*/
}
//COS2=COS1_Transpose
//Output=COS1*Input*COS1_Transpose

int main()
{
	int i = 0;
	for (i = 0; i<10; i++)	DCT();
}
