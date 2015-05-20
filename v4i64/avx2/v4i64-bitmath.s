	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI0_0:
	.quad	6148914691236517205     ## 0x5555555555555555
LCPI0_1:
	.quad	3689348814741910323     ## 0x3333333333333333
LCPI0_2:
	.quad	1085102592571150095     ## 0xf0f0f0f0f0f0f0f
LCPI0_3:
	.quad	127                     ## 0x7f
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_parallelbitmath
	.align	4, 0x90
_parallelbitmath:                               ## @release
## BB#0:                                ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	vpsrlq	$1, %ymm0, %ymm1
	vpbroadcastq	LCPI0_0(%rip), %ymm2
	vpand	%ymm2, %ymm1, %ymm1
	vpsubq	%ymm1, %ymm0, %ymm0
	vpbroadcastq	LCPI0_1(%rip), %ymm1
	vpand	%ymm1, %ymm0, %ymm2
	vpsrlq	$2, %ymm0, %ymm0
	vpand	%ymm1, %ymm0, %ymm0
	vpaddq	%ymm0, %ymm2, %ymm0
	vpsrlq	$4, %ymm0, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpbroadcastq	LCPI0_2(%rip), %ymm1
	vpand	%ymm1, %ymm0, %ymm0
	vpsrlq	$8, %ymm0, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsrlq	$16, %ymm0, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpsrlq	$32, %ymm0, %ymm1
	vpaddq	%ymm1, %ymm0, %ymm0
	vpbroadcastq	LCPI0_3(%rip), %ymm1
	vpand	%ymm1, %ymm0, %ymm0
	popq	%rbp
	retq


.subsections_via_symbols
