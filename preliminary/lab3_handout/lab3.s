	.file	"lab3.c"
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"You are taking this class: %d %d \n"
	.text
	.p2align 4
	.globl	fibonacci
	.type	fibonacci, @function
fibonacci:
.LVL0:
.LFB13:
	.file 1 "lab3.c"
	.loc 1 9 1 view -0
	.cfi_startproc
	.loc 1 9 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
.LBB8:
.LBB9:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 107 10 view .LVU2
	leaq	.LC0(%rip), %r12
.LBE9:
.LBE8:
	.loc 1 9 1 view .LVU3
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 9 1 view .LVU4
	movl	%edi, %ebx
.LVL1:
.L3:
	.loc 1 10 5 is_stmt 1 view .LVU5
	.loc 1 11 5 view .LVU6
	.loc 1 12 5 view .LVU7
	.loc 1 14 5 view .LVU8
	xorl	%eax, %eax
	call	helper_func@PLT
.LVL2:
.LBB12:
.LBB10:
	.loc 2 107 10 is_stmt 0 view .LVU9
	movl	%ebx, %ecx
	movq	%r12, %rsi
	movl	$1, %edi
.LBE10:
.LBE12:
	.loc 1 14 5 view .LVU10
	movl	%eax, %edx
.LVL3:
.LBB13:
.LBI8:
	.loc 2 105 1 is_stmt 1 view .LVU11
.LBB11:
	.loc 2 107 3 view .LVU12
	.loc 2 107 10 is_stmt 0 view .LVU13
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL4:
	.loc 2 107 10 view .LVU14
.LBE11:
.LBE13:
	.loc 1 16 5 is_stmt 1 view .LVU15
	.loc 1 16 8 is_stmt 0 view .LVU16
	cmpl	$1, %ebx
	jle	.L7
	.loc 1 18 5 is_stmt 1 view .LVU17
	.loc 1 18 12 is_stmt 0 view .LVU18
	leal	-1(%rbx), %edi
	.loc 1 18 31 view .LVU19
	subl	$2, %ebx
.LVL5:
	.loc 1 18 12 view .LVU20
	call	fibonacci
.LVL6:
	addl	%eax, %ebp
	.loc 1 18 29 view .LVU21
	jmp	.L3
.LVL7:
	.p2align 4,,10
	.p2align 3
.L7:
	.loc 1 17 9 is_stmt 1 view .LVU22
	leal	(%rbx,%rbp), %eax
	.loc 1 19 1 is_stmt 0 view .LVU23
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL8:
	.loc 1 19 1 view .LVU24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	fibonacci, .-fibonacci
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"fib(%d) = %d\n"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"clocks ticks: %f \nTime in seconds taken by CPU: %f \n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB14:
	.loc 1 22 1 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	.loc 1 23 5 view .LVU26
	.loc 1 22 1 is_stmt 0 view .LVU27
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 23 21 view .LVU28
	call	clock@PLT
.LVL9:
	.loc 1 25 22 view .LVU29
	movl	$25, %edi
	.loc 1 23 21 view .LVU30
	movq	%rax, %rbx
.LVL10:
	.loc 1 24 5 is_stmt 1 view .LVU31
	.loc 1 25 5 view .LVU32
	.loc 1 25 22 is_stmt 0 view .LVU33
	call	fibonacci
.LVL11:
.LBB14:
.LBB15:
	.loc 2 107 10 view .LVU34
	movl	$25, %edx
	movl	$1, %edi
	leaq	.LC1(%rip), %rsi
.LBE15:
.LBE14:
	.loc 1 25 22 view .LVU35
	movl	%eax, %ecx
.LVL12:
	.loc 1 26 5 is_stmt 1 view .LVU36
.LBB17:
.LBI14:
	.loc 2 105 1 view .LVU37
.LBB16:
	.loc 2 107 3 view .LVU38
	.loc 2 107 10 is_stmt 0 view .LVU39
	xorl	%eax, %eax
.LVL13:
	.loc 2 107 10 view .LVU40
	call	__printf_chk@PLT
.LVL14:
	.loc 2 107 10 view .LVU41
.LBE16:
.LBE17:
	.loc 1 27 5 is_stmt 1 view .LVU42
	.loc 1 29 5 view .LVU43
	.loc 1 29 13 is_stmt 0 view .LVU44
	call	clock@PLT
.LVL15:
	.loc 1 30 5 is_stmt 1 view .LVU45
	.loc 1 30 33 is_stmt 0 view .LVU46
	pxor	%xmm0, %xmm0
.LBB18:
.LBB19:
	.loc 2 107 10 view .LVU47
	movl	$1, %edi
	leaq	.LC3(%rip), %rsi
.LBE19:
.LBE18:
	.loc 1 29 11 view .LVU48
	subq	%rbx, %rax
.LVL16:
	.loc 1 30 33 view .LVU49
	cvtsi2sdq	%rax, %xmm0
.LVL17:
	.loc 1 32 5 is_stmt 1 view .LVU50
