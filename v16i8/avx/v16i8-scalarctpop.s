	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_release
	.align	4, 0x90
_release:                               ## @release
## BB#0:                                ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	vpextrb	$1, %xmm0, %eax
	popcntw	%ax, %ax
	vpextrb	$0, %xmm0, %ecx
	popcntw	%cx, %cx
	vmovd	%ecx, %xmm1
	vpinsrb	$1, %eax, %xmm1, %xmm1
	vpextrb	$2, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$2, %eax, %xmm1, %xmm1
	vpextrb	$3, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$3, %eax, %xmm1, %xmm1
	vpextrb	$4, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$4, %eax, %xmm1, %xmm1
	vpextrb	$5, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$5, %eax, %xmm1, %xmm1
	vpextrb	$6, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$6, %eax, %xmm1, %xmm1
	vpextrb	$7, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$7, %eax, %xmm1, %xmm1
	vpextrb	$8, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$8, %eax, %xmm1, %xmm1
	vpextrb	$9, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$9, %eax, %xmm1, %xmm1
	vpextrb	$10, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$10, %eax, %xmm1, %xmm1
	vpextrb	$11, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$11, %eax, %xmm1, %xmm1
	vpextrb	$12, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$12, %eax, %xmm1, %xmm1
	vpextrb	$13, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$13, %eax, %xmm1, %xmm1
	vpextrb	$14, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$14, %eax, %xmm1, %xmm1
	vpextrb	$15, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$15, %eax, %xmm1, %xmm0
	popq	%rbp
	retq


.subsections_via_symbols
