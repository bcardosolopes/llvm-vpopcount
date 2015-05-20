	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_release
	.align	4, 0x90
_release:                               ## @release
## BB#0:                                ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	vpextrw	$1, %xmm0, %eax
	popcntw	%ax, %ax
	vmovd	%xmm0, %ecx
	popcntw	%cx, %cx
	vmovd	%ecx, %xmm1
	vpinsrw	$1, %eax, %xmm1, %xmm1
	vpextrw	$2, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrw	$2, %eax, %xmm1, %xmm1
	vpextrw	$3, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrw	$3, %eax, %xmm1, %xmm1
	vpextrw	$4, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrw	$4, %eax, %xmm1, %xmm1
	vpextrw	$5, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrw	$5, %eax, %xmm1, %xmm1
	vpextrw	$6, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrw	$6, %eax, %xmm1, %xmm1
	vpextrw	$7, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrw	$7, %eax, %xmm1, %xmm0
	popq	%rbp
	retq


.subsections_via_symbols
