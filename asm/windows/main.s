	.file	"main.cpp"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6895:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$112, %rsp
	.seh_stackalloc	112
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	.seh_endprologue
	call	__main
	movl	$480, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movl	$1920, %r9d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$16, 40(%rsp)
	movq	%rax, %rcx
	movq	%rax, %rsi
	movl	$1080, 32(%rsp)
.LEHB1:
	call	_ZN3wze6engineC1EPKcS2_tth
.LEHE1:
	movq	.LC0(%rip), %rax
	leaq	272(%rsi), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$50, 48(%rsp)
	pxor	%xmm3, %xmm3
	leaq	192(%rsi), %rbx
	movl	$50, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	movq	%rax, 56(%rsp)
.LEHB2:
	call	_ZN3wze6engine6actors3NewEPvyddttd
	leaq	8(%rax), %rcx
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor10colorboxes3NewEv
	movsd	.LC2(%rip), %xmm7
	.p2align 4,,10
	.p2align 3
.L2:
	movq	%rsi, %rcx
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	je	.L30
.L21:
	movl	$80, %edx
	movq	%rbx, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	je	.L3
	movl	$79, %edx
	movq	%rbx, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	je	.L31
.L3:
	movl	$79, %edx
	movq	%rbx, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L32
.L6:
	movl	$82, %edx
	movq	%rbx, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	je	.L14
	movl	$81, %edx
	movq	%rbx, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	je	.L33
.L14:
	movl	$81, %edx
	movq	%rbx, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	je	.L2
	movl	$82, %edx
	movq	%rbx, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L2
	movq	%rdi, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	leaq	416(%rsi), %rcx
	movsd	%xmm0, 72(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm2, %xmm2
	movsd	72(%rsp), %xmm1
	movq	%rdi, %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	.LC2(%rip), %xmm2
	subsd	%xmm2, %xmm1
	call	_ZN3wze6engine6actors5actor4SetYEd
	movq	%rsi, %rcx
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	jne	.L21
.L30:
	movq	%rsi, %rcx
	call	_ZN3wze6engineD1Ev
	movl	$480, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	nop
	movaps	80(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	96(%rsp), %xmm7
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	movl	$80, %edx
	movq	%rbx, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L6
	movq	%rdi, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	leaq	416(%rsi), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movq	%rdi, %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC2(%rip), %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor4SetXEd
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L33:
	movq	%rdi, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	leaq	416(%rsi), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movq	%rdi, %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm7, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor4SetYEd
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L31:
	movq	%rdi, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	leaq	416(%rsi), %rcx
	movsd	%xmm0, 72(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm2, %xmm2
	movsd	72(%rsp), %xmm1
	movq	%rdi, %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm7, %xmm2
	subsd	%xmm2, %xmm1
	call	_ZN3wze6engine6actors5actor4SetXEd
	jmp	.L6
.L23:
	movq	%rax, %rbx
	movq	%rsi, %rcx
	movl	$480, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE2:
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6895:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6895-.LLSDACSB6895
.LLSDACSB6895:
	.uleb128 .LEHB0-.LFB6895
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6895
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L23-.LFB6895
	.uleb128 0
	.uleb128 .LEHB2-.LFB6895
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE6895:
	.section	.text.startup,"x"
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1071644672
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-Builds project) 13.2.0"
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engineC1EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor10colorboxes3NewEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysixENS_3keyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetDeltaTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engineD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
