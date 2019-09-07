	.file "cpuid.asm"
	.text
	.align 16
.globl _nettle_cpuid
.def _nettle_cpuid
.scl 2
.type 32
.endef
_nettle_cpuid:
        push	%rdi
      mov	%rcx, %rdi
            push	%rsi
      mov	%rdx, %rsi
	push	%rbx
	movl	%edi, %eax
	xorl	%ecx, %ecx
	cpuid
	mov	%eax, (%rsi)
	mov	%ebx, 4(%rsi)
	mov	%ecx, 8(%rsi)
	mov	%edx, 12(%rsi)
	pop	%rbx
      pop	%rsi
    pop	%rdi
	ret
