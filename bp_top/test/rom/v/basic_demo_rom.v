// auto-generated by bsg_ascii_to_rom.py from /home/petrisko/bitbucket/pre-alpha-release/bp_top/test/rom/basic_demo.bin; do not modify
//
//basic_demo.elf:     file format elf64-littleriscv
//
//
//Disassembly of section .text.init:
//
//0000000080000124 <_start>:
//    80000124:	00090137          	lui	x2,0x90
//    80000128:	ffd1011b          	addiw	x2,x2,-3
//    8000012c:	00c11113          	slli	x2,x2,0xc
//    80000130:	ff010113          	addi	x2,x2,-16 # 8fff0 <_start-0x7ff70134>
//    80000134:	f14020f3          	csrrs	x1,mhartid,x0
//    80000138:	00c09093          	slli	x1,x1,0xc
//    8000013c:	40110133          	sub	x2,x2,x1
//    80000140:	00000093          	addi	x1,x0,0
//    80000144:	00000193          	addi	x3,x0,0
//    80000148:	00000213          	addi	x4,x0,0
//    8000014c:	00000293          	addi	x5,x0,0
//    80000150:	00000313          	addi	x6,x0,0
//    80000154:	00000393          	addi	x7,x0,0
//    80000158:	00000413          	addi	x8,x0,0
//    8000015c:	00000493          	addi	x9,x0,0
//    80000160:	00000513          	addi	x10,x0,0
//    80000164:	00000593          	addi	x11,x0,0
//    80000168:	00000613          	addi	x12,x0,0
//    8000016c:	00000693          	addi	x13,x0,0
//    80000170:	00000713          	addi	x14,x0,0
//    80000174:	00000793          	addi	x15,x0,0
//    80000178:	00000813          	addi	x16,x0,0
//    8000017c:	00000893          	addi	x17,x0,0
//    80000180:	00000913          	addi	x18,x0,0
//    80000184:	00000993          	addi	x19,x0,0
//    80000188:	00000a13          	addi	x20,x0,0
//    8000018c:	00000a93          	addi	x21,x0,0
//    80000190:	00000b13          	addi	x22,x0,0
//    80000194:	00000b93          	addi	x23,x0,0
//    80000198:	00000c13          	addi	x24,x0,0
//    8000019c:	00000c93          	addi	x25,x0,0
//    800001a0:	00000d13          	addi	x26,x0,0
//    800001a4:	00000d93          	addi	x27,x0,0
//    800001a8:	00000e13          	addi	x28,x0,0
//    800001ac:	00000e93          	addi	x29,x0,0
//    800001b0:	00000f13          	addi	x30,x0,0
//    800001b4:	00000f93          	addi	x31,x0,0
//    800001b8:	00c000ef          	jal	x1,800001c4 <main>
//
//00000000800001bc <loop>:
//    800001bc:	00000013          	addi	x0,x0,0
//    800001c0:	ffdff06f          	jal	x0,800001bc <loop>
//
//Disassembly of section .text:
//
//00000000800001c4 <main>:
//    800001c4:	fc010113          	addi	x2,x2,-64
//    800001c8:	02813c23          	sd	x8,56(x2)
//    800001cc:	04010413          	addi	x8,x2,64
//    800001d0:	fca43423          	sd	x10,-56(x8)
//    800001d4:	fcb43023          	sd	x11,-64(x8)
//    800001d8:	00900793          	addi	x15,x0,9
//    800001dc:	01c79793          	slli	x15,x15,0x1c
//    800001e0:	fff78793          	addi	x15,x15,-1
//    800001e4:	fef43423          	sd	x15,-24(x8)
//    800001e8:	f14027f3          	csrrs	x15,mhartid,x0
//    800001ec:	fef43023          	sd	x15,-32(x8)
//    800001f0:	00000013          	addi	x0,x0,0
//    800001f4:	00000797          	auipc	x15,0x0
//    800001f8:	05c7b783          	ld	x15,92(x15) # 80000250 <_GLOBAL_OFFSET_TABLE_+0x8>
//    800001fc:	0007b783          	ld	x15,0(x15)
//    80000200:	fe043703          	ld	x14,-32(x8)
//    80000204:	fef718e3          	bne	x14,x15,800001f4 <main+0x30>
//    80000208:	fe043783          	ld	x15,-32(x8)
//    8000020c:	fe843703          	ld	x14,-24(x8)
//    80000210:	00f70023          	sb	x15,0(x14)
//    80000214:	fe043783          	ld	x15,-32(x8)
//    80000218:	00178793          	addi	x15,x15,1
//    8000021c:	fcf43c23          	sd	x15,-40(x8)
//    80000220:	00000797          	auipc	x15,0x0
//    80000224:	0307b783          	ld	x15,48(x15) # 80000250 <_GLOBAL_OFFSET_TABLE_+0x8>
//    80000228:	fd843703          	ld	x14,-40(x8)
//    8000022c:	00e7b023          	sd	x14,0(x15)
//    80000230:	00000793          	addi	x15,x0,0
//    80000234:	00078513          	addi	x10,x15,0
//    80000238:	03813403          	ld	x8,56(x2)
//    8000023c:	04010113          	addi	x2,x2,64
//    80000240:	00008067          	jalr	x0,0(x1)
//
//Disassembly of section .got:
//
//0000000080000248 <_GLOBAL_OFFSET_TABLE_>:
//	...
//    80000250:	0268                	c.addi4spn	x10,x2,268
//    80000252:	8000                	0x8000
//    80000254:	0000                	unimp
//	...
//
//Disassembly of section .got.plt:
//
//0000000080000258 <__global_pointer$-0x810>:
//    80000258:	ffff                	0xffff
//    8000025a:	ffff                	0xffff
//    8000025c:	ffff                	0xffff
//    8000025e:	ffff                	0xffff
//	...
//
//Disassembly of section .bss:
//
//0000000080000268 <next_core>:
//	...
//
//Disassembly of section .comment:
//
//0000000000000000 <_tls_data-0x80000270>:
//   0:	3a434347          	fmsub.d	f6,f6,f4,f7,rmm
//   4:	2820                	c.fld	f8,80(x8)
//   6:	29554e47          	fmsub.s	f28,f10,f21,f5,rmm
//   a:	3720                	c.fld	f8,104(x14)
//   c:	322e                	c.fldsp	f4,232(x2)
//   e:	302e                	c.fldsp	f0,232(x2)
//	...
module bp_boot_rom #(parameter width_p=-1, addr_width_p=-1)
(input  [addr_width_p-1:0] addr_i
,output logic [width_p-1:0]      data_o
);
always_comb case(addr_i)
         0: data_o = width_p ' (512'b00000000000010010000000000001010000000000100000000000000000000010000000000111000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001110100000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000010000000000000000000000100100100000000000000000000000000000000010000000011110011000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000001001000110010011000100010101111111); // 0x0009000A00400001003800400000000000000000000004E8000000000000004000000000800001240000000100F30002000000000000000000010102464C457F
         1: data_o = width_p ' (512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000100111000000000000000000000000000000000000000000000000000000000010011010000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100000000000000000000000000000001); // 0x00000000000000000000000000001000000000000000027000000000000002680000000080000000000000008000000000000000000000000000000700000001
         4: data_o = width_p ' (512'b01000000000100010000000100110011000000001100000010010000100100111111000101000000001000001111001111111111000000010000000100010011000000001100000100010001000100111111111111010001000000010001101100000000000010010000000100110111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000); // 0x4011013300C09093F14020F3FF01011300C11113FFD1011B00090137000000000000000000000000000000000000000000000000000000000000000000000000
         5: data_o = width_p ' (512'b00000000000000000000100010010011000000000000000000001000000100110000000000000000000001111001001100000000000000000000011100010011000000000000000000000110100100110000000000000000000001100001001100000000000000000000010110010011000000000000000000000101000100110000000000000000000001001001001100000000000000000000010000010011000000000000000000000011100100110000000000000000000000110001001100000000000000000000001010010011000000000000000000000010000100110000000000000000000000011001001100000000000000000000000010010011); // 0x00000893000008130000079300000713000006930000061300000593000005130000049300000413000003930000031300000293000002130000019300000093
         6: data_o = width_p ' (512'b00000000000000000000000000010011000000001100000000000000111011110000000000000000000011111001001100000000000000000000111100010011000000000000000000001110100100110000000000000000000011100001001100000000000000000000110110010011000000000000000000001101000100110000000000000000000011001001001100000000000000000000110000010011000000000000000000001011100100110000000000000000000010110001001100000000000000000000101010010011000000000000000000001010000100110000000000000000000010011001001100000000000000000000100100010011); // 0x0000001300C000EF00000F9300000F1300000E9300000E1300000D9300000D1300000C9300000C1300000B9300000B1300000A9300000A130000099300000913
         7: data_o = width_p ' (512'b00000000000001111011011110000011000001011100011110110111100000110000000000000000000001111001011100000000000000000000000000010011111111101111010000110000001000111111000101000000001001111111001111111110111101000011010000100011111111111111011110000111100100110000000111000111100101111001001100000000100100000000011110010011111111001011010000110000001000111111110010100100001101000010001100000100000000010000010000010011000000101000000100111100001000111111110000000001000000010001001111111111110111111111000001101111); // 0x0007B78305C7B7830000079700000013FEF43023F14027F3FEF43423FFF7879301C7979300900793FCB43023FCA434230401041302813C23FC010113FFDFF06F
         8: data_o = width_p ' (512'b00000100000000010000000100010011000000111000000100110100000000110000000000000111100001010001001100000000000000000000011110010011000000001110011110110000001000111111110110000100001101110000001100000011000001111011011110000011000000000000000000000111100101111111110011110100001111000010001100000000000101111000011110010011111111100000010000110111100000110000000011110111000000000010001111111110100001000011011100000011111111100000010000110111100000111111111011110111000110001110001111111110000001000011011100000011); // 0x0401011303813403000785130000079300E7B023FD8437030307B78300000797FCF43C2300178793FE04378300F70023FE843703FE043783FEF718E3FE043703
         9: data_o = width_p ' (512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000001000000000000000000000100110100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000001100111); // 0x0000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF000000008000026800000000000000000000000000008067
   default: data_o = { width_p { 1'b0 } };
endcase
endmodule
