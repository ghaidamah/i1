.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x6, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 1
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  li x19, 0x0
                  csrw 0x304, x19 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0xc5ce6dcd
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0xbff8a9
                  li x10, 0xa
                  li x11, 0xefad8f1e
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x0
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0xc
                  li x21, 0x80000000
                  li x22, 0x6
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x3
                  li x29, 0xf0c3a70f
                  li x30, 0xd
                  li x31, 0x0
                  la x15, user_stack_end
main:             li           t6, 0x0 #start riscv_int_numeric_corner_stream_28
                  li           s6, 0x1a856658
                  li           s0, 0x95add5f
                  li           s2, 0x0
                  li           a3, 0xffffffff
                  li           s10, 0xff260f7
                  li           a1, 0x80000000
                  li           t4, 0x80000000
                  li           sp, 0x0
                  li           t3, 0x80000000
                  lui          t6, 987965
                  add          a1, t4, sp
                  nop
                  auipc        s0, 550228
                  sub          s10, sp, t3
                  nop
                  lui          s6, 174322
                  auipc        t3, 830149
                  sub          t6, t6, a1
                  lui          s6, 513040
                  add          t3, s10, s0
                  auipc        t4, 173197
                  lui          s10, 392541
                  sub          s6, s6, t3
                  sub          a1, a1, t4 #end riscv_int_numeric_corner_stream_28
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           s2, 0x5199944c
                  li           s11, 0x80000000
                  li           a3, 0xf0d9b30d
                  li           sp, 0x0
                  li           t0, 0x0
                  li           s4, 0xffffffff
                  li           s8, 0x540312d0
                  li           a2, 0x80000000
                  li           s3, 0xffffffff
                  sub          t0, s2, sp
                  nop
                  auipc        s2, 1001419
                  nop
                  sub          a2, a3, s3
                  nop
                  nop
                  nop
                  nop
                  add          sp, t0, a1
                  lui          s11, 452538
                  lui          t0, 68290
                  auipc        a3, 341856
                  addi         a3, a1, -2026
                  lui          s3, 946203
                  auipc        t0, 362208
                  addi         s4, s8, -1298
                  sub          a2, a3, a3
                  sub          s4, sp, a1
                  addi         s4, sp, 935
                  addi         a2, s11, -970
                  addi         t0, a2, 1503
                  lui          a3, 446225
                  add          a3, s4, s11
                  addi         s8, t0, 1992
                  add          s4, sp, t0
                  nop
                  addi         s11, t0, -1567
                  lui          sp, 575939 #end riscv_int_numeric_corner_stream_4
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           gp, 0xffffffff
                  li           t2, 0xffffffff
                  li           a1, 0xc5cd4bd9
                  li           t5, 0xffffffff
                  li           s7, 0x80000000
                  li           t0, 0x80000000
                  li           s8, 0xffffffff
                  li           s2, 0x0
                  li           s10, 0x0
                  addi         s2, t2, 1374
                  add          s7, s7, s7
                  addi         s11, gp, 1101
                  add          a1, t0, t0
                  sub          s11, t0, s11
                  add          s10, gp, t5
                  addi         t2, gp, -1248
                  sub          t5, s11, s10
                  nop
                  auipc        s10, 1172
                  nop
                  nop
                  addi         t2, s2, 153
                  add          a1, s2, t0
                  addi         gp, t0, 1535
                  addi         s11, s8, 1661
                  addi         t0, s10, -1018
                  add          s2, s7, t0
                  auipc        t0, 80925
                  auipc        t5, 285850
                  nop #end riscv_int_numeric_corner_stream_13
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_23
                  li           gp, 0x0
                  li           s3, 0x8e8de5ad
                  li           a3, 0x80000000
                  li           s0, 0xffffffff
                  li           t6, 0x0
                  li           s9, 0xffffffff
                  li           a7, 0x0
                  li           a4, 0xffffffff
                  li           s6, 0xfa36e34f
                  nop
                  add          a7, s6, s9
                  auipc        s6, 604204
                  nop
                  sub          s0, a4, a1
                  auipc        a4, 939036
                  auipc        a1, 627378
                  nop
                  auipc        a1, 988752
                  lui          s0, 887543
                  add          a1, s9, a4
                  lui          a4, 721318
                  sub          s0, a3, t6
                  add          a3, a3, s6
                  add          a4, t6, s6
                  nop
                  add          s0, a4, a3
                  addi         s6, s9, 1814
                  addi         s6, gp, -495
                  auipc        a3, 303384
                  lui          s0, 660175
                  nop
                  auipc        a3, 850724
                  auipc        t6, 440933 #end riscv_int_numeric_corner_stream_23
                  li           t3, 0xbe0c51be #start riscv_int_numeric_corner_stream_18
                  li           t0, 0x8bc3c6a
                  li           s6, 0x0
                  li           a0, 0x0
                  li           s10, 0xffffffff
                  li           tp, 0xffffffff
                  li           ra, 0x0
                  li           gp, 0x80000000
                  li           s8, 0x3471e79d
                  li           a2, 0x13d81129
                  addi         t3, gp, 2026
                  auipc        s6, 199005
                  addi         tp, s10, 260
                  addi         t3, ra, 750
                  add          s6, gp, s8
                  lui          ra, 999713
                  addi         a2, gp, 1767
                  addi         s6, t0, -49
                  auipc        t0, 729253
                  add          ra, tp, a2
                  auipc        s6, 877123
                  addi         a2, tp, 1047
                  sub          a0, gp, s10
                  add          t0, tp, s10
                  nop
                  sub          tp, s6, gp
                  lui          s10, 662198
                  addi         gp, ra, 119
                  nop
                  addi         tp, s6, -1292 #end riscv_int_numeric_corner_stream_18
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_35
                  li           a6, 0x0
                  li           tp, 0xa01574ea
                  li           t5, 0xc5077e85
                  li           t0, 0x0
                  li           t2, 0x80000000
                  li           a0, 0x80000000
                  li           ra, 0x69828653
                  li           gp, 0x0
                  li           a4, 0x80000000
                  sub          t5, s10, a6
                  lui          a6, 21761
                  nop
                  add          t0, t5, t5
                  addi         t2, a4, -113
                  lui          t0, 319679
                  sub          t2, tp, a4
                  auipc        ra, 1039850
                  add          a0, s10, a4
                  lui          t5, 711083
                  lui          s10, 365246
                  addi         t0, s10, 275
                  lui          gp, 595712
                  auipc        tp, 725286
                  lui          t0, 411186
                  add          t0, t0, t2
                  auipc        s10, 399689
                  auipc        t0, 372844
                  addi         gp, t5, 1472
                  lui          a4, 911863
                  nop
                  addi         a6, t0, 1588 #end riscv_int_numeric_corner_stream_35
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s9, 0x80000000
                  li           gp, 0x48807586
                  li           a6, 0x72807ebc
                  li           a7, 0x80000000
                  li           a0, 0xffffffff
                  li           tp, 0xffffffff
                  li           t2, 0xffffffff
                  li           sp, 0xffffffff
                  li           t6, 0xffffffff
                  lui          tp, 451542
                  auipc        a7, 545572
                  addi         t6, a6, 69
                  auipc        s9, 917240
                  nop
                  nop
                  addi         a2, a7, 1011
                  sub          a0, a6, gp
                  lui          tp, 598123
                  auipc        a0, 337265
                  lui          t2, 892057
                  auipc        s9, 129028
                  nop
                  add          a2, sp, sp
                  add          t6, s9, sp
                  addi         t6, s9, 1004
                  auipc        a7, 175501 #end riscv_int_numeric_corner_stream_16
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_25
                  li           s9, 0x0
                  li           a4, 0xffffffff
                  li           s6, 0x0
                  li           t6, 0x80000000
                  li           s11, 0x80000000
                  li           s2, 0xffffffff
                  li           sp, 0x0
                  li           a3, 0xffffffff
                  li           gp, 0x80000000
                  lui          s11, 459575
                  auipc        s2, 64062
                  nop
                  add          t6, a3, a4
                  add          s9, a4, s6
                  addi         t6, s6, 1403
                  sub          s2, s6, s6
                  lui          gp, 983852
                  add          sp, s9, s6
                  add          s2, s11, gp
                  add          s6, s8, s6
                  nop
                  addi         s2, s2, 1405
                  lui          s8, 667732
                  auipc        gp, 708532
                  lui          s9, 945127
                  lui          a4, 1036370 #end riscv_int_numeric_corner_stream_25
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           a0, 0xffffffff
                  li           s8, 0x8cd015a
                  li           a6, 0x80000000
                  li           t5, 0x80000000
                  li           a2, 0xffffffff
                  li           s7, 0x0
                  li           s10, 0xffffffff
                  li           s11, 0x80000000
                  li           t4, 0x0
                  add          a6, a0, s7
                  nop
                  addi         a0, t5, -657
                  add          a2, t6, a6
                  sub          t5, t4, a6
                  addi         s11, s10, -1499
                  auipc        t5, 857005
                  sub          s10, s8, a2
                  add          s7, s11, s7
                  sub          a2, a2, t5
                  lui          t5, 271776
                  auipc        a2, 259246
                  addi         s11, t4, -1878
                  addi         s7, t4, -1744
                  addi         s7, s10, -666
                  sub          s11, t5, t5
                  addi         s11, s8, 700
                  sub          s11, s7, s8
                  auipc        a6, 7887
                  sub          t4, s8, a6
                  lui          t4, 353911 #end riscv_int_numeric_corner_stream_14
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_31
                  li           s2, 0xffffffff
                  li           t2, 0x0
                  li           s7, 0x69d7f2ef
                  li           t6, 0x80000000
                  li           s1, 0xffffffff
                  li           s3, 0x969c8e4d
                  li           s8, 0x80000000
                  li           s10, 0x80000000
                  li           a2, 0x80000000
                  addi         t2, s8, -1636
                  add          s3, s10, s2
                  nop
                  lui          s10, 447518
                  addi         s8, t2, 991
                  auipc        s7, 357142
                  addi         a2, t6, 528
                  add          t6, s1, t2
                  addi         s10, s10, -1064
                  lui          s2, 905120
                  lui          t6, 331542
                  nop
                  add          s2, s8, s3
                  lui          a2, 348261
                  nop
                  addi         a1, t6, 1872
                  addi         s1, s1, 113
                  lui          a1, 54945 #end riscv_int_numeric_corner_stream_31
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           s6, 0x80000000
                  li           a0, 0x0
                  li           t6, 0xa1498784
                  li           s7, 0x0
                  li           sp, 0xa072d4e
                  li           s11, 0xffffffff
                  li           s2, 0xffffffff
                  li           a3, 0x181091c8
                  li           s9, 0x80000000
                  lui          t6, 915142
                  sub          s9, s6, a0
                  addi         s7, a3, 1946
                  sub          s4, s11, s2
                  addi         s6, s2, -1873
                  auipc        sp, 551657
                  auipc        s11, 71623
                  lui          t6, 768245
                  lui          s2, 460795
                  add          s11, a0, s7
                  lui          s6, 479586
                  nop
                  nop
                  addi         t6, a0, -132
                  lui          s2, 516828
                  nop
                  auipc        s11, 300492
                  nop
                  sub          t6, a0, s11
                  auipc        s2, 1037701
                  auipc        s6, 314385 #end riscv_int_numeric_corner_stream_17
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           ra, 0x80000000
                  li           t6, 0x0
                  li           gp, 0xffffffff
                  li           t4, 0x0
                  li           s2, 0x80000000
                  li           a7, 0x80000000
                  li           a6, 0x0
                  li           s0, 0x0
                  li           a1, 0x0
                  addi         s2, a7, 1155
                  sub          s10, s0, a1
                  addi         t4, t6, 1560
                  auipc        s2, 952112
                  lui          s0, 528041
                  add          a1, t6, a7
                  addi         ra, a7, 458
                  lui          t6, 261645
                  auipc        s2, 543981
                  lui          t6, 416879
                  nop
                  add          ra, ra, a7
                  nop
                  lui          s0, 774637
                  sub          gp, a7, ra
                  sub          gp, s10, t4
                  lui          s0, 709439
                  lui          t6, 238759
                  lui          s2, 83060 #end riscv_int_numeric_corner_stream_12
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s2, 0x80000000
                  li           ra, 0x0
                  li           gp, 0xffffffff
                  li           a7, 0x0
                  li           s8, 0x0
                  li           t5, 0x0
                  li           s1, 0x80000000
                  li           t3, 0x0
                  li           s9, 0x0
                  auipc        ra, 193579
                  auipc        a7, 521850
                  lui          s0, 198563
                  lui          gp, 566833
                  nop
                  addi         ra, ra, 477
                  lui          s1, 782165
                  auipc        a7, 46560
                  sub          s0, t3, s1
                  addi         gp, s8, 514
                  addi         s1, s2, 677
                  add          s1, s2, s9
                  sub          s9, gp, s2
                  nop
                  auipc        ra, 97471
                  lui          gp, 739317
                  nop
                  sub          s9, s9, s2
                  sub          s0, t5, t3
                  add          gp, ra, t3
                  auipc        s8, 845006
                  add          s2, s9, gp
                  nop
                  sub          s9, s2, s0 #end riscv_int_numeric_corner_stream_19
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           a2, 0x80000000
                  li           s2, 0x0
                  li           a3, 0x80000000
                  li           t4, 0x6ed9527f
                  li           ra, 0x0
                  li           gp, 0x80000000
                  li           s1, 0x0
                  li           tp, 0x0
                  li           a0, 0xffffffff
                  auipc        t4, 1045484
                  sub          gp, a0, a3
                  auipc        ra, 672827
                  addi         tp, gp, -2008
                  nop
                  auipc        a0, 611644
                  addi         s1, s2, -115
                  lui          a3, 982689
                  addi         t4, a3, 920
                  addi         a7, s1, 1467
                  nop
                  lui          ra, 428623
                  add          a3, a0, tp
                  addi         a0, gp, -1619
                  nop
                  lui          gp, 841949
                  nop
                  add          t4, tp, a0
                  nop
                  addi         a7, tp, -915 #end riscv_int_numeric_corner_stream_5
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_29
                  li           a7, 0xffffffff
                  li           s9, 0x0
                  li           tp, 0xe5e58ab0
                  li           t6, 0x852261f8
                  li           s2, 0x0
                  li           a3, 0x80000000
                  li           t5, 0xffffffff
                  li           t0, 0xffffffff
                  li           a4, 0xc645faae
                  addi         a4, t5, 565
                  sub          t5, a7, t6
                  sub          t0, s9, tp
                  addi         t0, s2, 692
                  add          t5, s2, t5
                  lui          s2, 75364
                  addi         a4, tp, -108
                  auipc        a3, 370539
                  auipc        s2, 720403
                  add          t3, s2, t0
                  add          t3, tp, t3
                  lui          t6, 126117
                  nop
                  addi         t3, a3, -820
                  sub          t6, t5, s2
                  addi         a3, t3, 1959
                  lui          tp, 916642
                  lui          s9, 250936
                  nop #end riscv_int_numeric_corner_stream_29
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_33
                  li           t2, 0x11fe14aa
                  li           s3, 0xffffffff
                  li           sp, 0x0
                  li           gp, 0x0
                  li           a6, 0xffffffff
                  li           t3, 0x80000000
                  li           s9, 0x80000000
                  li           ra, 0x80000000
                  li           a2, 0xffffffff
                  nop
                  nop
                  addi         s10, t2, 514
                  lui          gp, 459647
                  auipc        s3, 926678
                  add          t3, t3, gp
                  auipc        a6, 731561
                  add          gp, a2, a6
                  add          ra, s3, s3
                  sub          s3, ra, a2
                  lui          a6, 557018
                  addi         sp, sp, -634
                  auipc        s10, 346159
                  nop
                  auipc        s3, 15715
                  addi         s10, s10, -466
                  auipc        t3, 749490
                  addi         ra, a2, 78
                  nop
                  add          sp, t2, s9
                  lui          s9, 403889
                  auipc        sp, 111897
                  addi         gp, s9, -585
                  lui          ra, 43704
                  nop
                  lui          s9, 843600
                  lui          s9, 130733 #end riscv_int_numeric_corner_stream_33
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_32
                  li           ra, 0x7f783d5a
                  li           s0, 0xffffffff
                  li           s2, 0x0
                  li           a1, 0x0
                  li           a6, 0x2879e4f3
                  li           t4, 0x80000000
                  li           s6, 0x0
                  li           t3, 0x0
                  li           a2, 0x80000000
                  sub          s2, s2, s0
                  nop
                  auipc        t4, 774989
                  auipc        t3, 853837
                  sub          a2, a2, a2
                  auipc        a1, 789840
                  nop
                  sub          t4, t4, t3
                  addi         t4, a2, -166
                  addi         s0, s0, 1156
                  addi         a2, ra, 1620
                  lui          s6, 214707
                  sub          a6, s6, ra
                  sub          t4, ra, a6
                  lui          a0, 147616
                  nop #end riscv_int_numeric_corner_stream_32
                  sltu         t3, s5, s5
                  auipc        s7, 346088
                  lui          s7, 909487
                  srli         sp, t4, 31
                  sra          s3, sp, a3
                  slli         a3, s5, 9
                  andi         s11, a0, -1213
                  and          s2, s5, t1
                  sll          sp, sp, s7
                  xor          gp, t2, t5
                  srai         t0, t5, 29
                  srl          t0, sp, s10
                  sltiu        s9, s10, 944
                  sra          s3, t1, a6
                  srai         zero, t1, 8
                  li           a4, 0x133f3de4 #start riscv_int_numeric_corner_stream_37
                  li           t0, 0x80000000
                  li           t5, 0x8172dc87
                  li           s2, 0x0
                  li           a6, 0xffffffff
                  li           sp, 0x352c2009
                  li           t6, 0x320dd0d5
                  li           s4, 0x0
                  li           ra, 0x0
                  li           t4, 0xffffffff
                  add          t5, t5, a4
                  addi         s4, s2, 1206
                  sub          s4, t4, s2
                  add          ra, t5, t4
                  auipc        s2, 212383
                  addi         sp, s4, 957
                  add          a6, t4, ra
                  auipc        t0, 560437
                  lui          ra, 270322
                  addi         a6, s2, 1578
                  addi         t6, t6, -1093
                  auipc        sp, 599788
                  nop
                  auipc        sp, 212261
                  lui          s4, 144111
                  add          s4, a4, ra
                  add          sp, t5, s4 #end riscv_int_numeric_corner_stream_37
                  srl          a7, t6, a3
                  sltiu        s1, t5, -1812
                  sra          t3, sp, a2
                  sltiu        a6, t1, -1710
                  auipc        s10, 972660
                  srl          a0, t4, a5
                  add          ra, s0, gp
                  and          s11, t6, t1
                  nop
                  srl          t5, s4, s2
                  sll          t4, s4, a0
                  slti         s4, a6, -68
                  sra          t2, t3, a1
                  sub          ra, a6, s1
                  auipc        t3, 620636
                  and          s2, a4, s3
                  slti         s2, gp, 1194
                  srl          a4, t4, s6
                  and          t0, s0, a6
                  sra          a4, zero, s2
                  sltiu        s7, a2, 1266
                  slli         s7, tp, 18
                  sltiu        t5, tp, 1842
                  auipc        tp, 963608
                  nop
                  slt          t5, s0, s4
                  slli         s4, t5, 6
                  sltiu        t4, a7, 2024
                  auipc        t6, 616175
                  srai         s0, t6, 10
                  add          zero, a4, s2
                  nop
                  or           t4, sp, t1
                  sll          a1, a5, sp
                  sub          a2, t4, s8
                  or           t2, t1, t2
                  srl          a3, tp, a2
                  srai         s9, a4, 1
                  srl          sp, a4, t2
                  add          zero, a3, t4
                  addi         a1, s7, -123
                  nop
                  auipc        s11, 382967
                  sub          t5, a0, sp
                  srai         t2, s7, 17
                  sll          a7, s6, t3
                  ori          sp, t1, 979
                  lui          t3, 45286
                  xori         s2, s4, -1575
                  srl          sp, s9, gp
                  sltiu        s3, s9, -239
                  slli         s9, s8, 13
                  addi         s6, a4, -198
                  andi         ra, gp, 2018
                  slli         sp, s4, 28
                  srli         a6, s8, 13
                  auipc        s6, 572717
                  srl          gp, s10, a3
                  or           s1, s8, s3
                  srl          s7, s11, s8
                  sll          zero, a7, tp
                  xor          s11, a4, tp
                  xori         s11, t0, 280
                  srl          s1, t3, ra
                  srli         s4, a3, 8
                  srai         a7, s11, 16
                  sltiu        t6, t0, -791
                  nop
                  sub          s10, t5, t5
                  srl          s0, s10, a4
                  xori         s11, sp, 1735
                  sltiu        s11, s1, -1684
                  addi         a3, s8, -1956
                  srai         t3, s7, 5
                  srai         a2, a2, 17
                  sub          s8, s4, s5
                  auipc        t4, 405988
                  srai         a7, t0, 14
                  ori          t2, gp, -1247
                  slt          gp, t0, s10
                  sltu         a0, s11, s3
                  add          a4, a7, s11
                  and          zero, s6, t5
                  andi         a0, s3, -1646
                  xor          a6, a3, ra
                  add          s6, s10, s8
                  addi         a6, t6, -884
                  auipc        s8, 456964
                  ori          s7, gp, 452
                  sra          s2, t4, t0
                  sra          t3, gp, s2
                  lui          gp, 331580
                  or           a2, t2, s1
                  andi         t0, s7, -1105
                  sra          t2, s4, a2
                  addi         a3, t6, 1277
                  slli         ra, t4, 19
                  or           a6, s9, s10
                  addi         a7, a6, 414
                  sra          s1, a4, a4
                  srl          gp, a2, s5
                  nop
                  srl          zero, s6, a1
                  sll          gp, tp, s0
                  addi         t3, a5, 169
                  andi         a1, t5, -524
                  sltiu        a2, zero, 2030
                  sltiu        t4, a1, -554
                  nop
                  sltiu        t3, s0, -1260
                  andi         s1, zero, 117
                  nop
                  lui          s3, 404853
                  xori         s10, t3, -1291
                  lui          t6, 923495
                  andi         s6, gp, -256
                  ori          s11, s3, -1825
                  sra          s7, a0, s9
                  addi         a1, t0, 452
                  slli         a6, a2, 1
                  srl          a1, a7, a2
                  sra          zero, zero, s7
                  sub          s8, sp, t2
                  sltiu        s4, a6, -1184
                  and          s9, a2, a5
                  addi         zero, t3, 1584
                  slli         s7, a0, 1
                  lui          a1, 420032
                  andi         s9, t5, 80
                  sll          t2, s0, s5
                  slt          t6, s2, t5
                  slt          s8, s1, s4
                  sltiu        s1, s1, 744
                  andi         gp, s5, -177
                  xori         sp, s5, 1945
                  andi         s3, zero, 1321
                  srai         a3, s5, 21
                  add          tp, s2, tp
                  slti         s7, t5, 1513
                  sra          s10, t0, a6
                  slti         s11, s9, 1882
                  sltiu        t5, tp, -1240
                  xor          s11, a5, a6
                  or           s3, ra, s9
                  or           t3, s3, t2
                  srli         t5, s5, 19
                  slli         a2, s6, 4
                  and          s0, a6, s7
                  srai         s3, s5, 27
                  and          s3, zero, t3
                  srli         a4, zero, 24
                  andi         s1, tp, -227
                  lui          s11, 852590
                  ori          tp, ra, -1967
                  sra          t5, s11, ra
                  sub          s6, s8, a5
                  srai         a6, a0, 10
                  srai         tp, s3, 29
                  slli         t0, t3, 5
                  srli         s3, s9, 10
                  xor          s7, t3, s2
                  srli         s2, s3, 7
                  sra          s4, s0, s7
                  srl          a4, s8, a4
                  srai         s4, sp, 3
                  sltiu        s3, tp, -151
                  and          s3, a6, s11
                  slti         s0, s0, -1188
                  xori         s9, t5, 809
                  ori          gp, s8, -920
                  ori          ra, s8, 1928
                  and          s9, a1, a4
                  sltu         a2, s3, s9
                  srl          s9, a7, t6
                  andi         a2, s10, -380
                  and          s4, tp, t4
                  ori          a7, a7, -277
                  srl          a3, t6, a7
                  andi         a4, s4, -1160
                  xori         t4, a5, -1083
                  auipc        s8, 767008
                  auipc        tp, 514058
                  sll          s11, a3, ra
                  or           s2, s10, s6
                  slt          s6, a3, t2
                  srl          a3, ra, ra
                  or           sp, s3, t6
                  sra          s6, a4, gp
                  lui          a0, 1046864
                  add          s0, a6, s3
                  srai         s3, tp, 5
                  xori         s8, s9, 1216
                  nop
                  sll          s8, t1, ra
                  add          t5, t6, s9
                  srli         s0, s3, 18
                  sub          s10, a1, sp
                  xor          t0, a5, a2
                  and          a1, a7, zero
                  sltu         a7, a3, a1
                  slt          zero, s3, s7
                  auipc        s11, 405801
                  ori          a2, s10, -1526
                  sra          s6, a3, a0
                  xor          s11, s10, t1
                  srli         t0, a0, 21
                  slt          t5, a4, ra
                  nop
                  lui          a4, 495973
                  xori         s7, s6, -1075
                  or           zero, s10, zero
                  lui          t0, 368964
                  sltiu        s6, tp, -1457
                  sltiu        a6, s0, -1620
                  sra          s8, s4, a6
                  auipc        s10, 246492
                  sltiu        s1, a2, -187
                  or           ra, a7, a0
                  sub          t2, a0, t2
                  slti         t6, zero, 1252
                  sll          s10, t5, gp
                  sltiu        s2, t3, -1386
                  nop
                  addi         s10, t3, -674
                  nop
                  sltu         t0, s4, s2
                  nop
                  sra          a7, zero, a1
                  slt          sp, a6, t0
                  ori          sp, s1, -44
                  sltu         a0, t2, s5
                  ori          s3, a1, -1024
                  slti         s11, s8, 595
                  slli         t3, s8, 22
                  sub          tp, t5, s3
                  sltiu        t6, t6, -756
                  andi         t5, ra, 1908
                  sltu         t5, a2, s11
                  slti         gp, t1, 79
                  addi         s7, s5, 136
                  sll          a2, t6, sp
                  nop
                  srai         ra, a2, 30
                  and          t6, a5, t5
                  lui          gp, 60889
                  sub          t0, a2, sp
                  xor          s0, tp, t3
                  auipc        t6, 1039966
                  sra          t3, a0, t4
                  add          a7, a6, zero
                  sra          t0, s8, a5
                  add          a6, t6, ra
                  xori         s10, tp, 701
                  ori          s6, s4, -1285
                  or           a0, ra, s11
                  srli         a1, a4, 29
                  or           ra, t1, a1
                  slt          s9, s3, t5
                  srli         s2, s4, 21
                  xor          s2, a7, s3
                  auipc        s6, 288170
                  sltu         s2, a3, s4
                  nop
                  ori          t4, a7, -670
                  and          t5, s3, s7
                  srai         t6, ra, 1
                  slti         gp, a3, 383
                  or           s7, a3, t0
                  slt          zero, s10, s3
                  addi         gp, s8, -402
                  lui          t4, 663025
                  xori         t0, a5, -755
                  and          a2, s6, t6
                  sub          s4, s8, t3
                  srli         t5, a5, 27
                  xori         s11, a3, -680
                  nop
                  or           s8, a5, a1
                  addi         t4, a6, -261
                  add          t5, t2, s9
                  and          gp, s2, a0
                  and          t5, s4, s5
                  or           s4, s8, a5
                  xori         s9, t1, -1531
                  xor          a1, s8, t6
                  slli         s2, t6, 15
                  and          zero, t0, s11
                  or           a2, a0, s6
                  srl          t3, gp, s11
                  sltu         t3, a6, s3
                  srli         s8, s10, 27
                  srli         t3, zero, 26
                  sltiu        t6, s5, -803
                  srai         s11, t6, 5
                  sll          s0, tp, a1
                  sll          a7, a1, t2
                  sltiu        s4, s1, -1500
                  auipc        t5, 800008
                  and          t2, a4, s2
                  ori          a2, t0, 1550
                  sra          t3, t3, s11
                  or           a1, s7, t5
                  and          s3, a7, s2
                  nop
                  nop
                  and          a1, a2, s0
                  and          t6, s3, s7
                  slt          a6, sp, s1
                  sll          s1, a0, t2
                  sll          a4, a3, s2
                  slli         t5, a7, 27
                  sub          tp, a4, s6
                  sub          ra, s7, s7
                  sub          t3, a3, t4
                  andi         a0, a5, 1745
                  slti         ra, t4, 131
                  srl          t6, gp, s5
                  sub          a4, s8, s6
                  sltiu        gp, t4, -1241
                  xori         a0, a5, -1537
                  or           t4, zero, tp
                  nop
                  or           s9, s9, a4
                  slti         s10, t6, -1813
                  srli         a1, a2, 24
                  auipc        zero, 58972
                  sra          s7, t0, a6
                  and          s8, s7, s8
                  xori         s7, gp, 517
                  srai         t5, s7, 5
                  lui          t6, 629659
                  xor          ra, s11, t1
                  slt          t2, s7, t4
                  sll          t0, t0, s5
                  add          s8, a4, a7
                  slli         s0, a3, 2
                  slt          s2, s10, a6
                  or           s3, t3, t2
                  sltu         a7, t6, s0
                  addi         s8, a3, -976
                  andi         s10, a7, 1124
                  slli         s6, s1, 29
                  addi         s7, s0, 1482
                  lui          s6, 455510
                  lui          gp, 405648
                  slti         a2, t0, -1395
                  slti         s8, a4, -1888
                  nop
                  nop
                  addi         s7, t6, 946
                  sll          t2, t0, t3
                  andi         a7, s0, -839
                  xori         t3, a3, -553
                  sltiu        tp, a1, -1840
                  sub          t2, t2, t2
                  srai         s9, t5, 10
                  nop
                  auipc        s4, 1023139
                  sub          s9, gp, s9
                  sra          s7, s8, tp
                  auipc        t3, 214503
                  lui          zero, 843882
                  add          t5, zero, sp
                  sltu         sp, s4, s5
                  sra          ra, a6, gp
                  xori         a1, tp, -1801
                  slti         s6, ra, 743
                  xori         t2, a3, -1027
                  slli         a4, t5, 30
                  srli         s9, zero, 22
                  srl          zero, s0, a5
                  sra          a1, t6, a7
                  nop
                  sltiu        s8, t6, -232
                  nop
                  add          s2, t3, s11
                  sll          ra, a6, a2
                  srl          a6, s1, t5
                  srl          a7, a4, t2
                  nop
                  andi         s11, t2, 1324
                  nop
                  add          a3, t3, s2
                  ori          s11, t4, 1122
                  xori         a1, a2, 1681
                  sltiu        tp, a6, -741
                  srli         gp, s7, 29
                  sll          s10, t6, t1
                  sll          ra, s5, a4
                  srl          a6, s9, s10
                  add          s11, s4, t4
                  xor          t0, tp, ra
                  addi         s7, a0, -780
                  slt          a7, ra, s5
                  sltiu        s9, a4, 768
                  addi         a3, s3, -760
                  srai         s9, a1, 21
                  sub          s1, s2, s2
                  and          s6, a1, t0
                  and          a4, t0, s7
                  sra          gp, s3, t4
                  sltiu        gp, a2, 247
                  slt          s4, a5, tp
                  and          a7, s6, s3
                  slt          t3, s3, a5
                  slt          s9, s0, gp
                  slt          t2, s0, s9
                  add          s4, s7, s2
                  ori          t0, t4, 769
                  sltu         a3, s2, t5
                  sltiu        a7, a0, -1688
                  sra          s8, s5, s10
                  srai         t6, s3, 2
                  srli         s7, t5, 0
                  sltiu        t4, t1, -1224
                  srli         ra, ra, 14
                  slli         a1, s3, 22
                  slt          s8, s2, s4
                  sub          s11, sp, a6
                  lui          t6, 809384
                  sub          t4, a0, t2
                  sub          s6, a2, a3
                  xori         a7, a1, -1921
                  srl          s6, t3, a1
                  sra          s7, a6, t6
                  slti         s0, s5, 828
                  sltiu        t4, zero, 1722
                  sll          ra, t0, s3
                  addi         t3, gp, 465
                  ori          s0, a4, -683
                  xori         s4, s10, -1053
                  ori          s8, a1, -608
                  lui          t3, 921481
                  addi         t5, a7, 1036
                  xori         a6, tp, 1503
                  or           a4, s11, a5
                  xor          s8, a7, s6
                  xori         s0, a1, 102
                  addi         a7, a2, 325
                  andi         t6, a5, -2034
                  addi         ra, tp, -1884
                  sll          a3, s8, t4
                  xor          s8, a6, ra
                  sltiu        s2, a2, 1068
                  sra          tp, s11, t2
                  xor          s2, sp, t2
                  add          t6, a7, s8
                  sub          a3, t1, s9
                  slti         t2, t0, 634
                  andi         a7, a1, 1130
                  add          a3, a3, s2
                  sub          s9, tp, s0
                  srai         a6, s9, 2
                  nop
                  andi         t3, s4, 1787
                  addi         t5, s9, -1221
                  andi         s6, a2, -872
                  lui          t4, 321403
                  srai         s4, sp, 11
                  lui          s7, 501757
                  srli         s0, t2, 25
                  sll          s1, ra, a5
                  and          s1, t6, a1
                  sltu         gp, ra, s2
                  slt          s3, tp, tp
                  add          s0, s1, t5
                  sll          s9, s2, s5
                  and          s3, a4, t3
                  srli         s1, a1, 1
                  addi         s2, a3, -1211
                  sub          s2, a7, s9
                  srli         t6, t1, 17
                  sltiu        a2, t5, -1439
                  addi         a2, t1, -1794
                  auipc        a1, 155148
                  ori          a4, t2, 786
                  sra          t4, s11, s10
                  srli         a7, t5, 2
                  srai         t3, t2, 25
                  srai         s9, zero, 19
                  slli         s7, a6, 25
                  sub          a4, a1, s11
                  srli         a6, a0, 26
                  xor          a6, s6, t4
                  nop
                  slti         s1, zero, 1548
                  or           gp, tp, t1
                  add          s4, ra, t4
                  srl          s3, gp, t4
                  xori         t2, a7, 1873
                  slli         s0, s8, 0
                  xori         zero, zero, 70
                  add          s4, s10, t2
                  and          s4, a1, s4
                  add          sp, a1, s9
                  xori         s2, s1, 1189
                  addi         tp, zero, 1797
                  auipc        t6, 589921
                  slt          a2, a7, a4
                  or           s0, gp, zero
                  slt          s11, t0, t4
                  slti         a2, s8, -1333
                  addi         a4, s6, -504
                  lui          t4, 576249
                  srli         a6, t2, 25
                  slti         s7, s0, -474
                  srli         t5, t5, 18
                  andi         a4, zero, 720
                  auipc        sp, 579268
                  sra          s0, t6, t4
                  slli         t5, s11, 2
                  srli         a3, t3, 26
                  ori          a2, a3, 1167
                  sra          s8, s4, s10
                  sll          ra, s10, a3
                  sub          tp, s6, zero
                  andi         s6, t3, -1408
                  nop
                  srli         t4, s8, 14
                  add          t0, a6, t6
                  lui          s8, 10528
                  add          t0, s11, s6
                  ori          s9, a2, 552
                  srli         s6, t4, 27
                  ori          a0, t0, -808
                  andi         s7, s2, 50
                  sltiu        a0, s4, -999
                  srli         s4, s2, 4
                  or           s10, t1, a5
                  sltu         sp, s8, s2
                  xori         s1, a2, 1977
                  xor          s9, a2, t4
                  auipc        a2, 497843
                  sub          gp, s0, ra
                  or           s4, s9, s10
                  sll          s1, s1, sp
                  and          a6, zero, a4
                  auipc        ra, 442432
                  slti         s10, gp, -1894
                  and          s8, a6, s10
                  auipc        s3, 106261
                  sra          gp, t5, s10
                  addi         a1, ra, -118
                  sltiu        s0, s0, -1197
                  sll          s6, t4, s10
                  slti         s9, zero, -1761
                  and          s6, s5, s0
                  srli         a7, a2, 24
                  or           s6, s8, s3
                  nop
                  slli         a0, t6, 15
                  nop
                  lui          s10, 516779
                  sll          s1, s1, s2
                  or           t0, t4, tp
                  slli         t2, t2, 15
                  addi         t0, zero, -262
                  xor          t2, s6, ra
                  add          s9, sp, t1
                  nop
                  and          s6, gp, tp
                  add          a6, a7, t0
                  auipc        s10, 258698
                  slt          s6, s0, a6
                  srli         s4, a2, 25
                  slli         t6, t6, 17
                  sll          gp, s1, a1
                  add          sp, s4, tp
                  xori         a6, s1, 191
                  sub          zero, s6, t1
                  srl          s1, t1, s1
                  andi         ra, s4, 323
                  slli         s9, s4, 14
                  ori          gp, zero, -1764
                  sub          t3, a6, t6
                  and          t6, ra, a3
                  srl          s8, zero, a6
                  sra          s4, t3, gp
                  andi         t0, t5, 981
                  add          s0, a1, t4
                  addi         a3, s4, -1847
                  slti         s4, zero, -1876
                  lui          s3, 434776
                  xori         s1, sp, -40
                  slti         s1, a1, 80
                  xori         zero, a2, -904
                  nop
                  srl          s3, t3, t2
                  xor          s8, t0, t1
                  xori         a1, t3, 1531
                  sltu         t4, s0, a7
                  slli         a4, a1, 27
                  or           sp, a6, s1
                  slti         a4, t4, 573
                  srai         t4, t0, 4
                  sub          s3, t3, s11
                  sub          gp, gp, a2
                  sub          tp, a4, a1
                  sll          a6, t6, s4
                  sub          s2, zero, t5
                  auipc        s1, 493707
                  sltu         a2, s2, s6
                  srl          s2, s1, tp
                  ori          zero, s4, 914
                  addi         s6, s10, -1309
                  or           s0, a2, t3
                  sub          t4, s4, a0
                  and          s10, a1, s4
                  srl          gp, a2, t3
                  slt          tp, t0, a2
                  add          t4, s0, a5
                  sra          s1, a7, s0
                  xori         a0, a2, -1194
                  and          zero, s6, zero
                  or           s3, t4, s7
                  add          a7, a5, s6
                  srai         a6, t1, 1
                  xor          a7, t4, ra
                  slt          s3, a6, t1
                  slti         a6, a2, 1510
                  andi         a3, zero, -1052
                  slti         s8, t6, -1706
                  lui          a7, 1017595
                  srli         s3, a4, 26
                  lui          s2, 689864
                  auipc        t4, 447927
                  slli         s1, a3, 15
                  slti         s9, s11, 866
                  ori          t2, s7, -1191
                  sltiu        a1, t5, 220
                  slti         t0, a5, 582
                  xori         zero, s8, -692
                  slt          a1, a6, zero
                  lui          gp, 874293
                  slti         t5, t5, -1894
                  sltiu        s6, a6, -1938
                  slti         t3, s7, -389
                  and          s11, sp, t3
                  sub          tp, a0, sp
                  srli         t6, tp, 29
                  nop
                  sltiu        s3, a5, 1704
                  sll          zero, a3, s0
                  add          t2, s0, s8
                  add          a0, s9, t4
                  andi         t5, s3, 717
                  sltu         a4, s8, a2
                  srl          sp, tp, s2
                  sltiu        s8, a6, -1078
                  auipc        s9, 423427
                  xori         s3, zero, 594
                  add          s6, s10, a6
                  xori         a0, a3, -1886
                  slt          s8, t3, s2
                  slli         s8, gp, 1
                  addi         s6, s5, 1256
                  or           s9, t4, s8
                  auipc        t0, 822720
                  sub          s7, tp, s0
                  slli         t6, a5, 17
                  auipc        sp, 411550
                  srli         s8, a6, 31
                  srl          t2, a1, a4
                  sra          t2, a2, t4
                  or           a1, zero, s8
                  nop
                  srai         a4, t1, 14
                  slli         t0, zero, 14
                  xori         s9, s9, 102
                  slt          zero, a0, s0
                  sll          t3, a4, a7
                  slt          tp, s5, a3
                  slli         a4, t5, 14
                  xor          s8, tp, sp
                  sll          s9, s10, t0
                  srli         zero, t2, 6
                  sub          s1, s0, s11
                  srli         ra, gp, 20
                  ori          t0, sp, 1691
                  or           tp, a0, t5
                  or           t0, a2, s1
                  sll          s8, s1, t4
                  slt          s9, t5, s1
                  add          s4, a7, t3
                  srai         t2, a6, 9
                  lui          a1, 797747
                  srli         s3, a5, 21
                  xori         a7, a7, 819
                  addi         s8, s5, 377
                  slti         s11, sp, -801
                  srai         ra, s9, 17
                  sltu         t2, a2, t2
                  sltiu        s9, t2, 669
                  sll          t0, s3, gp
                  slt          s6, t6, a5
                  xor          s3, t5, t3
                  slli         s3, t0, 22
                  sll          s10, a0, s11
                  xor          zero, s11, s4
                  add          s9, s2, t5
                  lui          s0, 229130
                  andi         zero, a0, 1982
                  srli         s10, s8, 17
                  sub          gp, s8, zero
                  srai         a4, s5, 0
                  sub          a7, s9, a1
                  sltu         s4, t5, a1
                  auipc        t6, 691848
                  sub          s4, s6, tp
                  ori          s1, t0, 1881
                  ori          t4, s2, 900
                  slli         a3, s4, 11
                  srl          zero, s7, s0
                  sll          a2, tp, s0
                  ori          t4, a7, -113
                  add          s2, a1, s9
                  srai         t2, a3, 30
                  sub          tp, s10, tp
                  srai         a3, s0, 6
                  slti         a0, t5, 661
                  xori         s8, t6, -989
                  srli         s1, s6, 16
                  srli         s3, t5, 4
                  or           t0, s2, s6
                  sltiu        s1, s9, -1768
                  add          s3, sp, a7
                  srl          a2, a5, s10
                  andi         s10, sp, -30
                  sltiu        s1, a6, -267
                  srai         sp, s6, 0
                  or           t5, t2, s9
                  sll          a2, s4, t1
                  auipc        t0, 319256
                  srl          a0, s7, a2
                  ori          a0, a0, -121
                  sub          a2, t1, s0
                  xor          zero, tp, tp
                  lui          a1, 530188
                  nop
                  slli         s8, t6, 9
                  sra          t2, t6, gp
                  srl          s9, s0, gp
                  lui          gp, 293651
                  sll          t3, sp, s5
                  lui          a6, 354475
                  nop
                  srli         ra, s11, 16
                  addi         zero, sp, 1266
                  auipc        s7, 801459
                  xori         a0, tp, 343
                  andi         gp, t3, 257
                  andi         tp, t5, -707
                  slti         s3, a6, -1845
                  xori         s6, a7, -1044
                  ori          tp, t3, -1243
                  sltiu        t0, s0, -1051
                  xori         s2, zero, 65
                  slli         a4, ra, 26
                  slt          gp, s8, s3
                  slt          s8, a2, a6
                  sll          a3, s4, s4
                  srli         t4, gp, 21
                  srl          tp, tp, a1
                  srl          a2, a0, s3
                  srai         s10, s1, 13
                  slli         t5, s1, 31
                  auipc        t0, 730653
                  srai         a3, t4, 30
                  slli         a0, a1, 15
                  and          s11, t6, zero
                  slti         s11, t4, -1036
                  xori         t0, t0, -64
                  sltiu        s11, a4, 265
                  slt          a0, ra, a1
                  auipc        s2, 383631
                  nop
                  slti         tp, a5, -26
                  auipc        a0, 532146
                  and          s11, a6, s8
                  nop
                  sltiu        t2, s7, -1111
                  xor          t4, t3, s9
                  sub          ra, t0, s10
                  xor          ra, t1, a7
                  nop
                  ori          a7, sp, -906
                  srli         s2, t6, 11
                  or           s9, a6, ra
                  sub          s1, t3, s1
                  srai         ra, s1, 23
                  slt          t6, s3, s4
                  andi         t3, t2, -525
                  andi         s0, t0, -1180
                  ori          s2, s2, 1464
                  ori          s4, t6, -1216
                  or           s0, s1, a4
                  srai         a2, t5, 30
                  sra          zero, a6, t1
                  srl          s7, s1, a3
                  slti         s10, t6, 828
                  xor          tp, t2, s5
                  srl          a6, s7, s1
                  sra          a4, s4, s3
                  auipc        a7, 912879
                  sltu         sp, s7, t0
                  slti         t0, t4, 892
                  srli         t5, s6, 16
                  srli         gp, t1, 17
                  sltiu        s1, ra, 1414
                  auipc        s10, 330837
                  slti         s0, t2, 389
                  sll          t0, s5, gp
                  lui          zero, 361252
                  and          a6, zero, s0
                  addi         a7, s8, -1427
                  sltiu        a7, a7, -1655
                  srli         a3, t1, 4
                  auipc        t2, 491949
                  srli         s1, s8, 4
                  nop
                  sra          t3, s10, a0
                  sltu         t2, t5, a7
                  slti         a7, s7, -1271
                  sltiu        gp, t6, -1454
                  or           t4, s1, s2
                  slt          s9, s5, t2
                  or           sp, t2, s11
                  xor          t3, t5, gp
                  sra          s6, s9, t5
                  add          zero, s7, a3
                  srl          gp, s10, t0
                  slt          s1, a2, t0
                  slti         t3, s2, 685
                  srai         s6, s7, 9
                  slli         s3, t3, 0
                  xor          a2, t5, s3
                  ori          a3, a4, -664
                  and          s7, tp, s1
                  sub          a7, a5, ra
                  srl          t5, a3, s4
                  sub          t4, a2, t2
                  srl          t3, s7, a0
                  srai         s4, a1, 29
                  srl          gp, t3, s2
                  sltiu        s11, s10, 1480
                  srli         s8, a6, 6
                  nop
                  srai         a3, t4, 29
                  lui          s4, 49849
                  addi         a2, t5, 988
                  ori          sp, s2, -2
                  srli         s6, a7, 20
                  and          ra, s1, s4
                  xori         a4, ra, -1151
                  or           a4, s1, s6
                  or           s8, t5, s5
                  slti         a3, a0, -1559
                  addi         t4, t4, 593
                  sra          a6, a3, s5
                  slti         s6, t0, -1309
                  sltu         s0, s3, s4
                  srai         t4, t1, 30
                  srl          s7, a5, s5
                  andi         t2, a0, -525
                  srai         s4, s3, 22
                  slt          tp, ra, a7
                  sltu         a4, a5, a6
                  ori          s2, s3, 1335
                  sll          zero, a0, t4
                  sra          a3, ra, gp
                  sltiu        t2, t0, -221
                  sub          s6, t0, t1
                  sltiu        t2, a6, -2037
                  sll          s8, s11, s3
                  slti         s3, t4, -1229
                  srai         s7, t6, 30
                  sll          t3, s2, s6
                  sltiu        s7, a0, 1369
                  ori          a2, t2, 1147
                  ori          ra, a5, -1250
                  auipc        a6, 959800
                  sra          s4, s1, s10
                  xori         a4, sp, -1717
                  sub          s8, s0, s9
                  slli         a0, a7, 5
                  sra          ra, s9, a2
                  addi         a4, a0, -463
                  slt          s7, s4, a7
                  auipc        s11, 759599
                  srl          a7, t5, a2
                  xor          s1, tp, t4
                  slli         a4, s0, 31
                  nop
                  slli         s4, a5, 30
                  add          a1, s3, t1
                  srai         a0, tp, 25
                  and          s7, s3, t1
                  andi         s10, s10, 688
                  addi         s0, t5, 1155
                  andi         sp, s2, 1373
                  sll          s7, ra, s10
                  srl          t2, s10, s8
                  slli         s3, s1, 10
                  addi         s1, s2, -202
                  addi         t5, a2, 1773
                  sub          s9, s11, t2
                  addi         s8, s5, 999
                  slti         s10, a5, -393
                  srl          t4, s6, s0
                  ori          a7, s1, -1048
                  srl          s10, a7, a1
                  andi         s3, a7, -765
                  andi         t6, t2, 805
                  ori          s10, t2, -1591
                  sra          s4, t0, s2
                  nop
                  auipc        t6, 516088
                  nop
                  or           a3, a0, s0
                  srl          t6, t5, s1
                  srl          a0, s8, s8
                  sll          s7, a5, t5
                  slti         s3, s11, -855
                  andi         a6, tp, 1930
                  srai         t5, tp, 20
                  andi         t0, a1, 1625
                  sltu         s0, t4, s5
                  lui          a4, 967193
                  sll          a3, s6, s10
                  xori         s9, t3, 976
                  or           t0, a7, t3
                  srl          tp, t3, s2
                  slt          s11, s11, a1
                  srl          t4, a1, s2
                  and          a4, gp, s3
                  ori          a0, a0, 503
                  srai         sp, s9, 20
                  xori         s1, s10, 602
                  xori         s11, sp, -714
                  slt          s1, t2, zero
                  sra          t0, sp, ra
                  slti         a7, a4, 1861
                  addi         a7, a4, 1710
                  srli         s0, s4, 19
                  slli         s11, tp, 6
                  andi         a3, s5, -15
                  srai         a4, s11, 13
                  auipc        s8, 851454
                  and          a3, s10, s0
                  addi         t2, t2, -926
                  sltiu        t6, t4, -962
                  srli         t4, a1, 0
                  srli         t3, s10, 19
                  or           t3, s2, t5
                  slli         ra, s8, 7
                  xor          t5, s2, t2
                  or           t3, t3, s3
                  sltiu        s8, t1, 258
                  srai         s2, s3, 29
                  or           a4, s2, s2
                  sub          a3, gp, s11
                  auipc        s9, 259960
                  sltiu        t5, t1, -149
                  lui          s9, 244474
                  andi         tp, s7, 1332
                  srli         tp, s3, 1
                  auipc        t2, 1016479
                  sltiu        t2, a0, 1545
                  and          t3, zero, tp
                  add          s10, t3, s11
                  slt          s4, s2, s5
                  sll          s10, s0, a2
                  add          t5, a6, t2
                  slti         a0, t5, 1279
                  andi         s7, a5, -265
                  sra          a7, a0, t0
                  slti         a1, s8, -384
                  andi         s2, s5, -987
                  srai         t5, t6, 28
                  lui          a3, 649212
                  nop
                  and          s0, a3, a1
                  sub          a1, t0, s7
                  sll          s8, tp, s5
                  sltiu        s3, t1, -719
                  lui          t6, 346783
                  and          a0, t3, tp
                  sltu         a6, a3, t2
                  sltiu        s2, s3, -862
                  and          s2, s0, s8
                  sra          a4, zero, s9
                  slli         s11, s8, 7
                  srl          a2, t1, tp
                  addi         t6, a7, -1574
                  andi         a7, t5, 23
                  slt          s8, s3, s3
                  sltiu        ra, s10, 1567
                  srai         gp, a5, 8
                  srl          t5, a2, t5
                  nop
                  xori         a1, s3, -1914
                  slti         t5, t5, 593
                  sltu         gp, s11, s9
                  add          t3, s10, a2
                  slt          s10, tp, s0
                  or           t3, s1, a0
                  add          a3, s4, t6
                  sll          gp, a4, s0
                  slt          gp, s7, ra
                  sltu         t4, t2, a1
                  ori          a3, a6, 1940
                  ori          a0, s1, 1300
                  nop
                  srl          sp, a7, s0
                  and          s0, a2, t4
                  srai         a0, a3, 28
                  addi         s3, t3, -579
                  slt          a4, a2, a5
                  sll          s7, a2, s0
                  srli         a1, s1, 5
                  ori          sp, t5, -417
                  slli         zero, a5, 11
                  srai         s9, s7, 13
                  slli         t4, s10, 14
                  sltiu        a2, ra, 1443
                  ori          s6, s6, 1227
                  srl          t4, s3, s8
                  srli         s0, s4, 24
                  slt          tp, a4, s7
                  addi         zero, s7, -1459
                  srai         s4, gp, 5
                  slli         a2, s5, 8
                  slti         t3, s9, -1961
                  sltu         a6, a3, zero
                  slt          t5, s6, s2
                  sub          a7, t2, s4
                  xori         a7, sp, 1689
                  xor          a0, t6, s9
                  slti         t3, s0, -770
                  add          s0, a2, s9
                  and          a4, s2, s2
                  and          s4, t5, a5
                  srli         sp, a0, 31
                  xori         s9, a3, 1207
                  nop
                  sltu         a1, zero, t4
                  sub          t2, tp, t1
                  or           a1, a7, ra
                  andi         s11, t5, -1713
                  slti         s0, s4, -1792
                  ori          s2, a3, 83
                  sltu         a1, a1, a6
                  or           a0, ra, a5
                  lui          s9, 300919
                  xori         s11, t2, 668
                  sll          t3, zero, t6
                  add          t2, a2, s8
                  slli         s0, s4, 20
                  slli         a1, s4, 7
                  sltiu        s0, t3, -1697
                  sra          a1, t3, s4
                  sll          s8, s4, s0
                  slt          s7, t3, s11
                  andi         s11, t0, 662
                  addi         gp, a6, 160
                  auipc        t4, 351874
                  nop
                  sub          t3, zero, s4
                  xor          a7, t5, t4
                  auipc        s1, 224608
                  sra          s8, s9, a4
                  andi         tp, a7, 844
                  slti         gp, s5, 849
                  srli         s1, s1, 18
                  slti         a1, t6, -1777
                  slt          s11, t3, t5
                  slti         a4, a7, -1509
                  sltu         ra, s3, tp
                  xori         a0, s5, 1292
                  or           s1, s11, ra
                  andi         s11, s0, 1837
                  and          a1, t6, s2
                  sltu         a2, tp, zero
                  srli         gp, t0, 4
                  srl          t2, a0, a0
                  xor          a3, t3, s2
                  nop
                  srli         s6, a3, 4
                  sltiu        sp, t0, 290
                  addi         sp, s11, 506
                  andi         t6, s0, 511
                  sltiu        s4, a2, -324
                  addi         s3, a2, -1238
                  or           a7, s6, s11
                  sub          t0, ra, t2
                  sltu         a1, zero, t4
                  auipc        zero, 851819
                  addi         a3, a7, 152
                  auipc        sp, 509727
                  sra          t2, a3, t2
                  addi         t4, t0, -1588
                  ori          t3, a1, 991
                  srli         gp, s0, 2
                  slti         s4, s0, -1964
                  and          s2, a2, ra
                  lui          a2, 651429
                  srai         tp, s5, 27
                  sltu         s3, t1, s1
                  srai         s6, s0, 13
                  andi         s1, a2, -1206
                  xori         s4, s10, -1269
                  addi         s1, s8, -2032
                  or           a0, s3, t1
                  sll          s7, a0, sp
                  slt          gp, t2, a2
                  and          a2, t3, a4
                  xori         s3, t4, -1206
                  or           s10, a3, t0
                  slli         s0, s8, 11
                  srl          a7, gp, gp
                  add          a7, s7, s5
                  srl          a3, s6, s9
                  sub          s9, t0, s0
                  and          s9, a2, s7
                  xor          sp, zero, a1
                  slti         s7, s11, -1326
                  andi         a0, s4, -691
                  sltu         s3, a6, a2
                  lui          s4, 146082
                  lui          a4, 221770
                  ori          s3, s8, -1756
                  sltiu        a6, ra, 974
                  sltiu        a7, a3, -285
                  slt          s8, a7, s2
                  sll          sp, a3, s4
                  sra          gp, s8, ra
                  lui          s7, 613819
                  or           s10, ra, a1
                  or           t5, t4, tp
                  srl          t2, s9, a7
                  lui          s4, 536642
                  sra          s4, a2, s5
                  srl          s6, a6, s3
                  sub          a2, s5, gp
                  srli         s7, s4, 24
                  slti         t5, s1, -1846
                  slti         s9, tp, 675
                  lui          a7, 690765
                  sll          s6, t1, s11
                  lui          a7, 370715
                  sub          s10, s1, t6
                  sltiu        s6, a7, 294
                  sltu         t6, a2, s10
                  sltiu        a6, s0, -757
                  ori          s3, t6, 125
                  xor          tp, zero, s5
                  sra          t3, a2, s0
                  srai         s3, sp, 16
                  slt          a2, s7, t6
                  srl          t0, s0, t3
                  xor          a2, a6, a6
                  or           t5, s3, t5
                  lui          s8, 159218
                  addi         s11, ra, 1312
                  and          t3, s8, gp
                  srl          a0, a3, s2
                  sub          a2, a5, a7
                  xor          a3, a2, t4
                  srli         t6, a1, 15
                  add          ra, a1, a6
                  auipc        t3, 349332
                  andi         a6, t5, -6
                  srli         a1, s1, 11
                  xori         s9, t6, -1141
                  add          s10, a5, a4
                  add          a2, s11, a4
                  and          a2, t0, sp
                  ori          s11, s6, 22
                  sltiu        s8, a7, -2048
                  xori         s0, t4, -1816
                  slli         s2, a6, 21
                  andi         s11, gp, 1790
                  srl          ra, s1, s5
                  sll          s4, t5, t5
                  lui          t4, 159076
                  xor          s8, ra, tp
                  xor          t4, sp, a5
                  auipc        t2, 772504
                  srli         t5, tp, 2
                  lui          s6, 321127
                  lui          zero, 159022
                  auipc        zero, 942843
                  sub          s11, t5, a7
                  lui          s0, 568705
                  ori          zero, s9, -544
                  sltu         s1, zero, t3
                  or           s8, tp, a0
                  add          s9, a2, s4
                  slli         s4, t3, 13
                  addi         s3, a1, -53
                  sltu         a3, tp, a3
                  auipc        a1, 372146
                  srli         ra, tp, 5
                  sll          s4, s11, a3
                  auipc        s9, 35498
                  nop
                  xori         t3, s1, -212
                  lui          t0, 120477
                  slt          a0, a7, a5
                  sra          s11, a5, ra
                  sltu         s7, s4, a5
                  srai         s3, s4, 3
                  xori         s8, t3, -1335
                  xor          a2, t1, s8
                  sll          s6, t5, a5
                  srai         a4, a5, 17
                  addi         a4, s2, -779
                  sll          s7, s9, s11
                  and          t3, s5, ra
                  sltiu        a2, t6, -236
                  lui          zero, 759980
                  nop
                  ori          ra, a1, 1966
                  slti         zero, t0, -981
                  sub          s8, a2, t3
                  slti         s9, t4, -817
                  addi         sp, s2, 164
                  xor          a3, s10, a4
                  sltu         s9, t1, s5
                  slli         a6, s6, 13
                  sltiu        a4, s10, 765
                  add          a4, a0, a0
                  slt          gp, s8, a0
                  sll          s9, s10, s4
                  xori         s9, t4, -946
                  sltu         t0, s9, s9
                  xor          t3, a1, s4
                  slli         a0, s1, 1
                  xori         tp, t5, 55
                  sltu         s8, ra, t4
                  sltiu        tp, s6, -1753
                  sltiu        s6, t4, -554
                  add          a7, a6, t4
                  ori          s1, a0, 1757
                  nop
                  and          s7, s6, a4
                  add          s8, t3, t1
                  slli         t0, s11, 28
                  xor          a2, s11, sp
                  srli         s2, s10, 12
                  and          s3, s8, s9
                  srai         t2, gp, 29
                  slt          a6, s1, s8
                  slli         t2, a0, 9
                  and          t6, s9, t0
                  srli         s7, s10, 8
                  auipc        s7, 999677
                  andi         t4, s1, 150
                  nop
                  srl          s8, a0, s5
                  sltiu        t5, s9, -890
                  addi         a3, s5, 843
                  xori         s4, t0, -1694
                  slli         a6, s3, 8
                  slli         sp, s8, 0
                  andi         a6, t6, -1941
                  nop
                  xor          s1, t5, t5
                  ori          a2, s7, 1034
                  andi         gp, zero, -1760
                  or           a7, t1, t1
                  xor          a3, a3, a6
                  sra          s8, a3, s9
                  srai         s10, zero, 2
                  or           t3, a0, s9
                  sub          s3, zero, zero
                  xor          s11, t1, s1
                  or           s1, zero, a1
                  slti         a4, a6, 1163
                  ori          a3, a5, -468
                  auipc        s10, 219603
                  auipc        s0, 840492
                  andi         tp, s0, 1143
                  srai         t5, t4, 4
                  sltiu        s10, a1, 1376
                  add          sp, t5, a3
                  xori         s8, a2, 1043
                  or           a6, a4, zero
                  srai         a1, s1, 21
                  sub          s2, t0, s0
                  slli         zero, sp, 18
                  xori         t0, a4, -1279
                  srai         s2, tp, 22
                  sltiu        s4, s0, 1447
                  xori         s0, a0, -60
                  srai         s11, tp, 24
                  slli         a7, t2, 19
                  slti         s7, s8, 207
                  addi         s8, s5, 1621
                  ori          s4, t1, 914
                  sll          t2, s7, a4
                  sltu         ra, a3, gp
                  xori         s7, a7, -1342
                  xor          a4, t0, t6
                  nop
                  srl          s7, s7, a1
                  auipc        a7, 70291
                  xori         gp, a6, -619
                  slti         t5, s4, -97
                  add          a1, s5, a5
                  slt          t2, s5, s7
                  auipc        s1, 80744
                  or           t3, a3, s11
                  sra          s6, t4, a2
                  sll          s3, a4, s11
                  ori          tp, a3, 1648
                  or           tp, s6, a0
                  slli         a1, t3, 2
                  sltu         s0, a7, a6
                  srai         zero, t2, 7
                  add          s1, s0, a3
                  xori         zero, s8, -166
                  and          sp, a5, s1
                  xori         s3, s6, 376
                  srli         gp, t6, 18
                  add          s1, t6, ra
                  srl          a7, s6, s11
                  or           zero, s2, s5
                  add          t3, t6, a4
                  add          s1, s1, s8
                  ori          t4, s0, 1449
                  sltiu        t2, s5, -644
                  slli         t5, s11, 30
                  add          s8, a2, a4
                  srl          t0, s11, a7
                  slli         ra, sp, 20
                  sll          t0, t0, t1
                  and          sp, t0, s11
                  xori         t3, t1, -292
                  and          t3, s4, t2
                  srli         s7, gp, 19
                  slli         tp, s10, 11
                  xor          t3, sp, zero
                  xori         s11, t3, 1239
                  add          t5, a7, gp
                  slt          gp, t6, t6
                  slli         s8, s11, 31
                  sub          a7, s11, a1
                  or           tp, s2, a7
                  and          t2, s9, a3
                  or           s1, t6, t2
                  srl          a7, s2, a4
                  slli         t3, t1, 9
                  srl          tp, s0, t0
                  andi         a0, sp, 891
                  srai         a4, s9, 30
                  addi         t0, s0, 573
                  ori          a4, s9, 1670
                  slt          ra, s2, s7
                  srl          t5, a1, a5
                  slt          t6, a4, a6
                  sltiu        ra, a0, 485
                  sltiu        a6, ra, -1061
                  sltiu        t2, s4, -1226
                  srai         a3, s3, 12
                  srl          s2, s10, s3
                  andi         t6, a1, 725
                  srl          s9, t6, sp
                  add          s7, a4, s6
                  lui          a1, 790380
                  nop
                  xori         s0, a1, 714
                  andi         a2, a1, 956
                  sltu         a1, s7, zero
                  slli         ra, ra, 25
                  xor          s1, s1, s7
                  and          s4, s2, zero
                  nop
                  add          a2, a4, t5
                  xor          s8, t1, a3
                  xor          t5, s1, s3
                  slli         a7, sp, 22
                  xori         s8, s8, -1104
                  auipc        s6, 295287
                  srl          gp, ra, ra
                  nop
                  srli         s1, t2, 14
                  xor          t5, a6, s7
                  xor          t0, a5, a3
                  sltiu        t6, s2, -863
                  andi         t3, s11, 1303
                  srai         s3, t0, 25
                  addi         a6, s2, -434
                  xor          s10, s2, a2
                  sltiu        sp, a2, -1516
                  slt          s10, s2, s5
                  and          gp, t0, a3
                  ori          a1, s4, 322
                  add          ra, a4, s6
                  sltiu        s4, a3, -1882
                  addi         t0, s11, 1439
                  srai         t6, t0, 29
                  sub          s3, sp, t3
                  andi         s0, s1, -1415
                  srai         s3, s8, 31
                  slt          s1, a1, s7
                  add          t6, s9, a3
                  sra          s11, s11, s4
                  sra          ra, s5, s6
                  sub          a3, s2, s0
                  xori         s6, tp, 396
                  sll          t4, a4, ra
                  slli         s11, t0, 2
                  add          t6, s1, a2
                  sll          a6, t6, sp
                  or           tp, s0, zero
                  sltiu        t0, a1, 996
                  andi         ra, ra, -1948
                  add          s8, s9, s9
                  xor          a0, s4, s7
                  and          a4, tp, s2
                  andi         tp, t3, -106
                  auipc        s8, 566422
                  slli         s3, s2, 20
                  srli         a4, s0, 0
                  add          s6, t1, s7
                  sra          a7, a3, a4
                  auipc        a1, 272984
                  lui          t2, 588952
                  srli         sp, s9, 7
                  andi         s10, s2, 738
                  srl          a2, gp, sp
                  sra          s6, s4, sp
                  sltiu        t2, tp, -772
                  srli         s8, s11, 24
                  lui          a2, 350260
                  srai         t6, a7, 21
                  sra          s10, s0, s11
                  auipc        a4, 1030310
                  add          a2, s3, a3
                  srai         s11, a0, 2
                  sltiu        s1, a1, -249
                  auipc        t3, 885738
                  xor          t0, s3, a7
                  add          s1, a7, s11
                  sub          s3, t1, a5
                  srli         a0, s1, 9
                  sltiu        a2, s9, 64
                  addi         s10, a6, -18
                  sltiu        a4, a3, -1906
                  sub          t4, s2, a3
                  auipc        s7, 335141
                  sll          a0, t0, t0
                  or           sp, s5, t0
                  sltiu        tp, t1, -1073
                  andi         a0, s6, 1736
                  slli         s10, a2, 11
                  srai         s3, tp, 18
                  ori          zero, t5, 135
                  addi         s6, a2, 181
                  sub          s4, s9, s5
                  andi         a2, s0, -1656
                  add          a3, s6, sp
                  addi         s9, s8, -1459
                  slti         a1, s7, -1615
                  sra          s2, a2, a2
                  sltu         gp, t2, sp
                  and          sp, s10, t5
                  and          s2, t6, t2
                  xor          a7, s0, t3
                  andi         a4, s6, 871
                  srl          ra, t1, t2
                  srl          s10, gp, a7
                  slt          t5, t1, s9
                  addi         t5, s10, 1487
                  sra          t5, a1, tp
                  xori         t6, t4, -799
                  lui          s9, 139690
                  xori         s1, s7, 1242
                  nop
                  addi         ra, s3, 506
                  slt          a1, s10, a1
                  sll          s0, s11, a1
                  nop
                  slli         a7, s10, 30
                  or           s1, s5, t2
                  srli         a7, t3, 7
                  srai         a1, s8, 26
                  ori          t0, tp, 173
                  sltiu        a1, t5, 1290
                  addi         sp, s11, -1728
                  srai         s10, t2, 13
                  sll          s0, a3, a3
                  andi         s7, s8, -1004
                  andi         s8, ra, -245
                  slti         s9, s4, -140
                  srl          s2, t5, s3
                  add          a4, a2, s3
                  slti         s10, t5, -38
                  add          s1, a1, s11
                  or           a2, a4, t6
                  addi         sp, s1, -317
                  add          a1, ra, t3
                  sltu         gp, s4, t0
                  sltu         t4, a5, t4
                  sra          tp, gp, s11
                  sll          a1, a4, a5
                  sll          s2, s5, a0
                  sra          a3, s6, s2
                  srli         t0, gp, 2
                  add          tp, s6, s2
                  sltu         a0, sp, ra
                  xori         s1, gp, -1966
                  andi         s0, s10, 664
                  xor          s11, t6, t0
                  srai         s10, a3, 6
                  addi         a0, a2, 268
                  srai         sp, s1, 18
                  slli         zero, t3, 5
                  srli         a6, ra, 19
                  addi         a3, s11, -32
                  srli         s8, s7, 16
                  add          a1, t2, a2
                  sra          t2, a7, s5
                  xori         t2, a4, 1400
                  add          zero, t1, s6
                  addi         a2, s5, -2041
                  srl          s1, t2, t5
                  ori          t3, s3, 1322
                  lui          a4, 993156
                  srli         t4, t4, 26
                  slli         a0, tp, 11
                  slli         s7, s3, 12
                  srli         a1, s4, 31
                  sll          gp, s4, s4
                  slt          a3, s11, zero
                  srl          a6, s1, a4
                  ori          s11, a6, 664
                  sra          a7, a0, s4
                  lui          a4, 755582
                  slti         a0, s9, 497
                  xor          t4, ra, a2
                  srli         sp, s0, 13
                  xor          s1, t0, s2
                  sra          sp, a5, s8
                  slti         t6, t4, -311
                  addi         s4, a6, 603
                  add          t5, t2, sp
                  ori          zero, sp, -775
                  ori          s2, s3, -1175
                  sra          zero, t4, t6
                  slli         tp, s8, 25
                  and          s0, a0, ra
                  slli         a0, t4, 0
                  srli         a2, a5, 2
                  srai         s0, t5, 26
                  auipc        a6, 883264
                  nop
                  srli         sp, sp, 18
                  lui          t2, 848432
                  or           s11, a4, s5
                  lui          s4, 100451
                  slt          s10, t0, gp
                  add          t2, s6, s4
                  srli         gp, a0, 25
                  sll          a4, sp, sp
                  or           s4, s3, ra
                  andi         a7, a0, -832
                  xor          s10, s1, sp
                  xor          t5, s2, sp
                  and          s6, t5, t1
                  add          s2, s5, t2
                  slli         t0, a1, 0
                  slt          zero, s2, s10
                  sra          s11, s8, a5
                  add          ra, s2, ra
                  slli         t5, t6, 28
                  slt          a3, s2, ra
                  or           a7, t3, gp
                  or           t5, t1, a4
                  andi         s9, t3, 521
                  xori         t5, a5, -642
                  lui          tp, 748483
                  slli         t5, t5, 4
                  addi         s6, s8, -1843
                  sltiu        s11, t4, 614
                  slli         t5, s11, 9
                  srli         a3, t1, 15
                  srai         zero, s0, 14
                  slli         s0, gp, 27
                  sltu         t0, a4, a0
                  sub          a6, a2, a3
                  ori          s9, s5, -1045
                  lui          a6, 642386
                  addi         s0, s3, 1911
                  sltu         ra, a2, a3
                  sll          tp, s1, gp
                  srl          a3, tp, s4
                  sub          s6, ra, a1
                  lui          s6, 522791
                  ori          zero, sp, 1222
                  or           ra, a1, gp
                  sltiu        s9, s10, -610
                  andi         a4, zero, -1370
                  sltu         a0, ra, s4
                  sll          t3, a0, ra
                  ori          a4, gp, -860
                  nop
                  lui          t3, 575256
                  nop
                  slt          a4, t6, s10
                  slt          tp, tp, zero
                  srli         t5, s0, 17
                  addi         a4, zero, 889
                  slti         t4, a3, 1017
                  slti         a7, t2, 1490
                  sltu         a4, a0, s5
                  addi         a6, a3, 1206
                  addi         a1, t0, 756
                  ori          s4, s4, -540
                  andi         a6, gp, 219
                  or           t6, t3, s3
                  nop
                  slt          a2, s10, sp
                  xori         a2, a6, -1956
                  sra          s7, a1, s8
                  lui          s8, 390646
                  lui          t3, 37353
                  andi         a4, t5, 1065
                  addi         s6, t4, 695
                  srai         tp, s9, 6
                  slt          t3, tp, zero
                  srai         zero, s8, 16
                  xor          s2, s7, a5
                  slli         s11, a2, 2
                  andi         a4, zero, -1781
                  add          a0, a4, t4
                  andi         s4, tp, -718
                  srli         s4, a2, 1
                  slt          s3, sp, t6
                  sub          s6, t5, a4
                  slli         s1, zero, 6
                  xori         ra, a5, 552
                  srl          t3, a4, s10
                  srai         s1, t6, 2
                  lui          t4, 870330
                  xori         a0, a2, -1084
                  slt          gp, a0, a4
                  add          t0, s4, a0
                  lui          a4, 511916
                  or           t2, s0, s4
                  srli         s11, s9, 11
                  slti         zero, t0, -1431
                  slt          s11, gp, a2
                  slti         a4, s11, 1732
                  and          a6, a5, a6
                  srli         s0, t4, 29
                  slti         s7, t5, -595
                  or           a7, a3, zero
                  andi         s0, a3, 187
                  ori          s10, s5, 1039
                  slli         s9, t2, 24
                  sltiu        s11, a5, 779
                  and          s8, a5, a3
                  srl          ra, zero, zero
                  sltiu        s8, a0, 1800
                  sll          s10, s3, a6
                  lui          s9, 564972
                  sltiu        s11, s0, -280
                  sra          a4, s6, s1
                  slt          t0, t1, ra
                  lui          ra, 1029739
                  slli         t5, a6, 19
                  xori         s1, s4, -460
                  srl          s4, s10, s4
                  auipc        s2, 848708
                  ori          t4, a4, 546
                  srl          a7, a5, gp
                  sltu         a2, sp, t4
                  srli         a7, a3, 29
                  ori          a1, s9, 617
                  or           t6, zero, a1
                  addi         gp, s11, -304
                  ori          zero, s7, 823
                  sltiu        t3, a6, 1277
                  srl          s7, s1, zero
                  slt          s2, s7, tp
                  slli         s1, t6, 29
                  add          t6, a0, t1
                  sltiu        s0, s7, -1890
                  and          s9, s5, t1
                  xor          s3, s10, s6
                  sll          gp, s11, s10
                  lui          t4, 653596
                  ori          s2, s4, -843
                  sll          ra, s1, s2
                  add          s4, a3, a7
                  slli         s11, zero, 26
                  sll          a6, s2, t2
                  sub          gp, gp, t2
                  xori         zero, t4, 1553
                  addi         s0, s0, -1061
                  andi         tp, t4, 458
                  and          tp, s4, a5
                  andi         s3, a3, -1950
                  slti         s4, t2, -1063
                  xor          s6, a0, t2
                  srl          zero, t1, s1
                  sub          s3, t5, t6
                  srl          s1, s9, t4
                  lui          zero, 459824
                  and          zero, a2, s5
                  sltu         ra, s2, t4
                  slli         tp, zero, 26
                  sltu         s10, s10, a7
                  sub          tp, s3, a0
                  sltu         s6, s9, s9
                  sra          ra, sp, s3
                  sltu         s10, t0, s3
                  ori          gp, t4, -1363
                  auipc        a1, 198064
                  andi         tp, a3, -1747
                  xori         s0, t4, 683
                  addi         a2, s11, -228
                  slli         a2, s8, 31
                  and          a3, s1, t2
                  xori         t5, ra, -789
                  and          s6, s4, t6
                  sltu         s7, s2, t0
                  slti         s8, sp, 889
                  sltu         s2, s4, gp
                  addi         a3, a5, -1400
                  srl          s0, s5, a3
                  add          a2, s11, t6
                  srai         s9, t2, 22
                  sra          s9, zero, tp
                  lui          s1, 11683
                  and          t5, t2, a4
                  slli         t3, a7, 12
                  ori          t4, s8, 658
                  and          a0, gp, zero
                  sltu         s10, s5, s9
                  nop
                  nop
                  srli         sp, s5, 6
                  nop
                  andi         s0, t0, 1812
                  add          tp, t6, s10
                  sltiu        a0, s8, -210
                  add          a1, a5, s9
                  andi         s10, s3, 1056
                  add          t3, a0, t0
                  srli         zero, tp, 26
                  sll          t6, t1, s10
                  srai         s1, tp, 4
                  auipc        s8, 237619
                  sll          t3, t3, ra
                  addi         s3, t3, 532
                  slli         s1, t1, 21
                  slt          s6, s2, a5
                  xor          t6, s11, s8
                  or           t0, t3, s5
                  slt          a4, s0, t3
                  or           a0, a6, s6
                  addi         s8, t3, -228
                  addi         a3, t1, -1536
                  sll          a1, a7, a2
                  srl          a2, s9, a2
                  srl          t0, s8, tp
                  nop
                  and          s3, s3, a2
                  sll          s8, s2, t3
                  slti         s8, s1, -1486
                  xor          t0, s9, t3
                  ori          s10, t3, -1925
                  add          s8, s9, s7
                  srli         s4, t0, 5
                  addi         gp, a2, -777
                  and          s8, s1, t6
                  xor          gp, sp, s9
                  slt          t5, s0, s1
                  and          t2, a0, s6
                  srli         tp, a7, 10
                  sltu         t5, t0, s8
                  slli         s1, s9, 8
                  add          tp, s3, t4
                  or           a2, ra, s10
                  addi         s1, t2, -1922
                  lui          a7, 164418
                  xori         s8, t1, 761
                  andi         s7, t2, 1564
                  slti         gp, ra, -222
                  xori         t0, a0, 225
                  xori         s6, s5, 1682
                  srl          s7, tp, a7
                  slti         sp, s5, -1944
                  slti         s1, t1, -271
                  lui          s9, 524114
                  slt          s7, tp, a5
                  sltu         zero, s1, s4
                  sra          s7, a1, gp
                  srl          t3, a0, s3
                  add          t0, s3, t2
                  srl          t0, a0, t3
                  addi         tp, s9, -1623
                  sub          s0, a5, a6
                  add          s7, t1, zero
                  and          s8, t3, a7
                  sll          a3, s7, s8
                  sll          s6, t1, s6
                  slt          gp, t4, s3
                  sltiu        t0, a1, 1384
                  xori         s1, s0, -539
                  slt          a2, s0, sp
                  xor          t0, sp, a0
                  slt          s8, s9, t6
                  slli         a3, s7, 28
                  xor          a6, t3, s6
                  sltu         s6, t3, s1
                  sra          s4, gp, s10
                  sltu         a1, t4, t6
                  nop
                  slli         t5, s3, 1
                  add          s10, zero, ra
                  auipc        a1, 645796
                  andi         a1, t0, 1225
                  auipc        a1, 213112
                  auipc        s10, 463214
                  srli         s4, s4, 21
                  ori          a3, t1, 233
                  srli         s8, t2, 11
                  auipc        s11, 1007951
                  srli         s9, tp, 4
                  ori          gp, zero, 1550
                  slli         a6, s5, 5
                  addi         a4, a6, -24
                  slt          tp, a2, sp
                  nop
                  srl          t3, s9, t1
                  or           ra, a1, s9
                  auipc        t2, 933775
                  srai         sp, s6, 18
                  sltiu        t0, zero, -140
                  xori         tp, t6, 1625
                  sub          s0, s11, s2
                  ori          a0, s3, 788
                  sub          gp, a5, a0
                  sub          a1, a4, a1
                  sltu         s9, s10, s9
                  sll          a1, s2, zero
                  addi         a4, s7, 1248
                  add          a0, t4, sp
                  xor          t5, sp, s11
                  sll          s1, t4, t3
                  xor          t5, a4, s5
                  nop
                  add          a0, t4, t3
                  auipc        s9, 594699
                  lui          a1, 232502
                  sltiu        t2, sp, 1281
                  sll          s4, a2, s0
                  sra          zero, s9, t1
                  or           tp, s1, gp
                  andi         sp, s3, -1089
                  xori         t3, tp, -1334
                  and          t3, t1, t6
                  and          s11, t3, t0
                  sll          s1, zero, gp
                  slli         a0, a3, 19
                  sub          s1, s1, a6
                  ori          a7, s9, -620
                  add          s11, t1, t1
                  andi         s2, a2, 1051
                  lui          s3, 446298
                  xori         t5, ra, -1330
                  add          s6, tp, s3
                  add          t6, zero, a1
                  sll          t2, s6, a2
                  sll          a1, tp, s1
                  slt          tp, sp, s1
                  andi         s11, t4, 1
                  sra          s9, tp, ra
                  sll          a6, zero, gp
                  sltiu        sp, s8, -887
                  or           a1, s5, a0
                  slli         s4, tp, 0
                  or           s2, a6, s11
                  xori         t3, sp, -1317
                  slli         t4, gp, 6
                  sra          s2, s9, a3
                  sub          a0, t5, s3
                  addi         t4, t0, -358
                  srli         s2, s5, 12
                  slti         s4, s8, -294
                  addi         ra, a2, -346
                  and          ra, tp, t2
                  sra          s6, t2, gp
                  addi         a0, s5, 373
                  srai         t0, t6, 2
                  xor          s4, s11, a5
                  andi         t5, t6, -1576
                  andi         s4, s10, -989
                  sltiu        t6, s8, -541
                  addi         s2, s2, -834
                  slti         a3, s2, 1851
                  srli         t6, a2, 16
                  sltiu        a4, ra, -1412
                  add          s3, a6, s8
                  srli         s3, a6, 26
                  slti         s1, a4, -903
                  slli         ra, s9, 15
                  andi         t4, a3, -84
                  add          s11, a7, t0
                  slli         a4, t1, 17
                  sra          a0, gp, t3
                  sltu         t4, t5, s1
                  and          a2, sp, s9
                  auipc        a7, 45719
                  sltu         s2, a0, a1
                  slt          t2, t0, s4
                  sub          s7, zero, s10
                  lui          a3, 377487
                  sltiu        t5, t3, 382
                  xori         zero, gp, 1251
                  sll          t0, gp, s10
                  or           s3, t2, a7
                  srli         ra, s4, 7
                  sll          a2, zero, gp
                  lui          t4, 801125
                  or           a7, s4, gp
                  slt          tp, a3, a0
                  sltu         t5, zero, s1
                  srai         s6, a4, 13
                  slli         s3, t5, 17
                  nop
                  srli         a1, t4, 29
                  slli         s3, t5, 29
                  sra          t0, s10, s9
                  slli         a6, s5, 22
                  srli         t0, gp, 14
                  srli         s8, s2, 1
                  srli         tp, a1, 14
                  andi         s2, s5, 1873
                  or           a1, t3, a4
                  addi         tp, gp, 1306
                  srli         a3, t3, 16
                  slt          ra, zero, s6
                  sll          a0, a6, a4
                  srai         t4, a4, 9
                  add          t4, gp, s2
                  andi         a1, tp, -902
                  addi         ra, s0, -47
                  ori          a1, a1, 1070
                  xor          s8, s10, s2
                  sra          t5, a3, s11
                  and          sp, s11, ra
                  xor          gp, s8, a0
                  sll          zero, t5, tp
                  srai         s3, s11, 9
                  ori          s7, s10, -1471
                  ori          ra, s8, -1393
                  sra          gp, s1, t0
                  xori         t6, s2, -271
                  srli         a2, a4, 19
                  nop
                  sra          s4, zero, ra
                  sll          sp, t3, s1
                  add          tp, s4, s8
                  slli         t0, sp, 0
                  sra          sp, a6, t6
                  slti         tp, zero, 264
                  xor          tp, ra, ra
                  slti         s0, t4, -289
                  sra          a1, s11, a5
                  lui          zero, 717324
                  nop
                  sltiu        tp, t6, -1015
                  sltu         s2, a2, s11
                  srl          a6, gp, s8
                  sltu         t6, gp, a2
                  srli         t2, s0, 14
                  lui          a1, 273598
                  srl          a6, a2, t0
                  srli         a6, a4, 17
                  or           s6, ra, gp
                  sltu         t2, t2, s11
                  slti         a1, s9, -388
                  xor          s8, s1, a6
                  auipc        a4, 243452
                  sub          t0, t6, tp
                  lui          s6, 321032
                  srli         a7, s8, 5
                  lui          s3, 789130
                  nop
                  auipc        s2, 663139
                  sltiu        a6, gp, 1705
                  xor          s3, s6, ra
                  add          t3, t0, s3
                  xori         s3, t2, -619
                  slti         t2, a2, -1563
                  add          a6, a7, t5
                  and          s4, s8, s9
                  sltiu        s7, a4, 369
                  auipc        zero, 417864
                  nop
                  sll          a6, t2, a3
                  slt          a3, a4, t6
                  srli         a1, s8, 30
                  and          t3, t6, s0
                  sra          s9, t4, s1
                  sltu         s6, s7, s5
                  srli         s4, s6, 18
                  andi         a1, s5, -687
                  slt          a1, zero, s8
                  slt          s11, s7, a4
                  ori          s1, t4, -1130
                  srli         s2, t2, 28
                  lui          t6, 927755
                  lui          s11, 426496
                  and          zero, s8, s9
                  sra          s2, zero, a6
                  slti         s8, s8, -1520
                  add          s9, s4, t0
                  ori          sp, a6, 991
                  sra          s7, s4, s7
                  andi         ra, ra, -178
                  slli         a0, s8, 13
                  addi         t5, t3, 1565
                  sub          t5, a7, a4
                  slti         s6, a2, -1969
                  auipc        s2, 410021
                  xori         a0, s3, 4
                  xor          s1, t3, sp
                  srl          ra, a2, t6
                  srli         a2, t4, 15
                  lui          t6, 486075
                  sltu         s2, s2, s4
                  slli         tp, s6, 18
                  xori         s0, s4, -1340
                  and          s1, t1, t4
                  sll          s8, s1, a2
                  sra          t5, a5, tp
                  sra          gp, tp, a2
                  xor          a2, s2, ra
                  addi         s3, ra, -1454
                  andi         sp, s10, 461
                  auipc        s2, 870513
                  auipc        a4, 962437
                  slt          a4, gp, ra
                  andi         s0, t0, 857
                  srli         s4, t2, 11
                  slt          zero, s10, t4
                  or           s2, s4, ra
                  xori         a3, s0, 1260
                  addi         zero, s1, -1901
                  xor          t2, s1, s7
                  sra          s10, ra, s5
                  and          s6, sp, s3
                  srl          t3, s3, s4
                  xor          a6, s0, a0
                  xor          t4, s11, t2
                  sub          s1, s9, s10
                  add          s10, t3, t2
                  slt          a0, t4, t4
                  sltu         s9, s5, t3
                  slli         s9, s0, 23
                  slli         a4, a5, 17
                  sll          t5, t4, a7
                  sltiu        s7, tp, 690
                  add          ra, a0, tp
                  xor          s11, a5, s9
                  xori         gp, t5, 1348
                  xor          t0, gp, a4
                  slli         ra, a4, 14
                  sltu         a1, t4, a5
                  sltiu        s6, t3, -1077
                  sltu         t6, a1, s10
                  sll          s7, s4, s6
                  addi         s10, t1, 1876
                  sra          t4, s4, s8
                  srai         t4, a4, 8
                  add          t0, sp, t2
                  sltu         s7, t0, zero
                  add          s8, s8, zero
                  andi         sp, s4, 705
                  xor          gp, s9, s10
                  srli         s6, a4, 13
                  addi         s7, tp, 1488
                  sltu         tp, sp, s1
                  sll          a6, s2, s11
                  andi         t5, a6, -1903
                  srli         t2, a2, 13
                  ori          s11, t3, -1963
                  auipc        s1, 986719
                  sll          s3, t3, a6
                  auipc        s3, 452758
                  sub          s10, t4, a6
                  slli         a2, s5, 1
                  sll          a6, a5, ra
                  sub          gp, t4, ra
                  slti         sp, tp, 134
                  sub          ra, t5, a6
                  sra          s8, t4, a3
                  or           a6, s9, t2
                  xor          a4, a3, a3
                  auipc        s2, 221522
                  srl          s8, t6, t0
                  ori          tp, t0, 851
                  slli         s1, a2, 10
                  or           a6, a1, a1
                  add          s10, t4, a6
                  sra          a4, s1, sp
                  ori          t3, s11, -2011
                  sra          s8, s6, a2
                  andi         t4, s7, -436
                  slt          a4, t5, s11
                  xori         t3, ra, -451
                  slt          s11, t6, zero
                  sltu         a7, a6, a0
                  xor          zero, a5, a0
                  ori          s11, t3, -419
                  slt          t6, s8, a5
                  ori          a1, s2, -111
                  slti         s10, t6, 1618
                  slti         s1, zero, 1623
                  srli         tp, tp, 18
                  add          tp, a2, tp
                  or           s2, s4, s2
                  srli         s11, t1, 20
                  sra          s4, s5, tp
                  nop
                  srl          s8, t6, tp
                  sll          a1, t1, s8
                  sltu         t6, a4, a3
                  auipc        a7, 744257
                  or           a2, a6, a6
                  srli         a6, s0, 28
                  sltu         a3, s4, t4
                  ori          s0, s1, -1380
                  sltiu        s9, zero, -923
                  xori         s1, s3, 697
                  xor          a7, t4, s9
                  andi         s9, s5, 3
                  slt          a1, s10, a6
                  slti         a6, gp, -1974
                  add          zero, s11, a0
                  ori          s9, s1, -1502
                  sltu         sp, t5, s5
                  srli         s4, s3, 18
                  addi         t2, t4, -601
                  andi         t0, s9, -172
                  and          a4, t1, s7
                  sra          t2, t6, s4
                  srli         ra, s4, 30
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           tp, 0x9a050c37
                  li           a2, 0x0
                  li           s7, 0x0
                  li           s2, 0x80000000
                  li           gp, 0x0
                  li           s6, 0x3c23a6f6
                  li           s11, 0xc172b9db
                  li           s8, 0x5a2fdb66
                  li           ra, 0x0
                  sub          gp, gp, s7
                  addi         a2, tp, 1160
                  sub          s11, s8, t2
                  addi         tp, ra, -935
                  auipc        s11, 804947
                  add          a2, ra, gp
                  lui          tp, 1032162
                  lui          ra, 11621
                  add          ra, s8, s2
                  auipc        s8, 340074
                  auipc        s11, 935419
                  addi         s8, s8, -1708
                  sub          tp, s11, tp
                  nop
                  auipc        a2, 562286
                  add          t2, ra, s7
                  nop
                  lui          s6, 836415
                  auipc        a2, 43096
                  sub          gp, s11, tp
                  lui          ra, 412531
                  addi         a2, gp, 317
                  lui          tp, 930245
                  nop
                  nop
                  addi         s2, t2, 1557
                  lui          a2, 1023603 #end riscv_int_numeric_corner_stream_1
                  andi         t0, a6, 781
                  xori         a3, s8, 198
                  xori         sp, a7, -1178
                  srai         t2, a1, 27
                  sra          s9, s8, s1
                  slli         s1, ra, 22
                  or           s10, a0, sp
                  sltu         a6, s4, a0
                  sltiu        s2, t1, -1915
                  srli         a1, a3, 26
                  xor          a3, a0, s9
                  andi         s3, ra, -868
                  or           t5, s4, t5
                  srai         a2, a7, 26
                  xori         t6, a7, -742
                  lui          s11, 704777
                  sltu         s10, t2, t6
                  srai         s2, t1, 7
                  slt          t3, a4, tp
                  sra          s4, t3, a0
                  srl          s6, t1, s9
                  add          s7, sp, s6
                  srli         t2, t2, 24
                  nop
                  addi         t5, s4, -1719
                  slti         s11, ra, 1863
                  slt          a1, s2, a2
                  sll          a7, t2, ra
                  slli         s10, s2, 12
                  auipc        a7, 145814
                  srai         zero, s7, 7
                  slli         tp, s6, 10
                  slti         gp, s6, 342
                  slt          a4, a6, t5
                  sltiu        s11, t4, -957
                  srli         a2, a1, 14
                  sub          a2, s8, a1
                  sra          s1, a2, s7
                  andi         a1, a2, -1138
                  auipc        s10, 800509
                  andi         s8, a3, -1426
                  add          s7, sp, t4
                  lui          t6, 820667
                  sub          gp, s7, t6
                  add          s3, gp, s0
                  auipc        s3, 816212
                  srli         t3, s2, 20
                  andi         a4, t5, 358
                  slli         zero, tp, 25
                  ori          s10, s3, -1920
                  slt          a2, a2, s7
                  lui          a2, 477316
                  and          t4, a4, t4
                  sub          t2, t2, s0
                  addi         t6, s9, 1351
                  sub          t6, t2, t2
                  sub          s6, t3, s11
                  xor          gp, a1, s7
                  xor          t4, a7, s9
                  xor          s8, sp, sp
                  xor          s9, t0, sp
                  add          t5, s7, tp
                  slli         t0, a3, 30
                  auipc        ra, 240978
                  xor          s2, s4, s5
                  xori         t6, a5, 1081
                  nop
                  srl          a6, zero, s5
                  slti         a3, a0, -1486
                  lui          t4, 1025752
                  xori         s2, a2, -291
                  nop
                  or           t5, a0, sp
                  andi         t6, a4, -443
                  srl          a3, s10, s2
                  slt          s8, t3, gp
                  and          a3, t3, s8
                  sltiu        s1, s8, -1888
                  slt          s6, s9, s7
                  sll          a3, s6, t3
                  addi         zero, zero, -1568
                  ori          t4, ra, 1567
                  xori         s11, a7, -1167
                  srai         t3, t6, 31
                  lui          s0, 274125
                  srai         a4, t5, 28
                  andi         s3, s8, 1832
                  auipc        t6, 902044
                  xori         s1, s1, 452
                  or           t4, t1, s5
                  andi         a3, a5, -1050
                  sll          a3, ra, a4
                  srl          s8, t4, a3
                  nop
                  auipc        t0, 682061
                  sltu         s1, a5, t5
                  sll          s2, a0, t1
                  add          gp, s0, a5
                  sll          a3, s0, a5
                  andi         s4, tp, 38
                  srai         a0, s4, 26
                  xori         t3, a0, -2009
                  sltu         a7, s1, tp
                  nop
                  xor          s2, t3, t3
                  srli         t3, s10, 5
                  sub          s2, s0, a5
                  slt          s8, s6, a6
                  lui          a7, 730930
                  addi         a6, a7, 1577
                  xori         zero, s2, -690
                  srli         t5, s2, 9
                  xor          sp, a6, s6
                  sll          t2, ra, s1
                  sra          s0, a4, ra
                  slt          s6, s7, s1
                  slti         gp, a7, 123
                  sltu         s9, s6, s11
                  sltu         t0, s7, a7
                  auipc        s3, 299257
                  sltiu        t2, s1, -1612
                  andi         sp, s9, 1845
                  ori          tp, t0, 686
                  sub          t3, t6, sp
                  auipc        a6, 550791
                  srai         s10, t3, 27
                  lui          t0, 264736
                  nop
                  sll          tp, s3, sp
                  ori          t3, s11, 1492
                  sra          s7, t4, ra
                  addi         t3, t5, 1503
                  add          t5, s2, s10
                  xor          s8, s4, tp
                  and          s11, s7, s5
                  auipc        s7, 288498
                  sra          s10, a3, s9
                  lui          ra, 419510
                  add          t2, t0, s0
                  sltiu        s8, a1, 1755
                  lui          s11, 202957
                  and          a3, s0, t2
                  or           t0, s4, a1
                  ori          a1, t5, 1162
                  srai         a3, t3, 31
                  sll          s2, s7, a5
                  srli         t0, s8, 11
                  sub          s2, t2, a5
                  ori          a2, s10, -1234
                  sltu         s7, a7, a4
                  sra          a2, a6, t3
                  srl          a4, ra, a3
                  and          t2, s5, s3
                  ori          s11, a0, 778
                  xor          a2, s10, sp
                  srai         t3, sp, 0
                  slli         s6, s7, 15
                  srli         a0, s8, 16
                  sub          a7, a7, s9
                  and          tp, a4, s2
                  slti         s1, s1, -19
                  addi         sp, s9, 355
                  nop
                  srai         a2, s1, 15
                  and          s7, a2, a3
                  xori         s8, sp, -176
                  or           s10, t5, t6
                  xori         t2, t6, -619
                  nop
                  slti         s8, s3, 1390
                  sll          s0, s0, sp
                  slli         t0, s1, 11
                  xor          t4, t4, s8
                  andi         sp, t3, -892
                  xor          t0, a1, gp
                  sub          s0, a4, a7
                  nop
                  xori         sp, t5, 746
                  andi         s2, t2, 105
                  sltu         sp, a1, t0
                  slti         sp, t1, 1019
                  slli         a1, a7, 10
                  ori          a7, s9, -174
                  slli         zero, s2, 4
                  sltiu        s6, s8, -1049
                  slti         s10, t2, 867
                  lui          t2, 681188
                  slli         a3, a4, 0
                  auipc        t4, 543431
                  auipc        sp, 947548
                  ori          t6, t0, 477
                  xor          a1, s0, ra
                  or           a3, s2, t1
                  srli         t5, a0, 31
                  ori          s8, t5, -1711
                  and          a1, a1, s10
                  andi         t2, t4, 181
                  addi         s8, s6, 779
                  lui          s1, 236397
                  or           ra, s11, s8
                  lui          zero, 102832
                  slli         s1, s11, 16
                  and          s10, s0, sp
                  srl          t0, s0, gp
                  slti         s6, a2, 417
                  sub          t6, s0, s6
                  auipc        a6, 358850
                  xor          tp, a2, s1
                  addi         s8, t6, 1531
                  lui          tp, 718408
                  nop
                  slti         s9, sp, -1569
                  auipc        a2, 804905
                  slli         s6, ra, 15
                  srai         a6, s8, 22
                  andi         s11, s8, -1639
                  sll          s2, s9, s10
                  sltiu        s2, a3, 1238
                  auipc        zero, 28795
                  or           s11, t5, zero
                  ori          t6, s2, -2003
                  or           a6, tp, sp
                  ori          t4, s8, 1629
                  auipc        s1, 1031927
                  nop
                  lui          s0, 148396
                  auipc        s7, 920549
                  sub          sp, t1, a5
                  sll          a1, s4, s2
                  slli         a3, tp, 3
                  lui          ra, 233028
                  slt          s3, s2, s9
                  ori          s11, a4, -940
                  srli         s4, a6, 28
                  and          a2, zero, s6
                  sltu         a0, sp, t0
                  sub          s9, a6, t2
                  sll          s1, t2, s3
                  xor          a7, a6, s2
                  add          s11, t2, a1
                  sltu         a6, tp, s4
                  nop
                  slti         s2, t0, 1352
                  or           t0, s6, s2
                  auipc        s10, 790431
                  addi         zero, tp, -1586
                  auipc        gp, 509629
                  nop
                  lui          zero, 369273
                  srli         a3, gp, 15
                  andi         t5, s6, -382
                  or           ra, t1, s0
                  sltu         t2, s2, t5
                  slt          a6, s2, s9
                  srli         a6, t4, 4
                  slli         sp, gp, 4
                  sll          s9, s0, t1
                  and          a1, s4, a6
                  sra          s4, s2, a6
                  sub          s8, s7, s3
                  slt          a4, t2, a5
                  andi         a4, a5, 68
                  slti         s2, s7, -373
                  sub          s1, a1, s1
                  xori         t3, s0, -743
                  lui          gp, 657496
                  srli         t2, s11, 28
                  slti         a1, tp, 1082
                  sub          a0, t1, a7
                  srai         a6, a6, 0
                  or           s3, s6, s9
                  sll          a2, t6, s0
                  sll          gp, s8, a2
                  slt          s10, t4, a0
                  slli         s1, s4, 11
                  srl          t0, a4, sp
                  sll          zero, a0, s9
                  and          t2, s0, t1
                  sll          a7, zero, t0
                  sltiu        t4, s4, -281
                  add          sp, tp, t5
                  ori          s1, s5, 806
                  auipc        t4, 497736
                  srli         a0, a0, 6
                  srli         a4, s0, 15
                  sra          t2, t6, s1
                  nop
                  srli         s0, ra, 20
                  ori          a6, t1, 278
                  sltu         gp, a7, a0
                  xor          t0, s9, s6
                  ori          s2, t5, 977
                  andi         s0, tp, -425
                  slt          s7, a3, a0
                  nop
                  andi         s7, a6, 1375
                  slti         sp, s8, 603
                  slt          s6, a3, tp
                  sltiu        ra, t0, -487
                  sub          t6, a5, t4
                  auipc        s2, 354253
                  srli         s3, s9, 9
                  srli         t4, gp, 24
                  sltu         s6, s3, t5
                  and          s11, gp, s1
                  sltu         t5, tp, s7
                  sltu         sp, sp, a7
                  xor          s4, s5, t4
                  add          t6, a7, s10
                  and          s10, t6, s8
                  sltiu        a2, a5, -636
                  and          t6, t1, t1
                  sltiu        s6, zero, -1231
                  sub          a2, a6, zero
                  or           t0, s2, s4
                  lui          a4, 90632
                  ori          s3, s4, -1605
                  auipc        s6, 467883
                  or           t2, a0, s6
                  slt          a3, a0, s6
                  sra          s9, s2, s8
                  sll          t4, s11, s8
                  sll          s0, s7, s10
                  addi         s8, t2, -826
                  lui          a2, 555007
                  nop
                  srli         tp, s2, 9
                  xori         zero, s8, -917
                  xori         ra, s1, -492
                  and          s8, a2, a4
                  add          t4, a7, s4
                  sub          a3, a0, t0
                  addi         tp, a0, 1755
                  xor          s6, t4, s11
                  and          a0, s11, a2
                  auipc        s3, 239152
                  srli         s2, s3, 2
                  sltu         gp, a3, s8
                  addi         t3, sp, -810
                  auipc        zero, 620279
                  sll          s9, a7, s0
                  sll          ra, s4, a1
                  or           t3, s0, a0
                  sll          s10, gp, t0
                  or           t3, zero, s5
                  srai         sp, s9, 30
                  xori         a7, s4, 723
                  sll          a6, gp, t5
                  sltiu        tp, s10, -1220
                  nop
                  srl          s8, t0, t5
                  sll          t2, zero, s10
                  srai         a3, a5, 27
                  auipc        s3, 229912
                  add          ra, sp, a4
                  srai         s11, a5, 22
                  add          s4, t4, t5
                  sltiu        t5, t1, -970
                  srai         a6, t3, 6
                  nop
                  srai         s7, t4, 19
                  sltiu        a0, s9, -1448
                  ori          t3, t6, 99
                  sltiu        a4, s8, -1309
                  xori         t5, a1, 326
                  sub          ra, ra, s2
                  xor          s2, a5, t5
                  slli         t6, s5, 30
                  xor          t3, t5, ra
                  sll          s1, a4, t4
                  andi         s11, a4, -1313
                  srli         a6, sp, 16
                  addi         t0, a4, -1673
                  andi         a4, tp, -125
                  add          gp, s5, s7
                  xori         a1, t5, -568
                  or           s2, s10, s8
                  sll          s7, sp, t3
                  addi         t3, tp, -1543
                  xori         s9, s0, -1196
                  slt          a3, s4, t0
                  slti         s0, t6, -1424
                  sll          s3, s9, a3
                  sltiu        a6, s10, 232
                  sub          a3, s11, t0
                  xor          t5, t1, a7
                  xori         t3, t6, -1001
                  and          t6, sp, s9
                  xori         t4, t0, -1079
                  srli         a3, t4, 20
                  slti         ra, a1, -1763
                  slt          a7, s10, t6
                  andi         s1, s11, -1532
                  xori         a0, a5, 68
                  xor          t6, tp, s3
                  sra          s6, s7, s0
                  srli         a4, t5, 30
                  slli         s11, t1, 15
                  andi         s10, t2, 1301
                  auipc        ra, 721000
                  auipc        s8, 856678
                  or           s4, s0, s3
                  auipc        s9, 833405
                  nop
                  nop
                  lui          t6, 144117
                  slli         s9, a7, 7
                  add          a6, sp, s5
                  xori         t2, a5, 491
                  addi         a7, s2, -1188
                  slti         a1, a6, -997
                  srai         a4, s8, 1
                  lui          ra, 470164
                  slt          s0, s9, a3
                  and          a4, s4, s1
                  or           ra, a0, a1
                  addi         a0, s5, -688
                  sub          t2, t4, a5
                  sltu         t2, a5, a2
                  xor          zero, a6, s8
                  auipc        s8, 84237
                  sltiu        t2, t0, -4
                  auipc        a0, 404565
                  sll          s1, t2, s1
                  srli         s11, a0, 17
                  or           s2, s0, s5
                  sub          zero, a5, t0
                  auipc        gp, 465685
                  auipc        ra, 546714
                  ori          t6, s10, 385
                  and          a1, t3, t0
                  srl          s3, s9, s8
                  srai         s3, s3, 13
                  addi         t5, a1, -563
                  andi         s4, a7, -1231
                  xor          a3, s8, s5
                  or           gp, s5, s1
                  slti         t6, tp, 524
                  or           t5, s10, s4
                  or           s11, a6, ra
                  sltu         a1, sp, s8
                  addi         a7, a0, -176
                  slt          sp, s7, a3
                  nop
                  nop
                  srl          s4, a1, t0
                  auipc        t6, 404862
                  lui          s3, 736357
                  auipc        t5, 339582
                  and          t6, s6, s10
                  add          s0, a7, ra
                  xori         t3, gp, -419
                  and          a0, t2, s5
                  nop
                  sub          s8, t5, a5
                  xor          ra, t1, a7
                  slt          a6, a4, s5
                  auipc        a7, 24144
                  ori          sp, s4, 646
                  xor          a6, s11, s1
                  sll          t6, a2, s0
                  and          zero, zero, s7
                  or           ra, s2, zero
                  nop
                  srai         t3, s0, 29
                  and          s4, gp, s11
                  auipc        s4, 257425
                  slt          sp, t2, tp
                  sltu         a1, a2, t4
                  or           s6, t2, s10
                  slt          a7, s7, s2
                  xori         a2, t2, -498
                  addi         zero, s7, -117
                  sll          ra, t3, s6
                  srai         a4, s4, 22
                  xor          s7, t1, a6
                  addi         s0, sp, 2017
                  slti         a2, s8, 658
                  or           t4, a0, gp
                  srai         a6, ra, 0
                  sll          a7, a1, t1
                  xori         t0, zero, 1178
                  srai         t5, t0, 16
                  andi         s9, t3, 1492
                  srli         s10, a4, 5
                  sltu         tp, a4, t3
                  ori          sp, s5, -1259
                  xori         zero, tp, 1189
                  slti         ra, a3, 290
                  xori         zero, a1, 1657
                  add          s3, s2, t1
                  xor          s1, s0, s4
                  slt          s8, s9, gp
                  sltiu        s10, a5, -992
                  sra          t0, a0, a0
                  sltu         t0, t4, tp
                  xori         t4, t3, 1971
                  srl          t4, s0, a3
                  auipc        s8, 680833
                  sub          a3, a6, s9
                  xor          s7, s1, t6
                  or           gp, a0, s7
                  slt          a4, s5, t5
                  lui          s6, 590269
                  srai         zero, s0, 19
                  sub          t4, a3, t3
                  add          t6, gp, sp
                  srai         ra, a3, 0
                  ori          a3, s7, -1664
                  add          s6, t6, a2
                  add          s8, a7, ra
                  lui          a2, 137682
                  lui          sp, 833500
                  auipc        a6, 211068
                  sll          t2, s9, s3
                  and          gp, s5, s3
                  sll          a4, s11, s0
                  sltu         t6, s10, gp
                  sub          s9, a3, s10
                  srai         sp, s2, 31
                  add          s9, ra, tp
                  auipc        t6, 589906
                  sltu         s6, a0, a3
                  auipc        s6, 210495
                  xori         t6, a0, -1793
                  add          t3, a6, t0
                  add          a7, s1, s10
                  ori          a3, s1, 122
                  and          tp, t3, a7
                  slli         s0, s5, 27
                  and          a1, t0, a1
                  xori         t5, s8, 864
                  sltiu        a4, s4, -1697
                  srli         a0, gp, 16
                  srai         s4, t4, 11
                  slti         s9, s2, 1354
                  ori          s2, s7, -1992
                  sll          s3, t1, t4
                  sub          t3, a1, a1
                  sub          ra, s3, ra
                  srli         s6, t4, 15
                  srl          t4, t1, s10
                  sltu         s9, t1, t5
                  ori          a6, s4, -808
                  srl          a2, s11, a2
                  lui          ra, 189341
                  slti         sp, s7, -1155
                  sub          ra, zero, sp
                  addi         s10, tp, 1749
                  andi         t3, s5, 754
                  or           s8, zero, t1
                  sltu         t5, t6, a6
                  addi         a3, sp, -1291
                  xor          s7, a2, a5
                  sll          s0, sp, a1
                  sll          a2, t0, s3
                  nop
                  sltiu        s7, a7, -491
                  xor          t0, sp, s7
                  xor          gp, s4, t5
                  addi         a3, ra, -1855
                  sll          a1, zero, t2
                  ori          t3, a2, 1824
                  sltiu        t5, a4, -1743
                  srai         a4, s5, 25
                  srli         a0, gp, 9
                  sub          sp, t2, s11
                  add          s1, s9, tp
                  and          sp, s5, s1
                  xori         a4, s1, 1398
                  srai         a0, s6, 23
                  slti         zero, s5, 907
                  ori          a0, s8, 878
                  srli         sp, t6, 12
                  slti         a3, ra, 1690
                  sll          t6, s11, t1
                  sltiu        s9, t0, -1997
                  auipc        zero, 333189
                  addi         zero, ra, -565
                  andi         s9, s7, -1301
                  auipc        a7, 250041
                  ori          a1, a7, -1575
                  xori         s6, a3, -36
                  lui          s3, 710815
                  add          ra, s4, t2
                  andi         ra, s7, -1827
                  slti         s2, a2, -878
                  andi         zero, ra, -1842
                  sll          tp, a1, ra
                  add          ra, t0, a0
                  sll          s11, s7, t5
                  slt          gp, sp, s8
                  xori         s7, s10, -8
                  sra          t3, t4, t5
                  or           a2, sp, t3
                  slti         a1, s10, 1961
                  andi         s3, s1, 1130
                  and          tp, a0, s9
                  slli         t6, a0, 25
                  and          t4, s3, s3
                  and          a0, s9, gp
                  srai         s0, a4, 0
                  sll          s11, s2, s7
                  slt          s7, s2, sp
                  sltu         s4, t6, s1
                  slti         s2, s6, -61
                  srli         t0, s11, 6
                  lui          s0, 821861
                  nop
                  sll          s1, a6, t6
                  xor          t0, gp, s9
                  sub          t0, t5, tp
                  xori         t2, a5, 1622
                  sub          gp, a2, a0
                  sra          t0, t5, s0
                  srl          tp, t6, tp
                  xor          a1, a6, s8
                  sltiu        zero, gp, -682
                  srli         t0, t3, 14
                  and          s9, a0, s2
                  srai         s4, a5, 3
                  sll          tp, zero, t6
                  ori          a1, s0, 1564
                  sra          t0, t2, gp
                  srai         a6, s5, 14
                  xori         s7, t3, 1852
                  slli         s9, t6, 5
                  andi         s11, ra, -1557
                  slli         s6, a1, 19
                  sltiu        a6, a2, 2036
                  lui          s11, 759559
                  sll          s6, a6, a0
                  sll          t5, s4, zero
                  nop
                  or           a7, s3, t1
                  addi         s7, a3, -1700
                  slli         zero, tp, 25
                  auipc        gp, 720663
                  sll          a4, s11, a3
                  add          s3, t1, t4
                  andi         s1, s11, -903
                  srli         s7, t1, 14
                  srl          a6, s7, t3
                  lui          a3, 706072
                  add          s10, a4, s4
                  xori         s10, t5, -432
                  sub          s1, s10, s4
                  slli         t5, t5, 19
                  lui          s10, 96195
                  or           a7, s9, a6
                  sll          s3, s5, tp
                  sub          t2, s7, t5
                  srli         sp, s8, 31
                  sub          t0, a5, a6
                  srl          t4, t0, s11
                  andi         s4, t4, 1858
                  slt          ra, a1, s6
                  sub          s8, ra, t6
                  auipc        sp, 673576
                  srl          s8, a5, t0
                  add          t6, a1, s0
                  slli         s4, sp, 8
                  sra          sp, s2, t6
                  xor          a1, s10, a3
                  xori         tp, s4, 1192
                  andi         s10, t0, -1057
                  slti         ra, a5, 1465
                  slli         a4, s5, 2
                  srl          gp, s2, t1
                  add          sp, gp, a6
                  slt          tp, sp, t0
                  srli         t6, t0, 16
                  auipc        s11, 144496
                  slti         s2, t1, -733
                  sltu         ra, s3, s0
                  sub          t6, sp, a1
                  or           a4, zero, s6
                  sll          a2, ra, t0
                  ori          t5, t2, -945
                  ori          s7, s1, 1042
                  or           t5, s4, a7
                  slti         a7, s11, -1077
                  auipc        t6, 30105
                  sra          a3, a3, t1
                  sub          s6, s7, t1
                  srl          s11, a7, t3
                  srl          tp, gp, s6
                  or           s0, a3, a0
                  xori         s8, s1, 1256
                  add          s3, t1, s1
                  andi         s3, t4, 990
                  xori         s8, s11, 159
                  slt          s0, zero, a6
                  ori          s10, tp, 538
                  or           s3, t5, a5
                  ori          s8, s4, -1400
                  sra          s0, t5, s4
                  nop
                  ori          s6, t2, 1068
                  sra          s11, s1, gp
                  sub          zero, a0, t1
                  sltu         a7, s10, a5
                  andi         s11, s8, 253
                  or           ra, a6, s4
                  sltiu        s7, t1, -253
                  addi         a6, a2, 300
                  sll          s0, t4, s2
                  add          s1, t5, a2
                  srli         a6, s5, 17
                  srl          s4, t6, a1
                  slli         a2, a6, 18
                  lui          t3, 1002677
                  slt          a0, t1, s3
                  srl          s0, a2, tp
                  xori         t5, gp, -1880
                  auipc        tp, 439329
                  sltu         s9, s6, a0
                  xor          s3, sp, s4
                  lui          s9, 668611
                  srai         s1, s2, 25
                  xori         t0, ra, -1142
                  sltiu        a6, zero, -1921
                  lui          s4, 488662
                  auipc        s3, 201006
                  xor          s4, a7, s11
                  and          tp, a4, t2
                  xor          t2, s1, t2
                  sub          s1, s9, tp
                  nop
                  sra          a2, tp, t1
                  and          a4, a5, ra
                  add          t4, t0, s2
                  andi         s9, zero, -1288
                  slti         tp, t4, -1861
                  xori         t6, s5, -578
                  slt          a0, t2, s3
                  xori         s4, a7, -1131
                  sll          a1, a3, s4
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_21
                  li           s11, 0x0
                  li           t3, 0x80000000
                  li           sp, 0x189e5bb2
                  li           a2, 0x0
                  li           s6, 0xae9e20a8
                  li           gp, 0x80000000
                  li           t2, 0xf401bc6b
                  li           a1, 0x80000000
                  li           t4, 0x1b6a47f0
                  nop
                  lui          gp, 376031
                  nop
                  sub          s9, t3, gp
                  nop
                  nop
                  addi         s9, a2, 1907
                  nop
                  sub          t2, t4, t3
                  nop
                  add          sp, s9, s9
                  nop
                  lui          a2, 1013214
                  lui          s11, 380213
                  addi         t4, t4, -1341
                  nop
                  addi         s9, a1, -738
                  nop
                  auipc        t3, 341619
                  auipc        s9, 142147
                  nop
                  sub          t2, a1, s11
                  lui          gp, 22479
                  add          gp, s11, sp
                  add          a1, t3, gp
                  addi         t2, a1, 1059
                  auipc        gp, 854243
                  addi         a2, s9, 1966
                  sub          s11, gp, sp
                  sub          a2, t3, a1 #end riscv_int_numeric_corner_stream_21
                  ori          sp, gp, -1981
                  xori         a7, zero, 1505
                  slti         tp, a5, -2015
                  lui          a0, 707394
                  ori          t0, t2, -691
                  add          s4, a3, s2
                  srai         sp, a2, 11
                  xori         a1, a4, 524
                  slti         sp, a1, -1147
                  srai         s8, a1, 14
                  auipc        a2, 587065
                  nop
                  srli         a3, s0, 18
                  sra          s7, s6, s3
                  sll          s2, zero, s9
                  srai         t5, s5, 16
                  sra          tp, s7, s3
                  sra          zero, ra, t0
                  sltu         t6, a7, t2
                  and          s4, a0, t1
                  addi         t6, s0, 241
                  andi         ra, t4, 355
                  sra          s4, s6, a0
                  sll          t6, s11, s11
                  ori          s4, s11, 1775
                  lui          s11, 80487
                  sub          a3, zero, tp
                  add          t6, s4, s5
                  sll          a3, t6, s2
                  add          s10, s3, a4
                  lui          a7, 598867
                  sll          s11, t3, a3
                  andi         a0, t6, 1957
                  slt          s9, s1, gp
                  andi         s8, s9, -96
                  srl          s8, t2, t1
                  sltiu        s2, s11, -1527
                  sltu         s0, t3, a3
                  slti         s4, s6, 0
                  sltiu        a6, t2, -830
                  xor          s11, a6, s8
                  srli         a7, s3, 15
                  sra          s0, t0, s11
                  and          gp, s1, a3
                  sltiu        s11, s6, -1487
                  ori          a1, a6, 295
                  ori          a3, a6, -259
                  sra          s1, ra, t3
                  addi         a1, a0, -54
                  auipc        s1, 334929
                  xor          gp, s6, s11
                  slti         t5, a2, 942
                  sra          s6, a2, s8
                  srai         s10, t4, 4
                  or           s1, s6, s10
                  sra          sp, a6, t4
                  ori          a4, a5, 793
                  andi         ra, a7, 331
                  ori          zero, s10, 1325
                  ori          s4, a1, -891
                  sltiu        s1, t4, -804
                  auipc        s6, 523713
                  or           s4, a4, t2
                  xori         s11, t6, 1439
                  add          s8, s8, t0
                  lui          s6, 210172
                  addi         s11, s0, -1458
                  slti         s7, s3, 755
                  auipc        s4, 865114
                  and          a3, a0, s4
                  xori         s6, s11, -1781
                  addi         a7, a6, -1154
                  sltiu        s2, t1, -745
                  srli         a7, t6, 28
                  slti         t6, a0, 630
                  srli         t4, t2, 27
                  add          t3, s2, s9
                  andi         a7, s1, 253
                  slli         s7, t0, 24
                  sra          zero, t5, s6
                  sub          s4, s10, t3
                  srli         s3, t0, 4
                  or           s11, ra, ra
                  or           t3, a6, tp
                  sra          s7, gp, t1
                  srli         zero, t0, 6
                  slt          a0, s9, s9
                  slti         tp, tp, -800
                  or           ra, s4, t3
                  xori         tp, s5, -653
                  slt          t6, s4, s2
                  xori         s3, s6, -645
                  ori          a3, t1, -1185
                  sll          s7, a2, zero
                  and          s1, t3, s4
                  sll          s2, gp, s7
                  srli         t0, s9, 1
                  ori          sp, s11, -1330
                  auipc        s2, 459059
                  xor          a0, t3, t5
                  nop
                  slt          s1, zero, s4
                  sll          a6, a7, ra
                  auipc        t0, 7973
                  add          t6, s3, t1
                  addi         gp, ra, -1271
                  sra          t3, t5, t4
                  sll          a1, tp, s1
                  addi         s2, a7, -1750
                  xor          tp, a5, s11
                  slti         a4, t1, 1052
                  addi         a3, s2, -1117
                  slli         s8, zero, 28
                  srli         s2, s7, 18
                  auipc        t3, 44227
                  srl          s8, s11, s4
                  sub          t5, t0, s9
                  sltiu        s2, s3, -1126
                  addi         ra, a2, 1011
                  lui          zero, 382855
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s1, 0xffffffff
                  li           ra, 0xffffffff
                  li           a2, 0xffffffff
                  li           s3, 0xffffffff
                  li           t0, 0x0
                  li           a7, 0x80000000
                  li           t6, 0x80000000
                  li           a1, 0xffffffff
                  li           a4, 0xffffffff
                  addi         a2, t0, 752
                  sub          s7, a4, t6
                  lui          t6, 631276
                  nop
                  sub          s7, t0, a4
                  sub          s7, a7, t0
                  auipc        t6, 731873
                  sub          a4, s3, s7
                  addi         a1, a1, 1242
                  auipc        s1, 929290
                  nop
                  sub          a1, t6, a4
                  lui          t0, 69727
                  lui          a4, 967245
                  lui          s1, 693874
                  lui          s3, 1042518
                  lui          ra, 514247
                  addi         a4, t0, 1884
                  addi         t0, s7, -1205
                  auipc        s3, 632550
                  sub          t6, s1, s3
                  addi         t6, ra, 1530 #end riscv_int_numeric_corner_stream_0
                  sltiu        t2, s4, 1269
                  lui          s6, 89977
                  srl          s9, s6, a7
                  lui          s10, 779623
                  add          gp, s8, s0
                  srli         a2, s4, 6
                  srli         a6, s2, 11
                  or           t4, a0, s11
                  addi         gp, s3, 253
                  sub          s3, s1, a5
                  sll          sp, s11, sp
                  srl          tp, s4, s8
                  sltiu        s3, t6, -711
                  slli         gp, a7, 17
                  srli         s6, zero, 19
                  xori         t0, t0, 1118
                  slt          s9, s1, t1
                  slti         s9, a0, -1724
                  addi         s2, s7, -741
                  andi         s1, a5, 1255
                  srai         a1, tp, 23
                  slli         t0, s0, 8
                  andi         s9, a0, 1520
                  slli         t0, s6, 3
                  sll          t3, s6, s4
                  sll          s8, s8, tp
                  nop
                  slti         s3, t6, -206
                  srli         a2, a2, 8
                  add          t3, a4, a6
                  xor          t2, ra, a5
                  srli         s1, t2, 12
                  sra          a2, a0, t0
                  slti         t2, a4, 1805
                  srli         s8, sp, 29
                  slli         s7, a7, 1
                  srl          a6, s2, a4
                  srl          s4, a5, s0
                  srai         s0, s9, 27
                  addi         s0, s2, 885
                  srl          zero, s0, t5
                  sltu         t5, a3, s9
                  lui          s3, 825510
                  or           s0, tp, s10
                  sltu         s3, s6, s6
                  or           a6, s4, a5
                  srli         t4, s4, 27
                  slt          a4, a7, gp
                  srl          s3, s1, t2
                  xor          s10, s2, s5
                  slti         t6, t1, -2005
                  xori         s4, t4, -274
                  xori         s10, a3, -353
                  lui          s11, 345899
                  xor          a3, a7, a4
                  ori          s7, t5, -1779
                  sll          s7, a0, a3
                  and          sp, gp, t1
                  slt          s6, s4, ra
                  and          s7, t0, s10
                  nop
                  or           t6, s8, a6
                  sra          a4, s3, s2
                  sll          t0, s9, t3
                  lui          a6, 514035
                  slli         s10, s6, 6
                  slti         t2, a7, 411
                  slti         t5, s8, 1059
                  or           s4, s2, s3
                  lui          s10, 158365
                  slli         s9, s1, 24
                  sltu         t4, s4, zero
                  slt          s2, t5, s5
                  sra          a3, s4, t1
                  auipc        s9, 40121
                  or           ra, s4, s8
                  sltiu        t0, t0, -1344
                  lui          s0, 764661
                  sltiu        s3, a2, -735
                  nop
                  slli         s10, s3, 20
                  srl          a0, ra, gp
                  nop
                  slli         s4, t6, 8
                  sltiu        t6, sp, -967
                  slti         sp, s6, 1409
                  slt          s10, t3, s3
                  addi         t2, a0, 1716
                  add          s7, t6, a3
                  slti         a2, a0, -766
                  or           t4, gp, t4
                  slt          s2, s1, a5
                  srl          s1, s1, ra
                  ori          a4, s6, -1221
                  slli         s7, t2, 5
                  srai         s2, s3, 3
                  srli         s2, s5, 19
                  srl          ra, t0, s5
                  slt          t5, s11, a5
                  sltu         t5, s10, a1
                  sra          s4, s2, gp
                  srl          t2, t1, s0
                  nop
                  xor          s0, s5, t6
                  sub          s6, s4, ra
                  add          a4, zero, tp
                  srl          a7, sp, s5
                  srl          s11, s10, zero
                  slti         t2, s6, 320
                  or           sp, zero, tp
                  and          t4, t3, a3
                  ori          ra, s1, 492
                  add          s1, s10, gp
                  slt          a4, t0, a4
                  lui          t6, 20473
                  ori          s11, a0, 720
                  or           a2, s1, t6
                  srai         a6, t3, 15
                  xori         gp, t6, 1513
                  and          s0, a0, s0
                  srl          s11, t1, gp
                  srai         ra, t0, 26
                  and          s4, a1, s7
                  nop
                  srli         s6, zero, 6
                  srli         s2, a7, 10
                  slti         ra, t1, 1747
                  slt          s8, t5, t3
                  sra          a7, a5, a2
                  slli         sp, t5, 26
                  xor          a2, a5, s5
                  xor          s0, zero, a0
                  srai         a1, a6, 24
                  slli         a0, s2, 29
                  srai         t6, s10, 12
                  slt          a1, s0, a4
                  add          a7, gp, s1
                  sltu         s2, s10, s1
                  and          tp, a1, s3
                  auipc        s11, 581633
                  add          s1, s5, gp
                  lui          s6, 844229
                  srai         a6, a2, 7
                  addi         s2, s0, 957
                  srl          s11, s6, s11
                  nop
                  slt          zero, a2, s6
                  slti         t4, zero, -1569
                  xori         a1, sp, -563
                  srai         t2, sp, 10
                  auipc        s9, 154613
                  sub          gp, ra, s4
                  auipc        t6, 635380
                  addi         s3, ra, 1447
                  sltu         t2, t1, ra
                  slli         ra, a6, 3
                  addi         t3, t4, 1071
                  sll          a6, a4, a0
                  xor          s1, t6, s8
                  sra          t4, s1, a1
                  sll          s9, s10, a1
                  andi         gp, s6, 813
                  add          s0, zero, s1
                  addi         a0, s6, -91
                  srai         a4, gp, 15
                  lui          a6, 790183
                  lui          sp, 233239
                  srli         gp, s5, 5
                  slli         tp, sp, 16
                  sll          s3, s11, tp
                  srai         a0, a6, 10
                  and          s4, t6, zero
                  andi         s1, s2, 1776
                  addi         t6, t4, -1621
                  sltiu        s2, a3, 1729
                  ori          s11, tp, 60
                  slli         a1, t5, 30
                  sra          s9, t2, t5
                  ori          a6, s3, -841
                  or           a4, a3, gp
                  sra          a7, t6, a7
                  xori         t0, t5, -1033
                  nop
                  slli         a3, s0, 0
                  andi         zero, s4, 34
                  sltiu        s6, s0, -1845
                  sub          s3, t2, s7
                  sltiu        a7, t0, 1250
                  addi         a2, gp, 966
                  addi         t4, a5, 1352
                  srai         t4, sp, 21
                  sub          t2, t0, a1
                  sll          s9, a1, tp
                  xor          t3, sp, ra
                  auipc        a4, 303531
                  add          s2, a6, t1
                  and          a6, t4, a6
                  ori          tp, s1, 20
                  sub          s9, a3, s3
                  sltu         gp, t4, s8
                  slli         t6, a2, 16
                  sltiu        t4, s10, -524
                  sltiu        a6, s3, -1354
                  add          a1, t4, tp
                  slli         a2, t5, 7
                  nop
                  lui          a0, 896412
                  add          s8, s11, t6
                  xor          s1, tp, tp
                  slt          s1, s7, gp
                  nop
                  xori         s7, a3, -186
                  auipc        t5, 907408
                  slt          a7, s11, s11
                  slti         zero, s3, 1319
                  ori          t6, t3, -64
                  sltiu        t3, a4, 155
                  srli         s1, t0, 11
                  slli         t5, a7, 13
                  srli         sp, ra, 9
                  sra          ra, s10, t5
                  srl          t0, t6, t4
                  andi         a7, t1, -942
                  ori          t0, s11, -257
                  sll          a2, s8, s6
                  sub          sp, s4, sp
                  srai         zero, zero, 7
                  srl          a3, a4, t3
                  sltiu        t2, a4, 1462
                  xor          t5, t1, s10
                  xor          a1, t6, s2
                  sll          tp, sp, a0
                  sll          s7, a6, a3
                  ori          s2, t3, 1323
                  or           s10, t5, tp
                  add          a1, s6, a0
                  ori          a0, s4, -879
                  xori         a7, t4, 1410
                  or           s4, ra, s0
                  addi         a0, s1, 1051
                  add          s4, s9, ra
                  ori          a3, s4, 2008
                  slti         s10, a1, 1533
                  auipc        sp, 465515
                  sltiu        gp, s1, 809
                  sub          s7, a3, s10
                  srl          s7, sp, a4
                  xori         t2, tp, -1751
                  slli         gp, t5, 18
                  add          a4, ra, s6
                  or           a6, ra, sp
                  andi         t6, s3, -1172
                  srl          a6, s7, t3
                  ori          a6, a1, -2004
                  sra          a1, a4, s3
                  xor          s1, a5, s4
                  sltu         s7, a3, s3
                  and          t0, s5, s7
                  auipc        a7, 890759
                  sltu         t6, s6, s5
                  add          sp, s7, ra
                  srai         s11, s3, 1
                  add          a0, s8, ra
                  addi         s8, s1, 1582
                  srl          a7, zero, sp
                  slt          ra, t6, a1
                  srl          a2, a5, s5
                  slti         s8, s6, 1257
                  sra          a7, t6, s3
                  srli         a7, tp, 21
                  xor          zero, t4, s8
                  sltiu        a0, s5, 58
                  sub          a4, s9, t1
                  srai         a0, t1, 29
                  srli         gp, a5, 23
                  sltu         t4, t4, s10
                  srl          ra, a3, s11
                  slt          ra, s4, t4
                  nop
                  slli         a6, a6, 4
                  slti         zero, s3, -577
                  lui          sp, 496452
                  addi         s0, a1, -31
                  sra          ra, t6, sp
                  sltiu        t6, s9, 226
                  slti         t5, ra, 69
                  and          t2, a5, s9
                  addi         s0, s11, 992
                  add          gp, a4, s0
                  ori          s7, s11, 772
                  lui          ra, 914882
                  ori          a1, s6, -1260
                  slt          ra, t2, a4
                  sub          s7, s10, t0
                  or           s11, sp, t2
                  slli         t3, s9, 7
                  add          s0, a5, a6
                  srli         a1, zero, 27
                  addi         ra, s4, -609
                  srl          a0, a6, s3
                  slt          t6, s0, s0
                  and          s9, s11, tp
                  srl          a7, s6, a1
                  srai         sp, a0, 13
                  ori          ra, sp, 1858
                  sll          s6, t5, a1
                  add          t2, a5, t6
                  nop
                  lui          a3, 736535
                  xor          s10, a6, ra
                  andi         gp, s6, -1480
                  xori         s9, t1, -387
                  ori          s7, s10, -641
                  andi         s3, t5, 1092
                  sub          s3, sp, t2
                  sltu         s0, a4, a0
                  sll          t6, a1, s9
                  sltu         s3, t5, a7
                  nop
                  sra          t2, s6, sp
                  srli         s1, s3, 26
                  addi         s1, t4, 463
                  slli         t2, sp, 4
                  andi         s7, s6, -1553
                  andi         t0, s4, 762
                  srl          s4, t2, a7
                  sub          s8, a4, t5
                  add          t6, t6, tp
                  slli         a7, sp, 1
                  sltu         sp, zero, gp
                  ori          s11, tp, 629
                  srai         tp, t6, 29
                  srli         t6, s9, 29
                  sltiu        t5, s3, 1560
                  sub          a1, t2, t5
                  addi         t5, t2, 1280
                  and          s7, s10, a3
                  auipc        s7, 765697
                  slli         t2, s6, 19
                  auipc        t3, 640070
                  andi         a3, s3, 449
                  sub          t6, a1, s2
                  sub          gp, s1, s7
                  slli         t4, a4, 21
                  sra          s3, s6, a5
                  sll          t0, sp, t3
                  or           tp, a3, sp
                  andi         s7, t5, -1391
                  sll          a6, t5, t6
                  sll          s1, s0, t1
                  xor          a7, s7, zero
                  xor          s11, a0, a1
                  slti         t5, a4, -680
                  srai         s8, gp, 10
                  xori         a4, zero, -1692
                  slti         ra, s5, -391
                  addi         s2, s2, -756
                  srl          t5, t4, s3
                  xor          t6, s0, s9
                  slti         s2, s4, 1009
                  slt          s4, s5, s1
                  sub          s4, s11, a2
                  srai         t5, s1, 0
                  srai         s2, s9, 10
                  sra          s8, a4, s3
                  auipc        ra, 496896
                  or           s1, s0, a3
                  sra          tp, t1, s11
                  add          ra, s10, s2
                  add          t2, t4, a6
                  andi         zero, t0, -1540
                  srli         s10, s2, 16
                  slt          a4, s11, t3
                  nop
                  auipc        s4, 1032048
                  srl          t4, s9, t4
                  add          a6, a3, s4
                  sltiu        s6, a2, -1358
                  slli         a0, t4, 9
                  or           a7, a3, t0
                  srai         zero, s3, 27
                  or           a7, t0, t5
                  slt          sp, t3, t6
                  nop
                  sltiu        tp, s6, 2011
                  andi         sp, t5, -1022
                  xor          t6, s6, a2
                  auipc        t5, 596833
                  sra          s10, s4, a2
                  nop
                  slti         t5, s9, -1908
                  andi         s4, a7, -201
                  or           s0, s4, t0
                  xor          tp, a4, s6
                  xori         t5, s6, -1490
                  sltiu        zero, s0, -1738
                  srl          s4, s1, s9
                  ori          t0, s8, -1957
                  sltu         t3, a2, zero
                  srai         ra, tp, 17
                  add          a4, s6, a7
                  xor          t3, s2, a4
                  sltu         t6, a5, a6
                  add          a6, s8, tp
                  sub          t5, s0, s8
                  slli         s0, s3, 0
                  xori         t4, t5, 1522
                  srai         sp, s6, 31
                  slti         s0, s10, 1240
                  sra          s11, zero, s3
                  sltu         sp, s8, s7
                  sra          sp, a0, t4
                  add          ra, s7, t6
                  sltiu        a2, tp, 582
                  sltu         zero, s5, tp
                  or           gp, s0, s10
                  addi         a0, a1, 2006
                  sub          a3, a2, t6
                  slt          s2, s1, tp
                  slli         gp, s4, 28
                  and          s10, s5, sp
                  ori          s10, t4, 854
                  srli         a7, a3, 9
                  or           ra, s2, s7
                  sra          t6, s1, sp
                  auipc        s0, 490433
                  sltiu        a0, s5, -448
                  srl          s10, s2, a0
                  slli         s2, s7, 0
                  srl          s3, s9, a4
                  ori          s11, sp, -1404
                  sltiu        t0, s5, -720
                  ori          tp, t5, 1387
                  sub          s7, t2, s9
                  sltiu        gp, a6, 280
                  andi         t3, t3, -271
                  or           a0, s1, s6
                  ori          s11, a6, 1328
                  or           s7, s5, tp
                  srl          s4, s9, s8
                  srl          a0, s9, zero
                  xor          t0, t1, t1
                  addi         a0, a3, 1420
                  ori          a0, s4, 823
                  srli         ra, t4, 18
                  slti         t0, s10, -1801
                  srl          a2, a2, s1
                  slti         t0, s4, 439
                  sltu         t6, t5, t5
                  and          zero, a0, s0
                  slli         zero, a5, 11
                  add          zero, s5, t0
                  xor          t6, t0, t1
                  slti         t2, s1, 1321
                  sll          tp, a3, t5
                  sub          a4, s10, t3
                  and          t3, s9, t3
                  auipc        t2, 388803
                  andi         s7, a4, 1655
                  slt          s4, t6, t6
                  and          sp, a2, a4
                  slti         s9, t4, 1218
                  auipc        a4, 890373
                  srl          s8, t5, s10
                  sll          a1, ra, s3
                  sll          s2, a1, t5
                  nop
                  sra          t5, s8, a2
                  sra          t2, s2, a0
                  and          s10, t5, a1
                  xori         a4, s0, -2047
                  sltiu        t2, t1, 222
                  or           a4, a6, s8
                  addi         t3, a1, 540
                  ori          s1, sp, 1597
                  sltiu        s0, sp, 1433
                  srli         s6, s2, 8
                  sll          s9, s3, s7
                  sltu         tp, t4, a5
                  sltu         s2, ra, a0
                  slli         a4, a0, 1
                  sltiu        s1, s9, 1568
                  xor          s11, s6, a1
                  lui          a7, 382653
                  srai         sp, a4, 17
                  xori         t4, s4, 363
                  add          s6, t1, t1
                  xor          s6, t6, t1
                  auipc        ra, 41284
                  andi         s2, t2, 1497
                  xor          a1, t3, tp
                  xor          a2, t4, s9
                  ori          a4, s0, 1024
                  ori          s8, a7, -1522
                  slli         s11, a3, 26
                  and          t4, s10, t2
                  srl          s6, a3, s3
                  slli         t6, a4, 22
                  sltiu        ra, a3, 1605
                  slli         sp, s10, 5
                  slli         a2, s7, 6
                  nop
                  slt          t0, a4, s3
                  nop
                  slti         s7, a1, -949
                  addi         gp, s9, -174
                  auipc        t0, 367324
                  or           t5, s11, a4
                  slti         a2, s1, -364
                  srai         sp, s0, 26
                  andi         a6, s6, -1413
                  slt          zero, a5, ra
                  sltu         t3, t2, t1
                  ori          t5, s0, 1268
                  addi         a7, s1, 1605
                  slli         a7, ra, 5
                  slli         t5, s8, 30
                  srli         a7, t1, 22
                  andi         s6, s10, 21
                  xori         sp, a0, 60
                  slli         s4, a7, 19
                  srli         s2, s1, 1
                  addi         sp, gp, -1815
                  slli         a1, a4, 6
                  slli         s3, a2, 1
                  or           s2, s3, zero
                  sltiu        t6, a5, 1549
                  auipc        a1, 548775
                  srli         t2, ra, 20
                  srl          t0, zero, gp
                  sltiu        s1, tp, 902
                  sltu         a2, t2, t0
                  add          s8, a5, s9
                  sltu         s1, s9, s8
                  xor          zero, s2, a7
                  xor          t2, a6, s8
                  nop
                  slti         a7, t1, 27
                  srli         tp, s1, 23
                  slt          s6, s5, s1
                  srli         s9, s5, 16
                  srai         s8, a4, 13
                  sll          a0, s8, s8
                  sll          t2, a2, a5
                  srai         a6, t6, 9
                  addi         t3, a2, 65
                  sub          a4, a4, a4
                  sll          s6, t5, s8
                  srli         s3, a2, 26
                  slli         s2, t0, 30
                  or           t2, s3, a6
                  sra          s0, a0, t0
                  auipc        a2, 404039
                  andi         s8, t4, 1789
                  sltiu        s1, s0, 1694
                  sll          s0, a7, sp
                  slti         ra, a1, 1011
                  sll          a3, s1, s5
                  addi         zero, s2, -1347
                  sltiu        s6, s0, 1702
                  add          a7, a4, s0
                  and          s8, t0, a7
                  add          a3, t5, s9
                  srl          t2, s6, sp
                  slli         a1, s0, 31
                  andi         s3, a4, -1349
                  or           s2, t6, t6
                  srai         t0, s6, 31
                  nop
                  lui          s10, 323523
                  srl          s8, t1, a3
                  or           zero, s11, s3
                  sltiu        s7, s2, -1495
                  srli         gp, tp, 12
                  xor          zero, s3, t0
                  sltiu        a1, a0, -440
                  and          s9, ra, s10
                  sub          t6, s3, a1
                  lui          s1, 834789
                  nop
                  sltiu        a3, a0, -232
                  sltu         a1, a1, s8
                  srai         a1, a5, 20
                  and          t6, a7, zero
                  sub          t2, t4, a3
                  or           tp, s7, a4
                  sltiu        t2, a1, -820
                  auipc        a4, 793220
                  sltu         tp, s10, a4
                  sll          s7, s11, s2
                  slti         s1, a0, 1176
                  auipc        s4, 1002748
                  xori         s3, a5, 1590
                  srai         t4, s9, 25
                  sltu         t4, a7, t6
                  nop
                  sll          sp, t3, ra
                  srl          gp, s5, t3
                  nop
                  srli         t5, gp, 16
                  ori          t0, s6, 73
                  srai         t6, a2, 12
                  sub          s8, sp, s4
                  sltiu        t0, zero, 698
                  lui          s2, 461696
                  slli         a6, s11, 9
                  or           gp, a5, s10
                  auipc        a1, 107068
                  srl          a4, s10, s5
                  ori          t4, a4, 241
                  slti         s0, s3, 1092
                  xori         s11, s1, -1839
                  add          a0, t2, ra
                  addi         a7, s2, 1957
                  sll          s11, t6, a4
                  slti         s8, s7, 1299
                  slt          t6, t0, t6
                  srl          s1, a7, t0
                  auipc        s4, 304132
                  slli         ra, s0, 25
                  srl          zero, s3, t2
                  sltiu        t0, s5, 740
                  slli         t5, zero, 19
                  add          s9, a0, s9
                  add          s11, t3, gp
                  sltiu        ra, a2, 309
                  sll          a1, t5, t1
                  sltiu        a7, t5, -1097
                  add          s10, s10, s11
                  addi         a0, gp, 1317
                  auipc        s6, 728955
                  sltiu        s6, s3, 1716
                  slti         sp, s0, 1460
                  ori          s10, s4, -1903
                  ori          s2, t3, -103
                  slti         a2, s9, -447
                  and          s6, a5, s4
                  sltu         tp, s0, s8
                  sltu         s2, s7, t1
                  or           t3, s0, s11
                  srl          s7, a7, s9
                  xori         t6, a5, 750
                  xori         s11, a5, 1182
                  auipc        s9, 898404
                  addi         a6, zero, -1988
                  srli         a6, ra, 30
                  addi         s10, s3, 166
                  slt          t6, s0, t1
                  srli         a6, s10, 9
                  and          a3, gp, gp
                  srli         s7, a0, 11
                  sll          tp, a4, t6
                  andi         a4, s1, -1875
                  srl          t2, s4, ra
                  xori         s10, t0, 260
                  xori         s4, a0, -257
                  xor          s0, s4, a6
                  ori          a3, t2, 1833
                  srl          ra, a1, t4
                  ori          sp, s1, -264
                  sltiu        s10, s6, -1219
                  auipc        t2, 429247
                  slt          a1, s10, s10
                  nop
                  sltu         s9, s7, t5
                  slli         a1, t0, 1
                  sra          s8, gp, s9
                  srl          t2, s2, t4
                  xor          t5, zero, zero
                  srl          s8, s7, t3
                  sra          a0, a0, t3
                  xor          s4, t4, t0
                  slt          t5, s9, s11
                  srl          t2, s8, a3
                  sub          s9, a5, gp
                  and          tp, s7, s8
                  or           tp, a6, t1
                  slli         t5, s1, 7
                  or           a4, s10, a2
                  auipc        s10, 242880
                  slti         s4, t1, -1621
                  add          a6, s0, s10
                  ori          ra, s2, -883
                  srai         zero, a4, 8
                  srl          a1, t6, gp
                  sltiu        a4, s11, 1912
                  lui          s10, 467838
                  srli         a4, t0, 31
                  srl          a0, ra, a1
                  sltiu        s10, t5, 1177
                  sltu         s10, t0, s8
                  add          sp, t0, ra
                  lui          a1, 218414
                  sra          a7, s7, s8
                  sltu         s11, s2, sp
                  or           s2, s1, gp
                  xori         s11, sp, 665
                  srai         s6, s3, 16
                  lui          zero, 903457
                  ori          ra, t5, -356
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_20
                  li           sp, 0x0
                  li           t0, 0x0
                  li           s2, 0xbefa43da
                  li           s0, 0x80000000
                  li           s9, 0x80000000
                  li           s6, 0x80000000
                  li           t3, 0xffffffff
                  li           a2, 0x71096252
                  li           s1, 0x0
                  sub          sp, s6, sp
                  nop
                  sub          s7, sp, sp
                  nop
                  sub          t3, a2, t3
                  addi         t3, s9, -1290
                  sub          s0, s6, s1
                  lui          s6, 663929
                  nop
                  lui          t0, 217255
                  nop
                  sub          sp, t0, s7
                  lui          s1, 555296
                  sub          s2, s9, s7
                  nop
                  auipc        s9, 853341
                  sub          t0, t3, s6
                  add          t3, a2, s7
                  add          t3, s9, s9
                  addi         s1, s9, 1232
                  add          s2, t0, s9
                  add          sp, s1, t0
                  addi         sp, s9, 194
                  add          s0, s7, s9
                  nop
                  lui          t3, 862916
                  sub          s0, a2, s1
                  addi         sp, s0, -635
                  addi         s9, s0, 282 #end riscv_int_numeric_corner_stream_20
                  or           a3, a5, a0
                  srli         a0, a6, 25
                  and          sp, t3, t1
                  xori         zero, s2, 179
                  sub          s8, a6, s2
                  sra          t2, s7, gp
                  sra          gp, s0, s8
                  or           s0, a6, a0
                  srli         gp, s9, 28
                  slli         tp, gp, 3
                  srli         a6, a0, 28
                  or           s2, a4, s8
                  slli         s2, s4, 11
                  srai         t0, a1, 30
                  sra          t2, a0, ra
                  sra          a6, s3, s0
                  add          a2, s7, a0
                  auipc        s4, 924176
                  sltiu        s3, s6, -1825
                  sra          s0, t3, s9
                  or           s6, a5, t4
                  sub          t3, t4, s0
                  or           s10, s9, s9
                  slli         a1, a1, 27
                  addi         s8, zero, 186
                  and          s6, s5, s0
                  slti         s11, a2, -1168
                  srai         s0, a0, 28
                  auipc        t5, 344036
                  xor          s7, s5, gp
                  and          s10, s0, s11
                  add          a3, a3, s11
                  addi         s9, t0, -88
                  nop
                  slli         s1, zero, 11
                  sll          a6, s4, s0
                  andi         t6, t1, 843
                  nop
                  lui          a3, 598276
                  slti         t3, a3, -1753
                  sub          s10, zero, s1
                  add          s3, s7, t3
                  srai         s10, t4, 31
                  sltu         sp, gp, t6
                  andi         a4, a6, 89
                  or           s10, s6, t0
                  nop
                  or           s9, s11, s6
                  srai         t4, a6, 30
                  and          tp, s1, t0
                  and          s1, a0, s10
                  sltiu        a2, s4, -1992
                  srl          a4, s11, a4
                  xori         a7, a5, -148
                  ori          a6, gp, -827
                  lui          s0, 786360
                  auipc        s6, 108179
                  addi         t0, t1, 1206
                  nop
                  ori          a7, a0, 1116
                  addi         s4, t1, -1947
                  auipc        s0, 203735
                  andi         a3, tp, 1820
                  srl          t4, s9, a5
                  ori          sp, s0, -1383
                  auipc        t6, 661823
                  and          s4, sp, s11
                  lui          s4, 722616
                  addi         s2, a2, -720
                  srli         s1, a2, 0
                  xor          t4, gp, s6
                  andi         t2, zero, -1512
                  add          s1, s0, t3
                  lui          t0, 391831
                  sra          t3, a2, s4
                  slli         t4, a2, 10
                  srl          s7, t0, t0
                  addi         s11, t2, -97
                  addi         t2, t4, -2002
                  sll          ra, s8, zero
                  srli         t6, t3, 22
                  ori          a4, a4, 166
                  xor          s10, s7, a0
                  sub          a0, t6, s3
                  nop
                  or           s10, s7, a4
                  ori          t0, a1, -1077
                  xor          a6, a6, s3
                  sltiu        a4, t2, 1531
                  lui          a0, 316386
                  xori         ra, s7, 1417
                  srl          s8, t3, a0
                  sltu         sp, tp, a7
                  sub          a6, s10, t2
                  lui          s8, 913699
                  sltu         gp, s0, a3
                  sltiu        t2, t1, 645
                  or           s0, s10, sp
                  xori         a0, gp, -1168
                  srl          zero, s8, s5
                  auipc        t5, 859388
                  add          a3, t2, a6
                  sll          a4, a2, t5
                  xor          s8, t1, t1
                  and          t4, a1, t5
                  slti         s1, ra, 864
                  slt          t5, t6, s11
                  add          zero, t0, a7
                  or           s4, s1, ra
                  slli         s1, zero, 7
                  auipc        s9, 739539
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           s3, 0x0
                  li           a6, 0x80000000
                  li           t6, 0x0
                  li           a7, 0xffffffff
                  li           t5, 0xffffffff
                  li           s2, 0x0
                  li           a3, 0x80000000
                  li           sp, 0x80000000
                  li           gp, 0x80000000
                  sub          t6, s3, a3
                  auipc        a3, 213239
                  add          a7, gp, t5
                  add          t6, a7, gp
                  lui          t2, 475841
                  nop
                  nop
                  addi         t2, a7, -114
                  lui          s3, 883612
                  lui          gp, 300571
                  auipc        s2, 686283
                  auipc        t2, 124434
                  nop
                  nop
                  nop
                  add          sp, gp, a7
                  sub          s3, sp, a3
                  auipc        t6, 835498
                  auipc        gp, 225002
                  addi         s2, sp, -369
                  auipc        s2, 93632
                  addi         a7, a7, 833 #end riscv_int_numeric_corner_stream_9
                  xor          s6, a7, a2
                  slti         s8, s9, 91
                  srl          s3, zero, a1
                  srli         a1, t1, 3
                  addi         s11, s3, -1143
                  auipc        t5, 982529
                  or           s6, s5, s5
                  slti         ra, t5, 681
                  lui          s4, 1009351
                  addi         s7, t1, -833
                  sltiu        t6, s7, -1236
                  sll          s6, s11, a4
                  sra          t4, t4, s8
                  slti         s1, a7, -750
                  nop
                  or           zero, sp, a3
                  nop
                  slt          sp, tp, a1
                  slt          s7, t6, s4
                  sub          s4, sp, s7
                  add          s11, sp, s10
                  auipc        zero, 330069
                  slli         t4, t6, 22
                  lui          a6, 90395
                  slli         s11, t4, 28
                  xor          s7, s6, s1
                  and          s6, t4, t6
                  lui          a2, 280991
                  slli         s3, t5, 28
                  and          s3, gp, s7
                  srl          t3, a3, a6
                  srai         t2, s1, 27
                  srl          s3, a1, s9
                  sltiu        a7, t4, 1551
                  add          tp, tp, a5
                  nop
                  srai         a6, a4, 31
                  nop
                  addi         a0, a0, -303
                  srl          a0, s2, s3
                  xor          sp, a2, s8
                  sltu         a0, s4, s7
                  slti         a1, s2, -1038
                  sltu         t6, s9, a2
                  slli         a4, t3, 10
                  srl          s10, s4, a2
                  addi         t3, a6, -1957
                  auipc        a1, 137801
                  and          sp, a4, t5
                  and          tp, t1, ra
                  srli         s10, s6, 19
                  srl          a6, a5, s4
                  srli         t5, sp, 16
                  xori         t2, a4, -159
                  lui          s8, 406560
                  srli         a3, t3, 24
                  xor          s6, s8, gp
                  sll          t3, t1, a6
                  ori          gp, t6, 93
                  sltu         a6, a7, s7
                  xor          s8, t3, gp
                  srai         a1, a1, 28
                  slti         s4, zero, -1028
                  slli         s8, ra, 23
                  sltiu        t6, a0, -739
                  sub          a3, s11, t5
                  sll          tp, a1, t2
                  sll          t4, s0, s4
                  lui          t0, 355927
                  addi         tp, s6, -507
                  lui          s3, 851204
                  sub          ra, sp, s0
                  ori          s1, t1, 496
                  nop
                  addi         a0, t2, 1930
                  or           s6, a3, s5
                  sll          s4, t0, a7
                  sra          s11, t2, s10
                  xor          sp, t4, t4
                  lui          s9, 299419
                  auipc        a2, 161553
                  add          t3, s1, s10
                  sltu         s7, s8, a7
                  sltiu        t6, gp, 1931
                  srli         a7, s9, 20
                  auipc        s3, 882475
                  srli         a4, s5, 20
                  srli         s1, a0, 20
                  andi         a6, s11, -411
                  auipc        s11, 556432
                  srai         t2, a6, 9
                  add          s9, t6, t0
                  sra          t0, a3, s7
                  sltu         ra, s11, t0
                  auipc        a3, 54786
                  sra          t6, s9, gp
                  srl          s4, s1, t4
                  andi         s0, sp, 1286
                  sra          tp, s7, s1
                  sltu         a6, ra, t4
                  andi         s3, s4, -1165
                  sra          a7, t4, a6
                  slti         s9, a1, -483
                  slli         a4, a1, 1
                  sltu         s8, s0, s1
                  slt          s11, s1, a2
                  auipc        s11, 323918
                  auipc        s1, 721654
                  xori         a4, t5, -1814
                  nop
                  xor          s8, s8, a2
                  srai         t6, t2, 5
                  srai         a7, s1, 22
                  addi         t6, s4, 506
                  auipc        a3, 898740
                  slti         s2, s10, -120
                  srl          zero, t2, s3
                  xor          s11, t6, tp
                  lui          s4, 151227
                  andi         s4, t4, -367
                  xori         a7, s0, 950
                  sll          t6, s5, s5
                  srli         s9, s0, 25
                  sra          s4, zero, a1
                  slti         s0, s6, 946
                  srai         s9, t3, 7
                  srli         t6, t5, 16
                  nop
                  auipc        a2, 467639
                  srl          a3, t6, s10
                  srai         s9, s5, 21
                  slt          t2, s8, s0
                  slli         t0, t1, 20
                  add          a1, t1, t2
                  slli         s8, a4, 13
                  slt          s10, s11, s11
                  slli         s9, s9, 27
                  sll          t6, s3, a0
                  slt          t2, t0, t6
                  addi         s3, s9, 261
                  xor          s2, s1, gp
                  slt          t5, a0, a4
                  srai         t3, s4, 27
                  xor          s2, t4, s3
                  or           s4, a0, a1
                  slti         tp, t4, 84
                  xori         t4, s0, 833
                  srai         t0, t2, 25
                  ori          t3, ra, -1332
                  srli         gp, t6, 9
                  xori         zero, s1, 1611
                  sltu         s11, a4, a1
                  slt          a3, s10, s5
                  sra          gp, s8, t2
                  and          t3, t1, s11
                  nop
                  addi         a0, t5, -929
                  slli         s9, s10, 2
                  and          s8, s4, a5
                  srai         s10, a7, 2
                  srli         s11, gp, 12
                  andi         s4, t0, 22
                  or           s11, s1, s10
                  xori         s2, a4, -389
                  xor          a1, a0, a3
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           t0, 0x0
                  li           a1, 0x80000000
                  li           a6, 0x0
                  li           tp, 0x2cd12231
                  li           s10, 0xcd734f94
                  li           sp, 0x0
                  li           t4, 0x80000000
                  li           s4, 0x80000000
                  li           s9, 0x80000000
                  lui          a6, 23907
                  nop
                  sub          a3, s9, a3
                  nop
                  sub          tp, a6, a3
                  add          t0, sp, sp
                  add          t0, s10, sp
                  lui          sp, 838813
                  lui          s4, 341469
                  sub          a6, tp, t0
                  nop
                  sub          s9, a3, tp
                  lui          a6, 408735
                  auipc        a3, 147163
                  auipc        s10, 96503
                  nop #end riscv_int_numeric_corner_stream_11
                  slt          a7, tp, s5
                  srli         t5, s4, 16
                  auipc        s11, 152269
                  srli         t0, s8, 24
                  slt          gp, t2, gp
                  addi         a7, a0, 8
                  xor          s8, a5, a1
                  sltu         s10, a4, zero
                  addi         ra, t3, -16
                  srl          s9, sp, s11
                  xori         t2, ra, 621
                  srli         tp, a2, 24
                  and          tp, ra, a5
                  or           s7, a0, s5
                  sltiu        t3, s9, 1897
                  sra          a0, s6, gp
                  add          s7, a5, s5
                  sll          t6, s10, zero
                  xori         t3, s5, -1468
                  srli         s9, s1, 22
                  srai         t2, s10, 4
                  sra          t4, a0, s8
                  srai         sp, s9, 2
                  lui          t5, 894726
                  srli         t6, a4, 6
                  lui          t5, 504644
                  and          s1, t1, a3
                  and          a7, gp, s8
                  srai         a1, a3, 16
                  ori          t3, s5, -2001
                  srl          t6, zero, sp
                  sltu         t2, s11, gp
                  auipc        s6, 105142
                  srli         gp, s4, 6
                  auipc        t5, 710470
                  srli         s4, t1, 23
                  xori         a2, tp, -1900
                  slli         zero, gp, 14
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_26
                  li           s11, 0xffffffff
                  li           a2, 0x80000000
                  li           s9, 0x0
                  li           a0, 0x80000000
                  li           gp, 0x80000000
                  li           s6, 0x0
                  li           t4, 0x0
                  li           s8, 0x80000000
                  li           t2, 0x80000000
                  addi         a6, s9, 571
                  add          t2, s9, s9
                  lui          a2, 573260
                  nop
                  nop
                  nop
                  sub          s8, t2, a0
                  add          s11, gp, a0
                  add          s9, t2, a6
                  add          t4, s6, t2
                  sub          t2, s11, t2
                  add          s9, t4, s11
                  sub          t2, t2, t2
                  nop
                  add          s6, s8, s9
                  lui          t4, 359233 #end riscv_int_numeric_corner_stream_26
                  srai         s7, s2, 17
                  ori          a7, t6, 700
                  sltiu        a2, s9, 312
                  slti         t4, t0, -781
                  xori         a3, tp, 172
                  slt          gp, a5, t4
                  or           a2, s0, t1
                  nop
                  and          s10, t6, a3
                  slti         t6, t3, 574
                  xor          s6, s5, s2
                  add          a0, s1, s7
                  or           t0, zero, s2
                  and          s0, t3, tp
                  sltu         sp, t6, s0
                  srai         s6, s3, 8
                  auipc        s3, 22361
                  srai         a4, t4, 30
                  lui          t5, 722417
                  srai         a4, a5, 0
                  slti         a6, s9, -44
                  auipc        s11, 131109
                  slti         sp, s9, 454
                  srli         t0, t0, 10
                  slt          a0, a1, s5
                  sltiu        t0, s6, -1190
                  ori          s11, a7, 145
                  ori          a1, t1, 894
                  or           gp, t2, s6
                  andi         zero, t2, -1335
                  andi         a3, s4, 649
                  slli         s4, a5, 6
                  slti         s0, tp, 708
                  nop
                  sll          a4, t1, a5
                  xor          a6, s3, s8
                  nop
                  xori         t6, s3, 1432
                  or           a2, a7, s7
                  slti         s11, s5, 1560
                  addi         a1, s9, 1528
                  lui          a4, 1018652
                  addi         a0, t5, 1608
                  xori         a4, t3, -925
                  sub          tp, t0, t1
                  xor          t5, gp, sp
                  slli         a7, a0, 22
                  or           a6, ra, t3
                  add          s7, t5, a6
                  and          s8, t3, gp
                  slti         s0, t0, -1345
                  ori          a2, t0, 531
                  add          tp, a1, s9
                  addi         t2, t2, 484
                  auipc        a6, 880478
                  slli         zero, a5, 20
                  sub          s1, a7, s8
                  add          ra, s2, s11
                  xor          zero, s2, a7
                  slt          s0, t1, gp
                  add          s6, s3, ra
                  xori         ra, gp, -1459
                  or           s4, s1, s11
                  add          s0, s5, a3
                  add          s2, t3, a1
                  slti         s11, s4, -2006
                  srl          s6, t2, a2
                  lui          a3, 179344
                  sra          t3, t0, a1
                  addi         s2, s7, 520
                  xor          t4, s0, s5
                  sltiu        t0, a2, -1729
                  sltu         s9, s2, a7
                  sra          s8, t4, s2
                  ori          a6, ra, 523
                  srli         s4, t0, 17
                  addi         a1, gp, 836
                  slt          s1, t4, s0
                  slti         t0, tp, -1304
                  sll          s0, a1, t0
                  or           ra, gp, t0
                  sltu         t2, s2, a0
                  srl          t4, s2, t1
                  sltu         s7, s5, a1
                  srl          t6, a3, a7
                  srli         s1, t5, 21
                  srai         t5, a2, 9
                  srai         a2, sp, 13
                  and          s7, zero, s9
                  or           t0, s0, a6
                  andi         a3, t1, 853
                  xori         s7, t0, 1704
                  nop
                  srl          t5, t5, s0
                  ori          a2, s5, 1967
                  slt          s3, t3, s5
                  sub          a4, s10, t1
                  xori         s3, a2, 1278
                  srli         s9, s4, 9
                  auipc        t5, 410263
                  add          ra, s1, t2
                  auipc        s9, 1046486
                  andi         a3, s3, -190
                  slti         s4, s7, -1384
                  slti         ra, a1, 954
                  andi         s9, s5, 889
                  li           t0, 0x5a0a2d19 #start riscv_int_numeric_corner_stream_10
                  li           s11, 0x80000000
                  li           sp, 0xffffffff
                  li           s1, 0x80000000
                  li           s2, 0xcb9488a5
                  li           tp, 0xffffffff
                  li           t6, 0x6749003b
                  li           a1, 0x0
                  li           s6, 0xffffffff
                  li           a3, 0x80000000
                  add          s2, t0, s6
                  add          t0, a3, s2
                  auipc        s6, 402388
                  nop
                  lui          sp, 883334
                  auipc        s6, 562699
                  nop
                  addi         sp, sp, 1877
                  auipc        sp, 799436
                  auipc        s2, 261539
                  addi         tp, s6, 535
                  auipc        s6, 39264
                  nop
                  auipc        t0, 290963
                  nop
                  auipc        a1, 469281
                  add          s11, t6, t6
                  addi         s11, s6, 53
                  nop
                  lui          s11, 91624
                  sub          s11, s1, sp
                  auipc        t0, 674017
                  add          s2, a3, s2
                  addi         sp, a3, -1096
                  auipc        sp, 648169 #end riscv_int_numeric_corner_stream_10
                  sll          ra, gp, t3
                  slli         a7, a3, 5
                  andi         tp, sp, 1937
                  or           t4, a1, zero
                  slti         a3, t3, 1050
                  ori          sp, s7, 51
                  nop
                  srl          s7, t4, s10
                  ori          t0, sp, 1381
                  and          gp, t6, s3
                  ori          s6, s4, 1348
                  xori         t4, sp, 1674
                  auipc        a1, 127522
                  slti         a7, s8, -54
                  srl          ra, a1, s10
                  add          s6, s11, a7
                  sra          s2, t3, a4
                  slti         s10, ra, 1881
                  slti         t2, t5, 1053
                  nop
                  lui          a7, 780986
                  srli         a3, a1, 18
                  add          a2, s4, a1
                  sll          t4, s4, s9
                  sub          ra, a5, s9
                  sltiu        s10, zero, 386
                  srl          sp, a7, sp
                  xor          t3, s2, t4
                  ori          gp, sp, -1909
                  andi         s7, s7, 1493
                  and          tp, s2, t5
                  srli         a1, ra, 0
                  ori          s4, s4, -526
                  srli         gp, a4, 9
                  sll          zero, a7, s11
                  and          a7, ra, s1
                  srai         s10, s9, 14
                  slt          t6, s11, a1
                  sltiu        a6, a2, 1264
                  slli         tp, s4, 5
                  xori         t3, s1, 1614
                  srai         a4, a7, 18
                  srl          t5, a0, s11
                  sll          tp, t1, a5
                  xori         tp, s1, -1467
                  ori          s11, a2, -1497
                  add          a6, s8, a4
                  andi         a4, t3, -1823
                  addi         t3, s9, 563
                  sra          a1, t3, s7
                  sra          t5, a3, a4
                  addi         a6, t1, -1757
                  sra          a3, a5, a1
                  srl          s8, zero, s1
                  sra          a1, s1, s5
                  nop
                  srl          zero, t1, ra
                  auipc        s1, 577382
                  sltiu        s7, a1, 14
                  sltu         s8, sp, t5
                  sll          a1, t0, a4
                  slti         s6, s1, -150
                  sub          a4, s1, s1
                  srli         s6, sp, 31
                  nop
                  srai         s11, s2, 27
                  or           t6, a1, s3
                  sll          a3, zero, sp
                  addi         a0, s7, 754
                  slt          a4, a1, t0
                  auipc        s2, 125655
                  slti         s9, a1, 1414
                  sub          s4, t2, a5
                  xori         a3, s5, -801
                  srl          sp, t4, s3
                  and          sp, t5, t2
                  srl          t6, a2, ra
                  addi         sp, s4, 270
                  slli         sp, a0, 14
                  srai         a6, s2, 13
                  sll          s9, t6, t1
                  addi         ra, s2, 1958
                  srli         a1, a1, 29
                  add          s1, gp, a5
                  srai         a1, t6, 21
                  add          s2, s5, s9
                  or           s4, s0, zero
                  lui          a1, 552681
                  sltu         t4, s1, t5
                  addi         t5, s0, -2036
                  or           s1, t6, s5
                  xori         s0, a7, 610
                  slti         s1, s0, 359
                  add          t2, s6, t2
                  sltiu        sp, t3, 882
                  andi         a1, a5, 1876
                  sltu         a7, t2, ra
                  xor          s4, t3, t4
                  srai         tp, s11, 27
                  andi         t3, a4, -1823
                  sra          s3, s1, s11
                  addi         t0, t2, 268
                  lui          s0, 753137
                  sub          s7, s9, s3
                  xori         s6, s10, 765
                  sra          s8, s8, s10
                  xori         t3, t6, -297
                  ori          t3, s2, 1093
                  and          t2, s8, s1
                  and          s8, t6, s1
                  srai         sp, t6, 14
                  slli         t0, s0, 1
                  slt          a2, tp, t0
                  addi         s10, sp, -1328
                  srl          s1, s9, t6
                  auipc        s8, 657417
                  xor          t2, t1, t3
                  nop
                  and          a0, a1, t5
                  addi         tp, t5, -1449
                  srai         sp, a1, 8
                  andi         ra, a6, -1571
                  and          a6, a0, a1
                  srli         t0, a2, 11
                  srai         zero, t2, 18
                  andi         sp, sp, -1828
                  srli         s9, t4, 8
                  sra          s1, t2, s9
                  slt          s0, s4, s0
                  or           t2, a6, s6
                  xori         s0, a4, 1243
                  add          a3, ra, t2
                  addi         t3, s6, -937
                  sra          s8, t2, s6
                  sltu         s0, s8, s7
                  or           s4, t1, gp
                  slli         ra, t1, 25
                  sll          a6, zero, ra
                  sltu         sp, a1, s6
                  xori         s3, s1, 1047
                  sll          a0, a2, s11
                  addi         s9, t2, 8
                  srl          ra, t4, s11
                  sltiu        t4, s1, 1485
                  sltu         a3, a6, sp
                  lui          gp, 107877
                  sub          tp, s9, tp
                  slt          s9, sp, a1
                  auipc        s9, 1025540
                  sltiu        t3, s0, -43
                  xori         s4, a0, -1170
                  and          s1, s9, ra
                  sub          sp, s11, s9
                  nop
                  andi         a1, a0, -849
                  sra          gp, s0, s4
                  srai         t6, a6, 13
                  sll          a6, t3, ra
                  sll          gp, t6, tp
                  nop
                  li           tp, 0x59eefc9a #start riscv_int_numeric_corner_stream_2
                  li           a7, 0x80000000
                  li           s8, 0x70ccd27f
                  li           s7, 0x0
                  li           a3, 0x0
                  li           a6, 0x69804ace
                  li           sp, 0x99b2790a
                  li           s10, 0x80000000
                  li           t6, 0x0
                  li           s4, 0x0
                  lui          sp, 1016935
                  sub          a3, a3, s10
                  nop
                  sub          a6, s7, tp
                  add          tp, a6, s7
                  nop
                  nop
                  addi         s10, t6, -1755
                  addi         a3, tp, -1556
                  sub          a7, s10, s10
                  lui          a3, 803813
                  add          t6, a3, s10
                  lui          a6, 680168
                  lui          sp, 307573
                  sub          tp, a7, s10
                  sub          tp, a7, t6
                  sub          s8, t6, s4
                  auipc        s7, 10278
                  nop
                  addi         sp, s4, 2015
                  auipc        s8, 649563
                  lui          s4, 19572
                  addi         a6, t6, -804
                  lui          a7, 800310
                  add          t6, s10, sp
                  add          s8, s8, s4
                  addi         tp, tp, -1765
                  sub          a3, a6, a7 #end riscv_int_numeric_corner_stream_2
                  xori         t3, s9, 1340
                  andi         a3, s8, 698
                  auipc        s4, 943784
                  add          t6, a7, s2
                  sltiu        a7, a6, -1071
                  auipc        t5, 443981
                  srli         s1, s1, 23
                  or           t2, t1, zero
                  slti         a0, s5, 1779
                  sll          t0, a2, a6
                  addi         t4, a7, -1113
                  add          s2, s5, tp
                  sltiu        gp, s9, 1750
                  auipc        t5, 237420
                  srli         s10, a2, 7
                  sltu         s7, a1, t5
                  addi         zero, s2, 2016
                  sltu         s4, s7, s6
                  slt          a0, s3, a0
                  sra          ra, t2, t4
                  or           zero, s0, a6
                  xor          zero, s0, a1
                  ori          gp, ra, 1810
                  and          t4, a5, s8
                  slti         s8, s10, 267
                  addi         a2, ra, 1889
                  slt          t5, sp, s2
                  xor          a1, a7, tp
                  sll          s7, a3, a1
                  and          tp, t6, a1
                  or           s9, s8, s11
                  srl          a3, s2, s3
                  slli         t4, a2, 9
                  auipc        t2, 168239
                  sra          zero, t3, a7
                  or           a7, s5, a2
                  lui          gp, 930045
                  lui          s0, 441141
                  srl          a1, s4, zero
                  slt          s10, t0, sp
                  nop
                  sub          a7, s6, ra
                  lui          s4, 463892
                  andi         s11, a5, -1767
                  slt          a6, t3, a5
                  xor          t3, t5, t3
                  sltiu        s10, zero, 1700
                  andi         a1, t2, -608
                  xori         tp, a4, 161
                  andi         a1, s1, 1123
                  srli         s3, a0, 31
                  ori          a4, s3, 633
                  nop
                  and          t2, a2, a2
                  andi         s11, s0, 727
                  slt          a6, zero, a5
                  lui          s2, 508014
                  nop
                  ori          t2, s7, 1494
                  xori         s0, s11, 105
                  sra          s9, s9, a1
                  xor          gp, s1, s2
                  srl          t2, gp, a1
                  ori          zero, ra, 596
                  or           a1, t2, t3
                  sub          sp, tp, a3
                  sltiu        a4, s5, -1400
                  ori          s10, a2, -2007
                  sub          s6, t3, zero
                  andi         a1, s10, -1051
                  sltu         zero, s9, t2
                  xori         t6, s6, -1042
                  addi         s11, ra, -567
                  add          s1, t5, s5
                  addi         t3, a1, 815
                  or           ra, s5, s0
                  add          a4, s6, zero
                  sltiu        a6, a0, 428
                  srli         a6, s2, 20
                  lui          s11, 10818
                  slli         s6, s8, 2
                  srli         s9, sp, 8
                  sltiu        a4, a1, 1802
                  slt          a0, s8, tp
                  sra          s1, a1, s1
                  add          s3, s6, s9
                  or           s2, sp, s4
                  add          s8, s2, tp
                  sltiu        s1, t6, 854
                  nop
                  auipc        s2, 103725
                  xori         sp, s4, -1866
                  sltiu        tp, s3, 1128
                  sub          a2, s4, s2
                  slli         gp, s4, 19
                  and          s3, zero, s2
                  and          t0, t4, tp
                  sub          s4, a3, t2
                  sll          a3, s0, a5
                  srai         s10, s7, 25
                  addi         t4, s5, 122
                  auipc        a7, 108659
                  nop
                  xori         s1, t4, 53
                  xor          gp, tp, a4
                  sub          ra, t0, a6
                  xor          a6, s5, s10
                  srl          s11, t1, a0
                  xor          s6, sp, a2
                  slt          s1, a2, tp
                  nop
                  lui          s2, 90243
                  slti         s4, zero, -921
                  sra          t4, s3, zero
                  srli         s0, s2, 7
                  srli         s11, s6, 5
                  nop
                  sll          gp, s1, s3
                  slt          s0, s2, s10
                  nop
                  srl          t3, s6, s10
                  lui          s9, 80880
                  sll          t4, a3, ra
                  auipc        t0, 104285
                  and          s7, a7, t3
                  auipc        a2, 176276
                  nop
                  sltu         t6, s9, t1
                  sra          tp, t5, s9
                  andi         sp, t6, -376
                  sra          a6, t3, s0
                  sub          a0, s10, s1
                  xor          a1, a1, s4
                  sll          ra, s0, s0
                  ori          s1, s8, -744
                  andi         s9, a1, -735
                  ori          s4, t4, 243
                  and          s7, gp, a5
                  sra          s1, s4, a1
                  srai         t5, s1, 5
                  srli         a2, t0, 4
                  andi         a3, s9, 777
                  sltiu        t6, t0, -1637
                  sra          s1, a4, t1
                  xori         s2, tp, -495
                  add          tp, a0, s10
                  xori         sp, a5, -980
                  sltu         a3, s3, s6
                  srai         a7, s4, 29
                  srli         s3, a1, 10
                  xori         a7, ra, -659
                  lui          tp, 83870
                  xori         s0, zero, 1574
                  slt          t6, t4, s9
                  ori          a6, a7, 1544
                  sll          s3, s0, s1
                  addi         s2, s10, -1057
                  ori          a6, s7, -2008
                  xor          sp, t6, ra
                  or           t6, t3, s4
                  sll          a2, s7, a3
                  sltu         a3, a7, a2
                  sra          a1, a6, s3
                  slt          t2, ra, tp
                  srai         a1, s6, 20
                  slt          t2, a0, sp
                  slli         zero, s6, 18
                  nop
                  slti         s7, s2, -657
                  slli         zero, s4, 5
                  or           gp, a1, s3
                  xor          a4, s4, a5
                  slli         s7, s9, 17
                  ori          s1, a4, 369
                  and          a4, a7, a4
                  sltiu        t4, sp, 1276
                  andi         s10, a7, -138
                  and          s10, a0, a1
                  sra          gp, s4, a7
                  srai         s1, a0, 26
                  sltu         s11, s9, t4
                  or           a6, t2, s3
                  addi         a6, gp, 161
                  srai         s1, a3, 2
                  sub          s1, s9, s3
                  xori         a0, a2, 225
                  slti         t5, s3, 2038
                  srai         tp, t0, 5
                  xori         s1, s5, -1877
                  sub          s8, t6, s1
                  srl          s0, s7, a5
                  srl          s6, a2, s0
                  srl          ra, a3, t2
                  nop
                  sub          s2, a1, t5
                  srli         a2, zero, 18
                  xor          s6, s11, sp
                  xor          s4, s3, t4
                  ori          t6, a5, 158
                  sll          s4, t5, a2
                  xor          s10, t4, a7
                  sltiu        s11, t4, 198
                  xori         t0, s9, -313
                  xori         s8, a7, -1715
                  srl          a3, s5, s3
                  or           sp, a0, gp
                  slt          a2, t3, a7
                  sra          a3, t1, zero
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_38
                  li           s9, 0xffffffff
                  li           sp, 0xffffffff
                  li           t5, 0x80000000
                  li           t0, 0x80000000
                  li           s3, 0x80000000
                  li           s11, 0x9039b554
                  li           a7, 0x10f5b0aa
                  li           t6, 0xfdf64105
                  li           s1, 0x847d3d53
                  auipc        t6, 1011458
                  sub          s3, t5, s11
                  addi         s1, t0, -864
                  lui          s11, 470612
                  sub          a7, a7, s11
                  add          s1, t0, gp
                  nop
                  addi         s1, s11, -1241
                  auipc        t6, 574306
                  add          t0, s3, t5
                  addi         s1, s9, -609
                  add          s11, s11, gp
                  auipc        t5, 610352
                  addi         t6, t0, 953
                  nop
                  addi         sp, sp, 1409
                  addi         t0, s9, -516
                  lui          s3, 580519
                  add          a7, gp, s1
                  sub          s1, t0, s11
                  sub          s11, a7, s3
                  add          sp, t0, gp
                  lui          a7, 912401
                  nop
                  lui          t0, 94087
                  add          gp, t6, s1 #end riscv_int_numeric_corner_stream_38
                  add          s11, a6, a1
                  slti         sp, s10, 1929
                  andi         a0, t3, 393
                  lui          a7, 936917
                  slli         t2, s0, 29
                  slti         zero, a2, -1271
                  sll          t4, s5, s0
                  srli         a1, a6, 7
                  add          t4, a3, sp
                  or           a1, s4, s8
                  auipc        a3, 327043
                  srai         s6, zero, 2
                  slt          zero, sp, s1
                  addi         a6, a2, 1351
                  sra          a3, s0, a5
                  auipc        t4, 950353
                  sra          a2, t3, ra
                  andi         s11, s4, -1159
                  sltiu        s4, a5, 1551
                  sltiu        s3, s8, 955
                  sub          a7, t2, t1
                  andi         s9, sp, -1862
                  nop
                  slti         t5, ra, -1569
                  slli         s8, s4, 12
                  sra          t0, s11, t4
                  ori          t3, t3, 217
                  sub          a3, s4, s6
                  add          a2, a6, s0
                  srl          s6, t6, gp
                  sra          s1, t1, zero
                  sra          t6, s6, t6
                  slt          a1, a1, a5
                  lui          t4, 200281
                  andi         t4, s1, 720
                  lui          a7, 794921
                  slti         s11, a3, -1656
                  sll          t3, s11, t3
                  ori          t4, tp, -603
                  add          sp, sp, a1
                  slt          tp, zero, t0
                  and          s3, t0, t2
                  li           s9, 0xa6180fd3 #start riscv_int_numeric_corner_stream_6
                  li           t5, 0x0
                  li           s7, 0x0
                  li           a3, 0xffffffff
                  li           tp, 0xffffffff
                  li           a2, 0x64ad7b85
                  li           s8, 0xffffffff
                  li           t0, 0x80000000
                  li           a0, 0x63a71ad3
                  li           a1, 0x0
                  add          s7, tp, s9
                  sub          a1, t5, tp
                  auipc        tp, 240935
                  nop
                  add          a0, s7, tp
                  nop
                  auipc        s8, 979940
                  add          s8, a1, tp
                  nop
                  add          tp, tp, a2
                  nop
                  sub          t5, a1, a1
                  addi         s7, s7, 584
                  auipc        s9, 873631
                  auipc        t5, 803052
                  add          a3, s8, s8
                  addi         tp, s8, 1385
                  auipc        t5, 1017448
                  nop
                  lui          s7, 233617
                  sub          s7, s8, s7
                  addi         t5, s9, -1818 #end riscv_int_numeric_corner_stream_6
                  ori          s9, t0, 1365
                  sub          t5, t2, sp
                  lui          s3, 18788
                  sltiu        s6, s9, -733
                  sub          s6, t5, s8
                  srl          t5, t4, t4
                  add          a3, a6, sp
                  ori          s6, t6, -1395
                  slti         gp, s2, 106
                  lui          s4, 412524
                  slli         s11, a4, 14
                  lui          t6, 998388
                  add          s1, s9, ra
                  sll          s8, s5, s0
                  srli         s3, t0, 24
                  add          s2, s7, a6
                  nop
                  andi         a4, a1, -205
                  srai         t4, s3, 19
                  lui          zero, 234411
                  lui          a6, 586925
                  srli         s10, tp, 15
                  lui          t4, 395641
                  sll          s10, t0, a1
                  nop
                  slli         s0, s0, 17
                  slli         a7, s1, 19
                  andi         s3, s9, 1974
                  srli         a7, a2, 31
                  xori         gp, s6, 1821
                  ori          a6, s7, -544
                  srli         t0, s10, 13
                  sltiu        t3, t0, 1111
                  xori         s8, a5, 1068
                  slt          a0, s9, s7
                  sltiu        t0, s9, -1703
                  sltu         sp, t5, a5
                  sltu         s3, s1, t6
                  addi         s6, s0, 998
                  sll          s11, s6, s3
                  srli         a3, s11, 22
                  sll          s8, s4, s3
                  slt          a0, t4, s8
                  addi         t5, s0, 1481
                  slli         t0, t4, 13
                  xori         s1, ra, 261
                  sub          t4, s1, s8
                  slti         s8, tp, 930
                  sub          s4, t6, s9
                  sll          a3, a3, zero
                  srl          t6, s7, t3
                  sltu         gp, a6, tp
                  slti         a2, s0, 768
                  sub          s11, a1, a4
                  or           s4, t0, a2
                  xori         a2, s8, 785
                  xor          a1, t1, a0
                  srai         gp, t2, 18
                  sra          a3, tp, s11
                  andi         a6, t0, 1185
                  andi         a4, a1, 1998
                  lui          t6, 408904
                  sll          s9, s4, s9
                  lui          a6, 967751
                  sltiu        sp, s1, 952
                  sub          a1, a1, sp
                  or           ra, s3, a7
                  srai         s0, s6, 16
                  addi         a3, s7, 1138
                  sub          tp, ra, sp
                  xori         a2, a4, 10
                  andi         a6, s0, 1698
                  xor          s3, ra, a4
                  slli         s10, s1, 16
                  add          tp, a0, gp
                  slti         t4, a1, -822
                  sltu         s3, s0, t5
                  xor          a0, s8, s4
                  addi         a7, a0, -76
                  sub          s6, t6, s11
                  srai         t4, s8, 9
                  srai         a0, s4, 11
                  srai         a2, s10, 15
                  sll          t0, t6, t4
                  lui          a4, 873283
                  add          tp, s6, t4
                  xori         t5, a0, -1379
                  add          t5, a1, s2
                  xori         a2, s0, 609
                  slli         s10, s9, 28
                  srai         s6, s6, 21
                  auipc        a2, 994493
                  srli         gp, s2, 19
                  or           s11, t1, s7
                  xori         t6, a2, 351
                  slli         s10, a3, 3
                  nop
                  xor          a6, s3, a6
                  xori         tp, gp, -361
                  sub          t6, a3, a0
                  slt          a1, a3, s7
                  sltiu        t4, ra, -1333
                  ori          s10, zero, -1200
                  ori          a0, s11, 953
                  slti         t5, t3, 1260
                  slli         s4, ra, 4
                  xori         ra, a2, -487
                  sltu         a0, s8, sp
                  sltu         t3, s0, a0
                  auipc        a2, 800689
                  or           gp, a2, ra
                  sll          s3, t1, t4
                  andi         s8, a0, -1652
                  sub          s3, sp, a1
                  nop
                  auipc        t6, 245894
                  sll          a3, t2, t2
                  andi         t6, tp, -2012
                  or           gp, s9, zero
                  lui          s4, 241507
                  slti         a2, gp, -370
                  nop
                  sltu         t0, s4, t4
                  or           tp, a2, s3
                  srli         s7, zero, 4
                  ori          sp, ra, -1052
                  addi         s3, a4, -946
                  srli         tp, s0, 6
                  or           a3, s4, s3
                  sltiu        a4, s6, -821
                  lui          t2, 621950
                  ori          s2, s5, 904
                  srai         ra, s3, 11
                  sra          t2, s1, s8
                  slt          s3, s11, t0
                  auipc        t2, 584147
                  or           s0, s0, s11
                  sltiu        a0, t3, -759
                  andi         tp, s10, 1261
                  slti         t2, ra, 465
                  sll          t3, s6, a3
                  addi         a7, s4, -1375
                  sra          s8, s1, t4
                  sra          s4, s5, t1
                  andi         sp, sp, 1862
                  sub          s3, s11, s2
                  slti         s1, t4, 1991
                  sra          sp, a0, t2
                  sll          s3, a6, a7
                  slti         t3, tp, 115
                  slli         t2, s0, 28
                  srl          a1, a5, s1
                  addi         s9, gp, -815
                  auipc        sp, 1795
                  srl          t2, s3, s10
                  xor          s7, s4, a0
                  andi         s7, s10, -1819
                  auipc        a2, 250955
                  xori         a0, a5, 900
                  sub          a1, t3, s5
                  or           s6, s1, s11
                  sll          a6, sp, t3
                  slt          t2, a7, s6
                  auipc        s3, 1030240
                  addi         a3, s9, -735
                  and          t6, a7, t6
                  lui          a4, 570726
                  sltiu        s7, tp, 1578
                  sltiu        a6, a2, 879
                  lui          tp, 419800
                  slt          a6, s1, a5
                  addi         t4, s0, -1244
                  srli         t3, s0, 19
                  addi         s7, zero, 1551
                  or           sp, s9, t1
                  sub          s1, t0, a6
                  xor          a4, zero, s0
                  lui          a6, 483940
                  add          a6, a0, t6
                  sub          t6, t4, t1
                  sll          s8, a1, s10
                  sub          t4, a4, a4
                  nop
                  addi         tp, s8, -1242
                  lui          t4, 479716
                  srai         t0, s6, 9
                  xor          sp, s9, ra
                  xor          a2, a6, s7
                  auipc        t5, 705238
                  auipc        a0, 631699
                  ori          s7, s8, 520
                  slt          s9, s11, s3
                  sll          sp, gp, zero
                  nop
                  or           a4, t6, t2
                  xori         s1, s9, 145
                  srai         gp, a0, 30
                  nop
                  sra          a6, t0, t2
                  xor          s11, s4, a2
                  slti         s7, tp, -1539
                  sll          s1, t1, s9
                  sub          zero, s10, s2
                  nop
                  srli         a4, a3, 27
                  nop
                  slti         t5, s4, 186
                  sltu         t4, a0, s4
                  srl          gp, s3, a2
                  and          a4, s9, a5
                  or           ra, a3, s0
                  or           gp, s11, a6
                  and          s7, s0, gp
                  ori          t0, a0, -345
                  srli         ra, s3, 19
                  srli         a1, s11, 4
                  srl          tp, s5, s7
                  auipc        s0, 472284
                  sltu         gp, a6, sp
                  and          a6, s0, gp
                  xor          s9, a7, s11
                  srai         a2, zero, 27
                  nop
                  srai         tp, t1, 27
                  srl          s10, a0, a6
                  add          a4, s7, s0
                  xor          a2, tp, s10
                  and          s2, a5, s5
                  sll          a4, t3, s1
                  sub          sp, s1, s6
                  auipc        a1, 718454
                  slti         zero, a7, 1528
                  lui          zero, 269686
                  xor          t4, t5, s9
                  sub          t2, a1, a7
                  slti         a0, s2, 140
                  and          s11, t6, sp
                  lui          a0, 1028699
                  slti         a6, s6, 1341
                  srai         t2, s7, 1
                  xor          a6, t2, s11
                  slti         s2, s1, -1262
                  sltiu        t2, t1, -1751
                  add          s2, t1, s5
                  sra          s3, a1, t1
                  xori         sp, a7, -1657
                  srli         s8, zero, 19
                  addi         gp, s7, 1885
                  addi         t5, t6, 500
                  srli         ra, t0, 20
                  sll          a6, tp, a3
                  srai         ra, t1, 11
                  addi         t0, s6, 742
                  slt          s8, t3, a5
                  xori         s2, a0, 1104
                  sltu         a2, s5, a3
                  srl          t2, gp, a7
                  ori          tp, a0, -1988
                  addi         s3, a7, -205
                  slti         a4, a3, -1215
                  addi         zero, s7, -1720
                  ori          s4, s1, 1620
                  add          s1, s0, zero
                  and          s6, a5, s1
                  addi         a6, s11, -548
                  srli         ra, t3, 18
                  slli         s9, s1, 11
                  add          s3, t5, sp
                  add          t0, s8, a6
                  sub          s0, t0, gp
                  sra          s8, t2, s3
                  nop
                  sltu         a7, t1, s2
                  srli         a6, s6, 27
                  andi         s8, s0, 1744
                  sra          s6, ra, s10
                  or           ra, a3, s4
                  ori          t3, s10, 1536
                  sub          t4, a5, s5
                  sll          t5, a2, s1
                  sll          gp, t3, t5
                  sra          zero, a5, tp
                  andi         s8, a1, -720
                  sra          t0, s0, zero
                  xori         s7, s6, 1120
                  andi         a1, s6, 1458
                  auipc        s0, 906425
                  xori         a6, s2, 1060
                  lui          s6, 645654
                  xori         a0, t2, -1536
                  lui          s6, 803348
                  sltu         s0, s3, gp
                  addi         t2, a5, -70
                  srli         s11, t1, 17
                  lui          t4, 226234
                  add          a4, s9, a5
                  slt          s1, t0, a3
                  add          s9, t5, tp
                  slt          t3, s11, s8
                  or           t0, tp, tp
                  xor          sp, s0, t1
                  auipc        s0, 47049
                  sll          s11, s7, a3
                  srl          a2, t4, s6
                  sltu         a2, a3, a0
                  xori         a3, s3, -340
                  slti         t5, s11, 1458
                  slli         zero, s1, 5
                  slt          t3, s2, s2
                  sltiu        a1, t0, -735
                  andi         a0, s10, -1633
                  srai         a3, s9, 23
                  sltiu        s10, s6, 798
                  auipc        s0, 129595
                  srli         s6, zero, 28
                  slt          a1, t2, s2
                  srai         s10, t5, 0
                  ori          a6, zero, -259
                  add          zero, s5, a6
                  or           s8, s2, a4
                  slti         t4, a7, -97
                  sra          t0, s1, sp
                  sltiu        a7, a0, -1108
                  nop
                  sra          t3, s0, sp
                  slli         s7, s6, 26
                  sra          s0, s4, ra
                  xori         t4, s11, -2015
                  xor          a6, s4, a2
                  slt          a7, a2, t3
                  sub          a6, s3, s8
                  add          sp, tp, s4
                  sra          s8, t1, s10
                  addi         s0, s0, -674
                  xori         s10, t1, -792
                  sub          a4, s7, a3
                  and          a0, s3, s2
                  slli         s4, sp, 6
                  addi         t4, a3, -1546
                  or           t2, tp, a4
                  xori         a3, s1, -411
                  sltu         s2, s2, a2
                  add          s9, s9, s10
                  or           ra, s8, zero
                  srli         a6, s9, 20
                  srai         s11, s2, 25
                  andi         zero, a1, -1334
                  andi         s4, t5, 658
                  nop
                  slt          s7, s6, t4
                  srl          s1, t2, t4
                  srl          a1, t0, t2
                  srai         a1, s1, 1
                  and          a2, s1, t5
                  lui          s1, 891049
                  sltiu        t2, t6, 509
                  or           s11, s4, s9
                  lui          t2, 224558
                  slt          s11, s11, s7
                  srl          s0, s7, s11
                  addi         t6, s8, 1830
                  sra          a7, t5, a2
                  sltiu        a7, t3, -1059
                  and          s0, a7, s6
                  auipc        ra, 414509
                  nop
                  sll          t0, s4, gp
                  nop
                  addi         a7, tp, 1777
                  xor          s10, s5, a2
                  sltiu        a3, s1, 1354
                  lui          s9, 427985
                  slti         ra, s0, -1908
                  srli         s0, t0, 13
                  lui          s11, 395673
                  sltiu        s10, a0, 1372
                  and          s7, t3, s2
                  srai         sp, s8, 22
                  sra          tp, t2, a7
                  slt          a2, s4, a6
                  sub          s11, a4, a6
                  ori          s11, a3, 1328
                  srl          t6, a3, s9
                  srli         s11, gp, 14
                  or           a0, t1, gp
                  ori          sp, ra, 702
                  andi         s0, s5, -431
                  sltiu        s9, t1, -1935
                  addi         s4, a0, 847
                  xori         t0, t2, 1595
                  sra          s6, t3, a4
                  slli         s8, a6, 3
                  sltu         a4, t3, s9
                  nop
                  sltu         s7, a3, s0
                  slt          a7, s7, s8
                  xori         t0, a0, 216
                  sra          s7, t5, t1
                  add          s9, ra, a3
                  auipc        s7, 841126
                  lui          gp, 384853
                  and          s8, t1, a7
                  xori         s9, a4, -1670
                  slli         t5, gp, 22
                  ori          t2, t4, -938
                  auipc        s4, 531352
                  lui          s0, 634826
                  slti         t4, s11, -1225
                  xori         gp, a4, 570
                  auipc        s10, 316771
                  slt          s8, a0, t0
                  auipc        s11, 152946
                  nop
                  sltu         s0, ra, gp
                  lui          t0, 970342
                  ori          zero, a5, -150
                  and          tp, s1, s11
                  add          a6, gp, t4
                  addi         zero, s4, -1846
                  lui          a3, 594537
                  srai         a6, s1, 24
                  xori         t0, a6, -494
                  andi         t5, a0, -258
                  slli         a1, a2, 6
                  srl          t0, a5, t6
                  auipc        a6, 1003943
                  auipc        t6, 684452
                  srli         s9, s9, 10
                  xori         a7, zero, -1291
                  nop
                  slti         a6, s7, -859
                  sltu         t4, a0, a3
                  or           tp, s11, s9
                  slli         s11, s11, 12
                  srl          zero, s9, s4
                  sll          ra, s10, a2
                  slt          a2, s0, s11
                  sll          sp, t6, zero
                  sltiu        t2, s6, 1744
                  sll          s0, t6, s0
                  andi         t0, a1, -1054
                  xor          t6, t5, zero
                  srai         s9, t6, 5
                  auipc        s3, 434136
                  slli         a0, ra, 0
                  slti         s1, ra, 1646
                  and          sp, t5, t2
                  auipc        s7, 231012
                  srli         t0, ra, 15
                  slti         t0, s2, -954
                  slli         t6, ra, 10
                  sltiu        t6, s4, 1056
                  andi         s1, s3, -1517
                  slti         a1, zero, 1403
                  xori         s3, t4, -638
                  lui          zero, 283140
                  slli         a3, s4, 26
                  slti         s6, a2, 1610
                  sltiu        s3, s0, 1195
                  srl          s6, ra, t5
                  or           a7, t2, a6
                  xori         s7, t1, 916
                  sll          ra, tp, a3
                  slt          t6, t2, a1
                  srli         s2, s1, 11
                  auipc        a4, 678190
                  srli         t6, sp, 29
                  auipc        a3, 868723
                  addi         s6, zero, -1697
                  sub          zero, s11, zero
                  auipc        tp, 430943
                  sra          a7, a3, s4
                  srl          a7, a3, s7
                  lui          a0, 529608
                  slli         a6, a4, 31
                  xor          t5, t2, a4
                  auipc        s2, 483906
                  add          s4, gp, ra
                  srl          tp, t1, s4
                  sll          a3, sp, t5
                  slti         t6, s2, 2042
                  sub          s8, a7, a2
                  srli         s0, a5, 18
                  nop
                  lui          sp, 160076
                  sub          s8, t4, s3
                  sll          s8, s10, t3
                  sra          t4, a2, s10
                  sltiu        ra, a1, -1919
                  slli         s11, a2, 8
                  sub          s4, a5, t4
                  auipc        t3, 5592
                  srai         tp, s11, 23
                  addi         t4, s11, 2
                  and          ra, sp, gp
                  and          gp, ra, a5
                  xori         gp, s8, 1246
                  sltiu        a6, a2, 1442
                  add          s10, s1, s0
                  xor          a0, a5, s10
                  srl          a7, zero, a3
                  ori          t0, a7, 1434
                  sra          t0, t1, s4
                  slli         a3, s5, 4
                  xori         s4, a1, 871
                  sll          t5, a6, tp
                  srli         s0, t2, 7
                  add          s3, t2, a5
                  xori         s10, t6, 496
                  xor          t3, s8, a0
                  srli         a3, sp, 23
                  or           a2, s4, t2
                  xori         t5, ra, -161
                  slti         a6, t5, 320
                  andi         sp, s9, 364
                  add          a3, t6, s1
                  sub          a0, s7, t4
                  sltiu        a1, gp, 98
                  xori         t4, gp, 1967
                  srl          a6, s6, a4
                  srli         ra, s7, 30
                  ori          t6, t4, -713
                  addi         a3, s10, 351
                  lui          s4, 550899
                  srli         s8, t0, 15
                  and          a2, a0, s1
                  slli         t5, s1, 26
                  xor          s8, s3, a2
                  xor          t2, t2, s4
                  or           t4, zero, t2
                  srai         a7, a1, 10
                  srai         t2, a4, 28
                  auipc        zero, 889307
                  slli         s7, t5, 27
                  andi         t6, s4, -1868
                  andi         a6, gp, -23
                  sll          s7, s1, s4
                  and          t4, a7, sp
                  sra          t2, t4, s2
                  slt          a0, t0, s4
                  and          sp, s6, s9
                  xor          a4, gp, t5
                  srl          a2, t0, a0
                  auipc        a3, 894608
                  andi         t3, s8, -717
                  sra          s8, s8, s6
                  sll          s4, zero, s1
                  xor          s6, ra, s2
                  sll          t5, sp, s10
                  slli         t3, a4, 16
                  add          a7, t5, a6
                  srl          s6, a7, s8
                  slli         a6, a4, 16
                  and          t0, s6, s6
                  slli         t6, s3, 26
                  srai         a1, s11, 10
                  auipc        t6, 61339
                  and          tp, t6, a2
                  auipc        a4, 514869
                  or           tp, gp, ra
                  sra          s8, s9, a3
                  auipc        s2, 925219
                  xori         a7, s2, -1808
                  lui          t0, 732687
                  add          a3, a7, a3
                  sltiu        s11, gp, -759
                  sltu         ra, s8, gp
                  add          a6, tp, a7
                  add          a3, s1, a1
                  and          gp, a7, s6
                  sub          s2, a6, t4
                  add          s3, s3, s5
                  sltu         a2, s3, s10
                  slli         a1, s3, 26
                  srl          s10, gp, t1
                  add          sp, sp, s0
                  sltu         a0, s9, a2
                  auipc        tp, 615634
                  slti         t4, s9, 1101
                  ori          ra, a6, 1776
                  sltiu        t5, a6, 319
                  sltu         s7, sp, zero
                  srai         s7, t1, 19
                  andi         s2, a1, -668
                  nop
                  andi         a2, s6, 1961
                  add          a6, a4, s8
                  sll          s8, s8, gp
                  slli         s8, s7, 23
                  xori         a2, t4, 1220
                  auipc        a2, 902407
                  add          t0, s7, s1
                  sub          s1, s8, t4
                  srli         a2, s4, 20
                  andi         s4, a3, 1766
                  andi         s11, t0, -892
                  srli         t4, t4, 5
                  andi         s11, s1, 1388
                  sltu         gp, s0, ra
                  sltiu        t5, a6, 635
                  sra          a3, a2, a3
                  sra          gp, t1, s7
                  sll          s7, s7, a5
                  srai         sp, t3, 20
                  ori          s9, zero, 516
                  addi         s2, tp, -932
                  auipc        a4, 40893
                  sub          sp, s0, a5
                  andi         sp, s6, 159
                  xori         s11, s8, -349
                  slt          a7, t0, s8
                  sltu         s8, a2, a1
                  xori         s6, tp, 1473
                  slt          gp, t1, zero
                  srl          sp, t1, a4
                  sub          sp, s2, t4
                  andi         s1, a4, 1097
                  add          gp, s6, t0
                  addi         tp, s9, 1522
                  slli         a6, s1, 9
                  auipc        s8, 166985
                  sub          sp, a2, s11
                  add          sp, s10, t6
                  srai         a1, t3, 11
                  or           gp, t4, t3
                  sub          s2, a7, a2
                  sra          s4, a4, a2
                  or           a7, s4, t0
                  sltu         gp, s7, gp
                  sltu         s10, t1, tp
                  andi         t3, a2, -1535
                  slli         gp, s8, 26
                  auipc        ra, 716101
                  ori          tp, s0, -1222
                  and          t5, s5, tp
                  srl          t0, ra, s8
                  sll          a7, s7, a3
                  add          s6, t4, s6
                  and          s6, t1, t3
                  slt          zero, t1, t3
                  or           a0, s9, s0
                  sll          t5, tp, gp
                  addi         a3, s7, 355
                  srli         a3, t3, 12
                  srai         s0, t3, 27
                  xori         t6, a1, 1898
                  slli         s0, s0, 10
                  lui          sp, 528604
                  sltiu        t3, a2, 1208
                  xor          a7, a1, s1
                  sra          a4, s8, t6
                  srl          s8, t5, t5
                  sltiu        ra, a4, -450
                  xori         s1, t5, 1996
                  slli         t5, s6, 1
                  sltiu        a0, s7, -349
                  andi         s7, a3, 1088
                  lui          ra, 202099
                  srai         a7, t5, 15
                  slti         s6, t3, 992
                  srli         s1, a7, 12
                  slti         t4, t3, 1508
                  srl          a0, t2, a7
                  ori          s3, t6, -1563
                  sltu         s9, s5, s11
                  srli         t6, a7, 16
                  lui          gp, 318996
                  xori         a7, a4, -787
                  nop
                  sltiu        a6, s0, -103
                  lui          s4, 316635
                  auipc        s6, 855136
                  ori          t6, s6, -254
                  sltu         gp, gp, s7
                  sltu         s2, a2, s6
                  srli         sp, s9, 13
                  slt          ra, a5, s9
                  add          zero, s11, a6
                  sltu         t2, t5, s9
                  lui          a1, 671209
                  auipc        t4, 600073
                  slt          s10, zero, a6
                  auipc        t0, 265511
                  ori          s6, t0, -1988
                  sub          a6, s5, gp
                  xor          a4, s1, s5
                  auipc        s3, 1037898
                  or           t3, s0, s6
                  srli         sp, a6, 27
                  slti         sp, s5, 1161
                  srai         t4, s6, 29
                  or           t0, a6, ra
                  slli         t5, t2, 23
                  sra          gp, gp, s1
                  ori          a4, tp, 291
                  sltu         t3, s2, a3
                  sltiu        t6, sp, 883
                  addi         s8, tp, 339
                  slt          s10, s1, t6
                  sub          a2, s10, a5
                  sub          ra, ra, zero
                  sub          ra, a2, a5
                  srai         zero, s1, 11
                  sltu         tp, s8, ra
                  srl          s4, s7, gp
                  slli         s10, t6, 11
                  slt          a7, a3, t5
                  slli         s4, s11, 24
                  or           s9, t5, s6
                  xor          t3, tp, a2
                  srl          s0, zero, t1
                  or           s7, a6, t5
                  xor          s2, s5, zero
                  slti         a3, a3, 649
                  ori          s1, s10, -1058
                  sra          a7, s5, s3
                  lui          a1, 471616
                  andi         s10, t6, 881
                  srl          t6, t0, t4
                  slti         a6, s6, -59
                  andi         a4, t1, 1345
                  srli         s6, t4, 21
                  slt          s9, s6, t2
                  xori         s3, zero, -740
                  slti         sp, s6, -100
                  slt          s4, t4, tp
                  andi         s10, s9, -1202
                  sltiu        gp, t2, -1184
                  or           sp, a7, t1
                  sub          t3, t5, s0
                  slli         a0, s10, 29
                  addi         s9, tp, 2014
                  andi         t5, sp, -1399
                  add          tp, t3, sp
                  slt          a3, gp, tp
                  add          s11, s10, a4
                  and          a2, a6, t5
                  srl          a0, s0, tp
                  srli         s0, s9, 29
                  srai         t0, a5, 23
                  sltiu        s2, s1, -775
                  srl          s1, t3, a4
                  andi         s1, ra, -1248
                  sub          s8, s11, a0
                  slli         a7, a5, 2
                  sltu         sp, a0, s4
                  addi         s2, ra, 22
                  sltu         s4, tp, a6
                  and          s1, gp, a5
                  sub          a6, a4, a5
                  ori          s2, s7, 1684
                  sll          s1, t3, s0
                  slti         s6, s2, 728
                  slt          t2, gp, a1
                  sra          s4, t3, s6
                  nop
                  slli         s0, s3, 4
                  xori         zero, t3, -947
                  auipc        ra, 355900
                  sltu         tp, a6, s2
                  or           t5, a7, t1
                  ori          s0, a0, 1606
                  addi         s0, a4, 879
                  slt          t0, s3, a7
                  srli         s0, s6, 11
                  xor          a1, a0, s7
                  andi         a2, tp, -674
                  srli         s6, tp, 7
                  srai         a6, t0, 0
                  andi         s6, s5, -342
                  or           t3, t4, s8
                  slti         a7, s3, -321
                  or           gp, a6, a1
                  sltu         a1, s3, a1
                  auipc        tp, 167490
                  xori         t5, a0, 191
                  sra          s11, s7, s7
                  sll          zero, a5, ra
                  sra          sp, tp, sp
                  slti         t2, a0, 1191
                  srli         s4, s4, 9
                  sltu         sp, s9, s7
                  or           s11, s11, s2
                  or           t6, s0, s11
                  lui          s6, 488583
                  sll          sp, ra, s0
                  sltiu        s3, a1, 1584
                  addi         t3, s11, -360
                  sub          s6, a2, s3
                  nop
                  sub          s1, s8, t1
                  sltiu        zero, t4, 1866
                  sll          a1, a3, t2
                  slti         a0, s8, -520
                  srli         s11, s8, 14
                  add          a4, s1, ra
                  slt          s0, zero, sp
                  slt          a6, a0, a3
                  xori         a7, s7, 89
                  slli         tp, a3, 26
                  sltu         t2, gp, t2
                  ori          s2, a3, -972
                  ori          s9, tp, -787
                  srai         t5, t0, 29
                  add          t4, a6, s11
                  nop
                  add          s7, a5, a7
                  srai         a3, s10, 3
                  nop
                  srai         s9, s5, 25
                  sub          a4, s8, a4
                  slt          s1, t0, s2
                  xor          tp, a5, sp
                  sll          a1, t4, t4
                  srai         tp, s1, 21
                  add          s0, a4, a5
                  xor          s7, s6, s0
                  slt          a6, a0, a4
                  slti         s4, s11, -1150
                  nop
                  srli         s6, tp, 23
                  lui          s2, 232704
                  and          s3, ra, s11
                  sltiu        a4, a5, 98
                  sub          a4, t6, t5
                  auipc        a6, 608264
                  slli         s0, t3, 15
                  xor          a7, zero, s9
                  srl          t5, a2, t4
                  sltiu        a4, a4, -1878
                  ori          a1, s5, 2030
                  sltiu        sp, a7, 132
                  sra          a0, t4, t1
                  slli         s4, sp, 13
                  and          a1, a5, a7
                  sub          a6, s2, s0
                  srai         t6, tp, 14
                  nop
                  srli         a2, gp, 17
                  or           t3, ra, t2
                  addi         s11, s1, -1772
                  auipc        t2, 160493
                  auipc        t2, 803960
                  lui          t6, 12812
                  xori         a6, s3, -388
                  sra          s2, a3, t3
                  sll          a0, s1, a5
                  or           s6, ra, a7
                  ori          gp, t3, 1408
                  nop
                  srl          ra, t2, a2
                  slti         s10, t3, -1568
                  nop
                  ori          s9, t0, -467
                  slli         a4, a7, 31
                  ori          s8, a5, -913
                  slti         tp, t6, 768
                  addi         s3, t1, 932
                  addi         s3, s10, 782
                  slt          s10, sp, gp
                  slli         s2, s1, 8
                  srl          s11, a1, a1
                  or           t2, s7, s2
                  sra          a4, s1, s8
                  xori         s6, s5, -1868
                  sltiu        tp, ra, 220
                  addi         s2, gp, 548
                  or           zero, s7, s10
                  sltiu        a1, a4, -1514
                  andi         s7, s3, -1793
                  or           t6, s1, a7
                  auipc        ra, 446597
                  auipc        s0, 82425
                  auipc        ra, 722681
                  sra          t6, t4, t3
                  ori          s10, t4, -481
                  xor          a1, a6, s9
                  sub          t5, a3, s6
                  sltiu        t3, s4, -295
                  srl          s9, sp, ra
                  add          sp, t4, s6
                  addi         t5, zero, 1834
                  and          a6, t4, t3
                  nop
                  slti         t6, t5, -1685
                  nop
                  or           t3, s5, sp
                  srai         t5, a7, 30
                  lui          t5, 547742
                  sub          t5, s6, a7
                  sll          s8, a1, a1
                  addi         ra, a2, 215
                  sltu         s11, tp, s3
                  slt          a2, gp, gp
                  sltu         s7, t5, a3
                  xor          s0, t1, t6
                  sra          t4, s9, t3
                  xor          s9, t1, a6
                  nop
                  slt          a4, a5, a3
                  slli         sp, s1, 12
                  ori          s4, s7, -1013
                  sll          a7, a0, s0
                  srli         a3, s7, 27
                  slti         ra, s8, 51
                  srli         a3, tp, 27
                  sra          a2, s10, s5
                  nop
                  sra          a2, s2, s7
                  xor          sp, a5, s7
                  andi         s4, s1, 121
                  nop
                  andi         a2, s5, 1781
                  srli         s8, ra, 2
                  nop
                  add          t2, a1, s4
                  ori          s8, s0, 1066
                  srl          s1, a4, s8
                  sltiu        a4, ra, -851
                  sltiu        t6, ra, -1713
                  slt          s0, s11, s8
                  srl          gp, s6, t2
                  srl          t5, tp, a6
                  addi         ra, a1, -1687
                  sll          t6, t3, t0
                  xori         s0, t4, -246
                  sub          s11, s8, tp
                  or           a2, a7, a4
                  srl          s10, t0, s10
                  add          a2, t1, a2
                  srai         t5, ra, 22
                  nop
                  slli         gp, s4, 0
                  sltiu        s6, a1, -1027
                  nop
                  andi         gp, s6, -1447
                  add          sp, t4, a4
                  or           t5, a4, t4
                  andi         s6, s3, 943
                  sra          t0, a6, s9
                  xor          s2, s7, tp
                  lui          a7, 301360
                  or           t6, t3, t4
                  andi         a1, ra, 832
                  srai         t5, s4, 0
                  auipc        gp, 211271
                  ori          s11, t4, -1699
                  xor          s10, t4, a5
                  sltu         s3, t0, a6
                  addi         zero, gp, 1398
                  lui          a4, 685763
                  srl          a6, a1, s4
                  nop
                  addi         a2, s7, -683
                  andi         t6, a6, 1598
                  and          s2, tp, a0
                  lui          tp, 231502
                  auipc        s0, 359082
                  xor          s8, a6, zero
                  srai         tp, s4, 3
                  sub          a7, gp, gp
                  srai         a7, s7, 14
                  xor          tp, t1, t2
                  ori          t4, a2, 992
                  sub          t5, a4, s2
                  srli         a0, t1, 29
                  lui          a6, 302246
                  and          s1, s6, s5
                  slt          zero, s1, a2
                  srli         a2, tp, 25
                  srl          s4, a7, a2
                  ori          t3, s2, 690
                  xori         zero, t1, -998
                  srai         s11, s10, 31
                  sra          s3, zero, zero
                  slti         s8, tp, 869
                  lui          a7, 705005
                  addi         ra, s11, 1890
                  slti         s6, t4, 1029
                  or           s3, a5, a4
                  srai         a6, t0, 24
                  xori         s3, a4, 437
                  srl          s10, t5, s3
                  slt          t2, s10, a5
                  addi         a4, t2, 1001
                  sra          gp, gp, a1
                  ori          a2, s4, -145
                  xor          a7, s11, s1
                  sra          s6, s5, s4
                  auipc        a4, 379448
                  add          s4, s4, a4
                  ori          t4, t3, -1234
                  andi         s4, a5, -77
                  sra          s1, s9, a4
                  lui          ra, 276225
                  or           a3, a6, a0
                  auipc        s4, 103809
                  and          s0, tp, s4
                  auipc        a7, 788796
                  xori         a2, t5, -939
                  slti         s10, a2, -1741
                  and          t5, s3, a0
                  srl          a7, a7, s10
                  sltu         a4, t1, a6
                  nop
                  add          gp, s3, a1
                  sra          s3, a3, t3
                  slli         s6, a3, 12
                  sltiu        t6, s6, 1786
                  slt          s0, a6, t4
                  xor          a2, s4, s9
                  sltu         a3, s1, gp
                  slt          a7, s3, t0
                  and          t0, a5, a1
                  srl          zero, s10, t0
                  or           s0, s3, s7
                  sltiu        s7, s11, -1491
                  xori         gp, s2, 939
                  xor          t0, a6, sp
                  sra          s4, a5, s6
                  slti         tp, s1, 0
                  srl          t5, s6, a6
                  sltu         s1, t2, a4
                  ori          s9, s10, -1338
                  slti         s4, s9, -1112
                  slt          a0, s1, sp
                  andi         s10, zero, 316
                  nop
                  andi         a2, sp, -1399
                  xori         zero, gp, -732
                  nop
                  lui          t5, 761705
                  ori          ra, ra, -578
                  slti         s6, a5, 1123
                  or           a3, s1, ra
                  slli         a4, s10, 26
                  srli         s10, s7, 13
                  sltiu        a3, s4, 591
                  andi         s4, tp, 72
                  slti         gp, a1, -1327
                  add          ra, s4, s11
                  lui          s9, 311361
                  ori          tp, a6, -1305
                  andi         gp, s4, 971
                  or           tp, s0, s3
                  srl          gp, t2, t4
                  addi         ra, a2, -537
                  sltiu        a6, s5, 1576
                  sltiu        t4, s11, 1358
                  srai         a3, s10, 19
                  and          t6, tp, s10
                  xori         s10, t6, -1900
                  or           a7, a1, t1
                  lui          s11, 282862
                  xor          s10, s6, t4
                  add          s11, s8, s6
                  slli         t2, zero, 2
                  srai         s1, t3, 25
                  lui          a1, 935496
                  addi         ra, t5, -512
                  sltiu        tp, a0, -1826
                  srli         a4, t3, 3
                  addi         s6, sp, -1086
                  addi         s4, s2, -36
                  lui          t4, 318828
                  srl          gp, s2, s11
                  ori          a3, a1, -276
                  sra          a7, t6, s6
                  auipc        t4, 879399
                  nop
                  slli         a7, zero, 23
                  and          s4, ra, a4
                  nop
                  addi         s1, t3, -1396
                  xor          s9, a4, s8
                  slli         a3, s0, 2
                  nop
                  addi         t6, sp, -910
                  nop
                  and          s2, a1, t0
                  sll          a3, a1, t4
                  xori         sp, t4, -527
                  andi         t3, a2, -865
                  sll          a2, ra, zero
                  ori          s1, s8, -1659
                  xor          a3, t5, ra
                  or           s10, ra, tp
                  xori         t3, a7, 1737
                  srl          s4, t3, s0
                  xori         zero, ra, -444
                  srli         a2, sp, 12
                  addi         t0, s4, 1109
                  addi         t3, s0, 2013
                  slti         s2, s11, 1362
                  ori          t5, a6, 323
                  or           t2, s9, a2
                  srai         t2, zero, 9
                  auipc        t2, 237308
                  srai         gp, s8, 25
                  sra          a3, t5, s8
                  nop
                  sll          t0, a3, a6
                  srai         a3, ra, 6
                  slli         s9, t3, 4
                  xori         a2, t5, 1985
                  slli         tp, a1, 14
                  srli         s7, s4, 25
                  sra          s10, t3, a5
                  auipc        s0, 375173
                  nop
                  xori         s2, s3, 1732
                  andi         a1, s3, 1269
                  or           a1, t1, s5
                  sub          s10, s5, a5
                  sltiu        t3, t3, 1670
                  add          s7, s8, a1
                  srai         a6, s4, 29
                  slti         s7, a1, -406
                  sra          s6, t3, a4
                  lui          s10, 498604
                  sltiu        s9, a7, 788
                  andi         tp, a5, 1661
                  slti         a0, a6, -205
                  srli         t3, s0, 30
                  lui          t3, 863761
                  nop
                  andi         ra, s1, 834
                  srl          t3, t1, s3
                  sltu         a0, t0, s5
                  add          t0, t6, s6
                  sltiu        t2, t1, 1113
                  sll          a0, s10, s3
                  ori          s11, t5, 404
                  sltiu        t6, sp, 21
                  andi         s7, s8, -883
                  ori          zero, s4, 1777
                  and          sp, s9, s0
                  sra          a0, t5, gp
                  sra          a4, a5, a2
                  slti         s9, t4, -30
                  addi         ra, t6, 1795
                  sub          t6, gp, a6
                  srl          s7, a0, s10
                  auipc        s3, 421681
                  nop
                  xori         s2, s4, -1452
                  sub          a7, a7, t3
                  slti         zero, s7, 1031
                  slti         s1, zero, -1918
                  auipc        t2, 991347
                  slt          a1, s10, s9
                  sra          s11, t0, s2
                  srai         s0, s7, 14
                  sltiu        s10, s11, 1842
                  ori          s11, a4, 382
                  xori         s4, s10, 2021
                  lui          s9, 159995
                  sltiu        s9, ra, -872
                  lui          t0, 477617
                  srli         ra, a4, 13
                  lui          s0, 312635
                  addi         s9, a1, -1108
                  auipc        ra, 837963
                  xor          gp, gp, sp
                  sltiu        a1, s11, 1870
                  ori          t5, a2, -1673
                  sra          s1, a5, t1
                  sra          s10, tp, s3
                  xori         a6, t3, -1248
                  and          a7, a7, a7
                  lui          s0, 272615
                  andi         s1, t0, 1466
                  srai         gp, sp, 30
                  sub          s4, s11, s5
                  add          a6, s4, a0
                  sll          s8, a1, t6
                  xor          t6, s8, s0
                  xor          a1, s7, a5
                  xor          s3, a3, zero
                  sra          a7, a7, s5
                  nop
                  srli         ra, gp, 23
                  add          s9, a0, s5
                  sltu         s9, a6, ra
                  xori         s7, t3, 1136
                  sra          s1, s11, tp
                  or           s10, t0, a3
                  slt          zero, sp, s1
                  srli         a2, ra, 22
                  and          a0, s1, sp
                  sll          t6, zero, ra
                  sll          a2, gp, t2
                  addi         s2, a3, -1124
                  srli         a3, t1, 16
                  auipc        t2, 288594
                  sra          s10, s11, a6
                  andi         a2, s0, 540
                  and          s6, s8, t6
                  addi         s8, s7, 1182
                  andi         a0, s2, -573
                  andi         t4, t4, 705
                  sltiu        ra, s3, 1129
                  ori          s1, s1, -1954
                  srli         s1, a0, 28
                  sltu         s4, zero, sp
                  and          t5, t2, zero
                  sll          s4, s5, a0
                  xori         t2, s9, 1455
                  sub          sp, s9, a6
                  srai         t2, a3, 31
                  sub          t0, a4, s8
                  srl          s8, sp, a6
                  or           ra, a5, s2
                  sltiu        t0, sp, -2009
                  and          a6, s9, t1
                  srai         s8, a7, 28
                  sltu         t2, s2, a0
                  nop
                  sltiu        s2, zero, 1449
                  srl          s8, s5, s11
                  slt          tp, a6, ra
                  auipc        s0, 702563
                  srai         ra, tp, 21
                  nop
                  nop
                  slt          s4, a2, s10
                  slli         a6, a4, 4
                  srli         s1, a4, 16
                  lui          t6, 658517
                  slti         a6, t3, 342
                  slt          t3, s0, a2
                  sub          s11, s10, a5
                  xor          a7, s8, s1
                  slti         a0, s6, 741
                  srl          t0, s5, s10
                  addi         a1, tp, -464
                  sra          t3, a5, t6
                  and          sp, a0, s1
                  srl          t5, a0, a2
                  andi         a1, a0, -382
                  sll          t0, a2, s7
                  lui          gp, 960801
                  andi         t0, t1, 1170
                  addi         t4, s3, -1865
                  lui          s3, 57376
                  srl          s9, s5, sp
                  ori          s7, t5, -525
                  slli         s6, a2, 19
                  sub          s7, a0, s5
                  sltu         t5, s8, s8
                  ori          s8, s6, -1413
                  slt          t3, t6, t6
                  sltiu        a2, t1, -1769
                  sltiu        a1, s6, 976
                  slt          s7, s9, ra
                  auipc        sp, 334356
                  sub          a2, a0, s0
                  sub          a6, a2, s6
                  auipc        s0, 96748
                  srl          gp, tp, s0
                  sltu         ra, gp, s5
                  or           s11, s11, s6
                  xori         a4, t0, 1066
                  and          a6, t1, s6
                  srai         t5, ra, 30
                  ori          a1, tp, -1804
                  sra          s9, s10, zero
                  or           a3, t3, t0
                  xor          s6, tp, t1
                  and          t2, s10, s6
                  srli         s10, t3, 28
                  srai         s7, t1, 28
                  and          s4, s5, a6
                  auipc        a2, 1024692
                  slti         a1, a7, -1053
                  sltu         a3, s4, s1
                  auipc        t3, 904843
                  sll          s10, a1, s6
                  sltiu        sp, s11, 472
                  add          s7, t5, s11
                  slti         s2, a2, 1286
                  add          t6, a3, a0
                  auipc        t6, 464946
                  and          a2, a5, zero
                  or           t3, t2, a4
                  sra          t3, s1, s7
                  xor          a4, tp, a6
                  sltu         t2, gp, a5
                  and          sp, s10, t6
                  srli         a6, s0, 26
                  srai         s8, a5, 8
                  slti         s3, a7, -1865
                  nop
                  auipc        s4, 53065
                  slli         s0, s5, 1
                  srl          s9, s0, s2
                  srl          s9, zero, zero
                  nop
                  add          a1, a4, s10
                  addi         ra, s9, -1894
                  or           a7, t0, s3
                  add          a3, a3, a0
                  ori          a2, s6, 1200
                  sltu         a7, s7, gp
                  and          s4, a1, t5
                  slt          a3, s9, t2
                  srai         s7, a3, 21
                  xor          s0, t0, s9
                  srli         s2, t4, 10
                  sra          s10, t5, s11
                  nop
                  sra          t3, tp, s6
                  and          t6, s11, a1
                  ori          s8, s3, -69
                  sltu         t6, s2, zero
                  sll          a4, a1, ra
                  sltu         t0, s10, a6
                  slt          gp, s5, s0
                  slt          s4, t5, a0
                  and          t0, a0, s7
                  srli         a1, gp, 28
                  sub          t6, zero, s1
                  or           ra, t4, s11
                  srli         a3, t1, 11
                  srl          a0, a7, s2
                  sltu         gp, a7, a2
                  addi         a6, t1, 442
                  lui          t3, 451049
                  lui          a4, 102553
                  sra          a0, s4, t3
                  srai         ra, a4, 31
                  lui          gp, 62078
                  add          s7, s2, tp
                  slli         t0, gp, 14
                  sra          a0, gp, sp
                  slt          s10, s3, t5
                  slti         t0, ra, 1144
                  slli         gp, sp, 3
                  slti         a3, sp, 2024
                  sra          s3, s9, ra
                  xori         t5, sp, 13
                  andi         s8, s2, 647
                  and          a1, s9, gp
                  lui          t5, 643296
                  sltiu        s4, a2, -602
                  sltiu        s7, tp, -1158
                  srl          ra, s4, tp
                  slli         s2, s2, 19
                  srl          s10, tp, a1
                  srli         s6, s9, 17
                  slli         t5, a4, 10
                  auipc        t0, 518969
                  xor          s8, a3, a5
                  ori          s9, s0, -197
                  slli         ra, a6, 28
                  auipc        s9, 797363
                  and          s11, s6, s2
                  slt          s11, tp, s0
                  slt          s1, s11, s0
                  xor          s1, a4, a7
                  xori         ra, s0, -18
                  nop
                  auipc        s2, 116846
                  sub          s10, a6, a2
                  srai         a1, s6, 17
                  sll          s9, s10, gp
                  and          t3, s7, s10
                  slt          a7, zero, s7
                  xori         tp, t3, 624
                  addi         s9, sp, -735
                  andi         sp, s10, -311
                  slt          s0, s9, s5
                  sltiu        s8, t5, 726
                  lui          s1, 178335
                  nop
                  srli         s10, s0, 5
                  slti         a3, zero, -27
                  slti         s1, ra, -1977
                  xor          a6, ra, t0
                  sltiu        t5, a6, -1918
                  sub          a2, s6, s10
                  srai         sp, a5, 1
                  xori         s0, t0, 1517
                  nop
                  sra          s0, a0, t6
                  and          s3, sp, a2
                  addi         s10, s7, -905
                  lui          s10, 743747
                  slti         a1, t1, -163
                  addi         s8, s8, 319
                  and          t6, t5, tp
                  ori          a4, s4, 1139
                  xor          s1, ra, a2
                  sll          s9, t2, s4
                  srai         a2, s11, 24
                  add          a2, t6, zero
                  ori          ra, s10, 835
                  andi         s8, s7, -1336
                  andi         s7, s0, 1161
                  sra          t6, a4, s10
                  sub          zero, s2, t1
                  sltiu        ra, a0, 1820
                  slt          t0, t6, s5
                  xor          zero, s2, s2
                  sub          s1, s11, t5
                  ori          t6, t4, 716
                  sll          s11, sp, a3
                  auipc        t6, 84876
                  or           t3, a7, t3
                  slti         a7, sp, 1249
                  xor          a7, a1, t3
                  slli         a2, zero, 25
                  addi         s2, a5, 631
                  xor          zero, s7, s2
                  and          a2, ra, s4
                  slti         a4, t6, -820
                  sltu         t2, t6, a2
                  sll          t2, tp, s11
                  srl          s9, s6, s7
                  or           a4, s4, sp
                  sll          t5, s1, s5
                  or           s7, s0, a0
                  srl          zero, a6, s3
                  xori         t6, ra, 261
                  addi         s8, s2, 492
                  slti         t6, sp, -1208
                  nop
                  auipc        a2, 929739
                  sra          tp, s6, t6
                  srai         s1, s2, 3
                  srai         t3, s5, 28
                  slli         t0, gp, 23
                  or           s7, tp, s3
                  srli         sp, t2, 14
                  sltu         a1, t0, a3
                  sltiu        s4, t1, 672
                  sll          a4, t3, s8
                  sll          s9, a7, a5
                  slli         s8, tp, 16
                  xori         ra, t5, 660
                  srli         s9, t5, 10
                  slti         s8, a2, 220
                  slli         s3, t1, 12
                  srai         a7, t4, 12
                  nop
                  slti         gp, a4, -563
                  ori          s10, s4, -373
                  sltiu        s9, t5, -847
                  sub          sp, s4, s6
                  xori         sp, s4, -1516
                  srli         s1, a2, 9
                  sub          a0, a3, a6
                  sll          s7, s7, a5
                  sll          tp, ra, s2
                  ori          s7, tp, -972
                  andi         s10, s3, -1758
                  lui          zero, 53807
                  sll          s1, t4, s1
                  lui          t4, 20259
                  sub          s1, s6, s8
                  addi         s8, s0, 177
                  nop
                  addi         a1, s9, 560
                  addi         a4, a1, -820
                  sll          s0, a6, s4
                  andi         s8, t6, 661
                  sltu         s3, sp, tp
                  nop
                  ori          a0, a3, -1702
                  slti         gp, zero, 711
                  slli         s8, a7, 7
                  srli         ra, t1, 0
                  xor          t0, s11, t2
                  or           s9, s6, ra
                  slt          s0, tp, gp
                  and          t5, tp, a0
                  or           s7, a3, s9
                  slti         s2, ra, -998
                  slti         gp, t0, -1595
                  sub          t2, a7, s5
                  andi         s0, ra, -1663
                  sub          a6, s2, gp
                  auipc        s10, 992214
                  slti         s3, s3, -423
                  sltu         t3, s1, a6
                  srli         tp, s2, 9
                  xori         s10, t0, -204
                  or           ra, a2, t5
                  slt          s0, s0, a1
                  sltu         a4, a0, s6
                  srai         t4, a1, 19
                  xor          gp, sp, a7
                  sll          t4, a0, s1
                  srli         s1, t0, 3
                  and          s7, t6, s7
                  nop
                  or           sp, zero, s2
                  srli         s1, t0, 24
                  addi         t2, a2, -1136
                  addi         a3, a4, -1328
                  add          s0, t1, gp
                  auipc        tp, 3823
                  lui          t2, 1008250
                  slti         a1, s1, -348
                  sltu         a0, t4, t3
                  or           a6, s3, ra
                  srli         t6, a1, 31
                  slli         a2, s2, 31
                  nop
                  and          s4, ra, s11
                  sltu         s0, s10, s10
                  auipc        zero, 168909
                  ori          s10, s9, -1828
                  xori         zero, tp, 246
                  and          tp, t2, s7
                  and          a3, s8, s5
                  srai         s6, t0, 4
                  slt          s3, a3, s0
                  ori          t6, a5, 1565
                  addi         t0, a0, 1404
                  slli         a0, s6, 10
                  sltiu        a4, tp, 1052
                  ori          t6, a5, 1091
                  xor          a2, s9, a3
                  sra          a7, a7, s3
                  sub          s9, sp, a2
                  srai         a3, s3, 5
                  lui          s1, 914697
                  sltu         a4, s8, s7
                  add          s7, a4, a1
                  srai         t2, s3, 0
                  slti         s7, t4, -358
                  srl          ra, s4, t1
                  andi         s9, s0, 420
                  srli         t0, t3, 27
                  sltiu        a7, t0, -1901
                  slti         t0, a7, 750
                  xori         t0, s5, 458
                  slti         zero, a0, 691
                  add          s9, s6, t5
                  ori          t2, s4, -28
                  srl          t0, sp, t5
                  andi         s10, t2, -160
                  xor          a3, s9, s5
                  sub          t5, s1, s4
                  slt          t0, a5, t2
                  sltu         ra, zero, ra
                  sub          sp, s4, t3
                  ori          t0, a2, 187
                  slt          t2, s8, s7
                  xori         a4, a6, 2033
                  auipc        a3, 812158
                  and          t3, a3, s0
                  ori          tp, gp, 172
                  sll          zero, ra, s1
                  xor          a1, s5, a5
                  sll          a4, s5, a6
                  srli         a4, s4, 10
                  sra          s10, t3, s0
                  srai         s0, t4, 9
                  srai         s6, zero, 14
                  xor          a4, t5, t0
                  xor          t3, a0, s4
                  nop
                  auipc        t6, 119521
                  srai         t0, zero, 24
                  sra          s0, tp, s6
                  slt          a1, a6, s8
                  add          s10, a7, t5
                  and          s7, t2, s2
                  srl          a0, s0, t3
                  sra          a7, s10, a5
                  ori          s11, s1, -29
                  srl          a1, t2, s6
                  add          a2, a0, t6
                  ori          a2, a7, 1479
                  addi         sp, s10, -1661
                  addi         s4, s10, -728
                  sra          s3, s10, s11
                  sub          s3, sp, a1
                  srli         t5, zero, 17
                  sll          t2, s3, a0
                  slli         tp, sp, 20
                  or           a4, t4, s10
                  xori         t4, s3, -612
                  xori         s2, s11, 828
                  srl          t2, t0, t3
                  add          s2, s5, a2
                  srai         s11, s6, 29
                  srl          a7, s1, a0
                  slli         a4, gp, 2
                  or           a7, tp, t3
                  or           s0, t2, s9
                  nop
                  sltiu        tp, t5, -1193
                  ori          s1, a2, 1811
                  slti         s7, t2, -171
                  sltu         tp, t2, s4
                  or           s1, s4, t1
                  srai         tp, s9, 9
                  sll          a4, s4, gp
                  auipc        t3, 572241
                  lui          a4, 527450
                  sltu         t3, s8, s0
                  xor          t5, t6, s2
                  slt          a1, gp, a5
                  slti         t0, ra, 991
                  xori         t6, t1, 289
                  sltiu        a7, s11, 1089
                  lui          a2, 974719
                  auipc        a1, 675382
                  lui          a4, 18579
                  addi         t2, t4, 982
                  srli         t5, ra, 2
                  andi         t2, s10, 1498
                  srli         a6, s1, 6
                  srai         a0, t4, 24
                  ori          a0, s1, 573
                  addi         a7, s5, -69
                  add          t4, t0, ra
                  lui          gp, 678017
                  xori         s4, s2, -1961
                  srl          s1, a3, tp
                  add          a6, zero, s10
                  srl          t3, a1, t6
                  slli         a4, s9, 31
                  auipc        s8, 103396
                  slt          a1, s8, s7
                  srl          s8, s10, t1
                  srli         a2, a6, 23
                  sra          t5, a5, sp
                  sltiu        gp, t6, 186
                  andi         t3, t0, -1993
                  and          a6, t5, t2
                  nop
                  slli         s4, t2, 3
                  sltu         a2, a4, zero
                  slt          a4, s8, a6
                  ori          a2, a6, -291
                  auipc        a1, 173905
                  srai         s1, a7, 31
                  xori         t2, t0, -1927
                  addi         a6, s3, -47
                  sra          a6, s7, gp
                  srl          a4, a7, s11
                  andi         s9, t0, 1461
                  auipc        a6, 944026
                  sll          zero, a5, s0
                  slti         zero, s9, -333
                  auipc        a3, 387018
                  ori          sp, t5, -961
                  srai         s10, s3, 22
                  sltu         t5, t2, t1
                  xori         s1, s6, -1791
                  xor          s8, tp, a0
                  slli         a3, a2, 7
                  andi         t4, t2, 2039
                  lui          s8, 565522
                  sltu         a2, sp, a2
                  add          a7, s5, ra
                  andi         s3, s2, -1184
                  or           tp, s6, s10
                  slti         ra, a7, 1668
                  srli         s3, a0, 20
                  addi         a6, t4, -557
                  sll          s2, s7, s9
                  addi         s1, s10, -1190
                  sltiu        s10, s5, -1436
                  xor          s7, s5, a5
                  lui          a3, 186393
                  andi         s9, s11, 1584
                  sub          t6, ra, a1
                  nop
                  sub          s4, sp, t2
                  sltu         s0, tp, zero
                  and          s2, s6, s2
                  slti         t5, tp, -693
                  slti         a1, s2, 1525
                  addi         t2, s0, -794
                  lui          s3, 334606
                  lui          s4, 592791
                  sll          tp, s2, a0
                  srai         s7, s0, 24
                  auipc        a7, 912593
                  slt          s4, a7, t5
                  ori          s11, t1, 208
                  add          sp, t0, tp
                  srai         s8, s5, 28
                  andi         s4, gp, -1774
                  sub          t0, gp, tp
                  xori         s2, gp, 1645
                  slt          a1, zero, tp
                  sll          s6, a6, t1
                  slli         s11, sp, 19
                  srli         tp, s11, 12
                  andi         t2, ra, -504
                  srai         s9, sp, 2
                  srl          t4, zero, a2
                  add          a4, a3, s11
                  srli         t0, a6, 25
                  srli         zero, s7, 14
                  ori          s9, t5, -901
                  slti         a4, a1, 492
                  sltiu        s7, t3, -101
                  xori         s3, zero, 432
                  srli         zero, a4, 4
                  and          zero, a6, s7
                  and          t6, s6, sp
                  and          s2, s1, t3
                  slti         a3, a7, 386
                  sltu         s7, a3, t0
                  and          t2, a6, s5
                  srl          gp, s2, s0
                  sltu         a0, t0, a7
                  ori          s6, t2, 516
                  nop
                  lui          s8, 863755
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_24
                  li           tp, 0xffffffff
                  li           t6, 0x0
                  li           t4, 0xa14f2274
                  li           gp, 0x0
                  li           s2, 0x0
                  li           s8, 0xffffffff
                  li           s6, 0x0
                  li           ra, 0x0
                  li           s9, 0xadf5c884
                  auipc        tp, 335920
                  sub          tp, s2, s3
                  lui          t4, 600268
                  nop
                  lui          s3, 35082
                  nop
                  sub          s2, t4, tp
                  lui          tp, 667134
                  addi         tp, s3, -268
                  addi         s3, s6, 869
                  lui          tp, 571621
                  add          s8, gp, s9
                  add          tp, t6, t4
                  add          gp, gp, s9
                  auipc        s2, 826049
                  lui          tp, 999393
                  auipc        s2, 676897
                  add          s9, t6, s6
                  sub          tp, s9, s3
                  auipc        s2, 554970 #end riscv_int_numeric_corner_stream_24
                  and          s6, t2, s11
                  srl          zero, a5, t5
                  sub          s2, s9, s7
                  addi         s3, s3, -230
                  sltiu        sp, s9, -940
                  ori          a0, a1, 1911
                  slti         a2, s7, 802
                  andi         t3, s0, 1372
                  srl          t2, a1, s1
                  xor          s4, t3, t3
                  or           a3, t3, sp
                  xori         a2, s7, 421
                  ori          a3, s4, 1638
                  addi         s8, s9, -1991
                  sub          s6, a3, a4
                  add          s9, t2, t3
                  sub          s8, t6, zero
                  sltiu        a2, t0, -1039
                  ori          zero, s4, -1108
                  slti         s4, a7, -1896
                  srli         s3, t2, 27
                  lui          s9, 800579
                  nop
                  lui          s0, 139274
                  xor          ra, s4, zero
                  slli         t3, s7, 30
                  lui          ra, 881626
                  slli         t0, t1, 1
                  srl          s6, s9, sp
                  sll          s3, s11, t1
                  sll          s6, t4, t4
                  sltiu        s0, t2, 1291
                  add          s1, a0, s1
                  slti         a4, gp, -2032
                  sub          tp, sp, ra
                  or           a4, tp, s0
                  or           s1, t2, t4
                  and          t6, t4, zero
                  srli         a2, t5, 1
                  and          sp, s1, s10
                  nop
                  ori          gp, a0, 1776
                  auipc        a3, 460150
                  slti         ra, t2, -1290
                  sltu         s6, ra, t4
                  slt          gp, ra, s10
                  slli         t5, t0, 0
                  nop
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_22
                  li           s10, 0x33193834
                  li           s3, 0x80000000
                  li           tp, 0x2910f4e8
                  li           a4, 0x80000000
                  li           ra, 0xffffffff
                  li           s7, 0xa07b2417
                  li           a2, 0x8d00a6d6
                  li           t4, 0xffffffff
                  li           a0, 0xffffffff
                  add          s7, t5, tp
                  auipc        t4, 737686
                  auipc        a0, 369819
                  lui          t4, 756073
                  nop
                  nop
                  sub          a4, tp, s10
                  lui          s3, 195903
                  lui          s7, 565709
                  add          s10, a0, s7
                  auipc        a0, 172526
                  nop
                  sub          s10, a4, t4
                  addi         tp, a4, 736
                  lui          ra, 449842
                  sub          a2, ra, s7
                  add          s3, tp, a4
                  sub          ra, a2, t4
                  add          t4, tp, tp
                  auipc        t4, 796635
                  add          t5, tp, s3
                  addi         s7, s3, 1645
                  sub          s10, t5, a4
                  addi         a2, s3, 202
                  addi         ra, tp, -764
                  add          tp, t5, s7
                  nop
                  auipc        a0, 515034
                  auipc        s7, 378450
                  addi         s7, t5, 1703 #end riscv_int_numeric_corner_stream_22
                  xori         t6, s9, 1139
                  addi         tp, a1, -663
                  sub          tp, s6, a3
                  xor          s3, a4, t4
                  lui          a6, 268587
                  auipc        s7, 980011
                  sll          sp, sp, a0
                  sltu         s0, ra, t5
                  slti         a4, s2, 586
                  sltu         tp, s9, tp
                  slti         s1, tp, -1321
                  sll          a7, zero, s2
                  srl          sp, s5, a6
                  addi         s7, a3, -271
                  sub          s11, a7, s0
                  srli         t5, t4, 3
                  auipc        t5, 593169
                  sll          sp, s8, a0
                  auipc        s0, 444807
                  or           a2, sp, s7
                  srl          gp, t4, s5
                  sltiu        a2, a0, -864
                  lui          tp, 820948
                  slli         t4, s2, 9
                  add          a2, s9, s0
                  sub          s8, s4, t5
                  or           a4, s10, gp
                  xori         a4, t0, -1244
                  sll          a1, s4, a1
                  add          a3, a2, ra
                  sltiu        s11, s5, -426
                  srli         t0, a7, 1
                  and          a3, t6, s1
                  addi         a2, t5, 358
                  sll          s2, s4, sp
                  slli         s7, s4, 0
                  and          ra, t4, s11
                  addi         a4, s5, 768
                  sltu         zero, a7, t6
                  srai         t0, t3, 5
                  sltu         t6, a4, s6
                  nop
                  sub          s10, a0, gp
                  srl          a0, s6, s10
                  auipc        t3, 264151
                  addi         t6, t0, -1953
                  add          gp, s4, t0
                  ori          a4, tp, 1344
                  slli         s2, a4, 11
                  xor          a4, s1, tp
                  add          t2, s11, s7
                  auipc        t3, 724234
                  lui          s7, 320162
                  xori         a3, s11, -1594
                  sltiu        ra, s10, -51
                  add          a1, s1, s5
                  andi         s4, s11, 1032
                  slt          a6, s7, s1
                  srai         a0, s1, 13
                  sltu         s0, t2, a7
                  or           s9, s8, a7
                  nop
                  srl          s0, s6, sp
                  add          s3, s5, s8
                  and          s2, t4, ra
                  slli         a0, s5, 26
                  sltiu        a1, sp, 1405
                  slti         tp, s6, 567
                  or           s6, t2, ra
                  slt          s3, s11, s4
                  slli         s0, a5, 16
                  addi         s4, a1, -188
                  ori          t3, ra, 118
                  xor          tp, s7, s2
                  xor          t0, zero, sp
                  auipc        s4, 289010
                  sltiu        s3, tp, 1268
                  and          sp, s8, t6
                  srl          s4, s3, s5
                  addi         a2, s2, -1376
                  srl          t3, a7, a7
                  or           a1, a1, t1
                  add          s10, a2, s10
                  sub          tp, a4, s9
                  addi         a1, t1, -1937
                  slti         s11, a5, 812
                  sltiu        a0, s10, -2026
                  add          t5, t0, s10
                  srai         s7, s2, 16
                  or           a1, a7, a5
                  srli         a3, s4, 17
                  nop
                  sltu         t5, s9, a2
                  lui          s4, 407357
                  sub          zero, s0, sp
                  nop
                  slti         tp, a0, 1907
                  or           s9, s1, s0
                  slli         a4, s0, 13
                  xori         s1, s4, -1897
                  addi         s0, a2, 925
                  srli         a0, s2, 6
                  srli         s3, s6, 25
                  auipc        a1, 19843
                  and          a7, s11, s2
                  slti         zero, gp, -871
                  nop
                  slti         t2, a4, 1112
                  andi         t6, a7, 916
                  sra          t2, a1, t3
                  sltu         a3, a2, t1
                  slt          s2, a3, zero
                  and          a4, t1, gp
                  srai         t6, t6, 31
                  nop
                  srai         s2, t2, 14
                  lui          a0, 213180
                  srl          a0, t0, s7
                  andi         t5, s10, -438
                  or           s3, s2, zero
                  slt          a0, t6, s10
                  slli         ra, a4, 11
                  sll          t3, s2, s7
                  andi         a3, a1, -790
                  andi         s8, gp, 152
                  auipc        s1, 443736
                  andi         s6, sp, 258
                  slt          s2, s6, tp
                  slt          s11, s3, t1
                  sll          a0, sp, s1
                  slt          t5, a3, ra
                  and          gp, ra, s11
                  srl          gp, t4, s11
                  nop
                  sub          t0, t6, s0
                  srl          s2, t0, t2
                  slli         a6, a4, 30
                  srli         a4, ra, 16
                  sub          s0, s10, s6
                  addi         t2, s4, 767
                  slli         a1, a0, 25
                  sll          s9, s2, a1
                  sra          a4, s6, sp
                  sltu         t2, s1, t0
                  srli         a4, a5, 23
                  slt          zero, a7, ra
                  srli         s1, a1, 19
                  lui          t6, 39144
                  sll          t6, sp, t2
                  sll          s3, a6, s6
                  lui          s2, 958319
                  sltu         a1, t0, s11
                  or           t5, t1, t0
                  sltu         t0, s2, a0
                  xori         t6, a7, -1171
                  slti         s9, a5, -370
                  andi         s10, a4, -338
                  sll          a2, gp, t5
                  or           t0, t2, a4
                  xor          s3, t0, s3
                  lui          sp, 39034
                  slt          sp, s1, s7
                  add          s7, a7, s10
                  sub          t5, s5, s2
                  or           a3, s5, s2
                  srai         s0, s5, 19
                  slli         t0, zero, 16
                  sltu         sp, a5, a6
                  or           t0, t3, a4
                  sltiu        t6, ra, -893
                  xor          zero, a5, s6
                  slli         s2, s7, 26
                  auipc        tp, 816254
                  sra          a7, t3, s11
                  slti         s2, a1, -1853
                  srli         s0, s7, 7
                  srai         a4, s11, 29
                  xor          a7, s5, s7
                  sltiu        s6, t3, 1552
                  andi         ra, s4, 1797
                  slti         t2, s4, 1912
                  nop
                  srli         a7, a4, 7
                  sltu         tp, s10, s1
                  nop
                  srli         tp, t1, 13
                  sub          a4, a3, a5
                  nop
                  nop
                  addi         s1, a2, -1504
                  ori          a1, s0, 803
                  or           ra, t6, t5
                  or           s8, s8, t4
                  sra          s0, s9, zero
                  srl          a6, sp, s7
                  sub          gp, s5, s3
                  sltu         s8, a7, sp
                  or           a2, t1, s3
                  sltu         sp, a7, s0
                  slli         s4, s11, 17
                  lui          s9, 247969
                  lui          t3, 648837
                  slt          s3, a7, s7
                  xor          a6, t1, a6
                  sltiu        s2, t2, -1574
                  srai         s0, zero, 7
                  addi         s2, s3, 985
                  xori         s3, a7, 1339
                  sub          gp, t4, s0
                  xor          s4, ra, s6
                  srl          a7, a0, a2
                  srai         t6, s5, 3
                  nop
                  andi         a2, t6, -751
                  sll          a2, a0, s8
                  lui          s8, 503676
                  slli         a7, s3, 11
                  lui          t6, 253985
                  srli         a4, s3, 22
                  auipc        a4, 488633
                  lui          sp, 589076
                  or           s0, a7, ra
                  slti         t3, s11, 746
                  add          t4, t3, t3
                  slt          s7, a3, s8
                  sltiu        t3, s7, 69
                  lui          s10, 245958
                  srai         s10, a4, 31
                  ori          s11, s5, -1021
                  andi         a3, zero, 1560
                  ori          ra, s5, 525
                  sltiu        a0, s10, 1337
                  slti         a1, s7, -576
                  lui          s3, 758832
                  sra          s8, t5, tp
                  nop
                  slti         a6, a0, 86
                  sub          s4, t5, a3
                  xor          s6, s7, zero
                  addi         a6, s1, 730
                  andi         sp, a4, -196
                  andi         a3, gp, -1342
                  and          s9, s8, gp
                  or           a6, s7, s10
                  srl          s8, a3, a5
                  sltu         gp, a6, a0
                  sltiu        a6, a7, 1669
                  slli         tp, a6, 14
                  and          s6, s7, sp
                  ori          s3, s3, 872
                  sll          s10, t1, a7
                  slt          s9, s8, t4
                  slli         tp, t4, 12
                  slli         a3, s7, 23
                  sll          a3, t6, s9
                  lui          t4, 433285
                  xori         s3, s6, 558
                  sltiu        t3, s8, -160
                  sltiu        s8, s10, 660
                  and          a0, s1, tp
                  nop
                  sll          s9, t6, t2
                  auipc        s2, 96100
                  sltiu        s10, a3, 383
                  srl          s7, a4, a0
                  slti         gp, t3, 1110
                  addi         s9, t2, -742
                  slli         s7, gp, 24
                  add          s4, a4, s2
                  srli         a0, a3, 30
                  andi         t3, gp, 1642
                  xori         a6, s6, 1205
                  ori          t4, t3, 1281
                  sub          s3, t4, a2
                  nop
                  slli         t5, zero, 12
                  slti         t0, s4, 1238
                  slli         ra, sp, 6
                  auipc        a3, 654348
                  slli         s3, a3, 20
                  sub          t4, s6, a6
                  sltu         s2, sp, a1
                  add          t0, s0, s3
                  add          a3, tp, s10
                  nop
                  nop
                  srli         s6, a3, 16
                  srai         t3, s2, 31
                  srli         t2, s9, 7
                  sll          s11, t4, t0
                  xor          s4, a3, s9
                  srai         s9, s8, 27
                  slt          t2, t2, s8
                  andi         s3, a0, 1796
                  sra          a4, a5, s4
                  slti         s1, s4, 2
                  xori         s2, s10, 1688
                  srli         s3, t4, 29
                  ori          zero, s11, 1
                  lui          s10, 177536
                  auipc        a4, 49108
                  srli         s6, zero, 10
                  xori         a1, t2, 946
                  slli         s9, ra, 7
                  nop
                  srai         s11, ra, 2
                  auipc        s3, 281864
                  xori         a6, s10, 1965
                  srli         t3, s7, 30
                  lui          a7, 1015001
                  slti         gp, a0, 1673
                  srai         a6, s4, 22
                  andi         s2, s1, 371
                  srl          s3, ra, t2
                  sra          a3, a0, gp
                  andi         tp, s1, 1135
                  srai         s2, t3, 25
                  sltiu        a0, t1, 1176
                  sltu         a6, a7, a2
                  auipc        a6, 978424
                  sub          sp, s1, zero
                  slti         s7, sp, -1482
                  sltiu        ra, t4, 520
                  addi         s3, s2, -219
                  srli         tp, a2, 22
                  slti         t0, t5, 1274
                  addi         a4, a1, 528
                  sra          s3, s8, s9
                  lui          a2, 103534
                  sub          a0, s9, zero
                  ori          a6, a2, -311
                  add          s2, t1, t0
                  or           s9, a0, t5
                  add          s7, zero, t4
                  sll          a3, t5, t1
                  addi         t5, s6, -1034
                  srai         a7, zero, 15
                  or           s11, t2, t2
                  sltu         t4, a7, t2
                  slti         s4, a4, -1375
                  xor          s7, a6, t2
                  srl          gp, a6, a5
                  add          a7, sp, t4
                  slt          a3, s10, a2
                  sra          t0, a1, zero
                  and          s10, ra, t3
                  slti         s10, s10, -1616
                  andi         s10, t0, -227
                  srli         s1, a0, 14
                  sltu         gp, a7, s4
                  sra          s9, a1, tp
                  add          s2, gp, s4
                  ori          t4, t5, 1621
                  addi         a1, a5, -1837
                  xori         ra, a1, -523
                  andi         s7, t4, -29
                  auipc        ra, 819595
                  or           t3, s7, s10
                  slti         a0, a7, 79
                  srai         s8, s7, 12
                  or           s2, tp, t4
                  lui          t4, 677686
                  slt          a1, a0, s4
                  ori          tp, t2, -1761
                  or           t2, a2, gp
                  auipc        s0, 494261
                  add          s3, s0, s7
                  sub          s2, gp, s2
                  nop
                  srli         tp, s11, 4
                  srli         t6, a7, 15
                  slt          s9, t2, sp
                  auipc        s9, 452035
                  xor          a1, a5, a1
                  andi         s7, s3, 508
                  nop
                  auipc        s10, 871442
                  add          a1, tp, s3
                  sltu         ra, a5, s1
                  srl          zero, t3, t5
                  sltu         s3, t1, t4
                  sll          s0, sp, a0
                  slti         t6, t1, 256
                  srl          a4, gp, s10
                  sub          t2, zero, t0
                  sltu         t4, a5, s7
                  addi         s10, a2, -318
                  xor          s8, gp, t0
                  sra          sp, ra, t6
                  srai         s11, s10, 14
                  addi         t3, a7, -770
                  slt          a2, s7, s7
                  sra          s3, s6, t1
                  srli         s2, a4, 13
                  nop
                  add          a7, s6, t6
                  sub          ra, t3, a0
                  srai         tp, tp, 26
                  sltu         a1, s5, ra
                  ori          t4, t2, -1210
                  srl          gp, s9, s10
                  ori          t0, a5, -1975
                  nop
                  slli         t4, t4, 29
                  slli         s1, zero, 7
                  sltu         a7, s11, a0
                  sra          s1, a2, zero
                  sltu         a6, a1, t4
                  srli         s10, sp, 24
                  xori         a3, t2, 175
                  auipc        zero, 452697
                  xori         s4, a6, -117
                  xori         s9, a5, 394
                  sub          s2, s9, t1
                  xor          s0, s6, s1
                  xori         ra, s0, 1091
                  addi         s4, t3, 1559
                  andi         s4, t5, 563
                  srl          a7, t5, ra
                  auipc        s2, 490367
                  xor          sp, a6, a7
                  sra          s6, a1, t2
                  xor          t4, s7, ra
                  xor          s4, zero, s6
                  ori          s10, s2, -1634
                  nop
                  and          a4, a7, s11
                  sra          a3, t4, sp
                  slti         a7, s1, -1706
                  and          s0, s9, s8
                  and          a3, ra, s5
                  auipc        s3, 911049
                  addi         a7, s10, 551
                  slt          s4, zero, a3
                  slt          s3, s1, a7
                  nop
                  slt          tp, s1, t2
                  xor          t0, zero, t6
                  slt          ra, a1, t4
                  nop
                  srl          s6, tp, s6
                  nop
                  srai         a4, a3, 6
                  ori          s10, a0, 1735
                  srai         s2, gp, 18
                  sll          a2, ra, s10
                  sub          a3, gp, s0
                  sra          a3, s11, a2
                  srl          a4, t6, a6
                  srli         s10, s7, 6
                  auipc        s7, 752127
                  sub          s6, s10, s9
                  xor          s1, a5, s11
                  slli         a3, tp, 23
                  slti         s11, a2, 474
                  sra          zero, s11, s7
                  srl          sp, zero, a6
                  srli         a4, t0, 0
                  ori          a4, s7, 1723
                  sll          t6, a2, s7
                  nop
                  slli         ra, a2, 21
                  srli         s0, s1, 8
                  xor          s9, t1, t4
                  sltu         gp, s7, s9
                  slli         s7, s8, 1
                  xori         a6, ra, 755
                  srl          sp, t2, t4
                  slti         gp, t6, 938
                  sltu         t4, a5, ra
                  xor          s0, ra, s7
                  auipc        s6, 224067
                  slli         s9, sp, 12
                  srli         s2, s9, 8
                  slli         a0, a5, 3
                  andi         s10, a6, -1257
                  srli         a1, zero, 2
                  andi         t3, s10, -331
                  sltiu        t6, a3, 680
                  nop
                  slt          a0, s11, t3
                  sub          a1, s1, a2
                  or           s11, s0, a6
                  slt          t2, t3, tp
                  or           s4, a3, t4
                  addi         a2, s1, 731
                  sltu         s0, s3, s3
                  auipc        zero, 34288
                  sub          a0, s6, ra
                  nop
                  srai         t0, gp, 22
                  sltu         s0, s3, s5
                  auipc        gp, 859299
                  and          a0, t6, a3
                  srl          s4, s5, s9
                  slti         a2, a5, 1207
                  xori         s10, t6, -483
                  andi         ra, t0, 788
                  srl          t2, sp, t1
                  srai         zero, s7, 21
                  sub          zero, t5, s9
                  ori          sp, a7, 990
                  auipc        a0, 969675
                  or           s9, s2, s7
                  ori          gp, ra, 216
                  auipc        s3, 1016399
                  slti         s11, t2, -47
                  sub          zero, t0, t0
                  slt          t2, s8, s1
                  xor          a0, t4, t0
                  xori         a4, s5, -134
                  slt          s8, t1, t6
                  srli         s9, s9, 8
                  srl          t3, a7, tp
                  srli         s6, gp, 23
                  sub          sp, tp, s0
                  sra          s1, s6, s8
                  sll          t2, ra, tp
                  sra          ra, s8, s3
                  or           t3, a4, s1
                  or           a4, a3, s9
                  or           s8, s5, gp
                  srai         t2, a4, 26
                  add          t5, a0, t4
                  sub          t5, t0, s10
                  add          a7, zero, t5
                  ori          t4, sp, -1055
                  add          s4, s6, s2
                  auipc        s7, 726378
                  lui          a7, 113340
                  lui          s0, 633572
                  srl          s6, a7, s8
                  srli         s8, t4, 31
                  slli         t4, gp, 30
                  lui          zero, 708346
                  xor          gp, a0, s9
                  lui          s0, 47320
                  sra          a6, zero, s7
                  and          t4, s9, t2
                  sra          gp, t6, t4
                  and          s3, s0, a1
                  sltiu        s4, ra, 1196
                  or           ra, t6, s4
                  slti         s11, t6, -1443
                  srli         a7, t4, 31
                  sltiu        tp, a1, 1268
                  sub          a6, a1, t4
                  lui          s11, 485230
                  sltiu        t5, a6, 1450
                  add          a7, t4, s7
                  slti         zero, gp, -339
                  addi         s1, t3, -306
                  sll          s9, s4, s7
                  sra          s2, gp, t2
                  sltu         zero, t6, t5
                  srl          s9, t2, t0
                  slti         a4, a2, -1127
                  or           a3, tp, t4
                  and          a1, ra, zero
                  srl          s10, s8, t3
                  xori         a0, s3, -26
                  xori         ra, s8, 234
                  slti         gp, a6, -1517
                  xor          s2, a7, gp
                  andi         t6, t2, -449
                  sub          a1, a7, a6
                  lui          t5, 457553
                  xor          s3, t6, ra
                  auipc        s0, 302464
                  slli         t6, a7, 21
                  sub          s4, zero, a2
                  srai         s9, sp, 1
                  sll          tp, a7, s11
                  li           a7, 0x26fe4c99 #start riscv_int_numeric_corner_stream_39
                  li           s0, 0x4ae58a9f
                  li           t0, 0xffffffff
                  li           t2, 0xffffffff
                  li           s7, 0xffffffff
                  li           s2, 0xffffffff
                  li           sp, 0xffffffff
                  li           tp, 0xdee029c7
                  li           t3, 0x0
                  li           t6, 0x80000000
                  auipc        s2, 422303
                  lui          s7, 610722
                  lui          tp, 733121
                  addi         t2, s0, -485
                  lui          s2, 995269
                  nop
                  add          t6, t2, a7
                  lui          t6, 490211
                  auipc        s7, 519413
                  add          t0, s0, s7
                  auipc        t3, 35683
                  addi         a7, s2, 1945
                  sub          a7, t3, t6
                  nop
                  lui          t0, 90151
                  sub          t2, tp, t6
                  add          t2, t3, sp
                  nop
                  nop
                  auipc        sp, 689096
                  auipc        t3, 64652
                  addi         s0, s2, -173
                  nop
                  add          tp, t2, t0 #end riscv_int_numeric_corner_stream_39
                  sltu         s7, zero, a5
                  sltiu        s10, s4, -343
                  sltu         t3, s7, t3
                  andi         s0, s10, 1579
                  slli         a1, s10, 13
                  srai         a7, a2, 29
                  sltiu        s1, a0, 1998
                  slli         t3, s5, 14
                  srai         gp, a2, 27
                  sltu         t2, t1, t0
                  slli         t5, s10, 10
                  auipc        a2, 22817
                  addi         s1, s4, 1386
                  srl          s4, s8, tp
                  slti         s10, a3, 319
                  nop
                  srl          a2, s0, gp
                  add          t4, sp, s6
                  xori         gp, t0, 136
                  srli         gp, s1, 11
                  addi         tp, a5, -2024
                  slli         a3, s7, 26
                  slti         s8, t1, 385
                  slt          a0, s2, s1
                  add          a7, t0, s3
                  auipc        s3, 351138
                  add          a3, s3, s7
                  andi         s0, t6, -465
                  add          s1, a2, s11
                  xori         s0, s5, -1027
                  sra          t6, a1, t3
                  and          a6, s2, ra
                  ori          a3, s6, -281
                  and          t4, tp, a0
                  add          s10, a7, gp
                  sltu         s0, t0, tp
                  auipc        s2, 281086
                  sltu         s2, s3, a5
                  addi         a2, t0, -2044
                  srli         a0, s9, 10
                  addi         a1, s6, -939
                  auipc        t6, 865122
                  xori         s0, zero, 1260
                  sltiu        s6, a4, 1696
                  sll          t4, s7, s3
                  srli         a1, t5, 10
                  sra          zero, t2, a0
                  nop
                  ori          s4, t0, -783
                  sltu         gp, a5, t6
                  sltiu        s11, s4, -1922
                  lui          s1, 947172
                  ori          s8, s6, -1765
                  add          t5, s5, zero
                  slt          t2, zero, s10
                  sltu         sp, s10, s8
                  sltu         t6, a1, a6
                  addi         s11, s2, -1020
                  xori         s8, s3, 1695
                  slt          s1, ra, zero
                  andi         gp, zero, -1338
                  sub          s11, s5, ra
                  xori         s7, a0, 1304
                  andi         t4, t0, -82
                  srl          s10, s2, s4
                  xori         a7, a7, -133
                  slli         s7, a1, 11
                  slt          a4, t3, t6
                  slt          t2, a5, tp
                  srli         s1, a4, 13
                  nop
                  and          s3, a5, gp
                  and          a2, s9, a6
                  sll          a2, s10, t0
                  and          s7, sp, a2
                  sll          s8, s7, s2
                  srl          t3, a6, a4
                  xori         t5, a4, -1556
                  or           s2, t5, s6
                  slt          t5, t5, zero
                  slli         s4, t0, 22
                  addi         t4, t4, 1627
                  lui          a6, 799013
                  xor          t4, tp, zero
                  nop
                  slli         t5, s6, 28
                  add          tp, zero, sp
                  srli         s4, a3, 17
                  sra          a6, t5, s2
                  sltu         s2, s6, tp
                  sub          s3, sp, a2
                  sll          s10, a2, t0
                  addi         a1, a1, -900
                  srai         a3, a6, 21
                  nop
                  or           gp, t2, t1
                  auipc        zero, 1012069
                  addi         ra, s0, 969
                  sll          a2, sp, s1
                  sltiu        t2, s2, 159
                  xor          s4, s3, a4
                  or           t0, t6, s10
                  srl          s8, s4, t1
                  sltu         t0, a6, s3
                  lui          s3, 506974
                  lui          s8, 517374
                  slti         a4, zero, 1712
                  sub          sp, a1, t1
                  auipc        s6, 994113
                  slti         s10, a2, -621
                  andi         a0, a0, 1825
                  ori          t2, t6, 1352
                  nop
                  srl          ra, tp, t5
                  slli         t3, s7, 12
                  addi         t5, ra, -1649
                  xori         t0, t0, 1462
                  andi         t4, s10, 211
                  xor          a6, s1, sp
                  andi         t3, t1, -565
                  xor          s4, a7, a5
                  srli         t3, s5, 27
                  sll          s8, gp, s9
                  xor          a7, s1, t0
                  addi         s10, a6, -1599
                  auipc        a6, 217763
                  sltiu        ra, t0, 19
                  slt          s10, s10, tp
                  slti         s4, a7, -1753
                  srli         a2, a7, 30
                  slt          a3, t2, s0
                  sub          a6, t4, s10
                  nop
                  sub          s9, t5, t2
                  nop
                  sra          gp, a6, a7
                  ori          sp, t4, 341
                  auipc        ra, 47924
                  sll          s0, s11, sp
                  andi         gp, t3, 1921
                  xori         tp, s1, -422
                  auipc        t4, 509451
                  lui          tp, 679832
                  sltiu        t3, s8, -36
                  and          s6, ra, ra
                  srli         a2, s5, 18
                  srl          a3, t6, zero
                  andi         s9, s7, 795
                  slt          s9, a2, t0
                  srai         s4, s7, 10
                  addi         a2, sp, -1003
                  nop
                  add          t4, t6, s9
                  slti         zero, a6, 260
                  srli         a7, s11, 6
                  add          tp, t5, t6
                  add          t4, t3, s7
                  xori         ra, a6, 747
                  slli         t6, s11, 18
                  sltiu        ra, a2, 177
                  ori          gp, t2, 2023
                  addi         ra, a7, 1815
                  xor          a2, t0, t4
                  ori          s9, ra, -826
                  sub          s4, s0, s2
                  ori          s4, zero, 1698
                  or           tp, a1, tp
                  addi         sp, s2, -1822
                  sra          s9, ra, gp
                  or           s1, s4, t3
                  addi         t2, s1, 316
                  auipc        gp, 171458
                  srli         t2, s1, 29
                  sll          s3, s11, a1
                  sub          s0, zero, a3
                  andi         t6, s9, -720
                  sltu         s8, tp, a1
                  srli         t5, t3, 4
                  sub          a4, t5, t5
                  srai         t3, tp, 11
                  sra          sp, a6, t0
                  xor          s7, t1, t2
                  sra          s3, s5, a6
                  sra          t5, s6, s3
                  sub          t4, s1, s0
                  addi         a0, s6, 533
                  slti         a0, ra, 1725
                  xor          gp, gp, s10
                  sltiu        tp, s9, 1963
                  slt          s10, t3, a0
                  xori         t3, s0, 1981
                  srli         a7, s1, 11
                  sll          s9, t3, gp
                  slli         s2, a7, 2
                  sltu         s1, tp, s10
                  or           a4, zero, t6
                  srl          a2, s0, t5
                  slt          t0, t6, a2
                  sra          sp, s11, a4
                  ori          s7, a6, -411
                  sltu         gp, t1, s3
                  sll          t5, s4, a1
                  slti         a2, t0, -679
                  addi         s6, s9, 682
                  srl          s6, t0, gp
                  lui          t3, 563871
                  ori          a7, t6, -1340
                  lui          t0, 218401
                  xori         a0, t5, -606
                  srl          s7, a0, tp
                  sltiu        s0, t6, 1134
                  sub          a0, s7, t5
                  andi         s0, s9, -291
                  or           sp, t6, s10
                  sltiu        s6, s9, -1209
                  srl          s4, gp, a1
                  or           a1, s9, a5
                  nop
                  lui          s2, 383402
                  add          a7, t4, tp
                  sltu         s9, tp, t1
                  srli         ra, s5, 22
                  slt          s2, t0, s11
                  sub          a1, a3, a4
                  slli         s2, t3, 21
                  srli         zero, zero, 13
                  sll          a1, a7, tp
                  add          zero, s0, a2
                  or           a3, a7, t2
                  or           a6, s0, sp
                  srl          a1, s1, s6
                  add          s3, t0, zero
                  xor          a0, a4, a2
                  ori          a0, gp, -2018
                  andi         sp, a7, 1650
                  andi         gp, a6, -642
                  nop
                  slti         s8, a2, -521
                  slti         a4, a6, -1161
                  andi         s11, s7, -1352
                  srl          s4, s5, s10
                  sltiu        gp, s8, 1078
                  slt          a2, s5, s1
                  xor          t2, a0, t3
                  auipc        zero, 367627
                  or           ra, zero, tp
                  sltu         s11, zero, a7
                  xori         t5, a2, 891
                  andi         ra, tp, -714
                  sra          t0, t5, tp
                  srai         t6, t1, 29
                  lui          ra, 320515
                  lui          s7, 376281
                  slt          a7, s5, a7
                  slt          a4, tp, t3
                  sltiu        t0, s3, 43
                  xor          a7, s2, s11
                  addi         s2, s8, 1592
                  nop
                  nop
                  ori          a2, sp, 633
                  srl          s4, t2, s6
                  sll          t2, s3, t2
                  sll          t2, sp, a2
                  slli         t2, t2, 13
                  lui          a4, 725032
                  sub          s11, s11, gp
                  srai         s0, s6, 12
                  sltiu        a4, t1, -767
                  sltu         s3, a0, s9
                  slli         s6, gp, 28
                  sra          sp, a2, gp
                  sub          t4, t6, s3
                  xor          zero, s10, s3
                  ori          s3, t5, -1065
                  srli         t3, t6, 19
                  auipc        ra, 219442
                  xori         tp, t4, 723
                  ori          s8, a6, -1707
                  ori          gp, a6, -1764
                  srli         a4, s6, 25
                  slt          gp, a4, a4
                  addi         sp, s10, -936
                  srl          s11, ra, a6
                  slt          s0, a5, s1
                  sltu         s7, sp, t2
                  nop
                  and          s2, s10, s2
                  ori          a4, a0, -1210
                  ori          s11, t0, 747
                  and          t3, s6, a6
                  andi         a4, s5, 1416
                  and          s6, t5, s7
                  sll          s11, t0, a5
                  xori         ra, s2, 1197
                  addi         s7, s3, -1015
                  add          a0, gp, s8
                  ori          s8, zero, 1142
                  xori         a2, a1, 710
                  addi         s6, gp, 1461
                  ori          s1, sp, 961
                  sll          s4, t2, s4
                  addi         ra, zero, 430
                  andi         t2, s0, -1355
                  and          s3, s8, sp
                  sltiu        a2, ra, 901
                  auipc        s4, 974165
                  ori          s10, a3, 1854
                  auipc        tp, 113746
                  nop
                  or           a3, a5, sp
                  addi         s0, s5, -469
                  srl          a3, s5, a7
                  nop
                  xor          zero, a7, s9
                  ori          a2, t0, -1199
                  and          gp, a0, a0
                  srl          s9, s11, a1
                  srai         t5, t2, 12
                  sltiu        s2, t1, 1219
                  auipc        s2, 656240
                  sra          s0, a7, t0
                  slti         t5, t5, 1674
                  sll          t3, s2, t5
                  sltu         tp, s7, s6
                  ori          s1, gp, -548
                  sll          s6, s6, s11
                  sll          t0, zero, s2
                  and          a0, s5, a6
                  slt          s6, t3, t1
                  sltu         t0, s3, t3
                  addi         tp, a4, 1246
                  or           s11, t6, a4
                  sltiu        a7, gp, -1499
                  or           tp, a4, s10
                  sub          tp, t0, zero
                  addi         a1, a1, 393
                  andi         s8, a4, 246
                  sltiu        a4, tp, 1554
                  add          s7, s6, sp
                  lui          s7, 497095
                  srl          s10, a3, s7
                  slli         gp, tp, 9
                  sltiu        s9, t1, 1265
                  and          s0, s4, tp
                  and          zero, t6, t4
                  sll          a6, s11, s3
                  sltiu        t5, zero, 1142
                  andi         t6, tp, -1748
                  srl          tp, s9, s11
                  sll          gp, t1, a2
                  and          s3, a2, s0
                  ori          zero, s7, -1538
                  lui          s10, 181367
                  srai         a2, s8, 13
                  ori          s9, a2, -1183
                  add          a2, s11, t6
                  sltiu        t5, s10, 1101
                  sll          s3, s2, t6
                  nop
                  add          gp, zero, gp
                  auipc        a2, 303799
                  xori         s2, a4, 1597
                  xori         a1, s6, 528
                  sll          a7, zero, t0
                  andi         a7, a1, 1046
                  xori         s4, s1, -1506
                  or           a6, a5, a6
                  srl          s10, s2, s5
                  andi         a7, ra, 1333
                  slti         gp, s2, 215
                  srai         s1, s3, 28
                  andi         s7, t1, -1283
                  sll          s11, t1, s6
                  sub          s9, s0, a2
                  add          s1, a6, s10
                  add          t3, t0, tp
                  addi         a0, a4, -1743
                  srli         a0, t0, 15
                  srli         tp, s7, 10
                  or           t6, zero, a0
                  sltu         ra, s8, s4
                  sltu         s1, a3, t5
                  sll          a0, ra, s2
                  xori         ra, zero, 1374
                  sll          tp, s6, a7
                  sll          s1, s5, a2
                  and          t4, a6, s10
                  srl          t5, t1, sp
                  auipc        s11, 607177
                  xor          t3, s6, t6
                  xori         s9, t2, 706
                  and          s9, a3, s9
                  sltiu        s6, a3, -23
                  slli         t0, s1, 14
                  lui          t0, 408674
                  andi         t3, t3, -1529
                  addi         a6, s8, -1985
                  sub          s0, sp, t6
                  xori         a6, a7, 1047
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           s1, 0x80000000
                  li           gp, 0xffffffff
                  li           s11, 0x6ce3e92f
                  li           a3, 0xffffffff
                  li           a6, 0xffffffff
                  li           t3, 0x0
                  li           s6, 0x0
                  li           t0, 0xffffffff
                  li           s7, 0x0
                  sub          s7, t3, t3
                  sub          s7, a6, s7
                  auipc        t0, 775563
                  auipc        gp, 769251
                  nop
                  nop
                  nop
                  lui          s1, 315620
                  auipc        t3, 286828
                  nop
                  nop
                  nop
                  addi         s11, s11, 608
                  addi         t3, gp, -404
                  lui          a3, 684247
                  add          a3, gp, a3
                  nop
                  lui          s6, 197922
                  add          t0, s7, a3
                  nop
                  sub          t0, a6, s1
                  add          s6, gp, a3
                  sub          t3, s6, s11
                  nop
                  auipc        s6, 588987
                  auipc        s11, 381547
                  addi         s7, t3, 517
                  sub          s7, a3, a3
                  auipc        a6, 841250 #end riscv_int_numeric_corner_stream_8
                  slli         sp, gp, 20
                  add          t3, t5, gp
                  slt          a3, s1, t6
                  sltiu        s11, s3, -740
                  slt          s8, s3, a0
                  srl          sp, s2, a1
                  sll          a1, a1, s5
                  nop
                  sra          t6, t5, a3
                  sra          tp, s1, s1
                  srl          t3, a5, a5
                  xor          ra, s3, s2
                  add          gp, a2, tp
                  sra          s2, tp, s2
                  addi         t3, s4, 1940
                  srli         t5, s1, 15
                  srl          a7, tp, s3
                  or           t3, s3, t3
                  nop
                  srli         t4, gp, 6
                  andi         a7, a6, -183
                  sra          t2, t4, t4
                  lui          a4, 943885
                  xor          s9, t1, t2
                  srl          a0, s10, tp
                  srai         s6, a7, 20
                  xori         a2, s10, -1739
                  add          s11, tp, a4
                  slli         t2, s9, 4
                  nop
                  and          a4, s4, a7
                  slt          a6, s8, a7
                  srai         t4, ra, 0
                  auipc        s4, 306226
                  nop
                  srai         s11, a5, 28
                  addi         t5, a0, 1615
                  sltiu        a4, ra, -1619
                  sra          gp, s3, a1
                  andi         t6, s7, -1187
                  and          s9, a3, s1
                  addi         tp, s3, -1153
                  ori          s7, a1, 1418
                  srai         s6, t3, 15
                  xori         zero, s4, -311
                  xor          s2, a5, s5
                  nop
                  slli         s2, s1, 7
                  sra          s9, s3, t3
                  or           a0, s9, a4
                  xor          s10, t5, s2
                  slti         s1, t3, 1928
                  sltu         s0, t6, a5
                  sltiu        tp, t1, 937
                  sltiu        a1, a4, -892
                  sltu         s8, zero, t6
                  lui          sp, 584567
                  slt          s10, gp, s4
                  sub          a0, s0, s4
                  sltiu        s9, s1, -58
                  sra          t2, ra, s4
                  nop
                  auipc        ra, 853536
                  sll          a2, t5, a2
                  srai         a3, a6, 14
                  sra          gp, t3, t5
                  srli         s8, a7, 24
                  slt          s11, s6, a0
                  sll          s6, a6, ra
                  auipc        tp, 341207
                  sll          tp, a6, s10
                  slti         s8, zero, 17
                  srai         t6, a1, 17
                  or           s0, s5, t1
                  slli         t6, t3, 30
                  slti         s0, a4, -2042
                  srli         a2, a1, 4
                  sub          s0, a3, a6
                  srl          t5, a3, s3
                  slti         s1, tp, -1211
                  slli         a7, s1, 4
                  slli         s7, tp, 6
                  srli         sp, a5, 16
                  srai         ra, s6, 25
                  sltu         sp, s2, t0
                  sra          t4, s3, a5
                  srl          tp, a4, s7
                  sll          s0, a6, s0
                  andi         a2, s5, -122
                  addi         zero, a4, -67
                  andi         s2, sp, -875
                  sltu         t5, gp, a0
                  nop
                  sll          s8, s4, a3
                  xor          gp, a1, a6
                  ori          t0, s11, 1407
                  sltu         a4, s3, s1
                  ori          t3, a6, -1075
                  andi         t6, t3, -528
                  nop
                  sra          s4, s3, tp
                  slti         a0, t1, 26
                  srai         s11, s6, 19
                  sltiu        t5, a7, 1112
                  or           sp, a5, s11
                  nop
                  xor          s10, s10, s0
                  auipc        a4, 996
                  sltu         tp, a5, s11
                  slt          s6, s9, ra
                  andi         s2, a4, -1901
                  sltiu        sp, t1, -521
                  and          s8, s10, t1
                  slli         t3, s0, 7
                  xor          a7, t3, ra
                  sub          t6, s3, a6
                  xor          a6, a5, t3
                  or           s8, t0, tp
                  sltiu        t0, s5, 805
                  and          a0, a2, s2
                  add          tp, t2, s9
                  srli         a7, t6, 8
                  srli         s6, t0, 26
                  andi         t3, t0, -692
                  auipc        s11, 577715
                  srai         zero, s0, 2
                  nop
                  lui          t6, 2813
                  slli         a2, t4, 27
                  sra          t4, a4, s8
                  sltiu        t6, s0, -1322
                  sltiu        a2, tp, 130
                  auipc        a4, 219933
                  or           t5, s0, t0
                  slt          gp, ra, s10
                  ori          s0, s11, 1348
                  srai         a3, t4, 15
                  srl          a2, s10, s1
                  srl          gp, a3, s4
                  sra          tp, s10, s6
                  sltiu        a2, t4, -686
                  sll          ra, s5, ra
                  slti         tp, a2, 1337
                  srli         ra, a0, 7
                  slt          s0, t0, s9
                  sltu         a6, t4, t2
                  lui          a7, 758874
                  sra          t6, t5, s3
                  slli         t6, s9, 3
                  srai         t5, a0, 15
                  sub          s3, s7, s10
                  nop
                  ori          s7, t5, 1767
                  srl          s2, a3, t2
                  auipc        t5, 1030329
                  slti         t0, s1, -574
                  srai         a7, t1, 24
                  or           gp, a0, gp
                  srai         a6, t1, 23
                  lui          s10, 32496
                  sltu         s6, t1, s10
                  slt          t5, s3, t0
                  xori         t4, a3, -778
                  or           ra, a5, s1
                  xori         s11, s1, -1988
                  sub          gp, s9, s2
                  or           s4, t5, t1
                  sll          s6, s8, a1
                  srai         s9, t1, 16
                  ori          s9, a1, 1889
                  and          t2, t1, t4
                  and          s11, s4, t3
                  xor          gp, a4, s11
                  and          sp, sp, sp
                  slti         a0, ra, -991
                  srli         ra, a0, 21
                  auipc        a1, 464662
                  andi         ra, s9, -610
                  or           t2, t3, t0
                  xori         t0, a4, 1192
                  sra          a1, s2, t5
                  srl          s3, s6, s9
                  sltu         zero, zero, t4
                  lui          a0, 1026855
                  srai         t5, t5, 23
                  slli         s8, s7, 31
                  ori          gp, t1, -408
                  add          s2, s0, a7
                  auipc        t5, 576068
                  addi         t6, s2, 589
                  slli         a4, a7, 10
                  sll          s2, s9, ra
                  slli         a2, a4, 24
                  sltiu        t6, t4, 1624
                  or           s2, a2, a1
                  slti         s0, s2, 971
                  xori         s10, gp, 1280
                  slt          a6, s7, s0
                  sll          s10, a4, s1
                  lui          gp, 214699
                  slt          ra, a0, t3
                  slti         t5, t2, 1536
                  srai         s9, s3, 9
                  srl          a7, s9, s3
                  sltiu        zero, t4, 1288
                  ori          s6, a1, -624
                  auipc        a7, 45886
                  slti         s6, s9, 1625
                  lui          t5, 365548
                  ori          a3, s7, 1884
                  auipc        a2, 418723
                  sub          t6, t6, s10
                  and          s1, a6, s11
                  or           t2, s3, sp
                  sll          ra, s10, t2
                  sll          s7, zero, s0
                  add          t3, t3, a3
                  slli         s10, zero, 9
                  srli         s6, t6, 14
                  andi         t0, t4, 2042
                  slli         ra, a7, 28
                  add          s6, a5, tp
                  slli         t6, s2, 22
                  nop
                  addi         a0, ra, 1238
                  auipc        gp, 738248
                  ori          s11, t6, 1697
                  ori          s1, s9, -1546
                  xor          s1, t0, t3
                  sra          s1, a4, a7
                  srl          ra, s6, s3
                  srl          gp, ra, s11
                  slt          t2, t4, a7
                  srli         gp, s11, 21
                  or           t5, a6, a3
                  and          s4, t5, a0
                  sub          s3, s7, t6
                  sltu         s1, t0, a0
                  sub          t0, t2, s10
                  lui          s6, 731223
                  and          tp, t0, s1
                  slt          gp, t3, s5
                  sll          zero, t3, t5
                  slt          s11, s6, gp
                  sltu         s2, tp, s4
                  and          s10, s10, s3
                  slt          a3, s9, s1
                  lui          s7, 894334
                  ori          s1, a2, 772
                  lui          gp, 395713
                  add          s8, tp, a7
                  or           s4, sp, a1
                  slli         zero, s7, 17
                  and          t5, s1, s5
                  sltiu        s2, s11, 769
                  srl          s9, a7, s1
                  sltu         s3, gp, sp
                  slt          s9, t6, t2
                  slt          s3, a5, t1
                  ori          s10, t4, -201
                  or           zero, sp, a0
                  ori          sp, s8, -2025
                  srl          a0, ra, ra
                  srl          s3, t6, t6
                  sltiu        s8, a7, -1387
                  and          s7, t4, tp
                  sub          a4, s5, s10
                  and          s0, t2, s10
                  andi         a1, a5, 1271
                  nop
                  xori         sp, a0, 1145
                  xori         a3, s8, 184
                  srli         s9, s7, 26
                  auipc        a1, 247968
                  sltu         a7, s5, t2
                  and          a2, s1, tp
                  lui          s8, 761582
                  auipc        a1, 930116
                  andi         a4, a2, 462
                  slti         s1, s7, 1834
                  srai         s1, s2, 5
                  sll          sp, t4, t3
                  andi         ra, s6, 1603
                  andi         s4, s8, 1458
                  add          a6, t6, s6
                  srai         s9, a2, 24
                  auipc        s3, 875043
                  sll          s3, a5, t5
                  and          s7, s6, s11
                  sra          s11, s1, a1
                  srli         sp, s7, 1
                  srai         zero, gp, 26
                  xori         a0, s6, 183
                  slt          t6, t3, zero
                  nop
                  srli         ra, s4, 25
                  sltu         t0, sp, t0
                  sll          s8, a7, a3
                  slt          s2, s3, s2
                  nop
                  xori         s4, zero, -831
                  slti         a7, a6, 1776
                  sra          s10, zero, t4
                  nop
                  sltiu        a3, t0, -696
                  lui          s6, 59048
                  xori         t0, s5, 2019
                  add          t0, t1, t2
                  ori          a1, t5, 1143
                  sub          t0, s9, a3
                  auipc        a3, 584400
                  sltu         s0, t1, t5
                  add          a4, s1, t0
                  sltiu        t3, sp, -1013
                  srli         s0, s3, 11
                  sll          zero, a3, a6
                  srl          a0, s2, t0
                  lui          tp, 136104
                  xor          t5, t0, t3
                  auipc        a1, 76155
                  and          gp, a1, s10
                  add          a0, s6, t4
                  srl          sp, gp, a4
                  sra          t4, t0, tp
                  add          s4, a6, a3
                  srli         zero, tp, 13
                  sltiu        a2, t4, -1041
                  srl          t5, s4, a0
                  lui          s0, 229105
                  slli         ra, s9, 13
                  xori         s1, s3, -1969
                  srli         a2, t3, 24
                  sltu         ra, a2, s4
                  andi         a7, s7, -524
                  sltiu        a7, gp, -1189
                  ori          t2, a4, -1755
                  auipc        sp, 539455
                  sub          a4, a0, a6
                  andi         s1, gp, 885
                  ori          a0, tp, -1157
                  xori         s1, s2, -778
                  xor          s3, s11, t6
                  auipc        s11, 339122
                  srli         s1, s5, 27
                  auipc        s8, 838510
                  sltiu        t0, s7, -1777
                  srai         t0, s7, 0
                  add          t3, s2, s9
                  and          a4, a6, zero
                  or           s3, t0, a3
                  sltiu        sp, a7, -963
                  nop
                  lui          s2, 538234
                  auipc        s4, 798192
                  lui          s3, 498367
                  sltiu        s6, s2, 1490
                  addi         t2, t2, 11
                  sub          s0, s5, a1
                  and          gp, s3, s4
                  srl          s7, s2, s2
                  srli         s8, a5, 26
                  or           tp, s10, s10
                  sra          s1, zero, s3
                  ori          s7, zero, 1576
                  or           t2, t6, s11
                  andi         s4, s5, -871
                  addi         s6, a3, -133
                  addi         zero, tp, 1411
                  lui          s6, 769347
                  slti         s3, s0, -1005
                  ori          zero, t0, -1904
                  nop
                  andi         gp, s4, 52
                  addi         t5, s6, 600
                  or           s4, t3, tp
                  srl          s1, a2, a6
                  addi         s2, a0, 191
                  xori         t3, a7, -1259
                  addi         s6, a6, -1739
                  nop
                  auipc        a2, 574653
                  nop
                  srli         t2, s2, 4
                  ori          a7, s3, -538
                  or           a0, t1, gp
                  xori         a7, sp, -317
                  add          a1, a6, a0
                  srli         t4, t6, 26
                  nop
                  ori          gp, s6, -1547
                  slt          s9, a7, a2
                  auipc        a6, 57126
                  sra          a4, t0, s1
                  slli         s1, t5, 4
                  xori         s10, a7, 714
                  lui          t5, 1029428
                  sltiu        zero, s3, 879
                  slti         a0, t2, -743
                  srl          tp, s7, s5
                  sub          t0, s1, sp
                  srai         s4, t2, 3
                  slt          a4, s4, s3
                  auipc        s2, 818044
                  addi         a1, a3, 290
                  xor          s6, s3, tp
                  sub          gp, t0, s6
                  ori          s7, s3, 719
                  lui          s1, 702834
                  sll          t2, s5, s1
                  andi         t0, a5, 1643
                  addi         sp, t0, -1995
                  add          t4, a4, s3
                  srli         s10, s6, 16
                  xori         a7, a0, -378
                  sub          t6, a4, a6
                  xor          zero, a6, s0
                  sra          t3, t6, s5
                  nop
                  srli         t3, s4, 1
                  sub          s0, s5, a3
                  sra          tp, s3, s1
                  and          a2, a2, s0
                  srli         a4, s4, 3
                  sub          s3, s9, tp
                  lui          s4, 188651
                  slti         s7, s11, 1577
                  andi         t2, a0, 367
                  sll          a7, a1, s0
                  or           a7, s7, t2
                  srl          s4, a7, zero
                  add          a6, s7, s11
                  xori         s7, zero, -1703
                  nop
                  add          a6, a6, s10
                  sub          zero, s4, s4
                  add          t4, t1, a6
                  xori         s10, s0, -1230
                  slti         s6, a6, 1240
                  xori         a0, a1, -321
                  xori         s2, t3, -728
                  slti         a2, t0, -1224
                  sltiu        a3, t3, 846
                  sra          t5, a5, gp
                  slli         s2, s8, 9
                  nop
                  sub          t6, tp, s6
                  sltu         s10, s2, a5
                  sub          s6, a2, s1
                  srl          s3, s2, s3
                  add          t0, s3, t0
                  slli         a0, s3, 10
                  xor          t5, gp, t4
                  xori         s9, s9, -336
                  sltiu        s6, t1, 1701
                  ori          tp, s10, 801
                  lui          s0, 605449
                  addi         s10, t2, -194
                  and          t3, s5, t4
                  slli         s9, s1, 8
                  slli         a2, a6, 26
                  sub          s9, s5, s7
                  add          t4, gp, s6
                  and          s9, t1, a4
                  srl          s1, a7, a5
                  or           t0, t4, s4
                  lui          s8, 389870
                  srai         s3, s6, 9
                  lui          a0, 225814
                  auipc        s3, 928737
                  srli         tp, a6, 30
                  or           t3, t5, a3
                  sra          gp, s8, s6
                  slli         s10, s1, 9
                  xor          a0, s4, s1
                  lui          s1, 315839
                  sll          s10, t6, a5
                  auipc        a0, 232066
                  sltu         t5, t1, tp
                  srli         a3, a4, 23
                  ori          t6, t4, -543
                  srli         a2, t0, 2
                  xor          s2, s3, s8
                  ori          t0, s6, 1825
                  andi         s2, t6, 957
                  sltu         a0, s1, s9
                  sra          tp, gp, tp
                  slti         zero, a1, -1265
                  addi         s9, a4, 1769
                  xori         s8, s1, -727
                  sll          a1, a0, s4
                  or           t5, tp, a1
                  sra          a1, t1, s11
                  auipc        s6, 929640
                  srai         a0, t0, 30
                  nop
                  or           s2, a1, t4
                  and          a7, zero, a0
                  addi         t2, a0, -1720
                  srai         tp, a1, 19
                  slti         t5, s9, -332
                  sltiu        t2, a2, 1158
                  srl          s1, zero, s4
                  srai         t0, s6, 14
                  sra          a4, s6, gp
                  nop
                  and          s7, s4, a6
                  sltiu        s7, t3, 415
                  srl          a7, s2, s6
                  nop
                  add          t3, a3, s5
                  lui          s9, 577400
                  slt          gp, s5, a2
                  srai         sp, t1, 7
                  sltiu        a7, a4, 633
                  sltu         s6, tp, s10
                  slti         s0, s4, 1876
                  sra          s3, s4, t4
                  and          a4, s4, s0
                  nop
                  or           t2, s0, s3
                  or           a2, s5, sp
                  or           a7, ra, t5
                  andi         a6, zero, 1035
                  sltiu        a6, a5, -1344
                  nop
                  add          s3, t1, tp
                  srli         s2, a2, 29
                  andi         s3, a4, 90
                  slt          t5, s5, t2
                  addi         s10, s2, -1645
                  and          t4, zero, a1
                  srl          ra, a0, t3
                  sll          tp, a0, a7
                  sub          a7, s7, t6
                  slt          zero, a6, zero
                  or           a7, t0, s4
                  xor          s0, a2, a0
                  sltiu        t4, s11, 88
                  xor          s1, t3, a5
                  ori          s1, s5, 305
                  sltiu        a4, s7, 11
                  srl          s11, s1, s9
                  xor          t0, s3, s8
                  slti         a6, t2, 172
                  andi         t5, t5, -1376
                  lui          s8, 988104
                  slti         a0, s1, -1192
                  nop
                  slt          s0, t3, s4
                  srli         t0, tp, 19
                  srli         s6, a3, 5
                  sll          a7, ra, a5
                  ori          s8, a4, -158
                  andi         t3, t0, 1580
                  xor          sp, a0, s6
                  add          sp, t6, t4
                  sra          sp, zero, ra
                  srli         s7, s0, 14
                  xori         t6, a0, 229
                  sltiu        a3, s1, 1096
                  slti         s3, a2, 139
                  sub          zero, t1, t5
                  sltiu        sp, a3, 740
                  auipc        s3, 909156
                  srl          a0, a6, s4
                  srai         s9, t6, 0
                  or           a4, sp, s5
                  xor          t4, s5, gp
                  sll          a3, a4, s3
                  and          t5, a4, s6
                  sltu         s1, a1, s5
                  slti         t5, ra, -794
                  sltu         s8, sp, s8
                  ori          t0, ra, 707
                  ori          t4, s4, 992
                  or           sp, zero, t6
                  lui          s8, 50610
                  add          a1, s10, s6
                  and          s0, ra, s6
                  add          s1, gp, a5
                  srai         t0, a3, 14
                  sll          s2, s9, s7
                  xori         s0, s3, 556
                  sra          t4, sp, t5
                  srl          s11, a4, t5
                  srli         sp, sp, 16
                  addi         a3, t0, 517
                  srl          gp, s11, s7
                  sub          gp, s11, s2
                  sll          a3, t6, a1
                  xori         s9, s7, 1986
                  lui          t3, 752278
                  slt          t5, s8, zero
                  auipc        s6, 365647
                  slt          s4, s2, a4
                  sltiu        a4, t4, 1887
                  add          a2, t3, a7
                  auipc        a0, 963452
                  slti         a4, t2, -1176
                  slti         s0, s8, 1483
                  srl          t3, a1, zero
                  or           ra, s0, gp
                  andi         a1, a6, 1372
                  lui          a7, 912920
                  addi         s1, s6, 448
                  ori          ra, s5, 1925
                  sll          s0, s3, tp
                  nop
                  lui          t3, 55059
                  srli         a2, tp, 8
                  srli         t2, s8, 18
                  nop
                  sll          t0, t6, t6
                  slt          s10, zero, s8
                  ori          s1, a7, 1286
                  srl          s2, t4, tp
                  andi         sp, t1, 760
                  addi         a0, s5, 264
                  slt          t3, s7, s9
                  srli         gp, gp, 0
                  srl          a6, s10, a6
                  xori         t5, t1, -988
                  add          a0, s2, t6
                  or           s3, a5, t3
                  sub          s4, s5, a7
                  nop
                  ori          zero, t5, 465
                  sltiu        s7, gp, -943
                  slt          s2, gp, s0
                  srl          a2, a5, sp
                  sltiu        a3, a4, 1184
                  xori         a2, s10, 337
                  lui          s1, 789583
                  addi         a2, s10, -1674
                  or           a0, a1, s7
                  sll          zero, a6, s4
                  sub          ra, s2, a4
                  xori         t5, s2, 1603
                  sll          s7, tp, ra
                  sra          t4, t5, a1
                  sll          s7, sp, a4
                  xori         tp, a0, -1963
                  sub          s0, a6, t0
                  addi         s11, t5, -1770
                  sltiu        a0, a1, 1183
                  xor          s3, a1, a6
                  or           s11, t4, a3
                  sub          a6, t4, s9
                  lui          ra, 300579
                  addi         t5, s0, -914
                  add          s8, s4, s1
                  addi         s8, a7, 8
                  or           s9, s8, sp
                  andi         s10, s10, -1951
                  sltu         a7, a6, ra
                  nop
                  sltu         tp, t1, t2
                  slt          tp, s9, s9
                  slli         a0, s6, 11
                  sltiu        s9, t0, -1008
                  slti         s8, a0, 638
                  add          s2, t4, t6
                  and          a2, a0, t5
                  slti         a4, a7, -691
                  ori          a4, a7, -1478
                  srai         sp, t6, 20
                  srl          s10, a3, s9
                  srl          a2, t3, t4
                  slti         a3, a0, 1418
                  srl          t4, s3, s2
                  srl          s6, a0, a3
                  srai         a3, a2, 11
                  srli         t3, t5, 2
                  lui          s0, 934778
                  auipc        a7, 499562
                  sltu         t6, s11, s0
                  sltiu        t3, a1, -1251
                  slti         t3, gp, 1288
                  sra          t0, s4, t2
                  or           tp, a3, s7
                  sub          t6, a1, a1
                  or           s4, s1, s2
                  nop
                  lui          tp, 280528
                  sltiu        zero, t3, -1498
                  and          s2, s5, s0
                  add          s1, s9, s9
                  or           s6, s3, s0
                  sltiu        a1, s0, -459
                  sltu         s11, a0, t3
                  slt          a1, a3, sp
                  auipc        a0, 743508
                  add          ra, s0, t4
                  slt          a4, s5, t2
                  auipc        ra, 900782
                  nop
                  add          s1, a5, a0
                  xor          ra, a5, sp
                  sltiu        s9, a7, -1716
                  and          tp, gp, s11
                  nop
                  slt          s8, t3, a0
                  sltiu        a1, s3, -264
                  lui          t4, 645930
                  sltiu        s0, a1, 590
                  auipc        t4, 792664
                  and          s2, s10, a1
                  sll          a6, s2, a7
                  add          t3, s1, t5
                  sltiu        sp, a4, -2033
                  slt          ra, t3, a7
                  or           s8, s10, a3
                  ori          tp, s6, 1331
                  sra          s7, t1, tp
                  sub          t5, a7, zero
                  srl          a2, a2, s9
                  sll          zero, a1, zero
                  or           zero, zero, sp
                  srai         a3, s6, 11
                  and          t6, t2, s9
                  srai         t0, ra, 3
                  addi         s2, s3, 886
                  and          zero, a1, gp
                  srl          a7, sp, s4
                  slt          tp, a3, a7
                  sra          s11, s8, t1
                  sll          s1, s8, t4
                  sll          s11, s3, s10
                  lui          s11, 995983
                  andi         a6, zero, -998
                  auipc        a1, 135830
                  sra          t4, zero, s10
                  andi         s11, s10, -1159
                  or           zero, t1, a1
                  auipc        zero, 1039500
                  and          s8, s0, s7
                  or           gp, gp, t6
                  auipc        a6, 51034
                  andi         ra, a6, 1276
                  and          gp, a7, s10
                  slt          t5, s11, tp
                  slti         a0, a5, -876
                  slt          s2, s0, s2
                  sra          s0, t4, t6
                  sub          t2, s3, t1
                  srli         a0, a4, 8
                  or           t3, zero, s10
                  sltu         a1, t6, s0
                  andi         a7, t2, -1692
                  srli         s8, ra, 16
                  sll          t5, a1, a5
                  ori          s9, s1, -1901
                  sub          a2, a1, gp
                  andi         a0, s10, 1078
                  nop
                  andi         t3, t5, 1260
                  xori         a6, s0, 825
                  slli         s6, t0, 4
                  srai         s7, a1, 5
                  lui          s1, 255093
                  sll          s0, a0, s2
                  add          s3, a7, t1
                  sub          s11, s5, s9
                  lui          s4, 924623
                  xor          t3, s2, s4
                  sub          s7, t4, a6
                  sltu         s6, s10, tp
                  srai         s8, s6, 15
                  lui          s4, 250741
                  sltu         tp, t6, a7
                  and          ra, ra, s9
                  srl          t3, gp, s6
                  sub          s6, t0, t1
                  lui          s1, 362177
                  sltiu        tp, t5, -1551
                  sub          s0, gp, s0
                  addi         ra, s9, -1274
                  nop
                  ori          s11, t0, -1340
                  add          s3, s9, s0
                  and          s6, t4, t1
                  srli         zero, t3, 10
                  sub          a0, s4, s10
                  srai         a0, s9, 26
                  sra          gp, gp, sp
                  andi         s9, a3, -93
                  srl          s6, a1, a5
                  add          sp, t5, t2
                  sltu         s6, s3, t2
                  andi         a2, t5, -1950
                  sll          t4, s8, a7
                  nop
                  nop
                  slti         a1, ra, 1426
                  slt          a1, s6, a2
                  xori         a1, a1, 2038
                  auipc        s7, 276910
                  or           a1, s2, a2
                  srli         t6, s1, 3
                  nop
                  or           a1, t2, t1
                  lui          sp, 812361
                  addi         a6, s4, 317
                  slti         s9, s5, -60
                  srli         a4, s9, 12
                  sltu         s11, a4, s1
                  and          s9, s6, s9
                  or           t0, a7, t5
                  nop
                  sra          s6, zero, s4
                  sub          a0, s8, s8
                  sub          gp, s3, a7
                  nop
                  andi         s2, t2, -1881
                  sltu         a1, s9, s10
                  lui          a7, 719991
                  xori         s8, zero, 61
                  andi         t2, t6, 792
                  srli         t2, a7, 2
                  sub          s6, zero, gp
                  sll          s9, s10, t3
                  addi         s3, s9, -654
                  andi         a7, s7, 486
                  add          sp, t6, sp
                  slti         a7, t5, -1852
                  sub          a3, tp, a7
                  add          s3, sp, s4
                  add          t4, a7, t3
                  addi         s6, s0, 956
                  lui          a0, 184394
                  sll          a7, t0, a6
                  lui          t4, 171877
                  slli         s6, zero, 30
                  lui          t5, 23281
                  add          s9, s5, a1
                  or           zero, s0, s1
                  sltiu        zero, zero, 1876
                  nop
                  sll          t0, s7, a0
                  sll          s9, t6, tp
                  sub          s7, s0, tp
                  andi         a4, s11, -335
                  slt          s2, s9, s10
                  add          zero, zero, t2
                  srl          t4, ra, zero
                  slt          a2, a6, s3
                  sltu         a6, s8, a4
                  and          t4, s4, s2
                  add          t6, t4, a4
                  sub          s7, s0, s8
                  srai         s8, a1, 3
                  ori          s4, t5, 1269
                  sra          s3, s3, a1
                  addi         tp, s10, -743
                  or           s7, sp, t0
                  slt          t3, s5, a4
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s4, 0xe456fdf9
                  li           a7, 0x31166a94
                  li           t4, 0x557fea61
                  li           s6, 0x80000000
                  li           tp, 0xffffffff
                  li           s1, 0xffffffff
                  li           s10, 0x80000000
                  li           t5, 0x0
                  li           gp, 0xffffffff
                  add          s10, gp, sp
                  auipc        a7, 313863
                  add          gp, t4, sp
                  addi         s6, t5, -323
                  lui          s4, 50652
                  addi         sp, s6, 160
                  add          s1, s1, s10
                  add          t4, s4, s6
                  auipc        t4, 581429
                  addi         s6, s6, -1454
                  add          gp, s1, t4
                  nop
                  nop
                  sub          s10, s10, s1
                  lui          gp, 826804
                  nop
                  add          a7, gp, t4
                  auipc        tp, 33190
                  addi         sp, s6, 993
                  add          tp, tp, s10
                  lui          gp, 768290
                  lui          sp, 723497
                  auipc        gp, 299996
                  nop
                  addi         sp, t5, -1847
                  lui          s1, 72543 #end riscv_int_numeric_corner_stream_3
                  sltiu        a4, a1, -1801
                  sltu         s10, t6, tp
                  xori         s7, s9, 586
                  add          t6, t3, a5
                  srai         t0, s7, 11
                  ori          ra, s11, -356
                  srli         gp, a4, 8
                  sub          t4, s4, s0
                  srli         a6, t4, 12
                  sub          s3, a3, t1
                  sra          s1, t0, s7
                  and          s8, a5, t3
                  xori         a6, zero, 1605
                  addi         a6, zero, 757
                  srai         s3, sp, 7
                  auipc        t6, 198579
                  ori          s8, s11, -116
                  auipc        a4, 34827
                  sll          gp, tp, zero
                  and          t6, a1, a3
                  ori          s10, s2, -1047
                  add          ra, a2, zero
                  and          t0, s6, s2
                  andi         t5, s5, 1061
                  sltu         a2, s10, a7
                  slt          s9, s6, s11
                  lui          t3, 706793
                  sra          a2, s8, s4
                  xori         tp, t0, -1118
                  xor          t5, s1, s11
                  xori         gp, s10, -360
                  slli         a3, zero, 28
                  lui          s6, 325304
                  slti         s7, a1, -1610
                  andi         tp, a3, -226
                  andi         zero, t0, 1325
                  auipc        ra, 449085
                  xor          s11, a6, t1
                  sub          t4, s0, t3
                  andi         a7, s11, -469
                  slli         t4, a2, 23
                  slt          s9, zero, a1
                  xor          a6, s9, t4
                  sll          a1, a7, a5
                  auipc        a3, 4805
                  srai         s8, a1, 7
                  sll          a7, a1, t5
                  slli         gp, s8, 28
                  lui          a3, 195822
                  andi         s0, t2, -273
                  xori         s0, s8, -554
                  lui          s4, 120621
                  sub          sp, s8, s11
                  sltiu        sp, t5, -1866
                  slt          s2, t2, a4
                  xori         s9, s1, -1233
                  srai         s10, s5, 0
                  auipc        s11, 37633
                  addi         t3, zero, -399
                  add          t2, t3, t4
                  or           s4, s8, gp
                  xor          s10, tp, sp
                  xor          a2, s6, s9
                  sll          t6, t0, t0
                  sll          t4, s3, t5
                  xor          zero, a6, a6
                  or           s10, s8, s7
                  add          s10, t6, a4
                  or           t3, t2, a1
                  sub          a0, s9, a6
                  slli         t5, a0, 9
                  ori          t4, s7, -1644
                  sll          t5, s5, t5
                  slti         s2, s4, -183
                  sll          ra, s10, a1
                  ori          a7, t4, 850
                  sll          a3, s0, tp
                  andi         a3, t5, 907
                  srli         t3, s4, 8
                  srai         t0, a2, 2
                  nop
                  srl          s6, s4, s0
                  or           s4, t6, sp
                  sll          t4, a1, t6
                  sltu         gp, gp, a0
                  xori         sp, s6, 1300
                  slt          zero, s9, t1
                  sltu         s0, t6, tp
                  slli         t6, zero, 5
                  srl          s2, t3, sp
                  slli         s10, gp, 21
                  xor          s9, a3, s5
                  nop
                  slti         t3, t4, -351
                  sll          s0, s5, s1
                  xori         s3, t4, -1704
                  add          zero, t5, t2
                  sub          s2, s3, t4
                  xor          a1, sp, a3
                  srai         s9, gp, 10
                  and          s6, s3, a3
                  slti         s11, s11, -600
                  lui          a7, 217315
                  sltiu        a6, s6, -1831
                  xor          t4, a7, t1
                  slti         t5, a2, -936
                  srl          a6, zero, t6
                  and          sp, tp, t4
                  sub          s2, t1, s6
                  add          t3, s4, sp
                  lui          tp, 727340
                  slli         s3, tp, 31
                  srai         tp, s0, 8
                  lui          t6, 717691
                  auipc        s10, 396185
                  slli         t6, s9, 22
                  sra          ra, gp, a5
                  slli         s6, t2, 7
                  ori          a1, a4, -312
                  auipc        s4, 462582
                  addi         s11, s6, -1341
                  xor          a6, s1, a2
                  ori          t6, s3, -1983
                  sltu         a0, s4, a7
                  xori         s4, ra, -597
                  sra          s4, a1, s11
                  srli         tp, s0, 15
                  sltu         s2, tp, s7
                  and          a2, s0, a0
                  sll          s11, sp, tp
                  sltiu        s11, t2, 278
                  sub          a4, a7, t4
                  sltu         t3, s8, s0
                  xori         s4, t2, 277
                  sll          a6, a0, t0
                  auipc        zero, 756358
                  and          a6, s0, s5
                  andi         a3, s5, 34
                  sra          ra, t6, s10
                  srl          a4, a7, t6
                  ori          a6, s7, 379
                  sltu         t4, a0, gp
                  auipc        t5, 395987
                  srli         s1, s6, 14
                  sll          s11, s10, t6
                  or           s4, s7, t6
                  sll          s3, a0, s1
                  xori         tp, s4, -1448
                  sub          s7, a0, s8
                  andi         t2, s1, 268
                  auipc        sp, 718674
                  nop
                  ori          tp, a5, -1742
                  sltiu        ra, a2, -1866
                  srl          t3, s1, s4
                  slli         t2, ra, 11
                  ori          sp, a4, -1877
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_30
                  li           s2, 0x0
                  li           t6, 0x80000000
                  li           ra, 0x8e1a91bc
                  li           sp, 0x0
                  li           t2, 0xa7c4525f
                  li           s8, 0x0
                  li           a4, 0x0
                  li           a0, 0x80000000
                  li           t3, 0x80000000
                  addi         s4, t6, 1461
                  auipc        ra, 732977
                  auipc        s2, 485052
                  nop
                  add          t2, t6, s8
                  add          a0, s4, a4
                  lui          s8, 629987
                  lui          t6, 1046672
                  sub          s8, s4, t6
                  lui          sp, 480096
                  add          sp, a0, ra
                  add          t3, a0, ra
                  nop
                  sub          s4, t6, a4
                  auipc        t2, 686118
                  lui          sp, 232139
                  addi         s4, t6, -1551
                  sub          sp, sp, s8
                  add          t3, s4, t6
                  nop #end riscv_int_numeric_corner_stream_30
                  srl          a0, a0, a7
                  nop
                  add          s6, ra, t4
                  nop
                  xor          s0, s2, t6
                  srli         a2, s0, 8
                  addi         t5, t4, -244
                  addi         tp, s3, -1523
                  slli         a2, gp, 26
                  or           ra, s4, a2
                  auipc        sp, 11501
                  srli         a0, s11, 6
                  xor          t2, t0, a3
                  addi         tp, t1, -1714
                  xor          s7, a2, s7
                  lui          a1, 628821
                  slt          a1, ra, a7
                  sltu         s10, s2, a5
                  sltiu        gp, s8, -1095
                  sltiu        t6, s7, -79
                  add          s4, s5, a5
                  sll          t6, t0, a6
                  lui          a7, 484249
                  sltu         zero, s0, sp
                  sll          t4, t1, s3
                  sltu         s2, a2, t5
                  nop
                  and          a6, t0, tp
                  addi         t0, a6, -1722
                  nop
                  sltu         s4, s5, tp
                  xor          t3, t1, t3
                  slt          s7, sp, a7
                  and          s3, s4, s6
                  slt          a7, a3, a1
                  add          t4, t4, s0
                  srli         gp, a3, 12
                  nop
                  or           s3, ra, a4
                  slli         a6, t6, 4
                  addi         s2, t1, 1353
                  lui          a4, 1034441
                  slli         t3, t2, 1
                  nop
                  andi         s10, s3, 55
                  srai         s7, a2, 14
                  slt          a0, a6, s8
                  slt          a6, s1, s11
                  xori         zero, t5, -832
                  sub          tp, t6, t0
                  sll          s2, a0, s7
                  sub          t0, s1, a0
                  xor          s3, s3, s7
                  addi         tp, a4, 55
                  slli         t0, a7, 8
                  xor          s2, s8, s8
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_34
                  li           s10, 0xffffffff
                  li           a1, 0x80000000
                  li           s0, 0x40ad541
                  li           a4, 0x0
                  li           t6, 0xffffffff
                  li           ra, 0xffffffff
                  li           s4, 0x80000000
                  li           t5, 0xffffffff
                  li           s3, 0x0
                  add          a4, s0, t5
                  add          s4, s4, t6
                  nop
                  addi         s7, t5, 1522
                  auipc        a1, 200426
                  lui          t5, 398949
                  add          s10, s10, s4
                  addi         s7, s7, -118
                  auipc        s10, 172181
                  add          a4, a1, t6
                  lui          a1, 153141
                  auipc        a4, 182614
                  lui          s10, 13912
                  auipc        a1, 156485
                  lui          t6, 43640
                  add          t5, t6, t5
                  nop
                  lui          a4, 628401
                  add          s4, s3, s4
                  addi         ra, s7, -1218
                  addi         a4, s7, -1788
                  sub          a4, t5, s10
                  auipc        s0, 745752
                  nop
                  lui          s0, 395885 #end riscv_int_numeric_corner_stream_34
                  sltiu        s6, a1, -1065
                  sra          tp, s11, t2
                  addi         a3, t2, -1277
                  ori          ra, t3, 1449
                  slt          a6, tp, s8
                  sub          a1, t2, s2
                  sra          t0, s7, a3
                  xori         t4, tp, 2044
                  and          a6, s6, a7
                  srli         s9, s11, 6
                  sub          s9, ra, s7
                  srai         gp, t1, 16
                  ori          s1, s2, 1428
                  srai         s6, s1, 6
                  andi         gp, a7, 56
                  slti         s10, s7, -1743
                  and          s2, t1, ra
                  sltu         gp, a0, gp
                  or           s8, s2, a5
                  sll          sp, a0, s4
                  ori          ra, t5, -1197
                  srli         s11, t4, 19
                  xor          ra, s9, sp
                  add          t5, a3, t4
                  nop
                  and          s1, s8, s7
                  lui          s3, 55595
                  slli         s7, a6, 13
                  auipc        a1, 214274
                  srl          a7, a3, a7
                  add          s8, a3, s2
                  xori         t4, s9, -1107
                  srl          sp, t4, a0
                  xori         s2, s5, 1580
                  lui          tp, 194071
                  srai         a0, a6, 9
                  andi         s11, sp, -730
                  andi         gp, a4, -1100
                  sltiu        s3, s6, 262
                  srl          sp, s4, s4
                  srai         t6, s10, 9
                  addi         s4, t4, 702
                  srli         s2, s0, 4
                  srai         s9, s7, 27
                  slt          t0, sp, a2
                  lui          s6, 726620
                  nop
                  add          s11, s7, s8
                  slti         t3, t6, -1464
                  sra          t4, ra, s5
                  andi         s7, a7, 127
                  sltiu        gp, s4, 322
                  or           s3, t4, a7
                  ori          s6, sp, -884
                  or           t5, t3, s1
                  sll          a1, s4, t6
                  sll          s4, gp, t3
                  ori          a2, tp, 452
                  srl          t4, s6, s1
                  srli         s9, s3, 6
                  addi         t6, t6, 1435
                  srai         t3, a7, 2
                  and          t0, a1, a1
                  xor          a3, a2, s6
                  slt          s11, s1, s8
                  andi         ra, a3, -1865
                  nop
                  auipc        t3, 983452
                  slt          s3, a2, s3
                  andi         a6, s0, 732
                  lui          a7, 928031
                  ori          sp, a1, -1247
                  ori          tp, s7, -24
                  xori         s6, s10, 1579
                  xor          a1, a2, s5
                  nop
                  sll          gp, t4, zero
                  xori         zero, t2, -354
                  srai         s0, zero, 1
                  slt          s7, a6, a7
                  sltiu        t6, zero, -463
                  add          a3, s6, s11
                  auipc        a4, 722977
                  auipc        sp, 833984
                  srl          t5, s5, t6
                  xor          s7, a7, a3
                  xori         s11, a6, 1285
                  srli         s0, a1, 30
                  ori          t4, s5, 570
                  sll          a2, gp, s8
                  add          t6, a0, a4
                  xori         t0, t1, -489
                  auipc        t0, 575924
                  and          zero, a0, a5
                  sra          sp, s6, s6
                  lui          a3, 81531
                  sltu         s0, gp, t6
                  lui          t5, 718225
                  lui          t6, 1035251
                  sltu         t2, s3, s8
                  srli         gp, a4, 14
                  sub          sp, a7, t0
                  srai         a6, s3, 20
                  andi         s9, t5, 701
                  or           a6, ra, s4
                  addi         t3, s2, 698
                  ori          ra, tp, -222
                  slt          s0, a2, t0
                  slli         t3, t6, 31
                  srai         tp, s1, 0
                  lui          gp, 938497
                  sra          t0, s6, s0
                  slti         a3, a5, -2
                  srli         s4, s1, 8
                  add          s0, t3, s1
                  lui          gp, 1040800
                  xori         s3, a1, -1887
                  and          tp, a7, a7
                  nop
                  srai         s11, t0, 19
                  andi         t2, a5, -273
                  addi         a3, t3, -186
                  auipc        a1, 114700
                  auipc        sp, 340292
                  sra          s10, t2, s9
                  and          s0, s5, tp
                  srai         s7, s8, 10
                  slti         s11, s11, -1332
                  andi         a3, a7, -1694
                  add          t3, s3, zero
                  or           s0, ra, t0
                  srli         s6, a5, 6
                  xor          s4, tp, s7
                  xori         t2, s1, 49
                  sltu         a6, t3, t0
                  ori          s1, s5, -178
                  slti         ra, s5, 766
                  slti         zero, gp, 1948
                  slti         a4, a7, -1417
                  slt          sp, t4, zero
                  sra          s6, s6, sp
                  or           a2, sp, s4
                  addi         a2, a7, 67
                  sltu         a0, a2, s9
                  sltu         tp, s11, s9
                  auipc        tp, 355106
                  andi         a7, t2, 698
                  ori          t2, s9, 1406
                  nop
                  sub          a4, a5, t4
                  sra          s7, s1, s3
                  sltu         sp, t1, a6
                  auipc        s2, 833746
                  sltiu        zero, zero, -424
                  xor          s6, s11, gp
                  xor          t6, t3, t1
                  xori         s7, a6, -1283
                  srli         a4, t1, 17
                  or           s3, ra, s0
                  sltiu        tp, s11, -891
                  and          t5, tp, t6
                  addi         s1, a3, -1596
                  slti         s2, s1, -2034
                  slt          s1, a1, t6
                  slt          s2, a0, s2
                  slti         t5, s2, -1533
                  srli         a7, a3, 0
                  srai         s3, s3, 7
                  sltiu        s10, s11, -18
                  andi         a7, gp, 1565
                  slli         s6, s4, 21
                  sltiu        s8, a3, 876
                  sll          s3, sp, a6
                  xori         t3, t3, -1682
                  or           a7, t6, s8
                  sub          a3, s7, a4
                  or           t6, s1, t1
                  addi         a0, t6, 557
                  sll          s10, t0, a1
                  auipc        a4, 458911
                  srli         s3, s9, 17
                  sub          s8, zero, ra
                  slli         s7, a7, 28
                  addi         s2, s7, -1551
                  slli         t6, sp, 30
                  slt          sp, t4, t2
                  sltu         t5, s4, t6
                  sltu         tp, s4, s0
                  srli         t5, s6, 13
                  and          t6, s1, t5
                  sll          a2, sp, s4
                  or           s2, t0, s6
                  or           a7, t6, t5
                  sra          tp, t4, t6
                  srl          a4, s7, a5
                  slli         t3, t3, 0
                  and          ra, a4, t6
                  sltiu        a1, t6, -937
                  srai         zero, gp, 11
                  xor          a1, s1, s2
                  slt          s8, ra, s11
                  nop
                  or           s6, s0, t5
                  lui          s8, 193260
                  lui          s0, 1005741
                  nop
                  sltiu        s0, s6, 1074
                  addi         t0, a1, 641
                  slli         a0, s8, 1
                  add          t6, a0, ra
                  srli         t4, s7, 24
                  auipc        ra, 186178
                  slli         s8, s10, 12
                  add          t6, s10, a2
                  auipc        zero, 585918
                  sra          t3, a3, t2
                  xor          a2, a4, s1
                  andi         tp, a7, -1204
                  sll          a0, a1, t3
                  ori          s9, s4, 177
                  nop
                  sltiu        sp, s1, -1816
                  andi         s2, s9, 961
                  and          t4, s4, t5
                  xor          a1, a1, t4
                  add          a2, a0, a7
                  slti         zero, s1, 617
                  add          zero, sp, s5
                  lui          s11, 801823
                  andi         a1, gp, -93
                  sltu         s1, s9, ra
                  srli         s3, s11, 13
                  sltiu        sp, t5, -108
                  and          s11, t3, s11
                  slt          s8, s11, a3
                  add          a4, s2, t2
                  sub          ra, s3, t3
                  sub          zero, t0, a6
                  lui          a7, 411516
                  slt          t2, s11, t0
                  and          a4, sp, s4
                  addi         a6, a0, 1275
                  srai         zero, s11, 22
                  or           s3, a7, a6
                  xori         sp, a6, 2013
                  srl          a6, s7, s11
                  and          t5, tp, a5
                  srai         tp, t6, 30
                  sll          a2, s7, t3
                  ori          s10, s0, 520
                  auipc        gp, 340708
                  addi         a7, t0, -1762
                  sra          t6, s10, a3
                  slli         s11, gp, 5
                  auipc        a6, 983254
                  lui          t3, 487303
                  ori          a0, t4, -308
                  add          s7, gp, s11
                  nop
                  add          s10, t3, s0
                  sll          a4, ra, s1
                  sra          a4, s3, a0
                  slti         s1, s10, 1242
                  xori         t5, a7, 1860
                  or           s6, a3, s9
                  add          a1, s4, t5
                  auipc        ra, 834126
                  srai         s7, s2, 14
                  addi         zero, s3, 946
                  add          ra, a4, sp
                  and          t4, s6, t6
                  sltiu        t3, s4, -1090
                  auipc        s11, 238221
                  sll          t5, t1, a7
                  srai         s10, zero, 8
                  sltu         a3, a4, a2
                  addi         t4, s8, 806
                  sll          s7, t1, s11
                  srli         t5, s2, 17
                  addi         s1, a5, 404
                  slti         s7, tp, -1649
                  sltiu        t6, a1, 1842
                  ori          zero, s6, -1673
                  ori          a3, t5, 669
                  sll          ra, t5, s6
                  add          s0, a2, s0
                  srli         s4, a4, 13
                  sltu         gp, s5, s0
                  srl          s3, t2, a0
                  slti         t0, t6, -1837
                  andi         s6, t2, -505
                  sll          a7, a3, a1
                  xori         zero, t0, -253
                  auipc        s1, 510711
                  add          t4, a7, a1
                  sub          a4, s6, t3
                  srai         ra, a6, 14
                  andi         s0, s3, 528
                  xori         s7, t0, 1475
                  slt          a3, t5, ra
                  sub          sp, s7, s6
                  sub          s0, s7, t5
                  ori          a7, tp, -456
                  or           s6, t3, t2
                  auipc        s11, 438253
                  sltiu        t2, sp, -1571
                  srai         t0, s8, 17
                  slti         s0, a0, -565
                  slt          s9, s11, s5
                  sltu         t3, a5, t6
                  sltiu        s10, ra, -562
                  addi         s10, a2, -293
                  auipc        t2, 383572
                  nop
                  add          zero, s1, a3
                  srai         gp, ra, 17
                  srl          a1, a5, a0
                  add          s4, a5, s5
                  slti         gp, t2, 1961
                  sub          gp, a6, a6
                  sltiu        zero, a1, -1997
                  add          a2, s5, t5
                  srli         a6, t4, 11
                  sub          t6, tp, a5
                  andi         a0, s2, 1206
                  lui          a3, 72936
                  or           t3, t0, s0
                  sra          s7, a2, t1
                  or           t4, tp, t0
                  sltiu        a7, s3, 533
                  xor          s8, a1, ra
                  lui          s2, 858997
                  lui          s3, 738717
                  sra          a6, a0, s1
                  sra          s3, t2, tp
                  ori          s11, t3, 364
                  sub          sp, t0, sp
                  lui          t2, 986573
                  ori          tp, t2, -1421
                  or           ra, t2, t1
                  ori          t0, s9, -976
                  lui          s7, 907260
                  srai         a0, a1, 19
                  sra          s6, s3, s7
                  or           sp, s9, zero
                  slti         a7, s11, 1569
                  xori         s6, s1, 175
                  xor          a7, a5, s0
                  srl          s7, t2, a5
                  slti         a2, t6, -285
                  andi         s6, s1, -1423
                  slt          sp, tp, t1
                  slt          tp, a3, s5
                  slli         a2, s8, 28
                  andi         t0, t2, -1985
                  sub          a3, s0, t5
                  srli         s0, t4, 22
                  sltiu        s10, s4, -795
                  lui          t4, 701870
                  xor          a6, t1, s10
                  srli         s7, ra, 15
                  auipc        s7, 860219
                  auipc        s11, 522851
                  lui          t5, 656506
                  andi         s0, t1, -583
                  slti         t6, a1, -1239
                  slt          t6, a5, t5
                  xori         s9, t4, 960
                  sub          s8, a5, s10
                  sub          t6, s11, s8
                  ori          s4, zero, 1546
                  slt          a4, t3, s9
                  nop
                  sra          s7, s6, ra
                  and          t5, a3, s7
                  slt          a7, gp, s11
                  sub          t0, t6, a2
                  or           s9, s6, t5
                  srl          s1, a5, s7
                  sra          a4, a0, s1
                  or           a7, t6, s2
                  slt          s1, a3, a7
                  or           s9, a3, t0
                  addi         t2, s10, 821
                  slt          t3, tp, t5
                  addi         a7, sp, 1296
                  xor          s2, a0, t6
                  sll          a7, s6, ra
                  lui          a4, 502559
                  sltu         t2, t3, t4
                  ori          a0, t5, -537
                  slli         s1, t4, 21
                  addi         a1, a7, -989
                  addi         s10, a2, -780
                  sltiu        s11, a5, 1747
                  lui          s0, 668454
                  sltu         t0, a6, a2
                  slti         zero, a3, 391
                  xor          t4, a2, zero
                  srli         s6, t6, 9
                  sll          s1, a2, a1
                  andi         s2, a6, 607
                  xori         a4, a6, -327
                  nop
                  sltu         s11, a2, a6
                  slt          t6, s3, s9
                  xori         s7, a5, 1265
                  slti         a3, a7, -790
                  xor          s10, s2, ra
                  and          s1, s8, t5
                  xori         s11, sp, 81
                  sll          s9, a1, a2
                  or           zero, s4, s8
                  srl          s2, sp, gp
                  auipc        s4, 699483
                  andi         ra, s9, -350
                  or           a4, s2, a7
                  srai         ra, a1, 9
                  or           s9, s5, ra
                  xor          a1, t2, t2
                  auipc        t4, 361699
                  sra          s9, s10, s6
                  slt          ra, t2, tp
                  slti         s10, a4, -1256
                  addi         gp, t5, -1324
                  sub          s7, t5, t5
                  auipc        tp, 658459
                  sltu         t4, tp, s3
                  srai         t2, s6, 16
                  srli         s1, gp, 28
                  andi         a0, t4, 581
                  auipc        t0, 781615
                  sltu         s10, s10, a3
                  sub          a4, s2, a0
                  and          s3, tp, t4
                  ori          a4, a0, 1201
                  sll          t6, s2, a0
                  sltiu        sp, t4, -1614
                  addi         t2, s3, 2029
                  lui          t3, 368266
                  auipc        t2, 44719
                  srl          s7, t1, t0
                  sltu         t6, s2, s7
                  srli         s3, s11, 6
                  sll          a0, s1, t2
                  sltu         s1, s8, s4
                  srai         s3, a2, 9
                  add          s2, s7, a7
                  sltu         s7, s1, t4
                  sltiu        a1, t4, -2019
                  sra          tp, t6, t3
                  slt          t3, a1, s5
                  sltiu        t5, s7, -1310
                  auipc        s3, 343090
                  xori         ra, a7, 606
                  srli         s7, sp, 11
                  slti         a4, a7, -1589
                  slt          s11, a3, a3
                  nop
                  sra          t6, a3, zero
                  xori         gp, s4, -318
                  sll          sp, t0, t1
                  and          s7, a5, t3
                  andi         s3, a7, -1816
                  andi         t3, s6, -2026
                  slli         s11, a4, 31
                  ori          s10, a5, 816
                  slt          a6, s8, t2
                  sub          t2, s1, t4
                  slli         s11, s1, 31
                  auipc        s6, 954936
                  ori          t4, t3, 765
                  sra          s1, s11, s2
                  addi         s2, ra, -518
                  slli         t3, a7, 10
                  xor          a1, s6, a5
                  srai         s7, a4, 3
                  xor          a3, t5, s3
                  and          t4, t6, s7
                  srli         s2, t6, 3
                  xori         t3, a0, 1895
                  andi         a2, a3, 847
                  and          s9, a1, s1
                  srli         s1, s9, 8
                  slti         s10, ra, -563
                  and          s10, s2, s4
                  ori          t0, tp, 1344
                  sll          s9, t1, tp
                  slt          s10, s2, ra
                  nop
                  or           s3, a2, s0
                  andi         sp, s4, 1472
                  addi         ra, tp, 748
                  sra          t4, a3, s2
                  xori         s6, s2, -917
                  sra          gp, tp, ra
                  and          s1, t0, s4
                  nop
                  add          ra, s11, t2
                  add          s3, a5, t0
                  auipc        s8, 636656
                  sra          s11, t1, ra
                  add          zero, ra, s7
                  andi         s2, s7, 375
                  sra          a0, zero, t0
                  srli         t3, s7, 22
                  lui          s4, 717858
                  ori          s10, t5, 459
                  auipc        t5, 572412
                  srl          s4, a6, tp
                  srl          gp, t5, s8
                  add          a2, s2, ra
                  sub          a1, a4, s6
                  sltu         t5, t6, s2
                  slt          t3, s5, gp
                  slli         t0, s0, 15
                  sub          s7, zero, a7
                  xori         s4, a3, 1546
                  auipc        s4, 266223
                  ori          a7, a2, -1793
                  addi         tp, s1, 1340
                  sra          a6, s0, a4
                  slti         t3, t0, -514
                  and          sp, zero, s7
                  slli         gp, s3, 0
                  srli         t6, s5, 20
                  auipc        a0, 425149
                  sub          tp, s9, t5
                  xori         zero, s8, -785
                  lui          a1, 706388
                  sra          s3, s10, s10
                  srai         t2, s2, 30
                  sltu         s1, s9, s1
                  andi         ra, zero, 353
                  addi         t6, s5, -796
                  slti         t0, s5, 8
                  srli         t6, t1, 0
                  sltiu        tp, t1, -1462
                  and          s9, sp, t5
                  srai         s10, s9, 22
                  srl          zero, s4, a1
                  sltu         t0, t5, s11
                  xori         sp, s5, 628
                  xori         a7, gp, 1086
                  andi         a6, t5, 1447
                  sra          a2, a2, a7
                  auipc        s10, 825938
                  add          a2, s5, a2
                  or           a1, s0, a5
                  nop
                  addi         tp, tp, 1101
                  xor          s10, a3, a2
                  slt          s3, zero, a4
                  auipc        s8, 905640
                  slt          a6, s7, a0
                  sltu         t2, gp, tp
                  sltu         s10, s3, a0
                  sub          t6, t6, t4
                  ori          tp, t6, -879
                  slli         t5, t3, 30
                  srli         s9, ra, 13
                  nop
                  sltu         s0, s11, s11
                  xor          zero, t4, s9
                  and          gp, a4, t3
                  add          s10, s3, t5
                  slli         a0, s11, 14
                  auipc        s1, 816894
                  and          ra, t6, s6
                  or           s8, t3, a5
                  sub          zero, s1, t1
                  sltu         s9, s9, zero
                  slti         a3, t1, 1802
                  ori          a6, sp, -739
                  slli         s6, a7, 24
                  sra          s0, s0, s8
                  andi         t5, s3, 1437
                  xor          t2, a4, sp
                  srai         s4, a1, 27
                  sltu         a3, s2, a1
                  slli         tp, tp, 0
                  srli         gp, t0, 18
                  nop
                  or           zero, a0, s5
                  sll          s10, gp, t2
                  srli         s8, gp, 18
                  slli         s4, a7, 22
                  or           sp, t1, a5
                  srai         s10, gp, 3
                  add          a2, t1, s9
                  srai         a3, a7, 26
                  sll          a7, s11, a2
                  xor          s7, a2, gp
                  sltiu        a2, s2, -1895
                  srli         s4, s6, 1
                  slt          s6, s9, gp
                  srl          t2, s7, gp
                  xori         a2, t5, 1561
                  addi         s0, s5, -1859
                  and          tp, a3, a4
                  lui          s0, 582866
                  srli         a0, a0, 9
                  sub          t0, a3, s0
                  sub          s2, zero, s0
                  ori          a1, zero, -1822
                  nop
                  xor          s7, t6, s11
                  sltu         s2, s7, t4
                  add          s8, s4, a6
                  xor          t2, a2, a5
                  addi         t3, a7, 93
                  sltu         gp, s9, s6
                  srli         zero, s7, 27
                  andi         a4, s1, -154
                  sltiu        s1, s2, 251
                  srai         a0, t0, 13
                  xor          zero, s3, s8
                  sub          t3, s8, s11
                  andi         t4, t4, 341
                  auipc        t3, 103173
                  sra          s11, s7, t3
                  sll          zero, s11, a7
                  sub          t2, tp, ra
                  xor          t5, s1, s1
                  srli         s0, s0, 6
                  sll          zero, a3, s4
                  xor          s2, tp, a2
                  auipc        s3, 128300
                  andi         s11, a1, 1408
                  auipc        t0, 872845
                  lui          gp, 994823
                  srli         t2, s7, 31
                  nop
                  slt          gp, s11, gp
                  slt          zero, a4, t0
                  xori         s0, ra, -1562
                  or           s9, t0, t6
                  lui          s3, 326987
                  srl          s11, tp, t6
                  lui          s3, 1040718
                  or           t5, s3, ra
                  auipc        s3, 107036
                  sltiu        s3, sp, -462
                  andi         t2, a7, 504
                  sra          t4, s1, t0
                  sll          t5, t1, s3
                  auipc        a7, 467439
                  and          s8, s9, s9
                  sltu         s6, t6, ra
                  srl          s2, a2, s11
                  addi         t4, zero, 407
                  sub          a3, gp, s10
                  sra          t2, t6, s0
                  lui          s4, 516593
                  srli         s0, s5, 31
                  ori          ra, a0, 453
                  xor          s4, t1, tp
                  add          t2, t3, s8
                  ori          s4, a1, -214
                  slli         s6, a1, 18
                  sltu         zero, s6, s6
                  nop
                  slti         s9, a4, -158
                  auipc        zero, 962350
                  or           s6, a5, t2
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_36
                  li           t3, 0xac4d6bd2
                  li           s11, 0xffffffff
                  li           a3, 0x80000000
                  li           a6, 0x84c473ab
                  li           s7, 0xffffffff
                  li           s0, 0xffffffff
                  li           a0, 0x0
                  li           t0, 0x80000000
                  li           t2, 0x72855d20
                  lui          s0, 589312
                  sub          a0, s11, s7
                  lui          t3, 74733
                  lui          a0, 143577
                  sub          t0, t0, t3
                  sub          a6, t3, s11
                  add          s0, a2, t0
                  addi         s7, t0, 1175
                  add          s11, t2, a2
                  lui          t0, 957651
                  sub          a3, s7, a2
                  sub          t2, a6, t3
                  nop
                  addi         s7, t2, 801
                  addi         s0, a0, 355
                  add          s0, s7, a0
                  nop
                  addi         a6, s11, -791 #end riscv_int_numeric_corner_stream_36
                  nop
                  sub          a3, t3, t3
                  slti         t2, a7, -1605
                  sltiu        s2, a2, -511
                  add          s3, t5, zero
                  xor          zero, a2, a4
                  or           t0, t3, ra
                  sltu         s7, a3, s9
                  srl          s9, s8, t5
                  slti         a1, s5, -511
                  nop
                  sub          a3, s9, zero
                  andi         t2, t6, 312
                  sll          s8, s1, a4
                  andi         a3, s7, 268
                  sra          a0, sp, t6
                  lui          t0, 266356
                  sll          a2, t4, s10
                  nop
                  srai         t0, s2, 14
                  addi         s7, t4, 563
                  lui          gp, 483504
                  srli         ra, a1, 10
                  srl          t3, t6, a4
                  srl          s7, s6, s0
                  nop
                  sltiu        a1, s10, -1031
                  auipc        s3, 7455
                  sll          s4, s11, s0
                  sltu         s6, a4, a5
                  slti         t4, s5, 1423
                  xor          t3, a0, t1
                  sub          s11, a7, s8
                  ori          t0, a5, 6
                  lui          t6, 174238
                  lui          a1, 672928
                  srl          tp, s8, a5
                  slt          t6, a3, s1
                  lui          tp, 204707
                  srli         a2, s8, 18
                  lui          s1, 250125
                  srai         t5, a6, 30
                  nop
                  xori         s8, s0, -1566
                  auipc        s9, 60135
                  sub          t0, zero, s11
                  sll          s9, t4, s6
                  slt          s2, t3, s1
                  slt          s11, s4, a1
                  andi         a2, s4, -177
                  slli         a3, a2, 9
                  and          s11, t4, s8
                  sltu         a3, gp, s7
                  sll          a7, a1, t1
                  sltu         s3, s6, s10
                  ori          s10, s5, -1597
                  addi         s9, s8, 1067
                  sll          gp, t2, a6
                  sltu         t5, s0, s8
                  xor          t4, s5, s9
                  xori         t5, s4, 1180
                  addi         a1, a5, 1028
                  addi         a2, s2, -1047
                  auipc        a0, 747926
                  and          s4, s6, s8
                  add          s8, s7, a4
                  xori         a1, a7, -1386
                  auipc        t5, 993940
                  ori          a4, a0, -1272
                  srli         a1, tp, 8
                  slli         a7, s4, 31
                  xori         s8, s7, 1715
                  lui          s7, 414320
                  sltu         ra, a0, t4
                  srai         t4, tp, 10
                  srl          sp, a5, s0
                  lui          a0, 770347
                  sll          s4, s4, t5
                  xori         s7, a6, -1480
                  sltiu        s1, s2, 484
                  ori          s1, zero, -1898
                  sltu         sp, s7, a6
                  sra          ra, a2, t5
                  ori          s11, s4, -1511
                  addi         tp, zero, -1753
                  and          s8, a3, s9
                  or           s3, ra, s0
                  or           s0, a6, a7
                  lui          s0, 763000
                  sltiu        a4, t3, -632
                  andi         s8, s10, -1202
                  or           s4, s9, s10
                  sltiu        a3, s0, -1302
                  srli         s7, t1, 2
                  auipc        s3, 816140
                  slti         a4, a4, -597
                  lui          s8, 351549
                  xori         s1, t1, 295
                  sll          a0, a6, a0
                  sll          tp, s7, s3
                  auipc        a0, 487740
                  sll          s3, s3, s1
                  nop
                  slti         gp, t6, 1474
                  nop
                  andi         a4, a0, -551
                  xor          t3, a1, s9
                  add          a7, a3, s3
                  srai         s7, t2, 11
                  xori         t5, a4, -107
                  and          s8, sp, s7
                  sub          ra, a0, ra
                  sll          s2, a2, s3
                  nop
                  lui          s10, 154860
                  slti         s2, tp, -530
                  sra          a1, t2, a3
                  xori         s3, s9, 883
                  sra          a4, s3, s4
                  andi         t2, a7, -1249
                  or           a2, s9, t3
                  sra          t3, t0, s2
                  andi         a0, sp, -670
                  sltiu        a6, s2, 1443
                  slli         a0, a0, 25
                  lui          s7, 264457
                  srai         zero, zero, 7
                  slt          gp, s1, s4
                  slt          t2, ra, s8
                  nop
                  lui          sp, 313763
                  sra          zero, t4, tp
                  sub          ra, a4, s10
                  xori         s9, ra, -1338
                  or           t4, t6, a6
                  add          a3, a6, a0
                  or           t3, s1, a0
                  sll          s9, s4, s6
                  sltu         s6, a5, a0
                  nop
                  or           s11, t0, s2
                  xor          s11, t1, t1
                  srai         a1, tp, 19
                  xor          s8, zero, t3
                  or           ra, a2, t5
                  xori         s7, a4, -1801
                  srli         a6, s6, 17
                  slli         ra, t4, 15
                  srl          gp, s6, s10
                  xori         tp, a7, -915
                  andi         a0, s3, -1764
                  xor          s10, a5, a4
                  sub          a2, s11, s9
                  sra          s8, t1, s9
                  srli         a2, s3, 19
                  sltu         s8, a3, s5
                  sra          s8, a0, a0
                  slt          s6, t4, tp
                  sra          tp, a0, s10
                  or           s8, s9, a5
                  add          tp, t4, a7
                  slli         s9, s6, 9
                  auipc        sp, 276120
                  slti         t4, a5, -222
                  slli         a7, sp, 21
                  sltu         a4, s8, s7
                  or           s1, s11, t2
                  or           a7, zero, s10
                  xor          s7, gp, sp
                  sltiu        a6, gp, 863
                  or           s10, t6, t4
                  add          s2, t0, a2
                  nop
                  slti         s7, s8, 1227
                  or           t3, a3, s7
                  sltiu        a1, s3, 1319
                  add          s1, t6, t0
                  srai         t6, s1, 4
                  sll          a3, s1, s8
                  slli         zero, t3, 30
                  ori          t2, a7, -1923
                  addi         sp, s11, -1333
                  srl          s2, sp, s2
                  xori         s2, a0, 1331
                  sll          t3, a0, t6
                  srl          t5, t6, t3
                  srl          s8, a2, a7
                  nop
                  andi         a1, s1, 1314
                  sra          a2, t5, a3
                  xori         a6, t6, 146
                  xori         t6, s8, 1664
                  sltiu        s9, a3, -43
                  srl          t2, a4, s5
                  slti         t3, s9, -1742
                  and          t5, t3, gp
                  srl          s2, s5, gp
                  addi         s7, a0, 956
                  add          t0, a2, s9
                  slt          a1, s10, s6
                  auipc        s2, 445005
                  andi         a4, s0, 1964
                  srai         ra, s0, 24
                  nop
                  sltiu        s11, t5, -1916
                  xori         a1, s4, -1126
                  auipc        s11, 520612
                  slti         t4, a7, -913
                  lui          s2, 113464
                  sra          s11, t1, s2
                  sltiu        tp, s9, -948
                  xori         t0, s3, 1912
                  or           a3, t5, s2
                  sll          ra, t3, t6
                  slli         a3, s1, 31
                  andi         s9, a4, -1059
                  auipc        s7, 492062
                  nop
                  slli         t6, s4, 21
                  andi         t5, s7, -815
                  auipc        s8, 1019924
                  addi         s3, a3, -127
                  sltiu        t3, s9, -954
                  slt          t2, tp, s6
                  auipc        s4, 983867
                  auipc        ra, 29878
                  slti         s2, s9, -1311
                  xori         s6, a4, 564
                  slt          a4, a1, s2
                  slt          s1, s1, t2
                  sll          s3, a0, s9
                  ori          s6, s0, -1022
                  and          s8, a2, t1
                  sub          s2, tp, s1
                  slli         t0, s3, 30
                  sra          s8, t3, t5
                  srli         gp, a5, 11
                  and          s7, a6, s11
                  sll          s8, zero, zero
                  sub          a2, a7, a5
                  ori          a2, s4, 695
                  sltiu        a4, t0, -1474
                  or           s1, s5, a4
                  xor          a7, t0, t3
                  sltiu        a2, gp, -807
                  sra          t4, gp, s4
                  sub          a4, tp, t4
                  ori          s7, s7, 903
                  sll          a7, s5, a5
                  ori          a1, a1, 1716
                  add          s7, a3, s9
                  add          t2, a4, s8
                  and          s3, s8, ra
                  andi         t0, s2, 378
                  nop
                  slti         s10, s10, -1503
                  sub          s9, s5, s3
                  and          s9, s5, a1
                  sltu         s0, a1, zero
                  sltiu        t0, tp, -1022
                  xor          s8, s11, a6
                  slli         a2, t3, 3
                  and          tp, t4, s4
                  slti         s3, s3, -1113
                  andi         s6, t4, 999
                  slli         zero, a7, 19
                  andi         a0, tp, -1331
                  nop
                  ori          a7, a7, -1615
                  sra          t2, t3, s5
                  srli         t6, a3, 6
                  nop
                  srli         a2, tp, 14
                  auipc        s7, 744818
                  xor          sp, a4, s2
                  sra          s8, a2, gp
                  xor          a1, t0, s8
                  sra          t6, s8, s8
                  nop
                  sltiu        s10, a2, -1235
                  sll          s11, s9, s9
                  sll          t6, s0, a6
                  add          t5, t4, s7
                  xori         tp, a4, 725
                  sltiu        tp, s9, -832
                  slt          s6, s2, s3
                  or           zero, a7, s9
                  sltiu        a6, tp, -360
                  slli         s1, s2, 26
                  auipc        s11, 524587
                  sltu         a2, a5, s5
                  sll          a4, a1, s2
                  sub          a0, a4, tp
                  sra          a4, t5, s8
                  nop
                  slt          s3, t5, s9
                  xori         a1, s9, -955
                  sub          t2, s5, s2
                  sltiu        s0, t3, 130
                  srl          s1, t5, t2
                  sra          s9, s0, t4
                  or           zero, a5, t4
                  sll          s10, s9, a2
                  sltu         s4, t5, s4
                  andi         t6, a1, -293
                  or           s1, t4, s1
                  lui          zero, 484209
                  li           t0, 0xdbea9c63 #start riscv_int_numeric_corner_stream_27
                  li           a0, 0xffffffff
                  li           tp, 0xffffffff
                  li           s4, 0xf2232eb2
                  li           s6, 0x4dc2270c
                  li           s0, 0xbebd8245
                  li           t2, 0x0
                  li           s9, 0xd692b04a
                  li           a7, 0x25020696
                  li           ra, 0xffffffff
                  sub          s0, a0, t2
                  addi         a0, a0, 583
                  addi         s4, s0, 306
                  sub          t0, ra, tp
                  auipc        ra, 522673
                  auipc        a7, 978106
                  auipc        s4, 80532
                  lui          a0, 918422
                  nop
                  nop
                  add          s4, t2, s9
                  addi         s6, s4, 690
                  add          s4, tp, s0
                  sub          a7, a7, t2
                  addi         a0, s6, -112
                  nop
                  auipc        tp, 415065
                  auipc        s6, 542153
                  auipc        s4, 123199
                  sub          s6, s0, s4
                  sub          tp, ra, t0
                  sub          t2, s6, s9
                  addi         t0, s4, 961
                  auipc        tp, 826457
                  sub          ra, t2, t2
                  lui          s0, 379383
                  add          s0, s4, t2 #end riscv_int_numeric_corner_stream_27
                  slli         tp, s7, 20
                  sub          zero, t4, t4
                  srl          a4, s10, sp
                  slt          s10, a2, t6
                  slti         a2, s4, -1712
                  sltiu        s6, a1, -1973
                  srl          a7, s0, gp
                  and          s3, s3, ra
                  sltiu        s0, a1, -916
                  or           t3, s4, a4
                  sra          a2, t4, s4
                  nop
                  nop
                  srl          tp, t2, a6
                  slti         a6, a2, -1692
                  sltiu        s3, s1, -2044
                  sra          t0, gp, s8
                  xori         s10, s9, 1271
                  sltiu        tp, s6, 475
                  and          t4, s4, a0
                  add          t5, zero, a5
                  slti         zero, s1, -1363
                  slli         s2, a0, 27
                  and          a7, a5, t2
                  sra          a1, a5, s6
                  sltu         t3, s9, t0
                  addi         a0, a0, -867
                  sltu         s1, s9, s8
                  ori          t6, s8, 1848
                  andi         s9, s5, 1537
                  addi         t6, a0, 1998
                  xori         a3, ra, 1248
                  srl          t2, s4, zero
                  sltiu        s10, s7, 810
                  srai         t4, s11, 16
                  sub          t0, s5, s5
                  srl          s4, a2, s9
                  add          tp, s10, s2
                  andi         a3, s5, 1625
                  srl          a6, s6, zero
                  sltu         s11, t0, a4
                  and          a2, t2, t3
                  sra          s11, s4, t0
                  srai         gp, s5, 24
                  auipc        a6, 386968
                  srai         t6, tp, 17
                  lui          s7, 814352
                  srai         s0, gp, 6
                  add          t0, gp, s0
                  sltu         tp, s6, t6
                  and          s11, s8, s10
                  ori          s9, s9, -1381
                  xor          s11, a1, a0
                  auipc        tp, 800394
                  slt          s0, t3, a3
                  ori          zero, sp, 5
                  ori          a7, s1, 1784
                  nop
                  nop
                  or           s4, s5, t5
                  sra          t6, a0, a2
                  srli         s3, a2, 17
                  xori         t4, s7, -1497
                  slti         sp, t5, 1266
                  or           s2, t3, t5
                  srl          s0, t6, t3
                  srli         t6, t3, 25
                  srai         s8, s9, 28
                  lui          s1, 538740
                  or           a3, s0, s10
                  sll          a1, s7, s11
                  nop
                  xor          a3, t6, tp
                  slt          t2, t6, gp
                  sub          s9, gp, s0
                  add          a4, s10, s11
                  srai         t2, s5, 13
                  or           s0, a2, ra
                  or           s10, s5, s2
                  sub          s7, s5, a4
                  xor          s10, t4, a6
                  slti         tp, t6, -1653
                  srai         t6, a7, 30
                  andi         a0, s7, 378
                  srli         t0, sp, 8
                  slt          s7, s6, t6
                  srl          s6, tp, s5
                  nop
                  sra          a6, ra, t2
                  add          a0, s3, s6
                  nop
                  nop
                  sltu         s6, a3, a2
                  srai         ra, s4, 0
                  xori         a7, gp, -342
                  addi         s11, a5, 869
                  auipc        a1, 82328
                  lui          t0, 682699
                  sra          zero, s2, s11
                  xori         tp, tp, 1762
                  xor          a4, t0, a2
                  addi         a6, t5, 357
                  slti         zero, s5, -1821
                  slli         s0, s11, 26
                  sra          t0, a7, a2
                  or           zero, t6, t3
                  xor          t2, s0, s5
                  srl          t0, tp, t5
                  andi         s3, t0, -1426
                  xor          s0, t2, a7
                  sra          s1, gp, t2
                  lui          a4, 986446
                  slti         t6, s2, 174
                  sltu         a7, a4, s0
                  sll          a6, t2, a4
                  lui          t0, 774840
                  srl          s9, s1, s10
                  slt          ra, t2, s6
                  slt          zero, a5, sp
                  add          s8, s5, zero
                  sltiu        s4, a0, -365
                  slt          s10, a5, a0
                  lui          zero, 629421
                  sub          ra, s3, s5
                  slli         a1, s0, 13
                  sll          t3, t4, a6
                  sll          s7, a3, t5
                  andi         t5, ra, -1166
                  srai         t2, s4, 4
                  sll          s8, a1, s9
                  slt          a3, ra, a4
                  auipc        tp, 885786
                  auipc        s11, 764210
                  srl          t3, t1, s10
                  slli         s4, s5, 12
                  add          s7, ra, t4
                  addi         t5, t2, -1138
                  xor          s3, s7, zero
                  srli         s8, a7, 19
                  auipc        s8, 13224
                  xori         t4, t2, -260
                  sra          ra, a0, s11
                  auipc        a0, 302452
                  xor          zero, tp, t5
                  slli         s8, a5, 26
                  lui          s6, 428701
                  sll          s4, s9, t4
                  nop
                  and          a2, t1, s2
                  srai         a4, s2, 7
                  srl          sp, a5, a2
                  and          a1, a2, t6
                  addi         s8, zero, 127
                  auipc        t3, 261303
                  srl          a0, s11, s3
                  sltiu        s7, a3, 1091
                  sub          t5, ra, s10
                  andi         t4, tp, 992
                  nop
                  srl          sp, a0, s8
                  nop
                  auipc        sp, 256961
                  sltiu        a2, a2, -99
                  and          s6, zero, s4
                  xor          t5, a6, s10
                  or           s11, s4, zero
                  and          a4, a5, t2
                  ori          s1, sp, 240
                  add          s7, s0, a1
                  sra          a0, a0, s9
                  nop
                  nop
                  sra          t5, s5, a2
                  nop
                  srai         a4, t3, 24
                  addi         tp, sp, 909
                  and          s1, s2, s5
                  and          zero, a5, s1
                  srai         s1, ra, 12
                  and          zero, zero, a3
                  add          t5, ra, a7
                  addi         s6, t4, -961
                  auipc        t4, 399050
                  xori         t2, s0, 646
                  addi         a4, gp, 1044
                  lui          zero, 229760
                  or           s1, s9, s2
                  andi         a2, s2, -1858
                  srai         s4, t5, 4
                  or           a3, s3, t6
                  nop
                  sra          t4, s10, sp
                  srli         t4, a6, 23
                  and          s0, gp, sp
                  sltiu        a7, sp, -1757
                  add          t3, s11, t3
                  or           t0, zero, tp
                  slt          a3, s8, a6
                  srli         ra, t6, 24
                  auipc        gp, 719181
                  nop
                  srli         s7, s10, 27
                  sltu         t4, s0, gp
                  and          a4, a5, a7
                  sll          a6, t0, a4
                  add          t6, ra, s0
                  or           a7, t5, s2
                  sltu         t3, a6, a5
                  slt          s2, s6, s6
                  add          t0, a4, a4
                  slt          s7, sp, a7
                  sltiu        a3, s10, -1597
                  slt          a4, s0, s0
                  xori         t2, ra, 1280
                  nop
                  xori         s11, a7, 296
                  nop
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           a2, 0x80000000
                  li           a6, 0x80000000
                  li           a7, 0xffffffff
                  li           s11, 0x87f49e0d
                  li           a4, 0xa887d1e7
                  li           sp, 0xb6309cd7
                  li           tp, 0x0
                  li           a1, 0x0
                  li           a3, 0x80000000
                  nop
                  nop
                  addi         a1, a7, 545
                  auipc        a6, 969159
                  add          a1, a2, s11
                  addi         s9, a7, 1930
                  nop
                  sub          a7, s11, tp
                  auipc        a4, 286807
                  lui          a7, 950733
                  add          a6, sp, a7
                  add          a2, sp, s9
                  add          sp, a7, a2
                  addi         a2, s11, -881
                  addi         s9, s9, -291
                  auipc        a3, 742889
                  auipc        s11, 837253
                  addi         s9, a7, -180 #end riscv_int_numeric_corner_stream_15
                  slti         t4, a1, 634
                  sra          sp, ra, sp
                  xori         s3, t5, -632
                  lui          sp, 768654
                  add          s2, s8, zero
                  and          s4, tp, s0
                  srai         a7, zero, 1
                  srl          a1, tp, a2
                  andi         sp, s0, -636
                  slli         t3, s10, 25
                  xor          gp, a4, s5
                  slt          s6, a0, zero
                  slli         s8, t6, 30
                  srli         a3, zero, 30
                  slt          gp, tp, s7
                  lui          ra, 533227
                  srli         s7, a5, 21
                  sra          s11, t4, t5
                  ori          t2, t6, -575
                  srai         s4, gp, 6
                  sltiu        a2, a1, 312
                  srl          a3, a3, t4
                  andi         sp, s10, -1214
                  auipc        s1, 386408
                  slt          s1, sp, s9
                  andi         s3, s0, -311
                  nop
                  slt          s11, s3, zero
                  and          a1, s6, a6
                  addi         s2, a2, -1665
                  sltiu        a1, s11, -716
                  add          t3, s10, s4
                  sra          t4, s2, s0
                  sll          s7, s4, a1
                  xori         s9, s7, 1554
                  srl          s4, a7, s3
                  xori         a2, s1, 1229
                  or           s1, s10, a2
                  slli         a3, s7, 19
                  slli         a6, s10, 15
                  ori          a7, s4, 714
                  sltiu        t4, a1, 1079
                  auipc        s6, 1016560
                  or           sp, a6, s3
                  srai         t4, ra, 15
                  add          a6, t3, s11
                  nop
                  slli         t5, a3, 8
                  sll          t0, a0, t4
                  and          t4, s6, ra
                  nop
                  xor          t2, t0, a2
                  slli         s9, a2, 16
                  xor          s3, t4, t6
                  sltiu        s10, a3, -1685
                  andi         t5, s5, 1322
                  nop
                  srai         a2, a1, 24
                  auipc        t0, 72875
                  sltiu        s8, a2, -836
                  srai         s4, a5, 0
                  sub          a1, a4, s0
                  srai         t4, s7, 7
                  xori         s9, sp, 1754
                  xori         s9, a4, -1373
                  slti         zero, s11, -1692
                  sltiu        gp, t2, -951
                  srli         s1, t0, 2
                  ori          t4, s3, 954
                  srl          tp, t6, s1
                  slti         s1, a3, 87
                  srl          zero, s11, s7
                  or           t3, t6, s7
                  slti         t6, a4, 1192
                  sll          s8, a4, a2
                  xori         s7, a7, -1700
                  or           a3, a0, a2
                  or           s3, ra, s10
                  slli         s2, s5, 17
                  sub          a6, a4, s3
                  lui          a2, 650409
                  xori         a6, s2, -144
                  xori         zero, s10, 1954
                  slti         ra, a4, -2034
                  srli         s9, t0, 16
                  sra          t4, a3, a2
                  and          t5, ra, a1
                  or           s11, t4, a0
                  or           s4, t2, t3
                  sltu         ra, t3, s4
                  auipc        s4, 989812
                  lui          t6, 371605
                  srli         t4, s3, 0
                  ori          s10, s4, -1330
                  sltiu        s6, s6, 1954
                  sltu         t2, s9, s2
                  sra          t6, a0, s8
                  nop
                  auipc        t3, 794236
                  srai         tp, ra, 11
                  lui          s7, 113919
                  slti         s8, s8, -88
                  sltiu        zero, a5, -340
                  slli         a3, sp, 29
                  slti         t6, a7, -96
                  slt          s0, s10, t5
                  srai         t6, s0, 3
                  lui          t2, 573118
                  slli         a0, s4, 3
                  add          s4, t0, t2
                  auipc        a0, 278135
                  slti         s8, a2, -734
                  addi         ra, s1, -1824
                  srai         zero, a0, 21
                  addi         s4, s9, 789
                  srli         sp, a0, 2
                  addi         s7, s2, -1364
                  sltu         s6, t1, zero
                  add          ra, s1, s10
                  auipc        t5, 284928
                  slt          s2, t0, a2
                  add          s7, s3, a0
                  auipc        s10, 750724
                  or           t2, zero, a5
                  sra          a3, s2, a3
                  sll          zero, s9, a2
                  srl          a1, a7, a3
                  andi         t5, t5, 78
                  andi         a0, t1, -1222
                  addi         t3, t0, -872
                  andi         a0, sp, -1053
                  or           a1, a7, tp
                  auipc        s11, 797385
                  nop
                  xori         a0, a0, 676
                  slt          sp, t0, a1
                  lui          a4, 177284
                  slti         s2, t2, -1379
                  nop
                  srl          a2, a2, t2
                  ori          t6, t3, -713
                  ori          a3, s3, 262
                  and          s1, tp, t3
                  slli         s4, a3, 13
                  srl          s10, sp, s8
                  addi         t2, a7, 1928
                  nop
                  xor          t6, a1, sp
                  sll          s3, s1, tp
                  srli         s7, a2, 30
                  auipc        s11, 254590
                  or           s3, a0, a0
                  auipc        s0, 201010
                  sltiu        a6, ra, -696
                  srl          ra, a1, s1
                  nop
                  sll          t2, t6, s1
                  and          t5, t4, s7
                  sll          s2, t4, s0
                  auipc        s4, 386679
                  srl          a0, t1, t5
                  slt          s4, s1, s2
                  auipc        zero, 744567
                  auipc        t2, 136465
                  or           sp, a0, a3
                  srli         a4, t5, 10
                  sra          s7, t2, s0
                  xor          a2, a2, s2
                  srli         s1, s4, 25
                  sub          s7, tp, ra
                  srli         s2, s10, 26
                  and          s0, t6, t4
                  and          gp, a3, s2
                  xori         a4, t5, -726
                  add          s0, s10, ra
                  or           a6, t6, t2
                  sltiu        zero, a1, 794
                  ori          a0, s2, 831
                  auipc        gp, 391595
                  srli         s9, s1, 24
                  sltiu        s1, a6, -1558
                  ori          a1, t0, -862
                  or           s9, zero, s8
                  sra          t0, ra, s2
                  addi         s3, gp, -1069
                  slti         gp, zero, -749
                  srl          ra, s10, s5
                  srl          s3, t0, a0
                  xori         t4, a2, -1423
                  sll          s11, s0, t3
                  srl          tp, t4, a5
                  srai         a6, sp, 27
                  or           s2, t3, t1
                  xori         s10, s11, -1475
                  and          s4, t5, s0
                  sll          s9, t0, s3
                  slti         gp, a1, 364
                  sub          s1, a7, s6
                  slt          t4, s1, a3
                  sltiu        s8, a3, 1215
                  add          a2, t3, ra
                  slli         t4, tp, 21
                  srl          t3, t1, a6
                  add          a4, s7, sp
                  slti         t4, t2, 1130
                  srai         a6, s10, 31
                  slt          s3, s8, s10
                  sltu         t6, t2, s7
                  slti         s11, t6, -1448
                  nop
                  xor          s2, s3, s1
                  addi         s4, s1, -1955
                  sub          s9, t6, t6
                  addi         a7, zero, -173
                  sra          s7, a1, sp
                  auipc        s7, 318748
                  lui          a0, 887901
                  auipc        sp, 473804
                  andi         t0, s2, 167
                  add          t2, a5, s2
                  sltiu        s0, s4, -219
                  sll          s8, sp, t4
                  sltiu        ra, zero, -2022
                  xor          s1, s6, a1
                  srli         a3, s9, 28
                  add          gp, a2, zero
                  nop
                  nop
                  auipc        s4, 675607
                  slt          a6, a0, t3
                  add          t3, sp, a0
                  sll          s2, s11, zero
                  slti         zero, s8, -748
                  auipc        a7, 646084
                  sub          s8, s3, gp
                  slti         a2, s6, -1108
                  or           t5, s9, a7
                  sltu         a4, t3, s9
                  ori          s1, t4, 1331
                  auipc        s11, 712380
                  sub          s3, ra, t5
                  and          a7, a1, a0
                  lui          s8, 656519
                  auipc        s2, 896540
                  xori         s0, a7, 982
                  sltu         gp, t4, t1
                  auipc        s8, 320714
                  auipc        a2, 274189
                  lui          gp, 756011
                  sltiu        s9, t2, -1190
                  slt          sp, t6, s4
                  xor          a0, t0, s1
                  andi         t5, a7, 602
                  ori          a1, a2, -1472
                  sll          s4, a0, s2
                  add          s11, sp, s4
                  slti         t5, s6, 980
                  sltu         s0, s11, a2
                  xori         s1, s8, -606
                  andi         s11, t1, 1479
                  sra          t6, a3, t0
                  andi         a4, sp, 1404
                  sub          s8, s4, t5
                  slli         t6, s4, 3
                  srai         t4, s4, 16
                  srai         ra, s7, 10
                  nop
                  sra          s10, sp, a2
                  sltiu        s4, t5, 32
                  slt          a0, a7, s3
                  slli         s9, s9, 2
                  auipc        a3, 551782
                  xor          a0, s6, t4
                  sltu         t5, s2, s4
                  sll          s1, tp, s9
                  ori          s8, a4, -1055
                  and          s1, s7, zero
                  xor          s1, a4, t1
                  slt          s3, s10, s7
                  slli         t6, t5, 28
                  xor          s4, a2, a6
                  add          s7, s3, a0
                  or           s10, s0, s1
                  srli         s6, s10, 16
                  andi         a1, a5, -891
                  slli         t0, t5, 17
                  sub          t3, a0, s11
                  slli         s2, sp, 14
                  xori         s10, s8, -1182
                  or           s7, s5, s7
                  auipc        s0, 616935
                  sra          t0, a0, s4
                  sra          a0, a5, s10
                  sub          a6, a4, s8
                  srai         s3, t1, 11
                  and          s2, t3, s11
                  ori          a7, s8, 1481
                  andi         s8, t5, -965
                  slti         t6, a5, 1175
                  sltu         t0, tp, s8
                  sub          t6, t0, ra
                  ori          s11, s7, 684
                  andi         tp, t0, 1495
                  slli         s2, gp, 26
                  srli         s10, a2, 10
                  sra          s7, t5, a5
                  xor          s10, a2, a7
                  sra          s0, s11, t3
                  or           s3, s2, t2
                  xori         a2, s4, 419
                  add          s9, tp, gp
                  sltiu        zero, s2, 1500
                  xori         s9, s6, -414
                  srai         a3, a3, 4
                  ori          a3, a3, 1384
                  addi         a1, s2, -195
                  andi         s10, a5, 1577
                  andi         gp, a5, 2042
                  xori         t5, s7, 105
                  sub          s2, a0, sp
                  sub          s11, s9, a6
                  sll          s3, a6, a0
                  slli         a0, t5, 11
                  and          s7, t6, zero
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s8, 0x5c2be89c
                  li           s1, 0xffffffff
                  li           s11, 0x80000000
                  li           t3, 0x0
                  li           t0, 0xffffffff
                  li           s3, 0x345d0ed
                  li           t6, 0xffffffff
                  li           s9, 0x3aefcfed
                  li           t5, 0x0
                  sub          s1, s9, s11
                  nop
                  lui          s1, 171758
                  auipc        t3, 968888
                  sub          s9, t0, t6
                  sub          t0, t3, s9
                  lui          s11, 1002454
                  sub          t5, s1, t3
                  addi         s0, t0, -917
                  nop
                  sub          s11, s3, t3
                  addi         t0, s1, -321
                  lui          t0, 841985
                  lui          s0, 457899
                  nop
                  addi         t0, s1, -1747
                  lui          t5, 393525 #end riscv_int_numeric_corner_stream_7
                  auipc        t0, 61698
                  sra          s7, s4, t6
                  ori          s4, a3, -480
                  auipc        t4, 344497
                  sub          a6, s1, tp
                  sub          a2, gp, ra
                  nop
                  slti         t6, sp, -1880
                  add          a4, t4, t3
                  sll          a0, s1, s3
                  add          s6, s3, s1
                  or           tp, ra, s4
                  sltiu        t6, a3, -549
                  nop
                  sltu         tp, t5, a5
                  add          t6, t2, t4
                  and          t2, s2, s8
                  lui          t4, 166748
                  slt          s6, a4, a7
                  sra          zero, t2, ra
                  and          t6, a0, s2
                  slti         s11, a5, -895
                  slti         a6, t0, 1523
                  sll          a2, s2, a0
                  addi         t4, a4, -935
                  addi         a6, zero, -2012
                  slli         s1, t0, 6
                  add          a2, t1, s10
                  slt          s11, sp, s5
                  add          gp, s11, a6
                  sll          s1, s9, t4
                  or           s7, a0, s6
                  nop
                  slli         t4, s11, 2
                  slti         t4, s11, 212
                  xori         a1, t6, 852
                  lui          s6, 609129
                  andi         gp, tp, -1047
                  xori         s6, s4, 36
                  srai         s0, s0, 27
                  auipc        t6, 334607
                  auipc        t6, 718412
                  nop
                  ori          s7, a2, -345
                  xor          a2, a6, s10
                  xori         s8, s5, -1953
                  srai         s7, gp, 1
                  ori          t5, ra, -1468
                  lui          s2, 457627
                  sltu         t5, t1, s7
                  auipc        s3, 409561
                  or           s9, s1, gp
                  srli         t4, t5, 1
                  sra          s3, s2, t6
                  slt          t5, s3, a7
                  slli         a0, s3, 28
                  sltu         a6, t6, ra
                  slt          t3, a0, t5
                  andi         t3, t3, -534
                  xor          s0, zero, s6
                  andi         s3, t2, 816
                  sub          s3, s6, gp
                  lui          ra, 937602
                  srl          zero, s2, t5
                  nop
                  sltu         ra, a3, sp
                  sub          sp, t0, s6
                  srl          t3, s7, s6
                  sll          ra, t5, a4
                  or           zero, t2, a6
                  srai         a6, t1, 24
                  xori         t6, s3, 781
                  and          t5, s1, a7
                  xori         a0, s4, -206
                  slli         ra, a2, 2
                  srl          a3, s5, a0
                  sra          a1, s8, a3
                  xori         s3, ra, -1737
                  auipc        a6, 655080
                  srai         a2, s9, 5
                  sub          zero, a7, a6
                  srli         s2, s4, 31
                  ori          a6, s3, 1955
                  srl          a0, s1, a1
                  andi         a7, zero, -677
                  sll          s11, t0, gp
                  andi         s11, a0, -1024
                  nop
                  addi         s9, a1, 135
                  srl          a2, t5, a1
                  sra          s1, a3, t4
                  sltu         gp, s1, a6
                  andi         t3, a3, 409
                  srl          sp, s4, t3
                  slt          a3, ra, t1
                  xor          s9, t4, gp
                  sltu         tp, s6, a3
                  lui          s1, 1046212
                  slt          zero, a5, tp
                  xor          t3, a6, s2
                  xori         s6, a7, -1823
                  xori         a1, gp, 727
                  slt          a1, t2, s4
                  srai         s4, s7, 24
                  slt          s4, t6, s6
                  sltiu        a1, ra, 1516
                  or           s4, t3, t4
                  sltu         t2, t0, t4
                  sub          a2, sp, ra
                  sll          s8, a0, t5
                  sll          s4, t4, s3
                  srl          a3, s10, t3
                  xor          tp, a2, s11
                  lui          s2, 71933
                  srai         a3, s10, 22
                  sra          gp, s6, s8
                  addi         a1, s8, -1188
                  sra          zero, s9, gp
                  lui          a3, 191611
                  add          a6, a2, a0
                  add          s11, t5, t1
                  sltiu        zero, ra, -608
                  xor          zero, a1, t3
                  la x21, test_done
                  jalr x0, x21, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
mmode_intr_vector_1:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_2:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_3:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_4:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_5:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_6:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_7:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_8:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_9:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_10:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_11:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_12:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_13:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_14:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_15:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

.align           4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15

mmode_exception_handler:
                  addi x6, x6, -4
                  sw  x15, (x6)
                  add x15, x6, zero
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x6, x15, zero
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x19, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x19, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x19, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x19, x20, ecall_handler
                  li x20, 0x1
                  beq x19, x20, instr_fault_handler
                  li x20, 0x5
                  beq x19, x20, load_fault_handler
                  li x20, 0x7
                  beq x19, x20, store_fault_handler
                  li x20, 0xc
                  beq x19, x20, pt_fault_handler
                  li x20, 0xd
                  beq x19, x20, pt_fault_handler
                  li x20, 0xf
                  beq x19, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x15, x6, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  add x6, x15, zero
                  lw  x15, (x6)
                  addi x6, x6, 4
                  mret

load_fault_handler:
                  add x15, x6, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  add x6, x15, zero
                  lw  x15, (x6)
                  addi x6, x6, 4
                  mret

store_fault_handler:
                  add x15, x6, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  add x6, x15, zero
                  lw  x15, (x6)
                  addi x6, x6, 4
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x15, x6, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  add x6, x15, zero
                  lw  x15, (x6)
                  addi x6, x6, 4
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x15, x6, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  add x6, x15, zero
                  lw  x15, (x6)
                  addi x6, x6, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x15, x6, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  add x6, x15, zero
                  lw  x15, (x6)
                  addi x6, x6, 4
                  mret;

kernel_instr_end: nop
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 3999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
