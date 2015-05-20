	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.section	__TEXT,__const
	.align	5
LCPI0_0:
	.space	32,15
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
LCPI0_2:
	.byte	1                       ## 0x1
	.byte	3                       ## 0x3
	.byte	5                       ## 0x5
	.byte	7                       ## 0x7
	.byte	9                       ## 0x9
	.byte	11                      ## 0xb
	.byte	13                      ## 0xd
	.byte	15                      ## 0xf
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.byte	1                       ## 0x1
	.byte	3                       ## 0x3
	.byte	5                       ## 0x5
	.byte	7                       ## 0x7
	.byte	9                       ## 0x9
	.byte	11                      ## 0xb
	.byte	13                      ## 0xd
	.byte	15                      ## 0xf
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
LCPI0_3:
	.byte	0                       ## 0x0
	.byte	2                       ## 0x2
	.byte	4                       ## 0x4
	.byte	6                       ## 0x6
	.byte	8                       ## 0x8
	.byte	10                      ## 0xa
	.byte	12                      ## 0xc
	.byte	14                      ## 0xe
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.byte	0                       ## 0x0
	.byte	2                       ## 0x2
	.byte	4                       ## 0x4
	.byte	6                       ## 0x6
	.byte	8                       ## 0x8
	.byte	10                      ## 0xa
	.byte	12                      ## 0xc
	.byte	14                      ## 0xe
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sselookup
	.align	4, 0x90
_sselookup:                             ## @sselookup
## BB#0:                                ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	vmovdqa	LCPI0_0(%rip), %ymm1    ## ymm1 = [15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15]
	vpand	%ymm1, %ymm0, %ymm2
	vmovdqa	LCPI0_1(%rip), %ymm3    ## ymm3 = [0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4,0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4]
	vpshufb	%ymm2, %ymm3, %ymm2
	vpsrlw	$4, %ymm0, %ymm0
	vpand	%ymm1, %ymm0, %ymm0
	vpand	%ymm1, %ymm0, %ymm0
	vpshufb	%ymm0, %ymm3, %ymm0
	vpaddb	%ymm2, %ymm0, %ymm0
	vpshufb	LCPI0_2(%rip), %ymm0, %ymm1 ## ymm1 = ymm0[1,3,5,7,9,11,13,15,u,u,u,u,u,u,u,u,17,19,21,23,25,27,29,31,u,u,u,u,u,u,u,u]
	vpshufb	LCPI0_3(%rip), %ymm0, %ymm0 ## ymm0 = ymm0[0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u,16,18,20,22,24,26,28,30,u,u,u,u,u,u,u,u]
	vpaddb	%ymm1, %ymm0, %ymm0
	vpermq	$232, %ymm0, %ymm0      ## ymm0 = ymm0[0,2,2,3]
	vpmovzxbw	%xmm0, %ymm0    ## ymm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero,xmm0[8],zero,xmm0[9],zero,xmm0[10],zero,xmm0[11],zero,xmm0[12],zero,xmm0[13],zero,xmm0[14],zero,xmm0[15],zero
	popq	%rbp
	retq


.subsections_via_symbols
