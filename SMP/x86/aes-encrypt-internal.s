	.file "aes-encrypt-internal.asm"
	.text
	.align 16
.globl __nettle_aes_encrypt
.def __nettle_aes_encrypt
.scl 2
.type 32
.endef
__nettle_aes_encrypt:
	pushl	%ebx
	pushl	%ebp
	pushl	%esi
	pushl	%edi
	subl	$20, %esp
	movl	52(%esp), %ebp
	testl	%ebp,%ebp
	jz	.Lend
	shrl	$4, 52(%esp)
	subl	$1, 40(%esp)
.Lblock_loop:
	movl	44(%esp), %esi
	movl	60(%esp), %edi
	movl	(%edi),%eax
	movl	4(%edi),%ebx
	movl	8(%edi),%ecx
	movl	12(%edi),%edx
	xorl	(%esi),%eax
	xorl	4(%esi),%ebx
	xorl	8(%esi),%ecx
	xorl	12(%esi),%edx
	addl	$16, 60(%esp)
	movl	48(%esp), %ebp
	movl	40(%esp), %edi
	movl	%edi, 12(%esp)
	addl	$16,%esi
	movl	%esi,16(%esp)
	.align 16
.Lround_loop:
	movzbl	%al, %esi
	movl	256 (%ebp, %esi, 4),%edi
	movzbl	%bh, %esi
	xorl	1280 (%ebp, %esi, 4),%edi
	movl	%ecx,%esi
	shrl	$16,%esi
	andl	$0xff,%esi
	xorl	2304 (%ebp, %esi, 4),%edi
	movl	%edx,%esi
	shrl	$24,%esi
	xorl	3328 (%ebp, %esi, 4),%edi
	movl	%edi, 8(%esp)
	movzbl	%bl, %esi
	movl	256 (%ebp, %esi, 4),%edi
	movzbl	%ch, %esi
	xorl	1280 (%ebp, %esi, 4),%edi
	movl	%edx,%esi
	shrl	$16,%esi
	andl	$0xff,%esi
	xorl	2304 (%ebp, %esi, 4),%edi
	movl	%eax,%esi
	shrl	$24,%esi
	xorl	3328 (%ebp, %esi, 4),%edi
	movl	%edi, 4(%esp)
	movzbl	%cl, %esi
	movl	256 (%ebp, %esi, 4),%edi
	movzbl	%dh, %esi
	xorl	1280 (%ebp, %esi, 4),%edi
	movl	%eax,%esi
	shrl	$16,%esi
	andl	$0xff,%esi
	xorl	2304 (%ebp, %esi, 4),%edi
	movl	%ebx,%esi
	shrl	$24,%esi
	xorl	3328 (%ebp, %esi, 4),%edi
	movl	%edi, (%esp)
	movzbl	%dl, %esi
	movl	256 (%ebp, %esi, 4),%edx
	movzbl	%ah, %esi
	xorl	1280 (%ebp, %esi, 4),%edx
	movl	%ebx,%esi
	shrl	$16,%esi
	andl	$0xff,%esi
	xorl	2304 (%ebp, %esi, 4),%edx
	movl	%ecx,%esi
	shrl	$24,%esi
	xorl	3328 (%ebp, %esi, 4),%edx
	movl	8(%esp), %eax
	movl	4(%esp), %ebx
	movl	(%esp), %ecx
	movl	16(%esp), %esi
	xorl	(%esi),%eax
	xorl	4(%esi),%ebx
	xorl	8(%esi),%ecx
	xorl	12(%esi),%edx
	addl	$16,16(%esp)
	decl	12(%esp)
	jnz	.Lround_loop
	movzbl	%al,%edi
	movzbl	(%ebp, %edi), %edi
	movl	%ebx,%esi
	andl	$0x0000ff00,%esi
	orl	%esi, %edi
	movl	%ecx,%esi
	andl	$0x00ff0000,%esi
	orl	%esi, %edi
	movl	%edx,%esi
	andl	$0xff000000,%esi
	orl	%esi, %edi
	roll	$8, %edi
	movl	%edi, 8(%esp)
	movzbl	%bl,%edi
	movzbl	(%ebp, %edi), %edi
	movl	%ecx,%esi
	andl	$0x0000ff00,%esi
	orl	%esi, %edi
	movl	%edx,%esi
	andl	$0x00ff0000,%esi
	orl	%esi, %edi
	movl	%eax,%esi
	andl	$0xff000000,%esi
	orl	%esi, %edi
	roll	$8, %edi
	movl	%edi, 4(%esp)
	movzbl	%cl,%edi
	movzbl	(%ebp, %edi), %edi
	movl	%edx,%esi
	andl	$0x0000ff00,%esi
	orl	%esi, %edi
	movl	%eax,%esi
	andl	$0x00ff0000,%esi
	orl	%esi, %edi
	movl	%ebx,%esi
	andl	$0xff000000,%esi
	orl	%esi, %edi
	roll	$8, %edi
	movl	%edi, (%esp)
	movzbl	%dl,%edx
	movzbl	(%ebp, %edx), %edx
	movl	%eax,%esi
	andl	$0x0000ff00,%esi
	orl	%esi, %edx
	movl	%ebx,%esi
	andl	$0x00ff0000,%esi
	orl	%esi, %edx
	movl	%ecx,%esi
	andl	$0xff000000,%esi
	orl	%esi, %edx
	roll	$8, %edx
	movl	8(%esp), %eax
	movl	4(%esp), %ebx
	movl	(%esp), %ecx
	mov	$3,%edi
.Lsubst:
	movzbl  %al,%esi
	movb	(%ebp, %esi),%al
	roll	$8,%eax
	movzbl  %bl,%esi
	movb	(%ebp, %esi),%bl
	roll	$8,%ebx
	movzbl  %cl,%esi
	movb	(%ebp, %esi),%cl
	roll	$8,%ecx
	movzbl  %dl,%esi
	movb	(%ebp, %esi),%dl
	roll	$8,%edx
	decl	%edi
	jnz	.Lsubst
	movl	56(%esp),%edi
	movl	16(%esp), %esi
	xorl	(%esi),%eax
	xorl	4(%esi),%ebx
	xorl	8(%esi),%ecx
	xorl	12(%esi),%edx
	movl	%eax,(%edi)
	movl	%ebx,4(%edi)
	movl	%ecx,8(%edi)
	movl	%edx,12(%edi)
	addl	$16, 56(%esp)
	decl	52(%esp)
	jnz	.Lblock_loop
.Lend:
	addl	$20, %esp
	popl	%edi
	popl	%esi
	popl	%ebp
	popl	%ebx
	ret
