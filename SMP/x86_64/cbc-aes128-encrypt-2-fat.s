	.file "cbc-aes128-encrypt.asm"
	.text
	.align 16
.globl _nettle_cbc_aes128_encrypt_aesni
.def _nettle_cbc_aes128_encrypt_aesni
.scl 2
.type 32
.endef
_nettle_cbc_aes128_encrypt_aesni:
        push	%rdi
      sub	$112, %rsp
      movdqa	%xmm6, 0(%rsp)
      movdqa	%xmm7, 16(%rsp)
      movdqa	%xmm8, 32(%rsp)
      movdqa	%xmm9, 48(%rsp)
      movdqa	%xmm10, 64(%rsp)
      movdqa	%xmm11, 80(%rsp)
      movdqa	%xmm12, 96(%rsp)
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
      mov	%r9, %rcx
      mov	168(%rsp), %r8
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
	movups	112(%rdi), %xmm7
	movups	128(%rdi), %xmm8
	movups	144(%rdi), %xmm9
	movups	160(%rdi), %xmm10
	movups	(%rsi), %xmm11
.Lblock_loop:
	movups	(%r8), %xmm12
	pxor	%xmm0, %xmm11
	pxor	%xmm12, %xmm11
	aesenc	%xmm1, %xmm11
	aesenc	%xmm2, %xmm11
	aesenc	%xmm3, %xmm11
	aesenc	%xmm4, %xmm11
	aesenc	%xmm5, %xmm11
	aesenc	%xmm6, %xmm11
	aesenc	%xmm7, %xmm11
	aesenc	%xmm8, %xmm11
	aesenc	%xmm9, %xmm11
	aesenclast %xmm10, %xmm11
	movups	%xmm11, (%rcx)
	add	$16, %r8
	add	$16, %rcx
	dec	%rdx
	jnz	.Lblock_loop
	movups	%xmm11, (%rsi)
.Lend:
      pop	%rsi
      movdqa	96(%rsp), %xmm12
      movdqa	80(%rsp), %xmm11
      movdqa	64(%rsp), %xmm10
      movdqa	48(%rsp), %xmm9
      movdqa	32(%rsp), %xmm8
      movdqa	16(%rsp), %xmm7
      movdqa	(%rsp), %xmm6
      add	$112, %rsp
    pop	%rdi
	ret
