	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_release
	.align	4, 0x90
_release:                               ## @release
## BB#0:                                ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	vpextrq	$1, %xmm0, %rax
	popcntq	%rax, %rax
	vmovq	%rax, %xmm1
	vmovq	%xmm0, %rax
	popcntq	%rax, %rax
	vmovq	%rax, %xmm0
	vpunpcklqdq	%xmm1, %xmm0, %xmm0 ## xmm0 = xmm0[0],xmm1[0]
	popq	%rbp
	retq


.subsections_via_symbols
