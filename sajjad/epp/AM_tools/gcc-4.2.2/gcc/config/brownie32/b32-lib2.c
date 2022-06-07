#include <limits.h>

typedef		 int HItype		__attribute__ ((mode (HI)));
typedef		 int SItype		__attribute__ ((mode (SI)));
typedef unsigned int USItype		__attribute__ ((mode (SI)));

typedef int word_type			__attribute__ ((mode (__word__)));


static inline USItype
_udivmodsi4(USItype num, USItype den, word_type modwanted)
{
  USItype bit = 1;
  USItype res = 0;
  
  while (den < num && bit && !(den & (1L<<31)))
    {
      den <<=1;
      bit <<=1;
    }
  while (bit)
    {
      if (num >= den)
	{
	  num -= den;
	  res |= bit;
	}
      bit >>=1;
      den >>=1;
    }
  if (modwanted) return num;
  return res;
}


USItype
udivmodsi4(USItype num, USItype den, word_type modwanted)
{
  if (num > INT_MAX)
    goto slow;
  if (den > INT_MAX)
    goto slow;
  if (modwanted)
    return (signed) num % (signed) den;
  return (signed) num / (signed) den;

 slow:
  return _udivmodsi4 (num, den, modwanted);
}



SItype
__udivsi3 (SItype a, SItype b)
{
  return udivmodsi4 (a, b, 0);
}



SItype
__umodsi3 (SItype a, SItype b)
{
  return udivmodsi4 (a, b, 1);
}
