	.file "cbc-aes256-encrypt.asm"
	.text
	.align 16
.globl _nettle_cbc_aes256_encrypt_aesni
.def _nettle_cbc_aes256_encrypt_aesni
.scl 2
.type 32
.endef
_nettle_cbc_aes256_encrypt_aesni:
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
	shr	$4, %rdx
	test	%rdx, %rdx
	jz	.Lend
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	32(%rdi), %xmm2
	movups	48(%rdi), %xmm3
	movups	64(%rdi), %xmm4
	movups	80(%rdi), %xmm5
	movups	96(%rdi), %xmm6
	movups	128(%rdi), %xmm7
	movups	144(%rdi), %xmm8
	movups	160(%rdi), %xmm9
	movups	176(%rdi), %xmm10
	movups	192(%rdi), %xmm11
	movups	208(%rdi), %xmm12
	movups	224(%rdi), %xmm13
	movups	(%rsi), %xmm14
.Lblock_loop:
	movups	(%r8), %xmm15
	pxor	%xmm0, %xmm14
	movups	112(%rdi), %xmm0
	pxor	%xmm15, %xmm14
	aesenc	%xmm1, %xmm14
	aesenc	%xmm2, %xmm14
	aesenc	%xmm3, %xmm14
	aesenc	%xmm4, %xmm14
	aesenc	%xmm5, %xmm14
	aesenc	%xmm6, %xmm14
	aesenc	%xmm0, %xmm14
	movups	(%rdi), %xmm0
	aesenc	%xmm7, %xmm14
	aesenc	%xmm8, %xmm14
	aesenc	%xmm9, %xmm14
	aesenc	%xmm10, %xmm14
	aesenc	%xmm11, %xmm14
	aesenc	%xmm12, %xmm14
	aesenclast %xmm13, %xmm14
	movups	%xmm14, (%rcx)
	add	$16, %r8
	add	$16, %rcx
	dec	%rdx
	jnz	.Lblock_loop
	movups	%xmm14, (%rsi)
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
