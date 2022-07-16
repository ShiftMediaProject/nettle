	.file "umac-nh.asm"
	.text
	.align 16
.globl _nettle_umac_nh
.def _nettle_umac_nh
.scl 2
.type 32
.endef
_nettle_umac_nh:
        push	%rdi
      sub	$16, %rsp
      movdqa	%xmm6, 0(%rsp)
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
      mov	%r8, %rdx
	pxor	%xmm4, %xmm4
.Loop:
	movups	(%rdi), %xmm2
	movups	16(%rdi), %xmm3
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	pshufd	$0x31, %xmm0, %xmm5
	pshufd	$0x31, %xmm1, %xmm6
	pmuludq	%xmm5, %xmm6
	paddq	%xmm6, %xmm4
	pmuludq	%xmm0, %xmm1
	paddq	%xmm1, %xmm4
	subl	$32, %esi
	lea	32(%rdi), %rdi
	lea	32(%rdx), %rdx
	ja	.Loop
	pshufd	$0xe, %xmm4, %xmm5
	paddq	%xmm5, %xmm4
	movd	%xmm4, %rax
      pop	%rsi
      movdqa	(%rsp), %xmm6
      add	$16, %rsp
    pop	%rdi
	ret
