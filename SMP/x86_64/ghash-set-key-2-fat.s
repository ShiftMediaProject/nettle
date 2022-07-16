.globl _nettle_ghash_set_key_pclmul
.def _nettle_ghash_set_key_pclmul
.scl 2
.type 32
.endef
_nettle_ghash_set_key_pclmul:
        push	%rdi
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
	movdqa	.Lpolynomial(%rip), %xmm0
	movdqa	.Lbswap(%rip), %xmm1
	movups	(%rsi), %xmm2
	pshufb	%xmm1, %xmm2
	movdqa	%xmm2, %xmm4
	psllq	$1, %xmm4
	psrlq	$63, %xmm2
	pshufd	$0xaa, %xmm2, %xmm5
	pslldq	$8, %xmm2
	por	%xmm4, %xmm2
	pxor	%xmm4, %xmm4
	psubd	%xmm5, %xmm4
	pand	%xmm0, %xmm4
	pxor	%xmm4, %xmm2
	movups	%xmm2, (%rdi)
	pshufd	$0x4e, %xmm2, %xmm3
	pclmullqhqdq %xmm0, %xmm2
	pxor	%xmm2, %xmm3
	movups	%xmm3, 16(%rdi)
      pop	%rsi
    pop	%rdi
	ret
	.section .rodata
	.align 16
.Lpolynomial:
	.byte 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0xC2
.Lbswap:
	.byte 15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0
