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
	vpsrlw	$4, %xmm0, %xmm4
	vpand	%xmm1, %xmm4, %xmm4
	vpand	%xmm1, %xmm4, %xmm4
	vpshufb	%xmm4, %xmm3, %xmm4
	vpaddb	%xmm2, %xmm4, %xmm2
	vmovdqa	LCPI0_2(%rip), %xmm4    ## xmm4 = <1,3,5,7,9,11,13,15,u,u,u,u,u,u,u,u>
	vpshufb	%xmm4, %xmm2, %xmm5
	vmovdqa	LCPI0_3(%rip), %xmm6    ## xmm6 = <0,2,4,6,8,10,12,14,u,u,u,u,u,u,u,u>
	vpshufb	%xmm6, %xmm2, %xmm2
	vpaddb	%xmm5, %xmm2, %xmm2
	vpmovzxbw	%xmm2, %xmm2    ## xmm2 = xmm2[0],zero,xmm2[1],zero,xmm2[2],zero,xmm2[3],zero,xmm2[4],zero,xmm2[5],zero,xmm2[6],zero,xmm2[7],zero
	vextractf128	$1, %ymm0, %xmm0
	vpand	%xmm1, %xmm0, %xmm5
	vpshufb	%xmm5, %xmm3, %xmm5
	vpsrlw	$4, %xmm0, %xmm0
	vpand	%xmm1, %xmm0, %xmm0
	vpand	%xmm1, %xmm0, %xmm0
	vpshufb	%xmm0, %xmm3, %xmm0
	vpaddb	%xmm5, %xmm0, %xmm0
	vpshufb	%xmm4, %xmm0, %xmm1
	vpshufb	%xmm6, %xmm0, %xmm0
	vpaddb	%xmm1, %xmm0, %xmm0
	vpmovzxbw	%xmm0, %xmm0    ## xmm0 = xmm0[0],zero,xmm0[1],zero,xmm0[2],zero,xmm0[3],zero,xmm0[4],zero,xmm0[5],zero,xmm0[6],zero,xmm0[7],zero
	vinsertf128	$1, %xmm0, %ymm2, %ymm0
	popq	%rbp
	retq


.subsections_via_symbols
