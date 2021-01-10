	.file "ecc-secp521r1-modp.asm"
.globl _nettle_ecc_secp521r1_modp
.def _nettle_ecc_secp521r1_modp
.scl 2
.type 32
.endef
_nettle_ecc_secp521r1_modp:
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
	mov	72(%rdx), %rbx
	mov	%rbx, %rax
	shl	$55, %rax
	shr	$9, %rbx
	mov	80(%rdx), %rcx
	mov	%rcx, %r13
	shr	$9, %rcx
	shl	$55, %r13
	or	%r13, %rbx
	mov	88(%rdx), %rbp
	mov	%rbp, %r13
	shr	$9, %rbp
	shl	$55, %r13
	or	%r13, %rcx
	mov	96(%rdx), %rdi
	mov	%rdi, %r13
	shr	$9, %rdi
	shl	$55, %r13
	or	%r13, %rbp
	mov	104(%rdx), %r8
	mov	%r8, %r13
	shr	$9, %r8
	shl	$55, %r13
	or	%r13, %rdi
	mov	112(%rdx), %r9
	mov	%r9, %r13
	shr	$9, %r9
	shl	$55, %r13
	or	%r13, %r8
	mov	120(%rdx), %r10
	mov	%r10, %r13
	shr	$9, %r10
	shl	$55, %r13
	or	%r13, %r9
	mov	128(%rdx), %r11
	mov	%r11, %r13
	shr	$9, %r11
	shl	$55, %r13
	or	%r13, %r10
	mov	136(%rdx), %r12
	mov	%r12, %r13
	shr	$9, %r12
	shl	$55, %r13
	or	%r13, %r11
	add	  (%rdx), %rax
	adc	 8(%rdx), %rbx
	adc	16(%rdx), %rcx
	adc	24(%rdx), %rbp
	adc	32(%rdx), %rdi
	adc	40(%rdx), %r8
	adc	48(%rdx), %r9
	adc	56(%rdx), %r10
	adc	64(%rdx), %r11
	adc	$0, %r12
	mov	%r11, %r13
	shr	$9, %r13
	and	$0x1ff, %r11
	mov	%r12, %r14
	shl	$55, %r12
	shr	$9, %r14
	or	%r12, %r13
	add	%r13, %rax
	mov	%rax, (%rsi)
	adc	%r14, %rbx
	mov	%rbx, 8(%rsi)
	adc	$0, %rcx
	mov	%rcx, 16(%rsi)
	adc	$0, %rbp
	mov	%rbp, 24(%rsi)
	adc	$0, %rdi
	mov	%rdi, 32(%rsi)
	adc	$0, %r8
	mov	%r8, 40(%rsi)
	adc	$0, %r9
	mov	%r9, 48(%rsi)
	adc	$0, %r10
	mov	%r10, 56(%rsi)
	adc	$0, %r11
	mov	%r11, 64(%rsi)
	pop	%r14
	pop	%r13
	pop	%r12
	pop	%rbp
	pop	%rbx
      pop	%rsi
    pop	%rdi
	ret
