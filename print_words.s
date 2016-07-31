	.file	"print_words.c"
	.globl	a
	.data
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.long	1
	.section	.rodata
.LC0:
	.string	"Hello world!"
.LC1:
	.string	"a = %d\n"
	.text
	.globl	print_words
	.type	print_words, @function
print_words:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC0, %edi
	call	puts
	movl	a(%rip), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	print_words, .-print_words
	.section	.rodata
.LC2:
	.string	"OK"
	.text
	.globl	print_OK
	.type	print_OK, @function
print_OK:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC2, %edi
	call	puts
	movl	a(%rip), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	print_OK, .-print_OK
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.1) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
