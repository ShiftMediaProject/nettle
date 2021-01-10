	.text
	.align 16
.globl _nettle_salsa20_2core
.def _nettle_salsa20_2core
.scl 2
.type 32
.endef
_nettle_salsa20_2core:
        push	%rdi
      sub	$112, %rsp
      movdqa	%xmm6, 0(%rsp)
      movdqa	%xmm7, 16(%rsp)
      movdqa	%xmm8, 32(%rsp)
      movdqa	%xmm9, 48(%rsp)
      movdqa	%xmm10, 64(%rsp)
      movdqa	%xmm11, 80(%rsp)
      movdqa	%xmm12, 96(%rsp)
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
	movups	(%rsi), %xmm8
	movups	16(%rsi), %xmm9
	movups	32(%rsi), %xmm10
	movups	48(%rsi), %xmm11
	pshufd	$0xa0, %xmm8, %xmm0
	pshufd	$0xf5, %xmm8, %xmm7
	pshufd	$0xa0, %xmm9, %xmm1
	pshufd	$0xf5, %xmm9, %xmm4
	pshufd	$0xa0, %xmm10, %xmm2
	pshufd	$0xf5, %xmm10, %xmm5
	pshufd	$0xa0, %xmm11, %xmm3
	pshufd	$0xf5, %xmm11, %xmm6
	mov	$1, %eax
	movd	%eax, %xmm8
	pshufd	$0x51, %xmm8, %xmm8
	pxor	%xmm9, %xmm9
	paddd	%xmm8, %xmm2
	pcmpeqd	%xmm2, %xmm9
	pand	%xmm8, %xmm9
	paddd	%xmm9, %xmm5
	mov	$-1, %eax
	movd	%eax, %xmm12
	pshufd	$0x09, %xmm12, %xmm12
	movaps	%xmm0, %xmm8
	pxor	%xmm2, %xmm0
	pand	%xmm12, %xmm0
	pxor	%xmm0, %xmm2
	pxor	%xmm8, %xmm0
	movaps	%xmm1, %xmm8
	pxor	%xmm3, %xmm1
	pand	%xmm12, %xmm1
	pxor	%xmm1, %xmm3
	pxor	%xmm8, %xmm1
	movaps	%xmm4, %xmm8
	pxor	%xmm6, %xmm4
	pand	%xmm12, %xmm4
	pxor	%xmm4, %xmm6
	pxor	%xmm8, %xmm4
	movaps	%xmm5, %xmm8
	pxor	%xmm7, %xmm5
	pand	%xmm12, %xmm5
	pxor	%xmm5, %xmm7
	pxor	%xmm8, %xmm5
	shrl	$1, %edx
	.align 16
