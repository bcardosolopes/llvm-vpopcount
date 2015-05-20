	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_release
	.align	4, 0x90
_release:                               ## @release
## BB#0:                                ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	vextracti128	$1, %ymm0, %xmm1
	vpextrq	$1, %xmm1, %rax
	popcntq	%rax, %rax
	vmovq	%rax, %xmm2
	vmovq	%xmm1, %rax
	popcntq	%rax, %rax
	vmovq	%rax, %xmm1
	vpunpcklqdq	%xmm2, %xmm1, %xmm1 ## xmm1 = xmm1[0],xmm2[0]
	vpextrq	$1, %xmm0, %rax
	popcntq	%rax, %rax
	vmovq	%rax, %xmm2
	vmovq	%xmm0, %rax
	popcntq	%rax, %rax
	vmovq	%rax, %xmm0
	vpunpcklqdq	%xmm2, %xmm0, %xmm0 ## xmm0 = xmm0[0],xmm2[0]
	vinserti128	$1, %xmm1, %ymm0, %ymm0
	popq	%rbp
	retq


.subsections_via_symbols
