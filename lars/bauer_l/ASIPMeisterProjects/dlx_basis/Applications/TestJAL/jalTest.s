	.file	"jalTest.c"
	.text
.globl method
	.type	method, @function
method:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$42, %eax
	popl	%ebp
	ret
	.size	method, .-method
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	andl	$-16, %esp
	movl	$0, %eax
	subl	%eax, %esp
	call	method
	movl	%eax, -4(%ebp)
	call	method
	movl	%eax, %edx
	leal	-4(%ebp), %eax
	addl	%edx, (%eax)
	cmpl	$20, -4(%ebp)
	ja	.L3
	movl	-4(%ebp), %eax
	sall	$2, %eax
	movl	.L25(%eax), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L25:
	.long	.L4
	.long	.L5
	.long	.L6
	.long	.L7
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.long	.L3
	.text
.L4:
	movl	$5, -4(%ebp)
	jmp	.L3
.L5:
	movl	$3, -4(%ebp)
	jmp	.L3
.L6:
	movl	$2, -4(%ebp)
	jmp	.L3
.L7:
	movl	$7, -4(%ebp)
.L3:
	movl	-4(%ebp), %eax
	leave
	ret
	.size	main, .-main
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.3.5 (Debian 1:3.3.5-13)"
