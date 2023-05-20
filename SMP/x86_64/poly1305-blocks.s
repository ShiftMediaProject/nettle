	.file "poly1305-blocks.asm"
.globl _nettle_poly1305_blocks
.def _nettle_poly1305_blocks
.scl 2
.type 32
.endef
_nettle_poly1305_blocks:
        push	%rdi
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
	mov	%rdx, %r8
	test	%rsi, %rsi
	jz	.Lend
	push 	%rbx
	push 	%rbp
	push	%r12
	mov	32 (%rdi), %rbp
	mov	40 (%rdi), %r9
	mov	48 (%rdi), %r10
	.align 16
.Loop:
	mov	(%r8), %rbx
	mov	8(%r8), %rcx
	add	$16, %r8
	add	%rbp, %rbx
	adc	%r9, %rcx
	adc	$1, %r10
	mov	8 (%rdi), %rax
	mul	%rbx
	mov	%rax, %r11
	mov	%rdx, %r12
	mov	%rbx, %rax
	mov	0 (%rdi), %rbx
	mul	%rbx
	mov	%rax, %rbp
	mov	%rdx, %r9
	mov	%rcx, %rax
	mul	%rbx
	add	%rax, %r11
	adc	%rdx, %r12
	mov	24 (%rdi), %rbx
	mov	%rcx, %rax
	mul	%rbx
	add	%rax, %rbp
	adc	%rdx, %r9
	mov	%r10, %rax
	mul	%rbx
	add	%rax, %r11
	adc	%rdx, %r12
	mov	%r10, %rbx
	and	$3, %r10
	shr	$2, %rbx
	mov	16 (%rdi), %rax
	mul	%rbx
	add	%rax, %rbp
	adc	%rdx, %r9
	imul	0 (%rdi), %r10
	add 	%r11, %r9
	adc	%r12, %r10
	dec	%rsi
	jnz	.Loop
	mov	%rbp, 32 (%rdi)
	mov	%r9, 40 (%rdi)
	mov	%r10, 48 (%rdi)
	pop	%r12
	pop	%rbp
	pop 	%rbx
.Lend:
	mov	%r8, %rax
      pop	%rsi
    pop	%rdi
	ret