.LBB21:
.LBI18:
	.loc 2 105 1 view .LVU51
.LBB20:
	.loc 2 107 3 view .LVU52
	.loc 2 107 10 is_stmt 0 view .LVU53
	movl	$2, %eax
.LVL18:
	.loc 2 107 10 view .LVU54
	movapd	%xmm0, %xmm1
	divsd	.LC2(%rip), %xmm1
.LVL19:
	.loc 2 107 10 view .LVU55
	call	__printf_chk@PLT
.LVL20:
	.loc 2 107 10 view .LVU56
.LBE20:
.LBE21:
	.loc 1 33 5 is_stmt 1 view .LVU57
	.loc 1 34 1 is_stmt 0 view .LVU58
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1093567616
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h"
	.file 9 "/usr/include/time.h"
	.file 10 "lab3_helper.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x530
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF61
	.byte	0xc
	.long	.LASF62
	.long	.LASF63
	.long	.Ldebug_ranges0+0xa0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x3
	.byte	0xd1
	.byte	0x17
	.long	0x3c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF9
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x6f
	.uleb128 0x3
	.long	.LASF10
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x6f
	.uleb128 0x3
	.long	.LASF11
	.byte	0x4
	.byte	0x9c
	.byte	0x1b
	.long	0x6f
	.uleb128 0x6
	.byte	0x8
	.long	0xa0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	0xa0
	.uleb128 0x8
	.long	.LASF64
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x233
	.uleb128 0x9
	.long	.LASF13
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x68
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x9a
	.byte	0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x9a
	.byte	0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x9a
	.byte	0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x9a
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x9a
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x9a
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x9a
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x9a
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x9a
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x9a
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x9a
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x24c
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x252
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x68
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x68
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x76
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x53
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x5a
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x258
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x268
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x82
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x273
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x27e
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x252
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x4a
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x30
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x68
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x284
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xac
	.uleb128 0xa
	.long	.LASF65
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF43
	.uleb128 0x6
	.byte	0x8
	.long	0x247
	.uleb128 0x6
	.byte	0x8
	.long	0xac
	.uleb128 0xc
	.long	0xa0
	.long	0x268
	.uleb128 0xd
	.long	0x3c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23f
	.uleb128 0xb
	.long	.LASF44
	.uleb128 0x6
	.byte	0x8
	.long	0x26e
	.uleb128 0xb
	.long	.LASF45
	.uleb128 0x6
	.byte	0x8
	.long	0x279
	.uleb128 0xc
	.long	0xa0
	.long	0x294
	.uleb128 0xd
	.long	0x3c
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF46
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2a0
	.uleb128 0x6
	.byte	0x8
	.long	0x233
	.uleb128 0xe
	.long	.LASF47
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2a0
	.uleb128 0xe
	.long	.LASF48
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2a0
	.uleb128 0x3
	.long	.LASF49
	.byte	0x8
	.byte	0x7
	.byte	0x13
	.long	0x8e
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xf
	.long	0x2ca
	.uleb128 0xc
	.long	0x9a
	.long	0x2e5
	.uleb128 0xd
	.long	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF50
	.byte	0x9
	.byte	0x9f
	.byte	0xe
	.long	0x2d5
	.uleb128 0xe
	.long	.LASF51
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x68
	.uleb128 0xe
	.long	.LASF52
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.long	0x6f
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.byte	0x15
	.byte	0x5
	.long	0x68
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x440
	.uleb128 0x11
	.long	.LASF53
	.byte	0x1
	.byte	0x17
	.byte	0xd
	.long	0x2be
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1
	.byte	0x18
	.byte	0x9
	.long	0x68
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x11
	.long	.LASF55
	.byte	0x1
	.byte	0x19
	.byte	0x9
	.long	0x68
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.byte	0x1e
	.byte	0xc
	.long	0x29
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x12
	.long	0x4f0
	.quad	.LBI14
	.byte	.LVU37
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.long	0x3c7
	.uleb128 0x13
	.long	0x501
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x14
	.quad	.LVL14
	.long	0x50f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x49
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x4f0
	.quad	.LBI18
	.byte	.LVU51
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.long	0x40e
	.uleb128 0x13
	.long	0x501
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x14
	.quad	.LVL20
	.long	0x50f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x16
	.quad	.LVL9
	.long	0x51b
	.uleb128 0x17
	.quad	.LVL11
	.long	0x440
	.long	0x432
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x49
	.byte	0
	.uleb128 0x16
	.quad	.LVL15
	.long	0x51b
	.byte	0
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.long	0x68
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f0
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.byte	0x8
	.byte	0x13
	.long	0x68
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.byte	0xa
	.byte	0x9
	.long	0x68
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x12
	.long	0x4f0
	.quad	.LBI8
	.byte	.LVU11
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe
	.byte	0x5
	.long	0x4ce
	.uleb128 0x13
	.long	0x501
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x14
	.quad	.LVL4
	.long	0x50f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.quad	.LVL2
	.long	0x527
	.uleb128 0x14
	.quad	.LVL6
	.long	0x440
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x68
	.byte	0x3
	.long	0x50f
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x2d0
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1d
	.long	.LASF58
	.long	.LASF58
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x1d
	.long	.LASF59
	.long	.LASF59
	.byte	0x9
	.byte	0x48
	.byte	0x10
	.uleb128 0x1d
	.long	.LASF60
	.long	.LASF60
	.byte	0xa
	.byte	0x2
	.byte	0x5
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS3:
	.uleb128 .LVU31
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU54
.LLST3:
	.quad	.LVL10
	.quad	.LVL11-1
	.value	0x1
	.byte	0x50
	.quad	.LVL11-1
	.quad	.LVL15
	.value	0x1
	.byte	0x53
	.quad	.LVL15
	.quad	.LVL16
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL16
	.quad	.LVL18
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU32
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST4:
	.quad	.LVL10
	.quad	.LVL14
	.value	0x2
	.byte	0x49
	.byte	0x9f
	.quad	.LVL14
	.quad	.LFE14
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU36
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU41
.LLST5:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x1
	.byte	0x50
	.quad	.LVL13
	.quad	.LVL14-1
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU50
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU56
.LLST6:
	.quad	.LVL17
	.quad	.LVL19
	.value	0x10
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0x412e8480
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL19
	.quad	.LVL20-1
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU37
	.uleb128 .LVU41
