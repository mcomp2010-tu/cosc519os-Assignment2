	.file	"readfile.c"
	.section	.rodata
.LC0:
	.string	"file.txt"
.LC1:
	.string	"fileout.txt"
.LC2:
	.string	"r"
.LC3:
	.string	"w"
	.align 8
.LC4:
	.string	"Couldn't open file %s for reading.\n"
.LC5:
	.string	"Opened file %s for reading.\n"
.LC6:
	.string	"%4d: %s"
.LC7:
	.string	"\nTotal number of lines = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8256, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$.LC0, -8248(%rbp)
	movq	$.LC1, -8240(%rbp)
	movl	$.LC2, %edx
	movq	-8248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -8232(%rbp)
	movl	$.LC3, %edx
	movq	-8240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -8224(%rbp)
	cmpq	$0, -8232(%rbp)
	jne	.L2
	movl	$.LC4, %eax
	movq	-8248(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$.LC5, %eax
	movq	-8248(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movb	$0, -8209(%rbp)
	jmp	.L4
.L5:
	addb	$1, -8209(%rbp)
	movsbl	-8209(%rbp), %ecx
	movl	$.LC6, %eax
	leaq	-8208(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movsbl	-8209(%rbp), %edx
	movl	$.LC6, %esi
	leaq	-8208(%rbp), %rcx
	movq	-8224(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L4:
	movq	-8232(%rbp), %rdx
	leaq	-8208(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	fgets
	testq	%rax, %rax
	jne	.L5
	movsbl	-8209(%rbp), %edx
	movl	$.LC7, %eax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movsbl	-8209(%rbp), %edx
	movl	$.LC7, %ecx
	movq	-8224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-8232(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movq	-8224(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
.L3:
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L6
	call	__stack_chk_fail
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
