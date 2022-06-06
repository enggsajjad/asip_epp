
#define ADD_FORECAST(NAME, FREQUENCY) \
    asm void forecast_ ## NAME ## _ ## FREQUENCY() { \
	@[ .barrier ] \
	forecast	$INSTRUCTION_ ## NAME ##, $ ## FREQUENCY \
    }


#define INSTRUCTION_HD		30

ADD_FORECAST(HD,  255);

asm void HD_SI(int* refMB, int w_Stride, int* DC_V) {
  @[
	.barrier
  ]
	;; SINAS: HD_SI()
	nop
	nop
	nop
	HD @{DC_V}, @{refMB}, @{w_Stride}
	nop
	nop
	nop
}

    
int main() 
{

  int i;

  forecast_HD_255();

  for (i=0; i<1000000; i++) {
    HD_SI(0, 1, 0);
  }


  return 0;
}


