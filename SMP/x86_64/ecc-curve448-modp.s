	.file "ecc-curve448-modp.asm"
.globl _nettle_ecc_curve448_modp
.def _nettle_ecc_curve448_modp
.scl 2
.type 32
.endef
_nettle_ecc_curve448_modp:
        push	%rdi
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
	push	%rbx
	push	%rbp
	push	%r12
	push	%r13
	mov 88(%rdx), %rbx
	mov %rbx, %rax
	mov 96(%rdx), %rcx
	mov %rbx, %r11
	mov 104(%rdx), %rbp
	mov %rcx, %r12
	mov 56(%rdx), %rdi
	mov %rbp, %r13
	mov 64(%rdx), %r8
	mov 72(%rdx), %r9
	mov 80(%rdx), %r10
	shl $32, %rax
	shrd $32, %rcx, %rbx
	shrd $32, %rbp, %rcx
	shrd $32, %rdi, %rbp
	shrd $32, %r8, %rdi
	shrd $32, %r9, %r8
	shrd $32, %r10, %r9
	shr $32, %r10
	add %r11, %r11
	adc %r12, %r12
	adc %r13, %r13
	adc $0, %r10
	add 56(%rdx), %rax
	adc 64(%rdx), %rbx
	adc 72(%rdx), %rcx
	adc 80(%rdx), %rbp
	adc %r11, %rdi
	adc %r12, %r8
	adc %r13, %r9
	adc $0, %r10
	add (%rdx), %rax
	adc 8(%rdx), %rbx
	adc 16(%rdx), %rcx
	adc 24(%rdx), %rbp
	adc 32(%rdx), %rdi
	adc 40(%rdx), %r8
	adc 48(%rdx), %r9
	adc $0, %r10
	mov %r10, %r11
	mov %r10, %r12
	shl $32, %r11
	shr $32, %r12
	xor %r13, %r13
	add %r10, %rax
	adc $0, %rbx
	adc $0, %rcx
	adc %r11, %rbp
	adc %r12, %rdi
	adc $0, %r8
	adc $0, %r9
	adc $0, %r13
	mov %r13, %r11
	shl $32, %r11
	add %r13, %rax
	mov %rax, (%rsi)
	adc $0, %rbx
	mov %rbx, 8(%rsi)
	adc $0, %rcx
	mov %rcx, 16(%rsi)
	adc %r11, %rbp
	mov %rbp, 24(%rsi)
	adc $0, %rdi
	mov %rdi, 32(%rsi)
	adc $0, %r8
	mov %r8, 40(%rsi)
	adc $0, %r9
	mov %r9, 48(%rsi)
	pop	%r13
	pop	%r12
	pop	%rbp
	pop	%rbx
      pop	%rsi
    pop	%rdi
	ret
