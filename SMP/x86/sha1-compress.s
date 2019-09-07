	.file "sha1-compress.asm"
	.text
.globl _nettle_sha1_compress
.def _nettle_sha1_compress
.scl 2
.type 32
.endef
_nettle_sha1_compress:
	pushl	%ebx
	pushl	%ebp
	pushl	%esi
	pushl	%edi
	subl	$64, %esp
.align 32
	mov	88(%esp), %esi
	mov	8(%esi), %ecx
	mov	(%esi), %eax
	bswap	%ecx
	bswap	%eax
	mov	%ecx, 8 (%esp)
	mov	%eax,  (%esp)
	mov	12(%esi), %edx
	mov	24(%esi), %ecx
	mov	16(%esi), %eax
	mov	4(%esi), %ebx
	bswap	%ebx
	bswap	%eax
	bswap	%ecx
	mov	%ecx, 24 (%esp)
	mov	%eax, 16 (%esp)
	bswap	%edx
	mov	%edx, 12 (%esp)
	mov	%ebx, 4 (%esp)
	mov	40(%esi), %ecx
	mov	32(%esi), %eax
	mov	28(%esi), %edx
	bswap	%eax
	bswap	%edx
	mov	%edx, 28 (%esp)
	mov	20(%esi), %ebx
	mov	%eax, 32 (%esp)
	mov	44(%esi), %edx
	bswap	%ecx
	bswap	%edx
	mov	48(%esi), %eax
	bswap	%ebx
	mov	%ecx, 40 (%esp)
	mov	%ebx, 20 (%esp)
	mov	%edx, 44 (%esp)
	mov	60(%esi), %edx
	mov	84(%esp),%edi
	mov	36(%esi), %ebx
	bswap	%edx
	bswap	%ebx
	bswap	%eax
	mov	56(%esi), %ecx
	mov	%edx, 60 (%esp)
	bswap	%ecx
	mov	%ecx, 56 (%esp)
	mov	%ebx, 36 (%esp)
	mov	52(%esi), %ebx
	mov	12(%edi), %edx
	bswap	%ebx
	mov	%ebx, 52 (%esp)
	mov	8(%edi),  %ecx
	mov	16(%edi), %ebp
	mov	4(%edi),  %ebx
	mov	%edx, %esi
	add	 (%esp), %ebp
	xor	%ecx, %esi
	mov	%eax, 48 (%esp)
	mov	(%edi),   %eax
	and	%ebx, %esi
	xor	%edx, %esi
	rol	$30, %ebx
	add	%esi, %ebp
	mov	%eax, %edi
	mov	%ecx, %esi
	add	4 (%esp), %edx
	rol	$5, %edi
	xor	%ebx, %esi
	and	%eax, %esi
	xor	%ecx, %esi
	lea	0x5A827999 (%edi, %ebp), %ebp
	add	%esi, %edx
	mov	%ebx, %esi
	rol	$30, %eax
	xor	%eax, %esi
	and	%ebp, %esi
	mov	%ebp, %edi
	add	8 (%esp), %ecx
	rol	$30, %ebp
	xor	%ebx, %esi
	rol	$5, %edi
	lea	0x5A827999 (%edi, %edx), %edx
	mov	%edx, %edi
	rol	$5, %edi
	add	%esi, %ecx
	mov	%eax, %esi
	xor	%ebp, %esi
	lea	0x5A827999 (%edi, %ecx), %ecx
	and	%edx, %esi
	xor	%eax, %esi
	add	12 (%esp), %ebx
	mov	%ecx, %edi
	add	%esi, %ebx
	mov	%ebp, %esi
	rol	$30, %edx
	xor	%edx, %esi
	and	%ecx, %esi
	rol	$5, %edi
	xor	%ebp, %esi
	add	16 (%esp), %eax
	lea	0x5A827999 (%edi, %ebx), %ebx
	add	%esi, %eax
	rol	$30, %ecx
	mov	%edx, %esi
	xor	%ecx, %esi
	and	%ebx, %esi
	mov	%ebx, %edi
	rol	$5, %edi
	add	20 (%esp), %ebp
	rol	$30, %ebx
	xor	%edx, %esi
	add	%esi, %ebp
	mov	%ecx, %esi
	xor	%ebx, %esi
	lea	0x5A827999 (%edi, %eax), %eax
	mov	%eax, %edi
	add	24 (%esp), %edx
	and	%eax, %esi
	rol	$5, %edi
	xor	%ecx, %esi
	lea	0x5A827999 (%edi, %ebp), %ebp
	rol	$30, %eax
	add	%esi, %edx
	mov	%ebx, %esi
	mov	%ebp, %edi
	xor	%eax, %esi
	and	%ebp, %esi
	rol	$5, %edi
	lea	0x5A827999 (%edi, %edx), %edx
	xor	%ebx, %esi
	add	28 (%esp), %ecx
	rol	$30, %ebp
	add	32 (%esp), %ebx
	mov	%edx, %edi
	add	%esi, %ecx
	mov	%eax, %esi
	xor	%ebp, %esi
	rol	$5, %edi
	and	%edx, %esi
	lea	0x5A827999 (%edi, %ecx), %ecx
	xor	%eax, %esi
	add	%esi, %ebx
	mov	%ebp, %esi
	mov	%ecx, %edi
	rol	$30, %edx
	xor	%edx, %esi
	rol	$5, %edi
	lea	0x5A827999 (%edi, %ebx), %ebx
	and	%ecx, %esi
	xor	%ebp, %esi
	add	40 (%esp), %ebp
	add	36 (%esp), %eax
	mov	%ebx, %edi
	add	%esi, %eax
	rol	$5, %edi
	lea	0x5A827999 (%edi, %eax), %eax
	mov	%edx, %esi
	rol	$30, %ecx
	xor	%ecx, %esi
	and	%ebx, %esi
	xor	%edx, %esi
	rol	$30, %ebx
	add	%esi, %ebp
	mov	%ecx, %esi
	mov	%eax, %edi
	xor	%ebx, %esi
	add	44 (%esp), %edx
	and	%eax, %esi
	rol	$30, %eax
	rol	$5, %edi
	xor	%ecx, %esi
	lea	0x5A827999 (%edi, %ebp), %ebp
	add	%esi, %edx
	mov	%ebx, %esi
	xor	%eax, %esi
	mov	%ebp, %edi
	rol	$5, %edi
	and	%ebp, %esi
	lea	0x5A827999 (%edi, %edx), %edx
	xor	%ebx, %esi
	add	48 (%esp), %ecx
	add	%esi, %ecx
	rol	$30, %ebp
	mov	%eax, %esi
	xor	%ebp, %esi
	mov	%edx, %edi
	rol	$5, %edi
	and	%edx, %esi
	add	52 (%esp), %ebx
	lea	0x5A827999 (%edi, %ecx), %ecx
	xor	%eax, %esi
	add	%esi, %ebx
	mov	%ebp, %esi
	rol	$30, %edx
	xor	%edx, %esi
	and	%ecx, %esi
	mov	%ecx, %edi
	rol	$5, %edi
	rol	$30, %ecx
	add	56 (%esp), %eax
	xor	%ebp, %esi
	add	%esi, %eax
	mov	%edx, %esi
	xor	%ecx, %esi
	lea	0x5A827999 (%edi, %ebx), %ebx
	and	%ebx, %esi
	mov	%ebx, %edi
	rol	$5, %edi
	lea	0x5A827999 (%edi, %eax), %eax
	mov	%eax, %edi
	xor	%edx, %esi
	add	60 (%esp), %ebp
	add	%esi, %ebp
	rol	$5, %edi
	lea	0x5A827999 (%edi, %ebp), %ebp
	mov	 (%esp), %edi
	xor	8 (%esp), %edi
	mov	%ecx, %esi
	xor	32 (%esp), %edi
	xor	52 (%esp), %edi
	rol	$30, %ebx
	xor	%ebx, %esi
	and	%eax, %esi
	xor	%ecx, %esi
	rol	$1, %edi
	lea	0x5A827999 (%edi, %esi), %esi
	mov	%edi,  (%esp)
	mov	%ebp, %edi
	rol	$5, %edi
	add	%edi, %edx
	mov	4 (%esp), %edi
	xor	12 (%esp), %edi
	rol	$30, %eax
	add	%esi, %edx
	mov	%ebx, %esi
	xor	%eax, %esi
	and	%ebp, %esi
	xor	36 (%esp), %edi
	xor	56 (%esp), %edi
	xor	%ebx, %esi
	rol	$1, %edi
	mov	%edi, 4 (%esp)
	lea	0x5A827999 (%edi, %esi), %esi
	mov	%edx, %edi
	rol	$5, %edi
	add	%edi, %ecx
	mov	8 (%esp), %edi
	xor	16 (%esp), %edi
	rol	$30, %ebp
	add	%esi, %ecx
	mov	%eax, %esi
	xor	%ebp, %esi
	xor	40 (%esp), %edi
	xor	60 (%esp), %edi
	and	%edx, %esi
	rol	$1, %edi
	xor	%eax, %esi
	mov	%edi, 8 (%esp)
	lea	0x5A827999 (%edi, %esi), %esi
	mov	%ecx, %edi
	rol	$30, %edx
	rol	$5, %edi
	add	%edi, %ebx
	add	%esi, %ebx
	mov	%ebp, %esi
	mov	12 (%esp), %edi
	xor	%edx, %esi
	xor	20 (%esp), %edi
	and	%ecx, %esi
	xor	%ebp, %esi
	xor	44 (%esp), %edi
	xor	 (%esp), %edi
	rol	$1, %edi
	mov	%edi, 12 (%esp)
	lea	0x5A827999 (%edi, %esi), %esi
	mov	%ebx, %edi
	rol	$5, %edi
	add	%edi, %eax
	mov	16 (%esp), %edi
	xor	24 (%esp), %edi
	rol	$30, %ecx
	xor	48 (%esp), %edi
	add	%esi, %eax
	xor	4 (%esp), %edi
	mov	%edx, %esi
	xor	%ecx, %esi
	rol	$1, %edi
	xor	%ebx, %esi
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%edi, 16 (%esp)
	mov	%eax, %edi
	rol	$5, %edi
	add	%edi, %ebp
	mov	20 (%esp), %edi
	add	%esi, %ebp
	mov	%ecx, %esi
	xor	28 (%esp), %edi
	rol	$30, %ebx
	xor	52 (%esp), %edi
	xor	%ebx, %esi
	xor	8 (%esp), %edi
	xor	%eax, %esi
	rol	$1, %edi
	mov	%edi, 20 (%esp)
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%ebp, %edi
	rol	$5, %edi
	add	%edi, %edx
	mov	24 (%esp), %edi
	xor	32 (%esp), %edi
	add	%esi, %edx
	rol	$30, %eax
	xor	56 (%esp), %edi
	mov	%ebx, %esi
	xor	12 (%esp), %edi
	xor	%eax, %esi
	rol	$1, %edi
	xor	%ebp, %esi
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%edi, 24 (%esp)
	mov	%edx, %edi
	rol	$5, %edi
	add	%edi, %ecx
	add	%esi, %ecx
	mov	%eax, %esi
	rol	$30, %ebp
	mov	28 (%esp), %edi
	xor	36 (%esp), %edi
	xor	%ebp, %esi
	xor	60 (%esp), %edi
	xor	16 (%esp), %edi
	xor	%edx, %esi
	rol	$1, %edi
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%edi, 28 (%esp)
	mov	%ecx, %edi
	rol	$5, %edi
	add	%edi, %ebx
	mov	32 (%esp), %edi
	xor	40 (%esp), %edi
	add	%esi, %ebx
	rol	$30, %edx
	mov	%ebp, %esi
	xor	 (%esp), %edi
	xor	20 (%esp), %edi
	xor	%edx, %esi
	xor	%ecx, %esi
	rol	$1, %edi
	mov	%edi, 32 (%esp)
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%ebx, %edi
	rol	$5, %edi
	add	%edi, %eax
	mov	36 (%esp), %edi
	xor	44 (%esp), %edi
	xor	4 (%esp), %edi
	add	%esi, %eax
	xor	24 (%esp), %edi
	mov	%edx, %esi
	rol	$1, %edi
	rol	$30, %ecx
	xor	%ecx, %esi
	mov	%edi, 36 (%esp)
	xor	%ebx, %esi
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%eax, %edi
	rol	$5, %edi
	add	%edi, %ebp
	mov	40 (%esp), %edi
	xor	48 (%esp), %edi
	xor	8 (%esp), %edi
	add	%esi, %ebp
	mov	%ecx, %esi
	rol	$30, %ebx
	xor	28 (%esp), %edi
	xor	%ebx, %esi
	rol	$1, %edi
	xor	%eax, %esi
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%edi, 40 (%esp)
	mov	%ebp, %edi
	rol	$5, %edi
	add	%edi, %edx
	mov	44 (%esp), %edi
	xor	52 (%esp), %edi
	rol	$30, %eax
	xor	12 (%esp), %edi
	add	%esi, %edx
	xor	32 (%esp), %edi
	mov	%ebx, %esi
	xor	%eax, %esi
	rol	$1, %edi
	mov	%edi, 44 (%esp)
	xor	%ebp, %esi
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%edx, %edi
	rol	$5, %edi
	add	%edi, %ecx
	mov	48 (%esp), %edi
	xor	56 (%esp), %edi
	rol	$30, %ebp
	add	%esi, %ecx
	xor	16 (%esp), %edi
	mov	%eax, %esi
	xor	36 (%esp), %edi
	xor	%ebp, %esi
	rol	$1, %edi
	xor	%edx, %esi
	mov	%edi, 48 (%esp)
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%ecx, %edi
	rol	$5, %edi
	add	%edi, %ebx
	rol	$30, %edx
	mov	52 (%esp), %edi
	xor	60 (%esp), %edi
	add	%esi, %ebx
	mov	%ebp, %esi
	xor	20 (%esp), %edi
	xor	%edx, %esi
	xor	40 (%esp), %edi
	xor	%ecx, %esi
	rol	$1, %edi
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%edi, 52 (%esp)
	mov	%ebx, %edi
	rol	$5, %edi
	add	%edi, %eax
	add	%esi, %eax
	mov	%edx, %esi
	mov	56 (%esp), %edi
	xor	 (%esp), %edi
	rol	$30, %ecx
	xor	24 (%esp), %edi
	xor	44 (%esp), %edi
	xor	%ecx, %esi
	xor	%ebx, %esi
	rol	$1, %edi
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%edi, 56 (%esp)
	mov	%eax, %edi
	rol	$5, %edi
	add	%edi, %ebp
	mov	60 (%esp), %edi
	xor	4 (%esp), %edi
	add	%esi, %ebp
	mov	%ecx, %esi
	rol	$30, %ebx
	xor	%ebx, %esi
	xor	28 (%esp), %edi
	xor	48 (%esp), %edi
	xor	%eax, %esi
	rol	$1, %edi
	mov	%edi, 60 (%esp)
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%ebp, %edi
	rol	$5, %edi
	add	%edi, %edx
	mov	 (%esp), %edi
	xor	8 (%esp), %edi
	xor	32 (%esp), %edi
	add	%esi, %edx
	mov	%ebx, %esi
	rol	$30, %eax
	xor	%eax, %esi
	xor	52 (%esp), %edi
	rol	$1, %edi
	xor	%ebp, %esi
	mov	%edi,  (%esp)
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%edx, %edi
	rol	$5, %edi
	add	%edi, %ecx
	mov	4 (%esp), %edi
	xor	12 (%esp), %edi
	add	%esi, %ecx
	mov	%eax, %esi
	rol	$30, %ebp
	xor	%ebp, %esi
	xor	36 (%esp), %edi
	xor	56 (%esp), %edi
	rol	$1, %edi
	xor	%edx, %esi
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%edi, 4 (%esp)
	mov	%ecx, %edi
	rol	$5, %edi
	add	%edi, %ebx
	mov	8 (%esp), %edi
	rol	$30, %edx
	xor	16 (%esp), %edi
	add	%esi, %ebx
	mov	%ebp, %esi
	xor	40 (%esp), %edi
	xor	60 (%esp), %edi
	xor	%edx, %esi
	xor	%ecx, %esi
	rol	$1, %edi
	mov	%edi, 8 (%esp)
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%ebx, %edi
	rol	$5, %edi
	add	%edi, %eax
	mov	12 (%esp), %edi
	xor	20 (%esp), %edi
	xor	44 (%esp), %edi
	xor	 (%esp), %edi
	add	%esi, %eax
	rol	$30, %ecx
	mov	%edx, %esi
	xor	%ecx, %esi
	rol	$1, %edi
	xor	%ebx, %esi
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%edi, 12 (%esp)
	mov	%eax, %edi
	rol	$5, %edi
	rol	$30, %ebx
	add	%edi, %ebp
	mov	16 (%esp), %edi
	add	%esi, %ebp
	xor	24 (%esp), %edi
	xor	48 (%esp), %edi
	xor	4 (%esp), %edi
	mov	%ecx, %esi
	xor	%ebx, %esi
	rol	$1, %edi
	xor	%eax, %esi
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%edi, 16 (%esp)
	mov	%ebp, %edi
	rol	$5, %edi
	add	%edi, %edx
	add	%esi, %edx
	mov	20 (%esp), %edi
	mov	%ebx, %esi
	rol	$30, %eax
	xor	%eax, %esi
	xor	%ebp, %esi
	xor	28 (%esp), %edi
	xor	52 (%esp), %edi
	xor	8 (%esp), %edi
	rol	$1, %edi
	mov	%edi, 20 (%esp)
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%edx, %edi
	rol	$5, %edi
	add	%edi, %ecx
	mov	24 (%esp), %edi
	xor	32 (%esp), %edi
	add	%esi, %ecx
	xor	56 (%esp), %edi
	xor	12 (%esp), %edi
	rol	$1, %edi
	mov	%edi, 24 (%esp)
	mov	%eax, %esi
	rol	$30, %ebp
	xor	%ebp, %esi
	xor	%edx, %esi
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%ecx, %edi
	rol	$5, %edi
	add	%edi, %ebx
	add	%esi, %ebx
	mov	28 (%esp), %edi
	mov	%ebp, %esi
	rol	$30, %edx
	xor	36 (%esp), %edi
	xor	%edx, %esi
	xor	%ecx, %esi
	xor	60 (%esp), %edi
	xor	16 (%esp), %edi
	rol	$1, %edi
	mov	%edi, 28 (%esp)
	lea	0x6ED9EBA1 (%edi, %esi), %esi
	mov	%ebx, %edi
	rol	$5, %edi
	add	%edi, %eax
	mov	32 (%esp), %edi
	xor	40 (%esp), %edi
	rol	$30, %ecx
	xor	 (%esp), %edi
	add	%esi, %eax
	mov	%edx, %esi
	xor	20 (%esp), %edi
	rol	$1, %edi
	and	%ecx, %esi
	mov	%edi, 32 (%esp)
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %ebp
	mov	%eax, %edi
	mov	%edx, %esi
	xor	%ecx, %esi
	and	%ebx, %esi
	rol	$30, %ebx
	rol	$5, %edi
	add	%edi, %ebp
	mov	36 (%esp), %edi
	xor	44 (%esp), %edi
	xor	4 (%esp), %edi
	add	%esi, %ebp
	mov	%ecx, %esi
	xor	24 (%esp), %edi
	rol	$1, %edi
	and	%ebx, %esi
	mov	%edi, 36 (%esp)
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %edx
	mov	%ecx, %esi
	xor	%ebx, %esi
	mov	%ebp, %edi
	rol	$5, %edi
	add	%edi, %edx
	mov	40 (%esp), %edi
	and	%eax, %esi
	add	%esi, %edx
	xor	48 (%esp), %edi
	xor	8 (%esp), %edi
	rol	$30, %eax
	mov	%ebx, %esi
	and	%eax, %esi
	xor	28 (%esp), %edi
	rol	$1, %edi
	mov	%edi, 40 (%esp)
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %ecx
	mov	%edx, %edi
	rol	$5, %edi
	mov	%ebx, %esi
	add	%edi, %ecx
	mov	44 (%esp), %edi
	xor	%eax, %esi
	xor	52 (%esp), %edi
	xor	12 (%esp), %edi
	and	%ebp, %esi
	xor	32 (%esp), %edi
	add	%esi, %ecx
	rol	$1, %edi
	mov	%eax, %esi
	mov	%edi, 44 (%esp)
	rol	$30, %ebp
	and	%ebp, %esi
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %ebx
	mov	%eax, %esi
	mov	%ecx, %edi
	xor	%ebp, %esi
	rol	$5, %edi
	add	%edi, %ebx
	mov	48 (%esp), %edi
	xor	56 (%esp), %edi
	xor	16 (%esp), %edi
	xor	36 (%esp), %edi
	and	%edx, %esi
	rol	$30, %edx
	add	%esi, %ebx
	rol	$1, %edi
	mov	%edi, 48 (%esp)
	mov	%ebp, %esi
	and	%edx, %esi
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %eax
	mov	%ebx, %edi
	rol	$5, %edi
	add	%edi, %eax
	mov	52 (%esp), %edi
	xor	60 (%esp), %edi
	mov	%ebp, %esi
	xor	20 (%esp), %edi
	xor	%edx, %esi
	and	%ecx, %esi
	xor	40 (%esp), %edi
	add	%esi, %eax
	rol	$1, %edi
	rol	$30, %ecx
	mov	%edi, 52 (%esp)
	mov	%edx, %esi
	and	%ecx, %esi
	lea	0x8F1BBCDC (%edi, %esi), %edi
	mov	%edx, %esi
	add	%edi, %ebp
	mov	%eax, %edi
	rol	$5, %edi
	add	%edi, %ebp
	mov	56 (%esp), %edi
	xor	 (%esp), %edi
	xor	%ecx, %esi
	and	%ebx, %esi
	xor	24 (%esp), %edi
	rol	$30, %ebx
	xor	44 (%esp), %edi
	rol	$1, %edi
	add	%esi, %ebp
	mov	%ecx, %esi
	mov	%edi, 56 (%esp)
	and	%ebx, %esi
	lea	0x8F1BBCDC (%edi, %esi), %edi
	mov	%ecx, %esi
	add	%edi, %edx
	mov	%ebp, %edi
	xor	%ebx, %esi
	rol	$5, %edi
	add	%edi, %edx
	mov	60 (%esp), %edi
	xor	4 (%esp), %edi
	and	%eax, %esi
	xor	28 (%esp), %edi
	xor	48 (%esp), %edi
	add	%esi, %edx
	rol	$30, %eax
	mov	%ebx, %esi
	rol	$1, %edi
	mov	%edi, 60 (%esp)
	and	%eax, %esi
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %ecx
	mov	%edx, %edi
	mov	%ebx, %esi
	rol	$5, %edi
	add	%edi, %ecx
	mov	 (%esp), %edi
	xor	%eax, %esi
	xor	8 (%esp), %edi
	xor	32 (%esp), %edi
	xor	52 (%esp), %edi
	and	%ebp, %esi
	add	%esi, %ecx
	rol	$30, %ebp
	rol	$1, %edi
	mov	%edi,  (%esp)
	mov	%eax, %esi
	and	%ebp, %esi
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %ebx
	mov	%ecx, %edi
	mov	%eax, %esi
	xor	%ebp, %esi
	rol	$5, %edi
	add	%edi, %ebx
	mov	4 (%esp), %edi
	xor	12 (%esp), %edi
	xor	36 (%esp), %edi
	and	%edx, %esi
	xor	56 (%esp), %edi
	add	%esi, %ebx
	rol	$30, %edx
	mov	%ebp, %esi
	rol	$1, %edi
	and	%edx, %esi
	mov	%edi, 4 (%esp)
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %eax
	mov	%ebx, %edi
	rol	$5, %edi
	add	%edi, %eax
	mov	%ebp, %esi
	mov	8 (%esp), %edi
	xor	%edx, %esi
	xor	16 (%esp), %edi
	xor	40 (%esp), %edi
	and	%ecx, %esi
	add	%esi, %eax
	xor	60 (%esp), %edi
	rol	$30, %ecx
	mov	%edx, %esi
	rol	$1, %edi
	mov	%edi, 8 (%esp)
	and	%ecx, %esi
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %ebp
	mov	%eax, %edi
	rol	$5, %edi
	add	%edi, %ebp
	mov	12 (%esp), %edi
	xor	20 (%esp), %edi
	xor	44 (%esp), %edi
	xor	 (%esp), %edi
	mov	%edx, %esi
	rol	$1, %edi
	xor	%ecx, %esi
	and	%ebx, %esi
	mov	%edi, 12 (%esp)
	rol	$30, %ebx
	add	%esi, %ebp
	mov	%ecx, %esi
	and	%ebx, %esi
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %edx
	mov	%ebp, %edi
	mov	%ecx, %esi
	rol	$5, %edi
	add	%edi, %edx
	mov	16 (%esp), %edi
	xor	24 (%esp), %edi
	xor	%ebx, %esi
	and	%eax, %esi
	add	%esi, %edx
	mov	%ebx, %esi
	xor	48 (%esp), %edi
	rol	$30, %eax
	and	%eax, %esi
	xor	4 (%esp), %edi
	rol	$1, %edi
	mov	%edi, 16 (%esp)
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %ecx
	mov	%edx, %edi
	rol	$5, %edi
	add	%edi, %ecx
	mov	20 (%esp), %edi
	xor	28 (%esp), %edi
	mov	%ebx, %esi
	xor	52 (%esp), %edi
	xor	%eax, %esi
	xor	8 (%esp), %edi
	and	%ebp, %esi
	rol	$30, %ebp
	add	%esi, %ecx
	rol	$1, %edi
	mov	%eax, %esi
	mov	%edi, 20 (%esp)
	and	%ebp, %esi
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %ebx
	mov	%eax, %esi
	mov	%ecx, %edi
	rol	$5, %edi
	add	%edi, %ebx
	xor	%ebp, %esi
	and	%edx, %esi
	mov	24 (%esp), %edi
	xor	32 (%esp), %edi
	xor	56 (%esp), %edi
	xor	12 (%esp), %edi
	rol	$1, %edi
	add	%esi, %ebx
	rol	$30, %edx
	mov	%ebp, %esi
	and	%edx, %esi
	mov	%edi, 24 (%esp)
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %eax
	mov	%ebx, %edi
	rol	$5, %edi
	add	%edi, %eax
	mov	28 (%esp), %edi
	xor	36 (%esp), %edi
	mov	%ebp, %esi
	xor	%edx, %esi
	xor	60 (%esp), %edi
	and	%ecx, %esi
	rol	$30, %ecx
	add	%esi, %eax
	mov	%edx, %esi
	xor	16 (%esp), %edi
	rol	$1, %edi
	and	%ecx, %esi
	mov	%edi, 28 (%esp)
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %ebp
	mov	%eax, %edi
	rol	$5, %edi
	mov	%edx, %esi
	add	%edi, %ebp
	mov	32 (%esp), %edi
	xor	40 (%esp), %edi
	xor	%ecx, %esi
	xor	 (%esp), %edi
	and	%ebx, %esi
	add	%esi, %ebp
	xor	20 (%esp), %edi
	rol	$30, %ebx
	mov	%ecx, %esi
	and	%ebx, %esi
	rol	$1, %edi
	mov	%edi, 32 (%esp)
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %edx
	mov	%ebp, %edi
	rol	$5, %edi
	mov	%ecx, %esi
	xor	%ebx, %esi
	add	%edi, %edx
	and	%eax, %esi
	mov	36 (%esp), %edi
	rol	$30, %eax
	xor	44 (%esp), %edi
	xor	4 (%esp), %edi
	add	%esi, %edx
	mov	%ebx, %esi
	and	%eax, %esi
	xor	24 (%esp), %edi
	rol	$1, %edi
	mov	%edi, 36 (%esp)
	lea	0x8F1BBCDC (%edi, %esi), %edi
	add	%edi, %ecx
	mov	%edx, %edi
	rol	$5, %edi
	mov	%ebx, %esi
	xor	%eax, %esi
	and	%ebp, %esi
	add	%edi, %ecx
	mov	40 (%esp), %edi
	xor	48 (%esp), %edi
	xor	8 (%esp), %edi
	add	%esi, %ecx
	mov	%eax, %esi
	rol	$30, %ebp
	xor	28 (%esp), %edi
	rol	$1, %edi
	and	%ebp, %esi
	mov	%edi, 40 (%esp)
	lea	0x8F1BBCDC (%edi, %esi), %edi
	mov	%eax, %esi
	xor	%ebp, %esi
	add	%edi, %ebx
	mov	%ecx, %edi
	rol	$5, %edi
	add	%edi, %ebx
	mov	44 (%esp), %edi
	xor	52 (%esp), %edi
	xor	12 (%esp), %edi
	xor	32 (%esp), %edi
	and	%edx, %esi
	add	%esi, %ebx
	mov	%ebp, %esi
	rol	$1, %edi
	mov	%edi, 44 (%esp)
	rol	$30, %edx
	and	%edx, %esi
	lea	0x8F1BBCDC (%edi, %esi), %edi
	mov	%ebp, %esi
	add	%edi, %eax
	xor	%edx, %esi
	mov	%ebx, %edi
	and	%ecx, %esi
	rol	$30, %ecx
	rol	$5, %edi
	add	%edi, %eax
	mov	48 (%esp), %edi
	xor	56 (%esp), %edi
	add	%esi, %eax
	mov	%edx, %esi
	xor	16 (%esp), %edi
	xor	36 (%esp), %edi
	rol	$1, %edi
	mov	%edi, 48 (%esp)
	xor	%ecx, %esi
	xor	%ebx, %esi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%eax, %edi
	rol	$5, %edi
	add	%edi, %ebp
	mov	52 (%esp), %edi
	xor	60 (%esp), %edi
	add	%esi, %ebp
	rol	$30, %ebx
	mov	%ecx, %esi
	xor	20 (%esp), %edi
	xor	%ebx, %esi
	xor	40 (%esp), %edi
	rol	$1, %edi
	mov	%edi, 52 (%esp)
	xor	%eax, %esi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%ebp, %edi
	rol	$5, %edi
	add	%edi, %edx
	mov	56 (%esp), %edi
	xor	 (%esp), %edi
	rol	$30, %eax
	add	%esi, %edx
	mov	%ebx, %esi
	xor	%eax, %esi
	xor	%ebp, %esi
	xor	24 (%esp), %edi
	xor	44 (%esp), %edi
	rol	$1, %edi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%edi, 56 (%esp)
	mov	%edx, %edi
	rol	$5, %edi
	add	%edi, %ecx
	add	%esi, %ecx
	mov	60 (%esp), %edi
	mov	%eax, %esi
	rol	$30, %ebp
	xor	4 (%esp), %edi
	xor	28 (%esp), %edi
	xor	%ebp, %esi
	xor	%edx, %esi
	xor	48 (%esp), %edi
	rol	$1, %edi
	mov	%edi, 60 (%esp)
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%ecx, %edi
	rol	$5, %edi
	add	%edi, %ebx
	mov	 (%esp), %edi
	add	%esi, %ebx
	xor	8 (%esp), %edi
	mov	%ebp, %esi
	rol	$30, %edx
	xor	32 (%esp), %edi
	xor	%edx, %esi
	xor	52 (%esp), %edi
	xor	%ecx, %esi
	rol	$1, %edi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%edi,  (%esp)
	mov	%ebx, %edi
	rol	$5, %edi
	add	%edi, %eax
	mov	4 (%esp), %edi
	rol	$30, %ecx
	xor	12 (%esp), %edi
	xor	36 (%esp), %edi
	xor	56 (%esp), %edi
	add	%esi, %eax
	mov	%edx, %esi
	xor	%ecx, %esi
	rol	$1, %edi
	xor	%ebx, %esi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%edi, 4 (%esp)
	mov	%eax, %edi
	rol	$5, %edi
	add	%edi, %ebp
	mov	8 (%esp), %edi
	rol	$30, %ebx
	xor	16 (%esp), %edi
	add	%esi, %ebp
	mov	%ecx, %esi
	xor	%ebx, %esi
	xor	40 (%esp), %edi
	xor	60 (%esp), %edi
	xor	%eax, %esi
	rol	$1, %edi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%edi, 8 (%esp)
	mov	%ebp, %edi
	rol	$5, %edi
	add	%edi, %edx
	mov	12 (%esp), %edi
	xor	20 (%esp), %edi
	xor	44 (%esp), %edi
	xor	 (%esp), %edi
	rol	$30, %eax
	add	%esi, %edx
	mov	%ebx, %esi
	rol	$1, %edi
	mov	%edi, 12 (%esp)
	xor	%eax, %esi
	xor	%ebp, %esi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%edx, %edi
	rol	$5, %edi
	add	%edi, %ecx
	mov	16 (%esp), %edi
	add	%esi, %ecx
	rol	$30, %ebp
	xor	24 (%esp), %edi
	mov	%eax, %esi
	xor	48 (%esp), %edi
	xor	%ebp, %esi
	xor	4 (%esp), %edi
	rol	$1, %edi
	xor	%edx, %esi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%edi, 16 (%esp)
	mov	%ecx, %edi
	rol	$5, %edi
	add	%edi, %ebx
	rol	$30, %edx
	mov	20 (%esp), %edi
	add	%esi, %ebx
	xor	28 (%esp), %edi
	xor	52 (%esp), %edi
	mov	%ebp, %esi
	xor	%edx, %esi
	xor	8 (%esp), %edi
	xor	%ecx, %esi
	rol	$1, %edi
	mov	%edi, 20 (%esp)
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%ebx, %edi
	rol	$5, %edi
	add	%edi, %eax
	mov	24 (%esp), %edi
	xor	32 (%esp), %edi
	xor	56 (%esp), %edi
	add	%esi, %eax
	xor	12 (%esp), %edi
	mov	%edx, %esi
	rol	$30, %ecx
	rol	$1, %edi
	xor	%ecx, %esi
	mov	%edi, 24 (%esp)
	xor	%ebx, %esi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%eax, %edi
	rol	$5, %edi
	add	%edi, %ebp
	add	%esi, %ebp
	mov	28 (%esp), %edi
	xor	36 (%esp), %edi
	xor	60 (%esp), %edi
	rol	$30, %ebx
	xor	16 (%esp), %edi
	mov	%ecx, %esi
	rol	$1, %edi
	mov	%edi, 28 (%esp)
	xor	%ebx, %esi
	xor	%eax, %esi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%ebp, %edi
	rol	$5, %edi
	add	%edi, %edx
	rol	$30, %eax
	mov	32 (%esp), %edi
	xor	40 (%esp), %edi
	add	%esi, %edx
	xor	 (%esp), %edi
	xor	20 (%esp), %edi
	rol	$1, %edi
	mov	%ebx, %esi
	mov	%edi, 32 (%esp)
	xor	%eax, %esi
	xor	%ebp, %esi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%edx, %edi
	rol	$5, %edi
	add	%edi, %ecx
	add	%esi, %ecx
	mov	%eax, %esi
	mov	36 (%esp), %edi
	rol	$30, %ebp
	xor	44 (%esp), %edi
	xor	4 (%esp), %edi
	xor	24 (%esp), %edi
	xor	%ebp, %esi
	xor	%edx, %esi
	rol	$1, %edi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%edi, 36 (%esp)
	mov	%ecx, %edi
	rol	$5, %edi
	add	%edi, %ebx
	rol	$30, %edx
	mov	40 (%esp), %edi
	xor	48 (%esp), %edi
	xor	8 (%esp), %edi
	add	%esi, %ebx
	mov	%ebp, %esi
	xor	%edx, %esi
	xor	%ecx, %esi
	xor	28 (%esp), %edi
	rol	$1, %edi
	mov	%edi, 40 (%esp)
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%ebx, %edi
	rol	$5, %edi
	add	%edi, %eax
	mov	44 (%esp), %edi
	xor	52 (%esp), %edi
	xor	12 (%esp), %edi
	add	%esi, %eax
	mov	%edx, %esi
	rol	$30, %ecx
	xor	%ecx, %esi
	xor	32 (%esp), %edi
	rol	$1, %edi
	xor	%ebx, %esi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%edi, 44 (%esp)
	mov	%eax, %edi
	rol	$5, %edi
	add	%edi, %ebp
	mov	48 (%esp), %edi
	add	%esi, %ebp
	xor	56 (%esp), %edi
	rol	$30, %ebx
	mov	%ecx, %esi
	xor	16 (%esp), %edi
	xor	%ebx, %esi
	xor	%eax, %esi
	xor	36 (%esp), %edi
	rol	$1, %edi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%edi, 48 (%esp)
	mov	%ebp, %edi
	rol	$5, %edi
	add	%edi, %edx
	add	%esi, %edx
	rol	$30, %eax
	mov	52 (%esp), %edi
	xor	60 (%esp), %edi
	mov	%ebx, %esi
	xor	20 (%esp), %edi
	xor	%eax, %esi
	xor	40 (%esp), %edi
	xor	%ebp, %esi
	rol	$1, %edi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%edi, 52 (%esp)
	mov	%edx, %edi
	rol	$5, %edi
	add	%edi, %ecx
	mov	56 (%esp), %edi
	xor	 (%esp), %edi
	xor	24 (%esp), %edi
	add	%esi, %ecx
	rol	$30, %ebp
	mov	%eax, %esi
	xor	%ebp, %esi
	xor	44 (%esp), %edi
	xor	%edx, %esi
	rol	$1, %edi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	mov	%edi, 56 (%esp)
	mov	%ecx, %edi
	rol	$5, %edi
	add	%edi, %ebx
	mov	60 (%esp), %edi
	xor	4 (%esp), %edi
	xor	28 (%esp), %edi
	rol	$30, %edx
	add	%esi, %ebx
	xor	48 (%esp), %edi
	mov	%ebp, %esi
	xor	%edx, %esi
	rol	$1, %edi
	xor	%ecx, %esi
	lea	0xCA62C1D6 (%edi, %esi), %esi
	rol	$30, %ecx
	mov	%edi, 60 (%esp)
	mov	%ebx, %edi
	rol	$5, %edi
	add	%edi, %eax
	add	%esi, %eax
	movl	84(%esp),%edi
	addl	%eax, (%edi)
	addl	%ebx, 4(%edi)
	addl	%ecx, 8(%edi)
	addl	%edx, 12(%edi)
	addl	%ebp, 16(%edi)
	addl	$64, %esp
	popl	%edi
	popl	%esi
	popl	%ebp
	popl	%ebx
	ret
