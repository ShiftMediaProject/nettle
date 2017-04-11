.file "camellia-crypt-internal.asm"
	.text
	.align 16
.globl __nettle_camellia_crypt
.def __nettle_camellia_crypt
.scl 2
.type 32
.endef
__nettle_camellia_crypt:
	pushl	%ebx
	pushl	%ebp
	pushl	%esi
	pushl	%edi
	subl	$20, %esp
	movl	52(%esp), %ebp
	testl	%ebp,%ebp
	jz	.Lend
.Lblock_loop:
	movl	60(%esp), %ebp
	movl	(%ebp), %ebx
	bswap	%ebx
	movl	4(%ebp), %eax
	bswap	%eax
	movl	8(%ebp), %edx
	bswap	%edx
	movl	12(%ebp), %ecx
	bswap	%ecx
	addl	$16, 60(%esp)
	movl	44(%esp), %esi
	movl	40(%esp), %ebp
	subl	$8, %ebp
	movl	%ebp, 16(%esp)
	xorl	(%esi), %eax
	xorl	4(%esi), %ebx
	addl	$8, %esi
	movl	48(%esp), %edi
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movzbl	%al, %ebp
	movl	(%edi,%ebp,4), %edx
	movzbl	%ah, %ebp
	xorl	3072(%edi,%ebp,4), %edx
	roll	$16, %eax
	movzbl	%bl, %ebp
	movl	3072(%edi,%ebp,4), %ecx
	movzbl	%bh, %ebp
	xorl	2048(%edi,%ebp,4), %ecx
	roll	$16, %ebx
	movzbl	%al, %ebp
	xorl	2048(%edi,%ebp,4), %edx
	movzbl	%ah, %ebp
	xorl	1024(%edi,%ebp,4), %edx
	movzbl	%bl, %ebp
	xorl	1024(%edi,%ebp,4), %ecx
	movzbl	%bh, %ebp
	xorl	(%edi,%ebp,4), %ecx
	xorl	0(%esi), %edx
	xorl	0 + 4(%esi), %ecx
	xorl	%ecx, %edx
	rorl	$8, %ecx
	xorl	%edx, %ecx
	xorl	8(%esp), %ecx
	xorl	12(%esp), %edx
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movzbl	%cl, %ebp
	movl	(%edi,%ebp,4), %ebx
	movzbl	%ch, %ebp
	xorl	3072(%edi,%ebp,4), %ebx
	roll	$16, %ecx
	movzbl	%dl, %ebp
	movl	3072(%edi,%ebp,4), %eax
	movzbl	%dh, %ebp
	xorl	2048(%edi,%ebp,4), %eax
	roll	$16, %edx
	movzbl	%cl, %ebp
	xorl	2048(%edi,%ebp,4), %ebx
	movzbl	%ch, %ebp
	xorl	1024(%edi,%ebp,4), %ebx
	movzbl	%dl, %ebp
	xorl	1024(%edi,%ebp,4), %eax
	movzbl	%dh, %ebp
	xorl	(%edi,%ebp,4), %eax
	xorl	8(%esi), %ebx
	xorl	8 + 4(%esi), %eax
	xorl	%eax, %ebx
	rorl	$8, %eax
	xorl	%ebx, %eax
	xorl	(%esp), %eax
	xorl	4(%esp), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	movzbl	%al, %ebp
	movl	(%edi,%ebp,4), %edx
	movzbl	%ah, %ebp
	xorl	3072(%edi,%ebp,4), %edx
	roll	$16, %eax
	movzbl	%bl, %ebp
	movl	3072(%edi,%ebp,4), %ecx
	movzbl	%bh, %ebp
	xorl	2048(%edi,%ebp,4), %ecx
	roll	$16, %ebx
	movzbl	%al, %ebp
	xorl	2048(%edi,%ebp,4), %edx
	movzbl	%ah, %ebp
	xorl	1024(%edi,%ebp,4), %edx
	movzbl	%bl, %ebp
	xorl	1024(%edi,%ebp,4), %ecx
	movzbl	%bh, %ebp
	xorl	(%edi,%ebp,4), %ecx
	xorl	16(%esi), %edx
	xorl	16 + 4(%esi), %ecx
	xorl	%ecx, %edx
	rorl	$8, %ecx
	xorl	%edx, %ecx
	xorl	8(%esp), %ecx
	xorl	12(%esp), %edx
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movzbl	%cl, %ebp
	movl	(%edi,%ebp,4), %ebx
	movzbl	%ch, %ebp
	xorl	3072(%edi,%ebp,4), %ebx
	roll	$16, %ecx
	movzbl	%dl, %ebp
	movl	3072(%edi,%ebp,4), %eax
	movzbl	%dh, %ebp
	xorl	2048(%edi,%ebp,4), %eax
	roll	$16, %edx
	movzbl	%cl, %ebp
	xorl	2048(%edi,%ebp,4), %ebx
	movzbl	%ch, %ebp
	xorl	1024(%edi,%ebp,4), %ebx
	movzbl	%dl, %ebp
	xorl	1024(%edi,%ebp,4), %eax
	movzbl	%dh, %ebp
	xorl	(%edi,%ebp,4), %eax
	xorl	24(%esi), %ebx
	xorl	24 + 4(%esi), %eax
	xorl	%eax, %ebx
	rorl	$8, %eax
	xorl	%ebx, %eax
	xorl	(%esp), %eax
	xorl	4(%esp), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	movzbl	%al, %ebp
	movl	(%edi,%ebp,4), %edx
	movzbl	%ah, %ebp
	xorl	3072(%edi,%ebp,4), %edx
	roll	$16, %eax
	movzbl	%bl, %ebp
	movl	3072(%edi,%ebp,4), %ecx
	movzbl	%bh, %ebp
	xorl	2048(%edi,%ebp,4), %ecx
	roll	$16, %ebx
	movzbl	%al, %ebp
	xorl	2048(%edi,%ebp,4), %edx
	movzbl	%ah, %ebp
	xorl	1024(%edi,%ebp,4), %edx
	movzbl	%bl, %ebp
	xorl	1024(%edi,%ebp,4), %ecx
	movzbl	%bh, %ebp
	xorl	(%edi,%ebp,4), %ecx
	xorl	32(%esi), %edx
	xorl	32 + 4(%esi), %ecx
	xorl	%ecx, %edx
	rorl	$8, %ecx
	xorl	%edx, %ecx
	xorl	8(%esp), %ecx
	xorl	12(%esp), %edx
	movzbl	%cl, %ebp
	movl	(%edi,%ebp,4), %ebx
	movzbl	%ch, %ebp
	xorl	3072(%edi,%ebp,4), %ebx
	roll	$16, %ecx
	movzbl	%dl, %ebp
	movl	3072(%edi,%ebp,4), %eax
	movzbl	%dh, %ebp
	xorl	2048(%edi,%ebp,4), %eax
	roll	$16, %edx
	movzbl	%cl, %ebp
	xorl	2048(%edi,%ebp,4), %ebx
	movzbl	%ch, %ebp
	xorl	1024(%edi,%ebp,4), %ebx
	movzbl	%dl, %ebp
	xorl	1024(%edi,%ebp,4), %eax
	movzbl	%dh, %ebp
	xorl	(%edi,%ebp,4), %eax
	xorl	40(%esi), %ebx
	xorl	40 + 4(%esi), %eax
	xorl	%eax, %ebx
	rorl	$8, %eax
	xorl	%ebx, %eax
	xorl	(%esp), %eax
	xorl	4(%esp), %ebx
	roll	$16, %ecx
	roll	$16, %edx
