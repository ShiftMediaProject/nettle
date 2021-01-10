	.file "ecc-secp384r1-modp.asm"
.globl _nettle_ecc_secp384r1_modp
.def _nettle_ecc_secp384r1_modp
.scl 2
.type 32
.endef
_nettle_ecc_secp384r1_modp:
        push	%rdi
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
	push	%rbx
	push	%rbp
	push	%r12
	push	%r13
	push	%r14
	push	%r15
	push	%rsi
	mov	80(%rdx), %r13
	mov	88(%rdx), %r14
	mov	%r13, %r9
	mov	%r14, %r10
	mov	%r14, %rax
	shr	$32, %r10
	shl	$32, %rax
	shr	$32, %r9
	or	%rax, %r9
	mov	%r9, %rax
	neg	%rax
	sbb	%r10, %r9
	sbb	$0, %r10
	xor	%r15, %r15
	add	%r13, %r9
	adc	%r14, %r10
	adc	$0, %r15
	add	48(%rdx), %r9
	adc	56(%rdx), %r10
	adc	$0, %r15
	mov	(%rdx), %rbx
	add	%r9, %rbx
	mov	8(%rdx), %rcx
	adc	%r10, %rcx
	mov	16(%rdx), %rdi
	mov	64(%rdx), %r11
	adc	%r11, %rdi
	mov	24(%rdx), %rbp
	mov	72(%rdx), %r12
	adc	%r12, %rbp
	mov	32(%rdx), %rsi
	adc	%r13, %rsi
	mov	40(%rdx), %r8
	adc	%r14, %r8
	sbb	%r14, %r14
	neg	%r14
	add	%r9, %rdi
	adc	%r10, %rbp
	adc	%r11, %rsi
	adc	%r12, %r8
	adc	$0, %r14
	mov	%r12, %rdx
	shl	$32, %r13
	shr	$32, %rdx
	or	%rdx, %r13
	mov	%r11, %rdx
	shl	$32, %r12
	shr	$32, %rdx
	or	%rdx, %r12
	mov	%r10, %rdx
	shl	$32, %r11
	shr	$32, %rdx
	or	%rdx, %r11
	mov	%r9, %rdx
	shl	$32, %r10
	shr	$32, %rdx
	or	%rdx, %r10
	shl	$32, %r9
	mov	%r9, %rdx
	neg	%rdx
	sbb	%r10, %r9
	sbb	%r11, %r10
	sbb	%r12, %r11
	sbb	%r13, %r12
	sbb	$0, %r13
	add	%rdx, %rbx
	adc	%r9, %rcx
	adc	%r10, %rdi
	adc	%r11, %rbp
	adc	%r12, %rsi
	adc	%r13, %r8
	adc	$0, %r14
	mov	%r14, %r9
	mov	%r14, %r10
	shl	$32, %r10
	sub	%r10, %r9
	sbb	$0, %r10
	mov	%r15, %r11
	mov	%r15, %r12
	shl	$32, %r12
	sub	%r12, %r11
	sbb	$0, %r12
	add	%r14, %r11
	xor	%r14, %r14
	add	%r9, %rbx
	adc	%r10, %rcx
	adc	%r11, %rdi
	adc	%r12, %rbp
	adc	%r15, %rsi
	adc	%rax, %r8
	adc	$0, %r14
	mov	%r14, %r9
	mov	%r14, %r10
	shl	$32, %r10
	sub	%r10, %r9
	sbb	$0, %r10
	pop	%rdx
	add	%r9, %rbx
	mov	%rbx, (%rdx)
	adc	%r10, %rcx
	mov	%rcx, 8(%rdx)
	adc	%r14, %rdi
	mov	%rdi, 16(%rdx)
	adc	$0, %rbp
	mov	%rbp, 24(%rdx)
	adc	$0, %rsi
	mov	%rsi, 32(%rdx)
	adc	$0, %r8
	mov	%r8, 40(%rdx)
	pop	%r15
	pop	%r14
	pop	%r13
	pop	%r12
	pop	%rbp
	pop	%rbx
      pop	%rsi
    pop	%rdi
	ret
