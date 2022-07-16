	.file "ecc-secp256r1-redc.asm"
.globl _nettle_ecc_secp256r1_redc
.def _nettle_ecc_secp256r1_redc
.scl 2
.type 32
.endef
_nettle_ecc_secp256r1_redc:
        push	%rdi
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
	mov	(%rdx), %rdi
	mov	%rdi, %r9
	mov	%rdi, %r10
	mov	%rdi, %r11
	shl	$32, %r9
	shr	$32, %r10
	sub	%r9, %r11
	sbb	%r10, %rdi
	mov	8(%rdx), %rcx
	mov	16(%rdx), %rax
	mov	24(%rdx), %r8
	add	%r9, %rcx
	adc	%r10, %rax
	adc	%r11, %r8
	adc	32(%rdx), %rdi
	mov	%rcx, %r9
	mov	%rcx, %r10
	mov	%rcx, %r11
	adc	$0, %rcx
	shl	$32, %r9
	shr	$32, %r10
	sub	%r9, %r11
	sbb	%r10, %rcx
	add	%r9, %rax
	adc	%r10, %r8
	adc	%r11, %rdi
	adc	40(%rdx), %rcx
	mov	%rax, %r9
	mov	%rax, %r10
	mov	%rax, %r11
	adc	$0, %rax
	shl	$32, %r9
	shr	$32, %r10
	sub	%r9, %r11
	sbb	%r10, %rax
	add	%r9, %r8
	adc	%r10, %rdi
	adc	%r11, %rcx
	adc	48(%rdx), %rax
	mov	%r8, %r9
	mov	%r8, %r10
	mov	%r8, %r11
	adc	$0, %r8
	shl	$32, %r9
	shr	$32, %r10
	sub	%r9, %r11
	sbb	%r10, %r8
	add	%r9, %rdi
	adc	%r10, %rcx
	adc	%r11, %rax
	adc	56(%rdx), %r8
	sbb	%r11, %r11
	mov	%r11, %r9
	mov	%r11, %r10
	mov	%r11d, %edx
	neg	%r9
	shl	$32, %r10
	and	$-2, %edx
	add	%r9, %rdi
	mov	%rdi, (%rsi)
	adc	%r10, %rcx
	mov	%rcx, 8(%rsi)
	adc	%r11, %rax
	mov	%rax, 16(%rsi)
	adc	%rdx, %r8
	mov	%r8, 24(%rsi)
      pop	%rsi
    pop	%rdi
	ret