.LLST7:
	.quad	.LVL12
	.quad	.LVL14
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU51
	.uleb128 .LVU56
.LLST8:
	.quad	.LVL17
	.quad	.LVL20
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU7
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU24
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LVL5
	.value	0x1
	.byte	0x53
	.quad	.LVL5
	.quad	.LVL7
	.value	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.quad	.LVL7
	.quad	.LVL8
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU6
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST1:
	.quad	.LVL1
	.quad	.LVL1
	.value	0x1
	.byte	0x53
	.quad	.LVL1
	.quad	.LFE13
	.value	0x3
	.byte	0x8
	.byte	0x28
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU11
	.uleb128 .LVU14
.LLST2:
	.quad	.LVL3
	.quad	.LVL4
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB8
	.quad	.LBE8
	.quad	.LBB12
	.quad	.LBE12
	.quad	.LBB13
	.quad	.LBE13
	.quad	0
	.quad	0
	.quad	.LBB14
	.quad	.LBE14
	.quad	.LBB17
	.quad	.LBE17
	.quad	0
	.quad	0
	.quad	.LBB18
	.quad	.LBE18
	.quad	.LBB21
	.quad	.LBE21
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB14
	.quad	.LFE14
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"_IO_buf_end"
.LASF49:
	.string	"clock_t"
.LASF28:
	.string	"_flags2"
.LASF29:
	.string	"_old_offset"
.LASF58:
	.string	"__printf_chk"
.LASF0:
	.string	"double"
.LASF67:
	.string	"fibonacci"
.LASF24:
	.string	"_IO_save_end"
.LASF6:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF34:
	.string	"_offset"
.LASF50:
	.string	"__tzname"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF54:
	.string	"fibonacci_number"
.LASF11:
	.string	"__clock_t"
.LASF20:
	.string	"_IO_buf_base"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF38:
	.string	"_freeres_buf"
.LASF62:
	.string	"lab3.c"
.LASF60:
	.string	"helper_func"
.LASF48:
	.string	"stderr"
.LASF52:
	.string	"__timezone"
.LASF33:
	.string	"_lock"
.LASF51:
	.string	"__daylight"
.LASF7:
	.string	"long int"
.LASF68:
	.string	"printf"
.LASF55:
	.string	"fib_result"
.LASF30:
	.string	"_cur_column"
.LASF56:
	.string	"time_taken_by_cpu"
.LASF64:
	.string	"_IO_FILE"
.LASF3:
	.string	"unsigned char"
.LASF5:
	.string	"signed char"
.LASF35:
	.string	"_codecvt"
.LASF2:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF57:
	.string	"fibs"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF53:
	.string	"start"
.LASF4:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF61:
	.string	"GNU C99 9.3.0 -mtune=generic -march=x86-64 -g -O3 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF66:
	.string	"main"
.LASF36:
	.string	"_wide_data"
.LASF37:
	.string	"_freeres_list"
.LASF39:
	.string	"__pad5"
.LASF44:
	.string	"_IO_codecvt"
.LASF69:
	.string	"__fmt"
.LASF1:
	.string	"long unsigned int"
.LASF59:
	.string	"clock"
.LASF19:
	.string	"_IO_write_end"
.LASF10:
	.string	"__off64_t"
.LASF9:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF45:
	.string	"_IO_wide_data"
.LASF23:
	.string	"_IO_backup_base"
.LASF46:
	.string	"stdin"
.LASF63:
	.string	"/home/rastercube/computer_system/preliminary/lab3_handout"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF31:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_base"
.LASF27:
	.string	"_fileno"
.LASF42:
	.string	"FILE"
.LASF47:
	.string	"stdout"
.LASF65:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
