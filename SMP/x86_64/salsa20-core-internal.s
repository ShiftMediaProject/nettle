	.text
	.align 16
.globl _nettle_salsa20_core
.def _nettle_salsa20_core
.scl 2
.type 32
.endef
_nettle_salsa20_core:
        push	%rdi
      sub	$48, %rsp
      movdqa	%xmm6, 0(%rsp)
      movdqa	%xmm7, 16(%rsp)
      movdqa	%xmm8, 32(%rsp)
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
	mov	$-1, %eax
	movd	%eax, %xmm6
	pshufd	$0x09, %xmm6, %xmm8
	pshufd	$0x41, %xmm6, %xmm7
	pshufd	$0x22, %xmm6, %xmm6
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	32(%rsi), %xmm2
	movups	48(%rsi), %xmm3
	movaps	%xmm0, %xmm4
	pxor	%xmm1, %xmm0
	pand	%xmm6, %xmm0
	pxor	%xmm0, %xmm1
	pxor	%xmm4, %xmm0
	movaps	%xmm2, %xmm4
	pxor	%xmm3, %xmm2
	pand	%xmm6, %xmm2
	pxor	%xmm2, %xmm3
	pxor	%xmm4, %xmm2
	movaps	%xmm1, %xmm4
	pxor	%xmm3, %xmm1
	pand	%xmm7, %xmm1
	pxor	%xmm1, %xmm3
	pxor	%xmm4, %xmm1
	movaps	%xmm0, %xmm4
	pxor	%xmm2, %xmm0
	pand	%xmm8, %xmm0
	pxor	%xmm0, %xmm2
	pxor	%xmm4, %xmm0
	shrl	$1, %edx
	.align 16
.Loop:
	movaps	%xmm3, %xmm4
	paddd	%xmm0, %xmm4
	movaps	%xmm4, %xmm5
	pslld	$7, %xmm4
	psrld	$25, %xmm5
	pxor	%xmm4, %xmm1
	pxor	%xmm5, %xmm1
	movaps	%xmm0, %xmm4
	paddd	%xmm1, %xmm4
	movaps	%xmm4, %xmm5
	pslld	$9, %xmm4
	psrld	$23, %xmm5
	pxor	%xmm4, %xmm2
	pxor	%xmm5, %xmm2
	movaps	%xmm1, %xmm4
	paddd	%xmm2, %xmm4
	movaps	%xmm4, %xmm5
	pslld	$13, %xmm4
	psrld	$19, %xmm5
	pxor	%xmm4, %xmm3
	pxor	%xmm5, %xmm3
	movaps	%xmm2, %xmm4
	paddd	%xmm3, %xmm4
	movaps	%xmm4, %xmm5
	pslld	$18, %xmm4
	psrld	$14, %xmm5
	pxor	%xmm4, %xmm0
	pxor	%xmm5, %xmm0
	pshufd	$0x93, %xmm1, %xmm1
	pshufd	$0x4e, %xmm2, %xmm2
	pshufd	$0x39, %xmm3, %xmm3
	movaps	%xmm1, %xmm4
	paddd	%xmm0, %xmm4
	movaps	%xmm4, %xmm5
	pslld	$7, %xmm4
	psrld	$25, %xmm5
	pxor	%xmm4, %xmm3
	pxor	%xmm5, %xmm3
	movaps	%xmm0, %xmm4
	paddd	%xmm3, %xmm4
	movaps	%xmm4, %xmm5
	pslld	$9, %xmm4
	psrld	$23, %xmm5
	pxor	%xmm4, %xmm2
	pxor	%xmm5, %xmm2
	movaps	%xmm3, %xmm4
	paddd	%xmm2, %xmm4
	movaps	%xmm4, %xmm5
	pslld	$13, %xmm4
	psrld	$19, %xmm5
	pxor	%xmm4, %xmm1
	pxor	%xmm5, %xmm1
	movaps	%xmm2, %xmm4
	paddd	%xmm1, %xmm4
	movaps	%xmm4, %xmm5
	pslld	$18, %xmm4
	psrld	$14, %xmm5
	pxor	%xmm4, %xmm0
	pxor	%xmm5, %xmm0
	pshufd	$0x39, %xmm1, %xmm1
	pshufd	$0x4e, %xmm2, %xmm2
	pshufd	$0x93, %xmm3, %xmm3
	decl	%edx
	jnz	.Loop
	movaps	%xmm0, %xmm4
	pxor	%xmm2, %xmm0
	pand	%xmm8, %xmm0
	pxor	%xmm0, %xmm2
	pxor	%xmm4, %xmm0
	movaps	%xmm1, %xmm4
	pxor	%xmm3, %xmm1
	pand	%xmm7, %xmm1
	pxor	%xmm1, %xmm3
	pxor	%xmm4, %xmm1
	movaps	%xmm0, %xmm4
	pxor	%xmm1, %xmm0
	pand	%xmm6, %xmm0
	pxor	%xmm0, %xmm1
	pxor	%xmm4, %xmm0
	movaps	%xmm2, %xmm4
	pxor	%xmm3, %xmm2
	pand	%xmm6, %xmm2
	pxor	%xmm2, %xmm3
	pxor	%xmm4, %xmm2
	movups	(%rsi), %xmm4
	movups	16(%rsi), %xmm5
	paddd	%xmm4, %xmm0
	paddd	%xmm5, %xmm1
	movups	%xmm0,(%rdi)
	movups	%xmm1,16(%rdi)
	movups	32(%rsi), %xmm4
	movups	48(%rsi), %xmm5
	paddd	%xmm4, %xmm2
	paddd	%xmm5, %xmm3
	movups	%xmm2,32(%rdi)
	movups	%xmm3,48(%rdi)
      pop	%rsi
      movdqa	32(%rsp), %xmm8
      movdqa	16(%rsp), %xmm7
      movdqa	(%rsp), %xmm6
      add	$48, %rsp
    pop	%rdi
	ret
