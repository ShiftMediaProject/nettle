	.file "aes-decrypt-internal.asm"
	.text
	.align 16
.globl _nettle_aes_decrypt_aesni
.def _nettle_aes_decrypt_aesni
.scl 2
.type 32
.endef
_nettle_aes_decrypt_aesni:
        push	%rdi
      sub	$160, %rsp
      movdqa	%xmm6, 0(%rsp)
      movdqa	%xmm7, 16(%rsp)
      movdqa	%xmm8, 32(%rsp)
      movdqa	%xmm9, 48(%rsp)
      movdqa	%xmm10, 64(%rsp)
      movdqa	%xmm11, 80(%rsp)
      movdqa	%xmm12, 96(%rsp)
      movdqa	%xmm13, 112(%rsp)
      movdqa	%xmm14, 128(%rsp)
      movdqa	%xmm15, 144(%rsp)
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
      mov	%r9, %rcx
      mov	216(%rsp), %r8
      mov	224(%rsp), %r9
	shr	$4, %rcx
	test	%rcx, %rcx
	jz	.Lend
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	32(%rsi), %xmm2
	movups	48(%rsi), %xmm3
	movups	64(%rsi), %xmm4
	movups	80(%rsi), %xmm5
	movups	96(%rsi), %xmm6
	movups	112(%rsi), %xmm7
	movups	128(%rsi), %xmm8
	movups	144(%rsi), %xmm9
	lea	160(%rsi), %rsi
	sub	$10, %edi
	je	.Lkey_last
	movups	(%rsi), %xmm10
	movups	16(%rsi), %xmm11
	lea	(%rsi, %rdi, 8), %rsi
	lea	(%rsi, %rdi, 8), %rsi
	cmpl	$2, %edi
	je	.Lkey_last
	movups	-32(%rsi), %xmm12
	movups	-16(%rsi), %xmm13
.Lkey_last:
	movups	(%rsi), %xmm14
.Lblock_loop:
	movups	(%r9), %xmm15
	pxor	%xmm0, %xmm15
	aesdec	%xmm1, %xmm15
	aesdec	%xmm2, %xmm15
	aesdec	%xmm3, %xmm15
	aesdec	%xmm4, %xmm15
	aesdec	%xmm5, %xmm15
	aesdec	%xmm6, %xmm15
	aesdec	%xmm7, %xmm15
	aesdec	%xmm8, %xmm15
	aesdec	%xmm9, %xmm15
	testl	%edi, %edi
	je	.Lblock_end
	aesdec	%xmm10, %xmm15
	aesdec	%xmm11, %xmm15
	cmpl	$2, %edi
	je	.Lblock_end
	aesdec	%xmm12, %xmm15
	aesdec	%xmm13, %xmm15
.Lblock_end:
	aesdeclast %xmm14, %xmm15
	movups	%xmm15, (%r8)
	add	$16, %r9
	add	$16, %r8
	dec	%rcx
	jnz	.Lblock_loop
.Lend:
      pop	%rsi
      movdqa	144(%rsp), %xmm15
      movdqa	128(%rsp), %xmm14
      movdqa	112(%rsp), %xmm13
      movdqa	96(%rsp), %xmm12
      movdqa	80(%rsp), %xmm11
      movdqa	64(%rsp), %xmm10
      movdqa	48(%rsp), %xmm9
      movdqa	32(%rsp), %xmm8
      movdqa	16(%rsp), %xmm7
      movdqa	(%rsp), %xmm6
      add	$160, %rsp
    pop	%rdi
	ret
