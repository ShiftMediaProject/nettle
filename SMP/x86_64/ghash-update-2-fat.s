.globl _nettle_ghash_update_pclmul
.def _nettle_ghash_update_pclmul
.scl 2
.type 32
.endef
_nettle_ghash_update_pclmul:
        push	%rdi
      sub	$128, %rsp
      movdqa	%xmm6, 0(%rsp)
      movdqa	%xmm7, 16(%rsp)
      movdqa	%xmm8, 32(%rsp)
      movdqa	%xmm9, 48(%rsp)
      movdqa	%xmm10, 64(%rsp)
      movdqa	%xmm11, 80(%rsp)
      movdqa	%xmm12, 96(%rsp)
      movdqa	%xmm13, 112(%rsp)
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
      mov	%r9, %rcx
	movdqa		.Lpolynomial(%rip), %xmm0
	movdqa		.Lbswap(%rip), %xmm1
	movups		(%rdi), %xmm2
	movups		16(%rdi), %xmm3
	movups		32(%rdi), %xmm4
	movups		48(%rdi), %xmm5
	movups		(%rsi), %xmm7
	pshufb		%xmm1, %xmm7
	mov		%rdx, %rax
	shr		$1, %rax
	jz		.L1_block
.Loop:
	movups		(%rcx), %xmm8
	pshufb		%xmm1, %xmm8
	pxor		%xmm8, %xmm7
	movdqa		%xmm7, %xmm8
	movdqa		%xmm7, %xmm9
	movdqa		%xmm7, %xmm6
	pclmullqlqdq	%xmm5, %xmm9
	pclmullqhqdq	%xmm5, %xmm7
	pclmulhqlqdq	%xmm4, %xmm6
	pclmulhqhqdq	%xmm4, %xmm8
	movups		16(%rcx), %xmm12
	pshufb		%xmm1, %xmm12
	movdqa		%xmm12, %xmm11
	movdqa		%xmm12, %xmm13
	movdqa		%xmm12, %xmm10
	pclmullqlqdq	%xmm3, %xmm13
	pclmullqhqdq	%xmm3, %xmm11
	pclmulhqlqdq	%xmm2, %xmm10
	pclmulhqhqdq	%xmm2, %xmm12
	pxor		%xmm6, %xmm9
	pxor		%xmm8, %xmm7
	pxor		%xmm10, %xmm13
	pxor		%xmm12, %xmm11
	pxor		%xmm13, %xmm9
	pxor		%xmm11, %xmm7
	pshufd		$0x4e, %xmm9, %xmm6
	pxor		%xmm6, %xmm7
	pclmullqhqdq	%xmm0, %xmm9
	pxor		%xmm9, %xmm7
	add		$32, %rcx
	dec		%rax
	jnz		.Loop
.L1_block:
	test		$1, %rdx
	jz		.Ldone
	movups		(%rcx), %xmm8
	pshufb		%xmm1, %xmm8
	pxor		%xmm8, %xmm7
	movdqa		%xmm7, %xmm8
	movdqa		%xmm7, %xmm9
	movdqa		%xmm7, %xmm6
	pclmullqlqdq	%xmm3, %xmm9
	pclmullqhqdq	%xmm3, %xmm7
	pclmulhqlqdq	%xmm2, %xmm6
	pclmulhqhqdq	%xmm2, %xmm8
	pxor		%xmm6, %xmm9
	pxor		%xmm8, %xmm7
	pshufd		$0x4e, %xmm9, %xmm6
	pxor		%xmm6, %xmm7
	pclmullqhqdq	%xmm0, %xmm9
	pxor		%xmm9, %xmm7
	add		$16, %rcx
.Ldone:
	pshufb		%xmm1, %xmm7
	movups		%xmm7, (%rsi)
	mov		%rcx, %rax
      pop	%rsi
      movdqa	112(%rsp), %xmm13
      movdqa	96(%rsp), %xmm12
      movdqa	80(%rsp), %xmm11
      movdqa	64(%rsp), %xmm10
      movdqa	48(%rsp), %xmm9
      movdqa	32(%rsp), %xmm8
      movdqa	16(%rsp), %xmm7
      movdqa	(%rsp), %xmm6
      add	$128, %rsp
    pop	%rdi
	ret
	.section .rodata
	.align 16
.Lpolynomial:
	.byte 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0xC2
.Lbswap:
	.byte 15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0