.Lround_loop:
	addl	$64, %esi
	movl	-16 + 4(%esi), %ebp
	andl	%ebx, %ebp
	roll	$1, %ebp
	xorl	%ebp, %eax
	movl	-16(%esi), %ebp
	orl	%eax, %ebp
	xorl	%ebp, %ebx
	movl	-8(%esi), %ebp
	orl	%ecx, %ebp
	xorl	%ebp, %edx
	movl	-8 + 4(%esi), %ebp
	andl	%edx, %ebp
	roll	$1, %ebp
	xorl	%ebp, %ecx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movzbl	%al, %ebp
	movl	(%edi,%ebp,4), %edx
	movzbl	%ah, %ebp
	xorl	3072(%edi,%ebp,4), %edx
	roll	$16, %eax
	movzbl	%bl, %ebp
	movl	3072(%edi,%ebp,4), %ecx
	movzbl	%bh, %ebp
	xorl	2048(%edi,%ebp,4), %ecx
	roll	$16, %ebx
	movzbl	%al, %ebp
	xorl	2048(%edi,%ebp,4), %edx
	movzbl	%ah, %ebp
	xorl	1024(%edi,%ebp,4), %edx
	movzbl	%bl, %ebp
	xorl	1024(%edi,%ebp,4), %ecx
	movzbl	%bh, %ebp
	xorl	(%edi,%ebp,4), %ecx
	xorl	0(%esi), %edx
	xorl	0 + 4(%esi), %ecx
	xorl	%ecx, %edx
	rorl	$8, %ecx
	xorl	%edx, %ecx
	xorl	8(%esp), %ecx
	xorl	12(%esp), %edx
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movzbl	%cl, %ebp
	movl	(%edi,%ebp,4), %ebx
	movzbl	%ch, %ebp
	xorl	3072(%edi,%ebp,4), %ebx
	roll	$16, %ecx
	movzbl	%dl, %ebp
	movl	3072(%edi,%ebp,4), %eax
	movzbl	%dh, %ebp
	xorl	2048(%edi,%ebp,4), %eax
	roll	$16, %edx
	movzbl	%cl, %ebp
	xorl	2048(%edi,%ebp,4), %ebx
	movzbl	%ch, %ebp
	xorl	1024(%edi,%ebp,4), %ebx
	movzbl	%dl, %ebp
	xorl	1024(%edi,%ebp,4), %eax
	movzbl	%dh, %ebp
	xorl	(%edi,%ebp,4), %eax
	xorl	8(%esi), %ebx
	xorl	8 + 4(%esi), %eax
	xorl	%eax, %ebx
	rorl	$8, %eax
	xorl	%ebx, %eax
	xorl	(%esp), %eax
	xorl	4(%esp), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	movzbl	%al, %ebp
	movl	(%edi,%ebp,4), %edx
	movzbl	%ah, %ebp
	xorl	3072(%edi,%ebp,4), %edx
	roll	$16, %eax
	movzbl	%bl, %ebp
	movl	3072(%edi,%ebp,4), %ecx
	movzbl	%bh, %ebp
	xorl	2048(%edi,%ebp,4), %ecx
	roll	$16, %ebx
	movzbl	%al, %ebp
	xorl	2048(%edi,%ebp,4), %edx
	movzbl	%ah, %ebp
	xorl	1024(%edi,%ebp,4), %edx
	movzbl	%bl, %ebp
	xorl	1024(%edi,%ebp,4), %ecx
	movzbl	%bh, %ebp
	xorl	(%edi,%ebp,4), %ecx
	xorl	16(%esi), %edx
	xorl	16 + 4(%esi), %ecx
	xorl	%ecx, %edx
	rorl	$8, %ecx
	xorl	%edx, %ecx
	xorl	8(%esp), %ecx
	xorl	12(%esp), %edx
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movzbl	%cl, %ebp
	movl	(%edi,%ebp,4), %ebx
	movzbl	%ch, %ebp
	xorl	3072(%edi,%ebp,4), %ebx
	roll	$16, %ecx
	movzbl	%dl, %ebp
	movl	3072(%edi,%ebp,4), %eax
	movzbl	%dh, %ebp
	xorl	2048(%edi,%ebp,4), %eax
	roll	$16, %edx
	movzbl	%cl, %ebp
	xorl	2048(%edi,%ebp,4), %ebx
	movzbl	%ch, %ebp
	xorl	1024(%edi,%ebp,4), %ebx
	movzbl	%dl, %ebp
	xorl	1024(%edi,%ebp,4), %eax
	movzbl	%dh, %ebp
	xorl	(%edi,%ebp,4), %eax
	xorl	24(%esi), %ebx
	xorl	24 + 4(%esi), %eax
	xorl	%eax, %ebx
	rorl	$8, %eax
	xorl	%ebx, %eax
	xorl	(%esp), %eax
	xorl	4(%esp), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	movzbl	%al, %ebp
	movl	(%edi,%ebp,4), %edx
	movzbl	%ah, %ebp
	xorl	3072(%edi,%ebp,4), %edx
	roll	$16, %eax
	movzbl	%bl, %ebp
	movl	3072(%edi,%ebp,4), %ecx
	movzbl	%bh, %ebp
	xorl	2048(%edi,%ebp,4), %ecx
	roll	$16, %ebx
	movzbl	%al, %ebp
	xorl	2048(%edi,%ebp,4), %edx
	movzbl	%ah, %ebp
	xorl	1024(%edi,%ebp,4), %edx
	movzbl	%bl, %ebp
	xorl	1024(%edi,%ebp,4), %ecx
	movzbl	%bh, %ebp
	xorl	(%edi,%ebp,4), %ecx
	xorl	32(%esi), %edx
	xorl	32 + 4(%esi), %ecx
	xorl	%ecx, %edx
	rorl	$8, %ecx
	xorl	%edx, %ecx
	xorl	8(%esp), %ecx
	xorl	12(%esp), %edx
	movzbl	%cl, %ebp
	movl	(%edi,%ebp,4), %ebx
	movzbl	%ch, %ebp
	xorl	3072(%edi,%ebp,4), %ebx
	roll	$16, %ecx
	movzbl	%dl, %ebp
	movl	3072(%edi,%ebp,4), %eax
	movzbl	%dh, %ebp
	xorl	2048(%edi,%ebp,4), %eax
	roll	$16, %edx
	movzbl	%cl, %ebp
	xorl	2048(%edi,%ebp,4), %ebx
	movzbl	%ch, %ebp
	xorl	1024(%edi,%ebp,4), %ebx
	movzbl	%dl, %ebp
	xorl	1024(%edi,%ebp,4), %eax
	movzbl	%dh, %ebp
	xorl	(%edi,%ebp,4), %eax
	xorl	40(%esi), %ebx
	xorl	40 + 4(%esi), %eax
	xorl	%eax, %ebx
	rorl	$8, %eax
	xorl	%ebx, %eax
	xorl	(%esp), %eax
	xorl	4(%esp), %ebx
	roll	$16, %ecx
	roll	$16, %edx
	subl 	$8, 16(%esp)
	ja	.Lround_loop
	movl	56(%esp), %ebp
	bswap	%ebx
	movl	%ebx,8(%ebp)
	bswap	%eax
	movl	%eax,12(%ebp)
	xorl	52(%esi), %edx
	bswap	%edx
	movl	%edx, 0(%ebp)
	xorl	48(%esi), %ecx
	bswap	%ecx
	movl	%ecx, 4(%ebp)
	addl	$16, 56(%esp)
	subl	$16, 52(%esp)
	ja	.Lblock_loop
.Lend:
	addl	$20, %esp
	popl	%edi
	popl	%esi
	popl	%ebp
	popl	%ebx
	ret
