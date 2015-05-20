	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_release
	.align	4, 0x90
_release:                               ## @release
## BB#0:                                ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	vpextrd	$1, %xmm0, %eax
	popcntl	%eax, %eax
	vmovd	%xmm0, %ecx
	popcntl	%ecx, %ecx
	vmovd	%ecx, %xmm1
	vpinsrd	$1, %eax, %xmm1, %xmm1
	vpextrd	$2, %xmm0, %eax
	popcntl	%eax, %eax
	vpinsrd	$2, %eax, %xmm1, %xmm1
	vpextrd	$3, %xmm0, %eax
	popcntl	%eax, %eax
	vpinsrd	$3, %eax, %xmm1, %xmm0
	popq	%rbp
	retq


.subsections_via_symbols
