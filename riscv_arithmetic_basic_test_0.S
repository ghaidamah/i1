.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 0
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  li x10, 0x0
                  csrw 0x304, x10 # MIE
                  mret
init:             
                  li x0, 0xfa25693e
                  li x1, 0x804ba527
                  li x2, 0xb
                  li x3, 0x80000000
                  li x4, 0xf41337ee
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0xf
                  li x10, 0xf0df5243
                  li x11, 0x3
                  li x12, 0x0
                  li x13, 0xd
                  li x14, 0x80000000
                  li x15, 0xca05db5
                  li x16, 0x0
                  li x17, 0x80000000
                  li x20, 0x2b3eb15b
                  li x21, 0xa
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0xe
                  li x26, 0x1
                  li x27, 0xf2ffd876
                  li x28, 0x0
                  li x29, 0x0
                  li x30, 0xf09a5e06
                  li x31, 0xb65ee065
                  la x18, user_stack_end
main:             li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           gp, 0x80000000
                  li           t5, 0x80000000
                  li           t3, 0x6ba27484
                  li           t4, 0x80000000
                  li           s5, 0x80000000
                  li           ra, 0x0
                  li           s4, 0x58bd1dc1
                  li           a3, 0xcc34c0fd
                  li           t0, 0xffffffff
                  sub          t4, t3, a3
                  lui          s4, 282547
                  addi         s4, gp, 1535
                  nop
                  nop
                  add          t0, t0, ra
                  auipc        ra, 692427
                  add          s4, gp, ra
                  addi         t3, a3, 429
                  sub          s5, ra, t0
                  lui          t4, 791
                  addi         gp, t4, -1247
                  auipc        a3, 140164
                  addi         ra, t0, 420
                  lui          gp, 571038
                  add          t5, a3, s5
                  sub          t3, s4, a3
                  nop
                  nop
                  nop
                  sub          ra, t5, gp
                  add          t0, t0, gp #end riscv_int_numeric_corner_stream_9
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           a1, 0x0
                  li           s5, 0x68401baf
                  li           a6, 0x0
                  li           t1, 0xa84ec3a9
                  li           ra, 0xd319e355
                  li           t3, 0x0
                  li           a5, 0x0
                  li           t6, 0x80000000
                  li           s7, 0x80000000
                  auipc        a6, 364128
                  nop
                  sub          t1, t3, a1
                  lui          a5, 948350
                  add          t3, t1, t3
                  lui          s5, 793027
                  add          a5, t6, s5
                  auipc        ra, 359318
                  sub          s7, t1, a6
                  add          ra, a1, a6
                  addi         a6, a5, -508
                  lui          s5, 626534
                  sub          a6, a5, t3
                  lui          a5, 999706
                  addi         t3, s5, -5
                  auipc        t6, 877061 #end riscv_int_numeric_corner_stream_0
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           s5, 0x80000000
                  li           s0, 0xffffffff
                  li           s4, 0x0
                  li           a7, 0x80000000
                  li           sp, 0x0
                  li           t4, 0x2d01d22d
                  li           s9, 0x80000000
                  li           a6, 0xffffffff
                  li           gp, 0x80000000
                  nop
                  add          t4, s9, gp
                  auipc        s7, 439536
                  nop
                  auipc        t4, 117852
                  auipc        s5, 168338
                  sub          s0, s5, gp
                  addi         sp, gp, 319
                  addi         s0, a6, 786
                  lui          a7, 410829
                  addi         s4, s4, -1440
                  addi         sp, t4, -1244
                  auipc        a6, 246521
                  add          gp, sp, a6
                  add          s4, s5, s0
                  nop
                  lui          a6, 198979
                  lui          a7, 638209
                  addi         t4, a6, 601
                  addi         s9, s4, -1639
                  nop
                  nop
                  add          a6, t4, sp
                  add          s0, sp, s4
                  add          s5, t4, s9
                  addi         s4, s9, 1422
                  nop
                  lui          s7, 900813 #end riscv_int_numeric_corner_stream_4
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a7, 0xffffffff
                  li           t4, 0x0
                  li           a2, 0x0
                  li           s8, 0xffffffff
                  li           s6, 0x80000000
                  li           s0, 0xf808abc0
                  li           s5, 0x5ccad8a0
                  li           a5, 0x80000000
                  li           t1, 0x0
                  sub          s8, s5, t4
                  add          s8, s5, s5
                  auipc        s5, 29509
                  auipc        s5, 671098
                  addi         t4, a5, -980
                  add          a2, t0, a7
                  auipc        s5, 618228
                  add          a2, t4, s8
                  add          a5, t4, t0
                  addi         t1, s6, -1681
                  addi         s8, t0, 255
                  addi         s0, s5, -392
                  sub          s5, t1, a5
                  lui          s8, 376410
                  sub          t0, t1, t1
                  add          t4, a2, a7
                  sub          s5, s5, a2
                  add          s6, s6, t1
                  lui          s5, 840063
                  sub          t4, s8, t0
                  sub          a5, s6, t1
                  add          t4, s0, a7 #end riscv_int_numeric_corner_stream_13
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_26
                  li           s10, 0xffffffff
                  li           s7, 0x80000000
                  li           t0, 0x80000000
                  li           ra, 0x80000000
                  li           t4, 0x0
                  li           a2, 0x1603e582
                  li           a4, 0x83b501ce
                  li           sp, 0x790d022f
                  li           s5, 0x80000000
                  nop
                  nop
                  auipc        ra, 330803
                  sub          s5, sp, a2
                  addi         sp, t4, -1528
                  add          s7, s5, ra
                  addi         a2, s10, -1642
                  add          sp, s7, t0
                  sub          sp, s10, s5
                  lui          s7, 956831
                  lui          s5, 675587
                  sub          t4, s5, a4
                  sub          ra, gp, s5
                  lui          t4, 707782
                  nop
                  addi         t0, t0, 622
                  auipc        sp, 518267
                  addi         s7, s7, -1840
                  nop
                  add          t0, sp, s10
                  auipc        t0, 508244
                  add          sp, ra, ra
                  add          t4, s10, s7
                  addi         s5, s10, 1200
                  addi         ra, ra, 982
                  nop
                  add          gp, a2, sp
                  add          t4, s5, t0
                  add          s5, a2, s10
                  addi         s7, t4, -914 #end riscv_int_numeric_corner_stream_26
                  li           a7, 0x2a76e6bf #start riscv_int_numeric_corner_stream_27
                  li           s1, 0xffffffff
                  li           t2, 0x80000000
                  li           s10, 0xeeca13a7
                  li           a5, 0xffffffff
                  li           a2, 0x80000000
                  li           t5, 0x80000000
                  li           ra, 0xffffffff
                  li           t0, 0xffffffff
                  li           sp, 0xffffffff
                  nop
                  nop
                  lui          t2, 748143
                  addi         s1, a5, 789
                  addi         ra, t0, -556
                  add          a7, a2, sp
                  addi         a7, t5, 338
                  lui          ra, 170577
                  sub          a5, s10, t2
                  addi         a7, s10, 1845
                  add          s1, s10, t5
                  addi         a5, s10, 140
                  addi         s10, t0, 1001
                  auipc        sp, 209956
                  sub          a5, t5, a5
                  sub          sp, a5, t2
                  nop
                  add          a2, s1, t2
                  auipc        t0, 370183
                  nop
                  auipc        a5, 832085
                  sub          s10, s1, t2
                  lui          t5, 472328
                  addi         a2, ra, -1593
                  add          ra, a5, a2 #end riscv_int_numeric_corner_stream_27
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           a2, 0x80000000
                  li           s8, 0xffffffff
                  li           gp, 0x0
                  li           s10, 0x0
                  li           s6, 0x80000000
                  li           sp, 0x80000000
                  li           t3, 0xffffffff
                  li           s0, 0xffffffff
                  li           t4, 0x10209e3c
                  nop
                  sub          t3, s0, sp
                  auipc        sp, 505708
                  addi         t3, gp, 1885
                  add          s0, s10, s8
                  add          a2, t4, a7
                  add          a7, a7, t4
                  nop
                  add          a2, t3, t4
                  nop
                  lui          t4, 383832
                  add          s8, t3, gp
                  add          s10, s10, s8
                  sub          s10, a7, s0
                  add          t4, a2, t3
                  add          s8, s0, a7
                  addi         s0, s10, 849
                  sub          s0, t3, a2
                  auipc        gp, 125068
                  nop
                  nop
                  add          a2, s10, s6
                  sub          t3, s0, t4
                  nop
                  sub          t3, sp, s6 #end riscv_int_numeric_corner_stream_1
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_36
                  li           s10, 0xffffffff
                  li           s6, 0xffffffff
                  li           tp, 0x0
                  li           t2, 0x76964b9c
                  li           ra, 0x11654077
                  li           t5, 0x80000000
                  li           a1, 0x80000000
                  li           s0, 0x80000000
                  li           a3, 0x80000000
                  auipc        tp, 395352
                  auipc        ra, 595716
                  nop
                  add          s0, a3, s6
                  add          s10, tp, tp
                  auipc        t2, 929224
                  lui          ra, 794725
                  addi         ra, s0, 739
                  auipc        s10, 102938
                  auipc        ra, 38541
                  add          s10, t2, t2
                  nop
                  auipc        t5, 423119
                  lui          t2, 749234
                  sub          a1, s10, s10
                  add          ra, s10, s0
                  lui          tp, 347925
                  addi         a1, ra, 32
                  auipc        s0, 310662
                  auipc        a3, 770411
                  nop
                  add          a3, a1, ra
                  addi         s0, ra, 1540
                  addi         a3, s0, 1530
                  sub          t2, t2, t2
                  add          t2, ra, s6
                  lui          tp, 549591 #end riscv_int_numeric_corner_stream_36
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           a4, 0x0
                  li           a0, 0x80000000
                  li           a6, 0xffffffff
                  li           t1, 0xffffffff
                  li           s6, 0x80000000
                  li           ra, 0x0
                  li           s4, 0x80000000
                  li           t5, 0x0
                  li           s7, 0xffffffff
                  add          s7, sp, a4
                  add          s7, a4, s7
                  sub          t1, sp, a4
                  sub          s6, a4, s7
                  sub          t5, a6, sp
                  lui          t5, 382319
                  addi         s7, s4, -110
                  nop
                  auipc        s6, 654792
                  auipc        s7, 439376
                  nop
                  sub          s6, t1, sp
                  lui          s7, 298654
                  sub          a4, s4, ra
                  auipc        s4, 997892
                  nop
                  addi         t5, a0, -901
                  lui          t1, 60239
                  lui          t1, 63246
                  auipc        s7, 370023
                  auipc        t1, 1001086
                  sub          t5, a4, s7
                  auipc        s6, 891504
                  auipc        s7, 954148
                  sub          s6, sp, t1 #end riscv_int_numeric_corner_stream_17
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_21
                  li           t0, 0x0
                  li           s10, 0x80000000
                  li           a6, 0xf1e02bf5
                  li           t5, 0x80000000
                  li           t6, 0x963ea73a
                  li           ra, 0xffffffff
                  li           s5, 0x80000000
                  li           a5, 0x0
                  li           a3, 0xffffffff
                  lui          t6, 650596
                  auipc        t6, 970391
                  addi         t5, a5, 586
                  add          t6, a3, gp
                  lui          s5, 155400
                  lui          s5, 1004464
                  lui          s10, 622059
                  auipc        s10, 348111
                  sub          s10, t0, s5
                  auipc        a6, 339409
                  sub          t6, a5, a3
                  auipc        gp, 702330
                  nop
                  sub          ra, gp, s5
                  sub          a3, t5, ra
                  lui          t5, 192773
                  auipc        t6, 538893
                  sub          gp, a6, ra
                  auipc        a5, 827165
                  sub          ra, t6, a3
                  nop
                  auipc        a6, 524897
                  nop
                  auipc        t5, 619118
                  add          t5, a3, s5
                  addi         t0, gp, 588
                  sub          t5, t0, s10
                  lui          s5, 518234
                  auipc        ra, 247425
                  nop #end riscv_int_numeric_corner_stream_21
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_39
                  li           t3, 0x0
                  li           tp, 0xf1a04acd
                  li           sp, 0x80000000
                  li           t5, 0xffffffff
                  li           t0, 0x87c1bd0d
                  li           a1, 0x80000000
                  li           a4, 0x58faee3c
                  li           a7, 0xffffffff
                  li           a2, 0x80000000
                  auipc        t0, 559722
                  sub          a2, a7, tp
                  nop
                  nop
                  sub          a4, a2, t3
                  add          a7, a2, t3
                  sub          s8, t0, s8
                  auipc        s8, 459006
                  add          tp, sp, a4
                  nop
                  auipc        t0, 58786
                  auipc        a4, 353235
                  sub          tp, tp, sp
                  lui          tp, 740522
                  auipc        s8, 764369
                  auipc        t0, 801672
                  addi         t0, tp, -1639
                  lui          t3, 413101
                  nop
                  sub          sp, a4, a4
                  auipc        a1, 466605
                  add          a1, a1, sp
                  addi         t0, sp, 1312
                  auipc        tp, 589079
                  sub          s8, a7, a4
                  add          a1, a7, tp #end riscv_int_numeric_corner_stream_39
                  li           t0, 0x8fa2571d #start riscv_int_numeric_corner_stream_29
                  li           s10, 0x0
                  li           s9, 0x80000000
                  li           a7, 0x0
                  li           a5, 0xffffffff
                  li           s4, 0xffffffff
                  li           t2, 0x80000000
                  li           t4, 0xef485cbc
                  li           s7, 0xffffffff
                  li           a1, 0x80000000
                  add          s10, t4, t2
                  auipc        s4, 303411
                  auipc        a7, 829707
                  add          t4, s9, a1
                  lui          t4, 751370
                  auipc        a5, 594018
                  lui          t4, 475994
                  sub          t0, s10, a7
                  addi         s9, t0, -1659
                  addi         s10, a5, 1189
                  sub          t4, t4, s9
                  lui          s9, 464679
                  nop
                  add          a1, a5, t4
                  lui          s4, 741256
                  add          t2, a5, a5
                  sub          s10, t2, a1
                  add          t0, t2, a7 #end riscv_int_numeric_corner_stream_29
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           a1, 0x80000000
                  li           s0, 0x73c59e4e
                  li           a6, 0x0
                  li           t2, 0x0
                  li           s8, 0x0
                  li           s5, 0x0
                  li           s4, 0x0
                  li           s1, 0x80000000
                  li           s6, 0x0
                  add          s1, a6, t2
                  sub          s6, a6, s1
                  add          a6, s6, t2
                  nop
                  addi         s4, s5, 1442
                  lui          a2, 480905
                  nop
                  lui          t2, 573497
                  addi         s1, a6, 1689
                  lui          s8, 513193
                  addi         s4, s8, -489
                  addi         a1, s8, -1821
                  sub          s1, a6, s1
                  nop
                  nop
                  sub          s1, a1, a6
                  sub          a6, s4, t2
                  addi         a1, s5, 554
                  lui          s5, 574922
                  sub          s8, a6, s1
                  lui          a2, 908980
                  lui          s8, 812416
                  add          s0, a6, a6
                  sub          t2, s1, a6
                  lui          s6, 241291 #end riscv_int_numeric_corner_stream_3
                  li           a7, 0x90c1e3ea #start riscv_int_numeric_corner_stream_31
                  li           s7, 0x7754eec4
                  li           s6, 0xffffffff
                  li           s1, 0xe6499210
                  li           t5, 0xeef7b392
                  li           t2, 0x80000000
                  li           s5, 0xffffffff
                  li           t1, 0x0
                  li           t0, 0xffffffff
                  li           a3, 0x0
                  sub          t0, s1, a7
                  nop
                  auipc        t5, 229993
                  addi         s6, s6, 996
                  auipc        a3, 953582
                  addi         s5, s5, 622
                  add          s6, s1, t2
                  lui          a7, 86620
                  add          t2, a3, a3
                  addi         t2, a3, 281
                  nop
                  lui          s6, 629604
                  auipc        s6, 748538
                  sub          t0, a3, t0
                  sub          a7, a7, s6
                  nop
                  lui          t5, 407781
                  nop
                  add          a3, t1, s7
                  add          s5, a7, s5
                  add          t5, t0, t2
                  addi         s1, t5, -134
                  addi         a7, t0, -406
                  sub          s6, s6, t5 #end riscv_int_numeric_corner_stream_31
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_38
                  li           a5, 0xffffffff
                  li           s4, 0xffffffff
                  li           a1, 0xffffffff
                  li           t4, 0x0
                  li           a7, 0x80000000
                  li           t6, 0x0
                  li           t2, 0xffffffff
                  li           t0, 0x0
                  li           a0, 0x89d0d7c
                  addi         s4, t4, -1707
                  auipc        s4, 34876
                  sub          t0, a5, s4
                  addi         t4, a0, -959
                  add          t0, t0, s8
                  nop
                  addi         t0, t0, 1929
                  sub          s8, t2, a7
                  nop
                  nop
                  add          a5, a5, t0
                  auipc        a5, 7860
                  add          t4, s4, a7
                  lui          t4, 366623
                  add          a5, t0, t4
                  sub          a1, t0, a0
                  addi         t4, t2, -1059
                  sub          a7, s4, t2
                  add          s8, s8, s8
                  nop
                  auipc        a0, 804969
                  add          t4, t4, a5
                  add          a0, a5, s8
                  add          s4, t0, t0
                  sub          t6, s8, t6
                  sub          a5, t4, t0
                  sub          t2, t2, t4
                  lui          a1, 897331
                  nop
                  lui          t0, 681255 #end riscv_int_numeric_corner_stream_38
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_30
                  li           s5, 0x0
                  li           a5, 0xa494ec
                  li           s8, 0x80000000
                  li           s9, 0xffffffff
                  li           a2, 0x0
                  li           t6, 0xb59eb6d3
                  li           s0, 0x80000000
                  li           a1, 0x80000000
                  li           a3, 0x80000000
                  add          gp, s5, s8
                  auipc        a5, 224031
                  sub          s9, gp, a5
                  nop
                  lui          t6, 917843
                  addi         a2, a5, 490
                  add          t6, a2, a5
                  auipc        gp, 338399
                  add          s0, t6, s8
                  lui          gp, 762643
                  sub          s8, a3, a2
                  add          a5, a1, s8
                  lui          t6, 398383
                  auipc        gp, 719222
                  addi         s0, gp, 295
                  nop
                  nop
                  add          s9, t6, a5
                  nop
                  add          a3, t6, a3
                  nop
                  lui          s5, 701085 #end riscv_int_numeric_corner_stream_30
                  srl          t0, t0, s10
                  sll          gp, s9, s8
                  slli         s10, a5, 12
                  auipc        zero, 135739
                  srl          s8, s1, sp
                  slt          a5, a1, s2
                  auipc        t0, 914269
                  xor          a2, s1, t4
                  sltu         s7, a2, s1
                  nop
                  slti         tp, s6, 438
                  slli         a5, a5, 8
                  addi         t3, t0, 1769
                  sra          a6, t1, s6
                  sltiu        a2, a0, 2011
                  srl          s7, s2, s5
                  slti         t6, gp, 584
                  slli         s6, a5, 6
                  srli         s5, a7, 17
                  slt          s1, t3, s9
                  xor          s7, s8, t1
                  and          t4, a5, a2
                  and          s8, s5, t6
                  srl          t6, s8, a1
                  add          s8, s3, s11
                  sltiu        a5, a5, 1554
                  slt          t0, a3, ra
                  sltu         s6, a1, s8
                  add          t1, a6, a3
                  xor          s8, s2, s3
                  andi         s7, t2, 63
                  sltu         a5, a1, t1
                  srl          a5, t0, s5
                  auipc        ra, 806690
                  nop
                  addi         a5, t6, 780
                  slli         t2, t4, 26
                  xor          a5, s4, sp
                  nop
                  sub          t0, s4, s1
                  andi         t1, t4, 1755
                  lui          t6, 580518
                  auipc        t4, 906191
                  and          s8, s6, s7
                  andi         a4, s9, 1462
                  sub          a3, s7, a1
                  sra          sp, s7, t3
                  add          t5, zero, s2
                  andi         s9, s10, 1092
                  add          t5, zero, a7
                  ori          a1, a2, 1519
                  srl          s1, a4, sp
                  srl          s7, tp, s0
                  sltu         a4, gp, t2
                  slli         a5, a6, 30
                  addi         t3, s11, 1325
                  srli         s7, a5, 23
                  srl          t0, a7, s2
                  lui          s5, 315180
                  auipc        a6, 998676
                  srl          gp, gp, t1
                  xori         ra, s10, 1626
                  sra          t3, s5, a2
                  add          a1, t4, a6
                  xor          sp, ra, s6
                  slli         ra, a4, 29
                  sltu         gp, s9, a1
                  sll          s5, ra, a3
                  slt          a6, a2, s9
                  slt          t1, a1, a6
                  srl          s6, a1, s10
                  slti         a4, a2, 1104
                  slli         s0, t4, 9
                  sltu         t0, t1, s8
                  slti         s1, zero, -1635
                  andi         a3, tp, -1915
                  ori          t4, s10, 765
                  slt          sp, ra, s0
                  addi         t1, s10, -1419
                  slti         gp, tp, -446
                  slt          a3, a0, a0
                  srli         s8, a6, 27
                  add          zero, a0, s2
                  srl          tp, t4, t5
                  nop
                  xori         s4, t6, -1333
                  sltu         a4, t1, tp
                  srl          a5, t3, t4
                  sltiu        gp, s1, 1163
                  slt          s10, t2, tp
                  slti         gp, tp, -1693
                  auipc        a5, 1000009
                  sll          s5, s11, gp
                  sub          s4, t4, t0
                  auipc        a3, 452146
                  slti         a4, s0, 1432
                  andi         t2, t2, -1953
                  slli         a0, s10, 2
                  srli         s6, s2, 27
                  or           s0, a1, t4
                  nop
                  sltiu        a4, a7, -989
                  srai         s10, a6, 10
                  and          t4, a5, s10
                  slti         sp, a6, -269
                  add          s4, t6, a0
                  add          s5, tp, t1
                  lui          s9, 1005660
                  xor          gp, t3, s7
                  sltiu        tp, s4, -1131
                  nop
                  sra          a2, t5, s9
                  sll          s9, s3, t0
                  sltu         a6, gp, s11
                  srai         s10, s5, 18
                  sll          s10, s3, s10
                  srl          a6, gp, t4
                  or           a2, gp, a5
                  or           a0, s3, t4
                  xor          t2, s4, s10
                  or           t4, s4, s9
                  sub          s1, s0, s8
                  sltu         s6, s9, s0
                  srl          t4, a0, s0
                  sltiu        s9, s3, 1298
                  xori         t2, t6, 360
                  slli         a6, s2, 31
                  slli         a3, tp, 1
                  sltiu        a0, a3, 183
                  addi         a1, t5, 1719
                  sltu         tp, t3, sp
                  sltiu        sp, a0, -1871
                  sltu         t4, s2, a5
                  sll          sp, a4, gp
                  xori         t0, s2, -1920
                  sub          a1, s1, a1
                  nop
                  sll          a4, s7, sp
                  slt          a4, a5, a2
                  xor          s4, ra, a7
                  srli         t6, t0, 6
                  sra          a3, s5, t4
                  srli         a6, s10, 0
                  xori         a7, s10, 1591
                  andi         a0, a7, -2013
                  ori          a3, s4, 829
                  andi         a6, s8, 696
                  and          s5, tp, s8
                  srai         t1, a1, 19
                  slti         a5, t0, -1345
                  sll          gp, t2, gp
                  slli         sp, tp, 18
                  lui          zero, 486033
                  xori         s0, s9, 976
                  sll          t3, a3, s8
                  srl          s0, t4, a7
                  and          a7, s6, a0
                  slli         t3, a5, 3
                  lui          gp, 93946
                  andi         s5, s3, -1011
                  and          t4, t4, t0
                  sll          s8, s11, s1
                  addi         t2, t4, 622
                  xori         t5, t5, -1538
                  sll          t0, s9, s5
                  ori          s0, a0, -1762
                  slli         a5, t2, 0
                  ori          a7, a7, 1374
                  srl          sp, a5, s4
                  nop
                  andi         zero, s7, 559
                  nop
                  sll          s0, t4, t0
                  sll          s8, a5, a2
                  addi         s1, a7, -1989
                  sra          t2, t2, s4
                  auipc        sp, 237867
                  sll          s1, s3, s10
                  srli         a6, t3, 15
                  slti         a6, a7, -1467
                  and          a2, t5, s1
                  or           tp, s5, a4
                  sltiu        t2, t6, -1912
                  andi         s0, t2, -1382
                  slt          t6, a7, s7
                  auipc        a2, 1023114
                  auipc        t4, 1012521
                  srl          t2, a4, ra
                  addi         gp, t3, 683
                  add          a5, a0, t1
                  sltiu        a0, s7, -1849
                  andi         a0, sp, 1236
                  sll          s6, s6, s6
                  xor          sp, s11, s8
                  xor          s9, s7, a2
                  srl          sp, s5, s0
                  ori          t6, t2, 577
                  nop
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_33
                  li           a5, 0x80000000
                  li           gp, 0x80000000
                  li           s1, 0xffffffff
                  li           t2, 0xffffffff
                  li           s8, 0x0
                  li           t3, 0xffffffff
                  li           t5, 0x80000000
                  li           sp, 0x0
                  li           s4, 0x80000000
                  lui          s8, 35552
                  add          a5, s4, t2
                  sub          s1, s1, gp
                  sub          s4, gp, sp
                  add          a3, sp, gp
                  auipc        sp, 147419
                  nop
                  addi         gp, a3, -126
                  add          t2, s8, a3
                  lui          sp, 118183
                  lui          sp, 202049
                  auipc        a5, 157359
                  addi         gp, s4, -1624
                  add          a3, t3, gp
                  lui          t3, 167840
                  add          a5, t3, a3
                  add          s8, a5, s1
                  sub          t3, s1, a5
                  auipc        t3, 234316
                  addi         t3, t3, -1426
                  addi         s8, s8, 647
                  auipc        t2, 417556
                  nop
                  lui          a5, 778456
                  add          t3, a3, s4
                  auipc        sp, 943308 #end riscv_int_numeric_corner_stream_33
                  auipc        s9, 697294
                  and          a7, s3, zero
                  nop
                  sra          t5, t4, sp
                  nop
                  andi         a1, s10, -2003
                  auipc        s4, 724600
                  sltu         a2, s5, t2
                  xori         t3, s1, 1522
                  sltu         t3, a2, s7
                  slt          s5, a3, t0
                  xori         t5, a4, -1861
                  xor          a7, s10, sp
                  slt          s1, s7, t5
                  slli         t4, t0, 20
                  xor          t5, s7, s11
                  slti         t3, s1, -955
                  slt          a0, t5, t4
                  add          gp, s2, s5
                  or           s10, t1, s1
                  sub          a2, a5, s0
                  add          t1, zero, s4
                  slli         a6, t6, 13
                  srai         sp, s6, 27
                  ori          sp, a5, 1296
                  slli         s5, t5, 0
                  slt          t0, t0, gp
                  xori         a7, s5, -1358
                  addi         sp, ra, 1014
                  or           t5, a7, s2
                  and          s7, s5, gp
                  srai         a2, gp, 0
                  or           s0, ra, a7
                  nop
                  lui          a7, 236371
                  slti         a0, gp, 1917
                  nop
                  sub          ra, t0, s4
                  addi         s0, s7, -751
                  sra          t5, s1, t5
                  addi         s5, s2, 1571
                  xor          s1, a0, a4
                  andi         ra, tp, 946
                  srli         s10, a2, 23
                  sra          t0, a5, zero
                  srai         s0, t0, 30
                  and          s6, t4, a3
                  srli         zero, s5, 8
                  sub          a4, ra, t4
                  or           s4, s8, t5
                  nop
                  sltiu        a4, t2, -1327
                  add          t6, s7, a0
                  nop
                  lui          s4, 844292
                  add          a0, t6, t4
                  srai         s6, s0, 5
                  auipc        t5, 683876
                  addi         s7, s10, -1538
                  xor          zero, t1, zero
                  srli         s4, s9, 26
                  and          a1, s4, a3
                  slt          a5, t6, a7
                  sltu         s5, s3, a4
                  sub          s4, s3, s10
                  slt          a3, a0, t0
                  auipc        a0, 1011125
                  slt          t4, s7, t4
                  andi         t3, a1, -1366
                  or           a0, sp, s0
                  andi         a1, t1, -620
                  srli         zero, t4, 21
                  and          tp, t1, a0
                  slli         t5, s8, 29
                  slli         t5, s1, 16
                  ori          a1, s8, -872
                  ori          a5, t3, 239
                  sltu         gp, s10, s7
                  ori          s0, zero, 848
                  xori         s0, a3, -452
                  sltiu        t1, s4, 1143
                  xori         s5, a3, -502
                  andi         gp, t2, 1657
                  andi         a6, t2, -711
                  srl          s10, a1, a6
                  auipc        s6, 542039
                  xori         t4, a2, -1391
                  sub          t0, t3, t5
                  srl          a6, gp, a0
                  slt          tp, a7, ra
                  slti         tp, tp, 253
                  sub          a0, s11, t4
                  xor          zero, a6, s9
                  slt          s1, a2, a3
                  xor          t1, zero, a4
                  sll          a1, t3, s5
                  andi         a0, s0, 133
                  slti         s6, s2, 1334
                  xori         s9, s3, 648
                  and          tp, a4, s10
                  auipc        s10, 234342
                  nop
                  or           t3, s11, s1
                  andi         t0, s2, -238
                  add          tp, s3, s7
                  sll          s0, ra, a5
                  xori         sp, a0, 700
                  sub          a2, sp, t0
                  srai         a5, a0, 6
                  addi         a6, a2, -859
                  sltiu        a7, t1, -848
                  slli         t6, t2, 5
                  srai         a0, s2, 27
                  auipc        s0, 1001016
                  and          s0, s3, a2
                  sll          s0, t3, t3
                  ori          sp, gp, 60
                  ori          a5, s9, -412
                  sra          a4, s10, t0
                  slti         s6, sp, 1355
                  slli         t6, s2, 11
                  or           t3, t0, a4
                  srl          a5, s7, s9
                  or           s1, a2, a0
                  sltiu        s8, t3, -1231
                  nop
                  srl          a4, s5, a6
                  andi         a2, t6, -784
                  sra          tp, ra, a1
                  andi         s8, a5, -1153
                  addi         s9, t4, 940
                  xor          a3, s4, s8
                  xor          s10, s9, a2
                  slti         s10, t0, 1277
                  and          s4, s5, t3
                  lui          t6, 599306
                  sll          a1, a3, t0
                  sll          s6, s10, a7
                  sll          t0, tp, t2
                  sltiu        a5, a6, -502
                  addi         t0, t2, -30
                  slt          a4, a3, s8
                  sltu         a1, ra, s8
                  lui          t6, 280086
                  srai         tp, a7, 13
                  nop
                  slli         a0, t3, 22
                  and          s9, t4, s1
                  srl          s7, s4, a4
                  srli         a7, tp, 5
                  or           s4, a5, a4
                  srai         t1, t4, 22
                  lui          s5, 449587
                  and          t1, a5, s11
                  sra          t3, s6, a0
                  auipc        s5, 855802
                  sub          s4, s9, a4
                  ori          s7, a1, -1815
                  add          a0, t1, a1
                  ori          s0, ra, -1386
                  srli         s9, t3, 14
                  nop
                  srli         t1, s3, 27
                  andi         a7, a7, -805
                  sll          a7, a7, t0
                  andi         s1, a5, 256
                  sra          s0, a4, s8
                  and          tp, a3, s3
                  sltiu        s9, a7, -1384
                  lui          a4, 667298
                  auipc        s8, 863767
                  xori         t1, s8, 1784
                  auipc        s0, 909707
                  srl          t6, ra, a3
                  srli         a0, s0, 29
                  xori         zero, s8, 270
                  sltu         t3, a2, s10
                  slt          s7, tp, t3
                  sltiu        t5, a2, 1345
                  ori          s8, s8, 1210
                  or           t2, s10, t6
                  srai         s5, t4, 5
                  sltu         t6, s4, t1
                  sub          a6, a7, a4
                  srl          s6, s6, a5
                  ori          s5, a1, -137
                  andi         t3, s9, 1733
                  sll          s6, a7, a7
                  slti         a1, a3, 1961
                  sll          s4, s7, t5
                  srl          s6, t3, s1
                  lui          t1, 730387
                  auipc        s5, 248127
                  nop
                  srli         a5, s8, 30
                  nop
                  and          a7, s9, t3
                  sub          s9, t2, t4
                  xori         zero, a4, 167
                  sra          t1, t2, gp
                  nop
                  auipc        zero, 519274
                  andi         a2, a7, 563
                  slli         t5, a2, 28
                  sltiu        a0, a2, 434
                  srli         t6, s9, 29
                  slli         s10, t2, 9
                  xori         t3, a5, -325
                  sltu         t0, s8, a5
                  auipc        zero, 1008444
                  ori          t6, sp, 128
                  sltiu        s8, s9, -421
                  srai         a6, a2, 3
                  slt          t0, ra, sp
                  slt          t4, s4, a3
                  srli         s4, s7, 27
                  sra          sp, s8, t0
                  slti         a1, zero, 1834
                  sub          t2, tp, t6
                  andi         a5, s0, 1233
                  or           t3, s11, a2
                  xor          s5, ra, a3
                  srli         sp, s3, 30
                  slt          a1, a5, s0
                  sltiu        s8, s4, -167
                  srli         t4, a3, 29
                  sll          a2, s1, s10
                  slli         tp, t0, 11
                  slli         tp, a0, 4
                  nop
                  addi         sp, t2, 450
                  sll          s6, a0, t1
                  sltiu        a4, t2, -504
                  addi         s6, a4, 1235
                  srl          s6, s8, a4
                  ori          t0, a0, -61
                  sub          sp, a6, a4
                  auipc        a2, 194450
                  xori         t6, t3, -372
                  auipc        s10, 965713
                  and          a2, s5, t2
                  sltu         s4, a3, t3
                  xor          t6, ra, s5
                  sltiu        s6, a0, -1870
                  sra          ra, a7, s3
                  andi         t3, gp, -372
                  ori          s5, ra, 1663
                  sll          a7, a6, a4
                  or           a5, a0, a6
                  nop
                  and          ra, t4, zero
                  ori          s7, zero, -1786
                  nop
                  addi         ra, s9, 395
                  ori          t6, s6, -875
                  xor          a0, t0, s7
                  nop
                  lui          a5, 221112
                  andi         s8, tp, 216
                  slti         a7, gp, -473
                  ori          a6, s11, -999
                  nop
                  srai         a1, sp, 3
                  ori          s4, zero, -1804
                  slti         s6, s1, -1746
                  xor          s10, s0, gp
                  xori         sp, s9, 872
                  addi         t5, a2, 419
                  srai         t6, t4, 12
                  sub          s1, s7, t6
                  and          a3, s9, a0
                  srli         a1, ra, 26
                  slti         s4, s7, 1145
                  auipc        t4, 528215
                  ori          t0, s8, 1411
                  sltiu        a2, s4, 1489
                  and          sp, t0, s3
                  srli         ra, s6, 24
                  or           a3, ra, t4
                  srli         t2, t6, 24
                  slt          t6, a4, s1
                  slt          a2, t0, gp
                  slti         s5, s0, 39
                  slti         t1, zero, -1186
                  xor          s5, a6, s10
                  sra          s10, ra, t4
                  slli         gp, s8, 27
                  xori         s4, a6, 444
                  lui          sp, 980002
                  lui          t6, 401862
                  or           a3, t5, a2
                  sub          a2, ra, a5
                  nop
                  ori          a3, a5, 1594
                  srli         t1, s5, 31
                  andi         s9, s7, -1113
                  xori         zero, s3, 928
                  lui          a7, 136133
                  slt          sp, s6, a3
                  sll          s9, s8, t0
                  sltu         t2, t4, s11
                  ori          t3, s7, 414
                  srli         t4, s6, 7
                  sltu         a2, zero, s1
                  sll          s1, tp, t3
                  and          s4, t3, t6
                  slt          ra, t2, s6
                  auipc        ra, 650310
                  srl          a1, a6, s0
                  auipc        sp, 377027
                  xori         t2, tp, -683
                  nop
                  srai         s9, s6, 28
                  auipc        sp, 918074
                  or           a2, sp, t5
                  add          s0, s11, t0
                  slt          t5, s0, t3
                  add          t1, tp, a4
                  xori         tp, a5, 981
                  or           s1, a5, a4
                  srai         s1, s0, 14
                  sra          t6, sp, s3
                  add          sp, s6, t0
                  srli         a6, t5, 31
                  add          tp, s4, a7
                  or           t0, a5, s2
                  srai         t4, ra, 29
                  xor          s8, t4, t3
                  srli         t4, s1, 3
                  andi         sp, s0, -1217
                  slt          s0, t3, s0
                  sltiu        a5, a4, -1452
                  andi         sp, t2, -427
                  srl          t3, a7, t3
                  ori          s0, t4, -647
                  and          t4, s7, ra
                  slt          a5, t6, s6
                  auipc        s9, 411511
                  sra          a2, s4, t0
                  and          t2, tp, t3
                  andi         a7, zero, 886
                  sll          ra, a3, s4
                  xori         s1, t3, 676
                  xor          a4, s7, t6
                  nop
                  srl          ra, a5, gp
                  xor          s7, s3, t1
                  xori         a0, s4, 1100
                  lui          t6, 434777
                  add          a3, ra, s4
                  srli         sp, zero, 6
                  sltu         s1, s9, a6
                  addi         s9, t1, 1354
                  ori          s6, a5, 789
                  sll          sp, t3, ra
                  nop
                  srli         t3, s4, 2
                  sltiu        a2, s3, -835
                  sra          a5, s5, s3
                  lui          s9, 660507
                  xor          s1, a1, a4
                  ori          a7, s4, 872
                  sub          s7, sp, s1
                  ori          a1, a5, -1286
                  or           t0, a0, s11
                  sll          gp, s6, s6
                  or           s10, tp, tp
                  sra          s7, s10, t3
                  lui          a0, 682552
                  slli         a2, a3, 2
                  xori         s5, tp, 2030
                  or           t4, s11, a7
                  auipc        gp, 798931
                  nop
                  sll          s9, s5, t4
                  srai         gp, t4, 14
                  sltiu        t0, s0, -342
                  xori         t4, s1, 723
                  srai         t6, sp, 11
                  sll          s8, a0, s10
                  and          a7, s0, s3
                  slti         t4, a3, -376
                  sltu         s6, t3, t0
                  srl          a5, s3, t5
                  or           a4, s8, a6
                  andi         a1, a7, 288
                  sub          t0, t5, a7
                  auipc        s9, 262706
                  srl          ra, a0, s9
                  auipc        a6, 173705
                  srai         a3, s5, 10
                  and          sp, s3, t4
                  slti         s5, s3, 886
                  sub          s0, s2, t0
                  sll          s9, s0, a6
                  xor          a6, t4, a0
                  sltu         a2, s1, a7
                  lui          ra, 897581
                  auipc        t1, 915462
                  xori         s0, sp, -1078
                  nop
                  or           a5, s0, s5
                  andi         gp, a1, 1214
                  sra          ra, a3, sp
                  xori         s1, a4, -462
                  and          t5, a1, t0
                  sltiu        t0, gp, 192
                  lui          t0, 206123
                  lui          t6, 812614
                  xor          a3, ra, a3
                  slti         s10, a3, -43
                  slli         t6, ra, 0
                  add          a7, t0, a3
                  sltu         s5, s1, s4
                  and          s6, s3, s10
                  addi         s0, t3, -1196
                  addi         s4, a3, -1081
                  srai         a4, s0, 15
                  sub          s4, gp, t5
                  xor          s9, a0, t2
                  xori         a1, t1, 1398
                  sra          a2, a2, s6
                  addi         t4, ra, 315
                  srli         s8, a7, 14
                  slli         s5, t6, 17
                  and          s9, t6, sp
                  nop
                  lui          t2, 121009
                  sra          s7, s4, s11
                  auipc        s8, 1012399
                  sltu         t5, a4, t0
                  nop
                  ori          t4, s3, -1441
                  slli         t2, s7, 26
                  slti         a1, s6, -1777
                  xor          s0, sp, a3
                  add          a4, a5, s8
                  lui          a2, 44592
                  or           ra, s0, t2
                  or           t6, a1, zero
                  slti         ra, s3, -2023
                  sub          gp, s0, s7
                  sll          t6, s2, a4
                  slt          sp, t0, s1
                  srl          t2, s0, sp
                  auipc        a4, 363241
                  srli         t2, t0, 1
                  xori         sp, a2, 874
                  xor          t6, ra, t2
                  srai         a7, t0, 19
                  srai         t2, s4, 3
                  slt          a7, s9, s1
                  slti         s10, a2, 811
                  addi         zero, a2, -1267
                  srl          t6, s6, t2
                  xor          t2, gp, t0
                  sub          t0, t1, tp
                  sltiu        s0, s7, -501
                  srai         t6, t2, 2
                  and          t6, s0, s4
                  slli         a5, s9, 10
                  or           s7, zero, s8
                  slt          s9, gp, t2
                  sltu         s0, a5, tp
                  sltu         s7, t2, s1
                  ori          ra, zero, 295
                  lui          a0, 6006
                  andi         s5, a0, 614
                  auipc        a6, 542127
                  xor          t4, s1, s5
                  srli         t5, ra, 11
                  sltiu        s10, t2, 114
                  sra          a5, s1, a2
                  srli         a3, a3, 24
                  sltu         s1, sp, t5
                  add          t0, gp, s3
                  addi         s6, s2, -93
                  srli         s4, s6, 3
                  auipc        t5, 518573
                  sub          tp, s3, t5
                  sra          sp, gp, a2
                  srai         s6, t5, 22
                  and          a5, a2, a6
                  addi         a1, t6, -1205
                  addi         s6, s5, -1050
                  andi         a1, s9, -469
                  sltiu        a6, t4, 857
                  slti         zero, t0, 342
                  slt          t3, s8, s11
                  auipc        s10, 440664
                  auipc        s8, 345952
                  ori          a6, t3, 731
                  xori         s1, s4, 205
                  slti         a1, a6, -1047
                  addi         t3, tp, 922
                  slli         s8, a0, 17
                  and          t5, s3, s11
                  or           a5, s8, s9
                  and          a7, a0, t4
                  sub          a2, t0, ra
                  srli         s5, a3, 3
                  xor          t1, t6, s5
                  sltu         t1, ra, tp
                  srli         s5, s3, 29
                  add          sp, s9, t4
                  addi         s4, a0, -43
                  nop
                  srli         zero, s6, 14
                  xor          t6, a1, s4
                  addi         a7, s2, -444
                  andi         s7, t0, -1866
                  slt          t5, gp, a7
                  or           s6, s11, t0
                  addi         tp, s10, 1699
                  xori         s10, s9, 812
                  auipc        sp, 755248
                  srl          s9, a2, t5
                  or           zero, s11, t4
                  srl          t2, s11, s9
                  nop
                  slt          t3, t0, s10
                  lui          s7, 1038188
                  xori         s5, s2, 948
                  add          a0, s11, t5
                  lui          ra, 429621
                  and          tp, a0, a2
                  andi         t1, s3, -1903
                  slt          ra, s6, t5
                  andi         tp, s5, 382
                  xori         a6, sp, 24
                  slli         s10, a3, 26
                  and          s7, zero, t4
                  sra          s8, t2, t3
                  xori         a1, t0, 546
                  slti         s4, s6, -1977
                  ori          a3, a2, -938
                  or           s8, a1, s9
                  srl          s7, a5, t2
                  srl          a4, t6, s11
                  srl          a4, t2, tp
                  xori         s4, s7, 1219
                  add          s4, s0, s11
                  srli         s8, gp, 13
                  sltiu        a5, s1, 269
                  xor          s6, t4, a4
                  andi         tp, a7, -1615
                  slt          zero, a4, a0
                  sra          a2, zero, gp
                  addi         s6, s6, 646
                  xor          s7, s9, a2
                  srl          a3, t4, s4
                  sll          s4, s10, a4
                  slt          a3, a7, s6
                  sltiu        s9, a1, -1149
                  auipc        a7, 162574
                  slti         ra, s3, -1144
                  auipc        t6, 848844
                  nop
                  and          t6, t1, t0
                  nop
                  srl          gp, sp, s11
                  andi         a1, a7, -682
                  srli         s1, s7, 11
                  sra          gp, a6, gp
                  sra          s6, s5, t2
                  slti         sp, t6, 1365
                  xori         s6, s0, 177
                  lui          s5, 59307
                  ori          a6, ra, -1142
                  sll          a3, a2, a7
                  nop
                  andi         zero, t1, -1582
                  xori         a4, s6, -808
                  slli         a4, s0, 9
                  add          t5, s5, a3
                  sub          s9, t6, tp
                  xor          a3, a7, s11
                  nop
                  sub          t2, a4, s4
                  auipc        zero, 402715
                  and          ra, zero, sp
                  sltu         a3, t4, t5
                  slli         ra, s2, 4
                  nop
                  srl          a6, a5, s9
                  xor          sp, s6, s3
                  and          t2, a1, ra
                  sltu         t4, a0, s1
                  sra          a0, s10, t5
                  and          s5, s10, tp
                  andi         zero, s11, 1076
                  srli         t4, s5, 14
                  srai         s0, a6, 18
                  addi         zero, s2, -162
                  addi         a3, a5, 207
                  sltu         s5, s4, s4
                  sra          a0, t2, s6
                  and          a5, t1, s11
                  srai         s6, s11, 6
                  addi         t1, t0, -1845
                  auipc        gp, 451030
                  lui          a3, 344819
                  add          a7, s2, s8
                  xori         gp, s3, 22
                  slli         a1, s4, 8
                  xor          ra, s9, sp
                  lui          a6, 921440
                  sll          s4, s3, a0
                  slti         s6, s0, -1870
                  slti         a7, t6, -608
                  sra          tp, a2, t1
                  slli         t0, s7, 21
                  sub          a1, s4, s1
                  sub          s1, t6, s4
                  and          a6, s0, s1
                  sll          s8, t6, s4
                  nop
                  sltiu        s4, s0, 2040
                  or           s6, s3, t5
                  and          t3, s8, a2
                  xor          s4, s7, t3
                  sltiu        sp, a6, -2022
                  andi         t0, sp, -2043
                  sub          s7, s2, a3
                  sltu         a3, a5, a5
                  xori         a1, t3, 1487
                  lui          a1, 272004
                  sub          s5, t6, s7
                  xori         a4, a5, 496
                  sll          s5, a7, s4
                  ori          a5, t6, 934
                  slti         s1, a1, 41
                  sll          a6, t2, s3
                  sra          t6, t3, t4
                  sub          s10, s3, s5
                  ori          s5, a1, -1780
                  add          a7, t6, a3
                  sub          t6, gp, a0
                  auipc        s5, 666559
                  sub          a5, s9, a6
                  slt          tp, t2, ra
                  slli         a5, t6, 15
                  andi         a4, s0, 1505
                  nop
                  srli         a2, s4, 22
                  srli         s7, a1, 5
                  sra          a3, t0, s4
                  sra          t5, t3, t0
                  lui          tp, 345382
                  add          s0, a3, t5
                  slti         a0, t2, 828
                  add          s6, sp, a5
                  sub          s10, a4, t2
                  auipc        s10, 541837
                  auipc        s5, 314911
                  xor          s9, s3, s11
                  and          t5, s0, t1
                  slli         a1, s2, 17
                  nop
                  lui          s1, 262950
                  ori          a3, t1, -71
                  sra          s6, a6, t1
                  add          s9, tp, s8
                  srai         t2, a6, 22
                  sltu         gp, t1, s4
                  sll          s8, t4, a1
                  srli         tp, t4, 4
                  xori         sp, gp, 1880
                  addi         gp, a6, 1222
                  nop
                  srl          a3, a0, s7
                  nop
                  andi         t0, gp, -1437
                  or           t3, t5, s3
                  nop
                  xor          a2, s5, s11
                  and          a0, ra, t6
                  or           s9, s7, s3
                  srai         t5, s6, 2
                  and          gp, a0, s9
                  srai         a0, ra, 31
                  or           s6, t2, s9
                  add          s4, a2, s7
                  slt          t0, a7, s6
                  slli         ra, a3, 0
                  addi         a7, t3, 1877
                  srl          t0, a2, a2
                  xor          s9, t4, zero
                  ori          t1, a7, 2016
                  sltiu        zero, s6, 293
                  ori          t2, s0, -1127
                  lui          t2, 179583
                  add          s9, t2, s2
                  srli         a7, s2, 24
                  ori          t3, s8, -686
                  slt          t6, t4, t0
                  lui          a3, 152323
                  or           a1, a5, a1
                  addi         s9, s1, 1726
                  sll          s5, s5, s7
                  slli         a6, s6, 0
                  andi         t6, a2, -226
                  slti         t5, tp, -198
                  ori          s4, sp, -768
                  srl          a4, t1, s7
                  slt          s6, s8, a3
                  nop
                  lui          s10, 78213
                  slti         a2, s8, -1109
                  srai         t6, a5, 30
                  add          t1, t2, s4
                  slti         s10, zero, -1377
                  slti         s6, ra, -264
                  sltiu        s6, s6, -1470
                  and          s4, zero, s6
                  or           s6, s0, t5
                  addi         gp, a3, 757
                  and          s5, s5, a2
                  sub          s7, t4, a4
                  nop
                  slt          t2, t5, s2
                  ori          a1, a6, 1426
                  and          a0, s8, s4
                  lui          s5, 729400
                  slti         a1, a2, 747
                  sltu         a6, s0, t4
                  andi         t5, s4, -504
                  addi         zero, zero, 831
                  andi         a0, s11, -828
                  sub          s1, a1, s10
                  srl          t0, a7, sp
                  slli         a7, a5, 22
                  xor          s9, t2, s7
                  sub          s7, t0, s9
                  add          t6, gp, s11
                  add          s0, a4, t4
                  xori         a2, s11, -1899
                  slti         a0, s0, 521
                  and          t5, a6, gp
                  srl          tp, s9, s6
                  and          t6, t4, s7
                  lui          s1, 308537
                  sltu         s6, t3, t3
                  slti         a4, a2, 499
                  sltiu        a4, sp, -15
                  xori         a3, tp, -70
                  slti         tp, s1, 1105
                  auipc        t4, 854400
                  xor          s4, s7, tp
                  and          a1, zero, s11
                  nop
                  slti         s4, s4, -1163
                  nop
                  srai         t5, sp, 24
                  slt          a2, tp, a5
                  ori          s9, zero, -1159
                  sub          s6, a2, s9
                  sltu         gp, a0, s0
                  sll          t2, a7, sp
                  ori          t4, zero, 960
                  sll          t4, t4, zero
                  sltiu        a0, t3, 885
                  sltu         t0, a7, ra
                  lui          t6, 378058
                  sra          ra, zero, s0
                  and          zero, a2, s11
                  nop
                  lui          a7, 644963
                  andi         t3, a1, 2
                  srli         s7, t0, 5
                  add          a4, tp, s5
                  xor          s1, a2, sp
                  sll          t6, a7, a5
                  lui          s10, 785820
                  andi         s6, t1, -1006
                  sltu         t6, s4, t3
                  srl          sp, a5, s9
                  sltu         a5, s7, a2
                  sltiu        s9, s10, -1091
                  or           t3, t2, s11
                  sub          tp, a2, t5
                  sltiu        s6, t2, 1581
                  xori         zero, a2, -583
                  srai         a0, t1, 2
                  sll          s6, t6, s1
                  nop
                  sltiu        a5, a6, -1436
                  xor          s8, a0, a7
                  or           s1, s11, ra
                  or           ra, t2, s11
                  slti         t1, gp, -520
                  auipc        ra, 736970
                  slli         a2, a5, 9
                  and          t3, t0, ra
                  andi         s8, s8, 1326
                  xori         a5, a5, 14
                  addi         gp, s7, 131
                  and          t2, t5, s11
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           a7, 0x80000000
                  li           a5, 0xc520c707
                  li           a4, 0xffffffff
                  li           tp, 0xffffffff
                  li           s9, 0x0
                  li           t4, 0x54fee1af
                  li           ra, 0x0
                  li           t2, 0x0
                  li           s8, 0x0
                  add          a7, a7, ra
                  auipc        t2, 882574
                  sub          s9, s9, a4
                  sub          t2, s8, t3
                  add          t2, t3, t4
                  lui          tp, 989187
                  addi         t4, a4, 1150
                  auipc        a4, 316933
                  lui          a7, 685480
                  lui          ra, 853093
                  add          s9, a7, ra
                  auipc        t3, 83464
                  add          a5, t3, ra
                  lui          t4, 118829
                  auipc        a5, 747475
                  add          t3, a7, s9
                  addi         s9, t2, -730
                  addi         s9, s8, -1062
                  lui          t2, 293996
                  addi         t3, a5, -1173
                  add          a4, a5, a4
                  sub          t3, tp, t4
                  sub          a7, a5, tp
                  nop
                  add          tp, t3, ra
                  sub          s8, t3, a4 #end riscv_int_numeric_corner_stream_6
                  nop
                  sltu         t6, zero, sp
                  nop
                  srai         s9, s9, 12
                  srli         s1, s6, 1
                  sra          s10, s8, s7
                  lui          s0, 756291
                  srli         s8, t4, 29
                  xor          a4, s5, s5
                  auipc        zero, 537007
                  and          a6, t3, t0
                  srli         a4, a5, 5
                  srai         tp, t3, 13
                  ori          s7, s7, -1585
                  nop
                  srl          a4, tp, a5
                  auipc        a7, 124677
                  auipc        a4, 212983
                  add          t4, t6, s7
                  sltiu        a7, t4, 1228
                  xori         a4, t6, -451
                  sltu         t3, s1, t0
                  srl          s1, s3, t0
                  sll          s4, s1, ra
                  xori         s1, s6, 327
                  srai         t4, s4, 4
                  nop
                  xor          s10, a0, t3
                  nop
                  slli         tp, t4, 9
                  srli         tp, s7, 6
                  xor          s6, gp, gp
                  addi         ra, a0, -502
                  addi         s1, a1, 901
                  sltu         a1, t5, s2
                  srai         a7, s11, 12
                  slti         s1, s10, -1478
                  slti         sp, t6, -1988
                  add          t5, s3, s3
                  auipc        s5, 206068
                  addi         a5, s0, 753
                  ori          t5, zero, -1645
                  lui          s1, 751571
                  add          a2, t5, s11
                  srai         t3, s6, 4
                  andi         s8, zero, -734
                  srl          a7, gp, s11
                  xor          s9, t1, a5
                  andi         s9, a2, -142
                  sra          a0, t4, s7
                  srl          t0, s5, a2
                  sltu         a3, s11, s8
                  sltu         t3, a3, s7
                  andi         t2, sp, -1223
                  lui          ra, 325653
                  slti         a3, sp, -465
                  srai         s9, t5, 17
                  andi         a2, t4, 1496
                  addi         s0, a1, 492
                  add          t4, s2, a5
                  slli         t2, t2, 28
                  ori          s8, t2, -1567
                  srl          a5, a3, zero
                  slli         ra, gp, 17
                  addi         s6, a7, -1133
                  or           s7, s1, s9
                  sltiu        s5, a1, 1303
                  andi         ra, s4, 981
                  nop
                  sltu         gp, a4, s2
                  lui          a3, 485145
                  slli         t6, a1, 15
                  slt          s5, s5, s9
                  or           a3, s4, s2
                  nop
                  sltu         s8, a0, s5
                  ori          s4, tp, -451
                  xor          s5, a0, gp
                  and          s10, sp, s9
                  auipc        s1, 309149
                  sll          s5, a2, s0
                  xor          s9, t3, s9
                  xori         gp, t2, -1603
                  nop
                  sll          s10, zero, zero
                  sltiu        ra, s1, -836
                  or           t6, a7, t3
                  sltiu        sp, t0, 1220
                  add          ra, s1, tp
                  ori          t6, a6, -1005
                  sra          tp, a7, s1
                  addi         t1, a4, -1873
                  sltu         t2, t3, t2
                  lui          s0, 65408
                  addi         a7, s6, -968
                  srl          sp, t0, s0
                  sll          s5, a2, s8
                  xori         a7, s9, 989
                  sltiu        tp, s9, 1129
                  lui          a2, 47858
                  and          a2, s7, s2
                  srl          a1, tp, a2
                  slt          zero, s0, s8
                  lui          a1, 699300
                  addi         t5, t0, 2040
                  slt          a7, s4, s10
                  and          tp, t1, s1
                  auipc        a3, 387517
                  addi         ra, s8, -77
                  addi         s4, t5, 1581
                  sub          t5, a3, a4
                  sltiu        s0, t6, 1218
                  nop
                  srl          a3, s3, a0
                  nop
                  slti         tp, t2, -51
                  sltu         t4, t1, s7
                  add          t2, t3, t4
                  slt          s7, t4, s11
                  srl          s8, a2, t6
                  lui          tp, 99141
                  addi         ra, s7, -281
                  srli         s7, a1, 8
                  and          t5, s1, s3
                  and          a1, a1, s0
                  sltiu        a4, t3, 1640
                  nop
                  or           t1, a3, a3
                  addi         s5, s6, -2006
                  nop
                  and          s4, s4, s6
                  slt          s4, t6, t3
                  slli         t3, a5, 0
                  sltu         a0, s0, tp
                  sra          zero, sp, s4
                  sub          t1, s0, a4
                  srl          a4, s7, s3
                  sll          t4, t3, s10
                  slti         t6, t1, 1867
                  add          zero, s2, s7
                  sltu         a0, t2, s2
                  addi         s0, a3, 1967
                  add          t3, a6, t2
                  auipc        s8, 34559
                  sll          s0, s7, s11
                  sltiu        s8, t0, 763
                  sra          t4, a2, a1
                  or           gp, gp, tp
                  auipc        s5, 929804
                  sra          s6, t2, s1
                  ori          t0, s2, 687
                  slli         s7, t4, 24
                  xor          t2, s3, t6
                  auipc        a3, 706105
                  srli         sp, t2, 29
                  lui          a5, 802882
                  sltiu        a3, a0, 1735
                  nop
                  or           s0, t5, s8
                  and          a7, zero, s11
                  xori         a5, t6, -528
                  sub          s8, s6, a1
                  and          ra, gp, a5
                  ori          a6, s10, 407
                  srli         t2, a2, 28
                  slt          t6, a6, a3
                  srli         s4, s11, 12
                  srli         t3, tp, 11
                  srl          t0, s4, s9
                  or           ra, a6, s2
                  srl          a0, s7, ra
                  slti         gp, s4, 1670
                  xor          zero, s8, s1
                  lui          a7, 1037185
                  sltiu        sp, s2, 470
                  xori         a5, tp, -1965
                  slt          t1, a3, a4
                  srl          s6, t4, s4
                  sub          t4, a0, ra
                  addi         s4, a7, 89
                  or           s4, a3, t6
                  or           t0, s6, tp
                  ori          s8, a3, 912
                  ori          t0, a5, -417
                  andi         gp, t4, 1338
                  add          t6, t1, a3
                  ori          t6, s4, 1118
                  slt          s1, s4, s6
                  sll          ra, t4, zero
                  addi         s10, s11, 1014
                  or           a7, s10, s11
                  sub          s6, s5, s11
                  sub          s1, a4, s5
                  addi         gp, s3, 1189
                  sltiu        tp, a7, -2019
                  slli         tp, a0, 7
                  xori         s5, s3, -1699
                  nop
                  slti         t1, s7, 1824
                  slti         t3, a3, 1219
                  srli         s9, a2, 30
                  or           t3, s6, a3
                  nop
                  srl          s10, a7, s6
                  nop
                  slt          t6, a7, s5
                  and          a0, t2, a4
                  srai         t5, s5, 9
                  xori         s7, s6, -513
                  xori         a3, gp, 1880
                  slli         gp, a5, 25
                  or           a7, s5, s7
                  sltiu        t0, s2, -1974
                  addi         t2, t4, -138
                  and          zero, s4, s5
                  addi         a3, t0, 2035
                  lui          tp, 839145
                  add          t1, tp, sp
                  andi         gp, sp, 560
                  srli         t3, gp, 21
                  xor          s4, t3, s11
                  add          t5, s1, s10
                  sub          t0, a7, s7
                  xor          gp, s8, t1
                  srli         a4, t4, 25
                  srli         t1, a4, 25
                  slt          a6, a6, t6
                  slt          a2, t3, s2
                  sub          s6, a1, t0
                  sll          a1, tp, a7
                  xori         s7, s9, -1071
                  addi         a5, a2, -1414
                  nop
                  sltu         a1, t0, zero
                  and          a6, sp, s3
                  and          t0, t2, s0
                  sltu         s4, a5, a5
                  slti         a4, a0, -1965
                  srai         s10, ra, 6
                  addi         t4, s3, -1232
                  slt          t2, t4, s0
                  ori          gp, s2, -1778
                  srl          s1, s7, a6
                  slli         s10, a6, 30
                  sltu         s6, t1, a6
                  or           sp, s2, t4
                  addi         a3, s10, 1235
                  sra          s7, s3, t2
                  nop
                  andi         t1, a5, 254
                  srli         s6, s6, 19
                  addi         t5, s2, 45
                  lui          t6, 317342
                  add          a4, t3, a3
                  auipc        sp, 382576
                  xor          t5, s2, s2
                  sub          t0, a5, s0
                  auipc        a2, 251752
                  slt          s6, gp, s3
                  sll          s7, a2, s10
                  auipc        a2, 254427
                  srli         t4, s8, 17
                  xori         t2, s11, -1313
                  and          t2, t4, a4
                  sra          t4, tp, t0
                  and          t0, t6, s8
                  sub          t4, s6, t0
                  slti         a1, gp, 1576
                  addi         sp, a1, -1838
                  and          t1, s5, s1
                  srli         a4, s1, 25
                  auipc        t5, 280846
                  xor          a2, ra, t6
                  srli         zero, a6, 3
                  slli         s0, t1, 12
                  add          a6, t1, t4
                  slti         a3, s0, -1805
                  sra          a7, gp, s0
                  srl          sp, s8, t5
                  andi         s7, a0, 737
                  lui          t0, 766621
                  sll          a3, gp, s9
                  srli         s1, t5, 24
                  xori         s9, s0, -1800
                  sltiu        t2, t1, 1958
                  slli         a1, t1, 6
                  and          s6, s4, s2
                  sub          a4, s2, a5
                  sltu         a2, s5, a0
                  sltu         a2, t5, s9
                  sra          ra, tp, t4
                  lui          s10, 91891
                  nop
                  slt          t3, s5, ra
                  add          s7, t4, t1
                  sltu         ra, a6, s6
                  srli         zero, a7, 16
                  slti         t1, gp, -1926
                  slli         a1, sp, 8
                  ori          s1, s4, 1811
                  slli         s4, s1, 26
                  auipc        s8, 514414
                  srl          s0, s7, zero
                  lui          s8, 843222
                  nop
                  lui          t0, 903501
                  sub          t1, a0, a7
                  srl          t6, a4, s7
                  slli         a7, s4, 28
                  sltiu        sp, s7, 508
                  slt          s9, t1, s4
                  xori         a1, a1, 918
                  ori          a1, a4, -678
                  srli         t2, t2, 17
                  andi         t6, a7, -1737
                  sltu         s1, t6, t5
                  slt          s4, t5, s10
                  sra          ra, ra, a1
                  srli         t3, a7, 6
                  lui          s4, 157132
                  auipc        a7, 100006
                  sll          gp, gp, a2
                  andi         s10, t2, -127
                  and          t4, a7, gp
                  slli         a0, t1, 7
                  srai         t4, s9, 26
                  add          zero, a4, sp
                  sub          a7, s10, t3
                  slti         s6, ra, 501
                  and          a3, s11, s10
                  srl          s4, t0, a7
                  auipc        s6, 534411
                  slt          t4, sp, t4
                  srli         s0, t1, 6
                  or           a1, s11, a4
                  sub          a6, ra, a4
                  ori          s5, s11, 1035
                  ori          a2, a0, -1359
                  sll          a2, a0, s4
                  sub          s4, t5, t6
                  slti         sp, t6, 2006
                  and          a5, ra, t2
                  ori          a3, t5, -1542
                  srl          zero, zero, ra
                  ori          s4, s11, -372
                  sll          a4, s6, t5
                  slt          s9, s1, a3
                  slli         a6, s4, 11
                  ori          a2, t2, 915
                  nop
                  slti         t5, tp, 458
                  and          s7, zero, s1
                  xori         a6, t2, -1894
                  nop
                  slt          a1, a7, zero
                  and          t0, a0, s7
                  lui          tp, 732086
                  xor          s7, s0, t4
                  srai         t0, a6, 24
                  srli         a2, a7, 4
                  auipc        ra, 17112
                  ori          s5, t5, 1386
                  sll          a3, s7, s3
                  srl          t2, a2, a5
                  add          a7, sp, t4
                  xor          s9, t0, s6
                  srli         s10, s4, 30
                  sra          zero, t2, a1
                  add          s1, a2, s10
                  xori         a1, s9, -1799
                  andi         t4, t3, 330
                  slti         t2, a3, -1704
                  sub          a4, t3, a4
                  auipc        a7, 916199
                  sra          t6, s11, s7
                  slli         sp, tp, 16
                  srai         a6, s7, 28
                  xori         t3, a1, 1477
                  ori          s10, s10, -1520
                  slli         t1, s8, 0
                  auipc        a5, 590004
                  slli         s5, s5, 10
                  sltu         a7, s6, s9
                  sltiu        s5, a5, -877
                  slt          s4, s6, a2
                  lui          a1, 453814
                  srl          a0, ra, s7
                  srli         a5, zero, 24
                  xori         s4, t3, 807
                  nop
                  slt          zero, t6, a6
                  auipc        tp, 668424
                  ori          zero, t1, 1703
                  sltu         s5, s11, s2
                  auipc        tp, 967585
                  lui          s7, 472555
                  and          a6, s7, s11
                  xori         a0, a2, -435
                  sltu         a0, s5, s5
                  ori          t3, s11, -1806
                  xor          s1, t3, sp
                  slli         gp, s6, 0
                  ori          t2, s10, -642
                  ori          a3, ra, 575
                  ori          ra, a3, 656
                  sra          t4, s1, t4
                  slt          t0, s0, t6
                  srli         t2, s8, 2
                  sll          a7, t5, s11
                  ori          t0, a3, -1837
                  and          t0, t1, s1
                  lui          gp, 112332
                  sltiu        s1, gp, -1577
                  ori          a6, s8, -934
                  nop
                  auipc        a3, 891578
                  sra          t0, s6, zero
                  sra          t2, tp, s7
                  slti         t3, tp, 721
                  sll          a7, t0, a6
                  slti         t2, a2, -452
                  addi         a5, s10, -700
                  sub          a6, s10, t0
                  sub          t6, tp, s6
                  srl          t5, t5, s11
                  sltu         a4, zero, t6
                  srai         a7, s8, 10
                  or           t4, ra, s11
                  srl          a0, s0, s8
                  sll          s1, a7, s0
                  addi         s1, t2, 623
                  ori          a5, s8, -793
                  andi         zero, a5, 1398
                  xor          a2, s8, s2
                  and          a1, a4, tp
                  lui          t5, 1027098
                  xori         a3, a4, 1824
                  lui          a1, 525637
                  auipc        t0, 137674
                  sll          s4, s3, t2
                  slti         zero, ra, -1295
                  srli         tp, a7, 19
                  sra          s1, a7, a2
                  auipc        t5, 722879
                  addi         a6, a7, -1338
                  ori          t5, a2, -1462
                  sll          a2, s6, a6
                  sltu         t5, s11, s11
                  slt          a2, s7, t4
                  sltiu        t6, s4, -1514
                  srai         zero, a6, 25
                  srai         a2, a4, 16
                  sra          s1, a4, a7
                  sltiu        a5, a4, 1802
                  add          sp, s7, a5
                  sltiu        sp, s7, 200
                  slt          s7, t0, a3
                  lui          t3, 9305
                  sub          a4, s6, ra
                  lui          a1, 430476
                  ori          t1, a4, -1290
                  srli         t4, gp, 9
                  xori         a5, a1, -1802
                  srl          t3, s8, a2
                  xor          a0, a4, s11
                  slli         s0, s5, 13
                  slli         s5, t4, 22
                  auipc        t2, 834638
                  nop
                  srai         t6, a7, 2
                  add          a1, t0, s6
                  slt          tp, a7, s0
                  srl          t4, t6, s6
                  srai         a3, s3, 2
                  slt          a2, s6, ra
                  srli         tp, t1, 26
                  andi         gp, tp, -1588
                  sub          a1, s0, a6
                  lui          s8, 165039
                  sll          sp, tp, s5
                  ori          a5, a3, -1319
                  andi         t6, s5, -1382
                  and          a4, t1, t0
                  andi         a1, s9, -1633
                  andi         s4, s10, 1239
                  srli         s10, t0, 26
                  add          s9, ra, s7
                  slli         ra, sp, 21
                  sltu         a0, s4, tp
                  srli         tp, a7, 25
                  xor          a7, s0, t2
                  lui          zero, 605290
                  sltu         a2, s11, s10
                  srai         gp, t1, 22
                  xori         s1, t2, -1210
                  or           s7, t2, tp
                  slti         a6, a3, 630
                  add          a2, s4, a6
                  auipc        s9, 408591
                  ori          sp, gp, 1437
                  andi         a5, gp, 2046
                  and          a2, s1, t0
                  srli         s6, s2, 1
                  and          t3, s3, ra
                  sltiu        a2, t3, -1301
                  and          a7, s1, s9
                  sltu         zero, s8, zero
                  sub          gp, t6, zero
                  andi         s1, a0, -1672
                  srl          gp, s5, s3
                  slli         a5, t0, 26
                  xor          t4, a1, a2
                  slt          a7, a3, sp
                  add          a3, t5, a0
                  or           a7, a0, gp
                  ori          t2, s3, 1871
                  xor          a7, t0, a6
                  sra          s7, sp, t4
                  add          a0, s8, tp
                  ori          a6, s9, -798
                  ori          t5, t3, 515
                  or           s8, s5, ra
                  xor          a7, a0, s4
                  lui          a7, 547004
                  sll          a1, t3, s9
                  sltu         t2, s1, s2
                  srli         t0, a2, 4
                  srli         s8, s10, 19
                  and          a1, t0, t2
                  and          t6, a3, s8
                  sub          ra, s4, s0
                  andi         ra, a7, 812
                  add          a2, s11, a7
                  sra          s4, t6, a1
                  lui          ra, 114785
                  sltu         s5, s0, a6
                  slt          s5, t3, zero
                  slli         t1, a5, 11
                  slli         a7, s3, 18
                  andi         s0, a1, -587
                  add          sp, a3, s10
                  sra          a4, sp, s1
                  lui          a4, 356035
                  sll          sp, t5, a5
                  srai         a2, t1, 6
                  srli         a7, t2, 1
                  lui          t4, 977568
                  sub          a2, a0, s5
                  nop
                  slti         s9, a5, 1564
                  auipc        t1, 813193
                  slli         s6, s0, 17
                  sub          zero, t5, sp
                  srai         a2, s8, 19
                  sltiu        a7, a0, 1201
                  add          s10, s0, s4
                  nop
                  and          t2, t1, a1
                  sll          t4, s2, s9
                  slti         t0, t5, -1055
                  sll          s6, t4, gp
                  srl          s10, a2, ra
                  srl          ra, t0, t4
                  or           a4, t3, ra
                  addi         s8, s8, -864
                  slli         s8, s8, 17
                  slt          s4, s8, s6
                  lui          t6, 672999
                  addi         a0, s6, 993
                  add          s0, ra, s0
                  sub          t2, a7, a3
                  ori          s9, s5, -828
                  or           t3, a4, t1
                  slt          sp, t3, t0
                  sltu         s6, s2, a7
                  sub          gp, a0, t2
                  slt          zero, sp, t0
                  srl          t0, a2, s0
                  srai         zero, t6, 11
                  sll          t1, s0, s0
                  andi         s8, t2, -1177
                  srli         a6, s0, 29
                  sltiu        gp, t6, 887
                  auipc        a4, 82675
                  srai         t6, t6, 28
                  sra          gp, a5, a6
                  sub          a0, a1, ra
                  sub          sp, s9, s1
                  srli         t0, a2, 8
                  srli         tp, a6, 12
                  nop
                  slli         t0, sp, 22
                  srai         zero, a6, 16
                  xor          a7, t4, s10
                  xori         t6, s8, 275
                  add          s1, ra, s10
                  srai         t0, a0, 14
                  slt          t6, a0, a4
                  sra          a2, t0, t5
                  slti         a4, a1, 159
                  ori          t4, t5, 1739
                  sltu         s7, t4, a3
                  ori          a0, t0, -41
                  auipc        s9, 893202
                  or           a7, s11, t4
                  xori         t4, tp, 1716
                  auipc        sp, 907800
                  sra          s10, s0, a0
                  xor          gp, a6, t3
                  add          t2, a6, a3
                  sltu         t5, gp, s7
                  nop
                  sra          a1, t6, t3
                  and          a7, a1, a1
                  and          t1, zero, t5
                  sub          s4, t4, s7
                  slti         a7, a6, -222
                  nop
                  slt          t6, a4, t4
                  xor          s9, t1, a0
                  srli         ra, s10, 19
                  add          a2, ra, a2
                  xor          s7, s1, a6
                  srl          t1, ra, a3
                  sub          s1, t6, t3
                  sltiu        a4, t0, 788
                  or           s8, t0, s4
                  srai         s7, s3, 0
                  or           a2, s0, t3
                  or           a0, s8, s9
                  sra          s5, s9, a3
                  addi         a7, a6, -462
                  srai         a7, t0, 17
                  or           a6, s11, sp
                  xor          a4, s1, t3
                  ori          t5, t0, 790
                  slti         t3, t5, -565
                  xor          gp, a0, t2
                  auipc        tp, 1025095
                  slt          s9, a4, a7
                  slt          tp, s10, s2
                  ori          s9, a6, -301
                  nop
                  lui          ra, 855271
                  slt          s9, zero, zero
                  sll          s9, t3, s10
                  sltu         ra, s7, s7
                  slli         s8, s4, 18
                  add          tp, t5, s8
                  srli         zero, a5, 28
                  xori         t0, t6, 882
                  add          s0, a1, s11
                  add          s0, a7, t2
                  nop
                  auipc        tp, 511537
                  slt          a2, a3, a3
                  sll          t4, s11, a5
                  xori         s10, a3, 1980
                  slt          t5, a2, s2
                  sll          s8, t0, t1
                  and          a3, a1, a6
                  auipc        sp, 456092
                  and          s10, s4, s8
                  sra          s4, t5, s11
                  and          a1, ra, a3
                  sra          s8, s11, s8
                  slti         t5, s4, -227
                  nop
                  auipc        a4, 736397
                  sra          s9, s11, a7
                  srl          s9, s2, sp
                  slti         t3, gp, 1611
                  xori         gp, t6, 1163
                  nop
                  srl          t0, ra, s1
                  auipc        s7, 180199
                  xor          s4, gp, s11
                  sub          a0, t3, a0
                  srai         s4, t0, 23
                  xori         s1, t6, 1598
                  sra          s1, a0, s3
                  auipc        s9, 633692
                  add          s5, a2, s6
                  xor          s7, a5, s10
                  sltiu        s0, zero, -1456
                  slli         t3, zero, 30
                  xor          t2, a1, ra
                  sll          t2, ra, t1
                  sltu         s1, a0, sp
                  and          t3, s10, s8
                  andi         t3, s2, -1111
                  xor          tp, s8, a7
                  srli         zero, t6, 28
                  sra          a5, a5, s2
                  sra          s4, a1, s5
                  sltu         a7, t6, a6
                  ori          s4, s2, 631
                  add          ra, s11, s11
                  xori         t3, a1, 1345
                  sltu         a7, zero, a7
                  slli         s9, s4, 22
                  lui          a4, 652335
                  nop
                  slt          zero, a6, s4
                  andi         s0, s6, -1621
                  slti         a5, s10, 518
                  xor          a7, s8, t5
                  or           a5, s5, s6
                  slti         t0, a2, 906
                  srli         a3, a4, 6
                  ori          a0, a6, 1958
                  lui          t5, 134608
                  and          s4, s3, t3
                  auipc        s4, 192817
                  add          s0, t1, s2
                  slti         t3, a2, -606
                  xor          s1, a7, t5
                  srl          s6, s0, t5
                  andi         a3, t1, 1064
                  add          s9, s6, s1
                  ori          s1, s3, -249
                  sll          a7, t1, s11
                  srai         a7, t0, 24
                  ori          t6, a5, -1870
                  and          t1, ra, a6
                  slti         t4, a7, -1130
                  srl          a1, a3, s6
                  auipc        t5, 974655
                  sra          ra, s5, t4
                  slti         tp, gp, -1511
                  sra          zero, tp, sp
                  add          gp, a5, t1
                  sub          ra, a2, t0
                  srli         s8, a3, 23
                  andi         t0, s0, 502
                  sub          t3, s5, a5
                  andi         s1, s11, 1176
                  sll          zero, s9, t3
                  xor          t5, a3, t3
                  and          sp, a4, a7
                  srai         tp, t3, 17
                  ori          a5, s3, -1136
                  addi         a4, s9, 1121
                  slli         s6, t4, 17
                  slli         tp, t1, 28
                  slti         zero, s6, 373
                  auipc        t4, 939906
                  nop
                  slt          s8, gp, s11
                  nop
                  lui          sp, 758913
                  ori          s7, t3, -765
                  slli         s1, zero, 22
                  slli         s0, t1, 28
                  or           a6, t6, t4
                  sub          s8, a7, t6
                  xori         t2, tp, 1581
                  sll          s10, a5, t2
                  addi         a0, s7, 1061
                  xor          s5, zero, s11
                  andi         s1, s8, -1533
                  slli         t0, s6, 27
                  sltiu        a5, t1, -114
                  or           a3, s11, a7
                  slt          s4, s8, a0
                  xori         s0, a6, 1274
                  slli         a1, s8, 10
                  sltu         gp, s3, s8
                  xori         t4, a0, 401
                  xori         s4, t5, -2013
                  ori          zero, a0, 1901
                  sltu         a0, s9, s2
                  slli         ra, a5, 21
                  slt          t6, sp, a0
                  andi         t4, a4, 1342
                  xori         a1, s0, -1007
                  slt          t4, a4, s2
                  srl          a5, s10, a7
                  slt          a2, a5, zero
                  sltu         t3, a4, a1
                  auipc        s9, 676829
                  sltu         s9, s0, t6
                  slt          t4, a4, a0
                  slt          zero, t5, zero
                  addi         a5, a2, -1964
                  andi         t1, t1, -1610
                  sub          gp, s2, ra
                  addi         s9, s5, 911
                  slti         t6, s9, 1873
                  slt          s5, t4, t0
                  slli         zero, a7, 9
                  add          t2, s8, a0
                  srli         s1, ra, 17
                  nop
                  srli         t4, a1, 7
                  sra          t0, s2, s3
                  and          t1, a0, s2
                  sltu         a2, s8, a5
                  srl          s4, sp, a5
                  and          s7, t2, a6
                  nop
                  srl          a3, a7, s4
                  slt          t1, a6, a7
                  auipc        a5, 913483
                  auipc        ra, 259698
                  addi         t0, a2, -1813
                  sltu         s10, a0, a3
                  nop
                  slti         s1, t5, 311
                  sra          s10, gp, s5
                  lui          s0, 591995
                  or           t2, t0, t2
                  sll          a6, a7, a5
                  and          zero, s2, s4
                  slli         t4, t6, 21
                  srli         ra, s1, 28
                  lui          t5, 983876
                  addi         tp, a3, -334
                  andi         t0, s5, -2013
                  sll          s5, a1, s8
                  nop
                  or           s1, s1, t4
                  sltu         s5, tp, s2
                  xori         zero, a5, -1902
                  sltiu        a5, a5, 114
                  slli         t3, a5, 2
                  lui          s6, 251207
                  slt          s6, a0, s11
                  sra          s4, a5, a3
                  xor          t3, a2, s7
                  sub          a7, s11, t4
                  slti         ra, a0, 645
                  xori         t6, t2, -505
                  nop
                  andi         a4, s2, -658
                  auipc        a6, 463905
                  addi         s9, t1, -1000
                  ori          t4, s1, 1604
                  slli         s1, s0, 8
                  sub          s0, t3, s4
                  nop
                  sra          s6, s1, s3
                  lui          t6, 318295
                  slt          t1, t0, tp
                  add          a1, t3, t3
                  slli         s7, t3, 19
                  xori         a3, a7, 492
                  addi         zero, a1, -227
                  sltiu        sp, t2, -1367
                  nop
                  andi         s10, t0, 722
                  xor          zero, a5, a0
                  and          s9, a2, a2
                  or           s7, sp, a6
                  srl          s9, t5, s11
                  sll          s1, zero, a7
                  slti         t2, s0, -1778
                  sub          a1, t0, a2
                  addi         t4, s3, 991
                  xor          a6, a3, s0
                  xor          s7, a2, zero
                  or           tp, s2, a0
                  xor          a2, zero, tp
                  sra          s0, a6, t4
                  or           zero, a7, t4
                  add          zero, s10, a6
                  sub          s9, s4, t5
                  srai         s1, s2, 27
                  slti         s7, gp, 830
                  nop
                  sub          s9, a2, s9
                  srai         t2, s11, 10
                  li           ra, 0x1948a7e9 #start riscv_int_numeric_corner_stream_5
                  li           s6, 0x80000000
                  li           a7, 0x0
                  li           t1, 0xffffffff
                  li           a4, 0x80000000
                  li           a2, 0xffffffff
                  li           a3, 0x0
                  li           s9, 0x80000000
                  li           t2, 0xffffffff
                  li           a5, 0xdd7b39cf
                  add          a5, t1, a5
                  lui          a4, 399404
                  addi         t1, s6, -2037
                  lui          t2, 32242
                  add          t2, t1, ra
                  auipc        ra, 594277
                  addi         a4, s9, -1743
                  nop
                  add          a3, a4, s6
                  sub          s6, ra, a3
                  nop
                  sub          ra, ra, s9
                  add          t2, a2, t1
                  auipc        a5, 267881
                  auipc        a7, 888094
                  nop
                  sub          ra, a5, a4
                  auipc        t1, 187031
                  lui          a3, 212339
                  auipc        a2, 976205
                  lui          s6, 825942
                  sub          s9, s6, s6
                  lui          a4, 634979
                  add          s6, ra, a3
                  sub          a3, s9, a4 #end riscv_int_numeric_corner_stream_5
                  auipc        a0, 873762
                  and          t0, a0, s9
                  lui          t0, 266353
                  lui          t2, 308297
                  li           s9, 0x7500ef45 #start riscv_int_numeric_corner_stream_19
                  li           s7, 0x584d6e64
                  li           a5, 0x71321cbd
                  li           t3, 0x80000000
                  li           sp, 0x6ad1ce92
                  li           s4, 0x80000000
                  li           a6, 0x0
                  li           t2, 0x4a8c4b15
                  li           a3, 0x80000000
                  li           a7, 0x6964f0e8
                  lui          s9, 934738
                  auipc        t3, 488437
                  addi         a7, t3, 186
                  add          s9, s7, t2
                  sub          a6, a3, s4
                  sub          a3, a6, a6
                  lui          s7, 156279
                  lui          s7, 16674
                  sub          a5, a6, t3
                  nop
                  auipc        t3, 18765
                  add          t3, t3, a5
                  addi         s7, s7, -677
                  addi         sp, a5, 79
                  lui          t3, 888459
                  add          s9, s7, a6
                  nop
                  addi         t2, s9, 8
                  auipc        s9, 132190
                  auipc        a5, 842240
                  addi         a7, a6, 874
                  add          s9, s7, s9
                  lui          a5, 241809
                  nop #end riscv_int_numeric_corner_stream_19
                  add          t3, s5, t0
                  sll          t2, t1, s6
                  add          t5, t4, s8
                  sra          s1, s0, s6
                  auipc        a3, 210939
                  sltiu        a0, s11, 1382
                  xori         a1, gp, 1737
                  nop
                  srli         ra, s11, 30
                  addi         s7, a6, 1062
                  andi         a6, s8, -1028
                  and          a3, a6, a5
                  slli         s5, a7, 2
                  addi         t1, a2, 1820
                  sltu         t0, zero, s4
                  slli         a1, a6, 31
                  xori         t2, a1, -837
                  sub          t6, s2, s2
                  addi         t5, t3, -2035
                  add          s8, a4, t3
                  and          t3, a3, s3
                  andi         s5, ra, 11
                  sltiu        zero, ra, -1433
                  sltiu        s8, a7, 1364
                  sra          ra, s1, s11
                  xor          t0, s7, tp
                  slti         s4, s7, -621
                  add          gp, t4, s8
                  auipc        t1, 1022232
                  add          t0, a5, t6
                  sub          t5, s7, s6
                  and          s6, zero, s8
                  sltiu        s8, t1, -1
                  sra          s10, s0, t5
                  xor          s1, s11, s2
                  srli         t4, a2, 16
                  and          a2, s7, t4
                  or           tp, s0, s4
                  andi         s9, s10, 1757
                  andi         t5, s4, -543
                  add          tp, a6, s6
                  sltiu        a2, s7, -593
                  slt          a1, zero, s0
                  slt          s7, s5, t3
                  sll          t0, t6, s11
                  xor          a3, t5, t1
                  lui          zero, 719398
                  slli         s1, a0, 6
                  sub          s0, tp, s10
                  slti         s7, s3, 776
                  andi         a4, s5, 1559
                  sltiu        a4, a5, -1400
                  ori          t4, a0, -1263
                  andi         s6, a1, -1784
                  auipc        s5, 270760
                  xori         a3, s2, -1697
                  sltiu        a5, s4, -437
                  slt          s1, s1, s8
                  lui          t3, 269035
                  auipc        a4, 544338
                  sltiu        sp, a4, 1156
                  xor          s5, a5, s1
                  sra          zero, a1, s10
                  slli         s4, s11, 31
                  xori         a1, a7, 1692
                  xori         s10, a3, -816
                  slli         t3, s7, 27
                  slli         s7, s11, 8
                  auipc        a7, 17732
                  srai         a7, ra, 17
                  auipc        s0, 52857
                  sub          t4, s3, sp
                  slt          s0, a4, s4
                  srli         t2, t2, 2
                  xori         s8, t4, -71
                  sll          a0, a4, t0
                  srli         a1, s5, 9
                  and          t4, gp, t1
                  sll          t6, ra, s9
                  srai         a2, s3, 5
                  slli         zero, a3, 30
                  sll          t4, s0, tp
                  or           ra, t3, t3
                  sltu         a2, s4, gp
                  slt          s9, s6, a3
                  nop
                  and          t3, tp, a1
                  sll          a2, a7, s4
                  srl          s8, tp, t5
                  slli         s1, a4, 11
                  xor          ra, a3, a2
                  slli         t6, t1, 12
                  xor          a2, t1, ra
                  ori          gp, s3, 655
                  lui          s7, 979407
                  srl          t0, s8, a6
                  sltu         s5, t1, zero
                  sltu         s0, a4, s4
                  ori          a1, a4, 1288
                  xor          s7, sp, s11
                  sltiu        t4, ra, -1285
                  lui          a0, 332104
                  andi         s8, s9, -1974
                  xori         t0, s3, -650
                  auipc        zero, 350545
                  and          s1, a7, t0
                  ori          t0, t2, -1950
                  auipc        s5, 967789
                  sll          s0, t5, s5
                  srai         a2, t6, 0
                  nop
                  lui          a2, 443932
                  xori         s9, s10, 1246
                  xori         a6, a7, 1326
                  nop
                  srl          s6, s1, a7
                  xori         s1, sp, -459
                  slli         tp, a4, 12
                  slti         zero, t3, 904
                  xori         sp, t1, -970
                  auipc        ra, 662647
                  sltu         s8, t0, s2
                  ori          sp, a7, 364
                  xor          a5, s8, s9
                  sltiu        s10, s2, 560
                  sra          a2, t0, a1
                  xor          t2, gp, t1
                  xor          a3, a3, t2
                  and          a4, a1, tp
                  slt          a2, t0, t1
                  slt          tp, s10, s4
                  sltiu        t5, t2, 1286
                  sltu         a7, sp, a0
                  sltu         s0, s7, s4
                  srai         s9, s7, 21
                  sra          a3, gp, s6
                  sltiu        zero, a2, 1980
                  ori          zero, a6, 1523
                  addi         t0, s1, 98
                  sra          a6, t0, s5
                  and          s1, a1, a3
                  xori         a3, a4, 383
                  sltu         a1, s4, s1
                  or           a2, t3, a0
                  add          s7, s5, a6
                  srl          s4, t2, ra
                  slti         gp, s2, 496
                  ori          a0, s4, -1666
                  sub          t3, t4, s1
                  or           s4, s0, s7
                  add          t5, s8, s5
                  srai         s4, zero, 4
                  srli         a7, s7, 30
                  xor          s1, s10, ra
                  or           t2, t0, s5
                  sra          t1, t0, s6
                  lui          a4, 92331
                  sll          sp, s1, ra
                  srai         t6, s3, 4
                  nop
                  or           a4, t2, gp
                  sra          s5, t6, t6
                  andi         a6, t4, 1409
                  srli         a2, zero, 31
                  ori          s4, t6, -637
                  or           t2, s9, tp
                  srli         t3, a6, 9
                  slt          a1, t1, s3
                  nop
                  slt          s0, a6, s7
                  xori         a7, s6, -432
                  andi         a3, gp, 324
                  srli         a1, a4, 6
                  or           a7, sp, s5
                  addi         s1, ra, -1500
                  add          s6, t3, s10
                  auipc        t2, 1035978
                  xori         s8, s7, 659
                  slt          s8, a1, gp
                  auipc        s5, 812957
                  sra          t0, s10, a2
                  srl          s8, a3, s10
                  lui          tp, 366479
                  addi         s6, s5, 1460
                  andi         a6, s1, -1463
                  ori          a4, a1, 76
                  or           ra, a1, a7
                  srli         a3, s6, 1
                  addi         a2, s5, 171
                  srl          a5, ra, tp
                  auipc        t6, 708023
                  add          t0, t1, s9
                  sll          s1, t6, a0
                  slti         a6, tp, -1768
                  srli         a3, s7, 0
                  srli         s9, s9, 9
                  add          t2, a0, a6
                  sll          s5, s9, a2
                  xori         a5, tp, 1861
                  addi         tp, s8, -853
                  srli         t2, a2, 25
                  andi         a2, s10, -1054
                  slt          s8, zero, t4
                  srl          t0, ra, a3
                  slt          a5, sp, tp
                  xor          a1, s3, tp
                  xori         s1, t0, 1281
                  slt          s0, a4, a5
                  nop
                  srai         a6, s6, 16
                  nop
                  sltu         s0, t5, s7
                  sra          a1, zero, a5
                  andi         s10, s5, 624
                  andi         t6, a1, -89
                  add          s8, s0, s2
                  sub          s8, s1, a7
                  sll          a3, s5, s10
                  and          a4, a1, a7
                  nop
                  xori         a2, s2, -1332
                  lui          t0, 676230
                  or           a7, s10, t2
                  sub          s10, t3, t4
                  sltu         a0, s8, t1
                  sub          a7, s6, s7
                  slt          ra, s6, a1
                  or           zero, t3, a7
                  or           s6, t4, a2
                  sltu         t4, a2, s5
                  and          t2, a7, s4
                  and          t5, s9, s5
                  andi         s6, s0, 892
                  addi         s7, s11, 562
                  sltiu        s0, a4, 1655
                  lui          a6, 914646
                  sra          a1, s4, s3
                  slt          a4, ra, t4
                  xori         ra, a3, 1167
                  ori          s10, a4, -1203
                  xori         sp, a2, 1841
                  sltu         t3, a2, t3
                  sll          t2, a3, a7
                  slt          sp, gp, a0
                  xor          sp, a3, t1
                  ori          t4, s10, 848
                  sltiu        t6, s3, -864
                  xori         s10, s6, 1960
                  slli         a7, sp, 10
                  add          t5, t5, zero
                  sltiu        t0, a5, -1503
                  xor          s8, ra, s8
                  auipc        a5, 560698
                  srl          s9, a4, a0
                  sub          a2, a7, tp
                  srl          s10, s3, t3
                  slli         a2, a6, 28
                  xori         s4, s7, 380
                  sll          s7, t4, s3
                  or           zero, a3, s8
                  xor          tp, s4, a0
                  slli         zero, s7, 22
                  ori          zero, t5, -1412
                  sltiu        s1, s10, 469
                  slli         sp, s8, 9
                  or           ra, zero, t0
                  auipc        s4, 41962
                  sra          a5, ra, s9
                  sub          t1, gp, gp
                  slt          s0, a2, a6
                  auipc        t0, 208392
                  slli         a6, s9, 13
                  srli         a6, a0, 3
                  auipc        t0, 855119
                  srli         t0, s8, 21
                  slt          a0, s1, a0
                  lui          s5, 97369
                  andi         a7, a4, 1029
                  add          sp, t4, s7
                  lui          t0, 134468
                  lui          a0, 410052
                  xori         zero, t6, 839
                  srai         s1, s9, 31
                  ori          a6, s6, -1932
                  slt          a1, s6, t1
                  sra          a3, s9, a7
                  sub          t0, a2, a0
                  nop
                  xor          ra, t4, a6
                  and          t1, a5, a2
                  sltu         s8, s8, s4
                  andi         s8, t4, -779
                  slti         a5, a4, 1432
                  sra          s8, s4, s8
                  srl          t4, tp, s1
                  slt          t1, t4, s2
                  xori         tp, a4, -1891
                  and          s0, a4, a7
                  nop
                  srai         t4, zero, 15
                  sra          zero, tp, s5
                  nop
                  ori          s9, t6, -1806
                  nop
                  sltiu        s1, a1, -1096
                  slti         t6, sp, 70
                  sltiu        a0, a4, 813
                  sub          t2, a5, tp
                  or           s6, t1, s8
                  sub          t1, t6, t1
                  lui          a4, 227071
                  ori          t3, tp, -996
                  sub          a5, t1, s8
                  auipc        a6, 156746
                  and          s6, a0, tp
                  slti         a3, tp, -1029
                  slt          zero, t1, s10
                  add          s8, s4, s7
                  sltiu        s5, s2, 1492
                  slli         t6, sp, 26
                  sra          s10, s2, a1
                  srai         t5, ra, 10
                  addi         s6, s2, 1316
                  sll          ra, s8, t6
                  slti         t4, s4, -604
                  srl          t5, t2, a5
                  addi         a6, s1, -786
                  xor          a4, t6, a3
                  sltu         zero, a3, t1
                  srai         s10, s6, 13
                  slt          a2, s5, s2
                  xori         t1, a2, 336
                  sra          s8, gp, s3
                  xor          s8, t3, s5
                  xori         s8, tp, -27
                  and          s6, t6, a0
                  add          s8, t6, s10
                  slt          t0, t6, s1
                  auipc        ra, 294893
                  slli         a0, s1, 12
                  xori         t2, a2, -50
                  auipc        s6, 349930
                  srli         s1, a3, 10
                  sltu         ra, s10, a5
                  auipc        a3, 818350
                  ori          s10, t0, 248
                  srai         s0, t0, 31
                  auipc        s6, 381087
                  sra          a0, a5, t2
                  sltu         a1, a6, tp
                  sll          zero, a4, t1
                  auipc        t6, 284459
                  auipc        s0, 857808
                  sub          tp, t0, t4
                  ori          a1, ra, 478
                  nop
                  andi         s5, sp, 494
                  sltu         s8, a2, sp
                  nop
                  srai         a5, t0, 30
                  sltiu        t5, gp, -1306
                  slt          a5, zero, s8
                  sra          a5, t2, a7
                  or           a3, a3, s6
                  ori          a4, s4, 24
                  andi         s8, gp, -737
                  sub          t6, a0, s11
                  sltiu        t4, t3, 1771
                  slt          s1, a7, t6
                  xor          s7, t0, a4
                  srl          s6, a4, s8
                  sra          t6, sp, s7
                  sub          s0, a7, s5
                  andi         s6, s11, 659
                  sub          s5, sp, s0
                  srai         ra, a6, 8
                  nop
                  slt          t4, s4, tp
                  slli         t0, s11, 5
                  xori         a7, s0, -329
                  add          a5, t1, zero
                  srli         s5, a4, 13
                  or           s7, a3, a1
                  srli         t0, s4, 16
                  or           t2, a0, t0
                  sub          t1, ra, t0
                  or           tp, a4, s7
                  lui          s7, 119361
                  sll          t3, s7, a6
                  srli         t4, a5, 29
                  srl          s4, s3, gp
                  sra          ra, a5, s4
                  sra          s6, s1, a7
                  srl          a5, a5, s8
                  add          s8, ra, s9
                  srai         t1, a2, 13
                  xori         a7, t5, 663
                  lui          gp, 93226
                  sll          sp, t3, s4
                  xori         s5, t4, -925
                  auipc        s9, 878904
                  slli         a0, a7, 6
                  add          t2, t5, t0
                  slt          t4, zero, s6
                  sltiu        zero, t4, 1514
                  srli         s10, a2, 29
                  lui          a0, 345093
                  addi         ra, s5, -1820
                  sltu         s4, a5, s8
                  sub          ra, s5, a1
                  lui          sp, 1014697
                  andi         t3, t3, -170
                  sltu         gp, t1, a7
                  sltu         s4, s8, s5
                  add          tp, s0, s1
                  srli         t0, zero, 4
                  xor          a7, s5, zero
                  add          t4, a2, s7
                  sll          s9, s6, s1
                  srl          gp, t6, s11
                  lui          gp, 926136
                  andi         a7, a2, 410
                  srl          s6, tp, a5
                  srl          a4, s5, t2
                  slti         ra, s3, 153
                  sltu         a4, a7, t3
                  sub          tp, a4, s4
                  and          s7, ra, t6
                  xor          s9, s7, zero
                  auipc        a0, 473049
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_37
                  li           s6, 0x80000000
                  li           t0, 0xffffffff
                  li           a4, 0x80000000
                  li           s4, 0x80000000
                  li           t4, 0x80000000
                  li           a5, 0xffffffff
                  li           t1, 0x0
                  li           gp, 0x0
                  li           t3, 0x80000000
                  add          a5, a4, gp
                  nop
                  nop
                  lui          t4, 1007171
                  auipc        s4, 514447
                  sub          t4, s4, t3
                  sub          a5, t3, t3
                  nop
                  nop
                  auipc        t3, 820712
                  auipc        s4, 163927
                  addi         a5, s6, -636
                  lui          a4, 1042485
                  auipc        t0, 706044
                  lui          a5, 310901
                  sub          t1, a5, t4
                  sub          gp, gp, a5
                  lui          t0, 718491
                  add          a4, a4, t3
                  sub          t1, s6, t3
                  addi         gp, s4, 182
                  sub          a4, gp, t1
                  addi         a5, gp, 1679
                  nop #end riscv_int_numeric_corner_stream_37
                  slt          s10, s10, a3
                  sra          zero, t3, s2
                  slt          s9, s5, s6
                  xor          t1, a4, t5
                  addi         a1, s11, -763
                  sltiu        t5, s1, 559
                  slli         t0, s3, 30
                  auipc        a3, 64490
                  ori          zero, s11, -997
                  ori          a2, s9, -792
                  addi         a4, t2, -1548
                  sll          t6, t5, a1
                  sub          t3, ra, a6
                  sll          t2, s7, sp
                  sra          t1, s10, t3
                  or           a6, s8, a5
                  and          sp, t5, ra
                  auipc        t1, 68844
                  sra          ra, sp, t3
                  nop
                  add          a1, s10, s6
                  sll          t5, s11, ra
                  ori          t5, a7, 1313
                  sll          a5, t3, t5
                  ori          a5, s3, 506
                  andi         tp, a5, -1286
                  sltu         zero, s2, t4
                  srli         t5, t2, 25
                  sltiu        a0, t4, 972
                  nop
                  srai         a2, s10, 17
                  sub          s0, s4, zero
                  andi         s1, t4, -107
                  slti         a1, t6, -420
                  sltiu        tp, a0, -843
                  srai         ra, s5, 27
                  or           t2, t6, gp
                  nop
                  slt          t6, t6, s1
                  nop
                  nop
                  srai         a6, a6, 4
                  auipc        a7, 641333
                  or           a2, s7, t5
                  sub          a1, s1, a7
                  sub          t3, ra, s6
                  sll          t5, s5, a7
                  slt          s10, t6, s7
                  sltu         s9, a2, s4
                  sltu         t4, a7, t6
                  sll          t1, tp, s9
                  slli         t4, t6, 26
                  srli         t3, t5, 16
                  slt          s0, zero, s11
                  addi         a6, a6, -1575
                  sll          a4, s8, a7
                  slti         a6, s4, -1335
                  srli         a6, t3, 12
                  slt          t6, t0, s7
                  srl          s6, sp, a5
                  srl          a0, s6, a1
                  and          s7, a7, a1
                  slli         s6, a1, 1
                  slt          a2, sp, gp
                  auipc        t3, 862121
                  ori          a0, s0, 684
                  slli         t2, t3, 19
                  addi         a7, t5, 1063
                  lui          s9, 196681
                  or           t0, s0, t5
                  slti         s4, t2, 1495
                  andi         s5, s11, 952
                  sll          t5, a5, s1
                  and          a2, t1, a3
                  xori         s6, a7, -361
                  srli         t4, t3, 12
                  andi         t6, s11, 1191
                  and          s10, t4, s4
                  sltiu        s0, a5, -309
                  or           t6, a0, a5
                  slli         ra, t5, 23
                  slt          ra, sp, s9
                  sltu         a6, s7, t4
                  nop
                  slli         s5, t2, 9
                  auipc        s8, 920449
                  andi         s6, s8, 1195
                  add          a0, tp, s10
                  xori         s6, s1, 626
                  slli         t5, s11, 31
                  srli         t1, t6, 16
                  and          a6, tp, s1
                  sltiu        a0, s0, -1216
                  ori          s1, a6, -1075
                  srl          gp, ra, zero
                  ori          t3, t4, -1066
                  slti         t1, s5, -990
                  auipc        s0, 855410
                  add          t1, s2, s11
                  sub          t1, s8, s3
                  sub          sp, a2, s8
                  slli         t3, ra, 21
                  sll          s1, zero, tp
                  srai         a0, zero, 28
                  sub          a1, t4, s7
                  slli         t5, s0, 24
                  nop
                  xori         t1, s2, -142
                  slt          zero, a1, t3
                  slli         s0, t3, 30
                  and          zero, a6, zero
                  or           s5, t2, t6
                  sll          ra, a4, s10
                  addi         s10, ra, -1882
                  slt          tp, s7, gp
                  ori          t4, t6, 1347
                  slli         ra, s3, 0
                  srai         a0, t6, 31
                  srai         a5, s8, 14
                  auipc        s5, 737474
                  ori          a0, s9, -1775
                  sub          a6, s6, s0
                  add          s5, s11, a3
                  lui          s9, 720154
                  nop
                  xor          a0, t1, s11
                  srli         s9, s11, 12
                  sltiu        t4, zero, -696
                  xori         t6, a3, -1460
                  lui          a4, 944566
                  add          sp, a5, s4
                  or           a3, s7, t4
                  xor          gp, t4, s4
                  or           t6, t2, t6
                  slli         a2, a6, 23
                  srli         a2, s2, 0
                  add          sp, s8, a1
                  sra          t0, s0, s9
                  lui          tp, 453207
                  or           s0, gp, a5
                  srli         s0, t5, 6
                  add          ra, t0, sp
                  sra          s0, a0, s10
                  sub          s5, s3, ra
                  or           s5, s6, gp
                  or           t2, tp, s11
                  addi         s6, t2, -1475
                  nop
                  srl          s4, a2, s4
                  or           t2, t6, a6
                  lui          s7, 799493
                  slti         a7, s2, 1520
                  srai         t6, s10, 17
                  addi         s5, t5, 930
                  add          t6, t5, a4
                  sltiu        s10, s7, -1778
                  nop
                  sub          t6, a6, a3
                  srai         s1, ra, 6
                  srl          tp, t4, t3
                  and          s5, sp, t5
                  slt          t2, t5, t2
                  addi         a0, a2, -715
                  andi         a3, a2, 1770
                  slt          sp, t1, s10
                  addi         sp, s3, -2048
                  andi         t0, s11, -1925
                  slti         a1, ra, -545
                  srli         t1, t5, 9
                  ori          ra, s6, -314
                  slti         zero, s5, 1119
                  addi         a4, t1, 278
                  sra          s4, zero, s3
                  slt          t5, t1, a0
                  slli         t3, a7, 14
                  sra          t0, a0, a3
                  srai         t4, a5, 18
                  xori         gp, gp, -1307
                  srli         t2, a7, 12
                  xor          a5, s1, a2
                  nop
                  auipc        s9, 518380
                  add          t2, a0, a4
                  xor          a6, s1, tp
                  auipc        t1, 542204
                  sltu         s5, a3, s3
                  xor          s5, t1, a7
                  addi         s1, t5, -156
                  sll          a1, gp, s7
                  xori         a0, t6, 603
                  slli         a4, t0, 7
                  srai         s1, t4, 27
                  xor          ra, a4, a7
                  slli         s9, s3, 22
                  sltu         s6, s8, s0
                  xori         s8, t2, 1039
                  sltiu        a1, s9, 1589
                  sub          t4, a2, a2
                  xor          t3, a1, t6
                  slli         ra, t1, 26
                  addi         t3, zero, -1045
                  sra          s0, s6, s9
                  xor          zero, a0, a4
                  add          t6, s10, t4
                  srai         t6, s9, 23
                  addi         a3, s1, 502
                  xori         s8, t1, 1144
                  slli         t0, s8, 23
                  or           s9, ra, t5
                  sltu         a1, s10, t1
                  nop
                  sltiu        a7, s4, 1055
                  slli         gp, a3, 6
                  ori          t4, t4, -992
                  slti         t5, t0, -1600
                  add          t1, gp, t2
                  or           sp, t3, s3
                  srli         a0, tp, 11
                  sub          s0, a1, s8
                  sra          s5, t6, t1
                  slli         tp, s11, 15
                  addi         s9, t5, 605
                  auipc        a2, 629071
                  sltu         a6, a5, t2
                  srl          s7, s1, a4
                  or           gp, s4, s11
                  srl          s6, s10, s2
                  srai         s8, t6, 8
                  nop
                  slti         t1, s10, 1778
                  lui          t0, 321951
                  xori         s8, s1, -150
                  xor          a7, s8, gp
                  sll          s8, a5, tp
                  add          t4, t1, t0
                  lui          t2, 202260
                  sltiu        s9, a0, 1332
                  add          s5, zero, ra
                  srl          t4, s8, s10
                  srai         s10, gp, 4
                  sub          t1, a5, t2
                  lui          s8, 228875
                  slt          s6, sp, t6
                  sll          t6, s0, a1
                  srl          t5, s11, s5
                  srai         tp, a5, 23
                  sra          t1, s5, t2
                  srl          a2, s1, a1
                  auipc        t5, 430442
                  lui          a5, 773977
                  sltiu        s10, zero, 392
                  sltu         t2, s3, zero
                  sltiu        s10, ra, 521
                  srli         a2, t4, 18
                  sub          a3, a1, a7
                  srl          a5, a5, s7
                  sub          t4, t5, a0
                  srl          t4, t0, tp
                  ori          tp, a5, 583
                  xori         a2, t2, 341
                  or           s7, a4, a0
                  auipc        a4, 136603
                  srli         t0, s11, 7
                  lui          a1, 561326
                  auipc        s8, 617335
                  slt          s7, t5, s11
                  slli         a0, a5, 15
                  auipc        t4, 317595
                  addi         s10, a4, -428
                  sll          s4, gp, zero
                  sra          s8, a2, s9
                  sltu         gp, zero, s0
                  srl          tp, a5, s7
                  srai         t5, t3, 20
                  sub          gp, sp, a0
                  slti         s0, t1, 1371
                  sub          sp, s8, s7
                  ori          s4, zero, 1015
                  xori         t0, a6, -1859
                  srai         sp, t4, 9
                  add          t3, s5, t6
                  nop
                  srli         tp, a2, 26
                  xor          a3, t5, a1
                  slt          s7, a5, t2
                  xor          tp, t0, t4
                  and          s6, s2, a0
                  sll          t2, s11, s7
                  srai         ra, zero, 10
                  slt          a7, t5, gp
                  addi         zero, s1, 955
                  srli         a6, s5, 11
                  sltu         a5, t2, s8
                  sll          s5, a1, s6
                  xor          s8, s1, a2
                  sra          tp, s11, s5
                  sra          a2, tp, a2
                  andi         zero, a2, -1297
                  xori         s0, s2, 408
                  ori          t5, ra, 578
                  xori         t6, gp, 1234
                  sra          a2, t3, s8
                  slt          a7, ra, a1
                  srai         s4, s1, 28
                  srl          t0, s8, s4
                  addi         a4, gp, 1836
                  add          a5, s10, s4
                  srai         s8, s11, 17
                  or           s4, sp, t6
                  sll          t0, a1, t2
                  sll          zero, t4, a5
                  sub          t6, t0, s6
                  and          s8, s1, s3
                  slti         zero, gp, -1561
                  slt          a0, a3, s4
                  sra          a7, gp, a6
                  addi         s7, a1, 789
                  xori         s0, sp, 1889
                  or           t5, t6, sp
                  and          a4, sp, s0
                  addi         t0, s9, -12
                  andi         s8, a1, 1059
                  add          s9, a4, ra
                  auipc        s5, 1019395
                  slti         s7, s9, -680
                  srai         a4, s4, 24
                  or           gp, s6, t3
                  andi         t5, t3, -1457
                  srl          a0, s6, ra
                  nop
                  sltu         a5, t3, a4
                  lui          a6, 632987
                  and          s6, a5, t6
                  sltiu        t4, s2, 1282
                  sll          gp, s4, s8
                  slt          s5, a3, t5
                  addi         a3, t2, 838
                  srl          a4, s1, a2
                  slt          t1, s3, s3
                  xori         zero, t0, -761
                  andi         t2, a2, -570
                  and          ra, s5, a5
                  auipc        a0, 67162
                  lui          t0, 362408
                  srai         t2, ra, 13
                  sub          tp, zero, s5
                  andi         a6, a2, 1902
                  slt          s1, a0, s8
                  add          ra, s4, s4
                  andi         a1, s0, 142
                  ori          t0, a1, 925
                  add          s7, t4, s6
                  sltiu        t3, t3, 993
                  and          s1, sp, zero
                  sll          zero, s1, t6
                  nop
                  and          sp, a7, s1
                  slt          tp, a7, s0
                  slt          s0, t2, gp
                  sltiu        s7, s5, -1981
                  or           s9, a5, s9
                  sltiu        s0, s0, 1938
                  slti         gp, s3, 569
                  sltu         a3, s6, a3
                  addi         s4, s4, -359
                  add          a7, s0, a2
                  auipc        t5, 877904
                  and          a7, a7, t0
                  xor          t0, s7, t4
                  addi         s10, s9, 2025
                  slt          t4, zero, ra
                  slli         a1, a7, 26
                  addi         t1, sp, -927
                  lui          a5, 748088
                  xor          t5, s5, a4
                  srai         t3, t0, 29
                  slt          s9, t4, a7
                  sra          s0, a7, a3
                  sra          a5, s8, s2
                  sltiu        sp, t4, -210
                  or           a7, gp, a2
                  sltu         a7, s5, s1
                  lui          t4, 282329
                  xor          gp, s10, t1
                  srli         a3, s2, 26
                  sltiu        s1, s0, 907
                  auipc        t1, 277658
                  sltiu        s8, s11, 97
                  sll          t0, s11, t1
                  auipc        t6, 1015675
                  auipc        a2, 930110
                  addi         s10, t6, -34
                  srli         a0, a7, 17
                  andi         a1, t5, -1049
                  auipc        t1, 756328
                  srl          t2, s1, a2
                  andi         ra, s11, 1103
                  xor          s9, s0, s6
                  nop
                  nop
                  slli         zero, a2, 29
                  xori         t5, a2, -1385
                  ori          t3, s6, -1298
                  sll          gp, s9, t5
                  ori          s6, t5, 11
                  xori         a5, gp, 1527
                  addi         a6, zero, 208
                  or           s5, ra, s5
                  auipc        s0, 212036
                  andi         t1, t2, -1794
                  srli         a6, a6, 23
                  xor          s6, s2, t3
                  slt          ra, s5, tp
                  lui          sp, 13398
                  ori          a2, a3, -1741
                  auipc        t6, 205030
                  xori         a2, s11, 1076
                  xor          s1, t3, tp
                  slti         s9, a1, 285
                  slt          s10, s0, a4
                  nop
                  lui          s7, 603102
                  srai         t0, tp, 16
                  slt          a1, t0, t0
                  srai         t0, s10, 4
                  addi         a1, t4, 504
                  slt          s8, s3, ra
                  nop
                  sra          s7, tp, t0
                  add          a2, a6, a6
                  slti         a0, s8, -903
                  srli         sp, t2, 30
                  sub          s4, t6, s11
                  add          s10, s0, s9
                  sra          s4, a7, a1
                  sub          a7, ra, t0
                  slti         s8, a7, -271
                  addi         s4, s9, 614
                  sra          t3, s5, sp
                  ori          s7, a2, 1284
                  lui          t4, 304507
                  and          s0, tp, a5
                  srai         gp, a1, 19
                  srli         ra, s8, 11
                  sltu         tp, gp, ra
                  sll          t3, zero, s10
                  sub          a1, t0, s1
                  srl          t0, s7, t6
                  srl          sp, s10, a7
                  srli         a6, a3, 15
                  xori         t5, sp, -1618
                  sra          s9, t2, t2
                  slti         a5, a5, -45
                  slli         sp, a1, 15
                  add          a2, t2, s10
                  xori         a0, a1, 1255
                  sltu         s0, a1, t5
                  add          a5, a1, zero
                  srai         ra, tp, 11
                  slti         t2, s3, 1228
                  slti         s1, s10, -1233
                  sll          s1, s6, s8
                  slli         s6, t3, 20
                  slti         t6, a7, -358
                  sltiu        a4, sp, 1409
                  slt          ra, zero, t3
                  srli         t6, a4, 26
                  lui          t5, 1009132
                  or           t5, s5, s9
                  slli         a4, sp, 15
                  and          t0, s10, t3
                  andi         s5, t6, 445
                  srli         ra, s10, 21
                  sra          s6, t1, a6
                  and          a3, s9, a7
                  ori          a6, gp, 509
                  sll          a3, s6, s4
                  sra          zero, s4, sp
                  addi         s10, s8, -2014
                  ori          zero, s5, 516
                  addi         s0, s9, -1660
                  lui          s1, 630240
                  auipc        s10, 172196
                  sll          t3, a1, a3
                  srai         s1, s8, 4
                  auipc        t0, 210891
                  or           s9, t2, s3
                  andi         zero, s8, -303
                  sub          t1, s0, s9
                  xor          t6, a7, s5
                  addi         s8, s5, 552
                  srli         ra, t5, 18
                  andi         t3, s8, 400
                  slt          ra, gp, tp
                  sra          t6, s2, gp
                  sltu         s9, t0, s6
                  srli         t1, s7, 13
                  sltu         a7, t2, s4
                  and          s10, s7, a3
                  nop
                  slt          s5, t3, t3
                  slli         a7, sp, 21
                  xor          t4, s6, s10
                  srl          a6, t3, t0
                  or           a3, sp, s5
                  sra          a0, s4, t2
                  xori         t1, a7, -1106
                  slli         t3, t2, 13
                  slti         s10, t0, -1696
                  sub          a4, s4, a4
                  andi         a0, a3, 1738
                  slli         s5, t2, 29
                  srl          tp, zero, t2
                  add          a6, t0, t0
                  sub          a5, tp, a3
                  sltiu        s8, s4, 1992
                  sra          t6, gp, a1
                  sll          a6, s9, tp
                  or           s1, s8, s3
                  srai         a7, s3, 1
                  srli         s4, s0, 6
                  sltiu        t6, t6, 649
                  auipc        gp, 455033
                  xori         s5, s3, 1793
                  xor          s10, s7, s3
                  nop
                  sltiu        t5, t2, 784
                  sub          a5, s8, a0
                  slli         a0, s8, 22
                  srli         a2, s1, 17
                  sltiu        a6, a4, 1355
                  ori          s4, s0, 174
                  xor          a4, s1, a5
                  slt          ra, sp, a5
                  sltu         zero, a2, a1
                  nop
                  sub          s0, s9, zero
                  srli         a4, zero, 8
                  sltiu        a4, a1, -575
                  nop
                  srl          s0, t4, s1
                  addi         ra, s6, -1150
                  srai         gp, t6, 23
                  sra          t1, s6, s0
                  addi         t5, s0, 272
                  add          a2, s6, t0
                  andi         gp, a0, 801
                  and          t1, t1, s1
                  and          a4, t2, a0
                  and          a5, a1, s1
                  slti         t1, zero, 1643
                  add          a0, t5, s0
                  slli         a3, tp, 21
                  slli         s7, ra, 17
                  andi         a6, s10, -1950
                  and          t4, s9, t5
                  sra          s1, s3, sp
                  xori         s8, a5, 2026
                  srli         t6, s3, 10
                  lui          a2, 218670
                  srli         t2, a6, 18
                  sra          a3, t3, s3
                  srai         s1, a4, 31
                  xori         a3, t3, 891
                  sltiu        ra, a0, -1075
                  auipc        t2, 1045394
                  slli         s0, s7, 31
                  and          s1, s0, s7
                  xori         a0, a6, 1871
                  xor          s4, t4, a3
                  nop
                  sra          t4, s6, a6
                  sra          s0, zero, tp
                  and          s4, s8, s8
                  slt          a5, s3, s9
                  or           t5, s9, s0
                  add          t2, s7, t6
                  slli         t0, a4, 18
                  srai         s1, s10, 2
                  sltu         sp, s3, a6
                  sll          t2, a5, a5
                  auipc        a4, 899788
                  xori         a3, s11, -1058
                  auipc        a6, 564214
                  srli         t3, a1, 19
                  ori          s9, t4, 642
                  sltiu        sp, sp, -1758
                  or           a2, t3, s10
                  srai         s0, ra, 14
                  sltu         s4, s3, t6
                  nop
                  sub          t0, sp, a0
                  sub          a2, s9, s0
                  lui          a3, 406014
                  srai         s10, a7, 14
                  sltiu        t2, s8, -154
                  sll          zero, s6, a6
                  sltu         t1, t3, s1
                  sub          t6, a5, s6
                  slti         t4, t1, 438
                  srai         sp, t4, 5
                  sra          s5, a5, t1
                  xori         t4, gp, 1386
                  sra          gp, s6, t4
                  xor          a1, a1, s8
                  and          t6, a2, t6
                  ori          sp, a3, -942
                  sltu         s6, s5, t4
                  sll          a0, t0, a1
                  srl          zero, t4, s5
                  andi         s7, s2, -1
                  or           t6, s5, t2
                  ori          gp, t2, -363
                  or           t2, t6, t4
                  slli         a1, s7, 20
                  xor          a4, s9, t5
                  andi         t0, tp, 1431
                  add          a5, a5, s0
                  nop
                  ori          s5, s1, 898
                  srl          t1, t0, gp
                  slli         a2, a3, 8
                  auipc        s6, 570241
                  lui          s6, 987255
                  xori         t6, a7, -1175
                  sub          a3, t4, sp
                  auipc        t6, 351046
                  andi         s4, s5, 239
                  andi         s0, t0, 1999
                  sll          s7, t0, t0
                  add          t2, s0, t0
                  sra          t1, s2, s11
                  ori          t3, a4, 1457
                  auipc        s0, 557190
                  slti         s5, s6, -1371
                  slti         sp, a7, -1937
                  addi         a3, zero, -1588
                  nop
                  slli         a6, a6, 17
                  nop
                  auipc        tp, 634792
                  sra          gp, s2, s0
                  slli         s9, s4, 28
                  slli         s7, a3, 30
                  srl          a4, a3, t4
                  lui          t1, 56241
                  auipc        sp, 173816
                  and          sp, zero, gp
                  slli         a2, zero, 24
                  srai         t6, a2, 1
                  or           a7, zero, sp
                  nop
                  sltiu        s8, s7, 1413
                  slti         a5, a4, -973
                  nop
                  xori         t2, a4, -412
                  sltiu        s9, a6, -498
                  sltiu        a4, s11, 778
                  srl          sp, s2, a0
                  srl          tp, s4, s5
                  sll          s7, zero, t5
                  sltu         a6, s3, s0
                  sub          tp, tp, s1
                  sll          a3, a0, t1
                  ori          a0, gp, -504
                  lui          ra, 100526
                  addi         a3, t5, -1414
                  and          t5, s1, s8
                  sra          tp, s9, a3
                  srai         t0, t5, 6
                  srli         t4, s11, 2
                  auipc        sp, 86044
                  slti         ra, t2, 1365
                  add          a1, t2, s4
                  slt          s8, ra, a1
                  slt          a5, s7, s6
                  slli         ra, a0, 2
                  slt          s9, t0, t4
                  ori          gp, a3, 84
                  addi         a2, s2, 1883
                  add          tp, a7, t3
                  xor          s1, s2, t3
                  srli         a7, a4, 7
                  addi         a7, sp, 2017
                  or           t0, s8, a1
                  addi         s8, t0, -1213
                  srli         t4, t1, 1
                  add          s8, s10, s2
                  srli         t6, s1, 29
                  srl          a3, s11, t0
                  xori         a1, s8, 334
                  sub          t1, t6, s11
                  sll          ra, t2, a5
                  lui          a0, 373496
                  slt          a4, s9, a3
                  add          s0, zero, a3
                  or           sp, s4, s11
                  andi         s1, t5, 722
                  slt          ra, s3, s1
                  or           t5, t5, s8
                  ori          tp, t0, 527
                  slti         t4, ra, 101
                  sra          t5, a1, s2
                  srli         s8, t3, 22
                  srai         t6, s9, 17
                  or           t3, s11, s7
                  srai         t3, a0, 18
                  srl          s6, s4, a1
                  or           a4, a6, a7
                  xori         a6, gp, 1364
                  and          zero, s2, a1
                  slli         s10, s1, 0
                  lui          a7, 595288
                  sltiu        t1, a0, -538
                  xor          s6, sp, t2
                  andi         t3, t6, -681
                  srl          a0, gp, s3
                  slt          gp, a0, zero
                  sltiu        s5, s6, 1710
                  xori         t0, t5, -1343
                  srl          t3, a6, a6
                  srli         t4, tp, 23
                  slli         s8, s10, 30
                  or           a4, s0, s7
                  sltu         a4, s3, a1
                  lui          t5, 101788
                  auipc        t4, 912158
                  xor          gp, s6, a7
                  addi         gp, s6, -1262
                  xor          s7, t3, s7
                  andi         s1, s3, 1194
                  auipc        s10, 299589
                  sltu         s1, ra, s8
                  srli         a3, t2, 24
                  srl          t1, t2, a6
                  srai         gp, sp, 6
                  sltu         s7, a2, gp
                  slt          t0, s6, s4
                  sltiu        s4, a2, 1259
                  lui          gp, 322847
                  ori          s6, sp, -494
                  or           a5, s11, t0
                  lui          s1, 123806
                  slt          zero, s3, t6
                  slti         sp, s0, 1858
                  slli         s5, t0, 8
                  slt          t3, a4, s1
                  or           t5, tp, s1
                  srli         t2, s3, 25
                  srli         sp, a6, 16
                  lui          s10, 796972
                  sltu         a4, s9, t6
                  srai         s7, t0, 5
                  xor          a7, s5, a7
                  and          sp, s6, sp
                  and          t5, tp, s1
                  ori          s5, s1, -1276
                  sltu         a0, t6, a2
                  srli         a1, t5, 14
                  ori          s8, zero, -109
                  and          a7, s2, sp
                  sra          ra, s0, a5
                  xori         t4, s11, 326
                  nop
                  add          zero, s3, s11
                  srli         s1, a4, 20
                  sra          tp, sp, t4
                  srl          a7, s0, s10
                  srai         gp, a6, 30
                  nop
                  or           a7, a1, s6
                  slli         t6, a0, 14
                  srl          t2, zero, a5
                  ori          a3, s3, 1705
                  addi         t5, s9, 39
                  ori          t6, t5, 1184
                  addi         gp, s5, -165
                  xori         a7, s10, -1249
                  sra          a4, s0, t0
                  slti         s8, a5, 98
                  add          sp, t2, s6
                  sltu         s4, t1, zero
                  xor          a0, a2, s6
                  and          a5, s3, ra
                  srl          t2, a4, a4
                  sll          a4, ra, tp
                  sub          s8, s8, s9
                  lui          s1, 691191
                  sub          zero, s3, s5
                  sltu         t5, a3, a4
                  and          ra, s2, s11
                  sltu         t5, s5, t6
                  and          tp, a7, s8
                  andi         zero, a2, -85
                  srai         a2, ra, 3
                  xori         zero, t5, 867
                  slt          a4, zero, t2
                  andi         a4, s7, -1807
                  sub          zero, a6, gp
                  srai         a3, a4, 28
                  slt          s4, ra, s3
                  addi         s9, t4, 757
                  slti         t0, s1, 1639
                  srl          ra, a0, t1
                  sll          t5, a2, s11
                  srl          t0, t6, s4
                  auipc        a0, 50055
                  sub          a4, sp, s2
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           tp, 0xffffffff
                  li           t3, 0x80000000
                  li           s8, 0xfce8ad96
                  li           a5, 0xffffffff
                  li           t0, 0x80000000
                  li           t4, 0xd5e72fc0
                  li           gp, 0x28a84263
                  li           t2, 0x80000000
                  li           s7, 0x80000000
                  add          a0, t0, t3
                  auipc        gp, 55389
                  nop
                  nop
                  lui          gp, 463070
                  add          s7, t3, s8
                  auipc        s8, 559756
                  addi         a0, s8, -569
                  add          s7, a5, s7
                  auipc        a0, 565803
                  add          t4, s8, t0
                  nop
                  lui          s7, 253024
                  lui          a5, 381381
                  add          t2, t0, s8
                  add          s8, tp, t2
                  auipc        t0, 841667
                  lui          a5, 1024328
                  auipc        s7, 36587
                  sub          s7, t4, t3
                  auipc        s8, 474534
                  auipc        tp, 658823
                  addi         t3, t3, 909
                  lui          t4, 484103 #end riscv_int_numeric_corner_stream_10
                  slt          ra, sp, t0
                  andi         t4, t0, 66
                  sra          a5, a1, s4
                  sltiu        t0, s9, -510
                  xori         a6, t1, 272
                  auipc        tp, 305506
                  sra          t3, s2, a3
                  and          zero, a4, zero
                  xori         a6, t0, -316
                  or           gp, a2, t1
                  lui          a0, 982251
                  slti         s6, a2, -996
                  ori          t0, zero, -551
                  auipc        sp, 821957
                  sltu         a6, a4, a6
                  slti         s6, a0, -9
                  sra          a2, gp, a6
                  sub          zero, t2, s6
                  sll          a2, a5, t4
                  sltiu        t2, a5, 314
                  auipc        s5, 736261
                  add          s5, a6, a6
                  sra          t1, s2, s1
                  srai         t4, s1, 21
                  sra          s5, t1, s10
                  slti         a0, t4, 184
                  and          t2, s5, a0
                  addi         tp, a7, 1202
                  auipc        s7, 902995
                  lui          a4, 263824
                  srli         a5, ra, 31
                  slli         t2, tp, 31
                  srl          s5, t0, t6
                  slt          t0, s1, s11
                  and          gp, zero, s3
                  lui          a7, 175870
                  and          t1, s6, a1
                  addi         a6, s5, -697
                  slli         zero, a6, 21
                  andi         a5, s6, -393
                  srai         s8, s7, 14
                  xor          a1, s8, s1
                  sra          a7, sp, a1
                  sll          a4, a6, s0
                  sll          tp, s3, s4
                  add          t5, a5, s4
                  srli         a6, s3, 27
                  sltiu        ra, s7, -1343
                  sra          s10, ra, zero
                  srai         t1, s8, 17
                  xor          zero, s8, a5
                  sltu         s7, tp, s10
                  xor          a4, s6, s10
                  sll          gp, zero, s4
                  or           t1, s7, s5
                  slti         a6, t1, 701
                  nop
                  and          s0, t5, sp
                  auipc        a5, 1000925
                  addi         t0, a3, 1208
                  xor          s9, a7, gp
                  srai         t1, s11, 29
                  addi         s0, tp, -1924
                  or           gp, s7, s5
                  slt          t6, s0, s11
                  xori         t0, s7, -674
                  xori         s6, s2, -154
                  ori          a2, a6, -1838
                  sltiu        a3, a2, 1101
                  slt          a7, s2, s5
                  addi         t5, a4, -77
                  lui          a4, 307276
                  slti         t2, a7, -934
                  sra          gp, sp, s11
                  add          t3, tp, a7
                  sub          a0, gp, s10
                  nop
                  xori         s7, s7, -934
                  add          a5, a4, t2
                  andi         s7, t2, 795
                  srli         a4, a1, 11
                  sltu         t3, s8, t3
                  srli         s0, t5, 6
                  xor          a0, a0, s11
                  srli         t4, s1, 18
                  srli         a4, s2, 1
                  srai         t0, gp, 2
                  srli         t4, s8, 24
                  sll          a7, a2, s6
                  sub          ra, a5, a5
                  or           a7, s4, s1
                  and          gp, t3, s3
                  ori          zero, a4, -711
                  addi         gp, a3, -2035
                  auipc        t4, 886693
                  srai         s10, s1, 15
                  ori          s5, a3, 119
                  nop
                  slli         s7, s3, 5
                  xori         s8, s7, -419
                  sll          t6, t6, s2
                  and          ra, a6, a1
                  slti         s6, a5, -1923
                  srai         zero, zero, 29
                  sub          t2, a1, a5
                  andi         s0, t0, 1793
                  lui          s6, 435893
                  sra          a1, t2, a1
                  slli         s6, s5, 4
                  sltu         s7, t6, t0
                  lui          s7, 617813
                  sltiu        s4, s5, 294
                  addi         s7, s3, 1795
                  sltu         s1, gp, s0
                  xor          s6, gp, s3
                  slti         t2, s3, 642
                  nop
                  srli         a7, s1, 25
                  xor          ra, a1, zero
                  sll          tp, t5, sp
                  ori          s6, zero, -58
                  xori         a3, a1, 1564
                  lui          zero, 257617
                  or           a4, sp, t1
                  xor          t4, t0, tp
                  slli         t4, t6, 20
                  ori          t2, sp, 932
                  lui          a0, 61128
                  andi         zero, a1, -1259
                  or           s6, s2, a0
                  nop
                  slt          a3, a4, ra
                  slli         s4, s11, 20
                  sltiu        t0, s5, -702
                  srai         a7, a4, 13
                  ori          a3, a2, 1541
                  lui          t5, 905300
                  sltu         t3, s2, a7
                  or           t0, a3, s9
                  srai         s0, sp, 8
                  lui          ra, 208843
                  srai         a5, s3, 30
                  srli         a4, t1, 25
                  or           tp, s8, a7
                  slti         s7, t3, -80
                  xor          s10, a1, s0
                  sltu         t2, zero, s6
                  ori          t1, t6, -1255
                  andi         a3, s11, -932
                  or           a1, t1, s6
                  andi         s8, a4, -1921
                  sltiu        a4, a3, 1418
                  slti         s5, s1, 1761
                  xor          t1, a4, a2
                  nop
                  slt          t1, t6, a2
                  add          a3, a7, t1
                  nop
                  or           s7, a6, a2
                  xor          t0, a2, t5
                  xor          s10, t4, s8
                  sltu         sp, s5, s4
                  or           a2, a7, t3
                  slli         a4, t4, 3
                  srl          tp, s10, s8
                  slti         t3, tp, -1042
                  sll          t6, s3, t4
                  sltiu        sp, t4, -913
                  nop
                  sltiu        s8, s10, 1449
                  add          tp, s11, t4
                  ori          s0, s11, 1748
                  sra          gp, s6, a6
                  srli         s5, sp, 1
                  srli         a3, t3, 27
                  add          s8, sp, t3
                  xor          t3, t2, s5
                  srai         a1, a0, 26
                  slt          s9, a2, a0
                  andi         t1, s1, -515
                  and          tp, s11, gp
                  xori         s10, gp, 672
                  sra          a2, t4, zero
                  lui          s4, 197584
                  sub          t6, a7, t4
                  nop
                  slli         s7, a0, 1
                  sub          s7, s1, a0
                  xori         s10, a1, -513
                  lui          t4, 372268
                  slt          a3, zero, s7
                  sltiu        a4, s6, -503
                  slti         tp, gp, -915
                  sra          s9, zero, a2
                  xori         s0, t3, 989
                  andi         a3, s7, 285
                  sub          t1, t1, s11
                  or           a5, s9, a1
                  slli         s4, t3, 31
                  slti         t5, s5, 1804
                  auipc        s10, 400881
                  slt          sp, s10, a7
                  and          s10, a4, t6
                  sll          t6, tp, sp
                  nop
                  add          t1, a5, t6
                  srli         t6, s8, 14
                  slli         zero, t6, 31
                  and          gp, a0, s3
                  addi         a2, s3, 1167
                  srl          a1, ra, s4
                  xori         t1, s2, -757
                  lui          t2, 520795
                  andi         s5, a0, 485
                  sra          sp, tp, s9
                  slli         s8, sp, 19
                  srl          t4, s11, a3
                  or           s1, sp, a7
                  sltu         t6, a0, s2
                  slti         s10, a3, -752
                  addi         a7, gp, -80
                  sra          sp, ra, s0
                  sll          ra, sp, t4
                  andi         t0, a6, -492
                  sltu         gp, a0, s7
                  sra          t6, s9, ra
                  xori         a7, a2, 1252
                  and          t4, a3, a0
                  xori         s1, s2, -649
                  xori         zero, t3, -802
                  sltiu        t3, tp, -1948
                  nop
                  andi         a5, t2, 1961
                  slti         a4, s6, -88
                  xor          a4, t1, t3
                  lui          t4, 609639
                  nop
                  nop
                  auipc        a0, 856112
                  lui          a3, 155578
                  sltu         a6, s7, s6
                  xori         t3, a2, -446
                  sub          s9, a1, s5
                  andi         a4, s7, -1728
                  and          s5, s0, a3
                  sltiu        a3, t4, 1534
                  xor          s1, t3, gp
                  slt          s8, s4, t0
                  nop
                  add          a5, s2, a5
                  sub          gp, s1, sp
                  andi         t2, t1, 883
                  add          s0, s0, s3
                  sub          s10, s10, s0
                  andi         a6, a0, 117
                  slli         tp, s7, 12
                  and          tp, a2, a7
                  or           s1, t4, s11
                  sub          a6, a3, zero
                  slt          t1, a7, s1
                  add          s7, s1, s1
                  xor          a2, t5, tp
                  add          t0, a1, s10
                  xori         a7, s10, -931
                  sll          s9, zero, s3
                  sltu         a2, s7, s6
                  or           a7, t0, a7
                  ori          a6, s0, 331
                  sub          a2, t4, a6
                  sll          a0, a0, sp
                  slti         a7, zero, -1241
                  srli         sp, s8, 2
                  xor          s8, tp, t3
                  xori         a2, zero, -1403
                  ori          gp, a0, 381
                  slti         s8, ra, -1179
                  sll          t5, zero, ra
                  sub          t5, gp, sp
                  addi         a1, t5, -1522
                  sub          zero, a2, t0
                  lui          a1, 798077
                  nop
                  xor          sp, t5, s9
                  sltu         t3, s8, ra
                  lui          a3, 711081
                  or           t3, s2, s3
                  sltu         s8, t5, a0
                  srl          a7, s7, a0
                  andi         ra, s6, 301
                  sltiu        s6, s11, -848
                  srai         t0, s6, 26
                  slt          t6, a6, s10
                  sltu         a7, s7, a4
                  slti         t4, t5, -1156
                  srai         s6, a2, 10
                  sltu         a2, t3, t5
                  and          zero, t5, s7
                  or           s10, a6, gp
                  sltu         ra, s1, a5
                  srl          s7, ra, zero
                  nop
                  sll          a5, s7, s3
                  and          sp, a4, s7
                  srai         s0, s6, 21
                  slt          t1, t2, a2
                  srli         s0, s4, 13
                  sltiu        a4, s8, -196
                  slti         a0, t3, -1801
                  slli         s10, s9, 28
                  lui          t4, 544475
                  andi         tp, s3, 968
                  sltiu        sp, s5, 875
                  sltiu        a3, s2, -1323
                  sll          a1, t3, s7
                  srai         t5, s6, 18
                  sub          a6, ra, t5
                  sltiu        a2, gp, -44
                  sltiu        a0, a4, -1370
                  sub          s8, t3, t5
                  add          zero, ra, a7
                  addi         a6, s8, -1052
                  andi         a2, a0, -799
                  sltiu        s0, a5, 325
                  sltiu        t3, a0, 403
                  lui          a4, 787715
                  andi         a7, a2, -1739
                  xor          gp, s2, a1
                  slti         s6, s2, 1317
                  srl          a0, a5, s3
                  ori          a2, sp, -1212
                  nop
                  lui          s0, 202116
                  sub          a5, s8, s8
                  andi         s0, s0, -1796
                  sltiu        sp, a4, -1479
                  sll          a1, a6, t4
                  slt          a4, s6, a4
                  auipc        tp, 257371
                  auipc        t4, 994721
                  lui          t5, 711714
                  sltu         t3, s11, tp
                  xor          s6, a4, s7
                  sll          t3, s3, t5
                  slli         t1, a0, 20
                  or           s9, s4, a5
                  slt          s6, t0, a5
                  add          a3, s7, a3
                  sltiu        t5, gp, -1287
                  sll          a2, a4, a5
                  andi         t6, s9, -460
                  auipc        s8, 104842
                  auipc        s6, 26625
                  sltiu        t2, s6, -1099
                  sll          s10, gp, s11
                  auipc        a2, 1046200
                  sub          a0, s11, t0
                  srl          a5, t2, t6
                  auipc        t6, 314964
                  or           a7, ra, a7
                  srai         t1, s8, 21
                  sra          s5, s9, s10
                  sll          zero, t2, t1
                  ori          t5, a5, 1090
                  srai         t4, a5, 4
                  srli         a7, a2, 18
                  srai         a3, s11, 25
                  addi         t2, s2, -823
                  srai         s9, a3, 8
                  xor          s10, t4, sp
                  sltu         a5, s4, s6
                  lui          t2, 1034382
                  add          s1, a1, gp
                  addi         sp, t3, 194
                  xori         t4, a3, 886
                  add          a6, s11, t4
                  sub          a1, s10, s10
                  add          t1, s10, a0
                  xor          t2, s5, t5
                  addi         s7, a7, 1191
                  sltu         a4, s3, t2
                  sltiu        t6, s9, 1717
                  and          t4, a0, ra
                  ori          t5, s10, 2040
                  srli         s10, t2, 8
                  auipc        s7, 458910
                  slti         gp, a4, -1372
                  add          ra, s3, a3
                  lui          a2, 657463
                  auipc        tp, 889627
                  add          t3, a6, s11
                  sra          s6, a5, s11
                  xori         s4, s4, -750
                  sltiu        a6, s8, 575
                  slt          s4, t2, s9
                  sltiu        a7, s3, -1752
                  slli         ra, zero, 15
                  sltu         zero, t4, s0
                  xor          s9, a7, zero
                  sltu         t3, s10, s10
                  srai         ra, ra, 6
                  nop
                  srai         s7, s2, 9
                  nop
                  sltu         s9, zero, t0
                  sub          s6, s2, t5
                  srli         a3, s7, 4
                  or           t1, a6, tp
                  andi         t0, a3, 1153
                  sltiu        s10, a7, -1864
                  and          t6, a7, tp
                  srli         s4, ra, 20
                  add          t2, a4, a1
                  srli         gp, sp, 30
                  sltu         a6, ra, t1
                  sltu         s9, t4, s3
                  slti         s9, a7, 1934
                  slt          a0, s0, t3
                  andi         t3, a6, 1073
                  or           s4, s9, s3
                  slli         s0, t1, 3
                  slti         s6, zero, -1977
                  auipc        a3, 324545
                  ori          a5, gp, 1963
                  xor          sp, a0, s2
                  xori         a3, s6, 1060
                  srl          s0, s2, t2
                  add          t4, t1, s0
                  lui          s4, 802805
                  sra          a7, s7, t1
                  auipc        t3, 237300
                  slli         s6, t1, 28
                  and          s1, a6, s3
                  or           ra, ra, t0
                  sltiu        a3, s2, 353
                  sll          s4, gp, tp
                  sra          t2, s10, t5
                  andi         a7, t4, -1138
                  srli         t3, a7, 3
                  nop
                  auipc        t5, 626802
                  nop
                  slt          a4, t2, a2
                  addi         a7, a0, 1879
                  andi         a4, s11, 1067
                  sltu         t0, s1, s11
                  addi         s7, a1, 1007
                  sll          s8, s6, zero
                  nop
                  xor          s4, ra, s6
                  or           a5, gp, t4
                  addi         t6, s7, 589
                  srai         t1, t3, 30
                  lui          s8, 582639
                  slli         zero, tp, 12
                  or           a2, s5, s10
                  or           sp, s11, t2
                  xor          s8, t0, s5
                  srl          a7, ra, s4
                  sltiu        a7, t0, -962
                  ori          a2, tp, 1864
                  slt          a5, a3, s1
                  ori          zero, s2, 492
                  sll          s10, a6, a2
                  slt          t1, t3, s4
                  sub          s4, s4, s3
                  sll          a6, a4, t5
                  add          zero, s10, s9
                  or           a7, s2, t1
                  xori         t1, s10, 430
                  and          t0, a6, sp
                  xor          s4, s0, s10
                  and          s0, s1, s3
                  sra          s7, t6, s10
                  auipc        s1, 458173
                  sltu         sp, t6, s6
                  and          zero, s10, a3
                  slti         s0, a7, -1077
                  addi         a5, t6, 1556
                  add          s4, sp, t0
                  slli         s4, a0, 4
                  xor          a1, ra, s10
                  ori          t1, s8, -698
                  andi         a3, zero, 422
                  sltu         tp, a0, s7
                  sub          a6, t4, a5
                  auipc        t0, 551459
                  addi         a7, a5, -736
                  sltiu        t0, t2, -1577
                  sltiu        a0, sp, 1168
                  nop
                  nop
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_24
                  li           a7, 0x80000000
                  li           t3, 0xffffffff
                  li           gp, 0x2e5d76f5
                  li           s10, 0x80000000
                  li           s7, 0x80000000
                  li           s9, 0x0
                  li           s6, 0x0
                  li           a4, 0x0
                  li           a1, 0x0
                  add          a1, a4, s6
                  addi         s9, a7, -905
                  auipc        s7, 288142
                  lui          s9, 415590
                  add          s6, s10, a7
                  auipc        t3, 728749
                  sub          a4, a4, a7
                  sub          a1, a1, s7
                  nop
                  addi         a7, t3, -1298
                  auipc        s6, 390114
                  add          gp, a1, s7
                  sub          gp, s7, t2
                  addi         gp, s6, -19
                  auipc        s6, 538179
                  addi         a7, gp, 84
                  lui          t3, 676969
                  nop
                  nop
                  sub          t2, t2, t3
                  add          s10, a7, s9
                  nop
                  auipc        a4, 539641
                  lui          a7, 750657
                  sub          gp, t2, a1
                  lui          s9, 990131
                  auipc        t3, 1048028
                  nop #end riscv_int_numeric_corner_stream_24
                  nop
                  and          s10, s5, a5
                  slt          s9, gp, sp
                  addi         s6, s9, -1941
                  xor          a4, s10, t4
                  and          s6, a2, s11
                  srai         t6, t3, 14
                  xor          tp, s7, a4
                  nop
                  or           s8, sp, s9
                  lui          t1, 269396
                  xor          s4, sp, s10
                  srli         t0, zero, 24
                  sltiu        a0, s6, 71
                  srai         t1, t6, 30
                  slt          a5, t0, s4
                  andi         t2, sp, 351
                  sub          t5, s10, s11
                  srai         sp, s7, 19
                  slti         zero, a3, -2038
                  xor          sp, a6, s0
                  slt          gp, s5, s8
                  auipc        s4, 680019
                  ori          sp, a4, 1223
                  srl          t6, s6, a3
                  sltu         s10, s8, zero
                  addi         s4, t4, 21
                  nop
                  sltiu        s4, t3, 595
                  srl          t3, a6, s8
                  or           s0, t2, s9
                  or           s1, s8, t3
                  slli         s6, s11, 20
                  lui          a2, 594132
                  srai         tp, s9, 5
                  or           t0, t0, sp
                  add          gp, s4, s10
                  slti         tp, s5, -1542
                  sra          a1, a1, a2
                  xori         s9, a5, -1392
                  addi         ra, t1, 893
                  slli         a0, s11, 22
                  srai         gp, a0, 19
                  or           s5, s7, t1
                  slt          a4, s2, a0
                  sub          a5, s6, s9
                  srl          a0, t5, s2
                  slti         t0, s8, 123
                  sra          s9, a2, s9
                  srl          t3, sp, gp
                  sra          s10, s9, s6
                  xori         s10, tp, 1419
                  xor          sp, s5, s8
                  slli         s7, tp, 19
                  sltiu        s6, t2, 1621
                  sub          a0, s7, s3
                  nop
                  xori         a2, t2, 2011
                  nop
                  sra          a2, a4, t6
                  andi         t6, s4, 1519
                  sll          t4, s9, s4
                  auipc        s9, 48688
                  srli         t4, a6, 7
                  add          a4, s7, ra
                  srli         s8, t0, 4
                  ori          s5, a4, -1809
                  slt          s5, s9, t5
                  add          s10, t1, s11
                  slt          s0, s9, s9
                  or           a2, t5, t6
                  andi         a7, a3, 734
                  slt          t1, a5, a2
                  sltiu        s7, t5, 486
                  auipc        a6, 750568
                  srli         tp, t5, 9
                  auipc        t2, 462621
                  andi         a6, s2, -1667
                  sll          a2, t5, t5
                  sltiu        ra, s7, 1658
                  add          tp, tp, t0
                  sra          tp, a0, zero
                  slli         s5, s4, 20
                  and          s0, a4, t3
                  lui          zero, 688615
                  or           s5, s2, t4
                  andi         t0, t3, 419
                  sltiu        a5, a2, -1039
                  sll          a7, a2, t6
                  lui          s4, 1016174
                  srli         a4, s3, 2
                  and          a6, a6, t2
                  srli         sp, a5, 2
                  sll          gp, t2, a5
                  slt          s0, tp, sp
                  auipc        t1, 97536
                  or           t6, t1, t4
                  add          a6, s4, s7
                  sra          ra, a4, ra
                  sll          t1, s5, a5
                  srli         a5, t4, 18
                  andi         a3, a2, 875
                  slt          a5, zero, s9
                  sra          t4, t3, s11
                  sub          a5, tp, t5
                  srli         t3, s11, 18
                  slli         a0, t1, 5
                  srli         gp, s3, 12
                  xori         s9, s7, 891
                  or           a3, t3, s3
                  andi         a1, s6, 1760
                  slti         t0, t4, 356
                  addi         s1, s2, -648
                  xori         a4, s1, -1174
                  ori          a6, s3, -49
                  sltiu        t5, t0, 982
                  auipc        a5, 65614
                  ori          s1, s10, 670
                  slli         a5, gp, 19
                  sll          a0, a2, a0
                  slti         sp, s2, -661
                  sltiu        sp, t5, 1174
                  nop
                  slt          s8, s8, t5
                  and          sp, gp, a3
                  sltiu        zero, s5, -873
                  sll          s5, a5, a4
                  slli         gp, sp, 29
                  lui          t5, 752842
                  ori          t1, gp, 531
                  sltu         t1, s5, a6
                  slti         s5, s0, 168
                  xori         s6, gp, 1547
                  sra          s0, t3, s4
                  xori         s10, s9, 1259
                  andi         s10, t6, 1832
                  addi         gp, s2, 530
                  nop
                  sub          s5, a0, a4
                  slt          a6, gp, s1
                  xori         gp, s7, 250
                  nop
                  slli         a5, t3, 27
                  addi         a1, ra, 278
                  add          tp, ra, gp
                  xori         s6, s10, -1269
                  xor          zero, t0, a4
                  or           t0, s4, t2
                  slli         t3, a6, 9
                  and          gp, s10, s6
                  slti         gp, t6, 1928
                  nop
                  srai         s1, t4, 30
                  srl          a0, s7, tp
                  srli         t4, a0, 7
                  xor          s9, a5, s0
                  add          sp, s1, a0
                  sltu         a6, s1, a4
                  auipc        ra, 27672
                  lui          s1, 390839
                  nop
                  or           ra, a7, s8
                  addi         a3, a3, 515
                  slli         a7, ra, 19
                  srai         s9, a3, 20
                  slli         zero, sp, 26
                  add          t3, a1, s5
                  and          ra, t1, zero
                  slli         s4, a7, 1
                  sltiu        a2, s1, -1216
                  srai         a1, a3, 5
                  and          a0, s6, s8
                  sltu         t1, t3, t2
                  slt          ra, t5, sp
                  srai         t0, a4, 13
                  sll          t3, zero, s4
                  sub          gp, t0, s3
                  auipc        zero, 419685
                  xor          s9, sp, s6
                  add          a2, sp, a5
                  sra          t1, s7, a4
                  sub          s7, s9, t6
                  slt          s5, s9, zero
                  slt          gp, s10, tp
                  lui          t1, 1026530
                  nop
                  andi         s5, t3, -293
                  slti         a1, gp, -661
                  ori          s6, t6, -1452
                  and          a6, t5, s3
                  or           s4, t6, t6
                  addi         t1, a4, -680
                  xor          gp, t1, gp
                  slt          a5, s4, a7
                  auipc        a7, 1022471
                  andi         t2, t2, 1976
                  or           s0, a4, a6
                  slli         a0, tp, 13
                  srli         a7, s5, 12
                  slli         s6, t0, 18
                  nop
                  or           a4, a7, s3
                  srai         zero, s10, 23
                  auipc        t4, 730747
                  slti         s4, a6, 936
                  andi         a6, t4, -1006
                  andi         s8, t0, 681
                  sra          sp, s7, s7
                  andi         t6, a1, 1028
                  sub          a6, s3, sp
                  lui          a3, 688848
                  slt          t5, s8, tp
                  srai         a4, t1, 14
                  sll          s6, zero, a3
                  srai         s9, a7, 31
                  nop
                  sltiu        s10, tp, 307
                  srli         a3, zero, 11
                  addi         s9, zero, -2014
                  auipc        a0, 5682
                  or           t0, t6, s6
                  andi         s7, t0, -706
                  ori          t6, a5, -359
                  srl          s10, t3, t0
                  slli         s0, s11, 25
                  addi         t0, t2, -246
                  srli         s7, ra, 18
                  addi         a6, a6, 41
                  ori          t6, s3, 2003
                  slt          t5, s1, tp
                  and          s10, gp, s1
                  ori          t5, gp, 1624
                  srli         gp, s7, 16
                  sra          a2, a1, a7
                  ori          a4, s10, 474
                  srl          t4, t6, ra
                  slti         s9, a2, 1532
                  add          s10, t2, zero
                  slt          s5, t2, s7
                  ori          a6, s6, -419
                  sra          t4, s7, a7
                  slti         a5, gp, 1083
                  sll          a0, t5, a7
                  slti         a5, s9, -1454
                  xori         a0, gp, -543
                  sra          t5, s10, gp
                  slli         s1, sp, 30
                  xori         s8, a0, -650
                  sra          s10, t2, t3
                  sra          sp, t4, a4
                  andi         a1, s2, -308
                  sltu         gp, ra, a2
                  andi         a3, t1, 1845
                  sub          a1, s1, t3
                  andi         tp, a3, -684
                  srli         t2, gp, 26
                  sltu         t4, t1, a6
                  sltiu        t2, s9, 795
                  add          t1, zero, t3
                  slt          zero, zero, a4
                  add          a6, ra, sp
                  sra          s8, s1, s4
                  sltiu        t2, s7, -1652
                  sltu         a7, gp, s10
                  xori         a1, t6, 831
                  srli         s0, sp, 17
                  andi         zero, t3, 297
                  xor          t1, tp, t1
                  slti         a4, sp, -1975
                  srl          s1, a4, ra
                  sltu         sp, s11, t0
                  and          s10, s1, sp
                  and          a4, gp, t4
                  sltiu        t5, s1, -1477
                  and          s5, s6, sp
                  xor          a0, sp, a3
                  or           s0, ra, tp
                  add          s1, a5, s8
                  xori         t5, gp, 1176
                  lui          t3, 339499
                  slli         ra, tp, 27
                  add          a3, s10, s4
                  srl          ra, s10, a1
                  or           gp, a6, s1
                  sra          a6, a1, s8
                  srai         t1, s10, 20
                  sltu         s5, a6, a1
                  sltiu        s5, a5, -566
                  auipc        s4, 620081
                  srai         a6, s0, 11
                  sra          a7, a0, s4
                  sll          a6, t1, s1
                  and          s0, zero, s0
                  xor          t2, t0, sp
                  add          a4, s1, zero
                  nop
                  addi         a5, a5, 1926
                  xor          a0, s8, s1
                  sll          a2, s2, a3
                  xori         s10, t3, 1847
                  srl          s0, s5, s10
                  srl          t3, s0, a4
                  slli         t0, sp, 14
                  sub          sp, a0, a7
                  srli         a1, s6, 5
                  slt          a2, s4, a7
                  slti         t5, t1, -1992
                  addi         a6, a0, -1002
                  nop
                  auipc        t5, 737699
                  slti         a7, t0, -1389
                  andi         s7, t5, 388
                  xori         s5, s7, -1920
                  ori          s6, t4, -787
                  srl          gp, s10, a5
                  sub          t5, zero, s9
                  and          s9, s10, sp
                  add          gp, a5, t2
                  sltiu        a7, zero, -264
                  sltu         a7, s3, t0
                  slli         s0, zero, 7
                  addi         s9, s11, 179
                  srl          a0, ra, s8
                  auipc        s9, 1046342
                  andi         t4, s5, 740
                  sltiu        a4, s4, 1161
                  nop
                  slli         gp, s6, 6
                  and          a2, ra, a3
                  sll          sp, a5, t1
                  andi         t0, s4, -397
                  or           t4, t0, s0
                  or           t2, s5, a7
                  srli         t4, s11, 28
                  sub          s8, ra, s5
                  srai         t3, s8, 3
                  xor          s9, a0, s0
                  srli         a2, s3, 20
                  lui          gp, 676923
                  add          s8, t0, t4
                  ori          sp, s3, -144
                  sltu         ra, s10, s11
                  nop
                  srai         ra, s0, 29
                  ori          t1, s8, -2003
                  sra          tp, t4, tp
                  xor          a3, s5, a2
                  slti         t0, a1, -1806
                  auipc        t3, 977111
                  auipc        s6, 841048
                  slli         a7, t4, 0
                  slt          t3, s6, a6
                  xori         a1, s2, -133
                  or           s0, s9, t1
                  sll          t3, t4, a6
                  add          s5, s1, a4
                  nop
                  auipc        a6, 903472
                  lui          t4, 45577
                  sltiu        s4, gp, -80
                  srl          s5, gp, a5
                  sltiu        a5, ra, -1271
                  sltiu        tp, t4, -1140
                  sub          t4, a2, s3
                  sub          a4, t1, a2
                  lui          gp, 707529
                  ori          sp, a1, 1980
                  srli         t5, t4, 5
                  xor          s4, tp, s3
                  sltu         a1, a7, t1
                  addi         sp, a2, 134
                  sltu         ra, a6, a1
                  srl          t1, s11, a2
                  sll          s9, s0, sp
                  addi         t3, t1, -996
                  or           s9, s9, s0
                  sltiu        s6, a0, 429
                  xor          t6, t6, a7
                  ori          t2, t5, -990
                  ori          s0, t2, 1737
                  slli         s8, sp, 8
                  slti         s1, t6, -1363
                  srai         a6, s10, 2
                  sltiu        s5, a4, 1327
                  auipc        t3, 185547
                  slti         t5, zero, 1443
                  slt          s6, s5, s3
                  nop
                  xori         s4, t4, -1172
                  add          sp, a3, s7
                  slti         a4, t6, 846
                  xori         ra, t2, -299
                  lui          tp, 1037515
                  lui          a5, 962610
                  and          s7, a1, sp
                  add          zero, a1, s3
                  sll          a7, s1, a2
                  srl          a7, a5, zero
                  and          t0, a6, s7
                  add          s10, a0, t2
                  sltu         zero, s1, zero
                  sub          s5, t6, a1
                  andi         sp, s6, 264
                  slt          t1, s10, s8
                  auipc        t2, 187995
                  xori         a5, s0, -1182
                  sltiu        t5, tp, 411
                  sltu         s10, a7, t0
                  ori          s6, a2, -769
                  xori         a6, a0, -183
                  or           a1, a0, sp
                  sltu         s10, s3, a2
                  auipc        t6, 8339
                  sra          t1, a2, s4
                  slli         s9, a0, 13
                  slli         t3, s1, 11
                  ori          s8, ra, 1598
                  xori         s4, a6, 1231
                  slli         a6, s8, 9
                  or           s7, zero, gp
                  nop
                  lui          sp, 178099
                  xor          a0, a5, s0
                  srl          zero, a0, t1
                  sub          s7, s4, a6
                  slti         a3, a1, 1674
                  lui          gp, 452800
                  srai         s0, s11, 16
                  andi         ra, t6, -1661
                  slti         a0, a6, 1592
                  slt          s8, s11, t2
                  or           s10, gp, s11
                  srai         a2, s11, 31
                  ori          tp, a0, 1071
                  addi         a5, a2, 416
                  addi         s7, a2, 937
                  ori          gp, a1, -909
                  slti         a2, a2, -258
                  lui          a4, 949128
                  addi         s0, s5, 1987
                  nop
                  xori         a1, gp, -498
                  sra          a2, a4, s11
                  andi         s4, a7, -1538
                  nop
                  add          s4, t4, t0
                  slli         s6, a5, 31
                  auipc        tp, 149677
                  sub          ra, t0, tp
                  add          a4, ra, s7
                  sltu         a1, s7, a0
                  sub          a4, a0, s4
                  sra          a2, t0, t3
                  sll          a7, a7, zero
                  slli         t1, t1, 21
                  slt          t0, a6, a6
                  srai         s5, tp, 21
                  andi         t2, t3, -472
                  add          ra, s5, s11
                  or           t0, a7, s6
                  addi         t1, s5, -1280
                  xor          tp, t6, gp
                  srl          s0, s1, s9
                  xori         s4, zero, -1173
                  add          t4, sp, a6
                  sll          a0, t5, s7
                  andi         t4, t6, 832
                  addi         a5, t3, 17
                  andi         a1, zero, 1748
                  nop
                  srl          sp, s6, s10
                  and          t3, a3, a4
                  ori          s7, tp, -1117
                  srli         s1, t1, 24
                  addi         a0, sp, 116
                  addi         t4, t5, 276
                  add          t3, a1, ra
                  slli         s9, s7, 16
                  sltu         a4, tp, t5
                  andi         a2, s9, -478
                  slt          s5, t0, a7
                  add          t4, s6, s8
                  auipc        a0, 805193
                  andi         a0, t3, -2047
                  nop
                  andi         s5, a1, -662
                  add          t4, s9, s10
                  srl          s5, a6, a3
                  lui          s10, 552563
                  srli         a6, t0, 3
                  or           a3, ra, tp
                  sltiu        gp, zero, -1165
                  addi         a0, t5, -2005
                  auipc        t6, 606052
                  nop
                  add          a0, a4, s2
                  nop
                  sll          t6, t6, ra
                  sub          s6, s5, t5
                  addi         tp, a4, -305
                  sra          t0, a2, a0
                  slti         a4, s3, 1383
                  lui          a1, 97446
                  add          t6, ra, s8
                  auipc        zero, 360096
                  sltu         t2, a2, t5
                  sll          a3, a5, a1
                  slli         s10, zero, 31
                  sltu         s10, a2, sp
                  auipc        s8, 145371
                  sra          a6, s7, gp
                  sra          s9, t6, s8
                  srai         t4, s0, 16
                  sltiu        s8, s2, -1930
                  sltiu        gp, a6, 71
                  and          a0, t1, t6
                  or           t0, t3, a2
                  auipc        a4, 173155
                  sll          s5, s11, s4
                  xori         s7, ra, -1923
                  slt          s10, gp, a5
                  auipc        s6, 11417
                  sub          t1, a6, t5
                  slti         gp, t3, 904
                  sltu         tp, t5, gp
                  xori         s7, a1, -708
                  addi         sp, t5, -182
                  sll          t1, a7, a2
                  nop
                  slti         t0, a4, 1702
                  xor          s6, a2, tp
                  or           t4, a2, gp
                  nop
                  lui          s5, 576238
                  sltu         t0, gp, a1
                  andi         t1, tp, 1340
                  or           s4, s0, ra
                  nop
                  xor          a4, t2, s3
                  xori         s7, s7, -157
                  or           zero, zero, sp
                  and          s10, s8, a7
                  srli         ra, ra, 18
                  slti         s6, zero, 466
                  or           s8, ra, t4
                  nop
                  xori         t0, a3, 980
                  or           s7, a7, tp
                  add          ra, t5, a2
                  sra          t0, t0, t0
                  lui          s7, 545099
                  add          s8, s10, t3
                  or           s7, t1, s7
                  slli         tp, s3, 31
                  add          s10, s7, t1
                  slt          s5, s1, ra
                  sra          a3, s11, a5
                  sub          a0, t5, t5
                  xori         t6, a3, -1773
                  add          s5, tp, a0
                  slli         t2, t3, 2
                  sll          s8, ra, s2
                  sltu         a4, tp, a1
                  srl          a3, s6, sp
                  sltu         a3, a3, s6
                  xor          s6, s4, s5
                  and          t0, s7, t2
                  slli         t3, s4, 25
                  xor          a0, t4, gp
                  srl          t1, a5, s6
                  addi         a1, s6, 1829
                  or           tp, a1, t4
                  nop
                  srl          s9, ra, sp
                  addi         a7, t3, 1011
                  slti         a4, s2, 727
                  slti         a0, a3, 880
                  slti         gp, s7, -1827
                  add          a5, a4, gp
                  slli         gp, t6, 2
                  xor          s7, s11, t0
                  or           s1, s3, s1
                  or           t5, t4, t6
                  srai         t0, a6, 3
                  sltiu        a5, s2, -1021
                  lui          s4, 1039549
                  xor          a7, t2, a6
                  srli         a3, s4, 22
                  slt          s1, a7, a2
                  srli         t1, t3, 15
                  sltu         t4, a4, s7
                  or           gp, sp, a1
                  nop
                  sll          t4, a6, a6
                  sub          s4, zero, a1
                  slli         tp, a5, 2
                  add          a4, s2, a3
                  srai         t1, s6, 4
                  sub          t0, t0, a0
                  srai         t1, t1, 4
                  xor          s5, gp, a2
                  slti         s10, a1, -1327
                  or           s10, s1, s9
                  slti         tp, a3, -1132
                  auipc        s6, 657052
                  sub          tp, s4, t3
                  or           t3, s2, sp
                  slti         a4, s7, 862
                  auipc        tp, 645036
                  and          a1, zero, tp
                  srai         ra, s11, 15
                  slti         t2, sp, -5
                  xori         t0, a1, 1456
                  lui          a6, 816704
                  xor          a5, s9, sp
                  slti         t3, s1, -1181
                  ori          ra, t1, 114
                  and          s6, t4, tp
                  addi         a1, s8, 1737
                  and          a0, t3, a0
                  slt          tp, a2, t6
                  addi         s9, s6, -238
                  slli         s6, s9, 4
                  lui          s6, 979601
                  addi         a5, s0, -294
                  xori         a1, a0, -1307
                  and          s5, tp, ra
                  slli         t6, a3, 19
                  xor          s8, tp, t1
                  srai         a4, a1, 15
                  slli         s0, ra, 25
                  ori          s8, s5, 296
                  sltiu        t3, s1, 523
                  slt          t0, s10, s10
                  nop
                  add          s7, t4, gp
                  srl          s7, a1, s7
                  srl          t0, s4, t5
                  srl          a4, s3, s7
                  nop
                  ori          s8, s3, 1276
                  srli         a7, a3, 28
                  lui          a3, 69358
                  xori         t1, s4, 1227
                  lui          gp, 33138
                  sltu         a2, ra, a1
                  srli         s10, a2, 16
                  slli         ra, gp, 21
                  srl          a0, ra, a5
                  sltu         a1, tp, a5
                  srl          s6, t4, t1
                  srli         t2, s10, 18
                  or           a3, t1, zero
                  srli         t5, s8, 9
                  sra          t2, s11, a2
                  sll          a7, s7, a3
                  auipc        gp, 985477
                  ori          s9, sp, 888
                  nop
                  nop
                  xori         a0, t5, 358
                  add          t4, sp, s10
                  auipc        t5, 37112
                  xori         t6, a0, -1805
                  srai         a6, s2, 7
                  sra          s7, s2, s8
                  and          a0, t2, t4
                  sltiu        a4, a4, -562
                  slli         ra, t0, 26
                  add          a3, a5, s2
                  sra          a3, s10, t4
                  srli         s1, a1, 22
                  sltu         s8, s10, gp
                  srl          t5, s10, s3
                  addi         t1, s2, 559
                  slli         zero, a7, 8
                  or           zero, zero, s11
                  andi         s0, tp, 166
                  sltu         a5, s11, a2
                  sltu         s0, t0, zero
                  srl          t0, a0, s6
                  sltiu        t4, s1, -1604
                  sub          s4, sp, a4
                  slli         s8, s7, 5
                  sll          s9, gp, tp
                  andi         a4, t0, 1339
                  slt          t0, t3, sp
                  srl          s5, a2, t1
                  sltiu        t1, gp, -560
                  slli         s8, a2, 4
                  and          a3, s5, s3
                  add          s1, ra, t5
                  sll          t3, s11, s2
                  xori         t0, t6, 1489
                  or           sp, s3, a7
                  ori          s8, a2, -1704
                  andi         sp, s1, -444
                  add          sp, a7, t1
                  and          a6, a0, s0
                  sra          t5, t3, ra
                  srai         t4, a5, 13
                  srai         a7, s11, 18
                  srli         s10, s1, 23
                  andi         t4, a7, 31
                  srli         t2, t5, 2
                  sltiu        a3, s10, -904
                  andi         s1, s1, 1483
                  add          a1, tp, t6
                  sub          s7, a7, t0
                  sra          a3, ra, a4
                  srai         t3, t5, 2
                  xor          s8, t5, s8
                  add          a4, t0, a5
                  sra          sp, a1, sp
                  slti         a3, s5, -691
                  slli         zero, a5, 27
                  nop
                  sra          t0, a7, s5
                  lui          t5, 655420
                  sltu         a5, s4, t2
                  and          t3, a6, a3
                  slt          a5, t2, ra
                  xor          t1, s9, t0
                  sltu         s4, a1, tp
                  xori         gp, s6, -775
                  xor          s7, s11, gp
                  sra          gp, t5, s9
                  or           t3, zero, s9
                  lui          a2, 844442
                  ori          a7, sp, 88
                  sll          t6, sp, a2
                  nop
                  srai         t3, a7, 4
                  srli         t5, gp, 18
                  lui          s9, 282996
                  add          gp, t6, t2
                  srl          s0, a7, s10
                  lui          a7, 883822
                  slti         s10, s10, -1139
                  or           s10, a5, a1
                  sltiu        a1, a0, -988
                  ori          s8, gp, -1397
                  sltiu        s7, s6, -460
                  slli         s9, t1, 5
                  srai         a1, s9, 16
                  sll          tp, s6, tp
                  xor          t1, a4, t2
                  slti         s6, gp, 1767
                  nop
                  lui          t5, 949012
                  xor          s10, t2, a2
                  sltu         t6, s11, tp
                  sltiu        t3, s2, 1087
                  and          zero, t2, t6
                  andi         tp, s2, 974
                  slti         a4, s11, -604
                  srai         a2, s0, 21
                  lui          s7, 587693
                  lui          ra, 452919
                  sltiu        s1, t4, -209
                  or           tp, s9, zero
                  sub          t1, s7, t2
                  xori         gp, sp, -359
                  xor          t2, s9, ra
                  xori         zero, s5, -544
                  slt          s4, t0, t2
                  slli         gp, gp, 25
                  addi         a3, a3, -1925
                  and          a7, t2, s1
                  addi         a1, a0, -1256
                  slli         s1, s1, 10
                  srl          s0, a1, a6
                  xor          a2, t4, s4
                  slt          a2, a5, s9
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           gp, 0xffffffff
                  li           s8, 0x0
                  li           t1, 0x80000000
                  li           s10, 0x0
                  li           t3, 0x80000000
                  li           s7, 0xffffffff
                  li           a4, 0xffffffff
                  li           sp, 0x80000000
                  li           t5, 0x971d735e
                  auipc        t5, 154303
                  sub          s8, t3, t4
                  addi         t5, t1, -1767
                  sub          s8, a4, s8
                  addi         t3, gp, -334
                  lui          s10, 42160
                  auipc        t1, 669220
                  nop
                  sub          s8, sp, t5
                  lui          s7, 1030991
                  addi         gp, s10, 60
                  sub          t1, sp, t4
                  sub          s7, a4, s7
                  addi         t4, s10, -1135
                  auipc        s8, 660042
                  sub          s7, t4, a4
                  auipc        t4, 315388
                  addi         t4, sp, -114
                  addi         t4, sp, 1081
                  lui          s8, 573881
                  nop
                  nop
                  lui          t4, 204852
                  lui          s10, 70962
                  add          t3, t3, gp
                  addi         s10, a4, 1510
                  auipc        gp, 250733
                  auipc        gp, 863798
                  add          gp, sp, s10
                  auipc        t3, 302301 #end riscv_int_numeric_corner_stream_2
                  and          t1, s6, zero
                  nop
                  addi         ra, s5, -583
                  slt          t1, sp, t3
                  srli         a3, a5, 2
                  or           t3, a6, s1
                  srli         a0, a3, 12
                  xori         s4, t6, -1494
                  and          a1, s1, s2
                  slt          a0, gp, t2
                  xori         a0, s5, 372
                  sltiu        ra, a4, 620
                  srl          s5, a3, t0
                  srli         tp, t6, 30
                  slt          a6, s6, s5
                  sub          a6, s8, s7
                  srli         a7, a6, 26
                  sll          t6, t5, tp
                  add          s4, s2, a5
                  slli         a3, s4, 2
                  sltiu        t2, s6, 574
                  lui          a5, 83516
                  addi         t4, t0, -2006
                  sub          t2, a4, s2
                  xor          s9, a4, t2
                  xor          sp, zero, gp
                  sub          a6, a6, a5
                  lui          a0, 697282
                  srl          a4, s0, t5
                  srli         s7, s4, 7
                  srai         tp, gp, 26
                  andi         s5, zero, -753
                  sltiu        a6, s0, 669
                  srai         a6, s6, 2
                  slli         t5, a2, 21
                  slti         t0, a4, -1406
                  slli         a6, s3, 31
                  sub          a1, tp, t3
                  nop
                  srli         s1, s6, 19
                  and          gp, s3, a0
                  or           a5, zero, t5
                  sltu         tp, a7, t5
                  add          ra, s2, s7
                  and          s6, s1, a0
                  sra          a0, s2, s1
                  slli         tp, t1, 12
                  lui          t2, 830843
                  ori          tp, t2, -1412
                  ori          s7, s0, -1022
                  ori          a5, s11, -1501
                  sra          a7, s5, s0
                  sltu         t1, a4, s1
                  srai         a3, t6, 4
                  and          gp, a7, a6
                  and          t4, t0, s4
                  sub          a1, a2, t1
                  add          tp, s6, s11
                  ori          s0, a2, 1195
                  nop
                  sll          t6, zero, s10
                  add          t5, zero, s4
                  auipc        zero, 524012
                  sub          s10, a5, s11
                  add          t5, t2, s7
                  ori          s8, s4, 1235
                  xor          a2, sp, s4
                  slt          s1, s8, s5
                  sub          t5, s7, a2
                  lui          sp, 348108
                  srl          a3, tp, gp
                  or           s0, t0, s11
                  xor          t2, a5, s7
                  srl          sp, zero, a4
                  nop
                  andi         t5, a4, 463
                  sra          a0, a0, a7
                  ori          a6, a3, -687
                  xor          a5, s10, s2
                  and          a2, a0, a3
                  add          ra, s1, gp
                  nop
                  ori          a2, t5, -1953
                  and          ra, s6, a1
                  sll          s1, s10, s2
                  lui          s5, 681669
                  sltiu        s6, sp, 1522
                  slti         s1, a7, -343
                  nop
                  auipc        s0, 537917
                  slti         s4, t4, -368
                  slli         s4, s6, 6
                  slti         t6, a6, 210
                  slt          gp, s3, a1
                  lui          t6, 248614
                  slt          t3, zero, t3
                  slli         ra, t6, 30
                  xori         a2, s1, -313
                  xori         s6, t6, -1326
                  sltu         a1, zero, s11
                  add          s4, t5, sp
                  sra          a6, s8, s6
                  sltiu        s5, s9, 2037
                  auipc        zero, 237006
                  ori          gp, s11, 1310
                  sub          a2, t2, s7
                  slt          a5, t0, t3
                  xor          t0, s9, t6
                  and          s0, s10, a1
                  add          s9, a5, s9
                  srai         t0, s10, 5
                  srai         tp, s9, 25
                  ori          t2, s8, 802
                  sra          s8, s11, t5
                  or           s7, a5, gp
                  srli         s8, t6, 1
                  slt          s5, a5, a2
                  nop
                  slti         s7, t3, -736
                  xor          s0, s5, a7
                  add          zero, sp, t5
                  slt          s7, t3, a4
                  and          t0, t6, a7
                  srl          t3, t5, ra
                  auipc        s8, 874637
                  sra          gp, a0, t0
                  srli         s0, s1, 13
                  ori          s5, s8, 601
                  xor          ra, a5, a1
                  or           t1, sp, a3
                  srli         t4, t0, 23
                  lui          a7, 856280
                  slti         s9, a2, 138
                  sll          a3, s0, s2
                  srli         s1, s8, 8
                  slt          zero, a5, a4
                  xor          s10, a1, sp
                  srai         s10, a1, 11
                  xori         s5, t6, -657
                  xori         s1, s9, 660
                  ori          a5, gp, -1914
                  sltiu        s5, s9, -750
                  or           s7, t4, s7
                  lui          t2, 780076
                  or           a1, t0, t6
                  nop
                  sltiu        s6, s6, 1283
                  sra          s4, s1, a5
                  sub          s5, s2, t6
                  sub          t3, t3, t6
                  andi         a2, gp, 1517
                  sub          gp, t2, t6
                  srli         t2, s3, 5
                  slti         a5, s2, -810
                  srl          t0, a1, t0
                  sltiu        ra, a3, 1237
                  auipc        s6, 493603
                  nop
                  srai         a2, zero, 4
                  sll          a5, t3, t0
                  srl          t0, t5, s10
                  and          t6, s7, s5
                  add          s9, t4, a4
                  srai         s0, a4, 2
                  srli         s8, t6, 0
                  lui          a0, 70673
                  sll          ra, a0, a0
                  xori         a3, a7, -436
                  and          s10, s3, s2
                  sll          t6, s3, s6
                  xor          a1, gp, t0
                  sltu         a5, sp, s10
                  slt          s10, s1, a4
                  xori         t1, t0, 1981
                  ori          s4, t5, -1087
                  slti         s5, t2, 2038
                  andi         a1, sp, -1072
                  slti         tp, ra, 271
                  ori          s4, a5, -767
                  sltiu        t1, s6, 1114
                  sll          a0, s8, s9
                  sll          s0, s5, t0
                  xor          a1, sp, t5
                  sltu         a5, s11, tp
                  srai         s7, t4, 27
                  or           t3, a0, s3
                  sltu         s10, a3, a6
                  sltu         s5, t0, s9
                  auipc        t4, 526593
                  xor          t1, s6, s4
                  sltiu        a6, a1, -1409
                  addi         a2, s9, -850
                  sll          a2, a0, a4
                  or           a7, s0, t6
                  sltu         s0, t2, t6
                  nop
                  andi         tp, ra, -393
                  sub          tp, sp, tp
                  sltu         a0, t1, a6
                  auipc        t1, 299400
                  and          s8, s1, a3
                  or           t1, a3, t2
                  lui          a7, 358389
                  nop
                  auipc        s9, 1023643
                  add          t5, s4, a6
                  sll          a7, zero, t2
                  lui          t5, 117641
                  sub          sp, s10, a7
                  lui          t0, 545408
                  sltu         a0, a4, s10
                  sra          s4, a1, s1
                  and          sp, s5, a2
                  auipc        t1, 903575
                  sltu         t5, a4, sp
                  add          t6, tp, a1
                  ori          a4, t3, -1587
                  xor          t1, s8, s5
                  nop
                  addi         a5, s8, 1751
                  sltu         a7, a0, a6
                  xor          a5, s8, s5
                  sltu         a3, a7, s9
                  srl          t5, s10, a1
                  sll          s4, t6, a0
                  ori          t0, t3, -1368
                  add          s7, s3, a5
                  srl          t0, a1, zero
                  sra          s5, a0, s10
                  lui          tp, 224297
                  srai         gp, s0, 25
                  srl          s9, s5, s7
                  xor          t2, s6, s10
                  andi         t2, a0, 525
                  sltiu        t5, s7, -1704
                  xori         t2, a6, 1748
                  sub          gp, t1, a1
                  srai         t3, zero, 24
                  slli         a6, s3, 30
                  slt          a2, s1, ra
                  xor          a1, zero, ra
                  ori          ra, s2, 1046
                  nop
                  lui          t6, 142768
                  sltu         t1, s7, a3
                  lui          gp, 994391
                  xori         s4, t3, 1043
                  nop
                  slt          ra, s8, t5
                  xori         t4, a4, -1131
                  sra          s10, s8, s3
                  sll          tp, a5, ra
                  add          tp, sp, t3
                  sll          zero, a3, s8
                  nop
                  add          s9, t4, a5
                  add          a5, s10, s3
                  andi         s9, s1, -1321
                  auipc        a0, 213882
                  xor          s8, a0, t0
                  slt          a0, s3, t2
                  ori          ra, s9, 1915
                  nop
                  andi         ra, s0, -285
                  lui          gp, 403230
                  or           s8, s8, tp
                  srai         zero, t4, 11
                  srai         s9, tp, 12
                  lui          gp, 482519
                  srl          a6, a0, a7
                  srai         sp, t1, 26
                  sltiu        a5, s3, -1717
                  srai         t5, s0, 1
                  xor          a2, s9, a6
                  sub          s5, s9, a4
                  xor          zero, s2, t2
                  ori          tp, zero, -477
                  sra          t0, s0, a0
                  and          a7, a4, zero
                  and          t6, t4, ra
                  slli         zero, t5, 4
                  xor          t4, tp, a0
                  xori         t0, s3, -453
                  srai         t1, a3, 18
                  srai         s4, gp, 20
                  slti         a4, t6, -1859
                  ori          a2, a5, 1825
                  auipc        a0, 593291
                  ori          ra, gp, -398
                  or           ra, t4, gp
                  slti         s8, a2, 181
                  lui          s5, 62397
                  ori          a7, s4, 962
                  xori         a4, ra, -1304
                  srli         a7, a0, 18
                  auipc        t1, 395882
                  xori         t5, t3, -8
                  slli         s5, zero, 1
                  srli         sp, t2, 20
                  slt          t0, a1, s11
                  srl          s5, tp, s4
                  xori         t0, a4, 786
                  sub          s0, s8, tp
                  srl          a4, t0, s1
                  srl          a1, a2, s9
                  xori         s5, a1, -10
                  andi         s4, a6, -930
                  lui          t5, 917936
                  addi         s0, t1, 1120
                  sltu         a5, t6, s9
                  lui          sp, 555071
                  xor          a5, t2, a0
                  lui          tp, 231230
                  nop
                  and          t6, s0, s1
                  sra          a4, sp, t4
                  srl          s7, a2, s10
                  nop
                  xor          s1, t6, a1
                  and          a0, sp, t5
                  auipc        a0, 684903
                  nop
                  addi         t1, gp, 1163
                  xori         gp, sp, 120
                  sra          a2, gp, a3
                  or           gp, t6, s3
                  srl          ra, s3, a5
                  srli         t3, s5, 27
                  srli         ra, t0, 13
                  srli         s7, s6, 27
                  ori          t6, t4, 1167
                  auipc        a6, 55943
                  add          s5, s10, t0
                  sll          s6, s2, s3
                  addi         s5, a1, 1495
                  xor          t1, s10, a7
                  slti         s1, a5, -485
                  sra          ra, a7, s2
                  sltu         a0, a7, a5
                  srli         a2, t6, 4
                  srl          s0, t0, a7
                  or           t4, t0, t6
                  and          t5, a6, a5
                  sub          t6, s4, t3
                  sll          s6, t0, zero
                  sll          t0, ra, t5
                  sub          a0, gp, a1
                  slt          s9, tp, zero
                  ori          zero, gp, 748
                  sltu         tp, s2, a3
                  ori          t0, ra, -271
                  sll          a4, zero, t1
                  xor          gp, a5, t3
                  auipc        ra, 807959
                  slli         s6, s8, 20
                  andi         a4, s7, 779
                  sltu         s7, s7, s3
                  sll          s1, s2, s5
                  srl          zero, a1, a6
                  slti         t0, s5, -1591
                  lui          a3, 444826
                  and          a5, s4, a5
                  sltiu        t1, a6, -608
                  sltiu        s7, a4, 1266
                  srli         sp, s2, 31
                  xor          s9, s8, t6
                  slli         t0, a6, 21
                  srli         a3, zero, 19
                  ori          s6, s10, -486
                  slt          s5, s1, s0
                  sltiu        a3, tp, -559
                  andi         s4, a1, 1155
                  srai         tp, t6, 1
                  srl          s10, s3, ra
                  or           s5, t4, zero
                  sltu         t5, s10, ra
                  lui          s5, 307060
                  ori          sp, a2, -477
                  xor          t2, s11, t2
                  or           t0, t4, s4
                  srli         t4, tp, 4
                  srai         s6, a6, 20
                  srli         a4, s5, 29
                  sltu         t4, a0, t3
                  sub          t5, a2, s2
                  slti         t3, a7, -747
                  sub          a0, s6, t1
                  and          t6, t1, a5
                  srli         s10, a0, 29
                  sll          a2, s8, s5
                  srl          tp, t2, s9
                  xor          t3, a4, t6
                  slli         a0, a6, 7
                  or           t2, s2, s7
                  sub          s4, s8, sp
                  sltu         t5, s6, a0
                  ori          zero, a5, -1839
                  sra          a4, sp, s2
                  slli         s5, a1, 27
                  sll          a3, s7, s10
                  nop
                  srai         t1, a1, 21
                  slt          s5, s3, ra
                  auipc        s7, 182040
                  sltiu        t5, s4, -1605
                  and          a3, s1, a2
                  xor          a1, t5, s11
                  srli         zero, s4, 25
                  nop
                  sll          t4, t1, t3
                  slli         a2, t4, 25
                  sltu         a2, s0, ra
                  sub          a4, t6, t5
                  sltiu        a1, a7, 1695
                  and          s4, s2, s3
                  slti         sp, t1, 788
                  srl          s7, a1, t2
                  sra          tp, s8, s2
                  sltu         t2, a0, s6
                  sra          t6, a6, t3
                  sra          t6, a5, a1
                  sltiu        t5, t6, 1765
                  sll          s9, t5, t2
                  add          s4, a1, a4
                  xori         gp, zero, -1555
                  sltiu        a3, sp, -1360
                  slti         sp, s5, 231
                  xor          s10, t3, s7
                  srai         s10, s9, 21
                  sltu         ra, t6, s7
                  sll          a3, t6, a0
                  auipc        a6, 403690
                  auipc        t0, 783812
                  xori         ra, s4, -1512
                  slt          s8, t3, a0
                  slt          t2, s1, s8
                  srai         t2, t5, 19
                  and          tp, ra, ra
                  sub          s9, a4, a2
                  sll          s0, s7, zero
                  add          s7, a2, t4
                  sll          a6, t5, t1
                  srai         t2, s8, 6
                  or           t3, gp, sp
                  andi         a1, s6, 1947
                  sltiu        s1, t0, -496
                  slti         s5, s6, -389
                  slt          s6, t3, s3
                  srai         a5, sp, 0
                  add          t2, s6, s11
                  add          s7, t1, a5
                  xor          tp, tp, gp
                  sltu         s8, s11, t3
                  slt          sp, s2, s9
                  srli         a3, a1, 6
                  sub          a3, s3, a7
                  sltiu        s4, sp, -1190
                  sltu         t0, ra, zero
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           t6, 0xffffffff
                  li           gp, 0xffffffff
                  li           t3, 0xffffffff
                  li           tp, 0xe4b5cce8
                  li           s10, 0xffffffff
                  li           s6, 0x14c560b6
                  li           s7, 0x0
                  li           a0, 0xffffffff
                  li           a3, 0x0
                  nop
                  sub          tp, t6, gp
                  add          gp, t3, s10
                  sub          a3, gp, t6
                  sub          tp, a3, t3
                  lui          t3, 906046
                  add          a3, s10, t3
                  lui          tp, 243625
                  add          a6, tp, s10
                  addi         a0, s7, 1792
                  lui          tp, 1011647
                  add          t6, t3, s6
                  auipc        t3, 456281
                  auipc        s6, 517758
                  nop
                  addi         a0, tp, 1931
                  auipc        t3, 721862
                  lui          a6, 20390
                  sub          a0, gp, t3
                  auipc        t3, 996578
                  add          t3, t3, a6
                  auipc        a0, 740833
                  lui          t6, 83435
                  addi         gp, s10, 765
                  nop #end riscv_int_numeric_corner_stream_14
                  srai         t3, t1, 4
                  ori          t2, s9, 97
                  slt          s10, t3, ra
                  sltiu        a2, tp, -1531
                  ori          s1, sp, -1944
                  slt          t5, s8, t0
                  sll          s7, a2, s4
                  slli         s6, t3, 28
                  nop
                  sub          t1, t3, gp
                  and          a6, a7, s6
                  srl          s0, t1, a0
                  ori          a3, t1, -442
                  xori         a5, sp, -1767
                  sltiu        a0, s6, -969
                  sll          s9, s5, s10
                  slti         tp, t6, -1614
                  srl          a7, t2, a4
                  srli         s1, a0, 2
                  auipc        gp, 490893
                  nop
                  sltu         t3, a4, s2
                  srli         a6, s7, 18
                  srli         s8, s11, 9
                  xori         s6, a7, -1752
                  sltiu        t4, a7, 108
                  srai         a5, sp, 21
                  slti         a6, a4, -1618
                  andi         s9, s8, -479
                  srli         a7, t2, 6
                  auipc        a2, 61767
                  sltu         zero, s2, s0
                  slli         zero, s0, 25
                  slli         tp, s7, 1
                  slti         a1, sp, 441
                  add          t0, s10, tp
                  slti         s7, s6, 1704
                  nop
                  andi         sp, t5, 1074
                  slli         a5, a1, 27
                  nop
                  auipc        s10, 521330
                  sra          t3, a1, a2
                  xor          t2, a0, t2
                  auipc        a0, 960911
                  or           s4, t0, t2
                  nop
                  sra          t3, a3, s11
                  srai         t4, s4, 13
                  sra          a2, t6, gp
                  add          s0, s5, t3
                  lui          s5, 687132
                  xori         s7, a7, 537
                  add          a3, s6, ra
                  ori          s4, t6, -1795
                  or           t4, a6, s11
                  xori         s7, s11, 2
                  add          ra, ra, s6
                  sltu         s7, a4, s1
                  srai         a1, a2, 7
                  srl          t2, a4, s0
                  add          gp, s5, s5
                  slt          s4, s4, s9
                  srl          t5, ra, a2
                  add          s10, s10, s6
                  sltiu        t0, a2, 865
                  auipc        a7, 161666
                  slt          s7, s7, sp
                  xori         t0, s5, -2023
                  andi         s8, a5, 1128
                  and          s0, a2, a2
                  srai         s4, s0, 11
                  sltiu        t4, t0, -1496
                  srai         s9, a6, 7
                  or           s0, a5, sp
                  srai         s5, t3, 14
                  srl          t2, s7, s2
                  add          a4, gp, a6
                  slt          gp, s6, t4
                  and          ra, s2, a2
                  xori         t3, s7, 733
                  nop
                  slti         gp, a7, -112
                  slli         t3, gp, 14
                  sll          tp, t5, a2
                  auipc        a2, 396262
                  addi         s0, s4, -1579
                  sltu         s4, tp, t4
                  nop
                  sll          s4, sp, a7
                  xor          s0, s11, t5
                  lui          t3, 90990
                  and          s4, a3, a0
                  slti         t0, a2, 651
                  srli         t1, t5, 1
                  auipc        s7, 642867
                  sub          tp, a1, s6
                  srl          a3, s5, a7
                  sll          sp, t0, s4
                  ori          a1, a0, 1361
                  sub          s7, t5, t3
                  srli         ra, t0, 5
                  slti         tp, s1, 1676
                  srai         tp, s11, 5
                  sra          tp, a3, t6
                  sub          s1, a2, s4
                  andi         t5, a1, -278
                  srai         t6, s3, 1
                  slli         a0, t3, 7
                  lui          t2, 848995
                  sub          t2, ra, a2
                  srl          t0, tp, a5
                  sltiu        s4, t2, 555
                  auipc        s8, 218218
                  sll          t0, s9, a2
                  or           a6, t2, s9
                  or           sp, s8, a3
                  slli         gp, a2, 31
                  sub          a6, s3, s1
                  and          t6, s10, s5
                  add          zero, t5, s0
                  slti         a4, s7, 1760
                  slli         t5, ra, 24
                  addi         s1, s7, 12
                  auipc        a0, 737380
                  andi         a1, s11, -493
                  sll          s7, tp, a2
                  nop
                  auipc        s1, 1021724
                  sub          a6, t3, s11
                  sub          a2, ra, a0
                  sltu         a3, s9, ra
                  slt          s1, s5, s6
                  and          a5, tp, s8
                  add          t3, s7, t2
                  add          a2, s7, a1
                  sll          a1, t0, a1
                  addi         t3, gp, 1381
                  sltiu        a4, s1, -1204
                  sub          t1, s8, a5
                  or           t4, s6, a2
                  xori         t2, s11, 939
                  sltiu        t3, zero, 325
                  nop
                  sll          t6, s3, s11
                  lui          a6, 881448
                  xori         gp, a2, 814
                  lui          t6, 143981
                  sll          tp, s4, t2
                  srai         s6, s9, 21
                  auipc        t0, 117530
                  slli         zero, t1, 4
                  srai         a4, t2, 11
                  ori          a0, t1, -335
                  add          a1, a2, a6
                  xor          s9, t5, a5
                  slli         t6, ra, 8
                  srl          a0, gp, a5
                  lui          t2, 247207
                  srli         a1, gp, 9
                  sll          zero, s0, a6
                  ori          t3, s3, -1341
                  slt          s10, s3, s2
                  xori         s6, s0, 410
                  slti         a4, ra, -1029
                  andi         s7, ra, -1741
                  srl          a3, s0, s4
                  sltiu        t3, s5, -1111
                  slli         t4, t0, 5
                  srai         a5, zero, 31
                  slli         sp, zero, 7
                  sub          gp, t4, t4
                  or           a1, tp, t3
                  srl          t1, s1, a5
                  sltu         a1, tp, ra
                  sra          t3, tp, a0
                  addi         t1, a2, -35
                  srli         s10, s9, 11
                  ori          t0, s0, 885
                  auipc        gp, 114107
                  addi         t6, a5, -205
                  slli         a7, s1, 16
                  lui          a6, 833578
                  and          a5, s5, s7
                  sltiu        s10, a1, 1303
                  and          t4, t0, t6
                  srl          t0, tp, s7
                  srli         s7, tp, 10
                  and          s9, s11, s7
                  nop
                  nop
                  nop
                  andi         s7, a5, -1761
                  srli         s10, s1, 17
                  nop
                  slli         s5, tp, 14
                  ori          sp, t0, 2004
                  and          a4, s10, s2
                  ori          t3, zero, 1247
                  and          gp, a1, a0
                  sra          a1, s3, zero
                  sltu         a3, t3, a7
                  add          a7, a1, a4
                  nop
                  lui          t0, 692974
                  lui          t4, 257095
                  ori          s6, s6, 64
                  sra          t3, t2, a2
                  lui          t2, 401531
                  addi         a3, s11, 438
                  sll          s10, a4, t2
                  addi         s8, t0, -1061
                  srli         zero, t6, 26
                  auipc        a1, 423959
                  nop
                  xor          a4, s9, t1
                  andi         a1, s10, -1458
                  sub          s9, a0, ra
                  srai         s6, t4, 5
                  sra          s5, s3, t0
                  add          a0, t2, a6
                  sub          s6, s7, t1
                  xor          a1, s1, a6
                  addi         s8, a3, -926
                  lui          t3, 117305
                  add          s0, s7, a2
                  srl          t2, a5, t0
                  srli         t5, gp, 28
                  sub          t1, s10, a5
                  auipc        t5, 323290
                  slti         a1, t4, -1682
                  addi         t2, a6, 1981
                  xori         ra, s8, -1553
                  sll          s0, a2, a0
                  add          s6, s10, s9
                  sub          a5, tp, a2
                  sra          s0, t1, s6
                  addi         s1, t0, 1452
                  slt          s0, s2, t1
                  andi         gp, t6, -102
                  xori         a7, s8, -1879
                  nop
                  sltu         s8, gp, s2
                  auipc        a4, 754179
                  sll          a3, t1, t2
                  and          t1, s10, a5
                  lui          s7, 24925
                  auipc        a5, 512248
                  ori          t4, s5, 1641
                  sltu         s1, sp, s3
                  ori          a2, a1, 1162
                  sub          t6, s2, t6
                  slti         t2, s6, -1801
                  sub          s4, t4, a1
                  sltu         s9, s0, t4
                  auipc        a0, 944911
                  ori          gp, s2, 1311
                  xori         t0, t0, -587
                  sll          gp, a7, s1
                  addi         s10, s10, 1879
                  add          a7, a0, s4
                  sltiu        a6, s4, -1309
                  srai         a7, s0, 28
                  sltiu        t1, zero, 401
                  add          s1, s5, s0
                  nop
                  slt          a0, a2, t2
                  srai         a4, gp, 29
                  srl          t3, a7, a2
                  add          a1, gp, a5
                  sra          t5, s1, s10
                  srl          gp, s1, a5
                  sra          a0, a5, t1
                  auipc        s5, 145984
                  sub          ra, gp, s5
                  and          t3, gp, s9
                  sltiu        t0, a1, -1882
                  srl          a0, a0, s8
                  sub          a4, tp, a1
                  slti         t5, s3, 2037
                  lui          sp, 729607
                  slli         a6, s3, 17
                  sltiu        t6, sp, -660
                  xori         gp, s3, 468
                  srli         t0, tp, 14
                  or           a3, t1, s11
                  sll          t6, t3, t5
                  li           t4, 0xffd166e #start riscv_int_numeric_corner_stream_22
                  li           s1, 0xffffffff
                  li           tp, 0x0
                  li           a6, 0x0
                  li           a4, 0xcc755fde
                  li           a7, 0xffffffff
                  li           s7, 0x80000000
                  li           s10, 0x0
                  li           gp, 0x505fd9e8
                  li           t1, 0x0
                  lui          a7, 490136
                  nop
                  add          t4, t4, s10
                  sub          tp, a7, s10
                  auipc        tp, 569226
                  nop
                  auipc        t1, 191189
                  lui          s7, 395556
                  nop
                  add          a7, s10, s7
                  auipc        s10, 244465
                  auipc        s7, 74311
                  add          s7, a7, t1
                  nop
                  lui          gp, 720844
                  addi         s7, t4, 1789
                  auipc        s1, 447234
                  lui          s10, 192614
                  lui          t4, 773823 #end riscv_int_numeric_corner_stream_22
                  sub          s8, a3, a3
                  lui          s8, 366269
                  andi         a7, a0, -1174
                  srai         t3, a1, 31
                  srli         t5, a3, 27
                  sltu         a0, sp, gp
                  nop
                  addi         t2, a1, -965
                  auipc        t4, 391405
                  nop
                  addi         t0, s3, 1435
                  nop
                  slli         gp, s2, 13
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           a5, 0x0
                  li           s4, 0x519f3b95
                  li           s10, 0x0
                  li           a2, 0xffffffff
                  li           t4, 0x0
                  li           t3, 0x0
                  li           s6, 0xffffffff
                  li           a6, 0x80000000
                  li           s8, 0x80000000
                  addi         a3, s10, 1018
                  add          t4, a6, a2
                  nop
                  addi         a6, s8, -1634
                  addi         s4, s4, -1389
                  add          s6, a3, a3
                  addi         a5, s4, 1835
                  nop
                  sub          t4, s4, s6
                  lui          a6, 204619
                  add          t3, s8, s8
                  nop
                  lui          s4, 891327
                  add          s4, s8, s4
                  auipc        a3, 567005
                  add          s10, a2, s10 #end riscv_int_numeric_corner_stream_12
                  xori         t3, tp, 89
                  xori         sp, t1, -1915
                  and          s4, a4, a1
                  slti         t5, s9, 125
                  sra          t1, sp, s10
                  srl          s10, zero, s0
                  sltiu        t1, a0, -1963
                  andi         a1, ra, -371
                  add          gp, s4, a0
                  sltiu        s7, s2, -726
                  sra          a2, a1, a4
                  andi         s9, a7, -873
                  sub          s10, s6, gp
                  sll          a0, s4, s10
                  srai         s7, ra, 26
                  xor          tp, t5, a0
                  sra          a3, ra, a3
                  add          a5, s7, s9
                  sltiu        a0, t1, 1639
                  addi         a0, t5, -1717
                  sltiu        t5, s7, -419
                  slti         gp, a7, 1784
                  sra          s0, s8, s8
                  nop
                  sub          a2, s7, s7
                  and          s4, s0, t3
                  andi         a3, a5, -1630
                  and          s1, s10, s9
                  and          s0, s8, t3
                  andi         s10, t0, -1002
                  slt          a2, zero, t5
                  sra          s1, t2, gp
                  addi         gp, sp, 1762
                  add          ra, tp, a0
                  xori         a1, zero, 778
                  slti         s10, s3, 1099
                  xor          a4, a0, t5
                  andi         s4, s6, -1200
                  auipc        a1, 325458
                  slti         a3, a1, -1458
                  lui          s6, 114068
                  andi         s7, a4, 847
                  andi         t2, t4, 1922
                  sll          a5, a0, t4
                  sltiu        a3, ra, -394
                  sltu         ra, zero, s11
                  ori          sp, s0, -242
                  slli         t3, s8, 13
                  and          t4, tp, a2
                  addi         t3, ra, -972
                  and          t1, a2, t1
                  sra          zero, s6, t4
                  and          t3, s10, s5
                  andi         s0, s11, -1091
                  slt          t3, gp, sp
                  srai         a0, s3, 21
                  slt          a5, s2, s9
                  andi         a4, t6, -1376
                  sub          s7, a5, s9
                  ori          a6, s4, -1030
                  ori          a1, a0, -715
                  ori          s1, s1, 973
                  sll          t4, s3, a4
                  sra          s8, t4, a5
                  addi         s9, a5, 1778
                  xor          s5, s3, s11
                  slt          ra, a1, sp
                  ori          ra, t0, 814
                  slli         s5, s7, 6
                  xori         a5, s7, 529
                  xori         s0, s9, 427
                  xori         a1, t1, 271
                  addi         zero, t2, 1218
                  slti         s9, s9, -1697
                  ori          a6, a3, 604
                  srli         a7, a3, 17
                  sra          a0, gp, t0
                  sra          t5, t3, gp
                  srli         t1, t3, 12
                  or           t2, zero, s11
                  slli         a0, t2, 23
                  srl          a1, a7, s2
                  addi         a1, tp, -281
                  sub          t0, s6, a6
                  srai         s6, a2, 16
                  xori         s6, a1, -1553
                  lui          s0, 952924
                  andi         zero, t4, -779
                  xori         t4, a1, 88
                  xori         a1, s4, 610
                  nop
                  srli         ra, s11, 11
                  xor          a2, a7, s8
                  sub          a6, s3, a3
                  addi         ra, gp, 435
                  sra          a6, s11, a7
                  or           t5, t3, s10
                  auipc        ra, 373260
                  slli         t5, a3, 20
                  nop
                  or           tp, a0, s9
                  srli         s0, a6, 31
                  sltu         s7, s1, sp
                  sub          s1, zero, t1
                  or           a7, t6, t2
                  add          t6, s6, s10
                  srli         s7, t0, 30
                  ori          t5, s6, 462
                  sll          s4, a6, s2
                  andi         gp, a0, -2035
                  andi         t2, s9, 773
                  sub          t2, s4, t3
                  sll          t2, t4, t0
                  slti         t1, sp, 2003
                  srai         sp, a3, 10
                  xori         a1, s7, 1326
                  sub          ra, a2, a3
                  andi         a5, zero, -1546
                  srli         t6, s2, 7
                  srai         sp, s1, 7
                  srli         sp, sp, 15
                  srli         gp, s8, 22
                  ori          s8, t0, 1385
                  nop
                  ori          t6, t3, 141
                  xor          a7, ra, zero
                  srli         a0, a7, 26
                  add          s8, zero, a2
                  addi         s7, a0, -21
                  slli         ra, s8, 1
                  auipc        a5, 463095
                  sub          t4, a7, s9
                  sltiu        a5, s3, 571
                  srai         a5, a7, 2
                  andi         a4, a7, -747
                  srli         sp, t5, 4
                  or           t6, sp, s4
                  srl          t4, s3, s9
                  slli         s7, gp, 30
                  slt          s10, t0, a3
                  or           tp, t3, s0
                  add          a3, t4, a6
                  srl          a5, t3, s5
                  sltiu        a5, s5, 263
                  xori         a7, a7, -591
                  and          s8, t6, s11
                  slli         a5, zero, 0
                  ori          s6, s3, -1135
                  xor          zero, s5, t4
                  srl          t6, gp, a4
                  xor          a4, a1, s4
                  xori         sp, s0, 171
                  slti         zero, s7, -1322
                  nop
                  xori         s0, tp, -1046
                  slt          s7, s0, a3
                  auipc        tp, 754717
                  slt          t1, s5, s3
                  sltiu        s1, gp, 718
                  sll          a1, a7, a0
                  sra          s9, s1, s7
                  andi         s7, a1, -513
                  srai         a4, s8, 11
                  slli         s8, s1, 8
                  or           s6, gp, s7
                  srl          a0, s5, s3
                  sltu         s7, s3, a6
                  addi         a6, t2, 1717
                  andi         a4, zero, 778
                  xor          s6, zero, gp
                  slti         sp, t0, -1077
                  sltu         zero, t4, s3
                  srl          a1, sp, a4
                  sub          a3, t3, s10
                  sltu         t5, s5, t5
                  sltu         s1, s6, a3
                  sll          t2, s11, a3
                  addi         s4, sp, 1409
                  and          a7, s5, s3
                  ori          t1, a7, 1159
                  ori          s1, t2, 136
                  lui          s5, 376261
                  and          gp, a4, s5
                  lui          gp, 417318
                  auipc        t4, 973336
                  srai         s9, s10, 15
                  slt          s8, s0, tp
                  srli         s9, ra, 1
                  and          a3, t6, s7
                  or           a6, a3, t2
                  srli         t4, a7, 15
                  or           sp, a5, s8
                  srai         s4, s7, 17
                  slti         s8, t1, -266
                  srli         sp, tp, 6
                  srli         s6, ra, 31
                  sub          t6, a2, s2
                  addi         t6, t0, -1288
                  sra          t5, t2, a1
                  ori          a4, tp, -466
                  auipc        t6, 904251
                  or           tp, s1, s6
                  slt          s4, gp, tp
                  or           a4, sp, s2
                  slti         s1, s1, -1859
                  slt          a5, t4, s4
                  nop
                  nop
                  xori         tp, t2, 289
                  andi         t3, s11, -18
                  auipc        t3, 367509
                  or           t0, s9, s8
                  add          t4, a1, s3
                  srai         a5, t1, 9
                  srl          t1, s7, t2
                  xor          s9, t1, t3
                  andi         s4, s11, -1971
                  ori          zero, s11, 880
                  sub          t4, a3, s9
                  sltiu        tp, s0, 549
                  andi         zero, t1, -308
                  xor          t1, s8, s3
                  srli         tp, a4, 12
                  auipc        ra, 309837
                  ori          a7, a6, 1696
                  sltiu        a0, s0, -873
                  or           a4, s3, s6
                  nop
                  xor          a6, s6, s3
                  lui          t2, 980136
                  srli         s1, a6, 18
                  nop
                  add          a0, a2, s2
                  slt          a6, s10, s9
                  srli         t3, t5, 22
                  sra          s5, zero, s6
                  slti         t6, sp, -1560
                  srl          a2, s11, a7
                  nop
                  ori          s8, s8, 411
                  srai         tp, t4, 15
                  slt          zero, s0, t0
                  sltiu        a6, s9, 118
                  sltu         a4, a4, t6
                  nop
                  slt          a5, s10, tp
                  xor          ra, s5, s3
                  srli         t5, t4, 3
                  sub          s6, a5, a5
                  slli         a4, a1, 6
                  srai         s6, tp, 3
                  and          s8, a1, t3
                  ori          s6, t4, -1638
                  xori         t3, zero, 188
                  andi         gp, s7, -1836
                  xor          gp, s0, t3
                  nop
                  slti         a0, s3, -83
                  srai         a7, a7, 31
                  srli         s4, s10, 7
                  ori          zero, s11, 678
                  add          a5, s7, s11
                  sra          zero, gp, s2
                  and          a2, s4, ra
                  and          a7, s5, s10
                  auipc        t4, 316316
                  xor          s4, zero, s7
                  lui          a1, 948598
                  srl          t2, ra, a0
                  xor          a3, a1, s9
                  sltu         s6, a6, sp
                  nop
                  xori         gp, a1, -64
                  xori         t4, a4, -188
                  andi         s8, s11, 1292
                  sra          a3, s8, s10
                  sra          ra, tp, s9
                  auipc        s7, 414514
                  xor          s1, s8, s4
                  andi         a0, t6, -1201
                  and          s4, a1, s8
                  sub          t5, a7, s5
                  slli         t3, a0, 5
                  and          s5, t2, s0
                  xor          s9, s5, t0
                  xor          t1, s7, s6
                  sltiu        zero, a5, 1399
                  nop
                  ori          zero, a1, -1835
                  srai         t4, a1, 16
                  xor          t0, s8, a6
                  auipc        s5, 1031890
                  xor          t2, t2, s0
                  srli         t0, s1, 30
                  slti         t1, s3, 1942
                  ori          t5, a5, -962
                  xor          s10, t6, s9
                  xori         a4, a1, -1899
                  add          s8, s7, s10
                  slli         t0, a4, 19
                  srl          t4, gp, s8
                  andi         s0, sp, -926
                  sra          t3, gp, t2
                  and          zero, t6, s9
                  add          t3, sp, t6
                  srl          t6, tp, s6
                  slti         a6, t2, 1133
                  srl          sp, t6, ra
                  xor          t3, tp, t4
                  or           a2, a4, s10
                  xor          a1, s4, tp
                  slli         a6, s5, 27
                  lui          sp, 856294
                  slt          a3, a5, s4
                  lui          s7, 488296
                  and          s1, s1, a7
                  slt          s10, t6, s0
                  and          t1, s0, a0
                  or           ra, a3, a1
                  sub          zero, t0, s7
                  auipc        t5, 105823
                  slli         a6, a6, 28
                  lui          s5, 228941
                  sltiu        t6, a4, -904
                  sra          a6, a5, gp
                  srli         a0, s8, 20
                  andi         t0, a5, -997
                  ori          zero, a6, 636
                  slli         t1, a7, 30
                  sll          a1, t1, s2
                  sub          a6, t1, t2
                  srai         s8, s0, 18
                  srl          s8, t6, s0
                  sll          s8, a4, a4
                  add          gp, t5, gp
                  addi         s9, s4, 1038
                  sub          a0, a4, t5
                  auipc        a1, 462431
                  slti         a0, s4, 453
                  sub          sp, s9, sp
                  srai         t0, sp, 12
                  auipc        s1, 657072
                  sub          s7, gp, a4
                  srl          a3, a7, t1
                  addi         s1, t1, -883
                  ori          a0, t2, 1701
                  sltu         s4, s8, s3
                  add          s8, s5, s6
                  sltu         t6, a2, a7
                  andi         t1, t4, 160
                  slli         a2, sp, 9
                  srli         s1, t2, 0
                  andi         s5, gp, -528
                  sltu         s0, s4, t6
                  srli         t2, t2, 13
                  srai         s0, t3, 7
                  xori         s0, a4, -2001
                  or           a4, gp, s3
                  slt          s4, a2, s0
                  sub          a5, s2, s8
                  sltu         s5, t2, gp
                  add          a2, s4, a2
                  slt          a3, s1, s7
                  srai         a0, a5, 6
                  ori          gp, t5, -310
                  nop
                  sltiu        s4, ra, -997
                  srl          t5, s9, s9
                  lui          t4, 797720
                  andi         a0, tp, -538
                  or           a2, a5, sp
                  lui          s7, 986926
                  srai         s9, s10, 18
                  srai         s8, s0, 27
                  or           a3, a4, a0
                  auipc        t3, 937099
                  ori          a6, s5, -1611
                  sra          s9, s3, t5
                  sltu         a4, a6, s7
                  slli         a6, t4, 8
                  slti         s1, a6, 336
                  addi         s1, a4, 1121
                  auipc        s4, 444740
                  sra          gp, s3, a3
                  ori          s1, s9, 1938
                  xori         t6, t3, -1450
                  srli         a2, t2, 27
                  ori          a2, a5, -860
                  ori          s9, s2, 552
                  sltiu        t2, gp, -783
                  slt          gp, a4, t1
                  slt          s9, a0, t4
                  sra          gp, a3, s2
                  and          a5, zero, t5
                  and          a2, gp, s7
                  slli         a3, s10, 22
                  and          zero, a2, s2
                  sra          t5, a6, s7
                  or           sp, s3, a2
                  auipc        a0, 584127
                  or           s8, gp, s4
                  sltu         t5, t3, s0
                  slt          s7, s10, t5
                  auipc        a4, 512725
                  xori         t1, a0, 1088
                  sll          t6, s6, a3
                  sub          a6, a7, a1
                  sltu         s1, s5, a0
                  sub          a3, t3, a1
                  sltu         ra, s2, gp
                  sra          a0, a7, a5
                  addi         a4, t2, -1830
                  sll          a7, t2, s1
                  slt          t3, a7, s0
                  srli         a1, s7, 29
                  slti         a1, s2, -1570
                  lui          s9, 295309
                  slt          t6, ra, a3
                  srli         s0, s10, 24
                  sll          t6, a3, gp
                  nop
                  andi         a0, s10, -1513
                  andi         s1, t4, -1817
                  or           ra, t4, t0
                  sll          t0, tp, s2
                  andi         t3, t6, -1612
                  slti         s4, s6, 657
                  slli         s10, t5, 5
                  or           a2, sp, s0
                  sub          a2, s1, s2
                  ori          t5, s5, 826
                  add          a3, t2, t6
                  sra          ra, s9, sp
                  sll          s7, s3, s4
                  sub          s4, t1, zero
                  sub          a7, t6, t0
                  and          t0, s2, a0
                  ori          s6, a6, -1847
                  srai         t6, a0, 23
                  xori         a5, s6, 1218
                  andi         ra, t6, -1648
                  xor          s10, a5, a5
                  slti         s7, t5, 1312
                  sll          s6, a0, a5
                  slt          t3, a4, t0
                  xor          t6, sp, s10
                  slli         t5, zero, 17
                  add          s4, a4, t1
                  xor          s9, s8, tp
                  or           s4, a3, a1
                  andi         gp, a7, -224
                  addi         zero, t3, 378
                  addi         a6, a7, -217
                  slt          t5, t0, t1
                  slli         t0, s6, 7
                  xor          a2, tp, s6
                  slti         s6, s2, -276
                  and          t3, a3, a7
                  nop
                  slli         sp, s5, 29
                  xori         s6, a6, 407
                  sra          tp, a7, gp
                  addi         a0, zero, 1608
                  and          s5, t2, t4
                  srl          a2, t0, t5
                  slti         s7, a5, -670
                  sll          s6, a2, ra
                  sub          a5, s0, t5
                  srl          tp, s7, s8
                  andi         s1, s10, -1825
                  sltiu        a7, t4, -479
                  and          a2, t2, t6
                  xor          t4, ra, s2
                  sub          a2, t2, s0
                  add          s8, a4, t0
                  nop
                  or           s9, s6, s11
                  add          ra, t6, s11
                  auipc        tp, 175500
                  and          ra, t2, s9
                  auipc        t3, 729965
                  and          s4, s7, s9
                  lui          t3, 505880
                  sltiu        s10, s8, 738
                  auipc        t6, 465946
                  sltiu        t0, a0, 495
                  lui          gp, 385929
                  andi         s9, a4, 1779
                  sub          s4, s1, t0
                  add          a7, t5, s9
                  lui          s10, 1007554
                  srl          a0, s11, t6
                  xori         t6, s1, 34
                  xor          a0, s4, s0
                  nop
                  sltiu        a1, t6, -1258
                  slli         a4, a3, 15
                  sltu         t3, s1, tp
                  xor          a5, gp, s8
                  srl          t2, s2, s5
                  sll          a6, s3, t0
                  srl          a3, t1, s4
                  srai         a4, t5, 25
                  add          zero, t5, s1
                  andi         t2, a6, -1045
                  slt          s8, t2, t2
                  slt          a3, s11, t1
                  sltu         s0, t6, t5
                  and          t0, zero, s7
                  andi         a1, t6, 363
                  nop
                  sltiu        t0, s11, 1450
                  ori          s10, t3, 2022
                  slti         s6, a4, 414
                  srai         s7, sp, 12
                  sra          t1, s9, s11
                  sub          t6, a0, a0
                  srai         s4, s7, 3
                  auipc        s10, 558984
                  andi         a7, t1, 375
                  sltiu        s7, t2, 1133
                  slt          s9, s8, s1
                  srai         tp, s5, 15
                  xori         zero, a5, -572
                  sltu         sp, a5, s4
                  addi         tp, a2, -1603
                  xori         sp, s10, 613
                  sltu         t0, s0, t0
                  slti         s8, tp, 1134
                  add          t2, s1, zero
                  lui          a7, 261627
                  sll          a3, s3, s7
                  srl          s7, a4, t2
                  sltu         s1, s0, t6
                  nop
                  or           s4, a1, a3
                  or           t5, s1, gp
                  srl          sp, a6, zero
                  sub          s0, tp, t6
                  sub          s6, tp, s3
                  sub          a7, ra, ra
                  srl          sp, gp, s6
                  and          s8, t1, s6
                  lui          t1, 267943
                  ori          a4, s8, 189
                  lui          t0, 418351
                  sub          t0, a6, a7
                  sra          t2, s2, s10
                  sll          a3, s4, t2
                  sltiu        t5, a2, 1293
                  sll          t1, sp, s1
                  addi         a6, t0, -1485
                  xori         a5, s4, 260
                  andi         s5, a4, 1929
                  xori         tp, ra, -1284
                  and          t0, a5, a7
                  nop
                  sll          t4, tp, t6
                  addi         s10, a6, 1996
                  srai         s5, s1, 15
                  sltu         ra, s8, t5
                  ori          a2, zero, -1662
                  sra          t2, a6, s3
                  slti         sp, a7, -1533
                  xor          s5, a5, zero
                  sltiu        a0, ra, 1592
                  nop
                  slli         s5, gp, 4
                  sub          t1, s3, s6
                  addi         t3, s0, -1703
                  or           gp, t2, s8
                  srli         t0, s2, 1
                  ori          ra, a6, 49
                  xori         s7, a5, 709
                  lui          s10, 246428
                  sub          s9, t6, a3
                  sltu         s6, s0, s7
                  addi         t3, a0, -230
                  sll          s10, a1, t6
                  addi         t0, a1, -299
                  sltu         s1, a0, s7
                  xori         ra, a2, 1570
                  or           s6, t6, gp
                  srai         a3, t0, 9
                  srl          a4, t3, s9
                  nop
                  xor          s4, t6, t6
                  srli         tp, s4, 11
                  srai         a5, a6, 20
                  addi         s6, t0, -1705
                  srl          s5, ra, a4
                  sra          t4, s5, s6
                  sll          t3, s6, zero
                  ori          a1, s2, -1031
                  nop
                  nop
                  or           s6, t3, t5
                  xori         t4, a6, 704
                  xor          ra, a4, a1
                  auipc        gp, 576246
                  slt          a3, s9, a4
                  and          s0, t2, s6
                  addi         sp, t4, -332
                  andi         zero, t2, -1885
                  andi         a0, t4, -1013
                  add          t0, t1, s11
                  auipc        s9, 727568
                  slt          t1, zero, t2
                  xor          s10, t6, s10
                  sltiu        ra, s5, -2004
                  sub          t5, a2, t6
                  srli         s7, t2, 27
                  add          a0, s5, s6
                  srli         s7, s11, 11
                  xori         s6, a7, -595
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           ra, 0xffffffff
                  li           s5, 0x0
                  li           t4, 0x0
                  li           t2, 0xc43a0845
                  li           s10, 0x1d596f5b
                  li           a4, 0x8dae4008
                  li           a5, 0xa3441463
                  li           s6, 0xfb6b3f23
                  li           t3, 0x1d0fbb3c
                  auipc        s6, 510096
                  sub          ra, s5, t3
                  lui          ra, 400466
                  auipc        a5, 953629
                  sub          a4, s10, s10
                  sub          a5, t4, ra
                  add          s10, ra, s10
                  nop
                  sub          s6, s10, t2
                  add          a5, ra, s5
                  addi         s10, sp, -1744
                  nop
                  nop
                  auipc        sp, 401012
                  auipc        t3, 432226
                  lui          sp, 994664
                  auipc        s5, 542614
                  auipc        ra, 1014329
                  auipc        s10, 318226
                  addi         sp, s6, -1994
                  add          a4, ra, a4
                  lui          ra, 138554
                  lui          t3, 569568
                  auipc        s6, 895413 #end riscv_int_numeric_corner_stream_16
                  sra          t6, s6, t0
                  auipc        t2, 439500
                  slli         s6, a0, 2
                  srli         t5, s5, 21
                  and          tp, s1, s9
                  sltiu        s8, gp, -1048
                  srli         s7, s0, 8
                  slli         a7, t2, 20
                  sub          t3, s0, a6
                  nop
                  xor          a0, tp, t0
                  andi         sp, t4, -1393
                  nop
                  slli         a3, t1, 13
                  andi         ra, zero, -1104
                  sra          a6, a1, s10
                  sra          a7, s7, s5
                  nop
                  srai         a2, gp, 15
                  or           gp, a7, a7
                  slti         ra, s5, -1383
                  sltu         s6, a6, s7
                  slt          s8, gp, t0
                  and          a2, tp, t0
                  add          t2, s3, a1
                  slli         t2, s5, 15
                  slt          ra, s2, sp
                  sll          s6, t1, a3
                  xor          s7, s7, s6
                  nop
                  sra          a5, s5, s3
                  sra          s4, s0, s8
                  sub          zero, t4, t1
                  sra          a5, a5, ra
                  xor          a7, sp, s4
                  xor          a2, a1, s10
                  srl          a1, s10, s10
                  sub          t5, zero, tp
                  sll          s5, s10, s8
                  add          s1, a7, t1
                  slti         t0, s0, -1454
                  or           a6, a0, s1
                  and          t4, t0, s4
                  add          t0, t2, a7
                  addi         s1, s5, -720
                  srli         s8, a1, 5
                  srai         s1, s11, 15
                  slti         t3, s8, 436
                  srl          s4, gp, a3
                  slt          s9, s3, s9
                  slti         a7, a5, -1475
                  addi         a3, s6, -1108
                  lui          s4, 621320
                  and          a4, s8, sp
                  nop
                  srl          s7, t2, t6
                  slli         s9, a4, 13
                  ori          a6, s9, 1093
                  srai         t2, s0, 5
                  srli         t4, s5, 7
                  sub          t2, s11, a1
                  sra          zero, t5, s4
                  addi         t6, t5, 702
                  srli         zero, t3, 27
                  xori         s0, s7, -679
                  nop
                  andi         a7, a3, 1867
                  xor          sp, a0, a7
                  slli         s8, s8, 1
                  sub          t1, s8, ra
                  ori          s8, gp, -448
                  lui          t6, 1001801
                  sltiu        a4, t5, 1321
                  auipc        sp, 162763
                  andi         gp, a3, -285
                  auipc        t6, 953233
                  addi         s10, t4, -523
                  lui          s5, 545504
                  sra          a0, gp, s10
                  srli         t6, t6, 15
                  sltiu        a1, t4, 1135
                  andi         a4, a3, -1288
                  and          t3, a1, a3
                  slti         s6, s8, 552
                  lui          a5, 426467
                  slti         a4, t5, -443
                  lui          s6, 278766
                  nop
                  nop
                  sra          a0, gp, s2
                  slt          tp, a2, s4
                  lui          t3, 590330
                  add          s9, s4, s4
                  auipc        zero, 346775
                  srai         a1, zero, 12
                  or           s4, t0, gp
                  xor          zero, t1, a1
                  add          a5, s9, s9
                  sll          a2, s1, ra
                  slt          t4, zero, s8
                  sltu         ra, s2, s0
                  addi         s1, t4, -1513
                  xori         a3, a7, 908
                  lui          a6, 186211
                  xor          t1, t1, t0
                  srli         t4, s0, 19
                  slli         tp, s7, 22
                  or           gp, s1, s2
                  xor          s5, t1, s7
                  ori          a2, t4, 432
                  or           a3, a7, t5
                  auipc        t1, 910276
                  sra          a5, t1, tp
                  sltu         a5, s6, gp
                  srli         a0, s5, 31
                  xor          t5, s0, t3
                  srli         s6, a6, 30
                  ori          gp, s0, -433
                  xori         a6, t1, 76
                  xori         sp, t1, -1344
                  sltu         s4, a4, s1
                  slt          gp, s2, s1
                  nop
                  andi         t6, ra, -314
                  and          s9, s0, a6
                  auipc        a0, 841932
                  sltiu        a4, a1, -391
                  ori          a7, a1, -2010
                  or           t0, a4, a6
                  srai         s8, zero, 7
                  sltiu        s10, s1, -673
                  srli         a2, s6, 17
                  or           a6, t0, t0
                  sll          ra, s0, a0
                  auipc        a3, 1026582
                  auipc        t2, 737931
                  slli         s5, s1, 3
                  sra          t0, s3, a4
                  sra          t4, s3, s11
                  and          s1, ra, a0
                  srli         tp, s4, 24
                  or           gp, s11, s4
                  srl          a1, a1, t4
                  sll          t2, a2, tp
                  sra          a3, t2, s8
                  srai         s7, s6, 10
                  ori          s6, tp, 1953
                  xori         s9, a5, -1075
                  srai         t4, s11, 20
                  sltu         t6, s8, a1
                  slli         t4, s9, 9
                  sll          s9, s8, s4
                  xor          s8, t2, s4
                  sltiu        t6, gp, -1464
                  addi         a5, s6, 302
                  slli         a1, s10, 3
                  addi         a2, s10, -1660
                  or           a6, s2, a7
                  sra          t3, s10, a3
                  nop
                  srai         zero, s0, 16
                  sra          t5, gp, s2
                  lui          t3, 395220
                  slli         s8, a4, 28
                  nop
                  sub          t6, t0, t0
                  andi         t3, sp, -1355
                  lui          s7, 633780
                  sub          a3, s10, s11
                  srai         gp, a5, 15
                  sltu         s0, a0, s4
                  slt          a2, s7, gp
                  srai         a2, t3, 23
                  xor          sp, s11, s0
                  auipc        zero, 599674
                  add          t4, t6, t6
                  xori         s4, a2, -1835
                  add          t6, t0, s6
                  sub          s9, a6, s7
                  slti         t6, s0, 1189
                  srai         gp, a4, 18
                  and          sp, s0, tp
                  sub          a5, t6, a5
                  srl          a1, s7, s1
                  or           s0, s4, t0
                  srli         t0, s6, 26
                  ori          a3, zero, 1477
                  andi         s8, s3, 314
                  srli         a5, s8, 15
                  sll          s6, zero, s2
                  andi         s5, a2, -1477
                  auipc        s4, 549746
                  xor          s0, s8, a3
                  and          s9, s3, sp
                  xori         a0, t3, 760
                  andi         t6, ra, 1358
                  sll          s5, s3, a7
                  xor          s6, t5, tp
                  add          a1, s2, s6
                  ori          a3, s3, -1429
                  sll          zero, s3, s9
                  slli         sp, s4, 8
                  sub          t2, a2, s5
                  add          sp, s7, s2
                  and          t1, t6, ra
                  srli         s9, s0, 23
                  slli         t1, s10, 17
                  add          t1, a7, s3
                  srli         t6, s7, 1
                  sub          t6, s1, zero
                  addi         s9, s0, 1967
                  sra          sp, s0, a6
                  nop
                  slt          a6, s2, s10
                  sll          t3, a0, a4
                  sltu         tp, s7, a0
                  srl          s6, a3, s0
                  xori         sp, s7, -1036
                  srai         t0, t4, 21
                  and          s8, t3, zero
                  xor          t4, t2, s5
                  andi         s0, s8, 1418
                  srli         t1, s2, 17
                  sll          gp, a7, s3
                  auipc        s1, 387512
                  auipc        a2, 926240
                  sltiu        sp, s10, -146
                  srai         s1, t0, 14
                  sltu         t6, a2, s10
                  sra          gp, s7, a0
                  add          s6, gp, a0
                  lui          a3, 556503
                  addi         sp, s0, 1594
                  slt          a5, s10, t5
                  nop
                  sll          s7, a0, zero
                  sltu         a4, s6, t6
                  sltiu        t1, t1, 1067
                  auipc        s1, 441017
                  slli         s5, a6, 18
                  add          t2, a4, s7
                  auipc        s9, 705691
                  srai         a2, t6, 17
                  sub          tp, s3, t5
                  lui          s9, 967418
                  andi         s4, a6, -120
                  sltiu        sp, s6, 1914
                  srli         a3, s7, 14
                  andi         tp, a2, 1120
                  nop
                  lui          s6, 946169
                  xori         s10, s1, -775
                  xori         s0, s2, 95
                  xori         sp, s2, 944
                  srli         s9, ra, 19
                  srli         s1, s8, 7
                  sltu         t4, s0, s5
                  srl          tp, s2, t6
                  andi         t0, s1, -1025
                  xori         zero, s3, -1035
                  andi         ra, s9, 610
                  nop
                  add          s9, t3, t1
                  xori         gp, s8, -1856
                  slli         a5, zero, 26
                  sra          t1, s4, s1
                  srl          a5, a1, s11
                  xori         ra, t6, -713
                  auipc        t1, 168281
                  slti         gp, s8, 1777
                  srl          t4, t2, t3
                  auipc        s6, 302460
                  addi         a2, a5, -1874
                  sltiu        tp, s0, 1066
                  sra          a2, a3, s11
                  slti         a6, t1, 1066
                  slli         s8, t3, 27
                  srli         a2, s6, 7
                  slti         t6, s6, 1051
                  slli         t6, s4, 30
                  sub          a0, s3, a7
                  auipc        s4, 659037
                  srli         s1, s11, 31
                  ori          s5, s4, -1309
                  srai         s9, gp, 30
                  sub          a1, s8, a0
                  ori          a3, a0, -1007
                  srli         s4, sp, 1
                  xori         s1, t1, -958
                  slli         s6, s5, 8
                  xor          s6, s10, s1
                  lui          sp, 457079
                  andi         tp, s8, 1062
                  xor          sp, t5, a4
                  srl          s1, s6, s6
                  lui          a7, 219352
                  nop
                  sltu         s9, t1, t6
                  slt          t6, a1, s9
                  srai         a0, a1, 15
                  andi         t4, gp, 179
                  srai         t4, sp, 18
                  nop
                  add          tp, zero, s9
                  nop
                  srli         a5, t4, 31
                  xor          t3, a0, s3
                  and          s5, s8, s4
                  sll          t6, t1, s4
                  xori         s4, s4, 241
                  srli         s4, s11, 11
                  and          s7, t3, t1
                  sub          a5, s9, s6
                  sll          a3, t5, zero
                  slli         a5, s1, 19
                  auipc        s5, 579545
                  sltiu        a2, s7, -998
                  lui          t6, 1028267
                  sll          s6, t0, s1
                  ori          s6, s8, 1258
                  or           t4, a0, t5
                  sra          s0, a4, a3
                  slt          t4, t1, s8
                  slt          t6, s3, s4
                  addi         t4, s10, 304
                  nop
                  addi         s10, t3, 544
                  srai         t0, a0, 29
                  addi         a5, t5, -1144
                  xor          t2, s5, sp
                  xor          a5, s0, t5
                  ori          tp, s0, 953
                  add          t1, t2, s9
                  or           t6, t4, s7
                  lui          s1, 261973
                  sll          a5, t1, s5
                  srai         t2, t2, 2
                  nop
                  sltiu        t2, s11, 1557
                  xori         s6, s7, 1651
                  lui          a0, 817016
                  srai         s4, zero, 22
                  ori          s10, t4, 968
                  sll          s6, ra, s10
                  andi         zero, a6, -576
                  addi         s5, a0, 1460
                  nop
                  lui          a4, 20400
                  ori          tp, tp, 1264
                  srli         a5, s0, 7
                  sub          s10, t3, t6
                  xor          a1, s1, tp
                  xor          s10, gp, t1
                  slli         a0, zero, 1
                  and          t0, s4, t3
                  sltiu        a0, a4, -1259
                  and          a6, s1, sp
                  nop
                  sltu         t3, s5, t1
                  addi         gp, a6, -22
                  sub          sp, s1, ra
                  lui          t1, 334808
                  lui          s10, 800244
                  srl          t2, ra, s7
                  andi         t5, t2, -80
                  andi         s8, t5, -1128
                  srai         a3, s7, 20
                  andi         a6, t6, -786
                  lui          a5, 810170
                  slt          t1, s1, a7
                  sltu         s5, t6, gp
                  andi         t4, gp, -766
                  nop
                  slti         t4, s4, -1038
                  sra          s0, s0, t6
                  andi         gp, s10, 345
                  lui          s0, 947362
                  slt          tp, a5, t2
                  sub          a3, a1, s6
                  xori         t0, s6, 1138
                  ori          gp, t6, -1203
                  sltu         s6, ra, s1
                  nop
                  srl          gp, a5, t6
                  andi         a1, a2, 1189
                  sra          tp, t5, a5
                  andi         s8, s9, -351
                  slt          s6, sp, t5
                  addi         a6, t5, -838
                  addi         a0, s7, 224
                  nop
                  ori          tp, t5, 906
                  srai         s0, s1, 6
                  auipc        a1, 836156
                  slt          s0, s2, a4
                  srai         a1, t6, 25
                  andi         tp, a6, -1503
                  sll          s5, s9, a7
                  srai         s7, t0, 17
                  ori          sp, t1, 885
                  xor          s1, tp, t1
                  or           t6, s0, a7
                  auipc        a0, 108409
                  and          a6, a6, t0
                  xor          sp, zero, s0
                  add          t5, s11, a6
                  srli         s8, s6, 2
                  srl          t5, s3, a4
                  sll          tp, gp, s8
                  lui          t5, 72656
                  lui          t5, 762701
                  sub          s8, s8, s4
                  sra          a5, t6, s11
                  srli         sp, s0, 23
                  srli         s6, t1, 30
                  add          gp, s4, a3
                  sub          a3, s0, sp
                  sra          t5, s5, a2
                  slli         a3, t5, 30
                  sltiu        gp, gp, -64
                  lui          gp, 474701
                  srl          t5, s3, a0
                  srli         s7, zero, 16
                  sll          t5, t5, s3
                  srl          t0, zero, gp
                  add          gp, t5, s7
                  xor          t5, a3, s9
                  and          s5, s0, a6
                  sll          s7, a1, s0
                  ori          sp, a6, 656
                  sra          s5, gp, a1
                  and          t0, s1, s9
                  auipc        s1, 436761
                  add          sp, tp, s10
                  auipc        t5, 244655
                  nop
                  srli         t6, t0, 23
                  sra          sp, s6, s1
                  srai         ra, gp, 16
                  sub          t4, t4, sp
                  sra          t6, gp, s5
                  sll          s7, s6, s4
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           t0, 0x5751f63e
                  li           a4, 0x80000000
                  li           t3, 0x0
                  li           s9, 0x80000000
                  li           a3, 0xffffffff
                  li           a5, 0x1c5e5169
                  li           s4, 0x0
                  li           s1, 0xa3ab8591
                  li           ra, 0xffffffff
                  auipc        ra, 481980
                  addi         a0, a3, -1030
                  lui          t0, 695890
                  nop
                  lui          t3, 1021251
                  sub          s9, a5, s1
                  add          t3, t3, a3
                  sub          ra, s1, a5
                  add          a4, s1, a0
                  auipc        s4, 459362
                  add          a3, s1, a4
                  lui          s1, 608935
                  sub          s1, a4, a4
                  nop
                  auipc        a0, 984627
                  sub          a0, ra, ra
                  add          s9, a5, s1
                  lui          a5, 693856
                  sub          s4, t3, ra
                  nop
                  addi         s9, a4, -458 #end riscv_int_numeric_corner_stream_18
                  slti         s6, a0, -1157
                  andi         s8, t4, -666
                  sll          tp, s10, s0
                  xor          s10, s0, t3
                  add          a0, s0, s2
                  auipc        t1, 296984
                  slti         t5, t5, 145
                  ori          a3, a0, -563
                  slt          s6, s11, a0
                  sltiu        t6, sp, -1939
                  slt          tp, t4, s9
                  slli         a3, sp, 12
                  sltu         s8, a4, a2
                  addi         t0, s3, -1877
                  or           t6, s0, a4
                  xori         a1, a4, -1904
                  sll          gp, t3, a0
                  xor          t6, t0, t0
                  sltu         t0, s5, a2
                  and          sp, t0, s9
                  or           s8, a3, t0
                  slt          sp, a0, sp
                  slti         s6, t6, 461
                  slt          a3, sp, tp
                  lui          a6, 279233
                  andi         t0, s4, 757
                  slti         a0, t5, 1417
                  auipc        a4, 867640
                  sltiu        a6, a4, 540
                  slli         s7, a6, 31
                  andi         a4, t3, -1542
                  slli         s6, s11, 29
                  sll          s10, s1, a3
                  andi         a2, t0, -764
                  srli         sp, a0, 28
                  sll          s7, s10, s4
                  xori         s5, a5, -41
                  lui          t2, 364029
                  slt          a0, tp, s6
                  ori          s9, s8, 342
                  slti         a3, a6, 1735
                  auipc        gp, 586135
                  andi         t0, a4, -718
                  lui          s9, 65386
                  lui          t6, 323861
                  srl          tp, a5, s5
                  sll          t1, a4, t4
                  addi         sp, gp, -1612
                  slli         tp, s9, 26
                  sltu         t2, sp, a2
                  lui          t5, 605036
                  sltu         s6, gp, s11
                  and          t6, t3, t1
                  slli         s6, a5, 29
                  sltu         t4, a0, ra
                  xor          t5, tp, t2
                  sll          s8, s4, sp
                  or           t1, sp, s7
                  nop
                  andi         tp, a7, 368
                  srl          s7, a1, s10
                  xor          s8, t4, s9
                  or           t3, gp, s9
                  addi         t6, t1, 1749
                  andi         a7, s6, -1311
                  srl          t3, s6, s4
                  xor          a6, t3, a5
                  andi         a4, a5, -1924
                  slt          s8, t6, s5
                  or           gp, gp, a4
                  auipc        ra, 531736
                  add          a7, s0, zero
                  slli         t1, a4, 30
                  slt          a5, zero, t3
                  sltu         s10, s3, s4
                  ori          ra, t4, -511
                  lui          a7, 151098
                  sub          t6, s4, gp
                  addi         a1, t4, 1827
                  sra          a2, s8, t4
                  and          s5, s4, t3
                  sra          zero, a2, t3
                  and          a3, a7, a2
                  sub          s10, a7, gp
                  srl          t0, zero, s9
                  sub          t2, sp, a2
                  sub          s10, s9, ra
                  addi         a1, a1, -1111
                  nop
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           t5, 0x7e88bb51
                  li           a5, 0x5040da5c
                  li           ra, 0x80000000
                  li           t2, 0x80000000
                  li           tp, 0xffffffff
                  li           a1, 0x0
                  li           s1, 0xffffffff
                  li           t1, 0x80000000
                  li           t0, 0xffffffff
                  nop
                  lui          t0, 495815
                  add          ra, s4, a1
                  auipc        a5, 548427
                  nop
                  nop
                  addi         t0, t2, 686
                  auipc        t1, 419886
                  sub          ra, t2, t1
                  nop
                  auipc        s1, 582743
                  addi         ra, t2, 1731
                  lui          s1, 399065
                  add          t0, t0, tp
                  nop
                  auipc        a1, 431311
                  auipc        t0, 991160
                  sub          tp, tp, t0
                  addi         t1, s4, 1149
                  addi         ra, t5, 1066
                  add          a1, t5, tp
                  add          a5, t0, t5
                  addi         a1, a5, 1927
                  lui          t1, 127476
                  nop
                  lui          t1, 133789 #end riscv_int_numeric_corner_stream_7
                  srl          s8, gp, a1
                  slli         t6, s9, 5
                  nop
                  addi         t4, t3, 1816
                  srl          t2, t0, s1
                  sltu         a1, s3, sp
                  sll          t5, s0, a0
                  sll          a0, t4, s1
                  or           zero, t6, s11
                  sltu         s0, s7, a0
                  sub          t5, ra, t3
                  slli         t2, sp, 26
                  add          ra, s11, s0
                  andi         a3, sp, 1672
                  xor          zero, sp, s10
                  or           a3, t1, s1
                  ori          a6, a7, 843
                  add          a2, t0, t6
                  add          t3, s7, s8
                  addi         t5, s3, 82
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_35
                  li           a2, 0x0
                  li           a7, 0x9ab9fa50
                  li           s10, 0xffffffff
                  li           s8, 0x80000000
                  li           s9, 0x14f5bbb7
                  li           t0, 0x0
                  li           a3, 0x981ab305
                  li           sp, 0xffffffff
                  li           a5, 0x0
                  add          sp, sp, t3
                  sub          t3, s8, sp
                  addi         a5, s9, 1676
                  nop
                  lui          a2, 282348
                  add          t3, t0, t0
                  sub          s9, a7, s10
                  lui          a5, 750505
                  lui          a5, 920799
                  lui          s10, 896981
                  addi         s9, a2, 35
                  add          t3, a5, sp
                  auipc        a2, 357415
                  add          t3, a2, a5
                  add          a3, s8, s10
                  auipc        a3, 1025675
                  auipc        s10, 114172 #end riscv_int_numeric_corner_stream_35
                  srai         zero, a0, 23
                  sll          a1, tp, t3
                  sltiu        gp, s0, 504
                  and          a2, s2, s9
                  add          zero, a0, gp
                  srli         zero, t6, 3
                  sll          t1, t4, s10
                  sll          a2, a4, s9
                  ori          sp, a3, 174
                  addi         a2, s11, -90
                  or           s9, t5, a6
                  srl          t4, a2, s5
                  slli         s0, zero, 6
                  andi         s6, t0, 970
                  srli         a1, t5, 0
                  slli         s1, a1, 30
                  andi         s6, a4, -1299
                  addi         s6, t1, 923
                  srl          t2, sp, a5
                  and          s1, s3, a6
                  addi         s4, s11, 141
                  srl          t2, s9, s3
                  nop
                  lui          t6, 641372
                  nop
                  ori          t2, a1, -33
                  slli         a1, s10, 9
                  sra          a1, s4, s0
                  srli         t5, t1, 2
                  srli         a7, s8, 15
                  or           t2, zero, a1
                  addi         s1, zero, 1767
                  nop
                  lui          a7, 74994
                  and          a6, tp, t3
                  sltu         a4, s0, tp
                  srl          t4, a2, a3
                  and          ra, s3, t6
                  andi         a5, s4, 146
                  sltu         t2, gp, a0
                  and          a5, t3, tp
                  sltiu        s4, s9, -759
                  slt          a4, s0, gp
                  sltu         a2, a6, a3
                  srai         s9, gp, 11
                  slt          a0, t6, s6
                  slli         a0, a6, 3
                  andi         s6, s2, 1562
                  and          s0, s5, a2
                  slt          t2, a5, a4
                  sra          s7, zero, a7
                  srai         s0, s9, 7
                  srai         a4, s9, 25
                  sltu         a7, s11, gp
                  sltu         t4, s5, a6
                  sltu         t0, s7, t2
                  lui          t5, 198225
                  slti         t3, t5, 689
                  addi         a0, s2, 973
                  slt          gp, s9, t5
                  slli         t1, t4, 9
                  and          a3, a7, t2
                  ori          t3, t2, -99
                  srl          a5, t4, tp
                  andi         a0, a7, 1243
                  ori          s5, a0, 1630
                  or           a3, t2, a7
                  lui          t4, 994708
                  addi         s6, sp, -310
                  lui          a5, 97297
                  sltu         zero, a7, gp
                  nop
                  andi         s1, s10, 1820
                  sltiu        t3, tp, -1615
                  sltu         zero, a1, s1
                  slti         a1, s4, -808
                  srai         t4, a2, 19
                  sltu         s5, a3, s10
                  srai         a4, s7, 12
                  sltu         zero, s2, a5
                  slti         t2, t0, -1586
                  and          t4, t0, s10
                  lui          s5, 217036
                  sltu         a3, gp, gp
                  sra          s5, tp, s6
                  srl          a6, a6, a6
                  ori          t0, a7, -371
                  or           sp, s1, s11
                  or           a4, s2, t3
                  slli         t3, s8, 8
                  sll          gp, s10, a7
                  ori          s4, s6, 160
                  addi         tp, s9, -317
                  srai         tp, a5, 14
                  addi         ra, a5, 955
                  slti         s0, t6, 1339
                  sra          a2, s1, tp
                  slti         s4, t4, 1935
                  slti         t1, s10, -718
                  andi         s9, t2, -1936
                  sltu         a6, a2, t1
                  auipc        sp, 157516
                  and          t3, s0, a4
                  slt          t3, a7, gp
                  nop
                  auipc        s4, 466265
                  addi         s5, s11, -1441
                  srl          tp, sp, tp
                  sltiu        s10, a5, -1548
                  nop
                  auipc        s4, 374020
                  slli         zero, a1, 5
                  lui          t6, 427595
                  sltu         a0, ra, zero
                  auipc        zero, 140127
                  lui          s9, 380421
                  sltu         s6, t5, a6
                  add          t3, t6, s4
                  lui          t5, 888095
                  auipc        a1, 548601
                  srli         a2, s3, 5
                  sltu         s1, s7, s8
                  slli         t4, t3, 5
                  slt          sp, s4, t2
                  sll          s7, s0, s11
                  slt          s10, t3, a5
                  nop
                  srli         s4, a1, 3
                  srl          s6, a7, t5
                  sub          tp, ra, t0
                  andi         a4, t5, 1136
                  sra          a3, a5, s6
                  slli         a7, a4, 16
                  lui          a5, 353620
                  sltiu        t3, a3, 1814
                  slti         gp, zero, 1979
                  sub          a7, s0, s10
                  srl          a5, ra, t4
                  slli         a4, s6, 28
                  addi         a7, s10, 395
                  nop
                  slt          a2, t4, a7
                  xor          a6, t3, s5
                  or           sp, s7, s10
                  sra          s5, ra, s1
                  addi         a6, t6, 642
                  sub          a0, t2, a2
                  srli         s6, tp, 19
                  sltu         a5, gp, t0
                  srl          t4, zero, tp
                  srai         a1, s11, 7
                  sltu         gp, s8, s1
                  or           a5, s9, a1
                  ori          s4, s0, 203
                  xor          a2, s5, zero
                  sub          a0, t6, t5
                  xor          sp, a7, s5
                  slli         a2, t2, 29
                  auipc        a4, 1006087
                  and          a7, s2, s7
                  lui          s10, 678503
                  slt          s4, s2, s7
                  sltu         t4, ra, a0
                  and          t6, t0, a3
                  slli         s7, s11, 18
                  add          s1, s0, a7
                  slti         t4, gp, -1032
                  andi         t5, t2, -417
                  srl          a7, s10, zero
                  and          s8, a5, s9
                  andi         t3, a1, -1291
                  and          a5, s10, s1
                  xor          s1, s9, s1
                  lui          s7, 77996
                  sll          tp, s4, t6
                  xori         a6, tp, 155
                  lui          a2, 926948
                  sub          gp, a5, a6
                  add          a2, t0, tp
                  lui          t3, 642368
                  sll          zero, s1, ra
                  nop
                  slli         a4, s3, 9
                  sltu         zero, ra, s4
                  ori          tp, s6, -1342
                  slt          t6, tp, a5
                  andi         s5, s3, -1632
                  andi         sp, ra, 719
                  andi         a5, s0, -839
                  ori          s1, a3, 974
                  add          zero, tp, t1
                  slt          s1, a3, t0
                  sltu         zero, t6, s8
                  sll          a0, gp, a5
                  and          t0, a6, a5
                  slli         tp, s10, 17
                  addi         t5, t1, 845
                  ori          a4, zero, -568
                  xor          sp, tp, s4
                  srai         t6, a7, 12
                  xor          s5, ra, a5
                  ori          s7, t3, 1766
                  slt          s1, s9, a2
                  xor          t5, s2, t1
                  srl          t3, a2, s8
                  addi         s9, a1, 1813
                  xori         a7, t1, 380
                  ori          a5, t2, 484
                  ori          s4, s5, 1889
                  addi         t6, gp, -614
                  auipc        ra, 767203
                  xori         t4, a7, -200
                  sub          tp, t5, t3
                  srli         t6, t4, 15
                  sra          t5, s8, s4
                  sll          s4, s8, a2
                  lui          zero, 689321
                  srl          s10, zero, ra
                  srl          s6, s3, sp
                  slli         sp, s2, 10
                  srl          a3, gp, a3
                  add          s0, tp, t0
                  or           t4, s3, s10
                  add          t6, a6, t0
                  slt          t0, s5, s10
                  ori          ra, t4, -72
                  sltiu        a0, t6, 1849
                  sub          s9, t2, zero
                  ori          zero, s10, 1339
                  xor          zero, t3, s5
                  and          a2, t4, s11
                  slt          s7, s5, s5
                  sltiu        a1, s3, 992
                  xori         zero, t0, -1247
                  slti         a6, s8, -1924
                  sll          ra, a6, s0
                  slt          sp, a5, t2
                  addi         t0, tp, -231
                  srai         a2, sp, 17
                  andi         gp, a0, -278
                  xori         gp, t1, 116
                  ori          s5, t4, -1208
                  slt          a0, t2, a0
                  nop
                  sll          s7, a6, a7
                  sltu         a2, zero, ra
                  slli         a3, a5, 24
                  xor          a5, s11, a6
                  srl          a4, ra, t3
                  add          a1, s11, t5
                  sltu         s8, a7, s9
                  nop
                  add          a3, tp, a3
                  sltu         t2, a2, a7
                  nop
                  sra          s0, t4, a0
                  addi         ra, t3, 1930
                  add          s1, t5, t1
                  and          ra, s3, a4
                  auipc        t3, 663601
                  lui          a0, 432188
                  xori         s1, t2, -651
                  and          t0, s11, a7
                  and          a7, t3, t4
                  sll          ra, s1, t5
                  or           t4, s9, t4
                  nop
                  sub          tp, t0, s9
                  auipc        s10, 421107
                  lui          s1, 948941
                  nop
                  sra          a4, s11, t5
                  and          t3, ra, a4
                  srli         zero, a0, 19
                  xor          s7, s10, s8
                  slli         t0, s6, 26
                  srl          ra, s4, s10
                  sub          t1, a0, s2
                  sltiu        s9, s11, -1616
                  auipc        t5, 154313
                  or           s8, a5, a2
                  slti         t6, t3, 616
                  srli         t1, s6, 22
                  li           gp, 0x8652dd2c #start riscv_int_numeric_corner_stream_32
                  li           s9, 0xffffffff
                  li           tp, 0xffffffff
                  li           a3, 0x80000000
                  li           s5, 0x0
                  li           a1, 0x0
                  li           t1, 0x0
                  li           a6, 0x80000000
                  li           a7, 0xffffffff
                  li           s7, 0x80000000
                  nop
                  add          a6, gp, s9
                  auipc        s5, 632199
                  nop
                  nop
                  lui          gp, 940001
                  addi         a3, a7, 808
                  add          gp, tp, t1
                  addi         tp, s9, 9
                  addi         s7, s9, 472
                  addi         gp, a6, -587
                  add          s9, a1, a7
                  sub          gp, a6, s9
                  sub          a6, s7, a6
                  lui          a7, 928082
                  nop
                  nop
                  addi         s9, t1, 1743 #end riscv_int_numeric_corner_stream_32
                  or           s6, gp, t5
                  sll          s4, s2, a5
                  and          t6, t1, a2
                  srl          t2, sp, s1
                  slti         s0, a3, 1944
                  sltu         a0, a6, s4
                  slti         s1, a4, 126
                  slt          s4, a0, a5
                  addi         s4, s6, 644
                  sll          s8, s11, a3
                  sll          a3, a4, s2
                  add          s10, a3, t1
                  addi         a7, s6, 1116
                  andi         t6, a2, -821
                  and          s7, a1, s10
                  lui          s6, 610749
                  srai         a7, s7, 15
                  ori          ra, s7, 593
                  ori          t4, ra, -55
                  nop
                  or           t2, t3, a3
                  xor          a0, s6, t1
                  lui          t6, 528883
                  slli         t5, s4, 23
                  sub          s6, s10, t1
                  or           a7, t3, t6
                  sra          s0, t2, s9
                  sltiu        zero, s5, -1708
                  xor          tp, s3, t1
                  sltiu        a6, a2, -15
                  sltiu        s10, a7, -849
                  sra          s5, s4, t6
                  srl          a4, s1, t4
                  srl          a3, t6, s2
                  slti         s9, s10, 1602
                  addi         t0, t4, -1823
                  slli         t0, gp, 12
                  xor          sp, t6, s7
                  slli         t5, gp, 29
                  srl          t0, s11, a0
                  or           t6, a4, a2
                  srl          s7, a3, ra
                  nop
                  xor          t2, ra, sp
                  ori          s9, tp, -869
                  and          s10, a7, s8
                  xor          t2, s0, t5
                  srli         s9, t3, 5
                  auipc        s7, 530193
                  xor          s10, tp, t3
                  ori          t1, s4, -1291
                  slti         sp, a6, -282
                  ori          sp, t4, 1344
                  sll          s8, tp, t2
                  or           a6, s3, t3
                  nop
                  andi         s8, t0, 1685
                  srl          a5, sp, t3
                  xor          sp, t0, ra
                  lui          s1, 216029
                  sub          a7, s0, t2
                  ori          s8, a7, -1680
                  and          s0, t2, a2
                  slt          sp, a5, gp
                  sra          s4, t0, a2
                  lui          a6, 835274
                  and          gp, a3, ra
                  srai         s1, s6, 1
                  sltu         s9, t2, a0
                  sltu         t6, s5, s8
                  lui          a0, 997211
                  add          s8, a3, s10
                  sll          s5, s4, t2
                  lui          t0, 504148
                  xor          s8, s5, s0
                  andi         a4, t3, -1008
                  slli         s4, s1, 6
                  slti         s4, a0, 86
                  xori         a6, zero, -636
                  addi         s8, t3, 1682
                  ori          t2, s10, 831
                  sltu         t5, t4, s6
                  auipc        t2, 486933
                  sltiu        t2, t6, -1235
                  sub          t6, t5, t6
                  addi         t0, t5, 229
                  xori         a0, s9, 71
                  srai         s6, s1, 22
                  sll          a1, a7, t3
                  ori          s7, s6, -1509
                  lui          s8, 220291
                  srai         t5, s4, 2
                  slti         a4, t4, 614
                  lui          t2, 834322
                  ori          ra, zero, 1008
                  auipc        a6, 919356
                  sra          s1, a1, a2
                  ori          s7, s6, -1359
                  sltiu        a7, gp, 246
                  nop
                  xor          t5, t4, t4
                  slt          a7, ra, tp
                  xor          a5, a4, tp
                  slli         s9, s8, 13
                  add          s9, t1, a5
                  lui          a6, 226598
                  srl          ra, s10, t3
                  add          zero, s6, t6
                  sll          s7, s7, t3
                  srli         a3, s11, 20
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_28
                  li           t1, 0x3fb3a727
                  li           gp, 0xffffffff
                  li           s0, 0x0
                  li           s6, 0x0
                  li           s9, 0x80000000
                  li           t5, 0xc1517ee7
                  li           a3, 0xffffffff
                  li           a5, 0xffffffff
                  li           a6, 0xe772e092
                  addi         gp, t5, -1952
                  sub          s6, s6, s6
                  add          s9, s0, a6
                  add          s0, a5, a3
                  sub          s6, s6, a1
                  add          a1, a1, s0
                  sub          gp, s9, t1
                  add          a5, a5, a3
                  lui          s6, 56532
                  sub          s0, gp, s6
                  sub          t5, a1, s6
                  auipc        t5, 777552
                  sub          t1, a1, a3
                  sub          t5, gp, a6
                  auipc        s9, 621361
                  add          a5, s0, a6
                  sub          s6, s9, a6
                  nop
                  lui          s6, 812592 #end riscv_int_numeric_corner_stream_28
                  and          a4, s6, s2
                  auipc        gp, 652597
                  lui          s4, 486255
                  sltiu        s10, s3, 305
                  add          t1, a3, t6
                  sll          t5, s4, t4
                  sll          t6, s9, t5
                  sll          s8, a4, s8
                  add          t3, s5, a7
                  auipc        t4, 475119
                  auipc        s6, 360417
                  sltiu        s8, t0, -315
                  add          s6, s6, s4
                  ori          t1, s4, -245
                  andi         s7, t1, 165
                  sltiu        s10, a0, -504
                  nop
                  slt          gp, s9, a3
                  srai         tp, s5, 11
                  srai         t5, a7, 2
                  andi         t0, s3, 9
                  slti         zero, a0, -651
                  srli         t5, s2, 30
                  srai         t4, sp, 1
                  sll          t0, a0, a2
                  lui          a3, 73302
                  slli         t5, s6, 13
                  sltu         tp, a7, s1
                  add          s5, s1, s11
                  or           a2, sp, s11
                  or           zero, s1, s4
                  slli         a0, t1, 8
                  sub          t5, t0, a0
                  xori         a3, a4, -761
                  slli         s8, a3, 6
                  slti         t2, gp, -2036
                  or           s7, s5, s2
                  and          s8, t1, t1
                  add          t6, s11, s0
                  srl          t3, t4, zero
                  xor          a5, s5, gp
                  nop
                  slli         t0, a2, 18
                  sra          tp, a5, s5
                  xor          s9, s8, a3
                  srl          s4, a1, zero
                  slli         t1, s7, 30
                  addi         s10, a2, 1152
                  lui          t5, 406188
                  sub          t3, a1, s3
                  xor          sp, a7, s3
                  or           s7, s4, s5
                  add          a6, s3, zero
                  and          s1, a0, a6
                  sltu         a0, s2, a3
                  ori          a1, s8, -1967
                  sub          t0, a1, a4
                  sltiu        s0, s2, -1374
                  xor          a3, s5, t5
                  sra          t0, t5, t3
                  slli         s1, a1, 8
                  lui          gp, 134495
                  and          s10, a0, s5
                  slt          s5, a3, sp
                  sll          a7, t1, s1
                  or           t2, a6, t4
                  sll          a2, a0, a2
                  or           t2, sp, t2
                  or           s7, a5, s4
                  slti         s9, s9, -183
                  srl          t2, s6, s5
                  slti         a3, t0, -1668
                  nop
                  xor          a1, ra, a0
                  xori         s4, a1, -670
                  srli         t0, a1, 3
                  slt          a3, tp, a1
                  slli         sp, ra, 17
                  sltiu        a4, a0, -1924
                  slti         a7, s10, 1638
                  andi         s6, a7, 1874
                  sub          t2, a0, t4
                  add          a5, t5, ra
                  slti         s8, a1, -806
                  sll          t6, tp, t3
                  addi         s9, s11, 2004
                  and          s6, a3, t5
                  nop
                  xori         s4, s2, 1652
                  srli         sp, s5, 14
                  xor          ra, zero, ra
                  xori         a6, t3, -1171
                  srai         s1, s0, 4
                  xor          s8, a4, a1
                  srai         s6, s5, 10
                  or           a4, s0, a6
                  sub          tp, s5, a7
                  slti         tp, s3, 1514
                  slti         s8, s11, -541
                  slt          t1, s6, s9
                  sltiu        s10, ra, 1100
                  sub          ra, s2, s3
                  addi         t5, s4, -301
                  slt          t0, t0, s0
                  sub          a3, t0, s4
                  sltu         s8, t4, sp
                  ori          s9, s9, -1322
                  addi         gp, s8, -302
                  slli         t4, s10, 24
                  xor          s6, a3, s11
                  slli         t5, t0, 3
                  sltiu        t0, s2, -161
                  srl          t4, t4, a5
                  slli         t6, a5, 11
                  xor          t2, s3, ra
                  sra          a7, s2, s6
                  sll          a0, tp, t1
                  srl          a7, a3, a5
                  slti         zero, sp, -1827
                  srai         a0, sp, 26
                  sra          a2, s3, gp
                  ori          s7, a5, -570
                  addi         sp, sp, 135
                  sub          t1, s10, s1
                  sll          s5, t2, s9
                  sub          a4, a7, tp
                  srai         sp, s10, 8
                  lui          t4, 317181
                  slli         sp, t0, 0
                  auipc        s10, 233822
                  sltiu        t0, t0, -1835
                  nop
                  andi         s9, s9, 1327
                  srai         tp, s1, 26
                  and          s10, s7, a7
                  andi         a3, s1, -153
                  addi         ra, a1, 1514
                  ori          t2, a4, -454
                  sltiu        a7, a7, -1541
                  nop
                  srai         s4, s4, 30
                  slt          t5, a0, s2
                  addi         zero, gp, 224
                  nop
                  addi         a3, zero, 1871
                  addi         s7, s6, -1436
                  xor          zero, s3, s7
                  srl          zero, s2, s9
                  slt          s10, t5, a4
                  lui          t5, 37172
                  addi         a4, s5, -1557
                  slli         t1, s8, 13
                  auipc        t4, 677417
                  slti         t2, s6, 1600
                  nop
                  sltiu        a7, a5, 24
                  srl          a2, s3, a5
                  sll          a0, t6, s11
                  sub          ra, a1, s1
                  and          t5, t3, a5
                  xori         t4, s3, -1832
                  lui          sp, 571042
                  srli         a6, a5, 12
                  sra          t6, t2, t4
                  or           t0, t2, s2
                  addi         sp, s2, -1428
                  andi         s8, t5, -616
                  ori          a7, t0, 1053
                  sll          a0, s1, t2
                  sub          t2, s2, s11
                  xori         a2, s2, -844
                  add          s1, t4, zero
                  xor          a6, tp, t1
                  sltiu        a6, ra, 1284
                  or           t1, a2, a7
                  sltiu        t0, s7, -1577
                  srli         s6, s5, 24
                  srai         a2, a7, 0
                  sltu         a4, a7, a3
                  xori         tp, t4, 103
                  srl          a3, a4, a4
                  slli         s10, s4, 8
                  sltiu        sp, a0, -1808
                  or           gp, a4, a4
                  slti         t5, a3, -171
                  nop
                  sll          a1, s2, t2
                  and          s0, a4, t5
                  lui          a5, 188666
                  xori         s7, s10, -1609
                  lui          s4, 119070
                  slli         t6, t5, 7
                  xori         s9, s5, -1149
                  slli         s7, a6, 26
                  or           a2, s11, a4
                  slt          s0, s3, a7
                  nop
                  srai         a0, gp, 9
                  sra          a1, ra, a4
                  srli         t2, a4, 28
                  srli         t6, a3, 14
                  slti         s5, a4, -2019
                  sltiu        s6, a1, -1029
                  auipc        t3, 443466
                  sll          s7, tp, s10
                  or           ra, s5, s1
                  or           s10, a2, t1
                  auipc        t3, 532974
                  sltu         a3, a0, s6
                  nop
                  sltiu        t1, a7, 1265
                  srli         s5, s7, 13
                  sltu         t4, tp, s5
                  sltiu        a2, s1, 584
                  slti         s9, s1, 544
                  add          a0, tp, ra
                  sltiu        s9, a5, -1089
                  sub          a2, s6, gp
                  ori          t5, t3, 572
                  and          s1, s5, s3
                  sll          s4, s11, s0
                  srl          a6, s2, t3
                  srai         a0, a4, 30
                  andi         a6, a7, -921
                  sub          tp, s4, zero
                  andi         t5, s2, -233
                  auipc        a5, 305695
                  sltu         t3, s4, a0
                  nop
                  slti         s10, s4, -1875
                  xori         a3, a5, -1943
                  sltu         t2, s1, a2
                  slli         tp, t5, 16
                  li           a4, 0x8401a5cc #start riscv_int_numeric_corner_stream_20
                  li           a6, 0xffffffff
                  li           s9, 0x80000000
                  li           a5, 0x10d80814
                  li           t3, 0xffffffff
                  li           t1, 0xffffffff
                  li           t4, 0x8d8c013a
                  li           tp, 0x80000000
                  li           s10, 0x0
                  li           a1, 0xffffffff
                  add          t1, s10, t4
                  lui          a5, 340467
                  addi         t3, a4, 245
                  lui          t1, 304015
                  nop
                  addi         a5, s10, 568
                  sub          a1, a6, t4
                  nop
                  auipc        t1, 930668
                  sub          a6, t4, s9
                  lui          a1, 746419
                  nop
                  lui          a4, 498652
                  addi         a4, a6, -470
                  auipc        a6, 941836
                  add          t1, a6, a6
                  sub          t4, tp, s9
                  lui          t1, 416100
                  auipc        t3, 290090
                  lui          a5, 168984 #end riscv_int_numeric_corner_stream_20
                  xor          a2, t0, a1
                  sltiu        s4, s9, 889
                  nop
                  ori          s6, t3, -756
                  and          t4, t2, s4
                  add          s7, a1, t6
                  addi         s1, s4, -1237
                  slti         gp, s7, 341
                  lui          s4, 485990
                  sra          s6, s8, a3
                  slli         t3, a6, 31
                  slt          t2, gp, a6
                  srai         t0, s0, 30
                  addi         s7, t5, -1436
                  slti         t1, s1, -1037
                  srli         s1, zero, 25
                  and          s6, t6, s0
                  srl          ra, s1, t3
                  sltu         s5, s1, s7
                  slli         gp, s7, 20
                  xor          t4, gp, s5
                  nop
                  slti         t3, a4, -1311
                  slt          a7, s3, a2
                  ori          s7, zero, 839
                  and          s4, t1, t2
                  sub          t3, t4, a3
                  lui          t0, 363314
                  slli         a6, sp, 26
                  auipc        t4, 394955
                  sra          a2, s8, a4
                  slli         a5, s3, 21
                  lui          t3, 1045738
                  nop
                  or           s7, s5, s9
                  xori         t4, zero, 49
                  slt          s8, t2, tp
                  slti         s10, t5, 1036
                  or           s1, a5, s11
                  or           tp, zero, t5
                  sub          t2, s1, s7
                  add          t2, a4, t5
                  addi         s6, tp, -1920
                  add          t2, a3, s10
                  and          t5, sp, a3
                  sltiu        t3, ra, -902
                  and          s6, s1, s4
                  xori         sp, gp, 194
                  addi         t2, a1, -36
                  add          zero, a5, t5
                  sltiu        gp, s0, 1617
                  andi         a4, t3, -2029
                  add          s1, a0, t0
                  and          a1, a1, s3
                  srai         a3, sp, 6
                  nop
                  srl          a3, a5, a4
                  nop
                  lui          tp, 981745
                  srli         s10, t2, 4
                  xor          t5, t3, t6
                  sra          a7, s0, a5
                  or           ra, s5, s6
                  auipc        gp, 967725
                  sltu         s5, s7, t0
                  or           t4, a7, s10
                  addi         a0, a4, -1435
                  sltiu        zero, t0, 1096
                  nop
                  and          sp, t2, t4
                  slt          gp, t1, t6
                  sltiu        a4, t2, -1583
                  and          s5, a6, s0
                  auipc        ra, 826789
                  slt          gp, ra, s9
                  xor          s1, sp, s0
                  sub          a0, t6, s7
                  sll          t5, a5, s4
                  sltiu        gp, a4, -1126
                  ori          a7, t2, -1435
                  sll          s8, a7, a5
                  sra          s9, s2, ra
                  lui          s4, 1035991
                  sll          t4, a0, s11
                  slli         a4, a7, 27
                  ori          zero, s5, 1389
                  andi         s5, t5, 866
                  and          s7, s10, a5
                  lui          sp, 930772
                  add          a7, s11, a1
                  sub          t0, t4, a3
                  nop
                  and          s10, s1, s4
                  and          s8, s4, a0
                  slt          t5, s3, a6
                  srli         a1, t4, 31
                  slti         a3, t1, -314
                  sltiu        a1, a1, -1400
                  slli         t1, a5, 14
                  sub          a1, t5, s7
                  xor          zero, sp, t5
                  srli         t0, a1, 9
                  sra          t4, s1, t6
                  xor          a6, s7, s2
                  srl          gp, a5, s10
                  and          t2, s2, t4
                  addi         gp, s6, -310
                  xori         a6, a7, -964
                  nop
                  sltiu        s7, t4, -1068
                  nop
                  xor          sp, s5, s9
                  slti         s9, s6, -1355
                  lui          t6, 210626
                  or           a2, a0, s9
                  add          t6, t6, t1
                  ori          s4, s0, 162
                  ori          a5, s10, 1821
                  addi         ra, s8, 1715
                  and          tp, s7, tp
                  auipc        zero, 748294
                  srai         t5, s2, 11
                  slt          t1, gp, s9
                  add          ra, ra, zero
                  and          a7, tp, s11
                  srli         t2, s6, 17
                  addi         tp, t6, -809
                  addi         t0, t0, -1938
                  sra          a4, a6, t4
                  slt          sp, a6, s4
                  sub          t2, s8, a5
                  srli         s1, t3, 21
                  auipc        t3, 895854
                  sra          ra, a1, s0
                  and          s7, t3, s5
                  xori         t0, s9, 194
                  slli         t6, a5, 19
                  slti         s6, a0, 1537
                  add          a5, s1, a2
                  and          t2, ra, zero
                  sltiu        a2, a6, 887
                  andi         s5, a3, 1749
                  xor          a4, ra, t5
                  addi         s7, ra, 9
                  addi         sp, a1, -206
                  andi         a6, a4, 509
                  slli         a6, zero, 7
                  sltiu        zero, ra, 165
                  slt          s10, a1, zero
                  slt          s6, s7, t4
                  sltu         s8, s10, s10
                  nop
                  auipc        a1, 140129
                  srai         s6, t2, 7
                  sra          a5, s6, s0
                  add          a3, s11, s7
                  ori          a7, zero, 1801
                  nop
                  srai         ra, s2, 24
                  sltiu        t0, ra, -773
                  ori          a1, s8, -1222
                  add          s4, a3, gp
                  add          t6, t4, a7
                  xori         s10, a1, -332
                  xor          t1, tp, a2
                  auipc        sp, 564487
                  slli         s4, t4, 21
                  ori          s9, a4, -160
                  slli         a6, t6, 25
                  and          a2, a3, s2
                  sll          a2, s2, t3
                  andi         a3, s7, -1187
                  srai         s6, a3, 8
                  sll          s8, s8, s11
                  sub          a1, a3, a7
                  nop
                  sra          t2, t3, tp
                  nop
                  slti         s10, s8, 1450
                  sra          sp, a3, t1
                  and          t0, s5, t3
                  xor          a6, a1, a5
                  sltiu        s9, t1, -58
                  sub          t4, t6, s5
                  sra          t4, s1, a4
                  lui          t0, 609032
                  sll          a2, s3, zero
                  nop
                  xori         a3, t0, 1455
                  andi         s5, s10, -477
                  sra          t5, a3, t2
                  slli         t2, ra, 18
                  sltiu        t6, s8, 635
                  xori         gp, t3, -1710
                  or           t0, a4, ra
                  xor          ra, sp, gp
                  srli         s5, s8, 0
                  sltu         zero, a4, gp
                  sra          t4, ra, a7
                  sub          a2, s2, t2
                  lui          a2, 595557
                  and          s1, a5, a1
                  addi         a5, s4, 1605
                  sra          t1, s0, a6
                  slti         s4, tp, -1194
                  srl          t5, a2, a3
                  ori          t3, a7, 735
                  li           s1, 0x88664d6d #start riscv_int_numeric_corner_stream_8
                  li           s5, 0xffffffff
                  li           t5, 0x5677d06e
                  li           t6, 0x6f561eb
                  li           t4, 0x0
                  li           a1, 0xf37277cb
                  li           tp, 0x312ad924
                  li           a7, 0x11ca5444
                  li           sp, 0x80000000
                  li           s10, 0xffffffff
                  sub          t5, t5, a1
                  lui          t5, 793351
                  add          s1, s10, s5
                  nop
                  sub          t6, s5, sp
                  addi         s10, s10, 1904
                  add          a1, s10, t6
                  sub          t4, a1, s1
                  auipc        t6, 19131
                  lui          t5, 554304
                  lui          s1, 207845
                  sub          s5, s10, a1
                  sub          a1, t6, t6
                  auipc        a7, 151307
                  addi         t4, sp, 87
                  addi         s5, t4, -1168
                  nop
                  auipc        s10, 419158
                  auipc        s5, 271672
                  nop
                  add          s1, t5, s1
                  addi         tp, t5, 1960
                  auipc        s1, 295092
                  add          a7, tp, s10
                  auipc        t5, 334742 #end riscv_int_numeric_corner_stream_8
                  slt          sp, a7, zero
                  or           sp, s8, s0
                  slt          s4, a7, a2
                  or           t4, s9, s5
                  slli         s0, a5, 13
                  sll          s1, t5, a6
                  add          a5, t0, s5
                  slli         t1, t6, 13
                  addi         a7, a1, 826
                  ori          t3, s10, 1404
                  add          t5, s10, zero
                  lui          a5, 358662
                  sltiu        zero, s4, -561
                  and          sp, s7, a4
                  lui          a5, 659887
                  sll          t5, t3, a3
                  srl          s5, t4, t3
                  sltu         a4, s6, a4
                  lui          sp, 280077
                  sltiu        a1, t3, 977
                  addi         t4, s0, 1911
                  or           s1, a2, s2
                  slli         s0, a7, 3
                  andi         t6, s10, -1070
                  slli         s7, s9, 28
                  lui          ra, 750272
                  srl          t2, s3, a7
                  ori          t6, a3, -1725
                  sra          s9, s1, s8
                  andi         t2, s5, -180
                  sra          s0, t5, a1
                  sll          a5, a6, a5
                  srai         gp, s9, 17
                  sll          s8, s10, s11
                  slli         a4, gp, 29
                  sra          ra, t5, a4
                  sra          t6, a7, a1
                  and          zero, s4, s7
                  andi         a5, t5, -124
                  slti         t6, s4, -830
                  sra          t4, t4, s11
                  srai         s5, a0, 4
                  srl          t4, t0, s8
                  xor          t3, s7, a6
                  srai         gp, s5, 19
                  add          s8, s5, s6
                  srl          a3, a5, a3
                  or           t4, s5, tp
                  add          a5, tp, t2
                  addi         s1, a3, -1308
                  or           t1, s11, s11
                  slt          a2, a1, s7
                  auipc        tp, 177486
                  ori          s9, t4, 1690
                  slt          s5, s11, s0
                  srai         t2, t4, 18
                  slli         s5, zero, 2
                  xor          sp, s4, ra
                  srl          t5, a4, s6
                  sra          a4, a5, s8
                  sltu         sp, t0, s6
                  srai         t3, s8, 5
                  and          gp, gp, zero
                  add          t0, s2, a2
                  slli         a1, a7, 25
                  add          ra, zero, a5
                  add          a7, t3, a6
                  xor          s7, a1, tp
                  lui          s10, 151243
                  slti         tp, t4, -1679
                  sub          t0, a1, t2
                  and          s10, s2, a1
                  nop
                  xor          t5, a1, sp
                  sltu         s4, s0, a1
                  sra          a2, t0, t6
                  and          s10, t4, a6
                  srli         sp, t0, 31
                  sub          t0, t0, t1
                  slti         a7, a5, -1405
                  xori         a5, t0, 1821
                  and          a3, s9, a5
                  sll          a0, s11, tp
                  and          a7, a3, a4
                  or           tp, t1, t1
                  sltu         t3, s11, s1
                  sltu         t4, gp, s2
                  and          t1, gp, a1
                  srl          s9, ra, zero
                  addi         a7, a1, -1420
                  or           t3, t1, s11
                  auipc        gp, 652421
                  nop
                  andi         t4, t2, 2002
                  nop
                  andi         a3, ra, 469
                  addi         s10, s11, -266
                  srli         s6, s0, 5
                  addi         s1, a4, 445
                  add          s10, s2, t2
                  add          s1, a4, a5
                  slli         t1, t4, 6
                  or           t3, s6, s10
                  or           s7, t1, t4
                  ori          s7, a6, -1814
                  auipc        t1, 809666
                  add          t1, t0, s6
                  slti         a7, zero, 108
                  andi         t4, a3, -1692
                  addi         s8, a5, -1839
                  srli         ra, s10, 11
                  addi         a0, t2, -1608
                  xor          t4, s5, a6
                  sltu         s4, s11, s5
                  andi         ra, gp, 951
                  sra          zero, tp, t2
                  xor          gp, t5, a6
                  srl          gp, s1, a4
                  sll          s1, s4, s2
                  andi         s7, zero, 1538
                  srli         a0, t6, 4
                  slli         s7, a7, 28
                  slti         a3, t5, 736
                  sll          s10, s4, t0
                  auipc        a3, 935288
                  sra          a5, a4, a4
                  sll          gp, zero, t0
                  nop
                  auipc        t6, 348669
                  xori         ra, a3, -660
                  ori          tp, tp, 1200
                  srli         ra, ra, 1
                  slli         t0, a7, 15
                  and          a0, t2, s4
                  sll          a7, t5, t4
                  addi         t2, a3, -815
                  slti         s8, s2, -1763
                  nop
                  srai         a4, s1, 8
                  andi         a3, s7, 908
                  xor          t5, s10, t5
                  sub          s0, s8, a3
                  and          a2, s4, s6
                  srli         s0, t4, 23
                  srli         s10, t6, 30
                  add          s7, s9, s3
                  sll          a0, s0, zero
                  addi         t2, t2, 1447
                  ori          s0, a2, 59
                  srl          a7, ra, s2
                  slli         s1, s4, 2
                  sltiu        s8, s4, -377
                  xori         ra, ra, -458
                  add          s6, t1, s10
                  xor          ra, a5, s4
                  nop
                  sra          tp, a5, a2
                  sltiu        s0, t2, 1225
                  srli         ra, a5, 10
                  slti         a5, tp, 1484
                  xori         ra, s3, 837
                  slli         a5, s6, 0
                  srai         s8, a3, 17
                  sub          s6, s4, t3
                  sltu         tp, s8, s5
                  srai         s4, s2, 25
                  lui          t6, 583308
                  sub          a2, t1, a5
                  sub          s5, s9, s8
                  srai         a5, zero, 24
                  slt          s10, a4, s5
                  slli         t5, t3, 29
                  sub          a4, t2, t4
                  xori         a1, s10, -314
                  slli         a2, s10, 26
                  sll          t3, a5, t4
                  lui          a5, 367646
                  sub          t2, a2, s1
                  ori          a3, gp, -592
                  xor          t2, s2, a1
                  or           a5, t5, t6
                  slt          s1, t4, s5
                  auipc        a1, 239995
                  srli         t1, s7, 13
                  nop
                  or           a1, a7, s4
                  srai         s5, s0, 30
                  auipc        s1, 984580
                  slti         a7, tp, -114
                  xori         a5, t3, 202
                  slli         a4, s7, 14
                  xori         t5, a7, -1397
                  lui          gp, 771179
                  sra          t0, t1, s9
                  slt          s7, a3, s10
                  lui          a2, 790507
                  srai         a6, s8, 18
                  srl          t1, zero, s0
                  addi         s6, tp, 269
                  srai         gp, a0, 24
                  slt          s8, a1, t1
                  and          t0, s3, s10
                  addi         s4, t2, -87
                  andi         a7, s2, -1496
                  and          ra, s2, t0
                  andi         tp, t0, 945
                  sub          s9, a2, sp
                  slt          s7, zero, s7
                  add          s0, t1, t6
                  nop
                  ori          a4, a7, -1550
                  sra          s0, s6, ra
                  sub          s9, s8, s6
                  slti         s1, s10, 481
                  add          t1, a4, t1
                  addi         t6, a7, 399
                  sltiu        ra, s1, 1218
                  xori         t5, t1, -1552
                  auipc        a0, 788620
                  xor          s0, sp, a0
                  slti         s7, s9, 1264
                  addi         s6, s2, -747
                  auipc        a6, 774929
                  addi         s4, ra, -1310
                  slt          a1, a2, a5
                  sub          t3, s6, a4
                  addi         a4, t0, 753
                  slli         s4, t2, 10
                  slti         t2, t1, 603
                  xor          s6, t4, a4
                  srai         s1, s8, 6
                  srli         a6, s4, 9
                  lui          a4, 320942
                  add          a6, t1, t0
                  andi         s9, s7, -502
                  or           t2, a3, s5
                  sltiu        gp, a1, 921
                  srai         gp, a0, 3
                  sltu         zero, s6, a0
                  nop
                  addi         s6, tp, -1971
                  andi         s10, s7, 1501
                  add          a2, s9, a6
                  auipc        a3, 518923
                  slli         s5, t2, 19
                  ori          a2, a7, 554
                  srli         s10, t1, 16
                  auipc        a0, 531764
                  lui          a7, 630097
                  slt          a7, a6, t3
                  sll          s1, tp, s1
                  srl          t6, s5, sp
                  lui          tp, 500700
                  and          tp, t6, s5
                  and          s8, a3, s6
                  sltiu        t0, sp, -1369
                  sltiu        a6, t0, 1487
                  sll          a4, t3, t4
                  sra          gp, s0, t5
                  sub          tp, t3, s0
                  sub          t2, a0, s9
                  sll          ra, s10, gp
                  sltiu        s1, ra, 796
                  xori         a5, zero, 2026
                  srli         t1, s9, 26
                  lui          sp, 388199
                  andi         s10, t1, 1417
                  srli         a1, sp, 19
                  srli         t4, zero, 25
                  slti         t3, t5, -1593
                  sub          sp, s1, t2
                  sll          t3, s0, tp
                  xori         t4, a7, 1607
                  addi         gp, s5, -874
                  sub          s0, s8, a5
                  slti         zero, gp, 2031
                  srli         t5, gp, 1
                  srli         tp, s7, 20
                  sll          t3, s5, s2
                  srli         s6, s11, 17
                  xori         a4, t4, 1990
                  add          a2, s11, t6
                  srai         ra, tp, 14
                  sltiu        gp, a6, 463
                  add          s8, a5, ra
                  and          t5, s5, s1
                  and          a7, s6, a6
                  xor          t1, s11, t6
                  srl          s0, a1, s10
                  srli         ra, s10, 12
                  addi         t5, t6, -627
                  sra          gp, s5, s6
                  sltiu        sp, t6, -294
                  andi         sp, a7, -1985
                  lui          t3, 297017
                  sltiu        t6, s3, -892
                  nop
                  or           t3, s0, s9
                  sub          t6, a1, s9
                  lui          a5, 199876
                  or           s0, s2, a5
                  nop
                  addi         a4, s8, -1332
                  srl          s7, t6, s0
                  ori          s9, t6, -1034
                  or           t0, s6, s11
                  auipc        s9, 311219
                  addi         tp, t6, 415
                  sll          s8, zero, a7
                  addi         zero, s9, -911
                  addi         s0, s6, 1240
                  xori         t4, t3, 810
                  srli         ra, s0, 10
                  slli         a0, zero, 13
                  auipc        tp, 235877
                  sltiu        t4, s3, -392
                  addi         ra, a1, 1002
                  lui          t1, 778398
                  add          zero, s3, a5
                  slti         a0, s11, 516
                  sltiu        s1, t3, -1056
                  xor          ra, a3, t4
                  xori         s4, ra, -257
                  nop
                  add          a3, s8, s11
                  or           s0, sp, a7
                  and          s7, zero, s6
                  andi         a2, s0, 308
                  slt          t4, a0, tp
                  sll          a5, s6, t4
                  srai         tp, a2, 9
                  srl          t2, a7, a2
                  slli         s10, sp, 26
                  auipc        tp, 977247
                  slti         t5, s0, -958
                  and          gp, a4, t6
                  slt          a0, t4, t3
                  srli         t2, s9, 10
                  srli         a4, t2, 13
                  nop
                  nop
                  sub          a6, gp, zero
                  srli         zero, s5, 10
                  sltu         a4, a0, s2
                  sra          s10, s9, a7
                  slli         s1, t2, 18
                  addi         t2, s0, 176
                  nop
                  sub          sp, t6, ra
                  and          t4, s8, s1
                  slli         a7, sp, 1
                  slli         tp, s6, 22
                  srl          s4, s8, gp
                  sra          a5, t4, a1
                  sltiu        a2, ra, 749
                  slti         a6, gp, -154
                  slt          s9, s5, t3
                  nop
                  sra          sp, s3, s9
                  auipc        a6, 377808
                  sra          s1, s10, s10
                  sub          a1, s5, s4
                  sltiu        ra, s3, -536
                  sra          s10, s0, a4
                  sltiu        t6, a7, -654
                  sub          tp, s8, a3
                  andi         s1, s8, -1840
                  sra          t3, s3, t2
                  addi         t5, s3, -969
                  sra          t2, a2, zero
                  srai         s6, ra, 15
                  slt          a2, s6, a4
                  sltiu        s1, s1, -1369
                  srai         s1, s8, 27
                  sltu         zero, a3, t1
                  xor          s1, s4, s5
                  slt          t3, a1, tp
                  sltiu        t1, sp, -1553
                  auipc        t5, 616175
                  xor          gp, tp, s3
                  slli         t2, tp, 20
                  xor          t0, zero, t2
                  sll          s1, a0, s2
                  andi         gp, s7, 552
                  lui          s5, 279104
                  sltu         a7, s4, a0
                  srai         s9, a4, 19
                  slli         s9, s6, 17
                  andi         ra, s3, 31
                  slli         a7, t4, 5
                  xor          t1, s3, a6
                  xori         a3, t4, 1598
                  auipc        tp, 404689
                  srai         t3, a2, 13
                  auipc        ra, 1032122
                  srli         a2, a0, 21
                  and          a5, a1, t1
                  add          a2, a4, s6
                  srli         gp, ra, 6
                  sltu         zero, s8, s1
                  sltu         gp, s7, zero
                  ori          t0, s8, -1553
                  slli         t5, a7, 28
                  addi         a1, s0, 202
                  slt          t5, a4, t6
                  and          s9, s1, s9
                  andi         t2, s5, 1559
                  slli         t2, s1, 23
                  xori         a2, s10, 1170
                  sltu         s10, s5, t2
                  sra          a0, a2, s0
                  sll          a0, a0, s2
                  slti         t1, s8, -6
                  slli         t4, a0, 6
                  add          a2, s4, s2
                  andi         t5, t4, -1283
                  nop
                  nop
                  srl          t4, s0, a2
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_34
                  li           s6, 0x458aafc1
                  li           a1, 0xf59b14cd
                  li           s9, 0xffffffff
                  li           s4, 0x0
                  li           t5, 0xffffffff
                  li           a0, 0x23792d32
                  li           a3, 0xffffffff
                  li           t4, 0x0
                  li           t0, 0xffffffff
                  add          s4, a3, a0
                  auipc        t4, 131340
                  add          s6, s4, s9
                  nop
                  auipc        s6, 306384
                  lui          s4, 136029
                  lui          t5, 497660
                  lui          s4, 838724
                  lui          t4, 795088
                  sub          t0, s1, a3
                  add          t5, s6, t0
                  addi         t5, a1, 1782
                  nop
                  add          t5, s1, a1
                  lui          s6, 527279
                  auipc        a1, 866511
                  lui          t5, 165948
                  nop
                  auipc        a0, 802796
                  nop
                  nop
                  addi         s9, a3, 682
                  lui          s1, 168132
                  lui          a3, 675724
                  addi         t5, t5, 331
                  add          s9, a0, s6
                  nop
                  sub          t4, s1, s9 #end riscv_int_numeric_corner_stream_34
                  sll          zero, s7, a1
                  sub          t2, a5, s11
                  nop
                  or           sp, a0, a3
                  auipc        t0, 191225
                  sll          s1, s2, sp
                  srl          s10, a5, a1
                  sub          s1, a5, s5
                  lui          s0, 886331
                  sub          tp, tp, t6
                  addi         a2, a3, -904
                  sltu         gp, zero, s7
                  xori         gp, a5, 804
                  slti         a0, t5, 1611
                  slt          s4, t1, a0
                  lui          a1, 846519
                  ori          zero, s1, -1235
                  srl          a4, a7, s7
                  slt          gp, a0, a5
                  srai         s6, t2, 26
                  srai         a0, t5, 24
                  sra          a7, gp, zero
                  sll          s7, s7, gp
                  slli         t1, s9, 7
                  sltiu        a3, ra, -1281
                  ori          t2, a2, -689
                  slli         s1, s11, 16
                  sra          t4, a0, s6
                  srli         s10, s9, 24
                  xor          a7, ra, s4
                  srai         s10, s0, 30
                  sltu         a6, t5, a6
                  srli         s9, t6, 28
                  sub          a7, t2, a4
                  auipc        gp, 22202
                  xor          t5, s8, s10
                  xori         s10, s10, -1689
                  xor          t2, t3, s0
                  sll          s1, s1, s0
                  xori         gp, t4, -665
                  srl          a5, tp, a1
                  lui          s0, 1041011
                  srl          a5, s6, t6
                  sltiu        a0, s0, 769
                  ori          a4, zero, -590
                  and          a2, gp, t4
                  srl          s10, s2, a3
                  xor          t6, tp, t6
                  sltiu        t6, a6, 528
                  sltu         s9, t0, a3
                  lui          t4, 1006620
                  slt          s10, s11, s1
                  auipc        s9, 792970
                  add          a5, s6, tp
                  addi         t3, zero, 982
                  lui          s10, 605593
                  andi         t6, s11, 466
                  addi         s5, sp, -160
                  slli         a3, a6, 19
                  or           t6, t2, s1
                  auipc        t0, 913946
                  sub          s8, a1, s5
                  addi         t5, s5, 415
                  addi         s1, s7, 1904
                  sltiu        a6, a5, 16
                  lui          t3, 719425
                  slli         gp, t6, 22
                  sra          a6, s7, s5
                  add          t1, s2, s0
                  sll          sp, s6, s1
                  sub          s0, a1, s8
                  add          a4, tp, a4
                  auipc        s10, 26130
                  sltu         t6, s7, t6
                  lui          a6, 14193
                  srai         s7, s3, 23
                  sra          a7, ra, zero
                  srli         s10, t2, 29
                  xor          t6, t0, zero
                  addi         s1, s4, -614
                  or           t6, s10, t2
                  auipc        sp, 1025940
                  sub          ra, t1, a5
                  slti         a1, s11, -689
                  sub          t5, s6, s10
                  sra          t2, sp, s2
                  xor          tp, t5, a4
                  sra          sp, s11, s10
                  add          t3, t2, s4
                  ori          t0, a6, -1201
                  slli         a3, a3, 2
                  srai         a2, t5, 12
                  sll          sp, s11, s1
                  sub          t1, ra, a2
                  addi         a3, zero, -768
                  add          s8, t2, a1
                  slti         ra, s2, -237
                  andi         a4, a4, -258
                  srai         s8, s11, 3
                  lui          a3, 938140
                  sltiu        s9, sp, 147
                  sltiu        t5, a0, -285
                  xor          s6, s0, s10
                  ori          t5, s11, 159
                  nop
                  slt          s4, a0, s9
                  auipc        t2, 415178
                  slli         zero, gp, 6
                  andi         gp, s5, -1733
                  srli         s8, sp, 6
                  slt          t3, s11, a0
                  auipc        sp, 317733
                  srl          a2, a7, sp
                  sltiu        t1, a2, -1839
                  and          t0, a5, s8
                  addi         s9, s4, 1301
                  srl          t6, s3, sp
                  xor          a3, a6, sp
                  andi         a4, s1, 1666
                  or           a0, zero, a5
                  xor          a1, s10, s2
                  srli         t4, a1, 25
                  srai         a2, a6, 23
                  slti         t3, t6, 1281
                  srli         t1, t5, 27
                  srli         s0, s1, 21
                  slli         a1, tp, 12
                  xori         s7, s3, -657
                  lui          zero, 145744
                  sub          t0, s2, s8
                  srl          s9, t1, t6
                  sll          a3, a1, a5
                  slt          a7, sp, t4
                  sra          a1, zero, a5
                  sub          t2, s5, s7
                  ori          ra, a4, -1939
                  xor          s10, s10, a2
                  srl          s6, t5, t2
                  sra          zero, s1, s3
                  xor          s0, s0, s2
                  srli         t1, a6, 26
                  auipc        a2, 777185
                  slti         tp, t3, 183
                  ori          a5, a3, -1109
                  ori          s8, a1, -1806
                  and          t2, s6, sp
                  srai         a2, s2, 8
                  slti         s10, s6, 1944
                  and          t5, s3, t4
                  andi         t1, s2, 1889
                  srli         sp, a1, 13
                  sra          a2, t2, t0
                  srl          s10, a3, s0
                  sltiu        a3, s1, -585
                  nop
                  auipc        tp, 822417
                  xori         a4, s10, 1869
                  slli         t6, t4, 24
                  add          gp, sp, t1
                  add          a5, a4, s10
                  slti         s10, a3, 1569
                  auipc        t5, 436454
                  srl          a2, t4, sp
                  sll          a4, s0, t3
                  andi         t2, a2, -1006
                  ori          ra, t5, -1088
                  nop
                  xor          a1, a5, s6
                  slli         s10, a6, 27
                  andi         s0, sp, -75
                  or           t0, gp, s6
                  sub          s1, s8, s2
                  xori         ra, t1, 1869
                  slli         s6, s2, 24
                  sltiu        s5, tp, -1985
                  sub          t3, t0, a1
                  or           ra, a3, s2
                  xor          zero, t6, s11
                  sub          tp, s9, s8
                  add          a7, s5, s7
                  or           t5, s9, s10
                  srli         tp, s6, 22
                  srai         t6, t6, 27
                  lui          s5, 1044182
                  sll          s0, s11, t4
                  auipc        tp, 207581
                  slti         zero, sp, -1604
                  sltu         gp, t3, s5
                  sltiu        a0, s9, 1510
                  auipc        a7, 887030
                  sub          t3, s6, t6
                  sltu         s9, s10, a4
                  auipc        ra, 781254
                  srl          a6, sp, ra
                  andi         a4, s10, 571
                  or           sp, s10, t1
                  xor          zero, a6, t2
                  lui          t2, 911502
                  andi         t4, s11, -536
                  xori         s7, s7, 2047
                  ori          t3, t1, -1624
                  sltu         zero, s5, s3
                  srai         a5, a5, 16
                  ori          a3, a1, -1705
                  nop
                  sltiu        a1, s6, 2026
                  slt          t2, a3, t6
                  or           s6, t0, s0
                  ori          t2, zero, -1687
                  sub          t4, s7, s7
                  ori          a5, a7, 1471
                  and          tp, zero, t4
                  add          t1, sp, a6
                  and          a1, s6, a4
                  addi         tp, s1, -1070
                  auipc        s8, 174173
                  sub          t4, s11, t1
                  or           a4, t0, t2
                  add          s6, a0, sp
                  xor          s5, s9, s8
                  lui          sp, 261548
                  srl          s5, a6, tp
                  addi         t6, s1, 1277
                  slti         s1, s1, 879
                  and          a6, s3, gp
                  slli         a2, ra, 24
                  and          t3, ra, a1
                  xor          s5, t1, sp
                  slli         a4, s9, 0
                  nop
                  slli         s4, a4, 3
                  addi         s6, gp, 1125
                  nop
                  add          tp, t4, zero
                  addi         s10, a7, 187
                  slli         s9, a1, 18
                  sub          s7, t5, s1
                  lui          s6, 364808
                  sub          zero, s10, s5
                  sub          t6, t6, s4
                  lui          a1, 800158
                  auipc        s7, 622950
                  slti         a1, a4, 540
                  addi         a3, s9, 688
                  sll          s6, s6, t3
                  sll          gp, a5, s8
                  sra          s8, s3, t2
                  srli         s1, s6, 22
                  auipc        a3, 63811
                  ori          a1, t1, -1489
                  auipc        sp, 297702
                  auipc        tp, 446859
                  sub          sp, s2, s4
                  slti         s1, a3, 1098
                  sltiu        tp, a7, 1460
                  auipc        a6, 232108
                  slti         t2, s8, -1344
                  srai         a5, a1, 0
                  lui          s1, 687735
                  slli         tp, gp, 21
                  ori          t5, zero, -747
                  sll          s1, a1, a2
                  slli         a4, s10, 13
                  addi         s8, s3, -1791
                  sltiu        t4, t2, 1840
                  sra          s6, s2, t0
                  sltu         s4, s7, s8
                  lui          a1, 817631
                  addi         t5, tp, 108
                  addi         tp, s7, 1875
                  sub          a1, a5, s7
                  sra          t5, s10, s2
                  slt          a3, s3, s11
                  xori         ra, a1, -353
                  slli         ra, s8, 25
                  slt          t0, t6, t5
                  ori          a3, a4, -189
                  auipc        s7, 54327
                  andi         t6, zero, -864
                  sub          s10, s9, s4
                  nop
                  auipc        a7, 334308
                  slti         a1, s4, 245
                  slt          t5, s5, s9
                  andi         s6, a7, -559
                  or           gp, a3, s2
                  add          sp, s2, gp
                  ori          s8, t4, -1743
                  sll          tp, a4, a1
                  addi         tp, s6, -505
                  srl          sp, s3, s11
                  or           s9, a3, t1
                  sll          s7, s10, a2
                  sub          sp, s2, s7
                  slt          gp, tp, a0
                  sub          a4, t3, a2
                  sltiu        tp, a0, -890
                  xor          t1, a0, a6
                  sltu         s6, s2, s0
                  slt          t2, s4, s4
                  xor          s4, tp, a3
                  slli         s4, t4, 14
                  sll          t1, a1, a7
                  auipc        s10, 645906
                  ori          t0, sp, -1017
                  sra          zero, t5, a2
                  slt          t2, s3, t0
                  xor          s9, s8, t4
                  sltu         s6, s7, s0
                  sra          a2, a6, s5
                  add          s5, a4, s11
                  andi         s7, t6, -17
                  addi         a4, s3, -267
                  nop
                  nop
                  xori         t3, a3, 369
                  srai         a1, t3, 3
                  slti         t6, t3, 1846
                  slti         s4, tp, -633
                  lui          ra, 338830
                  sltiu        s1, t6, -322
                  sra          tp, a2, a7
                  or           s4, s5, t5
                  slt          gp, s5, t1
                  andi         s5, s7, 888
                  sltiu        a5, t5, -371
                  nop
                  srli         s0, t1, 6
                  and          t4, a0, a6
                  or           a0, s7, t4
                  add          t0, sp, s0
                  ori          s1, zero, 93
                  sra          s0, s8, s5
                  add          a4, gp, t5
                  and          a5, s7, s4
                  nop
                  add          t6, a4, a3
                  lui          t3, 691480
                  sltu         s5, t0, zero
                  andi         tp, s5, -1679
                  lui          ra, 942063
                  sub          ra, t0, a2
                  sltu         t3, a4, s9
                  srl          t2, a3, s7
                  nop
                  sltiu        s4, s4, -301
                  xor          a2, s10, s0
                  sltiu        a5, s9, -977
                  auipc        s1, 996962
                  srl          a7, t5, a4
                  slli         a5, tp, 11
                  and          t1, s11, t2
                  sra          s5, t0, s0
                  srl          t3, a6, ra
                  sra          gp, t5, ra
                  lui          zero, 644014
                  slli         t5, a1, 10
                  slli         ra, t3, 5
                  andi         t3, zero, -2022
                  sltu         s0, s7, s5
                  ori          a3, a5, 1755
                  slt          s9, s2, s10
                  srli         a5, t2, 24
                  srai         zero, s11, 3
                  srl          a4, t4, s2
                  and          t5, t0, a1
                  and          a5, s11, a1
                  slt          a1, gp, s3
                  srli         s7, sp, 12
                  sltiu        a4, s10, -1313
                  srl          gp, s2, a3
                  xori         t0, a5, 399
                  nop
                  auipc        t4, 173154
                  auipc        a4, 659961
                  andi         t6, t4, 32
                  sll          t1, s1, s11
                  sra          gp, tp, a0
                  slli         s8, t4, 12
                  and          s9, t6, s10
                  auipc        a4, 763460
                  srl          t5, a0, t2
                  addi         sp, a3, -277
                  slti         gp, s11, 498
                  lui          s0, 764025
                  slti         s9, s11, -479
                  slli         s8, s3, 1
                  srli         a5, s9, 10
                  and          s9, a3, a0
                  sltu         t6, a5, a2
                  srai         a1, zero, 23
                  auipc        s7, 624682
                  sltiu        gp, t4, 1261
                  xor          a7, t5, s4
                  srl          t5, a3, gp
                  sltiu        t0, s6, -173
                  sub          t4, s2, t3
                  lui          t3, 735943
                  srl          a5, s0, a5
                  slti         a2, zero, 381
                  srli         s1, s5, 8
                  srli         s9, s4, 4
                  srai         t1, s9, 6
                  sltu         a2, a1, t3
                  srl          t6, gp, a1
                  add          s0, t4, s9
                  srli         s1, t6, 15
                  or           s8, a4, sp
                  or           a7, t0, t1
                  addi         s10, s7, -503
                  or           sp, t4, a4
                  sra          s8, s6, sp
                  andi         a4, t0, 1077
                  andi         a2, t3, 675
                  lui          a1, 364449
                  sll          gp, s10, t1
                  lui          t1, 428773
                  addi         zero, s4, -695
                  andi         s1, t0, 1705
                  or           t6, s5, t3
                  slli         s0, a5, 1
                  srl          s8, zero, s5
                  ori          s10, t3, 1980
                  andi         t0, s5, -243
                  or           a3, gp, tp
                  sll          s9, a0, a1
                  slti         s0, a5, -1189
                  andi         t1, t4, 545
                  srl          s10, ra, t2
                  sll          a5, a0, s4
                  auipc        ra, 13713
                  xori         t2, zero, -1116
                  srli         s1, a7, 2
                  slti         ra, a2, 234
                  srl          t5, s10, s7
                  ori          t4, s7, 1883
                  ori          ra, tp, -1279
                  nop
                  and          zero, s10, t1
                  sub          t2, t6, t5
                  add          t4, s2, t4
                  addi         t1, sp, 124
                  nop
                  srli         zero, a1, 9
                  nop
                  lui          t0, 371078
                  sll          a4, s6, a6
                  or           a4, s9, a7
                  nop
                  nop
                  lui          s5, 729321
                  or           t4, ra, t4
                  xor          a2, t3, tp
                  xor          t4, s0, t0
                  slli         a4, a3, 5
                  ori          s4, a3, 1401
                  slti         s10, s11, 1919
                  or           a0, a3, sp
                  xor          t1, t4, a5
                  and          a7, s7, t5
                  sll          s1, sp, s4
                  and          s0, a1, a0
                  slt          s6, ra, s6
                  srli         t0, s9, 10
                  srai         s7, t6, 4
                  srai         a2, zero, 19
                  ori          s6, s7, -1677
                  slt          t2, s4, s9
                  or           a0, ra, a3
                  ori          s5, t4, -1611
                  addi         s9, gp, -571
                  sub          a2, s7, s3
                  srli         zero, s2, 20
                  sltu         s7, a6, ra
                  or           gp, t5, a6
                  ori          s9, gp, 1477
                  xor          a4, s2, tp
                  sltiu        t3, s3, -1616
                  lui          t5, 956742
                  sub          s6, zero, s4
                  ori          s10, a3, -1065
                  sll          s4, t3, a2
                  srli         s5, s1, 13
                  sub          t5, zero, a5
                  srai         gp, zero, 11
                  sltiu        s10, t6, -1484
                  andi         s7, a6, 1562
                  sra          tp, t3, s4
                  sll          a1, s3, sp
                  sltu         s1, tp, s6
                  sub          a3, sp, s0
                  sltu         s4, s6, s3
                  slt          sp, s3, a0
                  addi         tp, t3, -416
                  sltiu        t6, tp, -718
                  sll          a0, a7, s2
                  auipc        t6, 1036286
                  srai         s4, t0, 15
                  ori          tp, t0, -481
                  sltu         a3, t0, zero
                  srl          a3, gp, s0
                  srai         t1, s2, 10
                  srli         s9, t4, 17
                  addi         sp, t6, 793
                  lui          s10, 205161
                  srai         ra, sp, 13
                  sltiu        t0, t4, -1710
                  slt          a7, t1, a5
                  and          a3, t5, a3
                  nop
                  lui          a2, 973074
                  sltu         sp, s2, s4
                  addi         t1, a4, 633
                  or           t0, a0, t6
                  xori         s5, a7, 984
                  sub          t3, s7, ra
                  xori         a6, t6, 168
                  sll          s1, s2, t0
                  addi         gp, s6, -1147
                  xori         ra, a2, 616
                  sll          a4, s0, t3
                  sll          t3, t0, a3
                  sltiu        sp, a1, -1159
                  slt          a5, s3, a6
                  or           a0, a3, a4
                  xori         s5, a7, -1538
                  nop
                  sll          zero, a0, a7
                  srli         t1, a3, 12
                  sra          a1, s7, a6
                  slli         zero, sp, 7
                  lui          a7, 943772
                  andi         a2, t3, 845
                  sltiu        a4, s8, 393
                  xor          s0, a0, s8
                  sltu         s4, a2, t1
                  auipc        s5, 22947
                  srl          zero, tp, s6
                  slti         t4, s5, -796
                  srai         s5, a6, 21
                  addi         a2, s11, -2039
                  srli         s9, s4, 24
                  srli         gp, t5, 28
                  sub          t6, s0, zero
                  xor          tp, a7, t1
                  srli         tp, s4, 19
                  or           t3, s10, t0
                  andi         s5, t5, 742
                  srl          sp, s3, s9
                  slt          a7, t0, gp
                  auipc        s9, 717102
                  addi         a3, s10, -40
                  andi         t3, a6, -1265
                  sltu         zero, ra, a4
                  srai         a0, s5, 12
                  xori         tp, s4, -70
                  and          a5, s5, t0
                  auipc        a5, 1002711
                  add          s1, s0, zero
                  srli         t5, a6, 0
                  slli         a5, t6, 30
                  srai         ra, t6, 25
                  slli         s4, t1, 18
                  slti         t3, a0, 1933
                  slt          a4, s11, a2
                  slt          tp, a2, ra
                  slti         s10, s11, 61
                  auipc        a1, 742569
                  srai         s0, a3, 6
                  lui          s6, 924798
                  slli         s9, a2, 12
                  sub          t2, a2, gp
                  slli         ra, ra, 31
                  slti         a7, a5, 1628
                  addi         s6, s2, 1711
                  ori          gp, s2, 394
                  slli         t2, sp, 12
                  and          t2, a0, ra
                  slt          s7, zero, a7
                  sra          a3, s9, t0
                  srai         t3, s5, 21
                  sub          t2, a6, t5
                  ori          t2, t3, -933
                  lui          a5, 331225
                  sltiu        a2, s10, -1159
                  addi         a1, a0, -859
                  slti         zero, t0, -2044
                  add          s7, a7, sp
                  srli         tp, s5, 25
                  slli         t4, s11, 10
                  or           a0, t4, t3
                  nop
                  or           tp, a6, a5
                  sub          t2, a6, a0
                  srl          t0, s8, a5
                  xori         sp, s9, 1121
                  srai         sp, s1, 13
                  nop
                  ori          a4, tp, 1583
                  slt          s4, s8, t0
                  srai         s10, s4, 24
                  sll          t0, t2, gp
                  slti         t1, t2, 268
                  xori         t5, s10, -411
                  slli         t4, t2, 3
                  sub          s6, s3, a6
                  and          a6, a1, a3
                  andi         a1, s4, 754
                  sltu         sp, a5, s10
                  auipc        t2, 217347
                  slli         t1, s0, 19
                  lui          a2, 933753
                  sltu         t1, s6, a6
                  slti         s6, t1, 1771
                  and          a7, t5, gp
                  slt          s5, s2, tp
                  sltiu        s7, sp, 932
                  slt          a0, a5, a3
                  srli         zero, s4, 17
                  xori         s0, a5, -1991
                  add          s0, gp, a3
                  lui          t3, 38213
                  sltiu        t3, zero, 779
                  auipc        s7, 798387
                  sltiu        a7, t0, -1246
                  sltu         s10, s8, sp
                  slli         s4, t3, 29
                  srai         s7, s2, 28
                  srli         s4, t1, 26
                  srli         zero, a2, 8
                  srai         s0, a6, 17
                  and          s1, a1, s3
                  sra          t0, a4, a0
                  lui          s1, 903615
                  srli         t0, a2, 16
                  sltiu        t5, s10, -846
                  srl          t5, s11, a4
                  slt          t0, s5, s6
                  srai         a2, s10, 14
                  srl          t4, t6, t1
                  xor          s5, a6, sp
                  add          t2, s6, a3
                  addi         s4, s3, -887
                  slt          tp, a2, s5
                  slt          t0, t3, a7
                  ori          s7, ra, 978
                  sub          s7, t6, gp
                  and          a0, s11, t4
                  add          s9, s1, s11
                  srai         s5, a3, 5
                  xori         s8, t5, 263
                  slli         s10, zero, 1
                  sub          a3, s9, t5
                  nop
                  sra          s7, s2, s7
                  nop
                  add          t0, a6, zero
                  sltiu        t0, t5, -677
                  srl          t5, tp, a3
                  sub          a7, s0, s7
                  xori         s5, s2, 1235
                  addi         tp, a6, -1815
                  slti         s1, a6, 1911
                  srli         t4, sp, 14
                  sll          s1, t1, t3
                  srai         t0, s9, 8
                  xor          s0, t2, a3
                  srai         a0, t4, 9
                  nop
                  xor          t3, s2, s2
                  auipc        a6, 95822
                  slti         zero, s6, 1724
                  sll          ra, t4, t0
                  lui          s7, 1046880
                  srai         t3, s11, 3
                  nop
                  andi         s8, t1, -1755
                  xor          a5, s9, s10
                  and          a6, a4, a2
                  srai         t6, s9, 31
                  addi         a4, s11, 1801
                  xor          t2, t6, s0
                  sll          a5, t0, s11
                  xor          s10, t0, t1
                  sltiu        a6, s2, 1668
                  sll          a4, a6, s3
                  xori         a5, s8, -1770
                  srl          t6, gp, s5
                  or           sp, s8, t1
                  sra          t6, t6, tp
                  sra          s9, sp, t0
                  xor          t3, a1, s2
                  xori         s0, s4, 789
                  sub          s8, a4, gp
                  addi         a0, s0, -1423
                  srli         t5, zero, 12
                  xori         gp, tp, -1
                  srl          s9, gp, t4
                  nop
                  ori          t4, a5, 1885
                  sub          s10, t3, t6
                  srl          s10, sp, s6
                  or           a3, a3, t5
                  sra          s1, a0, s11
                  sll          s1, s11, a0
                  sub          s0, s7, s7
                  xori         t6, s1, -1630
                  slli         t4, t0, 19
                  andi         tp, s3, -1007
                  and          s0, sp, t6
                  add          a0, a4, s2
                  sub          s7, a0, t2
                  srli         t3, s7, 5
                  srli         sp, t1, 16
                  slti         a2, a3, -1800
                  andi         s0, a6, -366
                  nop
                  sll          a6, t3, gp
                  xori         s9, t3, -511
                  xor          a2, a3, a7
                  srai         zero, t6, 29
                  or           zero, t3, t1
                  slli         s8, sp, 1
                  xori         gp, sp, -390
                  sub          a5, t3, s5
                  addi         t1, s10, 601
                  ori          gp, s2, 1339
                  sltu         t6, t3, a5
                  add          s1, a5, ra
                  ori          t4, t3, 1673
                  sltiu        t5, t4, 1567
                  sub          t1, s6, zero
                  srai         s4, sp, 31
                  sub          zero, a3, a0
                  sll          s7, gp, a3
                  xor          a3, sp, a7
                  srl          s5, gp, s9
                  andi         s9, ra, -91
                  srai         s1, tp, 5
                  sltu         t6, a4, gp
                  sltu         zero, ra, s6
                  auipc        s8, 209544
                  slli         t3, t5, 17
                  nop
                  auipc        a7, 876443
                  nop
                  sll          s10, s2, a0
                  add          a0, a7, t6
                  xori         ra, t0, 1439
                  slt          a4, s11, s10
                  addi         t6, a2, 1337
                  srli         a2, gp, 20
                  slt          a1, t6, s6
                  nop
                  slti         t4, t5, -1610
                  srai         s6, a3, 1
                  slt          zero, a6, ra
                  srai         zero, s6, 2
                  lui          ra, 59601
                  sra          s10, tp, s1
                  addi         t1, a3, -1238
                  xor          s10, t2, t1
                  nop
                  slli         t2, ra, 9
                  addi         a5, s7, -1211
                  xori         t6, s5, 1143
                  srli         a2, zero, 10
                  srai         ra, zero, 7
                  sltu         s4, s8, t6
                  or           s6, t3, s4
                  srli         t4, t6, 24
                  slli         a3, t1, 6
                  andi         t0, a7, 364
                  slli         tp, t5, 20
                  sltiu        a3, a1, 2038
                  srli         a0, a4, 25
                  srl          sp, a0, t3
                  slli         s6, a3, 3
                  and          a7, zero, s7
                  slt          t1, s2, t5
                  xori         a7, s7, 909
                  andi         t4, t0, -839
                  slti         t2, s6, -1839
                  srai         zero, t5, 30
                  andi         t0, s11, -330
                  sltu         t5, t1, a4
                  sra          s8, t1, s6
                  srl          a2, a4, s3
                  srl          sp, a1, s2
                  or           zero, s8, a2
                  sltiu        ra, s10, -280
                  addi         t1, tp, -1194
                  ori          s6, t6, -211
                  sll          t2, t6, a4
                  xor          tp, s5, a4
                  sll          a3, a5, t5
                  nop
                  sltiu        s4, a7, 1342
                  slti         sp, t1, 416
                  sub          a6, gp, a7
                  andi         s8, s0, 1868
                  slt          a1, t1, s3
                  sub          zero, a3, a7
                  lui          t5, 4821
                  add          s1, t2, zero
                  addi         a3, s7, -1554
                  xor          t2, t5, a2
                  xor          t6, t6, zero
                  slt          t2, t4, s10
                  xor          a7, s8, gp
                  add          zero, tp, zero
                  auipc        s7, 957707
                  slti         a1, t1, 751
                  sltiu        gp, sp, 351
                  sra          gp, t4, a7
                  sll          s5, t4, t0
                  addi         s0, a0, 2037
                  add          t0, a1, s6
                  nop
                  lui          t0, 858612
                  slli         t1, s5, 17
                  sltiu        a7, tp, 487
                  xori         ra, gp, 1586
                  srli         t0, s2, 1
                  slt          ra, a0, t4
                  add          a2, tp, a7
                  slt          a0, s6, a7
                  sub          s5, s8, s4
                  and          s4, t1, a1
                  srl          s9, s1, a1
                  srl          a0, s9, t1
                  srli         t1, s5, 1
                  or           s1, a2, tp
                  auipc        s10, 612388
                  addi         s1, t1, 1065
                  slli         a1, t0, 10
                  srai         t2, s0, 21
                  and          s6, t0, s7
                  nop
                  slli         a3, a1, 0
                  ori          zero, s7, -2015
                  or           a3, a1, s6
                  sll          t2, s2, t6
                  srl          s1, a3, s6
                  lui          s7, 101312
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_25
                  li           t1, 0x7f4d7bc8
                  li           t2, 0x0
                  li           s9, 0x80000000
                  li           t5, 0x2b22b1a3
                  li           t4, 0xffffffff
                  li           s5, 0xffffffff
                  li           s10, 0xffffffff
                  li           sp, 0x80000000
                  li           s8, 0xceb16573
                  addi         s8, t1, 1637
                  addi         sp, t1, 858
                  add          s0, t4, t2
                  addi         s5, t1, -970
                  add          s8, t5, s9
                  nop
                  addi         s8, t1, -800
                  auipc        t1, 952792
                  lui          t4, 19715
                  auipc        s5, 636128
                  add          s8, t1, t1
                  lui          s0, 175765
                  lui          t4, 868812
                  nop
                  nop
                  addi         t1, s9, 1391
                  addi         t2, s0, 809
                  auipc        s9, 780272
                  sub          t1, t1, t5
                  lui          s9, 978375
                  addi         s10, t4, 1965
                  nop
                  lui          s0, 428804
                  nop
                  add          s9, t1, t2
                  lui          s8, 653292 #end riscv_int_numeric_corner_stream_25
                  xor          a2, s4, a2
                  sltu         t2, a1, a4
                  slti         a1, s1, -1272
                  xor          t0, tp, ra
                  andi         a4, s6, -1352
                  add          t0, a5, a4
                  xor          s1, s8, zero
                  and          t2, a7, a5
                  slt          t3, a5, a0
                  srl          a5, s4, t4
                  nop
                  sra          a5, s2, a4
                  slt          s5, t2, a1
                  add          a6, s10, a5
                  srl          a6, sp, a1
                  slti         t4, s8, 1904
                  slt          s1, a3, a2
                  slli         s1, a7, 24
                  nop
                  xori         a3, a4, 949
                  sub          s10, s2, a2
                  auipc        s4, 489580
                  add          a3, t6, t6
                  or           s0, a4, a7
                  lui          t6, 971226
                  srl          a3, s9, t3
                  srai         t2, t4, 27
                  and          a6, s5, s2
                  lui          t2, 68608
                  slt          s6, s1, zero
                  slli         s10, t5, 26
                  or           s8, s8, a1
                  sub          t0, s7, a3
                  srl          gp, a0, t3
                  and          ra, s9, a4
                  slli         a7, t1, 7
                  andi         s8, t5, -141
                  or           tp, s9, a7
                  srl          s1, a0, ra
                  xor          a4, a0, a6
                  srai         a4, t3, 10
                  xori         t6, a6, -111
                  xori         s7, s6, 14
                  slti         t2, s2, 636
                  xor          a6, t5, t3
                  slti         a0, sp, -1049
                  ori          t5, s9, 842
                  or           s7, a2, s9
                  sltu         t6, s0, s1
                  srai         t3, gp, 31
                  and          s5, s5, gp
                  andi         s6, a6, 537
                  xor          t2, ra, ra
                  and          s4, ra, s1
                  lui          s7, 404171
                  slt          a5, s2, a7
                  sltu         s1, s3, s2
                  add          t2, t2, tp
                  srli         zero, s7, 18
                  sra          a3, s1, s6
                  andi         t4, s7, 801
                  srai         t2, s8, 23
                  slti         t3, t3, -1236
                  nop
                  sub          a2, t4, s5
                  sra          t1, t6, ra
                  ori          a5, t2, 76
                  or           s9, a3, s3
                  ori          ra, s11, 27
                  sra          sp, zero, t5
                  srai         a6, s9, 21
                  add          ra, sp, s10
                  srli         s8, a7, 18
                  xori         s0, s9, -1963
                  sub          s8, s1, s1
                  add          a2, a5, s2
                  sll          zero, t4, ra
                  andi         t4, t5, -686
                  sltiu        t0, a6, 910
                  auipc        t0, 585985
                  andi         s0, gp, -466
                  srli         ra, s10, 17
                  or           zero, s9, a5
                  sra          s9, a2, a3
                  sltu         sp, zero, t1
                  slt          zero, s6, s5
                  srli         s8, a6, 29
                  and          s8, a6, gp
                  or           s6, s7, a6
                  slli         a6, a5, 5
                  slt          a4, t6, t4
                  nop
                  or           t4, s11, a5
                  addi         a0, s5, 1329
                  or           t5, s0, s6
                  slt          s10, a3, s2
                  sra          a4, sp, s9
                  xor          gp, t2, t0
                  lui          a1, 200387
                  lui          t5, 588069
                  or           a6, zero, a4
                  sltu         ra, zero, tp
                  sub          a3, s8, s7
                  srl          s8, t1, s10
                  srli         s6, t1, 0
                  xor          t0, t0, t4
                  auipc        a6, 58146
                  ori          t5, ra, 1938
                  nop
                  andi         s5, s10, 1199
                  or           a7, t3, a6
                  sll          s9, s4, a5
                  sltiu        s7, gp, -1742
                  sll          s10, s5, a7
                  slli         t5, zero, 20
                  srl          a4, s7, zero
                  sub          s8, s10, s0
                  sra          a5, s7, a4
                  slli         t0, a1, 14
                  slli         a0, s4, 6
                  sra          s10, t2, gp
                  nop
                  slt          a1, a7, s0
                  srai         t1, t3, 24
                  addi         a0, ra, 602
                  sub          a3, t3, s2
                  or           s1, a3, s3
                  slli         a1, a1, 20
                  and          t6, gp, a7
                  sltiu        t0, t2, -1317
                  add          t3, s4, sp
                  slti         t5, s10, -1741
                  sub          s10, tp, t5
                  addi         t0, a4, 1781
                  nop
                  srai         t3, t3, 4
                  sra          a2, s10, a1
                  sltiu        t0, s3, -1733
                  lui          a7, 356870
                  sll          t4, ra, a1
                  sltu         s9, s4, tp
                  xori         a3, a7, -476
                  lui          s8, 632155
                  slli         s10, s3, 20
                  ori          s8, sp, -1617
                  xori         a7, s11, 1799
                  sll          t1, t3, ra
                  sll          s1, zero, t6
                  slt          ra, s1, t1
                  ori          a3, t4, 1998
                  lui          a2, 353998
                  slt          zero, a6, s7
                  lui          s9, 133123
                  slt          s9, a2, t0
                  lui          s7, 431272
                  xori         zero, t0, -985
                  slt          s8, t1, t6
                  slti         s10, a1, 1031
                  sub          a7, s6, a0
                  or           sp, s4, s9
                  xori         t4, gp, -287
                  srai         a2, s7, 12
                  srl          a3, ra, a6
                  addi         sp, a0, 1117
                  srai         s9, sp, 11
                  slli         a5, s3, 22
                  xori         t2, s4, 262
                  slt          s8, a1, s0
                  slti         a1, s5, -1315
                  and          s6, zero, a7
                  andi         t3, s11, -1297
                  sra          a6, s10, t4
                  xori         sp, a5, 1258
                  and          a4, s3, a1
                  andi         s10, t6, 1419
                  srli         t6, a6, 2
                  slli         a6, s4, 7
                  ori          t5, a0, -1456
                  sub          s5, zero, s4
                  xor          s6, s11, a1
                  slt          s8, s2, t4
                  sltu         t1, a3, t3
                  sra          s10, s10, s10
                  or           s4, t5, s11
                  add          s5, tp, t0
                  sltiu        sp, t4, 984
                  sltiu        a6, s4, -17
                  nop
                  and          t6, a4, t3
                  srai         s0, ra, 13
                  sltiu        t4, a7, -1738
                  auipc        t3, 350712
                  sll          t6, a0, t1
                  lui          s4, 175843
                  srl          a4, t6, t3
                  slti         a5, t3, 505
                  slti         s10, s8, 1794
                  ori          ra, a4, 131
                  xori         t5, t3, -1342
                  add          s4, t6, s5
                  lui          a3, 694110
                  slt          a4, s10, a2
                  sra          t4, a2, t5
                  xor          a4, t2, ra
                  add          t2, a4, a4
                  sll          a2, t5, ra
                  srai         s6, t2, 24
                  add          s8, a3, a6
                  slli         t2, s6, 28
                  addi         t0, t1, 133
                  srl          t1, gp, s6
                  sll          tp, s5, s2
                  add          a5, tp, t6
                  nop
                  and          s1, t2, t6
                  or           sp, s6, s7
                  xori         tp, t0, -771
                  auipc        t6, 161405
                  and          a0, s7, t2
                  slti         tp, t4, -1163
                  sltiu        a5, gp, -379
                  slt          t2, t5, a5
                  sub          a3, a1, a6
                  and          t4, s3, a2
                  slti         s8, t6, 585
                  and          s9, tp, a4
                  xori         a3, s3, 167
                  addi         s4, s11, -324
                  sra          a0, s10, s9
                  sltiu        zero, s6, 212
                  sub          s0, sp, s10
                  slli         a6, a6, 4
                  xori         s4, s5, 700
                  xori         s0, t6, -1545
                  sra          s8, a0, zero
                  auipc        t4, 846714
                  lui          t5, 912480
                  slti         ra, a0, -1778
                  sll          a2, sp, s4
                  slt          a1, s6, s8
                  auipc        t4, 744212
                  xor          t5, t5, s0
                  slti         t3, t2, -1384
                  xori         a7, s4, 141
                  addi         s5, t4, 869
                  slt          t6, a0, a7
                  srai         t0, s2, 8
                  andi         tp, s11, -1850
                  ori          s4, t3, 748
                  and          t4, s2, a3
                  slli         t5, s5, 28
                  ori          t5, t3, 575
                  or           s4, t1, t0
                  sltiu        t3, t3, 1695
                  xor          a6, a5, a1
                  andi         s5, ra, 1028
                  auipc        gp, 657740
                  sltu         t3, a5, t6
                  ori          tp, t4, -1405
                  auipc        a1, 509624
                  xori         a2, a2, -1925
                  sltu         a1, sp, s9
                  slt          s10, a0, s0
                  auipc        s10, 718732
                  nop
                  add          a6, s6, t0
                  sub          t4, a0, s3
                  lui          a4, 267492
                  sll          s8, a5, s7
                  srl          s10, a4, s5
                  nop
                  and          s0, tp, sp
                  sltu         s8, s11, t2
                  slti         a4, s2, 49
                  srl          tp, a5, t3
                  slli         a2, s2, 24
                  slli         s9, tp, 10
                  nop
                  lui          a7, 20386
                  add          a5, a2, gp
                  add          a3, s4, s6
                  ori          zero, s4, 1990
                  xor          s7, a4, t0
                  srai         s1, t1, 28
                  ori          tp, t0, -751
                  ori          s5, s11, -1465
                  and          t4, a5, t4
                  slti         s7, t1, 45
                  sltu         t5, a1, t2
                  add          s10, t1, s10
                  slli         a3, s3, 15
                  sra          s9, a3, a6
                  sltu         t6, a6, t4
                  or           s8, t6, t2
                  ori          zero, t4, 1449
                  sltiu        t6, a1, -1652
                  slli         s6, a0, 5
                  srl          a0, t1, s9
                  slli         s5, s3, 28
                  and          s4, t4, s4
                  srai         s9, s3, 17
                  nop
                  srai         t6, t1, 21
                  sra          tp, s6, s11
                  auipc        t1, 284710
                  and          gp, a6, t5
                  andi         s5, t0, -105
                  andi         s0, s7, -1068
                  srl          t0, t3, s8
                  and          sp, s9, a6
                  auipc        a0, 770696
                  andi         s7, s2, -1543
                  ori          s10, s1, -1697
                  andi         a6, s0, 1969
                  add          a0, s9, ra
                  addi         a6, a5, -1602
                  sltu         t5, s2, ra
                  auipc        s5, 215912
                  sll          s1, s0, s3
                  slt          t2, s4, s4
                  lui          a7, 652689
                  sra          s7, a3, a3
                  lui          a2, 971741
                  sltiu        t5, a0, -1213
                  xor          a5, s7, a4
                  nop
                  sltu         a0, s9, a2
                  srl          t6, zero, t3
                  srai         s10, a5, 0
                  sub          t4, a7, a7
                  srai         t1, s10, 25
                  nop
                  sra          a1, t3, s4
                  slli         a1, gp, 14
                  ori          a2, s7, 1487
                  andi         sp, s8, -1519
                  srl          s6, s5, gp
                  add          t3, a3, s7
                  auipc        a6, 690517
                  sra          s4, s4, t3
                  nop
                  sll          a4, sp, s9
                  andi         a5, s2, -12
                  auipc        s0, 172810
                  ori          a1, a7, -1935
                  nop
                  and          gp, a2, s4
                  sra          s1, s11, s8
                  nop
                  sll          s4, s5, zero
                  and          ra, s5, a7
                  xor          a4, a5, s5
                  ori          a0, a2, 18
                  srl          tp, a1, sp
                  srai         ra, t5, 18
                  xor          a1, s8, a0
                  xor          a2, s9, a4
                  slt          t1, t6, zero
                  or           s10, s9, a7
                  and          s10, t0, a4
                  slt          a6, t2, s10
                  sra          t6, s5, a6
                  lui          s6, 385515
                  lui          a5, 438767
                  auipc        t3, 762092
                  slti         a6, s7, 956
                  sltiu        tp, s8, -480
                  slli         s4, s11, 19
                  sltu         sp, t3, t5
                  sra          a4, zero, a4
                  andi         s8, s1, 1132
                  srli         a5, s5, 27
                  nop
                  auipc        t4, 147779
                  sltiu        a2, s0, 1056
                  or           s6, s8, t2
                  lui          t5, 333520
                  add          t1, s6, s2
                  sll          t5, a0, s4
                  srai         a3, s2, 0
                  slt          a0, a3, s5
                  auipc        t2, 627963
                  slt          s7, a5, gp
                  sltu         a2, ra, zero
                  add          s1, a3, a7
                  xor          sp, a4, t5
                  add          s9, t0, s3
                  add          a7, t3, a1
                  nop
                  slt          a3, s7, s3
                  sll          sp, s10, s5
                  xori         s7, a5, 1431
                  slti         s7, s8, 80
                  auipc        zero, 581334
                  or           s4, a1, s6
                  xor          a7, t6, t1
                  addi         s10, t2, -1729
                  sub          s4, gp, zero
                  add          t3, s1, s6
                  sltu         s9, a7, a4
                  andi         gp, a4, -107
                  slti         t1, s10, 1771
                  slt          a1, t6, s7
                  sltiu        a7, s9, -1513
                  slli         s4, a6, 29
                  srai         t0, a0, 28
                  lui          sp, 526388
                  srli         a3, a4, 6
                  sra          t4, s6, t5
                  srli         s1, s0, 9
                  srl          gp, a5, ra
                  slti         t4, a0, 655
                  sltiu        a3, ra, -1899
                  addi         a1, a6, 1442
                  auipc        a1, 486945
                  srai         s1, s5, 21
                  add          s7, t5, sp
                  nop
                  sub          s5, tp, t0
                  auipc        a3, 996040
                  andi         t4, t2, 1751
                  and          t3, s1, s9
                  xori         t3, a2, 1616
                  srl          s7, a7, gp
                  or           a3, t3, s10
                  srai         a4, gp, 28
                  andi         zero, sp, 1831
                  srl          t4, s11, s2
                  auipc        t1, 731878
                  and          a4, s10, s2
                  ori          gp, t4, -1828
                  xori         t3, s3, -261
                  srli         a0, a0, 24
                  srl          a0, a4, a2
                  slli         t3, a2, 11
                  srai         a5, s4, 26
                  sltiu        t3, a6, -1681
                  sltu         a7, s8, a7
                  xor          ra, s0, s11
                  addi         a4, t5, 640
                  sltu         s1, sp, s8
                  slti         a4, t0, -208
                  xori         t5, s10, 1931
                  srli         s1, a4, 17
                  srl          s4, a1, a4
                  srli         t0, a1, 25
                  slti         a0, t1, -523
                  addi         a0, a6, 1069
                  xor          t6, a1, t0
                  ori          t5, a1, 442
                  or           s10, s4, t0
                  sll          t4, t3, s9
                  lui          tp, 26134
                  slt          t0, s0, s3
                  sltiu        t3, s3, 505
                  slli         t0, s6, 21
                  sra          t3, t0, t4
                  srli         a1, s4, 25
                  srl          t3, ra, s1
                  srai         a5, zero, 29
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_23
                  li           ra, 0xffffffff
                  li           a7, 0xffffffff
                  li           s1, 0x0
                  li           a6, 0x1cd4148b
                  li           a2, 0x0
                  li           a1, 0xa4647430
                  li           s9, 0x80000000
                  li           s7, 0x80000000
                  li           s8, 0x80000000
                  auipc        a1, 894730
                  lui          s7, 936579
                  nop
                  auipc        a1, 476857
                  add          a6, ra, ra
                  auipc        s9, 576737
                  auipc        s8, 523103
                  sub          a1, a2, s1
                  add          a7, ra, s7
                  sub          a6, a7, a1
                  auipc        a6, 746880
                  auipc        a6, 403694
                  sub          s9, a7, s7
                  lui          a1, 1031598
                  auipc        s10, 463981
                  sub          s9, a7, a7 #end riscv_int_numeric_corner_stream_23
                  and          a3, t5, a5
                  srai         t6, a1, 10
                  xor          a5, s3, s3
                  addi         a5, t0, 1363
                  sltiu        s7, t2, 147
                  auipc        s10, 400627
                  lui          sp, 894746
                  srl          s5, s0, a5
                  srli         s8, s0, 26
                  or           t4, zero, t4
                  sra          s5, s6, a1
                  sll          s5, t0, t1
                  nop
                  sll          t3, tp, a5
                  srl          gp, a4, a0
                  add          s10, a3, t6
                  add          a3, s2, s6
                  srai         t2, gp, 4
                  slt          t4, s3, a0
                  addi         s10, t3, -1125
                  sub          a3, t3, s2
                  andi         zero, sp, -685
                  slli         a2, a7, 25
                  lui          t3, 677035
                  nop
                  srli         t2, s7, 26
                  slt          t1, sp, sp
                  slti         a3, s4, -670
                  slt          t5, s10, t5
                  and          ra, s8, a1
                  slt          s8, gp, sp
                  addi         t2, s11, -1252
                  srli         zero, s1, 16
                  srl          s9, s5, t2
                  andi         s1, s5, -1449
                  sltu         a7, s6, a7
                  lui          a0, 563771
                  sll          t2, a2, s7
                  sll          s10, t3, tp
                  lui          ra, 617957
                  and          a1, s5, s9
                  andi         s5, a3, -987
                  srl          a6, s10, a4
                  srai         s10, s3, 5
                  addi         s10, t1, -563
                  addi         a1, a3, -1999
                  srli         s8, s8, 28
                  xor          a4, t6, a4
                  srai         a2, a7, 5
                  slti         s0, s1, 1770
                  add          ra, s1, a5
                  andi         ra, a2, 104
                  xor          s6, a1, s8
                  srl          t3, t6, t5
                  srli         a1, s7, 18
                  and          t0, s2, t6
                  sll          a2, t2, a2
                  lui          a7, 1022507
                  andi         s4, s11, 1886
                  slti         ra, t1, 513
                  sll          s5, ra, a2
                  slt          a2, s7, t3
                  xor          s0, s1, s5
                  srl          t2, s8, a3
                  lui          s7, 481067
                  sub          a1, sp, a2
                  slti         s9, a6, 702
                  ori          t1, a5, -1374
                  addi         a2, a0, -1935
                  add          t2, s5, a7
                  slti         a7, s6, -1690
                  sra          gp, zero, s4
                  and          a2, s9, s5
                  slti         a4, a0, 1669
                  slti         s10, s2, -911
                  xori         a0, s9, 648
                  lui          t6, 266938
                  auipc        t3, 32682
                  sub          sp, s0, s11
                  sltiu        s10, s5, 1825
                  sra          a7, gp, sp
                  nop
                  xor          t2, s5, a4
                  sltu         a3, a1, t0
                  add          s7, s9, s4
                  sra          a6, s11, tp
                  and          a3, t1, t3
                  ori          gp, s6, 1365
                  srl          t1, t0, s11
                  slli         s9, t0, 14
                  sltu         s5, a3, t2
                  addi         zero, tp, -1959
                  srli         sp, a7, 30
                  addi         a3, tp, -1265
                  and          s9, t3, t3
                  add          a5, s0, a7
                  slti         s8, t1, 30
                  srli         t4, tp, 30
                  srai         t5, t4, 12
                  lui          s0, 321328
                  slli         tp, s11, 12
                  xori         a2, a2, -1636
                  xor          t5, a3, a0
                  xori         a7, s9, 1712
                  sll          s9, s9, a3
                  nop
                  srli         s9, s9, 7
                  srl          s7, t1, s11
                  or           s8, t3, a6
                  lui          s9, 183542
                  sltiu        a2, s6, 1347
                  or           s10, s2, a6
                  srl          t0, gp, s1
                  sub          a7, a1, s3
                  xori         t5, t4, 64
                  ori          a2, ra, -823
                  sltiu        a7, s4, -1765
                  sub          a1, zero, s6
                  slt          a5, a3, a3
                  slt          ra, t4, s4
                  add          s1, s2, s8
                  srai         t5, a5, 2
                  sub          s7, a0, s10
                  slli         s9, a1, 8
                  srai         s1, t2, 14
                  sra          t1, s4, s10
                  lui          t5, 272696
                  addi         s7, s4, -763
                  auipc        a3, 741097
                  slt          s7, s6, a0
                  srai         a0, s4, 9
                  xor          s5, zero, t6
                  srai         tp, a6, 1
                  addi         t5, s5, -1573
                  auipc        t4, 37355
                  xor          s1, s9, s7
                  sltu         s9, gp, t6
                  auipc        t2, 196874
                  sra          t2, t3, s1
                  slli         a5, s5, 30
                  sll          a2, a4, s5
                  xor          s10, a2, a1
                  srli         t6, s9, 16
                  slli         t1, s9, 27
                  or           s6, zero, ra
                  xori         tp, s2, 1430
                  sra          t2, s5, t1
                  and          t2, t0, s4
                  slt          a7, s10, s6
                  srai         tp, t4, 28
                  sltu         t6, t6, t1
                  ori          s9, ra, 1443
                  slt          a3, t5, t1
                  srl          tp, s9, a3
                  slli         t3, a2, 22
                  sltu         a4, s2, a4
                  or           s4, s5, tp
                  lui          a4, 536055
                  xori         s9, s7, 273
                  slti         s7, a5, -736
                  xor          gp, s10, s4
                  or           ra, t5, a1
                  nop
                  nop
                  sltiu        s7, t2, -562
                  or           t5, t2, s9
                  ori          a1, gp, -1313
                  xor          t1, a2, a4
                  sltu         gp, t6, s10
                  sra          tp, s4, t2
                  sltiu        s0, s0, -359
                  slli         zero, t6, 24
                  slti         gp, a6, -1766
                  sub          s6, t1, zero
                  and          a0, sp, a2
                  sll          s6, gp, s8
                  slli         t6, a7, 12
                  srli         gp, a1, 20
                  auipc        a0, 439310
                  sltiu        s8, s5, -972
                  andi         sp, s1, -1622
                  add          s0, t4, a6
                  addi         s7, t5, 1006
                  add          ra, s11, sp
                  andi         s8, a0, -563
                  srai         a4, a7, 30
                  srai         t0, s7, 3
                  auipc        s6, 334917
                  sra          s8, a3, t4
                  sra          gp, t3, a2
                  add          t4, s10, zero
                  xor          t0, t0, a1
                  auipc        sp, 601252
                  ori          ra, s9, 774
                  lui          s5, 530359
                  xor          s1, s9, s4
                  add          s8, a0, a7
                  and          t6, t2, t6
                  and          t6, s9, a0
                  add          s7, s6, a3
                  ori          gp, sp, -1370
                  sub          s9, t5, s4
                  srl          s8, s1, gp
                  or           t5, t3, s4
                  auipc        a5, 775185
                  srli         s8, a0, 18
                  addi         s8, t0, -1631
                  andi         s9, ra, 797
                  nop
                  srai         a2, a1, 23
                  ori          s8, a2, 1650
                  srai         a0, t4, 19
                  and          t4, a3, s6
                  lui          s4, 489795
                  srai         t0, a1, 8
                  or           t6, t4, a7
                  and          s9, s10, s4
                  srai         a4, ra, 19
                  andi         t0, a0, 329
                  srl          t6, t0, a4
                  ori          s0, t6, -637
                  lui          ra, 968493
                  auipc        t2, 42891
                  andi         t5, t3, 1429
                  slti         s7, a4, 263
                  srl          a5, a6, s10
                  xori         t1, s0, -903
                  addi         s10, a5, -562
                  ori          t4, s7, -49
                  nop
                  sra          zero, s5, tp
                  xor          zero, tp, s4
                  sub          s6, t6, a6
                  lui          s5, 1019872
                  add          s7, a1, s3
                  ori          s0, a6, 1844
                  srai         s7, t2, 24
                  srl          s0, t2, a1
                  or           a1, a1, ra
                  slt          zero, t6, s1
                  addi         a4, sp, -496
                  sltiu        s8, s4, 121
                  sltiu        s4, s9, 436
                  ori          t5, t6, 1933
                  slt          a4, a1, tp
                  nop
                  sltu         a0, a1, t0
                  ori          t4, s7, -1358
                  nop
                  slti         zero, t2, 1376
                  sub          t1, s11, a3
                  xor          a2, a1, t2
                  sll          t2, a0, zero
                  sltiu        sp, s7, 675
                  sll          s4, s4, s8
                  add          a2, a1, s5
                  andi         s9, t2, -1147
                  srli         sp, s8, 12
                  xori         t2, t0, 776
                  slt          sp, a1, s6
                  sltiu        a2, s1, -2008
                  ori          a7, a1, 958
                  srai         sp, t3, 19
                  xori         t5, t5, -769
                  sra          s5, a5, a5
                  auipc        s9, 306331
                  add          ra, s1, s3
                  srai         tp, a5, 17
                  slti         s6, s3, 1702
                  xor          t2, t5, s2
                  slti         a2, a1, -548
                  srli         a5, t5, 9
                  srli         a7, s1, 3
                  srai         t6, s7, 23
                  sra          s1, a5, s9
                  srli         s10, a1, 2
                  nop
                  sub          s4, ra, s6
                  sub          t2, a3, t3
                  xori         s0, gp, -1045
                  ori          s9, t2, 1656
                  sra          s9, s6, t4
                  nop
                  sll          s6, s3, s11
                  slti         a4, t3, -416
                  add          s8, sp, s0
                  sra          a2, a0, s11
                  add          a4, s0, sp
                  ori          a4, a6, -1486
                  and          tp, tp, gp
                  lui          s1, 165659
                  auipc        t3, 49122
                  sll          s8, t2, zero
                  slti         t5, zero, 423
                  or           t0, a7, t5
                  srli         a5, s5, 16
                  slli         s9, t4, 3
                  or           s6, tp, s9
                  sltiu        t6, t1, 293
                  sub          a1, s3, t3
                  andi         s9, s2, 1849
                  sltiu        t2, t6, -1720
                  andi         a6, s3, 703
                  xori         s6, t2, 1335
                  srai         a0, a3, 29
                  sltu         a1, tp, s8
                  addi         tp, s8, -99
                  and          s7, a6, s1
                  and          a6, a4, t2
                  srl          ra, s7, s11
                  add          tp, s8, s1
                  sra          zero, t2, s4
                  addi         s10, s4, -842
                  nop
                  sltu         t3, s5, s1
                  sltu         tp, a4, a4
                  add          s8, s3, t2
                  srl          t4, s9, s2
                  srli         s6, a0, 28
                  slti         a2, ra, -475
                  sub          s5, a4, s7
                  add          s8, s5, t0
                  sll          s5, s0, s11
                  slti         a0, a2, -806
                  srai         t0, a4, 30
                  slli         s4, tp, 30
                  andi         s1, s10, 1498
                  auipc        t6, 870458
                  sll          t5, s0, s2
                  srli         gp, a4, 0
                  sll          t4, zero, sp
                  sll          t2, t3, t6
                  xor          sp, a4, a6
                  sub          zero, t0, a1
                  srli         s8, a7, 5
                  auipc        s0, 1028407
                  slti         s7, s11, -587
                  or           t3, a3, ra
                  auipc        gp, 744697
                  sra          s7, a0, s10
                  xori         s9, a3, -340
                  slti         a3, s11, 1132
                  andi         t1, s7, -537
                  addi         s0, s9, 1883
                  srai         a5, t3, 6
                  sltu         zero, s11, sp
                  sltiu        s5, s4, -1940
                  sll          t5, s4, t0
                  ori          t3, a2, 620
                  sll          a5, a7, zero
                  slli         gp, s7, 6
                  andi         t4, s9, 388
                  slt          t2, s10, s8
                  add          a0, s10, tp
                  xori         sp, s7, -822
                  xor          s0, a1, s10
                  addi         s8, s5, 62
                  xor          t6, t2, s0
                  lui          t1, 961727
                  addi         zero, a6, 1972
                  andi         t1, s8, 678
                  srli         s9, zero, 25
                  nop
                  srli         a2, a1, 18
                  ori          s4, a2, -1129
                  srli         t6, s0, 22
                  srli         s8, s11, 1
                  slti         a1, t0, -920
                  ori          s6, a1, 862
                  sll          s4, s7, zero
                  sltu         s9, s10, a7
                  sltiu        t3, t3, -1122
                  slti         s9, t5, -1094
                  sltiu        a5, gp, 989
                  andi         zero, s7, 1767
                  sub          t5, s2, a4
                  sltu         gp, s8, a4
                  xor          sp, gp, s6
                  slt          t2, s1, t2
                  sra          a2, t1, a4
                  srai         s0, t4, 24
                  sltiu        t1, s1, 1778
                  sub          s7, s5, s7
                  sub          zero, tp, s7
                  sll          a7, s6, sp
                  or           t3, ra, s10
                  srai         t5, s8, 0
                  auipc        s5, 428361
                  addi         s8, t0, -8
                  srli         s0, a0, 13
                  andi         s4, ra, -331
                  sra          tp, t1, s1
                  ori          gp, t2, 921
                  sltu         s5, t1, a4
                  xor          zero, s0, t3
                  sub          t6, s0, s8
                  srli         a3, ra, 25
                  xor          s5, t6, zero
                  slti         s0, a1, -1256
                  addi         s6, a6, 372
                  andi         a4, s6, 505
                  srl          s8, t6, t3
                  lui          s4, 607034
                  auipc        s7, 394573
                  sll          t2, s1, ra
                  slli         t1, s11, 8
                  slt          s6, t2, s7
                  slt          s1, a5, tp
                  srai         zero, a3, 18
                  nop
                  sltiu        a4, t1, 1572
                  lui          a2, 27408
                  auipc        s9, 390937
                  sra          a5, s7, a3
                  nop
                  srl          t3, t2, s1
                  srai         s6, s9, 17
                  or           s5, a6, s8
                  auipc        sp, 498413
                  srai         t1, a2, 14
                  slti         s7, tp, 244
                  xori         s1, a5, -363
                  sub          t5, s0, t0
                  srl          a4, a1, a5
                  slti         zero, s7, 178
                  srai         t4, s8, 16
                  or           t6, t3, t6
                  add          a7, s8, tp
                  slt          a7, s7, a7
                  sra          s9, s0, tp
                  srai         t1, s8, 16
                  add          a3, a1, t4
                  nop
                  addi         a1, a1, 192
                  nop
                  srli         a1, a4, 20
                  slt          s7, s9, a6
                  xori         s7, a3, -1765
                  add          t5, s11, t2
                  sltiu        t2, s11, -1185
                  xor          t5, zero, t5
                  xori         s8, t6, 655
                  sub          sp, a6, s5
                  xor          t4, a1, t3
                  slti         tp, ra, -1996
                  srl          a1, s1, s1
                  slti         zero, s5, -213
                  addi         t6, s0, 1584
                  srli         ra, a1, 4
                  sra          a5, s0, gp
                  andi         t5, s8, 1740
                  auipc        a5, 111282
                  sra          s0, t1, s3
                  slti         a1, t1, 95
                  or           t5, t2, t6
                  and          gp, t4, a6
                  add          a6, s9, s9
                  addi         s9, a4, 435
                  sltiu        gp, s1, 973
                  srai         a1, s4, 8
                  or           a1, a2, tp
                  andi         s9, s11, -269
                  slli         sp, t6, 19
                  xori         t1, a4, 86
                  lui          a7, 756362
                  add          s8, s0, sp
                  sra          s5, ra, s7
                  srli         s9, s11, 21
                  add          a0, s8, s9
                  sub          s7, t0, a7
                  or           sp, s11, a5
                  sra          gp, a0, s8
                  srli         t4, t4, 1
                  nop
                  sra          t3, a7, t0
                  and          gp, s2, sp
                  sll          s8, s11, t2
                  sll          gp, s0, a7
                  sra          t0, a5, a5
                  or           a7, a3, t3
                  srai         t0, a3, 19
                  sra          t0, t4, a1
                  srai         a1, s1, 24
                  addi         a2, s1, 884
                  sltiu        t5, s9, -38
                  and          t0, ra, s11
                  ori          t5, t3, 1891
                  andi         a7, t2, 1246
                  auipc        gp, 64801
                  addi         t2, zero, -484
                  srl          gp, a5, t4
                  andi         t0, a0, -678
                  sltiu        s7, s7, 580
                  or           s5, s7, s8
                  add          a2, t1, a6
                  sltu         a7, a7, s8
                  add          t2, a6, a3
                  andi         s9, s8, 1259
                  xori         zero, a2, -1674
                  xor          sp, a7, a0
                  srai         t4, s4, 7
                  srl          gp, s10, a3
                  sll          a2, a0, s4
                  sra          gp, s1, s6
                  slti         t2, s2, -329
                  srli         t3, t6, 5
                  and          s8, s8, s0
                  add          a3, a7, gp
                  ori          t6, a6, -198
                  and          zero, gp, s8
                  sltiu        s9, a4, 1569
                  andi         s4, a4, -1595
                  srai         t2, a0, 27
                  sll          s7, a6, t1
                  sltu         s1, ra, s7
                  andi         a7, s5, 1195
                  auipc        s1, 853681
                  sltu         s9, s5, a7
                  or           a2, s6, sp
                  sra          zero, a7, s2
                  andi         a0, t4, 43
                  sltiu        sp, s3, 249
                  andi         a0, s3, 63
                  sra          a6, s1, s1
                  slt          tp, zero, t1
                  srli         t2, s3, 7
                  andi         t0, tp, -424
                  lui          t4, 350317
                  auipc        s10, 637314
                  srl          t4, a1, sp
                  ori          a5, s8, 1671
                  auipc        s0, 317462
                  add          s8, s0, gp
                  srl          a4, s0, s0
                  srli         a3, t5, 8
                  xori         a0, a0, 771
                  slli         s4, gp, 5
                  sltiu        a0, s1, 672
                  slti         t0, tp, -1084
                  add          tp, a4, s3
                  xori         a4, s4, -114
                  srai         s5, t5, 13
                  sltiu        t0, gp, 261
                  and          s4, gp, t5
                  addi         sp, s10, -975
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           s7, 0x80000000
                  li           a0, 0x0
                  li           t5, 0x0
                  li           gp, 0x80000000
                  li           s9, 0x0
                  li           s1, 0x0
                  li           s8, 0x80000000
                  li           a3, 0xffffffff
                  li           sp, 0x80000000
                  sub          s8, t5, s7
                  nop
                  auipc        s9, 351239
                  add          a0, t5, s1
                  lui          s1, 767239
                  nop
                  lui          t5, 347949
                  auipc        t5, 910252
                  addi         t5, a3, 1136
                  sub          a0, sp, sp
                  sub          gp, a0, s1
                  sub          s1, sp, gp
                  auipc        s0, 648980
                  nop
                  lui          sp, 93355
                  nop
                  nop
                  sub          a0, s0, s9
                  addi         gp, s8, 336
                  lui          s7, 364652
                  addi         s7, a0, 1840
                  lui          a3, 546290 #end riscv_int_numeric_corner_stream_11
                  auipc        s5, 826302
                  slli         s8, s4, 18
                  and          t2, tp, s8
                  nop
                  sra          s10, a2, gp
                  sra          a1, ra, s7
                  lui          s5, 380309
                  or           s6, zero, s2
                  srl          s10, t5, sp
                  nop
                  slli         s4, a3, 24
                  srl          t1, tp, t1
                  srl          t1, s5, t1
                  add          s4, s9, t5
                  srli         s5, a3, 22
                  slt          a5, t2, s3
                  xor          tp, gp, a4
                  nop
                  and          a1, s6, s6
                  andi         a4, s3, -132
                  sltu         a2, a7, ra
                  auipc        tp, 1041110
                  slt          t1, s4, s1
                  lui          a2, 295635
                  sll          zero, a6, s3
                  slli         s8, s8, 8
                  sltiu        s9, t1, 1699
                  slti         s1, t6, 1769
                  lui          s10, 662590
                  slli         t6, t0, 19
                  add          t6, s10, s3
                  auipc        s9, 322088
                  slti         zero, tp, 851
                  xori         sp, a4, -1194
                  auipc        a3, 369605
                  srai         a4, a1, 25
                  sub          s5, a7, s11
                  slt          s0, s11, s10
                  and          s6, t1, sp
                  nop
                  auipc        a0, 47646
                  slti         s7, ra, -1518
                  add          gp, a7, t1
                  and          s0, s2, a7
                  addi         t5, s8, -1885
                  ori          t5, t0, 930
                  xor          t2, ra, s5
                  xori         s7, s9, -1082
                  add          t5, ra, tp
                  lui          s7, 1041237
                  lui          s7, 511412
                  sltu         s8, a6, zero
                  srai         t0, s8, 24
                  slti         ra, s8, -1704
                  lui          sp, 186287
                  slti         s4, s2, -1147
                  sltiu        a4, s9, 1981
                  sltu         s5, t6, s3
                  auipc        s0, 30521
                  ori          a6, a6, 1519
                  srli         tp, t0, 28
                  nop
                  slt          tp, a1, a3
                  slli         t6, s3, 24
                  sltiu        a6, s3, 632
                  nop
                  slti         gp, s7, 1122
                  sltiu        s0, s3, 1655
                  xor          gp, t2, s2
                  sub          tp, a6, a2
                  sub          s7, s6, a0
                  ori          gp, sp, 1817
                  add          ra, a4, gp
                  lui          t6, 184546
                  sltiu        a1, s5, 1499
                  sub          a5, s11, zero
                  addi         s8, s8, -1224
                  addi         a7, s10, -817
                  add          t2, s3, s6
                  addi         s4, t2, -232
                  sltiu        a3, a6, -1065
                  srli         a2, s5, 31
                  slli         tp, gp, 0
                  srai         t2, s11, 27
                  lui          s0, 357996
                  sra          s4, zero, a2
                  srai         t6, s10, 31
                  lui          t0, 651318
                  addi         a4, t0, 452
                  or           a5, s3, a6
                  or           a0, a0, a3
                  add          ra, s1, s7
                  slt          s8, a6, t2
                  srl          s6, t0, s7
                  add          s6, s3, t3
                  and          sp, sp, t1
                  srli         sp, a4, 8
                  slt          a2, a6, s2
                  slli         a1, s11, 10
                  auipc        t1, 941303
                  slti         a2, t6, -1484
                  sub          s6, t2, t5
                  nop
                  xor          t6, s10, s2
                  auipc        t2, 31709
                  sltiu        zero, t3, -1490
                  auipc        a6, 201963
                  sltu         s0, s5, a1
                  lui          t5, 541519
                  xor          a2, t1, ra
                  or           gp, t1, ra
                  srai         s1, s3, 17
                  andi         a1, t4, -807
                  slti         s1, s1, 374
                  srli         s6, tp, 3
                  sll          s9, s1, s9
                  sltiu        gp, a0, 114
                  sll          tp, s6, t4
                  xori         a2, s7, 409
                  andi         a7, sp, 1309
                  auipc        t2, 541993
                  srli         s0, s6, 12
                  slli         a7, t5, 18
                  slli         t3, a0, 6
                  sra          t1, sp, s3
                  andi         tp, t5, 828
                  sltiu        ra, s4, 1415
                  sltiu        a1, a4, -1270
                  add          s1, s8, a2
                  lui          a5, 756714
                  slli         t4, s2, 19
                  sub          a2, t2, s0
                  sll          s5, s10, t0
                  xor          a7, s6, ra
                  sltiu        s1, s10, 509
                  andi         a2, s5, -1680
                  nop
                  andi         a2, s0, -1644
                  auipc        s8, 410735
                  sltiu        t0, a4, 1916
                  slt          s0, a0, s11
                  srl          t6, t5, sp
                  srl          s4, gp, sp
                  srl          t3, t5, s9
                  andi         ra, s6, 1903
                  andi         ra, sp, -1145
                  slli         gp, sp, 10
                  xori         s5, t0, 1587
                  slli         s10, a0, 15
                  auipc        ra, 683729
                  slt          t0, s0, a1
                  slli         a1, tp, 23
                  and          s7, s8, a2
                  xor          t2, t3, tp
                  srl          gp, s4, t5
                  xor          zero, s11, t4
                  slli         a0, zero, 20
                  add          t4, t4, a4
                  xori         a0, s1, 364
                  sltu         t5, s2, s5
                  slli         sp, a0, 8
                  auipc        s9, 714520
                  lui          ra, 92958
                  srl          a4, t3, t2
                  or           gp, a0, sp
                  andi         s0, ra, -1620
                  andi         t2, zero, 804
                  slti         s9, a7, 1401
                  auipc        a3, 654064
                  srai         a0, t2, 23
                  add          s4, ra, t2
                  and          t6, t2, s10
                  sub          s10, s2, tp
                  andi         t3, s9, -2039
                  or           t3, a4, s5
                  auipc        t6, 448862
                  add          s10, t3, s0
                  srli         sp, t6, 20
                  slli         a2, s3, 16
                  slli         s5, a6, 13
                  sll          t5, s0, s11
                  slli         t4, s6, 7
                  sltu         s10, s6, tp
                  and          s7, s6, a2
                  ori          a4, s1, -166
                  sra          a1, tp, tp
                  sub          gp, a3, t5
                  slt          sp, s5, s7
                  add          s6, sp, s2
                  sra          t1, s8, s8
                  auipc        a1, 796801
                  sltu         s1, t3, zero
                  auipc        s1, 574261
                  srai         t4, s11, 23
                  lui          s4, 435279
                  xor          t5, a3, t2
                  nop
                  xori         a6, a2, -231
                  srai         s7, s9, 24
                  srai         s1, t0, 17
                  slt          a2, s6, a4
                  ori          s5, a1, 751
                  xor          t2, s9, s10
                  or           a1, s1, t5
                  sub          a2, s2, t5
                  lui          s10, 387018
                  and          a5, a7, s8
                  sll          ra, s11, t4
                  slli         s0, a4, 5
                  slti         a4, s1, 1071
                  slti         s4, a4, -511
                  sra          a6, zero, t3
                  ori          sp, s9, 15
                  addi         a3, t4, -2028
                  sltu         tp, t1, s5
                  xor          t1, s3, s4
                  sltu         a3, t1, t4
                  sll          t0, s7, s3
                  xori         a7, t4, -782
                  sll          ra, s5, s8
                  sltiu        t4, t1, 1620
                  nop
                  sub          t3, a6, ra
                  sub          s5, s9, t1
                  slt          a4, ra, ra
                  sltiu        t6, s3, -1502
                  srli         s4, a7, 13
                  srl          t5, t4, t5
                  sltiu        t5, s9, -394
                  sltiu        t3, s9, -1924
                  xor          s9, s11, a6
                  or           zero, s8, s6
                  sltiu        gp, s4, -920
                  addi         a1, a7, -205
                  sll          s9, a4, t5
                  srli         a5, s1, 9
                  or           t0, t2, s1
                  slt          t5, t2, t0
                  or           a2, a0, a4
                  xor          t6, s3, s8
                  sltu         zero, gp, s2
                  ori          t1, a5, -1244
                  sltiu        a0, a0, -1154
                  and          t4, a3, t0
                  slli         t2, s4, 4
                  auipc        t5, 948981
                  sltu         s1, s6, s11
                  sub          t3, s8, s8
                  srl          s7, s10, t6
                  add          t0, ra, s11
                  slt          a1, a0, s0
                  sll          tp, tp, t2
                  xori         a2, t6, -1280
                  add          t6, gp, s3
                  sll          t6, t5, sp
                  nop
                  srli         tp, a7, 24
                  xor          gp, s3, zero
                  sra          a6, t4, tp
                  and          s8, s8, t5
                  nop
                  slli         s5, s10, 7
                  lui          s8, 603174
                  xor          s9, a7, a3
                  xor          gp, gp, s11
                  sll          t6, a1, a4
                  addi         a2, s3, -1550
                  and          s0, a1, s11
                  auipc        s8, 937146
                  sub          a7, t1, s0
                  sll          a2, ra, a7
                  sll          a6, zero, t0
                  sub          ra, s2, s4
                  srli         a6, s6, 27
                  and          s6, a7, a1
                  or           a7, s11, t6
                  slt          tp, s1, a4
                  sltiu        s7, ra, 1243
                  and          a0, zero, ra
                  add          t3, t1, ra
                  sra          t5, s2, gp
                  srli         t6, s6, 7
                  slli         a6, sp, 30
                  lui          a0, 530720
                  nop
                  sltiu        a6, t2, 893
                  srli         a3, s1, 30
                  xori         tp, t4, 149
                  srl          a2, s10, gp
                  sra          t4, s7, sp
                  slt          s5, s10, s5
                  xori         ra, a6, -743
                  slti         a4, s3, -429
                  or           s7, a7, t4
                  xori         t2, tp, -1424
                  or           a5, a6, s0
                  srli         t4, a5, 21
                  or           t1, a2, a2
                  lui          s1, 731628
                  auipc        a1, 988559
                  andi         s1, t5, -969
                  sub          t1, s10, s8
                  sub          s10, sp, a1
                  ori          t6, t3, 860
                  slt          a1, t3, t5
                  addi         a4, s2, -351
                  xor          ra, sp, s10
                  srli         gp, s4, 10
                  or           t6, s6, gp
                  slti         a4, a1, -1130
                  sltu         a2, s3, s6
                  addi         sp, t1, 468
                  and          t2, s8, s6
                  sll          zero, s0, s3
                  slli         s9, t1, 9
                  ori          s1, t0, 1643
                  sra          s8, a5, t3
                  sra          t0, gp, t2
                  sra          s1, s0, s5
                  ori          a1, a2, -367
                  sra          a1, a6, t2
                  or           s9, ra, t2
                  ori          a7, t1, -1261
                  lui          a1, 467432
                  auipc        a5, 263879
                  ori          a2, s5, 47
                  ori          a7, t0, 549
                  andi         s1, s3, -449
                  srli         t1, a3, 22
                  sltiu        t6, sp, -1560
                  xor          tp, t4, s3
                  auipc        a4, 639728
                  xori         t4, a5, -398
                  xori         t1, a7, -1096
                  lui          s10, 216080
                  or           s6, a3, t4
                  xori         a2, t6, 77
                  andi         sp, s2, -1137
                  addi         s9, zero, 1988
                  srai         t1, a0, 27
                  srl          s10, s7, t0
                  srl          a7, s9, s11
                  addi         s1, zero, 1594
                  andi         a7, t1, 996
                  xor          s8, tp, s11
                  srai         s7, t5, 10
                  ori          s6, sp, -906
                  auipc        s8, 978243
                  sll          zero, s3, a4
                  addi         a3, a4, -1856
                  srl          s8, s4, gp
                  nop
                  addi         s7, s8, 68
                  srli         s10, t5, 29
                  srl          a6, a7, sp
                  and          a3, s9, s7
                  nop
                  add          s1, t4, t2
                  lui          a7, 574433
                  srli         t0, s8, 0
                  or           s8, s3, s7
                  ori          t4, s0, 1340
                  ori          gp, t4, -1106
                  sltu         s6, zero, a0
                  lui          a7, 1041671
                  and          s8, a5, a7
                  slti         a3, a7, -657
                  auipc        a5, 1026554
                  add          t2, t3, s10
                  sll          s0, a2, t1
                  sra          gp, t1, a2
                  auipc        t0, 655283
                  sll          t0, t0, s2
                  nop
                  lui          ra, 691387
                  sub          a4, t3, t1
                  andi         ra, s0, 1675
                  xor          t0, s6, tp
                  addi         a5, a0, 658
                  and          t5, a7, s1
                  sltiu        a3, s11, -617
                  lui          s5, 719253
                  srl          tp, s6, a3
                  srli         s8, a7, 3
                  srli         zero, s2, 6
                  sltiu        s4, s5, 1651
                  auipc        t6, 912266
                  srai         a6, s1, 28
                  or           s10, s6, a5
                  sub          a4, t0, ra
                  addi         s0, t2, 625
                  sub          t3, a2, s0
                  or           ra, s7, a3
                  andi         s8, a7, 1058
                  srai         a7, s7, 6
                  sub          a4, a0, s10
                  srl          t0, a7, s2
                  srli         a7, a2, 10
                  sll          tp, t2, ra
                  sra          t6, t4, gp
                  slti         tp, s8, 1309
                  slti         zero, a0, 17
                  addi         s10, s7, 827
                  andi         a6, a5, -1564
                  ori          zero, s0, 1970
                  sub          gp, zero, gp
                  ori          s0, sp, -1624
                  andi         s5, s2, -1496
                  andi         t3, s5, -754
                  sltiu        zero, t0, 51
                  sub          t3, t1, s2
                  sltiu        t4, t6, 757
                  nop
                  sll          t5, t5, a0
                  lui          a3, 506048
                  lui          a0, 30073
                  addi         a5, s2, 740
                  xor          s10, t2, s0
                  or           s0, t3, s7
                  and          a7, a4, t1
                  srai         a1, s9, 11
                  and          a3, s8, zero
                  sra          t5, t2, sp
                  sub          s7, s0, s0
                  slti         s10, s7, -1039
                  add          tp, zero, s2
                  nop
                  srli         a2, sp, 20
                  slt          ra, ra, s4
                  ori          s0, sp, -1684
                  xor          t1, a4, s2
                  add          a6, s10, a3
                  ori          t5, a7, 1329
                  sltu         t4, t1, s3
                  srl          s0, a3, a1
                  nop
                  sll          ra, s8, a1
                  and          t5, ra, sp
                  lui          t3, 511754
                  andi         s6, s6, -565
                  andi         a7, a4, 1555
                  sltu         a2, s11, a3
                  sra          a5, s7, s2
                  add          s10, a7, a2
                  xor          a7, s5, ra
                  sra          t0, tp, a6
                  xori         a2, a1, 153
                  sltu         s7, a2, t2
                  nop
                  andi         gp, t6, 1912
                  srli         t6, t5, 15
                  or           zero, a6, s0
                  srai         t2, t3, 12
                  xor          t6, sp, a1
                  ori          a2, sp, 109
                  andi         s5, s6, 1587
                  lui          a5, 726749
                  addi         t5, a7, -546
                  or           t3, t2, a7
                  xori         s4, s4, -1694
                  ori          a7, a4, 1181
                  sll          a4, a1, s1
                  srli         s6, sp, 1
                  nop
                  sub          s7, s2, s10
                  or           sp, t6, s9
                  xor          s1, t3, a3
                  slti         s0, t2, -1976
                  xori         t0, a6, 802
                  slt          s0, a5, a7
                  sra          s9, s2, s5
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           t1, 0x80000000
                  li           a0, 0x0
                  li           a5, 0xffffffff
                  li           s1, 0x0
                  li           t0, 0xfeca3951
                  li           ra, 0x80000000
                  li           s0, 0x80000000
                  li           a4, 0x0
                  li           t2, 0x80000000
                  nop
                  lui          a5, 925987
                  auipc        t2, 758063
                  auipc        s7, 452734
                  lui          t2, 800351
                  lui          a5, 714987
                  sub          a4, a5, t1
                  add          t0, s1, a5
                  sub          a4, t2, t0
                  add          t0, a5, s7
                  addi         t2, a4, -229
                  add          t2, a0, a4
                  nop
                  add          s0, s0, s1
                  sub          a0, a4, s7
                  nop
                  sub          a5, a4, s7
                  addi         t2, ra, -171
                  sub          a0, t2, t0
                  add          a5, s7, s7
                  add          a0, t1, ra
                  auipc        s7, 694541
                  add          s0, t2, s7 #end riscv_int_numeric_corner_stream_15
                  and          t4, s4, s2
                  and          s6, s0, zero
                  sltu         a0, s0, s5
                  sltu         s9, s6, a0
                  sll          t3, zero, s3
                  sra          ra, a0, s10
                  or           a4, s8, a7
                  lui          a7, 181558
                  andi         s9, gp, -2033
                  xor          s5, s1, s4
                  andi         t3, t0, 1170
                  xori         gp, a4, -1800
                  sltu         t2, s3, t3
                  and          ra, s6, zero
                  lui          gp, 981593
                  srl          s7, s9, s2
                  or           t4, s0, a0
                  and          ra, zero, s5
                  lui          s7, 567905
                  sltu         a2, ra, s10
                  andi         t2, s1, -973
                  and          gp, a5, s5
                  or           t6, gp, s4
                  slti         t4, t4, 1535
                  or           s9, s0, t0
                  srai         t3, t2, 18
                  and          a0, a7, zero
                  or           a3, zero, a7
                  xori         s10, a0, -1514
                  sub          s6, s11, sp
                  add          s1, a5, s9
                  sra          t3, a4, s2
                  andi         t6, s8, 267
                  xor          s5, a0, s11
                  ori          s5, t2, 2029
                  auipc        zero, 644329
                  xori         a7, a4, -242
                  nop
                  ori          t2, a3, 115
                  nop
                  addi         s9, s7, 1252
                  andi         s1, sp, 1573
                  xori         zero, t3, -630
                  add          t0, t2, sp
                  ori          a3, zero, -1576
                  slli         t5, s11, 14
                  andi         s4, a7, 1375
                  ori          sp, a5, 482
                  srai         tp, a7, 29
                  nop
                  or           a1, t2, gp
                  slt          s8, t1, a2
                  nop
                  srl          a2, s9, s1
                  or           s5, a5, a2
                  srl          s5, a3, ra
                  lui          a5, 120361
                  and          a2, s7, gp
                  slt          a6, t6, ra
                  lui          t0, 492674
                  lui          a0, 180269
                  addi         s0, gp, 869
                  slli         a5, a7, 20
                  srl          a4, s4, a6
                  sra          s4, ra, s6
                  sra          t6, t5, s1
                  sltu         t6, s9, s0
                  add          a2, a3, gp
                  sra          a5, a6, a4
                  xor          s8, s8, t6
                  nop
                  ori          s8, a5, -1815
                  auipc        s7, 910192
                  andi         t4, t1, 1956
                  lui          tp, 852370
                  slti         s8, t2, 389
                  lui          a0, 959221
                  srai         t4, a7, 30
                  ori          s0, t2, -706
                  auipc        s5, 1040588
                  or           ra, t2, t0
                  sltu         gp, t0, a1
                  sll          a5, s4, a0
                  and          s4, a6, gp
                  ori          s1, gp, 104
                  sltu         s6, s4, a2
                  ori          s10, s10, 209
                  auipc        s1, 633546
                  sltu         s9, a0, s2
                  slt          t6, s11, t1
                  add          t2, a3, a6
                  sltiu        s10, a6, -1067
                  srai         zero, s10, 9
                  sll          a0, t5, s6
                  slli         t2, a2, 18
                  sub          s6, s5, zero
                  and          t4, t2, s1
                  sltu         a1, sp, s7
                  andi         a6, s3, 696
                  auipc        a1, 844107
                  slt          t1, s7, s8
                  sltiu        t6, s8, 790
                  sra          t1, a7, t2
                  xori         s7, t0, 415
                  slli         tp, ra, 12
                  srl          a0, s2, t5
                  ori          sp, s4, -1454
                  slt          s4, zero, s8
                  and          a0, t1, s1
                  xori         t0, s9, -670
                  and          a2, a6, a2
                  and          s10, a0, a7
                  addi         s5, t3, -1147
                  and          s1, tp, a7
                  sltiu        tp, s0, -1540
                  slti         t2, a5, -1834
                  sltiu        s0, a0, 227
                  add          t3, zero, sp
                  srl          s4, ra, s2
                  auipc        s8, 1028374
                  xori         t6, t2, -67
                  srai         t3, s2, 23
                  and          tp, t0, s6
                  ori          s5, s0, -1185
                  and          s1, a3, sp
                  slt          gp, ra, s10
                  add          t3, s4, s0
                  slli         a0, s7, 17
                  la x27, test_done
                  jalr x0, x27, 0
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
.align           2
mtvec_handler:    
                  addi x19, x19, -4
                  sw  x18, (x19)
                  add x18, x19, zero
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x19, x18, zero
                  csrr x10, 0x300 # MSTATUS
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 31
                  bne x10, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x10, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x10, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x10, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x10, x13, ecall_handler
                  li x13, 0x1
                  beq x10, x13, instr_fault_handler
                  li x13, 0x5
                  beq x10, x13, load_fault_handler
                  li x13, 0x7
                  beq x10, x13, store_fault_handler
                  li x13, 0xc
                  beq x10, x13, pt_fault_handler
                  li x13, 0xd
                  beq x10, x13, pt_fault_handler
                  li x13, 0xf
                  beq x10, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x18, x19, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  add x19, x18, zero
                  lw  x18, (x19)
                  addi x19, x19, 4
                  mret

load_fault_handler:
                  add x18, x19, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  add x19, x18, zero
                  lw  x18, (x19)
                  addi x19, x19, 4
                  mret

store_fault_handler:
                  add x18, x19, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  add x19, x18, zero
                  lw  x18, (x19)
                  addi x19, x19, 4
                  mret

ebreak_handler:   
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x18, x19, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  add x19, x18, zero
                  lw  x18, (x19)
                  addi x19, x19, 4
                  mret

illegal_instr_handler:
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x18, x19, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  add x19, x18, zero
                  lw  x18, (x19)
                  addi x19, x19, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x18, x19, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  add x19, x18, zero
                  lw  x18, (x19)
                  addi x19, x19, 4
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
