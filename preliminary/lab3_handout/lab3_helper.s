	.file	"lab3_helper.c"
	.text
.Ltext0:
	.p2align 4
	.globl	helper_func
	.type	helper_func, @function
helper_func:
.LFB0:
	.file 1 "lab3_helper.c"
	.loc 1 3 19 view -0
	.cfi_startproc
	endbr64
	.loc 1 5 5 view .LVU1
.LVL0:
	.loc 1 6 5 view .LVU2
	.loc 1 7 5 view .LVU3
	.loc 1 8 5 view .LVU4
	.loc 1 9 5 view .LVU5
	.loc 1 9 17 view .LVU6
	.loc 1 20 5 view .LVU7
	.loc 1 21 5 view .LVU8
	.loc 1 22 1 is_stmt 0 view .LVU9
	movl	$213, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	helper_func, .-helper_func
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xad
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF0
	.byte	0xc
	.long	.LASF1
	.long	.LASF2
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF3
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.long	0xa9
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xa9
	.uleb128 0x3
	.string	"x"
	.byte	0x1
	.byte	0x5
	.byte	0x9
	.long	0xa9
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x3
	.string	"y"
	.byte	0x1
	.byte	0x6
	.byte	0x9
	.long	0xa9
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x4
	.string	"d"
	.byte	0x1
	.byte	0x7
	.byte	0x9
	.long	0xa9
	.byte	0xd5
	.uleb128 0x5
	.uleb128 0x6
	.string	"z"
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.long	0xa9
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.byte	0xb
	.byte	0xd
	.long	0xa9
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.byte	0xc
	.byte	0xd
	.long	0xa9
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0xd
	.byte	0xd
	.long	0xa9
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x34
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
	.uleb128 0x4
	.uleb128 0x34
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 .LVU2
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL0-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x2d
	.byte	0x9f
	.quad	.LVL0-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0xd5
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU3
	.uleb128 .LVU6
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL0-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x2d
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1:
	.string	"lab3_helper.c"
.LASF3:
	.string	"helper_func"
.LASF0:
	.string	"GNU C99 9.3.0 -mtune=generic -march=x86-64 -g -O3 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF2:
	.string	"/home/rastercube/computer_system/preliminary/lab3_handout"
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
