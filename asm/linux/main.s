	.file	"main.cpp"
	.text
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.section	.text.startup,"ax",@progbits
.LHOTB3:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB8162:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8162
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$480, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$16, %r9d
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$1080, %r8d
	movl	$1920, %ecx
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB1:
	call	_ZN3wze6engineC1EPKcS2_tth@PLT
.LEHE1:
	pxor	%xmm1, %xmm1
	movsd	.LC0(%rip), %xmm2
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	272(%rbp), %rdi
	movl	$50, %r8d
	movl	$50, %ecx
	movapd	%xmm1, %xmm0
	leaq	192(%rbp), %rbx
	leaq	416(%rbp), %r13
.LEHB2:
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	leaq	8(%rax), %rdi
	movq	%rax, %r12
	call	_ZN3wze6engine6actors5actor10colorboxes3NewEv@PLT
	.p2align 4,,10
	.p2align 3
.L2:
	movq	%rbp, %rdi
	call	_ZN3wze6engine6UpdateEv@PLT
	testb	%al, %al
	je	.L31
.L21:
	movl	$80, %esi
	movq	%rbx, %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L3
	movl	$79, %esi
	movq	%rbx, %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L32
.L3:
	movl	$79, %esi
	movq	%rbx, %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L33
.L6:
	movl	$82, %esi
	movq	%rbx, %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L14
	movl	$81, %esi
	movq	%rbx, %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L34
.L14:
	movl	$81, %esi
	movq	%rbx, %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L2
	movl	$82, %esi
	movq	%rbx, %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L2
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	leaq	416(%rbp), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movsd	8(%rsp), %xmm0
	movq	%r12, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC2(%rip), %xmm1
	subsd	%xmm1, %xmm0
	call	_ZN3wze6engine6actors5actor4SetYEd@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6UpdateEv@PLT
	testb	%al, %al
	jne	.L21
.L31:
	movq	%rbp, %rdi
	call	_ZN3wze6engineD1Ev@PLT
	movq	%rbp, %rdi
	movl	$480, %esi
	call	_ZdlPvm@PLT
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_restore_state
	movl	$80, %esi
	movq	%rbx, %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L6
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	leaq	416(%rbp), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movq	%r12, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC2(%rip), %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor4SetXEd@PLT
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L34:
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	%r13, %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movq	%r12, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC2(%rip), %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor4SetYEd@PLT
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L32:
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	%r13, %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movsd	8(%rsp), %xmm0
	movq	%r12, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC2(%rip), %xmm1
	subsd	%xmm1, %xmm0
	call	_ZN3wze6engine6actors5actor4SetXEd@PLT
.LEHE2:
	jmp	.L6
.L23:
	movq	%rax, %rbx
	jmp	.L22
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8162-.LLSDACSB8162
.LLSDACSB8162:
	.uleb128 .LEHB0-.LFB8162
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8162
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L23-.LFB8162
	.uleb128 0
	.uleb128 .LEHB2-.LFB8162
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE8162:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8162
	.type	main.cold, @function
main.cold:
.LFSB8162:
.L22:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%rbp, %rdi
	movl	$480, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
	.cfi_endproc
.LFE8162:
	.section	.gcc_except_table
.LLSDAC8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8162-.LLSDACSBC8162
.LLSDACSBC8162:
	.uleb128 .LEHB3-.LCOLDB3
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8162:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE3:
	.section	.text.startup
.LHOTE3:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1071644672
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
