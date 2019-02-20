// auto-generated by bsg_ascii_to_rom.py from /home/petrisko/bitbucket/pre-alpha-release/bp_be/test/rom/rv64ui_p_sb.bin; do not modify
//
//rv64ui_p_sb.elf:     file format elf64-littleriscv
//
//
//Disassembly of section .text.init:
//
//0000000080000000 <_start>:
//    80000000:	04c0006f          	jal	x0,8000004c <reset_vector>
//
//0000000080000004 <trap_vector>:
//    80000004:	34202f73          	csrrs	x30,mcause,x0
//    80000008:	00800f93          	addi	x31,x0,8
//    8000000c:	03ff0a63          	beq	x30,x31,80000040 <write_tohost>
//    80000010:	00900f93          	addi	x31,x0,9
//    80000014:	03ff0663          	beq	x30,x31,80000040 <write_tohost>
//    80000018:	00b00f93          	addi	x31,x0,11
//    8000001c:	03ff0263          	beq	x30,x31,80000040 <write_tohost>
//    80000020:	80000f17          	auipc	x30,0x80000
//    80000024:	fe0f0f13          	addi	x30,x30,-32 # 0 <_start-0x80000000>
//    80000028:	000f0463          	beq	x30,x0,80000030 <trap_vector+0x2c>
//    8000002c:	000f0067          	jalr	x0,0(x30)
//    80000030:	34202f73          	csrrs	x30,mcause,x0
//    80000034:	000f5463          	bge	x30,x0,8000003c <handle_exception>
//    80000038:	0040006f          	jal	x0,8000003c <handle_exception>
//
//000000008000003c <handle_exception>:
//    8000003c:	539e6e13          	ori	x28,x28,1337
//
//0000000080000040 <write_tohost>:
//    80000040:	00001f17          	auipc	x30,0x1
//    80000044:	fdcf2023          	sw	x28,-64(x30) # 80001000 <tohost>
//    80000048:	ff9ff06f          	jal	x0,80000040 <write_tohost>
//
//000000008000004c <reset_vector>:
//    8000004c:	f1402573          	csrrs	x10,mhartid,x0
//    80000050:	00051063          	bne	x10,x0,80000050 <reset_vector+0x4>
//    80000054:	00000297          	auipc	x5,0x0
//    80000058:	01028293          	addi	x5,x5,16 # 80000064 <reset_vector+0x18>
//    8000005c:	30529073          	csrrw	x0,mtvec,x5
//    80000060:	18005073          	csrrwi	x0,satp,0
//    80000064:	00000297          	auipc	x5,0x0
//    80000068:	01c28293          	addi	x5,x5,28 # 80000080 <reset_vector+0x34>
//    8000006c:	30529073          	csrrw	x0,mtvec,x5
//    80000070:	fff00293          	addi	x5,x0,-1
//    80000074:	3b029073          	csrrw	x0,pmpaddr0,x5
//    80000078:	01f00293          	addi	x5,x0,31
//    8000007c:	3a029073          	csrrw	x0,pmpcfg0,x5
//    80000080:	00000297          	auipc	x5,0x0
//    80000084:	01828293          	addi	x5,x5,24 # 80000098 <reset_vector+0x4c>
//    80000088:	30529073          	csrrw	x0,mtvec,x5
//    8000008c:	30205073          	csrrwi	x0,medeleg,0
//    80000090:	30305073          	csrrwi	x0,mideleg,0
//    80000094:	30405073          	csrrwi	x0,mie,0
//    80000098:	00000e13          	addi	x28,x0,0
//    8000009c:	00000297          	auipc	x5,0x0
//    800000a0:	f6828293          	addi	x5,x5,-152 # 80000004 <trap_vector>
//    800000a4:	30529073          	csrrw	x0,mtvec,x5
//    800000a8:	00100513          	addi	x10,x0,1
//    800000ac:	01f51513          	slli	x10,x10,0x1f
//    800000b0:	02055c63          	bge	x10,x0,800000e8 <reset_vector+0x9c>
//    800000b4:	0ff0000f          	fence	iorw,iorw
//    800000b8:	000c02b7          	lui	x5,0xc0
//    800000bc:	0df2829b          	addiw	x5,x5,223
//    800000c0:	00c29293          	slli	x5,x5,0xc
//    800000c4:	ad028293          	addi	x5,x5,-1328 # bfad0 <_start-0x7ff40530>
//    800000c8:	000e0513          	addi	x10,x28,0
//    800000cc:	000105b7          	lui	x11,0x10
//    800000d0:	fff5859b          	addiw	x11,x11,-1
//    800000d4:	00b57533          	and	x10,x10,x11
//    800000d8:	00a2a023          	sw	x10,0(x5)
//    800000dc:	0ff0000f          	fence	iorw,iorw
//    800000e0:	00100e13          	addi	x28,x0,1
//    800000e4:	00000073          	ecall
//    800000e8:	80000297          	auipc	x5,0x80000
//    800000ec:	f1828293          	addi	x5,x5,-232 # 0 <_start-0x80000000>
//    800000f0:	00028e63          	beq	x5,x0,8000010c <reset_vector+0xc0>
//    800000f4:	10529073          	csrrw	x0,stvec,x5
//    800000f8:	0000b2b7          	lui	x5,0xb
//    800000fc:	1092829b          	addiw	x5,x5,265
//    80000100:	30229073          	csrrw	x0,medeleg,x5
//    80000104:	30202373          	csrrs	x6,medeleg,x0
//    80000108:	f2629ae3          	bne	x5,x6,8000003c <handle_exception>
//    8000010c:	30005073          	csrrwi	x0,mstatus,0
//    80000110:	00000297          	auipc	x5,0x0
//    80000114:	01428293          	addi	x5,x5,20 # 80000124 <test_2>
//    80000118:	34129073          	csrrw	x0,mepc,x5
//    8000011c:	f1402573          	csrrs	x10,mhartid,x0
//    80000120:	30200073          	mret
//
//0000000080000124 <test_2>:
//    80000124:	00002097          	auipc	x1,0x2
//    80000128:	edc08093          	addi	x1,x1,-292 # 80002000 <begin_signature>
//    8000012c:	faa00113          	addi	x2,x0,-86
//    80000130:	00208023          	sb	x2,0(x1)
//    80000134:	00008183          	lb	x3,0(x1)
//    80000138:	faa00e93          	addi	x29,x0,-86
//    8000013c:	00200e13          	addi	x28,x0,2
//    80000140:	3dd19c63          	bne	x3,x29,80000518 <fail>
//
//0000000080000144 <test_3>:
//    80000144:	00002097          	auipc	x1,0x2
//    80000148:	ebc08093          	addi	x1,x1,-324 # 80002000 <begin_signature>
//    8000014c:	00000113          	addi	x2,x0,0
//    80000150:	002080a3          	sb	x2,1(x1)
//    80000154:	00108183          	lb	x3,1(x1)
//    80000158:	00000e93          	addi	x29,x0,0
//    8000015c:	00300e13          	addi	x28,x0,3
//    80000160:	3bd19c63          	bne	x3,x29,80000518 <fail>
//
//0000000080000164 <test_4>:
//    80000164:	00002097          	auipc	x1,0x2
//    80000168:	e9c08093          	addi	x1,x1,-356 # 80002000 <begin_signature>
//    8000016c:	fffff137          	lui	x2,0xfffff
//    80000170:	fa01011b          	addiw	x2,x2,-96
//    80000174:	00208123          	sb	x2,2(x1)
//    80000178:	00209183          	lh	x3,2(x1)
//    8000017c:	fffffeb7          	lui	x29,0xfffff
//    80000180:	fa0e8e9b          	addiw	x29,x29,-96
//    80000184:	00400e13          	addi	x28,x0,4
//    80000188:	39d19863          	bne	x3,x29,80000518 <fail>
//
//000000008000018c <test_5>:
//    8000018c:	00002097          	auipc	x1,0x2
//    80000190:	e7408093          	addi	x1,x1,-396 # 80002000 <begin_signature>
//    80000194:	00a00113          	addi	x2,x0,10
//    80000198:	002081a3          	sb	x2,3(x1)
//    8000019c:	00308183          	lb	x3,3(x1)
//    800001a0:	00a00e93          	addi	x29,x0,10
//    800001a4:	00500e13          	addi	x28,x0,5
//    800001a8:	37d19863          	bne	x3,x29,80000518 <fail>
//
//00000000800001ac <test_6>:
//    800001ac:	00002097          	auipc	x1,0x2
//    800001b0:	e5b08093          	addi	x1,x1,-421 # 80002007 <tdat8>
//    800001b4:	faa00113          	addi	x2,x0,-86
//    800001b8:	fe208ea3          	sb	x2,-3(x1)
//    800001bc:	ffd08183          	lb	x3,-3(x1)
//    800001c0:	faa00e93          	addi	x29,x0,-86
//    800001c4:	00600e13          	addi	x28,x0,6
//    800001c8:	35d19863          	bne	x3,x29,80000518 <fail>
//
//00000000800001cc <test_7>:
//    800001cc:	00002097          	auipc	x1,0x2
//    800001d0:	e3b08093          	addi	x1,x1,-453 # 80002007 <tdat8>
//    800001d4:	00000113          	addi	x2,x0,0
//    800001d8:	fe208f23          	sb	x2,-2(x1)
//    800001dc:	ffe08183          	lb	x3,-2(x1)
//    800001e0:	00000e93          	addi	x29,x0,0
//    800001e4:	00700e13          	addi	x28,x0,7
//    800001e8:	33d19863          	bne	x3,x29,80000518 <fail>
//
//00000000800001ec <test_8>:
//    800001ec:	00002097          	auipc	x1,0x2
//    800001f0:	e1b08093          	addi	x1,x1,-485 # 80002007 <tdat8>
//    800001f4:	fa000113          	addi	x2,x0,-96
//    800001f8:	fe208fa3          	sb	x2,-1(x1)
//    800001fc:	fff08183          	lb	x3,-1(x1)
//    80000200:	fa000e93          	addi	x29,x0,-96
//    80000204:	00800e13          	addi	x28,x0,8
//    80000208:	31d19863          	bne	x3,x29,80000518 <fail>
//
//000000008000020c <test_9>:
//    8000020c:	00002097          	auipc	x1,0x2
//    80000210:	dfb08093          	addi	x1,x1,-517 # 80002007 <tdat8>
//    80000214:	00a00113          	addi	x2,x0,10
//    80000218:	00208023          	sb	x2,0(x1)
//    8000021c:	00008183          	lb	x3,0(x1)
//    80000220:	00a00e93          	addi	x29,x0,10
//    80000224:	00900e13          	addi	x28,x0,9
//    80000228:	2fd19863          	bne	x3,x29,80000518 <fail>
//
//000000008000022c <test_10>:
//    8000022c:	00002097          	auipc	x1,0x2
//    80000230:	ddc08093          	addi	x1,x1,-548 # 80002008 <tdat9>
//    80000234:	12345137          	lui	x2,0x12345
//    80000238:	6781011b          	addiw	x2,x2,1656
//    8000023c:	fe008213          	addi	x4,x1,-32
//    80000240:	02220023          	sb	x2,32(x4) # 20 <_start-0x7fffffe0>
//    80000244:	00008183          	lb	x3,0(x1)
//    80000248:	07800e93          	addi	x29,x0,120
//    8000024c:	00a00e13          	addi	x28,x0,10
//    80000250:	2dd19463          	bne	x3,x29,80000518 <fail>
//
//0000000080000254 <test_11>:
//    80000254:	00002097          	auipc	x1,0x2
//    80000258:	db408093          	addi	x1,x1,-588 # 80002008 <tdat9>
//    8000025c:	00003137          	lui	x2,0x3
//    80000260:	0981011b          	addiw	x2,x2,152
//    80000264:	ffa08093          	addi	x1,x1,-6
//    80000268:	002083a3          	sb	x2,7(x1)
//    8000026c:	00002217          	auipc	x4,0x2
//    80000270:	d9d20213          	addi	x4,x4,-611 # 80002009 <tdat10>
//    80000274:	00020183          	lb	x3,0(x4) # 0 <_start-0x80000000>
//    80000278:	f9800e93          	addi	x29,x0,-104
//    8000027c:	00b00e13          	addi	x28,x0,11
//    80000280:	29d19c63          	bne	x3,x29,80000518 <fail>
//
//0000000080000284 <test_12>:
//    80000284:	00c00e13          	addi	x28,x0,12
//    80000288:	00000213          	addi	x4,x0,0
//    8000028c:	fdd00093          	addi	x1,x0,-35
//    80000290:	00002117          	auipc	x2,0x2
//    80000294:	d7010113          	addi	x2,x2,-656 # 80002000 <begin_signature>
//    80000298:	00110023          	sb	x1,0(x2)
//    8000029c:	00010183          	lb	x3,0(x2)
//    800002a0:	fdd00e93          	addi	x29,x0,-35
//    800002a4:	27d19a63          	bne	x3,x29,80000518 <fail>
//    800002a8:	00120213          	addi	x4,x4,1 # 1 <_start-0x7fffffff>
//    800002ac:	00200293          	addi	x5,x0,2
//    800002b0:	fc521ee3          	bne	x4,x5,8000028c <test_12+0x8>
//
//00000000800002b4 <test_13>:
//    800002b4:	00d00e13          	addi	x28,x0,13
//    800002b8:	00000213          	addi	x4,x0,0
//    800002bc:	fcd00093          	addi	x1,x0,-51
//    800002c0:	00002117          	auipc	x2,0x2
//    800002c4:	d4010113          	addi	x2,x2,-704 # 80002000 <begin_signature>
//    800002c8:	00000013          	addi	x0,x0,0
//    800002cc:	001100a3          	sb	x1,1(x2)
//    800002d0:	00110183          	lb	x3,1(x2)
//    800002d4:	fcd00e93          	addi	x29,x0,-51
//    800002d8:	25d19063          	bne	x3,x29,80000518 <fail>
//    800002dc:	00120213          	addi	x4,x4,1 # 1 <_start-0x7fffffff>
//    800002e0:	00200293          	addi	x5,x0,2
//    800002e4:	fc521ce3          	bne	x4,x5,800002bc <test_13+0x8>
//
//00000000800002e8 <test_14>:
//    800002e8:	00e00e13          	addi	x28,x0,14
//    800002ec:	00000213          	addi	x4,x0,0
//    800002f0:	fcc00093          	addi	x1,x0,-52
//    800002f4:	00002117          	auipc	x2,0x2
//    800002f8:	d0c10113          	addi	x2,x2,-756 # 80002000 <begin_signature>
//    800002fc:	00000013          	addi	x0,x0,0
//    80000300:	00000013          	addi	x0,x0,0
//    80000304:	00110123          	sb	x1,2(x2)
//    80000308:	00210183          	lb	x3,2(x2)
//    8000030c:	fcc00e93          	addi	x29,x0,-52
//    80000310:	21d19463          	bne	x3,x29,80000518 <fail>
//    80000314:	00120213          	addi	x4,x4,1 # 1 <_start-0x7fffffff>
//    80000318:	00200293          	addi	x5,x0,2
//    8000031c:	fc521ae3          	bne	x4,x5,800002f0 <test_14+0x8>
//
//0000000080000320 <test_15>:
//    80000320:	00f00e13          	addi	x28,x0,15
//    80000324:	00000213          	addi	x4,x0,0
//    80000328:	fbc00093          	addi	x1,x0,-68
//    8000032c:	00000013          	addi	x0,x0,0
//    80000330:	00002117          	auipc	x2,0x2
//    80000334:	cd010113          	addi	x2,x2,-816 # 80002000 <begin_signature>
//    80000338:	001101a3          	sb	x1,3(x2)
//    8000033c:	00310183          	lb	x3,3(x2)
//    80000340:	fbc00e93          	addi	x29,x0,-68
//    80000344:	1dd19a63          	bne	x3,x29,80000518 <fail>
//    80000348:	00120213          	addi	x4,x4,1 # 1 <_start-0x7fffffff>
//    8000034c:	00200293          	addi	x5,x0,2
//    80000350:	fc521ce3          	bne	x4,x5,80000328 <test_15+0x8>
//
//0000000080000354 <test_16>:
//    80000354:	01000e13          	addi	x28,x0,16
//    80000358:	00000213          	addi	x4,x0,0
//    8000035c:	fbb00093          	addi	x1,x0,-69
//    80000360:	00000013          	addi	x0,x0,0
//    80000364:	00002117          	auipc	x2,0x2
//    80000368:	c9c10113          	addi	x2,x2,-868 # 80002000 <begin_signature>
//    8000036c:	00000013          	addi	x0,x0,0
//    80000370:	00110223          	sb	x1,4(x2)
//    80000374:	00410183          	lb	x3,4(x2)
//    80000378:	fbb00e93          	addi	x29,x0,-69
//    8000037c:	19d19e63          	bne	x3,x29,80000518 <fail>
//    80000380:	00120213          	addi	x4,x4,1 # 1 <_start-0x7fffffff>
//    80000384:	00200293          	addi	x5,x0,2
//    80000388:	fc521ae3          	bne	x4,x5,8000035c <test_16+0x8>
//
//000000008000038c <test_17>:
//    8000038c:	01100e13          	addi	x28,x0,17
//    80000390:	00000213          	addi	x4,x0,0
//    80000394:	fab00093          	addi	x1,x0,-85
//    80000398:	00000013          	addi	x0,x0,0
//    8000039c:	00000013          	addi	x0,x0,0
//    800003a0:	00002117          	auipc	x2,0x2
//    800003a4:	c6010113          	addi	x2,x2,-928 # 80002000 <begin_signature>
//    800003a8:	001102a3          	sb	x1,5(x2)
//    800003ac:	00510183          	lb	x3,5(x2)
//    800003b0:	fab00e93          	addi	x29,x0,-85
//    800003b4:	17d19263          	bne	x3,x29,80000518 <fail>
//    800003b8:	00120213          	addi	x4,x4,1 # 1 <_start-0x7fffffff>
//    800003bc:	00200293          	addi	x5,x0,2
//    800003c0:	fc521ae3          	bne	x4,x5,80000394 <test_17+0x8>
//
//00000000800003c4 <test_18>:
//    800003c4:	01200e13          	addi	x28,x0,18
//    800003c8:	00000213          	addi	x4,x0,0
//    800003cc:	00002117          	auipc	x2,0x2
//    800003d0:	c3410113          	addi	x2,x2,-972 # 80002000 <begin_signature>
//    800003d4:	03300093          	addi	x1,x0,51
//    800003d8:	00110023          	sb	x1,0(x2)
//    800003dc:	00010183          	lb	x3,0(x2)
//    800003e0:	03300e93          	addi	x29,x0,51
//    800003e4:	13d19a63          	bne	x3,x29,80000518 <fail>
//    800003e8:	00120213          	addi	x4,x4,1 # 1 <_start-0x7fffffff>
//    800003ec:	00200293          	addi	x5,x0,2
//    800003f0:	fc521ee3          	bne	x4,x5,800003cc <test_18+0x8>
//
//00000000800003f4 <test_19>:
//    800003f4:	01300e13          	addi	x28,x0,19
//    800003f8:	00000213          	addi	x4,x0,0
//    800003fc:	00002117          	auipc	x2,0x2
//    80000400:	c0410113          	addi	x2,x2,-1020 # 80002000 <begin_signature>
//    80000404:	02300093          	addi	x1,x0,35
//    80000408:	00000013          	addi	x0,x0,0
//    8000040c:	001100a3          	sb	x1,1(x2)
//    80000410:	00110183          	lb	x3,1(x2)
//    80000414:	02300e93          	addi	x29,x0,35
//    80000418:	11d19063          	bne	x3,x29,80000518 <fail>
//    8000041c:	00120213          	addi	x4,x4,1 # 1 <_start-0x7fffffff>
//    80000420:	00200293          	addi	x5,x0,2
//    80000424:	fc521ce3          	bne	x4,x5,800003fc <test_19+0x8>
//
//0000000080000428 <test_20>:
//    80000428:	01400e13          	addi	x28,x0,20
//    8000042c:	00000213          	addi	x4,x0,0
//    80000430:	00002117          	auipc	x2,0x2
//    80000434:	bd010113          	addi	x2,x2,-1072 # 80002000 <begin_signature>
//    80000438:	02200093          	addi	x1,x0,34
//    8000043c:	00000013          	addi	x0,x0,0
//    80000440:	00000013          	addi	x0,x0,0
//    80000444:	00110123          	sb	x1,2(x2)
//    80000448:	00210183          	lb	x3,2(x2)
//    8000044c:	02200e93          	addi	x29,x0,34
//    80000450:	0dd19463          	bne	x3,x29,80000518 <fail>
//    80000454:	00120213          	addi	x4,x4,1 # 1 <_start-0x7fffffff>
//    80000458:	00200293          	addi	x5,x0,2
//    8000045c:	fc521ae3          	bne	x4,x5,80000430 <test_20+0x8>
//
//0000000080000460 <test_21>:
//    80000460:	01500e13          	addi	x28,x0,21
//    80000464:	00000213          	addi	x4,x0,0
//    80000468:	00002117          	auipc	x2,0x2
//    8000046c:	b9810113          	addi	x2,x2,-1128 # 80002000 <begin_signature>
//    80000470:	00000013          	addi	x0,x0,0
//    80000474:	01200093          	addi	x1,x0,18
//    80000478:	001101a3          	sb	x1,3(x2)
//    8000047c:	00310183          	lb	x3,3(x2)
//    80000480:	01200e93          	addi	x29,x0,18
//    80000484:	09d19a63          	bne	x3,x29,80000518 <fail>
//    80000488:	00120213          	addi	x4,x4,1 # 1 <_start-0x7fffffff>
//    8000048c:	00200293          	addi	x5,x0,2
//    80000490:	fc521ce3          	bne	x4,x5,80000468 <test_21+0x8>
//
//0000000080000494 <test_22>:
//    80000494:	01600e13          	addi	x28,x0,22
//    80000498:	00000213          	addi	x4,x0,0
//    8000049c:	00002117          	auipc	x2,0x2
//    800004a0:	b6410113          	addi	x2,x2,-1180 # 80002000 <begin_signature>
//    800004a4:	00000013          	addi	x0,x0,0
//    800004a8:	01100093          	addi	x1,x0,17
//    800004ac:	00000013          	addi	x0,x0,0
//    800004b0:	00110223          	sb	x1,4(x2)
//    800004b4:	00410183          	lb	x3,4(x2)
//    800004b8:	01100e93          	addi	x29,x0,17
//    800004bc:	05d19e63          	bne	x3,x29,80000518 <fail>
//    800004c0:	00120213          	addi	x4,x4,1 # 1 <_start-0x7fffffff>
//    800004c4:	00200293          	addi	x5,x0,2
//    800004c8:	fc521ae3          	bne	x4,x5,8000049c <test_22+0x8>
//
//00000000800004cc <test_23>:
//    800004cc:	01700e13          	addi	x28,x0,23
//    800004d0:	00000213          	addi	x4,x0,0
//    800004d4:	00002117          	auipc	x2,0x2
//    800004d8:	b2c10113          	addi	x2,x2,-1236 # 80002000 <begin_signature>
//    800004dc:	00000013          	addi	x0,x0,0
//    800004e0:	00000013          	addi	x0,x0,0
//    800004e4:	00100093          	addi	x1,x0,1
//    800004e8:	001102a3          	sb	x1,5(x2)
//    800004ec:	00510183          	lb	x3,5(x2)
//    800004f0:	00100e93          	addi	x29,x0,1
//    800004f4:	03d19263          	bne	x3,x29,80000518 <fail>
//    800004f8:	00120213          	addi	x4,x4,1 # 1 <_start-0x7fffffff>
//    800004fc:	00200293          	addi	x5,x0,2
//    80000500:	fc521ae3          	bne	x4,x5,800004d4 <test_23+0x8>
//    80000504:	0ef00513          	addi	x10,x0,239
//    80000508:	00002597          	auipc	x11,0x2
//    8000050c:	af858593          	addi	x11,x11,-1288 # 80002000 <begin_signature>
//    80000510:	00a581a3          	sb	x10,3(x11)
//    80000514:	05c01263          	bne	x0,x28,80000558 <pass>
//
//0000000080000518 <fail>:
//    80000518:	0ff0000f          	fence	iorw,iorw
//    8000051c:	000c0337          	lui	x6,0xc0
//    80000520:	0df3031b          	addiw	x6,x6,223
//    80000524:	00c31313          	slli	x6,x6,0xc
//    80000528:	ad030313          	addi	x6,x6,-1328 # bfad0 <_start-0x7ff40530>
//    8000052c:	000e0513          	addi	x10,x28,0
//    80000530:	000105b7          	lui	x11,0x10
//    80000534:	fff5859b          	addiw	x11,x11,-1
//    80000538:	01059593          	slli	x11,x11,0x10
//    8000053c:	00b56533          	or	x10,x10,x11
//    80000540:	00a32023          	sw	x10,0(x6)
//    80000544:	0ff0000f          	fence	iorw,iorw
//    80000548:	000e0063          	beq	x28,x0,80000548 <fail+0x30>
//    8000054c:	001e1e13          	slli	x28,x28,0x1
//    80000550:	001e6e13          	ori	x28,x28,1
//    80000554:	00000073          	ecall
//
//0000000080000558 <pass>:
//    80000558:	0ff0000f          	fence	iorw,iorw
//    8000055c:	000c02b7          	lui	x5,0xc0
//    80000560:	0df2829b          	addiw	x5,x5,223
//    80000564:	00c29293          	slli	x5,x5,0xc
//    80000568:	ad028293          	addi	x5,x5,-1328 # bfad0 <_start-0x7ff40530>
//    8000056c:	000e0513          	addi	x10,x28,0
//    80000570:	000105b7          	lui	x11,0x10
//    80000574:	fff5859b          	addiw	x11,x11,-1
//    80000578:	00b57533          	and	x10,x10,x11
//    8000057c:	00a2a023          	sw	x10,0(x5)
//    80000580:	0ff0000f          	fence	iorw,iorw
//    80000584:	00100e13          	addi	x28,x0,1
//    80000588:	00000073          	ecall
//    8000058c:	c0001073          	unimp
//	...
//
//Disassembly of section .tohost:
//
//0000000080001000 <tohost>:
//	...
//
//0000000080001040 <fromhost>:
//	...
//
//Disassembly of section .data:
//
//0000000080002000 <begin_signature>:
//    80002000:	          	jal	x31,800006fe <pass+0x1a6>
//
//0000000080002001 <tdat2>:
//    80002001:	          	jal	x31,800006ff <pass+0x1a7>
//
//0000000080002002 <tdat3>:
//    80002002:	          	jal	x31,80000700 <pass+0x1a8>
//
//0000000080002003 <tdat4>:
//    80002003:	          	jal	x31,80000701 <pass+0x1a9>
//
//0000000080002004 <tdat5>:
//    80002004:	          	jal	x31,80000702 <pass+0x1aa>
//
//0000000080002005 <tdat6>:
//    80002005:	          	jal	x31,80000703 <pass+0x1ab>
//
//0000000080002006 <tdat7>:
//    80002006:	          	jal	x31,80000704 <pass+0x1ac>
//
//0000000080002007 <tdat8>:
//    80002007:	          	jal	x31,80100015 <_end+0xfe005>
//
//0000000080002008 <tdat9>:
//    80002008:	          	jal	x31,80010008 <_end+0xdff8>
//
//0000000080002009 <tdat10>:
//    80002009:	000000ef          	jal	x1,80002009 <tdat10>
//    8000200d:	0000                	unimp
//	...
module bp_boot_rom #(parameter width_p=-1, addr_width_p=-1)
(input  [addr_width_p-1:0] addr_i
,output logic [width_p-1:0]      data_o
);
always_comb case(addr_i)
         0: data_o = width_p ' (512'b01010011100111100110111000010011000000000100000000000000011011110000000000001111010101000110001100110100001000000010111101110011000000000000111100000000011001110000000000001111000001000110001111111110000011110000111100010011100000000000000000001111000101110000001111111111000000100110001100000000101100000000111110010011000000111111111100000110011000110000000010010000000011111001001100000011111111110000101001100011000000001000000000001111100100110011010000100000001011110111001100000100110000000000000001101111); // 0x539E6E130040006F000F546334202F73000F0067000F0463FE0F0F1380000F1703FF026300B00F9303FF066300900F9303FF0A6300800F9334202F7304C0006F
         1: data_o = width_p ' (512'b00111010000000101001000001110011000000011111000000000010100100110011101100000010100100000111001111111111111100000000001010010011001100000101001010010000011100110000000111000010100000101001001100000000000000000000001010010111000110000000000001010000011100110011000001010010100100000111001100000001000000101000001010010011000000000000000000000010100101110000000000000101000100000110001111110001010000000010010101110011111111111001111111110000011011111111110111001111001000000010001100000000000000000001111100010111); // 0x3A02907301F002933B029073FFF002933052907301C28293000002971800507330529073010282930000029700051063F1402573FF9FF06FFDCF202300001F17
         2: data_o = width_p ' (512'b00001101111100101000001010011011000000000000110000000010101101110000111111110000000000000000111100000010000001010101110001100011000000011111010100010101000100110000000000010000000001010001001100110000010100101001000001110011111101101000001010000010100100110000000000000000000000101001011100000000000000000000111000010011001100000100000001010000011100110011000000110000010100000111001100110000001000000101000001110011001100000101001010010000011100110000000110000010100000101001001100000000000000000000001010010111); // 0x0DF2829B000C02B70FF0000F02055C6301F515130010051330529073F68282930000029700000E13304050733030507330205073305290730182829300000297
         3: data_o = width_p ' (512'b00010000100100101000001010011011000000000000000010110010101101110001000001010010100100000111001100000000000000101000111001100011111100011000001010000010100100111000000000000000000000101001011100000000000000000000000001110011000000000001000000001110000100110000111111110000000000000000111100000000101000101010000000100011000000001011010101110101001100111111111111110101100001011001101100000000000000010000010110110111000000000000111000000101000100111010110100000010100000101001001100000000110000101001001010010011); // 0x1092829B0000B2B71052907300028E63F1828293800002970000007300100E130FF0000F00A2A02300B57533FFF5859B000105B7000E0513AD02829300C29293
         4: data_o = width_p ' (512'b00000000001000000000111000010011111110101010000000001110100100110000000000000000100000011000001100000000001000001000000000100011111110101010000000000001000100111110110111000000100000001001001100000000000000000010000010010111001100000010000000000000011100111111000101000000001001010111001100110100000100101001000001110011000000010100001010000010100100110000000000000000000000101001011100110000000000000101000001110011111100100110001010011010111000110011000000100000001000110111001100110000001000101001000001110011); // 0x00200E13FAA00E930000818300208023FAA00113EDC080930000209730200073F140257334129073014282930000029730005073F2629AE33020237330229073
         5: data_o = width_p ' (512'b11111111111111111111111010110111000000000010000010010001100000110000000000100000100000010010001111111010000000010000000100011011111111111111111111110001001101111110100111000000100000001001001100000000000000000010000010010111001110111101000110011100011000110000000000110000000011100001001100000000000000000000111010010011000000000001000010000001100000110000000000100000100000001010001100000000000000000000000100010011111010111100000010000000100100110000000000000000001000001001011100111101110100011001110001100011); // 0xFFFFFEB70020918300208123FA01011BFFFFF137E9C08093000020973BD19C6300300E1300000E9300108183002080A300000113EBC08093000020973DD19C63
         6: data_o = width_p ' (512'b11111111110100001000000110000011111111100010000010001110101000111111101010100000000000010001001111100101101100001000000010010011000000000000000000100000100101110011011111010001100110000110001100000000010100000000111000010011000000001010000000001110100100110000000000110000100000011000001100000000001000001000000110100011000000001010000000000001000100111110011101000000100000001001001100000000000000000010000010010111001110011101000110011000011000110000000001000000000011100001001111111010000011101000111010011011); // 0xFFD08183FE208EA3FAA00113E5B080930000209737D1986300500E1300A00E9300308183002081A300A00113E74080930000209739D1986300400E13FA0E8E9B
         7: data_o = width_p ' (512'b11111111111100001000000110000011111111100010000010001111101000111111101000000000000000010001001111100001101100001000000010010011000000000000000000100000100101110011001111010001100110000110001100000000011100000000111000010011000000000000000000001110100100111111111111100000100000011000001111111110001000001000111100100011000000000000000000000001000100111110001110110000100000001001001100000000000000000010000010010111001101011101000110011000011000110000000001100000000011100001001111111010101000000000111010010011); // 0xFFF08183FE208FA3FA000113E1B080930000209733D1986300700E1300000E93FFE08183FE208F2300000113E3B080930000209735D1986300600E13FAA00E93
         8: data_o = width_p ' (512'b11111110000000001000001000010011011001111000000100000001000110110001001000110100010100010011011111011101110000001000000010010011000000000000000000100000100101110010111111010001100110000110001100000000100100000000111000010011000000001010000000001110100100110000000000000000100000011000001100000000001000001000000000100011000000001010000000000001000100111101111110110000100000001001001100000000000000000010000010010111001100011101000110011000011000110000000010000000000011100001001111111010000000000000111010010011); // 0xFE0082136781011B12345137DDC08093000020972FD1986300900E1300A00E93000081830020802300A00113DFB080930000209731D1986300800E13FA000E93
         9: data_o = width_p ' (512'b00000000101100000000111000010011111110011000000000001110100100110000000000000010000000011000001111011001110100100000001000010011000000000000000000100010000101110000000000100000100000111010001111111111101000001000000010010011000010011000000100000001000110110000000000000000001100010011011111011011010000001000000010010011000000000000000000100000100101110010110111010001100101000110001100000000101000000000111000010011000001111000000000001110100100110000000000000000100000011000001100000010001000100000000000100011); // 0x00B00E13F9800E9300020183D9D2021300002217002083A3FFA080930981011B00003137DB408093000020972DD1946300A00E1307800E930000818302220023
        10: data_o = width_p ' (512'b11111100110100000000000010010011000000000000000000000010000100110000000011010000000011100001001111111100010100100001111011100011000000000010000000000010100100110000000000010010000000100001001100100111110100011001101001100011111111011101000000001110100100110000000000000001000000011000001100000000000100010000000000100011110101110000000100000001000100110000000000000000001000010001011111111101110100000000000010010011000000000000000000000010000100110000000011000000000011100001001100101001110100011001110001100011); // 0xFCD000930000021300D00E13FC521EE3002002930012021327D19A63FDD00E930001018300110023D701011300002117FDD000930000021300C00E1329D19C63
        11: data_o = width_p ' (512'b00000000000000000000000000010011110100001100000100000001000100110000000000000000001000010001011111111100110000000000000010010011000000000000000000000010000100110000000011100000000011100001001111111100010100100001110011100011000000000010000000000010100100110000000000010010000000100001001100100101110100011001000001100011111111001101000000001110100100110000000000010001000000011000001100000000000100010000000010100011000000000000000000000000000100111101010000000001000000010001001100000000000000000010000100010111); // 0x00000013D0C1011300002117FCC000930000021300E00E13FC521CE3002002930012021325D19063FCD00E9300110183001100A300000013D401011300002117
        12: data_o = width_p ' (512'b00000000001100010000000110000011000000000001000100000001101000111100110100000001000000010001001100000000000000000010000100010111000000000000000000000000000100111111101111000000000000001001001100000000000000000000001000010011000000001111000000001110000100111111110001010010000110101110001100000000001000000000001010010011000000000001001000000010000100110010000111010001100101000110001111111100110000000000111010010011000000000010000100000001100000110000000000010001000000010010001100000000000000000000000000010011); // 0x00310183001101A3CD0101130000211700000013FBC000930000021300F00E13FC521AE3002002930012021321D19463FCC00E93002101830011012300000013
        13: data_o = width_p ' (512'b00011001110100011001111001100011111110111011000000001110100100110000000001000001000000011000001100000000000100010000001000100011000000000000000000000000000100111100100111000001000000010001001100000000000000000010000100010111000000000000000000000000000100111111101110110000000000001001001100000000000000000000001000010011000000010000000000001110000100111111110001010010000111001110001100000000001000000000001010010011000000000001001000000010000100110001110111010001100110100110001111111011110000000000111010010011); // 0x19D19E63FBB00E93004101830011022300000013C9C101130000211700000013FBB000930000021301000E13FC521CE300200293001202131DD19A63FBC00E93
        14: data_o = width_p ' (512'b00000000001000000000001010010011000000000001001000000010000100110001011111010001100100100110001111111010101100000000111010010011000000000101000100000001100000110000000000010001000000101010001111000110000000010000000100010011000000000000000000100001000101110000000000000000000000000001001100000000000000000000000000010011111110101011000000000000100100110000000000000000000000100001001100000001000100000000111000010011111111000101001000011010111000110000000000100000000000101001001100000000000100100000001000010011); // 0x002002930012021317D19263FAB00E9300510183001102A3C6010113000021170000001300000013FAB000930000021301100E13FC521AE30020029300120213
        15: data_o = width_p ' (512'b00000000000000000010000100010111000000000000000000000010000100110000000100110000000011100001001111111100010100100001111011100011000000000010000000000010100100110000000000010010000000100001001100010011110100011001101001100011000000110011000000001110100100110000000000000001000000011000001100000000000100010000000000100011000000110011000000000000100100111100001101000001000000010001001100000000000000000010000100010111000000000000000000000010000100110000000100100000000011100001001111111100010100100001101011100011); // 0x000021170000021301300E13FC521EE3002002930012021313D19A6303300E93000101830011002303300093C3410113000021170000021301200E13FC521AE3
        16: data_o = width_p ' (512'b00000000000000000000000000010011000000100010000000000000100100111011110100000001000000010001001100000000000000000010000100010111000000000000000000000010000100110000000101000000000011100001001111111100010100100001110011100011000000000010000000000010100100110000000000010010000000100001001100010001110100011001000001100011000000100011000000001110100100110000000000010001000000011000001100000000000100010000000010100011000000000000000000000000000100110000001000110000000000001001001111000000010000010000000100010011); // 0x0000001302200093BD010113000021170000021301400E13FC521CE3002002930012021311D1906302300E9300110183001100A30000001302300093C0410113
        17: data_o = width_p ' (512'b00000000001100010000000110000011000000000001000100000001101000110000000100100000000000001001001100000000000000000000000000010011101110011000000100000001000100110000000000000000001000010001011100000000000000000000001000010011000000010101000000001110000100111111110001010010000110101110001100000000001000000000001010010011000000000001001000000010000100110000110111010001100101000110001100000010001000000000111010010011000000000010000100000001100000110000000000010001000000010010001100000000000000000000000000010011); // 0x00310183001101A30120009300000013B9810113000021170000021301500E13FC521AE300200293001202130DD1946302200E93002101830011012300000013
        18: data_o = width_p ' (512'b00000101110100011001111001100011000000010001000000001110100100110000000001000001000000011000001100000000000100010000001000100011000000000000000000000000000100110000000100010000000000001001001100000000000000000000000000010011101101100100000100000001000100110000000000000000001000010001011100000000000000000000001000010011000000010110000000001110000100111111110001010010000111001110001100000000001000000000001010010011000000000001001000000010000100110000100111010001100110100110001100000001001000000000111010010011); // 0x05D19E6301100E930041018300110223000000130110009300000013B6410113000021170000021301600E13FC521CE3002002930012021309D19A6301200E93
        19: data_o = width_p ' (512'b00000000001000000000001010010011000000000001001000000010000100110000001111010001100100100110001100000000000100000000111010010011000000000101000100000001100000110000000000010001000000101010001100000000000100000000000010010011000000000000000000000000000100110000000000000000000000000001001110110010110000010000000100010011000000000000000000100001000101110000000000000000000000100001001100000001011100000000111000010011111111000101001000011010111000110000000000100000000000101001001100000000000100100000001000010011); // 0x002002930012021303D1926300100E9300510183001102A3001000930000001300000013B2C10113000021170000021301700E13FC521AE30020029300120213
        20: data_o = width_p ' (512'b00000000101101010110010100110011000000010000010110010101100100111111111111110101100001011001101100000000000000010000010110110111000000000000111000000101000100111010110100000011000000110001001100000000110000110001001100010011000011011111001100000011000110110000000000001100000000110011011100001111111100000000000000001111000001011100000000010010011000110000000010100101100000011010001110101111100001011000010110010011000000000000000000100101100101110000111011110000000001010001001111111100010100100001101011100011); // 0x00B5653301059593FFF5859B000105B7000E0513AD03031300C313130DF3031B000C03370FF0000F05C0126300A581A3AF858593000025970EF00513FC521AE3
        21: data_o = width_p ' (512'b00000000101000101010000000100011000000001011010101110101001100111111111111110101100001011001101100000000000000010000010110110111000000000000111000000101000100111010110100000010100000101001001100000000110000101001001010010011000011011111001010000010100110110000000000001100000000101011011100001111111100000000000000001111000000000000000000000000011100110000000000011110011011100001001100000000000111100001111000010011000000000000111000000000011000110000111111110000000000000000111100000000101000110010000000100011); // 0x00A2A02300B57533FFF5859B000105B7000E0513AD02829300C292930DF2829B000C02B70FF0000F00000073001E6E13001E1E13000E00630FF0000F00A32023
        22: data_o = width_p ' (512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000001000001110011000000000000000000000000011100110000000000010000000011100001001100001111111100000000000000001111); // 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C00010730000007300100E130FF0000F
       128: data_o = width_p ' (512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011101111111011111110111111101111111011111110111111101111111011111110111111101111); // 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000EFEFEFEFEFEFEFEFEFEF
   default: data_o = { width_p { 1'b0 } };
endcase
endmodule
