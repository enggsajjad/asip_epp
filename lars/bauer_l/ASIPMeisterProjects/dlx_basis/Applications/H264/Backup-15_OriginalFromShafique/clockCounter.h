asm void writeClockCounter(int value){
 @[
	.barrier
	.scratch temp
	.restrict temp:reg
 ]
	lhi	@{temp}, $0x100
	nop
	nop
	nop
	sw	0(@{temp}), @{value}
}

asm int readClockCounter(){
@[
	.barrier
  ]
	lhi	@{},$0x100
	nop
	nop
	nop
	lw	@{}, 0(@{})
	nop
	nop
	nop
}