.Loop:
	movaps	%xmm0, %xmm8
	paddd	%xmm3, %xmm8
	movaps	%xmm8, %xmm9
	 movaps	%xmm4, %xmm10
	pslld	$7, %xmm8
	 paddd	%xmm7, %xmm10
	psrld	$25, %xmm9
	 movaps	%xmm10, %xmm11
	pxor	%xmm8, %xmm1
	 pslld	$7, %xmm10
	pxor	%xmm9, %xmm1
	 psrld	$25, %xmm11
	movaps	%xmm0, %xmm8
	 pxor	%xmm10, %xmm5
	paddd	%xmm1, %xmm8
	 pxor	%xmm11, %xmm5
	movaps	%xmm8, %xmm9
	 movaps	%xmm4, %xmm10
	pslld	$9, %xmm8
	 paddd	%xmm5, %xmm10
	psrld	$23, %xmm9
	 movaps	%xmm10, %xmm11
	pxor	%xmm8, %xmm2
	 pslld	$9, %xmm10
	pxor	%xmm9, %xmm2
	 psrld	$23, %xmm11
	movaps	%xmm1, %xmm8
	 pxor	%xmm10, %xmm6
	paddd	%xmm2, %xmm8
	 pxor	%xmm11, %xmm6
	movaps	%xmm8, %xmm9
	 movaps	%xmm5, %xmm10
	pslld	$13, %xmm8
	 paddd	%xmm6, %xmm10
	psrld	$19, %xmm9
	 movaps	%xmm10, %xmm11
	pxor	%xmm8, %xmm3
	 pslld	$13, %xmm10
	pxor	%xmm9, %xmm3
	 psrld	$19, %xmm11
	movaps	%xmm2, %xmm8
	 pxor	%xmm10, %xmm7
	paddd	%xmm3, %xmm8
	 pxor	%xmm11, %xmm7
	movaps	%xmm8, %xmm9
	 movaps	%xmm6, %xmm10
	pslld	$18, %xmm8
	 paddd	%xmm7, %xmm10
	psrld	$14, %xmm9
	 movaps	%xmm10, %xmm11
	pxor	%xmm8, %xmm0
	 pslld	$18, %xmm10
	pxor	%xmm9, %xmm0
	 psrld	$14, %xmm11
	 pxor	%xmm10, %xmm4
	 pxor	%xmm11, %xmm4
	pshufd	$0x4e, %xmm5, %xmm5
	pshufd	$0x4e, %xmm2, %xmm2
	pshufd	$0x4e, %xmm6, %xmm6
	pshufd	$0x4e, %xmm3, %xmm3
	movaps	%xmm0, %xmm8
	paddd	%xmm5, %xmm8
	movaps	%xmm8, %xmm9
	 movaps	%xmm4, %xmm10
	pslld	$7, %xmm8
	 paddd	%xmm1, %xmm10
	psrld	$25, %xmm9
	 movaps	%xmm10, %xmm11
	pxor	%xmm8, %xmm7
	 pslld	$7, %xmm10
	pxor	%xmm9, %xmm7
	 psrld	$25, %xmm11
	movaps	%xmm7, %xmm8
	 pxor	%xmm10, %xmm3
	paddd	%xmm0, %xmm8
	 pxor	%xmm11, %xmm3
	movaps	%xmm8, %xmm9
	 movaps	%xmm3, %xmm10
	pslld	$9, %xmm8
	 paddd	%xmm4, %xmm10
	psrld	$23, %xmm9
	 movaps	%xmm10, %xmm11
	pxor	%xmm8, %xmm2
	 pslld	$9, %xmm10
	pxor	%xmm9, %xmm2
	 psrld	$23, %xmm11
	movaps	%xmm2, %xmm8
	 pxor	%xmm10, %xmm6
	paddd	%xmm7, %xmm8
	 pxor	%xmm11, %xmm6
	movaps	%xmm8, %xmm9
	 movaps	%xmm6, %xmm10
	pslld	$13, %xmm8
	 paddd	%xmm3, %xmm10
	psrld	$19, %xmm9
	 movaps	%xmm10, %xmm11
	pxor	%xmm8, %xmm5
	 pslld	$13, %xmm10
	pxor	%xmm9, %xmm5
	 psrld	$19, %xmm11
	movaps	%xmm5, %xmm8
	 pxor	%xmm10, %xmm1
	paddd	%xmm2, %xmm8
	 pxor	%xmm11, %xmm1
	movaps	%xmm8, %xmm9
	 movaps	%xmm1, %xmm10
	pslld	$18, %xmm8
	 paddd	%xmm6, %xmm10
	psrld	$14, %xmm9
	 movaps	%xmm10, %xmm11
	pxor	%xmm8, %xmm0
	 pslld	$18, %xmm10
	pxor	%xmm9, %xmm0
	 psrld	$14, %xmm11
	 pxor	%xmm10, %xmm4
	 pxor	%xmm11, %xmm4
	pshufd	$0x4e, %xmm5, %xmm5
	pshufd	$0x4e, %xmm2, %xmm2
	pshufd	$0x4e, %xmm6, %xmm6
	pshufd	$0x4e, %xmm3, %xmm3
	decl	%edx
	jnz	.Loop
	movaps	%xmm0, %xmm8
	pxor	%xmm2, %xmm0
	pand	%xmm12, %xmm0
	pxor	%xmm0, %xmm2
	pxor	%xmm8, %xmm0
	movaps	%xmm1, %xmm8
	pxor	%xmm3, %xmm1
	pand	%xmm12, %xmm1
	pxor	%xmm1, %xmm3
	pxor	%xmm8, %xmm1
	movaps	%xmm4, %xmm8
	pxor	%xmm6, %xmm4
	pand	%xmm12, %xmm4
	pxor	%xmm4, %xmm6
	pxor	%xmm8, %xmm4
	movaps	%xmm5, %xmm8
	pxor	%xmm7, %xmm5
	pand	%xmm12, %xmm5
	pxor	%xmm5, %xmm7
	pxor	%xmm8, %xmm5
	movaps	%xmm0, %xmm8
	punpckldq	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm8
	movaps	%xmm0, %xmm7
	punpcklqdq	%xmm8, %xmm0
	punpckhqdq	%xmm8, %xmm7
	movups	(%rsi), %xmm8
	paddd	%xmm8, %xmm0
	paddd	%xmm8, %xmm7
	movaps	%xmm1, %xmm9
	punpckldq	%xmm4, %xmm1
	punpckhdq	%xmm4, %xmm9
	movaps	%xmm1, %xmm4
	punpcklqdq	%xmm9, %xmm1
	punpckhqdq	%xmm9, %xmm4
	movups	16(%rsi), %xmm9
	paddd	%xmm9, %xmm1
	paddd	%xmm9, %xmm4
	movaps	%xmm2, %xmm10
	punpckldq	%xmm5, %xmm2
	punpckhdq	%xmm5, %xmm10
	movaps	%xmm2, %xmm5
	punpcklqdq	%xmm10, %xmm2
	punpckhqdq	%xmm10, %xmm5
	movups	32(%rsi), %xmm10
	paddd	%xmm10, %xmm2
	mov	$1, %eax
	movd	%eax, %xmm12
	paddq	%xmm12, %xmm10
	paddd	%xmm10, %xmm5
	movaps	%xmm3, %xmm11
	punpckldq	%xmm6, %xmm3
	punpckhdq	%xmm6, %xmm11
	movaps	%xmm3, %xmm6
	punpcklqdq	%xmm11, %xmm3
	punpckhqdq	%xmm11, %xmm6
	movups	48(%rsi), %xmm11
	paddd	%xmm11, %xmm3
	paddd	%xmm11, %xmm6
	movups	%xmm0,(%rdi)
	movups	%xmm1,16(%rdi)
	movups	%xmm2,32(%rdi)
	movups	%xmm3,48(%rdi)
	movups	%xmm7,64(%rdi)
	movups	%xmm4,80(%rdi)
	movups	%xmm5,96(%rdi)
	movups	%xmm6,112(%rdi)
      pop	%rsi
      movdqa	96(%rsp), %xmm12
      movdqa	80(%rsp), %xmm11
      movdqa	64(%rsp), %xmm10
      movdqa	48(%rsp), %xmm9
      movdqa	32(%rsp), %xmm8
      movdqa	16(%rsp), %xmm7
      movdqa	(%rsp), %xmm6
      add	$112, %rsp
    pop	%rdi
	ret
