	.file "arcfour-crypt.asm"
	.text
	.align 16
.globl _nettle_arcfour_crypt
.def _nettle_arcfour_crypt
.scl 2
.type 32
.endef
_nettle_arcfour_crypt:
	pushl	%ebx
	pushl	%ebp
	pushl	%esi
	pushl	%edi
	movl	24(%esp), %edx
	movl	20(%esp), %ebp
	movl	28(%esp), %edi
	movl	32(%esp), %esi
	lea	(%edx, %edi), %edi
	lea	(%edx, %esi), %esi
	negl	%edx
	jnc	.Lend
	movzbl  256 (%ebp), %eax
	movzbl  257 (%ebp), %ebx
	incb	%al
	sarl	$1, %edx
	jc	.Lloop_odd
	.align 16
.Lloop:
	movb	(%ebp, %eax), %cl
	addb    %cl, %bl
	movb    (%ebp, %ebx), %ch
	movb    %ch, (%ebp, %eax)
	incl	%eax
	movzbl	%al, %eax
	movb	%cl, (%ebp, %ebx)
	addb    %ch, %cl
	movzbl  %cl, %ecx
	movb    (%ebp, %ecx), %cl
	xorb    (%esi, %edx, 2), %cl
	movb    %cl, (%edi, %edx, 2)
.Lloop_odd:
	movb	(%ebp, %eax), %cl
	addb    %cl, %bl
	movb    (%ebp, %ebx), %ch
	movb    %ch, (%ebp, %eax)
	incl	%eax
	movzbl	%al, %eax
	movb	%cl, (%ebp, %ebx)
	addb    %ch, %cl
	movzbl  %cl, %ecx
	movb    (%ebp, %ecx), %cl
	xorb    1(%esi, %edx, 2), %cl
	incl    %edx
	movb    %cl, -1(%edi, %edx, 2)
	jnz	.Lloop
	decb	%al
	movb	%al, 256 (%ebp)
	movb	%bl, 257 (%ebp)
.Lend:
	popl	%edi
	popl	%esi
	popl	%ebp
	popl	%ebx
	ret
