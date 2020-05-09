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
	push	%rbx
	push	%rbp
	push	%r12
	mov 88(%rsi), %rbx
	mov %rbx, %rax
	mov 96(%rsi), %rcx
	mov %rbx, %r10
	mov 104(%rsi), %rdx
	mov %rcx, %r11
	mov 56(%rsi), %rbp
	mov %rdx, %r12
	mov 64(%rsi), %rdi
	mov 72(%rsi), %r8
	mov 80(%rsi), %r9
	shl $32, %rax
	shrd $32, %rcx, %rbx
	shrd $32, %rdx, %rcx
	shrd $32, %rbp, %rdx
	shrd $32, %rdi, %rbp
	shrd $32, %r8, %rdi
	shrd $32, %r9, %r8
	shr $32, %r9
	add %r10, %r10
	adc %r11, %r11
	adc %r12, %r12
	adc $0, %r9
	add 56(%rsi), %rax
	adc 64(%rsi), %rbx
	adc 72(%rsi), %rcx
	adc 80(%rsi), %rdx
	adc %r10, %rbp
	adc %r11, %rdi
	adc %r12, %r8
	adc $0, %r9
	add (%rsi), %rax
	adc 8(%rsi), %rbx
	adc 16(%rsi), %rcx
	adc 24(%rsi), %rdx
	adc 32(%rsi), %rbp
	adc 40(%rsi), %rdi
	adc 48(%rsi), %r8
	adc $0, %r9
	mov %r9, %r10
	mov %r9, %r11
	shl $32, %r10
	shr $32, %r11
	xor %r12, %r12
	add %r9, %rax
	adc $0, %rbx
	adc $0, %rcx
	adc %r10, %rdx
	adc %r11, %rbp
	adc $0, %rdi
	adc $0, %r8
	adc $0, %r12
	mov %r12, %r10
	shl $32, %r10
	add %r12, %rax
	mov %rax, (%rsi)
	adc $0, %rbx
	mov %rbx, 8(%rsi)
	adc $0, %rcx
	mov %rcx, 16(%rsi)
	adc %r10, %rdx
	mov %rdx, 24(%rsi)
	adc $0, %rbp
	mov %rbp, 32(%rsi)
	adc $0, %rdi
	mov %rdi, 40(%rsi)
	adc $0, %r8
	mov %r8, 48(%rsi)
	pop	%r12
	pop	%rbp
	pop	%rbx
      pop	%rsi
    pop	%rdi
	ret
