/*************************************************************************/
/*                                                                       */
/*   SNU-RT Benchmark Suite for Worst Case Timing Analysis               */
/*   =====================================================               */
/*                              Collected and Modified by S.-S. Lim      */
/*                                           sslim@archi.snu.ac.kr       */
/*                                         Real-Time Research Group      */
/*                                        Seoul National University      */
/*                                                                       */
/*                                                                       */
/*        < Features > - restrictions for our experimental environment   */
/*                                                                       */
/*          1. Completely structured.                                    */
/*               - There are no unconditional jumps.                     */
/*               - There are no exit from loop bodies.                   */
/*                 (There are no 'break' or 'return' in loop bodies)     */
/*          2. No 'switch' statements.                                   */
/*          3. No 'do..while' statements.                                */
/*          4. Expressions are restricted.                               */
/*               - There are no multiple expressions joined by 'or',     */
/*                'and' operations.                                      */
/*          5. No library calls.                                         */
/*               - All the functions needed are implemented in the       */
/*                 source file.                                          */
/*                                                                       */
/*                                                                       */
/*************************************************************************/
/*                                                                       */
/*  FILE: crc.c                                                          */
/*  SOURCE : Numerical Recipes in C - The Second Edition                 */
/*                                                                       */
/*  DESCRIPTION :                                                        */
/*                                                                       */
/*     A demonstration for CRC (Cyclic Redundancy Check) operation.      */
/*     The CRC is manipulated as two functions, icrc1 and icrc.          */
/*     icrc1 is for one character and icrc uses icrc1 for a string.      */
/*     The input string is stored in array lin[].                        */
/*     icrc is called two times, one for X-Modem string CRC and the      */
/*     other for X-Modem packet CRC.                                     */
/*                                                                       */
/*  REMARK :                                                             */
/*                                                                       */
/*  EXECUTION TIME :                                                     */
/*                                                                       */
/*                                                                       */
/*************************************************************************/


typedef char uchar;
#define LOBYTE(x) ((uchar)((x) & 0xFF))
#define HIBYTE(x) ((uchar)((x) >> 8))

short icrctb[256];


short icrc1(short crc, char onech)
{
	int   i;
	short ans = (crc^onech << 8);

    for (i=0;i<8;i++)
	{
		if (ans & 0x8000)
		{
			ans = (ans <<= 1) ^ 4129;
		}
		else
		{
			ans <<= 1;
		}
    }
    return ans;
}



short icrc(short crc, long len, short jinit, int jrev)
{
	short  icrc1(short crc, char onech);
	static init = 0;
	static uchar rchr[256];
	short  tmp1, tmp2, j, cword=crc;
	static uchar it[16]={0,8,4,12,2,10,6,14,1,9,5,13,3,11,7,15};

	if (!init)
	{
		init = 1;
	
		for (j=0; j<=255; j++)
		{
			icrctb[j] = icrc1(j << 8,(uchar)0);
			rchr[j]   = (uchar)(it[j & 0xF] << 4 | it[j >> 4]);
		}
	}

	if (jinit >= 0)
	{
		cword=((uchar) jinit) | (((uchar) jinit) << 8);
	}
	else if (jrev < 0)
	{
		cword=rchr[HIBYTE(cword)] | rchr[LOBYTE(cword)] << 8;
	}

	for (j=1;j<=len;j++)
	{
		if (jrev < 0)
		{
			tmp1 = rchr[lin[j]]^ HIBYTE(cword);
		}
        else
		{
            tmp1 = lin[j]^ HIBYTE(cword);
        }
		cword = icrctb[tmp1] ^ LOBYTE(cword) << 8;
    }
    
	if (jrev >= 0)
	{
        tmp2 = cword;
    }
    else
	{
        tmp2 = rchr[HIBYTE(cword)] | rchr[LOBYTE(cword)] << 8;
    }
    return tmp2;
}

