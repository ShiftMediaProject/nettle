	.file "sha1-compress.asm"
	.text
	.align 16
.Lswap_mask:
	.byte 15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0
.globl _nettle_sha1_compress_sha_ni
.def _nettle_sha1_compress_sha_ni
.scl 2
.type 32
.endef
_nettle_sha1_compress_sha_ni:
        push	%rdi
      sub	$64, %rsp
      movdqa	%xmm6, 0(%rsp)
      movdqa	%xmm7, 16(%rsp)
      movdqa	%xmm8, 32(%rsp)
      movdqa	%xmm9, 48(%rsp)
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
	movups	(%rdi), %xmm4
	movd	16(%rdi), %xmm5
	movups	(%rsi), %xmm0
	movdqa	.Lswap_mask(%rip), %xmm9
	pshufd	$0x1b, %xmm4, %xmm4
	pshufd	$0x1b, %xmm5, %xmm5
	movdqa	%xmm4, %xmm7
	movdqa	%xmm5, %xmm8
	pshufb	%xmm9, %xmm0
	paddd	%xmm0, %xmm5
	movdqa	%xmm4, %xmm6
	sha1rnds4 $0, %xmm5, %xmm4
	movups	16(%rsi), %xmm1
	pshufb	%xmm9, %xmm1
	sha1nexte %xmm1, %xmm6
	movdqa	%xmm4, %xmm5
	sha1rnds4 $0, %xmm6, %xmm4
	sha1msg1 %xmm1, %xmm0
	movups	32(%rsi), %xmm2
	pshufb	%xmm9, %xmm2
	sha1nexte %xmm2, %xmm5
	movdqa	%xmm4, %xmm6
	sha1rnds4 $0, %xmm5, %xmm4
	sha1msg1 %xmm2, %xmm1
	pxor	%xmm2, %xmm0
	movups	48(%rsi), %xmm3
	pshufb	%xmm9, %xmm3
	sha1nexte %xmm3, %xmm6
	movdqa	%xmm4, %xmm5
	sha1msg2 %xmm3, %xmm0
	sha1rnds4 $0, %xmm6, %xmm4
	sha1msg1 %xmm3, %xmm2
	pxor	%xmm3, %xmm1
	sha1nexte %xmm0, %xmm5
	movdqa	%xmm4, %xmm6
	sha1msg2 %xmm0, %xmm1
	sha1rnds4 $0, %xmm5, %xmm4
	sha1msg1 %xmm0, %xmm3
	pxor	%xmm0, %xmm2
	sha1nexte %xmm1, %xmm6
	movdqa	%xmm4, %xmm5
	sha1msg2 %xmm1, %xmm2
	sha1rnds4 $1, %xmm6, %xmm4
	sha1msg1 %xmm1, %xmm0
	pxor	%xmm1, %xmm3
	sha1nexte %xmm2, %xmm5
	movdqa	%xmm4, %xmm6
	sha1msg2 %xmm2, %xmm3
	sha1rnds4 $1, %xmm5, %xmm4
	sha1msg1 %xmm2, %xmm1
	pxor	%xmm2, %xmm0
	sha1nexte %xmm3, %xmm6
	movdqa	%xmm4, %xmm5
	sha1msg2 %xmm3, %xmm0
	sha1rnds4 $1, %xmm6, %xmm4
	sha1msg1 %xmm3, %xmm2
	pxor	%xmm3, %xmm1
	sha1nexte %xmm0, %xmm5
	movdqa	%xmm4, %xmm6
	sha1msg2 %xmm0, %xmm1
	sha1rnds4 $1, %xmm5, %xmm4
	sha1msg1 %xmm0, %xmm3
	pxor	%xmm0, %xmm2
	sha1nexte %xmm1, %xmm6
	movdqa	%xmm4, %xmm5
	sha1msg2 %xmm1, %xmm2
	sha1rnds4 $1, %xmm6, %xmm4
	sha1msg1 %xmm1, %xmm0
	pxor	%xmm1, %xmm3
	sha1nexte %xmm2, %xmm5
	movdqa	%xmm4, %xmm6
	sha1msg2 %xmm2, %xmm3
	sha1rnds4 $2, %xmm5, %xmm4
	sha1msg1 %xmm2, %xmm1
	pxor	%xmm2, %xmm0
	sha1nexte %xmm3, %xmm6
	movdqa	%xmm4, %xmm5
	sha1msg2 %xmm3, %xmm0
	sha1rnds4 $2, %xmm6, %xmm4
	sha1msg1 %xmm3, %xmm2
	pxor	%xmm3, %xmm1
	sha1nexte %xmm0, %xmm5
	movdqa	%xmm4, %xmm6
	sha1msg2 %xmm0, %xmm1
	sha1rnds4 $2, %xmm5, %xmm4
	sha1msg1 %xmm0, %xmm3
	pxor	%xmm0, %xmm2
	sha1nexte %xmm1, %xmm6
	movdqa	%xmm4, %xmm5
	sha1msg2 %xmm1, %xmm2
	sha1rnds4 $2, %xmm6, %xmm4
	sha1msg1 %xmm1, %xmm0
	pxor	%xmm1, %xmm3
	sha1nexte %xmm2, %xmm5
	movdqa	%xmm4, %xmm6
	sha1msg2 %xmm2, %xmm3
	sha1rnds4 $2, %xmm5, %xmm4
	sha1msg1 %xmm2, %xmm1
	pxor	%xmm2, %xmm0
	sha1nexte %xmm3, %xmm6
	movdqa	%xmm4, %xmm5
	sha1msg2 %xmm3, %xmm0
	sha1rnds4 $3, %xmm6, %xmm4
	sha1msg1 %xmm3, %xmm2
	pxor	%xmm3, %xmm1
	sha1nexte %xmm0, %xmm5
	movdqa	%xmm4, %xmm6
	sha1msg2 %xmm0, %xmm1
	sha1rnds4 $3, %xmm5, %xmm4
	sha1msg1 %xmm0, %xmm3
	pxor	%xmm0, %xmm2
	sha1nexte %xmm1, %xmm6
	movdqa	%xmm4, %xmm5
	sha1msg2 %xmm1, %xmm2
	sha1rnds4 $3, %xmm6, %xmm4
	pxor	%xmm1, %xmm3
	sha1nexte %xmm2, %xmm5
	movdqa	%xmm4, %xmm6
	sha1msg2 %xmm2, %xmm3
	sha1rnds4 $3, %xmm5, %xmm4
	sha1nexte %xmm3, %xmm6
	movdqa	%xmm4, %xmm5
	sha1rnds4 $3, %xmm6, %xmm4
	sha1nexte %xmm8, %xmm5
	paddd	%xmm7, %xmm4
	pshufd	$0x1b, %xmm4, %xmm4
	movups	%xmm4, (%rdi)
	pshufd	$0x1b, %xmm5, %xmm5
	movd	%xmm5, 16(%rdi)
      pop	%rsi
      movdqa	48(%rsp), %xmm9
      movdqa	32(%rsp), %xmm8
      movdqa	16(%rsp), %xmm7
      movdqa	(%rsp), %xmm6
      add	$64, %rsp
    pop	%rdi
	ret
