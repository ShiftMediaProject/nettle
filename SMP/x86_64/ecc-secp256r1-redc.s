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
	push	%rbx
	push	%rbp
	push	%r12
	push	%r13
	mov	(%rdx), %rdi
	mov	%rdi, %rbx
	mov	%rdi, %rbp
	shl	$32, %rbx
	shr	$32, %rbp
	xor	%r12,%r12
	xor	%r13,%r13
	sub	%rbx, %r12
	sbb	%rbp, %r13
	sbb	%rdi, %rbx
	sbb	$0, %rbp
	mov	8(%rdx), %rcx
	mov	16(%rdx), %rax
	mov	24(%rdx), %r8
	sub	%r12, %rcx
	sbb	%r13, %rax
	sbb	%rbx, %r8
	sbb	%rbp, %rdi
	mov	%rcx, %rbx
	mov	%rcx, %rbp
	shl	$32, %rbx
	shr	$32, %rbp
	xor	%r12,%r12
	xor	%r13,%r13
	sub	%rbx, %r12
	sbb	%rbp, %r13
	sbb	%rcx, %rbx
	sbb	$0, %rbp
	mov	32(%rdx), %r9
	sub	%r12, %rax
	sbb	%r13, %r8
	sbb	%rbx, %r9
	sbb	%rbp, %rcx
	mov	%rax, %rbx
	mov	%rax, %rbp
	shl	$32, %rbx
	shr	$32, %rbp
	xor	%r12,%r12
	xor	%r13,%r13
	sub	%rbx, %r12
	sbb	%rbp, %r13
	sbb	%rax, %rbx
	sbb	$0, %rbp
	mov	40(%rdx), %r10
	sub	%r12, %r8
	sbb	%r13, %r9
	sbb	%rbx, %r10
	sbb	%rbp, %rax
	mov	%r8, %rbx
	mov	%r8, %rbp
	shl	$32, %rbx
	shr	$32, %rbp
	xor	%r12,%r12
	xor	%r13,%r13
	sub	%rbx, %r12
	sbb	%rbp, %r13
	sbb	%r8, %rbx
	sbb	$0, %rbp
	mov	48(%rdx), %r11
	sub	%r12, %r9
	sbb	%r13, %r10
	sbb	%rbx, %r11
	sbb	%rbp, %r8
	add	%r9, %rdi
	adc	%r10, %rcx
	adc	%r11, %rax
	adc	56(%rdx), %r8
	sbb	%rbx, %rbx
	mov	%rbx, %r12
	mov	%rbx, %r13
	mov	%ebx, %ebp
	neg	%r12
	shl	$32, %r13
	and	$-2, %ebp
	add	%r12, %rdi
	mov	%rdi, (%rsi)
	adc	%r13, %rcx
	mov	%rcx, 8(%rsi)
	adc	%rbx, %rax
	mov	%rax, 16(%rsi)
	adc	%rbp, %r8
	mov	%r8, 24(%rsi)
	pop	%r13
	pop	%r12
	pop	%rbp
	pop	%rbx
      pop	%rsi
    pop	%rdi
	ret
