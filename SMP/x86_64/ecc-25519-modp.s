	.file "ecc-25519-modp.asm"
.globl nettle_ecc_25519_modp
.def nettle_ecc_25519_modp
.scl 2
.type 32
.endef
nettle_ecc_25519_modp:
        push	%rdi
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
	push	%rbx
	mov	56(%rsi), %rax
	mov	$38, %rbx
	mul	%rbx
	mov	24(%rsi), %r9
	xor	%r10, %r10
	add	%rax, %r9
	adc	%rdx, %r10
	mov	40(%rsi), %rax
	mul	%rbx
	add	%r9, %r9
	adc	%r10, %r10
	shr	%r9
	imul	$19, %r10
	mov	(%rsi), %rdi
	mov	8(%rsi), %rcx
	mov	16(%rsi), %r8
	add	%r10, %rdi
	adc	%rax, %rcx
	mov	32(%rsi), %rax
	adc	%rdx, %r8
	adc	$0, %r9
	mul	%rbx
	mov	%rax, %r10
	mov	48(%rsi), %rax
	mov	%rdx, %r11
	mul	%rbx
	add	%r10, %rdi
	mov	%rdi, (%rsi)
	adc	%r11, %rcx
	mov	%rcx, 8(%rsi)
	adc	%rax, %r8
	mov	%r8, 16(%rsi)
	adc	%rdx, %r9
	mov	%r9, 24(%rsi)
	pop	%rbx
      pop	%rsi
    pop	%rdi
	ret
