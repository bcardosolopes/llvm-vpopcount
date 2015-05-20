	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI0_0:
	.long	1431655765              ## 0x55555555
LCPI0_1:
	.long	858993459               ## 0x33333333
LCPI0_2:
	.long	252645135               ## 0xf0f0f0f
LCPI0_3:
	.long	63                      ## 0x3f
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_parallelbitmath
	.align	4, 0x90
_parallelbitmath:                               ## @release
## BB#0:                                ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	vpsrld	$1, %ymm0, %ymm1
	vpbroadcastd	LCPI0_0(%rip), %ymm2
	vpand	%ymm2, %ymm1, %ymm1
	vpsubd	%ymm1, %ymm0, %ymm0
	vpbroadcastd	LCPI0_1(%rip), %ymm1
	vpand	%ymm1, %ymm0, %ymm2
	vpsrld	$2, %ymm0, %ymm0
	vpand	%ymm1, %ymm0, %ymm0
	vpaddd	%ymm0, %ymm2, %ymm0
	vpsrld	$4, %ymm0, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
	vpbroadcastd	LCPI0_2(%rip), %ymm1
	vpand	%ymm1, %ymm0, %ymm0
	vpsrld	$8, %ymm0, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
	vpsrld	$16, %ymm0, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
	vpbroadcastd	LCPI0_3(%rip), %ymm1
	vpand	%ymm1, %ymm0, %ymm0
	popq	%rbp
	retq


.subsections_via_symbols
