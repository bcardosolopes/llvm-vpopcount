	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_release
	.align	4, 0x90
_release:                               ## @release
## BB#0:                                ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	vextractf128	$1, %ymm0, %xmm1
	vpextrw	$1, %xmm1, %eax
	popcntw	%ax, %ax
	vmovd	%xmm1, %ecx
	popcntw	%cx, %cx
	vmovd	%ecx, %xmm2
	vpinsrw	$1, %eax, %xmm2, %xmm2
	vpextrw	$2, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrw	$2, %eax, %xmm2, %xmm2
	vpextrw	$3, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrw	$3, %eax, %xmm2, %xmm2
	vpextrw	$4, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrw	$4, %eax, %xmm2, %xmm2
	vpextrw	$5, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrw	$5, %eax, %xmm2, %xmm2
	vpextrw	$6, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrw	$6, %eax, %xmm2, %xmm2
	vpextrw	$7, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrw	$7, %eax, %xmm2, %xmm1
	vpextrw	$1, %xmm0, %eax
	popcntw	%ax, %ax
	vmovd	%xmm0, %ecx
	popcntw	%cx, %cx
	vmovd	%ecx, %xmm2
	vpinsrw	$1, %eax, %xmm2, %xmm2
	vpextrw	$2, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrw	$2, %eax, %xmm2, %xmm2
	vpextrw	$3, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrw	$3, %eax, %xmm2, %xmm2
	vpextrw	$4, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrw	$4, %eax, %xmm2, %xmm2
	vpextrw	$5, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrw	$5, %eax, %xmm2, %xmm2
	vpextrw	$6, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrw	$6, %eax, %xmm2, %xmm2
	vpextrw	$7, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrw	$7, %eax, %xmm2, %xmm0
	vinsertf128	$1, %xmm1, %ymm0, %ymm0
	popq	%rbp
	retq


.subsections_via_symbols
