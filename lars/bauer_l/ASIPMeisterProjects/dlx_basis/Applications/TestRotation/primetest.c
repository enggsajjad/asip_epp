/* DLX DynamicRuntimeReconfigurator-Test
 *
 * Bestimmt alle Primzahlen zwischen 0 und UPPER_BOUND
 */
#include "forecasts.h"
#include "basics.h"

#define UPPER_BOUND 10000
#define RUNS 4
#define OPTIMIZE

#ifndef COSY
  #include <stdio.h>
#endif



#ifndef OPTIMIZE
	static unsigned int sqrt(unsigned int n)
	{
		int l = 0;
		int h = n;
		int m = 0;

		while (h-l > 1)
		{
			m = (h+l) >> 1;

			if (m * m > n)
				h = m;
			else
				l = m;
		}
		return m;
	};

#else
	asm unsigned int sqrt(unsigned int n)
	{
		@[ .barrier ]
		nop
		nop
		nop
		sqrt @{}, @{n}
		nop
		nop
		nop
	};
#endif










void init_table(char* table, int size)
{
	int i = 0;

	#ifndef COSY
		printf("Initialisiere Primzahltabelle\n");
	#endif

	table[0] = table[1] = FALSE;
	for (i=2; i<UPPER_BOUND; i++)
	{
		if (i<size)
			table[i] = TRUE;
		else
			table[i] = FALSE;
	}
};



int get_prime_numbers(char* table, unsigned int upper)
{
	int i = 0;
	int j = 0;
	int num_primes = 0;
	int stop = 0;

	stop = sqrt(upper);
	init_table(table, upper);


	#ifndef COSY
		printf("Bestimme Primzahlen von 0 bis %i\n", upper);
	#endif

	for (i=2; i<=stop; i++)
	{
		if (table[i] == TRUE)
		{
			num_primes++;
			for (j=i*i; j<upper; j+=i)
			{
				table[j] = FALSE;
			}
		}
	}
	return num_primes;
};


int main()
{
	unsigned int bound[4];
	int j = 0;
	int num_primes = 0;
	char table[UPPER_BOUND];

	bound[0] = 2000;
	bound[1] = 10000;
	bound[2] = 5000;
	bound[3] = 1000;


	for (j = 0; j<RUNS; j++)
	{
		num_primes = get_prime_numbers(&table[0], bound[j]);
	}

	return 0;
}

