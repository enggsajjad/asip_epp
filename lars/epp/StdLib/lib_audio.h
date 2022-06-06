#ifndef _lib_audio_h_5fezw6w4tj4389tczw5cn7wvvnw39cn4e9
#define _lib_audio_h_5fezw6w4tj4389tczw5cn7wvvnw39cn4e9

#define AUDIO_R_ADDR 40000004 
#define AUDIO_L_ADDR 40000008 

asm void writeToAudioOutR(int data) {
 @[	.barrier
        .scratch temp
        .restrict temp:reg
 ]
	lhi	@{temp}, $(AUDIO_R_ADDR/0x10000)
	nop
	nop
	nop
	ori	@{temp}, @{temp}, $(AUDIO_R_ADDR%0x10000)
	nop
	nop
	nop
	sw	0(@{temp}), @{data}
}

asm void writeToAudioOutL(int data) {
 @[	.barrier
        .scratch temp
        .restrict temp:reg
 ]
	lhi	@{temp}, $(AUDIO_L_ADDR/0x10000)
	nop
	nop
	nop
	ori	@{temp}, @{temp}, $(AUDIO_L_ADDR%0x10000)
	nop
	nop
	nop
	sw	0(@{temp}), @{data}
}

#endif

