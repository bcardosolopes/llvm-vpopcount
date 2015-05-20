	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI0_0:
	.space	16,85
LCPI0_1:
	.space	16,51
LCPI0_2:
	.space	16,15
LCPI0_3:
	.quad	127                     ## 0x7f
	.quad	127                     ## 0x7f
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_parallelbitmath
	.align	4, 0x90
_parallelbitmath:                               ## @release
## BB#0:                                ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	vpsrlq	$1, %xmm0, %xmm1
	vpand	LCPI0_0(%rip), %xmm1, %xmm1
	vpsubq	%xmm1, %xmm0, %xmm0
	vmovdqa	LCPI0_1(%rip), %xmm1    ## xmm1 = [3689348814741910323,3689348814741910323]
	vpand	%xmm1, %xmm0, %xmm2
	vpsrlq	$2, %xmm0, %xmm0
	vpand	%xmm1, %xmm0, %xmm0
	vpaddq	%xmm0, %xmm2, %xmm0
	vpsrlq	$4, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpand	LCPI0_2(%rip), %xmm0, %xmm0
	vpsrlq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpsrlq	$16, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpsrlq	$32, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpand	LCPI0_3(%rip), %xmm0, %xmm0
	popq	%rbp
	retq


.subsections_via_symbols
