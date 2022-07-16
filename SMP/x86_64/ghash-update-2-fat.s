.globl _nettle_ghash_update_pclmul
.def _nettle_ghash_update_pclmul
.scl 2
.type 32
.endef
_nettle_ghash_update_pclmul:
        push	%rdi
      sub	$32, %rsp
      movdqa	%xmm6, 0(%rsp)
      movdqa	%xmm7, 16(%rsp)
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
      mov	%r9, %rcx
	movdqa		.Lpolynomial(%rip), %xmm0
	movdqa		.Lbswap(%rip), %xmm1
	movups		(%rdi), %xmm2
	movups		16(%rdi), %xmm3
	movups		(%rsi), %xmm5
	pshufb		%xmm1, %xmm5
	sub		$1, %rdx
	jc		.Ldone
.Loop:
	movups		(%rcx), %xmm6
	pshufb		%xmm1, %xmm6
.Lblock:
	pxor		%xmm6, %xmm5
	movdqa		%xmm5, %xmm6
	movdqa		%xmm5, %xmm7
	movdqa		%xmm5, %xmm4
	pclmullqlqdq	%xmm3, %xmm7
	pclmullqhqdq	%xmm3, %xmm5
	pclmulhqlqdq	%xmm2, %xmm4
	pclmulhqhqdq	%xmm2, %xmm6
	pxor		%xmm4, %xmm7
	pxor		%xmm6, %xmm5
	pshufd		$0x4e, %xmm7, %xmm4
	pxor		%xmm4, %xmm5
	pclmullqhqdq	%xmm0, %xmm7
	pxor		%xmm7, %xmm5
	add		$16, %rcx
	sub		$1, %rdx
	jnc		.Loop
.Ldone:
	pshufb		%xmm1, %xmm5
	movups		%xmm5, (%rsi)
	mov		%rcx, %rax
      pop	%rsi
      movdqa	16(%rsp), %xmm7
      movdqa	(%rsp), %xmm6
      add	$32, %rsp
    pop	%rdi
	ret
	.section .rodata
	.align 16
.Lpolynomial:
	.byte 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0xC2
.Lbswap:
	.byte 15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0
