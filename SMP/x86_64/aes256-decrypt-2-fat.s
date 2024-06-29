	.file "aes256-decrypt.asm"
	.text
	.align 16
.globl _nettle_aes256_decrypt_aesni
.def _nettle_aes256_decrypt_aesni
.scl 2
.type 32
.endef
_nettle_aes256_decrypt_aesni:
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
	shr	$4, %rsi
	test	%rsi, %rsi
	jz	.Lend
	movups	224(%rdi), %xmm0
	movups	208(%rdi), %xmm1
	movups	192(%rdi), %xmm2
	movups	176(%rdi), %xmm3
	movups	160(%rdi), %xmm4
	movups	144(%rdi), %xmm5
	movups	128(%rdi), %xmm6
	movups	96(%rdi), %xmm7
	movups	80(%rdi), %xmm8
	movups	64(%rdi), %xmm9
	movups	48(%rdi), %xmm10
	movups	32(%rdi), %xmm11
	movups	16(%rdi), %xmm12
	movups	(%rdi), %xmm13
	shr	%rsi
	jnc	.Lblock_loop
	movups	(%rcx), %xmm14
	pxor	%xmm0, %xmm14
	movups	112(%rdi), %xmm0
	aesdec	%xmm1, %xmm14
	aesdec	%xmm2, %xmm14
	aesdec	%xmm3, %xmm14
	aesdec	%xmm4, %xmm14
	aesdec	%xmm5, %xmm14
	aesdec	%xmm6, %xmm14
	aesdec	%xmm0, %xmm14
	movups	224(%rdi), %xmm0
	aesdec	%xmm7, %xmm14
	aesdec	%xmm8, %xmm14
	aesdec	%xmm9, %xmm14
	aesdec	%xmm10, %xmm14
	aesdec	%xmm11, %xmm14
	aesdec	%xmm12, %xmm14
	aesdeclast %xmm13, %xmm14
	movups	%xmm14, (%rdx)
	add	$16, %rcx
	add	$16, %rdx
	test	%rsi, %rsi
	jz	.Lend
.Lblock_loop:
	movups	(%rcx), %xmm14
	movups	16(%rcx), %xmm15
	pxor	%xmm0, %xmm14
	pxor	%xmm0, %xmm15
	movups	112(%rdi), %xmm0
	aesdec	%xmm1, %xmm14
	aesdec	%xmm1, %xmm15
	aesdec	%xmm2, %xmm14
	aesdec	%xmm2, %xmm15
	aesdec	%xmm3, %xmm14
	aesdec	%xmm3, %xmm15
	aesdec	%xmm4, %xmm14
	aesdec	%xmm4, %xmm15
	aesdec	%xmm5, %xmm14
	aesdec	%xmm5, %xmm15
	aesdec	%xmm6, %xmm14
	aesdec	%xmm6, %xmm15
	aesdec	%xmm0, %xmm14
	aesdec	%xmm0, %xmm15
	movups	224(%rdi), %xmm0
	aesdec	%xmm7, %xmm14
	aesdec	%xmm7, %xmm15
	aesdec	%xmm8, %xmm14
	aesdec	%xmm8, %xmm15
	aesdec	%xmm9, %xmm14
	aesdec	%xmm9, %xmm15
	aesdec	%xmm10, %xmm14
	aesdec	%xmm10, %xmm15
	aesdec	%xmm11, %xmm14
	aesdec	%xmm11, %xmm15
	aesdec	%xmm12, %xmm14
	aesdec	%xmm12, %xmm15
	aesdeclast %xmm13, %xmm14
	aesdeclast %xmm13, %xmm15
	movups	%xmm14, (%rdx)
	movups	%xmm15, 16(%rdx)
	add	$32, %rcx
	add	$32, %rdx
	dec	%rsi
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
