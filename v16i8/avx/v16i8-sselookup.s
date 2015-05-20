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
	vmovdqa	LCPI0_0(%rip), %xmm1    ## xmm1 = [15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15]
	vpand	%xmm1, %xmm0, %xmm2
	vmovdqa	LCPI0_1(%rip), %xmm3    ## xmm3 = [0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4]
	vpshufb	%xmm2, %xmm3, %xmm2
	vpsrlw	$4, %xmm0, %xmm0
	vpand	%xmm1, %xmm0, %xmm0
	vpand	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm0, %xmm3, %xmm0
	vpaddb	%xmm2, %xmm0, %xmm0
	popq	%rbp
	retq


.subsections_via_symbols
