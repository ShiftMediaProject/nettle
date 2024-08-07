	.file "aes192-decrypt.asm"
	.text
	.align 16
.globl _nettle_aes192_decrypt_aesni
.def _nettle_aes192_decrypt_aesni
.scl 2
.type 32
.endef
_nettle_aes192_decrypt_aesni:
        push	%rdi
      sub	$144, %rsp
      movdqa	%xmm6, 0(%rsp)
      movdqa	%xmm7, 16(%rsp)
      movdqa	%xmm8, 32(%rsp)
      movdqa	%xmm9, 48(%rsp)
      movdqa	%xmm10, 64(%rsp)
      movdqa	%xmm11, 80(%rsp)
      movdqa	%xmm12, 96(%rsp)
      movdqa	%xmm13, 112(%rsp)
      movdqa	%xmm14, 128(%rsp)
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
      mov	%r9, %rcx
	shr	$4, %rsi
	test	%rsi, %rsi
	jz	.Lend
	movups	192(%rdi), %xmm0
	movups	176(%rdi), %xmm1
	movups	160(%rdi), %xmm2
	movups	144(%rdi), %xmm3
	movups	128(%rdi), %xmm4
	movups	112(%rdi), %xmm5
	movups	96(%rdi), %xmm6
	movups	80(%rdi), %xmm7
	movups	64(%rdi), %xmm8
	movups	48(%rdi), %xmm9
	movups	32(%rdi), %xmm10
	movups	16(%rdi), %xmm11
	movups	(%rdi), %xmm12
	shr	%rsi
	jnc	.Lblock_loop
	movups	(%rcx), %xmm13
	pxor	%xmm0, %xmm13
	aesdec	%xmm1, %xmm13
	aesdec	%xmm2, %xmm13
	aesdec	%xmm3, %xmm13
	aesdec	%xmm4, %xmm13
	aesdec	%xmm5, %xmm13
	aesdec	%xmm6, %xmm13
	aesdec	%xmm7, %xmm13
	aesdec	%xmm8, %xmm13
	aesdec	%xmm9, %xmm13
	aesdec	%xmm10, %xmm13
	aesdec	%xmm11, %xmm13
	aesdeclast %xmm12, %xmm13
	movups	%xmm13, (%rdx)
	add	$16, %rcx
	add	$16, %rdx
	test	%rsi, %rsi
	jz	.Lend
.Lblock_loop:
	movups	(%rcx), %xmm13
	movups	16(%rcx), %xmm14
	pxor	%xmm0, %xmm13
	pxor	%xmm0, %xmm14
	aesdec	%xmm1, %xmm13
	aesdec	%xmm1, %xmm14
	aesdec	%xmm2, %xmm13
	aesdec	%xmm2, %xmm14
	aesdec	%xmm3, %xmm13
	aesdec	%xmm3, %xmm14
	aesdec	%xmm4, %xmm13
	aesdec	%xmm4, %xmm14
	aesdec	%xmm5, %xmm13
	aesdec	%xmm5, %xmm14
	aesdec	%xmm6, %xmm13
	aesdec	%xmm6, %xmm14
	aesdec	%xmm7, %xmm13
	aesdec	%xmm7, %xmm14
	aesdec	%xmm8, %xmm13
	aesdec	%xmm8, %xmm14
	aesdec	%xmm9, %xmm13
	aesdec	%xmm9, %xmm14
	aesdec	%xmm10, %xmm13
	aesdec	%xmm10, %xmm14
	aesdec	%xmm11, %xmm13
	aesdec	%xmm11, %xmm14
	aesdeclast %xmm12, %xmm13
	aesdeclast %xmm12, %xmm14
	movups	%xmm13, (%rdx)
	movups	%xmm14, 16(%rdx)
	add	$32, %rcx
	add	$32, %rdx
	dec	%rsi
	jnz	.Lblock_loop
.Lend:
      pop	%rsi
      movdqa	128(%rsp), %xmm14
      movdqa	112(%rsp), %xmm13
      movdqa	96(%rsp), %xmm12
      movdqa	80(%rsp), %xmm11
      movdqa	64(%rsp), %xmm10
      movdqa	48(%rsp), %xmm9
      movdqa	32(%rsp), %xmm8
      movdqa	16(%rsp), %xmm7
      movdqa	(%rsp), %xmm6
      add	$144, %rsp
    pop	%rdi
	ret
