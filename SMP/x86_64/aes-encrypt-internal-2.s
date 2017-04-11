	.file "aes-encrypt-internal.asm"
	.text
	.align 16
.globl _nettle_aes_encrypt_aesni
.def _nettle_aes_encrypt_aesni
.scl 2
.type 32
.endef
_nettle_aes_encrypt_aesni:
        push	%rdi
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
      mov	%r9, %rcx
      mov	56(%rsp), %r8
      mov	64(%rsp), %r9
	shr	$4, %rcx
	test	%rcx, %rcx
	jz	.Lend
	decl	%edi
.Lblock_loop:
	mov	%rdi, %rdx
	mov	%rsi, %rax
	movups	(%r9), %xmm0
	movups	(%rax), %xmm1
	pxor	%xmm1, %xmm0
.Lround_loop:
	add	$16, %rax
	movups	(%rax), %xmm1
	.byte 0x66, 0x0f, 0x38, 0xdc, 0xc1
	decl	%edx
	jnz	.Lround_loop
	movups	16(%rax), %xmm1
	.byte 0x66, 0x0f, 0x38, 0xdd, 0xc1
	movups	%xmm0, (%r8)
	add	$16, %r9
	add	$16, %r8
	dec	%rcx
	jnz	.Lblock_loop
.Lend:
      pop	%rsi
    pop	%rdi
	ret
