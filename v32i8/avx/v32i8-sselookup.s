	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI0_0:
	.space	16,15
LCPI0_1:
	.byte	0                       ## 0x0
	.byte	1                       ## 0x1
	.byte	1                       ## 0x1
	.byte	2                       ## 0x2
	.byte	1                       ## 0x1
	.byte	2                       ## 0x2
	.byte	2                       ## 0x2
	.byte	3                       ## 0x3
	.byte	1                       ## 0x1
	.byte	2                       ## 0x2
	.byte	2                       ## 0x2
	.byte	3                       ## 0x3
	.byte	2                       ## 0x2
	.byte	3                       ## 0x3
	.byte	3                       ## 0x3
	.byte	4                       ## 0x4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sselookup
	.align	4, 0x90
_sselookup:                             ## @sselookup
## BB#0:                                ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	vextractf128	$1, %ymm0, %xmm1
	vmovaps	LCPI0_0(%rip), %xmm2    ## xmm2 = [15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15]
	vandps	%xmm2, %xmm1, %xmm3
	vmovdqa	LCPI0_1(%rip), %xmm4    ## xmm4 = [0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4]
	vpshufb	%xmm3, %xmm4, %xmm3
	vpsrlw	$4, %xmm1, %xmm1
	vpand	%xmm2, %xmm1, %xmm1
	vpand	%xmm2, %xmm1, %xmm1
	vpshufb	%xmm1, %xmm4, %xmm1
	vpaddb	%xmm3, %xmm1, %xmm1
	vandps	%xmm2, %xmm0, %xmm3
	vpshufb	%xmm3, %xmm4, %xmm3
	vpsrlw	$4, %xmm0, %xmm0
	vpand	%xmm2, %xmm0, %xmm0
	vpand	%xmm2, %xmm0, %xmm0
	vpshufb	%xmm0, %xmm4, %xmm0
	vpaddb	%xmm3, %xmm0, %xmm0
	vinsertf128	$1, %xmm1, %ymm0, %ymm0
	popq	%rbp
	retq


.subsections_via_symbols
