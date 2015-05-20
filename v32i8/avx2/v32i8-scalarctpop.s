	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_release
	.align	4, 0x90
_release:                               ## @release
## BB#0:                                ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	vextracti128	$1, %ymm0, %xmm1
	vpextrb	$1, %xmm1, %eax
	popcntw	%ax, %ax
	vpextrb	$0, %xmm1, %ecx
	popcntw	%cx, %cx
	vmovd	%ecx, %xmm2
	vpinsrb	$1, %eax, %xmm2, %xmm2
	vpextrb	$2, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$2, %eax, %xmm2, %xmm2
	vpextrb	$3, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$3, %eax, %xmm2, %xmm2
	vpextrb	$4, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$4, %eax, %xmm2, %xmm2
	vpextrb	$5, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$5, %eax, %xmm2, %xmm2
	vpextrb	$6, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$6, %eax, %xmm2, %xmm2
	vpextrb	$7, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$7, %eax, %xmm2, %xmm2
	vpextrb	$8, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$8, %eax, %xmm2, %xmm2
	vpextrb	$9, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$9, %eax, %xmm2, %xmm2
	vpextrb	$10, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$10, %eax, %xmm2, %xmm2
	vpextrb	$11, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$11, %eax, %xmm2, %xmm2
	vpextrb	$12, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$12, %eax, %xmm2, %xmm2
	vpextrb	$13, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$13, %eax, %xmm2, %xmm2
	vpextrb	$14, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$14, %eax, %xmm2, %xmm2
	vpextrb	$15, %xmm1, %eax
	popcntw	%ax, %ax
	vpinsrb	$15, %eax, %xmm2, %xmm1
	vpextrb	$1, %xmm0, %eax
	popcntw	%ax, %ax
	vpextrb	$0, %xmm0, %ecx
	popcntw	%cx, %cx
	vmovd	%ecx, %xmm2
	vpinsrb	$1, %eax, %xmm2, %xmm2
	vpextrb	$2, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$2, %eax, %xmm2, %xmm2
	vpextrb	$3, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$3, %eax, %xmm2, %xmm2
	vpextrb	$4, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$4, %eax, %xmm2, %xmm2
	vpextrb	$5, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$5, %eax, %xmm2, %xmm2
	vpextrb	$6, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$6, %eax, %xmm2, %xmm2
	vpextrb	$7, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$7, %eax, %xmm2, %xmm2
	vpextrb	$8, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$8, %eax, %xmm2, %xmm2
	vpextrb	$9, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$9, %eax, %xmm2, %xmm2
	vpextrb	$10, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$10, %eax, %xmm2, %xmm2
	vpextrb	$11, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$11, %eax, %xmm2, %xmm2
	vpextrb	$12, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$12, %eax, %xmm2, %xmm2
	vpextrb	$13, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$13, %eax, %xmm2, %xmm2
	vpextrb	$14, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$14, %eax, %xmm2, %xmm2
	vpextrb	$15, %xmm0, %eax
	popcntw	%ax, %ax
	vpinsrb	$15, %eax, %xmm2, %xmm0
	vinserti128	$1, %xmm1, %ymm0, %ymm0
	popq	%rbp
	retq


.subsections_via_symbols
