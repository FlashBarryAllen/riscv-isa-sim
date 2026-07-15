
hello:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	5a5020ef          	jal	12ea0 <__call_exitprocs>
   10100:	7481b503          	ld	a0,1864(gp) # 24d68 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	2e10f0ef          	jal	1fbf4 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00003517          	auipc	a0,0x3
   10124:	56450513          	add	a0,a0,1380 # 13684 <__libc_fini_array>
   10128:	6a10206f          	j	12fc8 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00014197          	auipc	gp,0x14
   10134:	4f018193          	add	gp,gp,1264 # 24620 <__global_pointer$>
   10138:	77018513          	add	a0,gp,1904 # 24d90 <__malloc_max_total_mem>
   1013c:	00015617          	auipc	a2,0x15
   10140:	ce460613          	add	a2,a2,-796 # 24e20 <__BSS_END__>
   10144:	40a60633          	sub	a2,a2,a0
   10148:	00000593          	li	a1,0
   1014c:	2c4000ef          	jal	10410 <memset>
   10150:	00003517          	auipc	a0,0x3
   10154:	e7850513          	add	a0,a0,-392 # 12fc8 <atexit>
   10158:	00050863          	beqz	a0,10168 <_start+0x38>
   1015c:	00003517          	auipc	a0,0x3
   10160:	52850513          	add	a0,a0,1320 # 13684 <__libc_fini_array>
   10164:	665020ef          	jal	12fc8 <atexit>
   10168:	214000ef          	jal	1037c <__libc_init_array>
   1016c:	00012503          	lw	a0,0(sp)
   10170:	00810593          	add	a1,sp,8
   10174:	00000613          	li	a2,0
   10178:	070000ef          	jal	101e8 <main>
   1017c:	f6dff06f          	j	100e8 <exit>

0000000000010180 <__do_global_dtors_aux>:
   10180:	ff010113          	add	sp,sp,-16
   10184:	00813023          	sd	s0,0(sp)
   10188:	7a018413          	add	s0,gp,1952 # 24dc0 <completed.1>
   1018c:	00044783          	lbu	a5,0(s0)
   10190:	00113423          	sd	ra,8(sp)
   10194:	02079263          	bnez	a5,101b8 <__do_global_dtors_aux+0x38>
   10198:	00000793          	li	a5,0
   1019c:	00078a63          	beqz	a5,101b0 <__do_global_dtors_aux+0x30>
   101a0:	00014517          	auipc	a0,0x14
   101a4:	a7050513          	add	a0,a0,-1424 # 23c10 <__EH_FRAME_BEGIN__>
   101a8:	00000097          	auipc	ra,0x0
   101ac:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101b0:	00100793          	li	a5,1
   101b4:	00f40023          	sb	a5,0(s0)
   101b8:	00813083          	ld	ra,8(sp)
   101bc:	00013403          	ld	s0,0(sp)
   101c0:	01010113          	add	sp,sp,16
   101c4:	00008067          	ret

00000000000101c8 <frame_dummy>:
   101c8:	00000793          	li	a5,0
   101cc:	00078c63          	beqz	a5,101e4 <frame_dummy+0x1c>
   101d0:	7a818593          	add	a1,gp,1960 # 24dc8 <object.0>
   101d4:	00014517          	auipc	a0,0x14
   101d8:	a3c50513          	add	a0,a0,-1476 # 23c10 <__EH_FRAME_BEGIN__>
   101dc:	00000317          	auipc	t1,0x0
   101e0:	00000067          	jr	zero # 0 <exit-0x100e8>
   101e4:	00008067          	ret

00000000000101e8 <main>:
   101e8:	fd010113          	add	sp,sp,-48
   101ec:	02113423          	sd	ra,40(sp)
   101f0:	02813023          	sd	s0,32(sp)
   101f4:	03010413          	add	s0,sp,48
   101f8:	000047b7          	lui	a5,0x4
   101fc:	fef42023          	sw	a5,-32(s0)
   10200:	fe042623          	sw	zero,-20(s0)
   10204:	fe042423          	sw	zero,-24(s0)
   10208:	0f40006f          	j	102fc <main+0x114>
   1020c:	fe042223          	sw	zero,-28(s0)
   10210:	0c80006f          	j	102d8 <main+0xf0>
   10214:	fe042783          	lw	a5,-32(s0)
   10218:	01f7d71b          	srlw	a4,a5,0x1f
   1021c:	00f707bb          	addw	a5,a4,a5
   10220:	4017d79b          	sraw	a5,a5,0x1
   10224:	40f007bb          	negw	a5,a5
   10228:	0007879b          	sext.w	a5,a5
   1022c:	fe842703          	lw	a4,-24(s0)
   10230:	00f707bb          	addw	a5,a4,a5
   10234:	fcf42a23          	sw	a5,-44(s0)
   10238:	fe042783          	lw	a5,-32(s0)
   1023c:	01f7d71b          	srlw	a4,a5,0x1f
   10240:	00f707bb          	addw	a5,a4,a5
   10244:	4017d79b          	sraw	a5,a5,0x1
   10248:	40f007bb          	negw	a5,a5
   1024c:	0007879b          	sext.w	a5,a5
   10250:	fe442703          	lw	a4,-28(s0)
   10254:	00f707bb          	addw	a5,a4,a5
   10258:	fcf42823          	sw	a5,-48(s0)
   1025c:	fd442783          	lw	a5,-44(s0)
   10260:	02f787bb          	mulw	a5,a5,a5
   10264:	0007871b          	sext.w	a4,a5
   10268:	fd042783          	lw	a5,-48(s0)
   1026c:	02f787bb          	mulw	a5,a5,a5
   10270:	0007879b          	sext.w	a5,a5
   10274:	00f707bb          	addw	a5,a4,a5
   10278:	0007861b          	sext.w	a2,a5
   1027c:	fe042783          	lw	a5,-32(s0)
   10280:	01f7d71b          	srlw	a4,a5,0x1f
   10284:	00f707bb          	addw	a5,a4,a5
   10288:	4017d79b          	sraw	a5,a5,0x1
   1028c:	0007871b          	sext.w	a4,a5
   10290:	fe042783          	lw	a5,-32(s0)
   10294:	01f7d69b          	srlw	a3,a5,0x1f
   10298:	00f687bb          	addw	a5,a3,a5
   1029c:	4017d79b          	sraw	a5,a5,0x1
   102a0:	0007879b          	sext.w	a5,a5
   102a4:	02f707bb          	mulw	a5,a4,a5
   102a8:	0007879b          	sext.w	a5,a5
   102ac:	00060713          	mv	a4,a2
   102b0:	00f727b3          	slt	a5,a4,a5
   102b4:	0017c793          	xor	a5,a5,1
   102b8:	0ff7f793          	zext.b	a5,a5
   102bc:	0007879b          	sext.w	a5,a5
   102c0:	fec42703          	lw	a4,-20(s0)
   102c4:	00f707bb          	addw	a5,a4,a5
   102c8:	fef42623          	sw	a5,-20(s0)
   102cc:	fe442783          	lw	a5,-28(s0)
   102d0:	0017879b          	addw	a5,a5,1 # 4001 <exit-0xc0e7>
   102d4:	fef42223          	sw	a5,-28(s0)
   102d8:	fe442783          	lw	a5,-28(s0)
   102dc:	00078713          	mv	a4,a5
   102e0:	fe042783          	lw	a5,-32(s0)
   102e4:	0007071b          	sext.w	a4,a4
   102e8:	0007879b          	sext.w	a5,a5
   102ec:	f2f744e3          	blt	a4,a5,10214 <main+0x2c>
   102f0:	fe842783          	lw	a5,-24(s0)
   102f4:	0017879b          	addw	a5,a5,1
   102f8:	fef42423          	sw	a5,-24(s0)
   102fc:	fe842783          	lw	a5,-24(s0)
   10300:	00078713          	mv	a4,a5
   10304:	fe042783          	lw	a5,-32(s0)
   10308:	0007071b          	sext.w	a4,a4
   1030c:	0007879b          	sext.w	a5,a5
   10310:	eef74ee3          	blt	a4,a5,1020c <main+0x24>
   10314:	fe042783          	lw	a5,-32(s0)
   10318:	02f787bb          	mulw	a5,a5,a5
   1031c:	0007879b          	sext.w	a5,a5
   10320:	fec42703          	lw	a4,-20(s0)
   10324:	40e787bb          	subw	a5,a5,a4
   10328:	0007879b          	sext.w	a5,a5
   1032c:	d2078753          	fcvt.d.w	fa4,a5
   10330:	000227b7          	lui	a5,0x22
   10334:	d287b787          	fld	fa5,-728(a5) # 21d28 <__clzdi2+0x78>
   10338:	12f77753          	fmul.d	fa4,fa4,fa5
   1033c:	fe042783          	lw	a5,-32(s0)
   10340:	02f787bb          	mulw	a5,a5,a5
   10344:	0007879b          	sext.w	a5,a5
   10348:	d20787d3          	fcvt.d.w	fa5,a5
   1034c:	1af777d3          	fdiv.d	fa5,fa4,fa5
   10350:	fcf43c27          	fsd	fa5,-40(s0)
   10354:	fd843583          	ld	a1,-40(s0)
   10358:	000227b7          	lui	a5,0x22
   1035c:	d0078513          	add	a0,a5,-768 # 21d00 <__clzdi2+0x50>
   10360:	1cc000ef          	jal	1052c <printf>
   10364:	00000793          	li	a5,0
   10368:	00078513          	mv	a0,a5
   1036c:	02813083          	ld	ra,40(sp)
   10370:	02013403          	ld	s0,32(sp)
   10374:	03010113          	add	sp,sp,48
   10378:	00008067          	ret

000000000001037c <__libc_init_array>:
   1037c:	fe010113          	add	sp,sp,-32
   10380:	00813823          	sd	s0,16(sp)
   10384:	01213023          	sd	s2,0(sp)
   10388:	00014797          	auipc	a5,0x14
   1038c:	88c78793          	add	a5,a5,-1908 # 23c14 <__preinit_array_end>
   10390:	00014417          	auipc	s0,0x14
   10394:	88440413          	add	s0,s0,-1916 # 23c14 <__preinit_array_end>
   10398:	00113c23          	sd	ra,24(sp)
   1039c:	00913423          	sd	s1,8(sp)
   103a0:	40878933          	sub	s2,a5,s0
   103a4:	02878063          	beq	a5,s0,103c4 <__libc_init_array+0x48>
   103a8:	40395913          	sra	s2,s2,0x3
   103ac:	00000493          	li	s1,0
   103b0:	00043783          	ld	a5,0(s0)
   103b4:	00148493          	add	s1,s1,1
   103b8:	00840413          	add	s0,s0,8
   103bc:	000780e7          	jalr	a5
   103c0:	ff24e8e3          	bltu	s1,s2,103b0 <__libc_init_array+0x34>
   103c4:	00014797          	auipc	a5,0x14
   103c8:	86478793          	add	a5,a5,-1948 # 23c28 <__do_global_dtors_aux_fini_array_entry>
   103cc:	00014417          	auipc	s0,0x14
   103d0:	84c40413          	add	s0,s0,-1972 # 23c18 <__init_array_start>
   103d4:	40878933          	sub	s2,a5,s0
   103d8:	40395913          	sra	s2,s2,0x3
   103dc:	00878e63          	beq	a5,s0,103f8 <__libc_init_array+0x7c>
   103e0:	00000493          	li	s1,0
   103e4:	00043783          	ld	a5,0(s0)
   103e8:	00148493          	add	s1,s1,1
   103ec:	00840413          	add	s0,s0,8
   103f0:	000780e7          	jalr	a5
   103f4:	ff24e8e3          	bltu	s1,s2,103e4 <__libc_init_array+0x68>
   103f8:	01813083          	ld	ra,24(sp)
   103fc:	01013403          	ld	s0,16(sp)
   10400:	00813483          	ld	s1,8(sp)
   10404:	00013903          	ld	s2,0(sp)
   10408:	02010113          	add	sp,sp,32
   1040c:	00008067          	ret

0000000000010410 <memset>:
   10410:	00f00313          	li	t1,15
   10414:	00050713          	mv	a4,a0
   10418:	02c37a63          	bgeu	t1,a2,1044c <memset+0x3c>
   1041c:	00f77793          	and	a5,a4,15
   10420:	0a079063          	bnez	a5,104c0 <memset+0xb0>
   10424:	06059e63          	bnez	a1,104a0 <memset+0x90>
   10428:	ff067693          	and	a3,a2,-16
   1042c:	00f67613          	and	a2,a2,15
   10430:	00e686b3          	add	a3,a3,a4
   10434:	00b73023          	sd	a1,0(a4)
   10438:	00b73423          	sd	a1,8(a4)
   1043c:	01070713          	add	a4,a4,16
   10440:	fed76ae3          	bltu	a4,a3,10434 <memset+0x24>
   10444:	00061463          	bnez	a2,1044c <memset+0x3c>
   10448:	00008067          	ret
   1044c:	40c306b3          	sub	a3,t1,a2
   10450:	00269693          	sll	a3,a3,0x2
   10454:	00000297          	auipc	t0,0x0
   10458:	005686b3          	add	a3,a3,t0
   1045c:	00c68067          	jr	12(a3)
   10460:	00b70723          	sb	a1,14(a4)
   10464:	00b706a3          	sb	a1,13(a4)
   10468:	00b70623          	sb	a1,12(a4)
   1046c:	00b705a3          	sb	a1,11(a4)
   10470:	00b70523          	sb	a1,10(a4)
   10474:	00b704a3          	sb	a1,9(a4)
   10478:	00b70423          	sb	a1,8(a4)
   1047c:	00b703a3          	sb	a1,7(a4)
   10480:	00b70323          	sb	a1,6(a4)
   10484:	00b702a3          	sb	a1,5(a4)
   10488:	00b70223          	sb	a1,4(a4)
   1048c:	00b701a3          	sb	a1,3(a4)
   10490:	00b70123          	sb	a1,2(a4)
   10494:	00b700a3          	sb	a1,1(a4)
   10498:	00b70023          	sb	a1,0(a4)
   1049c:	00008067          	ret
   104a0:	0ff5f593          	zext.b	a1,a1
   104a4:	00859693          	sll	a3,a1,0x8
   104a8:	00d5e5b3          	or	a1,a1,a3
   104ac:	01059693          	sll	a3,a1,0x10
   104b0:	00d5e5b3          	or	a1,a1,a3
   104b4:	02059693          	sll	a3,a1,0x20
   104b8:	00d5e5b3          	or	a1,a1,a3
   104bc:	f6dff06f          	j	10428 <memset+0x18>
   104c0:	00279693          	sll	a3,a5,0x2
   104c4:	00000297          	auipc	t0,0x0
   104c8:	005686b3          	add	a3,a3,t0
   104cc:	00008293          	mv	t0,ra
   104d0:	f98680e7          	jalr	-104(a3)
   104d4:	00028093          	mv	ra,t0
   104d8:	ff078793          	add	a5,a5,-16
   104dc:	40f70733          	sub	a4,a4,a5
   104e0:	00f60633          	add	a2,a2,a5
   104e4:	f6c374e3          	bgeu	t1,a2,1044c <memset+0x3c>
   104e8:	f3dff06f          	j	10424 <memset+0x14>

00000000000104ec <_printf_r>:
   104ec:	fb010113          	add	sp,sp,-80
   104f0:	02c13023          	sd	a2,32(sp)
   104f4:	02d13423          	sd	a3,40(sp)
   104f8:	02e13823          	sd	a4,48(sp)
   104fc:	02f13c23          	sd	a5,56(sp)
   10500:	05013023          	sd	a6,64(sp)
   10504:	05113423          	sd	a7,72(sp)
   10508:	00058613          	mv	a2,a1
   1050c:	01053583          	ld	a1,16(a0)
   10510:	02010693          	add	a3,sp,32
   10514:	00113c23          	sd	ra,24(sp)
   10518:	00d13423          	sd	a3,8(sp)
   1051c:	05c000ef          	jal	10578 <_vfprintf_r>
   10520:	01813083          	ld	ra,24(sp)
   10524:	05010113          	add	sp,sp,80
   10528:	00008067          	ret

000000000001052c <printf>:
   1052c:	fa010113          	add	sp,sp,-96
   10530:	02c13823          	sd	a2,48(sp)
   10534:	02d13c23          	sd	a3,56(sp)
   10538:	7581b303          	ld	t1,1880(gp) # 24d78 <_impure_ptr>
   1053c:	02b13423          	sd	a1,40(sp)
   10540:	04e13023          	sd	a4,64(sp)
   10544:	04f13423          	sd	a5,72(sp)
   10548:	05013823          	sd	a6,80(sp)
   1054c:	05113c23          	sd	a7,88(sp)
   10550:	01033583          	ld	a1,16(t1) # 101ec <main+0x4>
   10554:	02810693          	add	a3,sp,40
   10558:	00050613          	mv	a2,a0
   1055c:	00030513          	mv	a0,t1
   10560:	00113c23          	sd	ra,24(sp)
   10564:	00d13423          	sd	a3,8(sp)
   10568:	010000ef          	jal	10578 <_vfprintf_r>
   1056c:	01813083          	ld	ra,24(sp)
   10570:	06010113          	add	sp,sp,96
   10574:	00008067          	ret

0000000000010578 <_vfprintf_r>:
   10578:	d9010113          	add	sp,sp,-624
   1057c:	26113423          	sd	ra,616(sp)
   10580:	26813023          	sd	s0,608(sp)
   10584:	25213823          	sd	s2,592(sp)
   10588:	00b13023          	sd	a1,0(sp)
   1058c:	00060913          	mv	s2,a2
   10590:	00d13c23          	sd	a3,24(sp)
   10594:	24913c23          	sd	s1,600(sp)
   10598:	25313423          	sd	s3,584(sp)
   1059c:	25413023          	sd	s4,576(sp)
   105a0:	23513c23          	sd	s5,568(sp)
   105a4:	23613823          	sd	s6,560(sp)
   105a8:	23713423          	sd	s7,552(sp)
   105ac:	23813023          	sd	s8,544(sp)
   105b0:	21913c23          	sd	s9,536(sp)
   105b4:	21a13823          	sd	s10,528(sp)
   105b8:	21b13423          	sd	s11,520(sp)
   105bc:	00050413          	mv	s0,a0
   105c0:	04a13023          	sd	a0,64(sp)
   105c4:	360060ef          	jal	16924 <_localeconv_r>
   105c8:	00053783          	ld	a5,0(a0)
   105cc:	00078513          	mv	a0,a5
   105d0:	04f13823          	sd	a5,80(sp)
   105d4:	520080ef          	jal	18af4 <strlen>
   105d8:	04a13423          	sd	a0,72(sp)
   105dc:	0e013823          	sd	zero,240(sp)
   105e0:	0e013c23          	sd	zero,248(sp)
   105e4:	00040663          	beqz	s0,105f0 <_vfprintf_r+0x78>
   105e8:	05042703          	lw	a4,80(s0)
   105ec:	60070663          	beqz	a4,10bf8 <_vfprintf_r+0x680>
   105f0:	00013783          	ld	a5,0(sp)
   105f4:	01079703          	lh	a4,16(a5)
   105f8:	03271693          	sll	a3,a4,0x32
   105fc:	0206c663          	bltz	a3,10628 <_vfprintf_r+0xb0>
   10600:	0ac7a683          	lw	a3,172(a5)
   10604:	00002637          	lui	a2,0x2
   10608:	00c76733          	or	a4,a4,a2
   1060c:	ffffe637          	lui	a2,0xffffe
   10610:	0107171b          	sllw	a4,a4,0x10
   10614:	fff60613          	add	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd91df>
   10618:	4107571b          	sraw	a4,a4,0x10
   1061c:	00c6f6b3          	and	a3,a3,a2
   10620:	00e79823          	sh	a4,16(a5)
   10624:	0ad7a623          	sw	a3,172(a5)
   10628:	00877693          	and	a3,a4,8
   1062c:	30068a63          	beqz	a3,10940 <_vfprintf_r+0x3c8>
   10630:	00013783          	ld	a5,0(sp)
   10634:	0187b683          	ld	a3,24(a5)
   10638:	30068463          	beqz	a3,10940 <_vfprintf_r+0x3c8>
   1063c:	01a77713          	and	a4,a4,26
   10640:	00a00693          	li	a3,10
   10644:	32d70263          	beq	a4,a3,10968 <_vfprintf_r+0x3f0>
   10648:	00090a93          	mv	s5,s2
   1064c:	000ac703          	lbu	a4,0(s5)
   10650:	18010793          	add	a5,sp,384
   10654:	10f13023          	sd	a5,256(sp)
   10658:	10013823          	sd	zero,272(sp)
   1065c:	10012423          	sw	zero,264(sp)
   10660:	02013423          	sd	zero,40(sp)
   10664:	04013c23          	sd	zero,88(sp)
   10668:	06013023          	sd	zero,96(sp)
   1066c:	06013423          	sd	zero,104(sp)
   10670:	06013823          	sd	zero,112(sp)
   10674:	06013c23          	sd	zero,120(sp)
   10678:	00013423          	sd	zero,8(sp)
   1067c:	04013483          	ld	s1,64(sp)
   10680:	01000d93          	li	s11,16
   10684:	00078413          	mv	s0,a5
   10688:	24070463          	beqz	a4,108d0 <_vfprintf_r+0x358>
   1068c:	000a8993          	mv	s3,s5
   10690:	02500693          	li	a3,37
   10694:	2ed70e63          	beq	a4,a3,10990 <_vfprintf_r+0x418>
   10698:	0019c703          	lbu	a4,1(s3)
   1069c:	00198993          	add	s3,s3,1
   106a0:	fe071ae3          	bnez	a4,10694 <_vfprintf_r+0x11c>
   106a4:	41598b3b          	subw	s6,s3,s5
   106a8:	220b0463          	beqz	s6,108d0 <_vfprintf_r+0x358>
   106ac:	10812703          	lw	a4,264(sp)
   106b0:	11013d03          	ld	s10,272(sp)
   106b4:	01543023          	sd	s5,0(s0)
   106b8:	0017069b          	addw	a3,a4,1
   106bc:	016d0d33          	add	s10,s10,s6
   106c0:	01643423          	sd	s6,8(s0)
   106c4:	11a13823          	sd	s10,272(sp)
   106c8:	10d12423          	sw	a3,264(sp)
   106cc:	00700713          	li	a4,7
   106d0:	01040413          	add	s0,s0,16
   106d4:	2cd74663          	blt	a4,a3,109a0 <_vfprintf_r+0x428>
   106d8:	00813783          	ld	a5,8(sp)
   106dc:	0009c703          	lbu	a4,0(s3)
   106e0:	016787bb          	addw	a5,a5,s6
   106e4:	00f13423          	sd	a5,8(sp)
   106e8:	1e070463          	beqz	a4,108d0 <_vfprintf_r+0x358>
   106ec:	fff00e13          	li	t3,-1
   106f0:	0019ce83          	lbu	t4,1(s3)
   106f4:	0c0107a3          	sb	zero,207(sp)
   106f8:	00198993          	add	s3,s3,1
   106fc:	00000b93          	li	s7,0
   10700:	00000913          	li	s2,0
   10704:	05a00b13          	li	s6,90
   10708:	000e0a13          	mv	s4,t3
   1070c:	00198993          	add	s3,s3,1
   10710:	000e8e9b          	sext.w	t4,t4
   10714:	fe0e879b          	addw	a5,t4,-32
   10718:	0007871b          	sext.w	a4,a5
   1071c:	06eb6063          	bltu	s6,a4,1077c <_vfprintf_r+0x204>
   10720:	02079713          	sll	a4,a5,0x20
   10724:	01e75793          	srl	a5,a4,0x1e
   10728:	00011717          	auipc	a4,0x11
   1072c:	66470713          	add	a4,a4,1636 # 21d8c <__clzdi2+0xdc>
   10730:	00e787b3          	add	a5,a5,a4
   10734:	0007a783          	lw	a5,0(a5)
   10738:	00e787b3          	add	a5,a5,a4
   1073c:	00078067          	jr	a5
   10740:	00000b93          	li	s7,0
   10744:	00900693          	li	a3,9
   10748:	0009c703          	lbu	a4,0(s3)
   1074c:	002b979b          	sllw	a5,s7,0x2
   10750:	01778bbb          	addw	s7,a5,s7
   10754:	fd0e8e9b          	addw	t4,t4,-48
   10758:	001b9b9b          	sllw	s7,s7,0x1
   1075c:	fd07079b          	addw	a5,a4,-48
   10760:	017e8bbb          	addw	s7,t4,s7
   10764:	00198993          	add	s3,s3,1
   10768:	00070e9b          	sext.w	t4,a4
   1076c:	fcf6fee3          	bgeu	a3,a5,10748 <_vfprintf_r+0x1d0>
   10770:	fe0e879b          	addw	a5,t4,-32
   10774:	0007871b          	sext.w	a4,a5
   10778:	faeb74e3          	bgeu	s6,a4,10720 <_vfprintf_r+0x1a8>
   1077c:	140e8a63          	beqz	t4,108d0 <_vfprintf_r+0x358>
   10780:	11d10c23          	sb	t4,280(sp)
   10784:	0c0107a3          	sb	zero,207(sp)
   10788:	00100b13          	li	s6,1
   1078c:	00100c93          	li	s9,1
   10790:	11810a93          	add	s5,sp,280
   10794:	00013823          	sd	zero,16(sp)
   10798:	00000e13          	li	t3,0
   1079c:	02013c23          	sd	zero,56(sp)
   107a0:	02013823          	sd	zero,48(sp)
   107a4:	02013023          	sd	zero,32(sp)
   107a8:	00297293          	and	t0,s2,2
   107ac:	00028463          	beqz	t0,107b4 <_vfprintf_r+0x23c>
   107b0:	002b0b1b          	addw	s6,s6,2
   107b4:	08497c13          	and	s8,s2,132
   107b8:	000c1663          	bnez	s8,107c4 <_vfprintf_r+0x24c>
   107bc:	416b8d3b          	subw	s10,s7,s6
   107c0:	37a042e3          	bgtz	s10,11324 <_vfprintf_r+0xdac>
   107c4:	0cf14603          	lbu	a2,207(sp)
   107c8:	11013d03          	ld	s10,272(sp)
   107cc:	02060c63          	beqz	a2,10804 <_vfprintf_r+0x28c>
   107d0:	10812603          	lw	a2,264(sp)
   107d4:	0cf10593          	add	a1,sp,207
   107d8:	00b43023          	sd	a1,0(s0)
   107dc:	0016061b          	addw	a2,a2,1
   107e0:	00100593          	li	a1,1
   107e4:	001d0d13          	add	s10,s10,1
   107e8:	00b43423          	sd	a1,8(s0)
   107ec:	10c12423          	sw	a2,264(sp)
   107f0:	0006059b          	sext.w	a1,a2
   107f4:	11a13823          	sd	s10,272(sp)
   107f8:	00700613          	li	a2,7
   107fc:	01040413          	add	s0,s0,16
   10800:	2ab64e63          	blt	a2,a1,10abc <_vfprintf_r+0x544>
   10804:	02028c63          	beqz	t0,1083c <_vfprintf_r+0x2c4>
   10808:	10812603          	lw	a2,264(sp)
   1080c:	00200593          	li	a1,2
   10810:	002d0d13          	add	s10,s10,2
   10814:	0016061b          	addw	a2,a2,1
   10818:	0d010793          	add	a5,sp,208
   1081c:	00b43423          	sd	a1,8(s0)
   10820:	00f43023          	sd	a5,0(s0)
   10824:	0006059b          	sext.w	a1,a2
   10828:	10c12423          	sw	a2,264(sp)
   1082c:	11a13823          	sd	s10,272(sp)
   10830:	00700613          	li	a2,7
   10834:	01040413          	add	s0,s0,16
   10838:	42b64ae3          	blt	a2,a1,1146c <_vfprintf_r+0xef4>
   1083c:	08000613          	li	a2,128
   10840:	10cc0ae3          	beq	s8,a2,11154 <_vfprintf_r+0xbdc>
   10844:	419e0a3b          	subw	s4,t3,s9
   10848:	1f404ae3          	bgtz	s4,1123c <_vfprintf_r+0xcc4>
   1084c:	10097613          	and	a2,s2,256
   10850:	74061463          	bnez	a2,10f98 <_vfprintf_r+0xa20>
   10854:	10812583          	lw	a1,264(sp)
   10858:	01ac8633          	add	a2,s9,s10
   1085c:	01543023          	sd	s5,0(s0)
   10860:	0015869b          	addw	a3,a1,1
   10864:	01943423          	sd	s9,8(s0)
   10868:	10c13823          	sd	a2,272(sp)
   1086c:	10d12423          	sw	a3,264(sp)
   10870:	00700793          	li	a5,7
   10874:	36d7c263          	blt	a5,a3,10bd8 <_vfprintf_r+0x660>
   10878:	01040413          	add	s0,s0,16
   1087c:	00497913          	and	s2,s2,4
   10880:	00090663          	beqz	s2,1088c <_vfprintf_r+0x314>
   10884:	416b893b          	subw	s2,s7,s6
   10888:	41204ae3          	bgtz	s2,1149c <_vfprintf_r+0xf24>
   1088c:	000b8793          	mv	a5,s7
   10890:	016bd463          	bge	s7,s6,10898 <_vfprintf_r+0x320>
   10894:	000b0793          	mv	a5,s6
   10898:	00813703          	ld	a4,8(sp)
   1089c:	00e787bb          	addw	a5,a5,a4
   108a0:	00f13423          	sd	a5,8(sp)
   108a4:	24061ce3          	bnez	a2,112fc <_vfprintf_r+0xd84>
   108a8:	01013783          	ld	a5,16(sp)
   108ac:	10012423          	sw	zero,264(sp)
   108b0:	00078863          	beqz	a5,108c0 <_vfprintf_r+0x348>
   108b4:	01013583          	ld	a1,16(sp)
   108b8:	00048513          	mv	a0,s1
   108bc:	761020ef          	jal	1381c <_free_r>
   108c0:	18010413          	add	s0,sp,384
   108c4:	00098a93          	mv	s5,s3
   108c8:	000ac703          	lbu	a4,0(s5)
   108cc:	dc0710e3          	bnez	a4,1068c <_vfprintf_r+0x114>
   108d0:	11013783          	ld	a5,272(sp)
   108d4:	00078463          	beqz	a5,108dc <_vfprintf_r+0x364>
   108d8:	2b90106f          	j	12390 <_vfprintf_r+0x1e18>
   108dc:	00013783          	ld	a5,0(sp)
   108e0:	0107d783          	lhu	a5,16(a5)
   108e4:	0407f793          	and	a5,a5,64
   108e8:	00078463          	beqz	a5,108f0 <_vfprintf_r+0x378>
   108ec:	0c40206f          	j	129b0 <_vfprintf_r+0x2438>
   108f0:	26813083          	ld	ra,616(sp)
   108f4:	26013403          	ld	s0,608(sp)
   108f8:	00813503          	ld	a0,8(sp)
   108fc:	25813483          	ld	s1,600(sp)
   10900:	25013903          	ld	s2,592(sp)
   10904:	24813983          	ld	s3,584(sp)
   10908:	24013a03          	ld	s4,576(sp)
   1090c:	23813a83          	ld	s5,568(sp)
   10910:	23013b03          	ld	s6,560(sp)
   10914:	22813b83          	ld	s7,552(sp)
   10918:	22013c03          	ld	s8,544(sp)
   1091c:	21813c83          	ld	s9,536(sp)
   10920:	21013d03          	ld	s10,528(sp)
   10924:	20813d83          	ld	s11,520(sp)
   10928:	27010113          	add	sp,sp,624
   1092c:	00008067          	ret
   10930:	01096913          	or	s2,s2,16
   10934:	0009ce83          	lbu	t4,0(s3)
   10938:	0009091b          	sext.w	s2,s2
   1093c:	dd1ff06f          	j	1070c <_vfprintf_r+0x194>
   10940:	00013583          	ld	a1,0(sp)
   10944:	04013503          	ld	a0,64(sp)
   10948:	418020ef          	jal	12d60 <__swsetup_r>
   1094c:	00050463          	beqz	a0,10954 <_vfprintf_r+0x3dc>
   10950:	0600206f          	j	129b0 <_vfprintf_r+0x2438>
   10954:	00013783          	ld	a5,0(sp)
   10958:	00a00693          	li	a3,10
   1095c:	01079703          	lh	a4,16(a5)
   10960:	01a77713          	and	a4,a4,26
   10964:	ced712e3          	bne	a4,a3,10648 <_vfprintf_r+0xd0>
   10968:	00013783          	ld	a5,0(sp)
   1096c:	01279703          	lh	a4,18(a5)
   10970:	cc074ce3          	bltz	a4,10648 <_vfprintf_r+0xd0>
   10974:	01813683          	ld	a3,24(sp)
   10978:	04013503          	ld	a0,64(sp)
   1097c:	00090613          	mv	a2,s2
   10980:	00078593          	mv	a1,a5
   10984:	310020ef          	jal	12c94 <__sbprintf>
   10988:	00a13423          	sd	a0,8(sp)
   1098c:	f65ff06f          	j	108f0 <_vfprintf_r+0x378>
   10990:	41598b3b          	subw	s6,s3,s5
   10994:	d00b1ce3          	bnez	s6,106ac <_vfprintf_r+0x134>
   10998:	0009c703          	lbu	a4,0(s3)
   1099c:	d4dff06f          	j	106e8 <_vfprintf_r+0x170>
   109a0:	00013583          	ld	a1,0(sp)
   109a4:	10010613          	add	a2,sp,256
   109a8:	00048513          	mv	a0,s1
   109ac:	2890a0ef          	jal	1b434 <__sprint_r>
   109b0:	f20516e3          	bnez	a0,108dc <_vfprintf_r+0x364>
   109b4:	18010413          	add	s0,sp,384
   109b8:	d21ff06f          	j	106d8 <_vfprintf_r+0x160>
   109bc:	00897713          	and	a4,s2,8
   109c0:	000a0e13          	mv	t3,s4
   109c4:	740716e3          	bnez	a4,11910 <_vfprintf_r+0x1398>
   109c8:	01813783          	ld	a5,24(sp)
   109cc:	03413023          	sd	s4,32(sp)
   109d0:	01d13823          	sd	t4,16(sp)
   109d4:	0007b507          	fld	fa0,0(a5)
   109d8:	00878a13          	add	s4,a5,8
   109dc:	01413c23          	sd	s4,24(sp)
   109e0:	621100ef          	jal	21800 <__extenddftf2>
   109e4:	02013e03          	ld	t3,32(sp)
   109e8:	01013e83          	ld	t4,16(sp)
   109ec:	00050713          	mv	a4,a0
   109f0:	0f010513          	add	a0,sp,240
   109f4:	03c13023          	sd	t3,32(sp)
   109f8:	01d13823          	sd	t4,16(sp)
   109fc:	0ee13823          	sd	a4,240(sp)
   10a00:	0eb13c23          	sd	a1,248(sp)
   10a04:	6b1050ef          	jal	168b4 <_ldcheck>
   10a08:	0ca12c23          	sw	a0,216(sp)
   10a0c:	00200713          	li	a4,2
   10a10:	01013e83          	ld	t4,16(sp)
   10a14:	02013e03          	ld	t3,32(sp)
   10a18:	00e51463          	bne	a0,a4,10a20 <_vfprintf_r+0x4a8>
   10a1c:	2740106f          	j	11c90 <_vfprintf_r+0x1718>
   10a20:	00100713          	li	a4,1
   10a24:	00e51463          	bne	a0,a4,10a2c <_vfprintf_r+0x4b4>
   10a28:	3f80106f          	j	11e20 <_vfprintf_r+0x18a8>
   10a2c:	06100713          	li	a4,97
   10a30:	00ee9463          	bne	t4,a4,10a38 <_vfprintf_r+0x4c0>
   10a34:	5950106f          	j	127c8 <_vfprintf_r+0x2250>
   10a38:	04100713          	li	a4,65
   10a3c:	00ee9463          	bne	t4,a4,10a44 <_vfprintf_r+0x4cc>
   10a40:	1990106f          	j	123d8 <_vfprintf_r+0x1e60>
   10a44:	fff00713          	li	a4,-1
   10a48:	00ee1463          	bne	t3,a4,10a50 <_vfprintf_r+0x4d8>
   10a4c:	0c80206f          	j	12b14 <_vfprintf_r+0x259c>
   10a50:	fdfef713          	and	a4,t4,-33
   10a54:	04700693          	li	a3,71
   10a58:	00d71463          	bne	a4,a3,10a60 <_vfprintf_r+0x4e8>
   10a5c:	0a80206f          	j	12b04 <_vfprintf_r+0x258c>
   10a60:	10096713          	or	a4,s2,256
   10a64:	0f813b03          	ld	s6,248(sp)
   10a68:	0007079b          	sext.w	a5,a4
   10a6c:	08f13023          	sd	a5,128(sp)
   10a70:	03213823          	sd	s2,48(sp)
   10a74:	0f013a03          	ld	s4,240(sp)
   10a78:	000b5463          	bgez	s6,10a80 <_vfprintf_r+0x508>
   10a7c:	4e90106f          	j	12764 <_vfprintf_r+0x21ec>
   10a80:	08013423          	sd	zero,136(sp)
   10a84:	00013823          	sd	zero,16(sp)
   10a88:	fbfe871b          	addw	a4,t4,-65
   10a8c:	0007061b          	sext.w	a2,a4
   10a90:	02500693          	li	a3,37
   10a94:	00c6f463          	bgeu	a3,a2,10a9c <_vfprintf_r+0x524>
   10a98:	6800106f          	j	12118 <_vfprintf_r+0x1ba0>
   10a9c:	02071613          	sll	a2,a4,0x20
   10aa0:	00011697          	auipc	a3,0x11
   10aa4:	45868693          	add	a3,a3,1112 # 21ef8 <__clzdi2+0x248>
   10aa8:	01e65713          	srl	a4,a2,0x1e
   10aac:	00d70733          	add	a4,a4,a3
   10ab0:	00072703          	lw	a4,0(a4)
   10ab4:	00d70733          	add	a4,a4,a3
   10ab8:	00070067          	jr	a4
   10abc:	00013583          	ld	a1,0(sp)
   10ac0:	10010613          	add	a2,sp,256
   10ac4:	00048513          	mv	a0,s1
   10ac8:	09c13823          	sd	t3,144(sp)
   10acc:	09d13423          	sd	t4,136(sp)
   10ad0:	08513023          	sd	t0,128(sp)
   10ad4:	1610a0ef          	jal	1b434 <__sprint_r>
   10ad8:	02051ce3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   10adc:	11013d03          	ld	s10,272(sp)
   10ae0:	09013e03          	ld	t3,144(sp)
   10ae4:	08813e83          	ld	t4,136(sp)
   10ae8:	08013283          	ld	t0,128(sp)
   10aec:	18010413          	add	s0,sp,384
   10af0:	d15ff06f          	j	10804 <_vfprintf_r+0x28c>
   10af4:	02813783          	ld	a5,40(sp)
   10af8:	00100693          	li	a3,1
   10afc:	01040c13          	add	s8,s0,16
   10b00:	3ef6d0e3          	bge	a3,a5,116e0 <_vfprintf_r+0x1168>
   10b04:	10812583          	lw	a1,264(sp)
   10b08:	00100693          	li	a3,1
   10b0c:	001d0d13          	add	s10,s10,1
   10b10:	0015859b          	addw	a1,a1,1
   10b14:	00d43423          	sd	a3,8(s0)
   10b18:	01543023          	sd	s5,0(s0)
   10b1c:	11a13823          	sd	s10,272(sp)
   10b20:	0005869b          	sext.w	a3,a1
   10b24:	10b12423          	sw	a1,264(sp)
   10b28:	00700613          	li	a2,7
   10b2c:	00d65463          	bge	a2,a3,10b34 <_vfprintf_r+0x5bc>
   10b30:	7b90006f          	j	11ae8 <_vfprintf_r+0x1570>
   10b34:	04813783          	ld	a5,72(sp)
   10b38:	05013703          	ld	a4,80(sp)
   10b3c:	0016841b          	addw	s0,a3,1
   10b40:	01a78cb3          	add	s9,a5,s10
   10b44:	00ec3023          	sd	a4,0(s8)
   10b48:	00fc3423          	sd	a5,8(s8)
   10b4c:	11913823          	sd	s9,272(sp)
   10b50:	10812423          	sw	s0,264(sp)
   10b54:	00700693          	li	a3,7
   10b58:	010c0c13          	add	s8,s8,16
   10b5c:	0086d463          	bge	a3,s0,10b64 <_vfprintf_r+0x5ec>
   10b60:	7ad0006f          	j	11b0c <_vfprintf_r+0x1594>
   10b64:	0f013503          	ld	a0,240(sp)
   10b68:	0f813583          	ld	a1,248(sp)
   10b6c:	00000613          	li	a2,0
   10b70:	00000693          	li	a3,0
   10b74:	3380f0ef          	jal	1feac <__eqtf2>
   10b78:	02813783          	ld	a5,40(sp)
   10b7c:	fff78a1b          	addw	s4,a5,-1
   10b80:	3a050ae3          	beqz	a0,11734 <_vfprintf_r+0x11bc>
   10b84:	001a8793          	add	a5,s5,1
   10b88:	0014041b          	addw	s0,s0,1
   10b8c:	014c8cb3          	add	s9,s9,s4
   10b90:	00fc3023          	sd	a5,0(s8)
   10b94:	014c3423          	sd	s4,8(s8)
   10b98:	11913823          	sd	s9,272(sp)
   10b9c:	10812423          	sw	s0,264(sp)
   10ba0:	00700793          	li	a5,7
   10ba4:	3687c6e3          	blt	a5,s0,11710 <_vfprintf_r+0x1198>
   10ba8:	010c0c13          	add	s8,s8,16
   10bac:	06013703          	ld	a4,96(sp)
   10bb0:	0014069b          	addw	a3,s0,1
   10bb4:	0e010793          	add	a5,sp,224
   10bb8:	01970633          	add	a2,a4,s9
   10bbc:	00fc3023          	sd	a5,0(s8)
   10bc0:	00ec3423          	sd	a4,8(s8)
   10bc4:	10c13823          	sd	a2,272(sp)
   10bc8:	10d12423          	sw	a3,264(sp)
   10bcc:	00700793          	li	a5,7
   10bd0:	010c0413          	add	s0,s8,16
   10bd4:	cad7d4e3          	bge	a5,a3,1087c <_vfprintf_r+0x304>
   10bd8:	00013583          	ld	a1,0(sp)
   10bdc:	10010613          	add	a2,sp,256
   10be0:	00048513          	mv	a0,s1
   10be4:	0510a0ef          	jal	1b434 <__sprint_r>
   10be8:	72051463          	bnez	a0,11310 <_vfprintf_r+0xd98>
   10bec:	11013603          	ld	a2,272(sp)
   10bf0:	18010413          	add	s0,sp,384
   10bf4:	c89ff06f          	j	1087c <_vfprintf_r+0x304>
   10bf8:	04013503          	ld	a0,64(sp)
   10bfc:	249020ef          	jal	13644 <__sinit>
   10c00:	9f1ff06f          	j	105f0 <_vfprintf_r+0x78>
   10c04:	01813703          	ld	a4,24(sp)
   10c08:	0c0107a3          	sb	zero,207(sp)
   10c0c:	00100b13          	li	s6,1
   10c10:	00072783          	lw	a5,0(a4)
   10c14:	00870713          	add	a4,a4,8
   10c18:	00e13c23          	sd	a4,24(sp)
   10c1c:	10f10c23          	sb	a5,280(sp)
   10c20:	00100c93          	li	s9,1
   10c24:	11810a93          	add	s5,sp,280
   10c28:	b6dff06f          	j	10794 <_vfprintf_r+0x21c>
   10c2c:	01813783          	ld	a5,24(sp)
   10c30:	0c0107a3          	sb	zero,207(sp)
   10c34:	000a0e13          	mv	t3,s4
   10c38:	0007ba83          	ld	s5,0(a5)
   10c3c:	00878a13          	add	s4,a5,8
   10c40:	5e0a8ce3          	beqz	s5,11a38 <_vfprintf_r+0x14c0>
   10c44:	fff00713          	li	a4,-1
   10c48:	00ee1463          	bne	t3,a4,10c50 <_vfprintf_r+0x6d8>
   10c4c:	0a40106f          	j	11cf0 <_vfprintf_r+0x1778>
   10c50:	000e0613          	mv	a2,t3
   10c54:	00000593          	li	a1,0
   10c58:	000a8513          	mv	a0,s5
   10c5c:	03d13023          	sd	t4,32(sp)
   10c60:	01c13c23          	sd	t3,24(sp)
   10c64:	720060ef          	jal	17384 <memchr>
   10c68:	00a13823          	sd	a0,16(sp)
   10c6c:	01813e03          	ld	t3,24(sp)
   10c70:	02013e83          	ld	t4,32(sp)
   10c74:	00051463          	bnez	a0,10c7c <_vfprintf_r+0x704>
   10c78:	3910106f          	j	12808 <_vfprintf_r+0x2290>
   10c7c:	01013783          	ld	a5,16(sp)
   10c80:	0cf14603          	lbu	a2,207(sp)
   10c84:	01413c23          	sd	s4,24(sp)
   10c88:	41578cbb          	subw	s9,a5,s5
   10c8c:	fffcc713          	not	a4,s9
   10c90:	43f75713          	sra	a4,a4,0x3f
   10c94:	00013823          	sd	zero,16(sp)
   10c98:	02013c23          	sd	zero,56(sp)
   10c9c:	02013823          	sd	zero,48(sp)
   10ca0:	02013023          	sd	zero,32(sp)
   10ca4:	01977b33          	and	s6,a4,s9
   10ca8:	00000e13          	li	t3,0
   10cac:	ae060ee3          	beqz	a2,107a8 <_vfprintf_r+0x230>
   10cb0:	001b0b1b          	addw	s6,s6,1
   10cb4:	af5ff06f          	j	107a8 <_vfprintf_r+0x230>
   10cb8:	01813783          	ld	a5,24(sp)
   10cbc:	0007ab83          	lw	s7,0(a5)
   10cc0:	00878793          	add	a5,a5,8
   10cc4:	3c0bdce3          	bgez	s7,1189c <_vfprintf_r+0x1324>
   10cc8:	41700bbb          	negw	s7,s7
   10ccc:	00f13c23          	sd	a5,24(sp)
   10cd0:	00496913          	or	s2,s2,4
   10cd4:	0009ce83          	lbu	t4,0(s3)
   10cd8:	0009091b          	sext.w	s2,s2
   10cdc:	a31ff06f          	j	1070c <_vfprintf_r+0x194>
   10ce0:	02b00793          	li	a5,43
   10ce4:	0009ce83          	lbu	t4,0(s3)
   10ce8:	0cf107a3          	sb	a5,207(sp)
   10cec:	a21ff06f          	j	1070c <_vfprintf_r+0x194>
   10cf0:	08096913          	or	s2,s2,128
   10cf4:	0009ce83          	lbu	t4,0(s3)
   10cf8:	0009091b          	sext.w	s2,s2
   10cfc:	a11ff06f          	j	1070c <_vfprintf_r+0x194>
   10d00:	0009ce83          	lbu	t4,0(s3)
   10d04:	02a00693          	li	a3,42
   10d08:	00198793          	add	a5,s3,1
   10d0c:	00de9463          	bne	t4,a3,10d14 <_vfprintf_r+0x79c>
   10d10:	6d50106f          	j	12be4 <_vfprintf_r+0x266c>
   10d14:	fd0e871b          	addw	a4,t4,-48
   10d18:	00900613          	li	a2,9
   10d1c:	00078993          	mv	s3,a5
   10d20:	00000a13          	li	s4,0
   10d24:	00900693          	li	a3,9
   10d28:	9ee666e3          	bltu	a2,a4,10714 <_vfprintf_r+0x19c>
   10d2c:	0009ce83          	lbu	t4,0(s3)
   10d30:	002a179b          	sllw	a5,s4,0x2
   10d34:	01478e3b          	addw	t3,a5,s4
   10d38:	001e1e1b          	sllw	t3,t3,0x1
   10d3c:	00ee0a3b          	addw	s4,t3,a4
   10d40:	fd0e871b          	addw	a4,t4,-48
   10d44:	00198993          	add	s3,s3,1
   10d48:	fee6f2e3          	bgeu	a3,a4,10d2c <_vfprintf_r+0x7b4>
   10d4c:	9c9ff06f          	j	10714 <_vfprintf_r+0x19c>
   10d50:	00048513          	mv	a0,s1
   10d54:	3d1050ef          	jal	16924 <_localeconv_r>
   10d58:	00853783          	ld	a5,8(a0)
   10d5c:	00078513          	mv	a0,a5
   10d60:	06f13c23          	sd	a5,120(sp)
   10d64:	591070ef          	jal	18af4 <strlen>
   10d68:	00050793          	mv	a5,a0
   10d6c:	00048513          	mv	a0,s1
   10d70:	00078c13          	mv	s8,a5
   10d74:	06f13823          	sd	a5,112(sp)
   10d78:	3ad050ef          	jal	16924 <_localeconv_r>
   10d7c:	01053783          	ld	a5,16(a0)
   10d80:	0009ce83          	lbu	t4,0(s3)
   10d84:	06f13423          	sd	a5,104(sp)
   10d88:	980c02e3          	beqz	s8,1070c <_vfprintf_r+0x194>
   10d8c:	980780e3          	beqz	a5,1070c <_vfprintf_r+0x194>
   10d90:	0007c783          	lbu	a5,0(a5)
   10d94:	96078ce3          	beqz	a5,1070c <_vfprintf_r+0x194>
   10d98:	40096913          	or	s2,s2,1024
   10d9c:	0009091b          	sext.w	s2,s2
   10da0:	96dff06f          	j	1070c <_vfprintf_r+0x194>
   10da4:	00196913          	or	s2,s2,1
   10da8:	0009ce83          	lbu	t4,0(s3)
   10dac:	0009091b          	sext.w	s2,s2
   10db0:	95dff06f          	j	1070c <_vfprintf_r+0x194>
   10db4:	0cf14783          	lbu	a5,207(sp)
   10db8:	0009ce83          	lbu	t4,0(s3)
   10dbc:	940798e3          	bnez	a5,1070c <_vfprintf_r+0x194>
   10dc0:	02000793          	li	a5,32
   10dc4:	0cf107a3          	sb	a5,207(sp)
   10dc8:	945ff06f          	j	1070c <_vfprintf_r+0x194>
   10dcc:	01096c13          	or	s8,s2,16
   10dd0:	000a0e13          	mv	t3,s4
   10dd4:	000c0c1b          	sext.w	s8,s8
   10dd8:	01813683          	ld	a3,24(sp)
   10ddc:	020c7793          	and	a5,s8,32
   10de0:	00868713          	add	a4,a3,8
   10de4:	260782e3          	beqz	a5,11848 <_vfprintf_r+0x12d0>
   10de8:	0006bb03          	ld	s6,0(a3)
   10dec:	00100793          	li	a5,1
   10df0:	00e13c23          	sd	a4,24(sp)
   10df4:	00000713          	li	a4,0
   10df8:	0ce107a3          	sb	a4,207(sp)
   10dfc:	fff00713          	li	a4,-1
   10e00:	2aee0663          	beq	t3,a4,110ac <_vfprintf_r+0xb34>
   10e04:	f7fc7913          	and	s2,s8,-129
   10e08:	0009091b          	sext.w	s2,s2
   10e0c:	280b1e63          	bnez	s6,110a8 <_vfprintf_r+0xb30>
   10e10:	2e0e1c63          	bnez	t3,11108 <_vfprintf_r+0xb90>
   10e14:	260790e3          	bnez	a5,11874 <_vfprintf_r+0x12fc>
   10e18:	001c7c93          	and	s9,s8,1
   10e1c:	17c10a93          	add	s5,sp,380
   10e20:	280c94e3          	bnez	s9,118a8 <_vfprintf_r+0x1330>
   10e24:	0cf14603          	lbu	a2,207(sp)
   10e28:	000c8713          	mv	a4,s9
   10e2c:	01ccd463          	bge	s9,t3,10e34 <_vfprintf_r+0x8bc>
   10e30:	000e0713          	mv	a4,t3
   10e34:	00013823          	sd	zero,16(sp)
   10e38:	02013c23          	sd	zero,56(sp)
   10e3c:	02013823          	sd	zero,48(sp)
   10e40:	02013023          	sd	zero,32(sp)
   10e44:	00070b1b          	sext.w	s6,a4
   10e48:	e60614e3          	bnez	a2,10cb0 <_vfprintf_r+0x738>
   10e4c:	95dff06f          	j	107a8 <_vfprintf_r+0x230>
   10e50:	00896913          	or	s2,s2,8
   10e54:	0009ce83          	lbu	t4,0(s3)
   10e58:	0009091b          	sext.w	s2,s2
   10e5c:	8b1ff06f          	j	1070c <_vfprintf_r+0x194>
   10e60:	01096913          	or	s2,s2,16
   10e64:	000a0e13          	mv	t3,s4
   10e68:	0009091b          	sext.w	s2,s2
   10e6c:	01813683          	ld	a3,24(sp)
   10e70:	02097793          	and	a5,s2,32
   10e74:	00868713          	add	a4,a3,8
   10e78:	160786e3          	beqz	a5,117e4 <_vfprintf_r+0x126c>
   10e7c:	0006b783          	ld	a5,0(a3)
   10e80:	00078b13          	mv	s6,a5
   10e84:	1807c4e3          	bltz	a5,1180c <_vfprintf_r+0x1294>
   10e88:	fff00793          	li	a5,-1
   10e8c:	5afe0c63          	beq	t3,a5,11444 <_vfprintf_r+0xecc>
   10e90:	f7f97c13          	and	s8,s2,-129
   10e94:	000c0c1b          	sext.w	s8,s8
   10e98:	5e0b18e3          	bnez	s6,11c88 <_vfprintf_r+0x1710>
   10e9c:	000e0463          	beqz	t3,10ea4 <_vfprintf_r+0x92c>
   10ea0:	47d0106f          	j	12b1c <_vfprintf_r+0x25a4>
   10ea4:	00000c93          	li	s9,0
   10ea8:	00e13c23          	sd	a4,24(sp)
   10eac:	000c0913          	mv	s2,s8
   10eb0:	17c10a93          	add	s5,sp,380
   10eb4:	f71ff06f          	j	10e24 <_vfprintf_r+0x8ac>
   10eb8:	01096913          	or	s2,s2,16
   10ebc:	000a0e13          	mv	t3,s4
   10ec0:	0009091b          	sext.w	s2,s2
   10ec4:	01813683          	ld	a3,24(sp)
   10ec8:	02097793          	and	a5,s2,32
   10ecc:	00868713          	add	a4,a3,8
   10ed0:	14078ae3          	beqz	a5,11824 <_vfprintf_r+0x12ac>
   10ed4:	0006bb03          	ld	s6,0(a3)
   10ed8:	bff97c13          	and	s8,s2,-1025
   10edc:	000c0c1b          	sext.w	s8,s8
   10ee0:	00e13c23          	sd	a4,24(sp)
   10ee4:	00000793          	li	a5,0
   10ee8:	f0dff06f          	j	10df4 <_vfprintf_r+0x87c>
   10eec:	02096913          	or	s2,s2,32
   10ef0:	0009ce83          	lbu	t4,0(s3)
   10ef4:	0009091b          	sext.w	s2,s2
   10ef8:	815ff06f          	j	1070c <_vfprintf_r+0x194>
   10efc:	01813703          	ld	a4,24(sp)
   10f00:	02097793          	and	a5,s2,32
   10f04:	00073703          	ld	a4,0(a4)
   10f08:	1e0780e3          	beqz	a5,118e8 <_vfprintf_r+0x1370>
   10f0c:	00813783          	ld	a5,8(sp)
   10f10:	00f73023          	sd	a5,0(a4)
   10f14:	01813783          	ld	a5,24(sp)
   10f18:	00098a93          	mv	s5,s3
   10f1c:	00878793          	add	a5,a5,8
   10f20:	00f13c23          	sd	a5,24(sp)
   10f24:	9a5ff06f          	j	108c8 <_vfprintf_r+0x350>
   10f28:	0009ce83          	lbu	t4,0(s3)
   10f2c:	06c00793          	li	a5,108
   10f30:	2efe8ae3          	beq	t4,a5,11a24 <_vfprintf_r+0x14ac>
   10f34:	01096913          	or	s2,s2,16
   10f38:	0009091b          	sext.w	s2,s2
   10f3c:	fd0ff06f          	j	1070c <_vfprintf_r+0x194>
   10f40:	0009ce83          	lbu	t4,0(s3)
   10f44:	06800793          	li	a5,104
   10f48:	28fe86e3          	beq	t4,a5,119d4 <_vfprintf_r+0x145c>
   10f4c:	04096913          	or	s2,s2,64
   10f50:	0009091b          	sext.w	s2,s2
   10f54:	fb8ff06f          	j	1070c <_vfprintf_r+0x194>
   10f58:	01813703          	ld	a4,24(sp)
   10f5c:	ffff87b7          	lui	a5,0xffff8
   10f60:	8307c793          	xor	a5,a5,-2000
   10f64:	0cf11823          	sh	a5,208(sp)
   10f68:	00870793          	add	a5,a4,8
   10f6c:	00296c13          	or	s8,s2,2
   10f70:	00f13c23          	sd	a5,24(sp)
   10f74:	00011797          	auipc	a5,0x11
   10f78:	df478793          	add	a5,a5,-524 # 21d68 <__clzdi2+0xb8>
   10f7c:	04f13c23          	sd	a5,88(sp)
   10f80:	00073b03          	ld	s6,0(a4)
   10f84:	000a0e13          	mv	t3,s4
   10f88:	000c0c1b          	sext.w	s8,s8
   10f8c:	00200793          	li	a5,2
   10f90:	07800e93          	li	t4,120
   10f94:	e61ff06f          	j	10df4 <_vfprintf_r+0x87c>
   10f98:	06500693          	li	a3,101
   10f9c:	b5d6dce3          	bge	a3,t4,10af4 <_vfprintf_r+0x57c>
   10fa0:	0f013503          	ld	a0,240(sp)
   10fa4:	0f813583          	ld	a1,248(sp)
   10fa8:	00000613          	li	a2,0
   10fac:	00000693          	li	a3,0
   10fb0:	6fd0e0ef          	jal	1feac <__eqtf2>
   10fb4:	58051c63          	bnez	a0,1154c <_vfprintf_r+0xfd4>
   10fb8:	10812783          	lw	a5,264(sp)
   10fbc:	00011697          	auipc	a3,0x11
   10fc0:	dcc68693          	add	a3,a3,-564 # 21d88 <__clzdi2+0xd8>
   10fc4:	00d43023          	sd	a3,0(s0)
   10fc8:	0017879b          	addw	a5,a5,1
   10fcc:	00100693          	li	a3,1
   10fd0:	001d0d13          	add	s10,s10,1
   10fd4:	00d43423          	sd	a3,8(s0)
   10fd8:	10f12423          	sw	a5,264(sp)
   10fdc:	0007869b          	sext.w	a3,a5
   10fe0:	11a13823          	sd	s10,272(sp)
   10fe4:	00700793          	li	a5,7
   10fe8:	01040413          	add	s0,s0,16
   10fec:	44d7cae3          	blt	a5,a3,11c40 <_vfprintf_r+0x16c8>
   10ff0:	0d812783          	lw	a5,216(sp)
   10ff4:	02813703          	ld	a4,40(sp)
   10ff8:	08e7d4e3          	bge	a5,a4,11880 <_vfprintf_r+0x1308>
   10ffc:	10812783          	lw	a5,264(sp)
   11000:	04813703          	ld	a4,72(sp)
   11004:	05013683          	ld	a3,80(sp)
   11008:	01040413          	add	s0,s0,16
   1100c:	01a70633          	add	a2,a4,s10
   11010:	fed43823          	sd	a3,-16(s0)
   11014:	0017869b          	addw	a3,a5,1
   11018:	fee43c23          	sd	a4,-8(s0)
   1101c:	10c13823          	sd	a2,272(sp)
   11020:	10d12423          	sw	a3,264(sp)
   11024:	00700793          	li	a5,7
   11028:	1cd7cae3          	blt	a5,a3,119fc <_vfprintf_r+0x1484>
   1102c:	02813783          	ld	a5,40(sp)
   11030:	fff78c1b          	addw	s8,a5,-1
   11034:	858054e3          	blez	s8,1087c <_vfprintf_r+0x304>
   11038:	01000693          	li	a3,16
   1103c:	10812783          	lw	a5,264(sp)
   11040:	00011d17          	auipc	s10,0x11
   11044:	f50d0d13          	add	s10,s10,-176 # 21f90 <zeroes.0>
   11048:	4186dce3          	bge	a3,s8,11c60 <_vfprintf_r+0x16e8>
   1104c:	00013a83          	ld	s5,0(sp)
   11050:	01000c93          	li	s9,16
   11054:	00700a13          	li	s4,7
   11058:	00c0006f          	j	11064 <_vfprintf_r+0xaec>
   1105c:	ff0c0c1b          	addw	s8,s8,-16
   11060:	418cd0e3          	bge	s9,s8,11c60 <_vfprintf_r+0x16e8>
   11064:	0017879b          	addw	a5,a5,1
   11068:	01060613          	add	a2,a2,16
   1106c:	01a43023          	sd	s10,0(s0)
   11070:	01943423          	sd	s9,8(s0)
   11074:	10c13823          	sd	a2,272(sp)
   11078:	10f12423          	sw	a5,264(sp)
   1107c:	01040413          	add	s0,s0,16
   11080:	fcfa5ee3          	bge	s4,a5,1105c <_vfprintf_r+0xae4>
   11084:	10010613          	add	a2,sp,256
   11088:	000a8593          	mv	a1,s5
   1108c:	00048513          	mv	a0,s1
   11090:	3a40a0ef          	jal	1b434 <__sprint_r>
   11094:	26051e63          	bnez	a0,11310 <_vfprintf_r+0xd98>
   11098:	11013603          	ld	a2,272(sp)
   1109c:	10812783          	lw	a5,264(sp)
   110a0:	18010413          	add	s0,sp,384
   110a4:	fb9ff06f          	j	1105c <_vfprintf_r+0xae4>
   110a8:	00090c13          	mv	s8,s2
   110ac:	00100713          	li	a4,1
   110b0:	38e78e63          	beq	a5,a4,1144c <_vfprintf_r+0xed4>
   110b4:	00200713          	li	a4,2
   110b8:	06e78463          	beq	a5,a4,11120 <_vfprintf_r+0xba8>
   110bc:	17c10a13          	add	s4,sp,380
   110c0:	000a0a93          	mv	s5,s4
   110c4:	007b7713          	and	a4,s6,7
   110c8:	03070713          	add	a4,a4,48
   110cc:	feea8fa3          	sb	a4,-1(s5)
   110d0:	003b5b13          	srl	s6,s6,0x3
   110d4:	000a8613          	mv	a2,s5
   110d8:	fffa8a93          	add	s5,s5,-1
   110dc:	fe0b14e3          	bnez	s6,110c4 <_vfprintf_r+0xb4c>
   110e0:	001c7593          	and	a1,s8,1
   110e4:	06058263          	beqz	a1,11148 <_vfprintf_r+0xbd0>
   110e8:	03000593          	li	a1,48
   110ec:	04b70e63          	beq	a4,a1,11148 <_vfprintf_r+0xbd0>
   110f0:	ffe60613          	add	a2,a2,-2
   110f4:	feba8fa3          	sb	a1,-1(s5)
   110f8:	40ca0cbb          	subw	s9,s4,a2
   110fc:	000c0913          	mv	s2,s8
   11100:	00060a93          	mv	s5,a2
   11104:	d21ff06f          	j	10e24 <_vfprintf_r+0x8ac>
   11108:	00100713          	li	a4,1
   1110c:	00e79463          	bne	a5,a4,11114 <_vfprintf_r+0xb9c>
   11110:	7a80106f          	j	128b8 <_vfprintf_r+0x2340>
   11114:	00200713          	li	a4,2
   11118:	00090c13          	mv	s8,s2
   1111c:	fae790e3          	bne	a5,a4,110bc <_vfprintf_r+0xb44>
   11120:	05813703          	ld	a4,88(sp)
   11124:	17c10a13          	add	s4,sp,380
   11128:	000a0a93          	mv	s5,s4
   1112c:	00fb7793          	and	a5,s6,15
   11130:	00f707b3          	add	a5,a4,a5
   11134:	0007c783          	lbu	a5,0(a5)
   11138:	004b5b13          	srl	s6,s6,0x4
   1113c:	fffa8a93          	add	s5,s5,-1
   11140:	00fa8023          	sb	a5,0(s5)
   11144:	fe0b14e3          	bnez	s6,1112c <_vfprintf_r+0xbb4>
   11148:	415a0cbb          	subw	s9,s4,s5
   1114c:	000c0913          	mv	s2,s8
   11150:	cd5ff06f          	j	10e24 <_vfprintf_r+0x8ac>
   11154:	416b8a3b          	subw	s4,s7,s6
   11158:	ef405663          	blez	s4,10844 <_vfprintf_r+0x2cc>
   1115c:	01000513          	li	a0,16
   11160:	000d0593          	mv	a1,s10
   11164:	10812603          	lw	a2,264(sp)
   11168:	00011d17          	auipc	s10,0x11
   1116c:	e28d0d13          	add	s10,s10,-472 # 21f90 <zeroes.0>
   11170:	09455e63          	bge	a0,s4,1120c <_vfprintf_r+0xc94>
   11174:	00040793          	mv	a5,s0
   11178:	01000893          	li	a7,16
   1117c:	000a0413          	mv	s0,s4
   11180:	00700c13          	li	s8,7
   11184:	00090a13          	mv	s4,s2
   11188:	09d13023          	sd	t4,128(sp)
   1118c:	000d0913          	mv	s2,s10
   11190:	000a8d13          	mv	s10,s5
   11194:	000e0a93          	mv	s5,t3
   11198:	00c0006f          	j	111a4 <_vfprintf_r+0xc2c>
   1119c:	ff04041b          	addw	s0,s0,-16
   111a0:	0488d863          	bge	a7,s0,111f0 <_vfprintf_r+0xc78>
   111a4:	0016061b          	addw	a2,a2,1
   111a8:	01058593          	add	a1,a1,16
   111ac:	0127b023          	sd	s2,0(a5)
   111b0:	0117b423          	sd	a7,8(a5)
   111b4:	10b13823          	sd	a1,272(sp)
   111b8:	10c12423          	sw	a2,264(sp)
   111bc:	01078793          	add	a5,a5,16
   111c0:	fccc5ee3          	bge	s8,a2,1119c <_vfprintf_r+0xc24>
   111c4:	00013583          	ld	a1,0(sp)
   111c8:	10010613          	add	a2,sp,256
   111cc:	00048513          	mv	a0,s1
   111d0:	2640a0ef          	jal	1b434 <__sprint_r>
   111d4:	12051e63          	bnez	a0,11310 <_vfprintf_r+0xd98>
   111d8:	01000893          	li	a7,16
   111dc:	ff04041b          	addw	s0,s0,-16
   111e0:	11013583          	ld	a1,272(sp)
   111e4:	10812603          	lw	a2,264(sp)
   111e8:	18010793          	add	a5,sp,384
   111ec:	fa88cce3          	blt	a7,s0,111a4 <_vfprintf_r+0xc2c>
   111f0:	08013e83          	ld	t4,128(sp)
   111f4:	000a8e13          	mv	t3,s5
   111f8:	000d0a93          	mv	s5,s10
   111fc:	00090d13          	mv	s10,s2
   11200:	000a0913          	mv	s2,s4
   11204:	00040a13          	mv	s4,s0
   11208:	00078413          	mv	s0,a5
   1120c:	0016051b          	addw	a0,a2,1
   11210:	00ba05b3          	add	a1,s4,a1
   11214:	01a43023          	sd	s10,0(s0)
   11218:	01443423          	sd	s4,8(s0)
   1121c:	10b13823          	sd	a1,272(sp)
   11220:	10a12423          	sw	a0,264(sp)
   11224:	00700613          	li	a2,7
   11228:	70a64c63          	blt	a2,a0,11940 <_vfprintf_r+0x13c8>
   1122c:	419e0a3b          	subw	s4,t3,s9
   11230:	01040413          	add	s0,s0,16
   11234:	00058d13          	mv	s10,a1
   11238:	e1405a63          	blez	s4,1084c <_vfprintf_r+0x2d4>
   1123c:	000d0593          	mv	a1,s10
   11240:	10812603          	lw	a2,264(sp)
   11244:	00011d17          	auipc	s10,0x11
   11248:	d4cd0d13          	add	s10,s10,-692 # 21f90 <zeroes.0>
   1124c:	094dd263          	bge	s11,s4,112d0 <_vfprintf_r+0xd58>
   11250:	00040793          	mv	a5,s0
   11254:	00700c13          	li	s8,7
   11258:	000a0413          	mv	s0,s4
   1125c:	00090a13          	mv	s4,s2
   11260:	000e8913          	mv	s2,t4
   11264:	00c0006f          	j	11270 <_vfprintf_r+0xcf8>
   11268:	ff04041b          	addw	s0,s0,-16
   1126c:	048dda63          	bge	s11,s0,112c0 <_vfprintf_r+0xd48>
   11270:	0016061b          	addw	a2,a2,1
   11274:	01058593          	add	a1,a1,16
   11278:	00011697          	auipc	a3,0x11
   1127c:	d1868693          	add	a3,a3,-744 # 21f90 <zeroes.0>
   11280:	00d7b023          	sd	a3,0(a5)
   11284:	01b7b423          	sd	s11,8(a5)
   11288:	10b13823          	sd	a1,272(sp)
   1128c:	10c12423          	sw	a2,264(sp)
   11290:	01078793          	add	a5,a5,16
   11294:	fccc5ae3          	bge	s8,a2,11268 <_vfprintf_r+0xcf0>
   11298:	00013583          	ld	a1,0(sp)
   1129c:	10010613          	add	a2,sp,256
   112a0:	00048513          	mv	a0,s1
   112a4:	1900a0ef          	jal	1b434 <__sprint_r>
   112a8:	06051463          	bnez	a0,11310 <_vfprintf_r+0xd98>
   112ac:	ff04041b          	addw	s0,s0,-16
   112b0:	11013583          	ld	a1,272(sp)
   112b4:	10812603          	lw	a2,264(sp)
   112b8:	18010793          	add	a5,sp,384
   112bc:	fa8dcae3          	blt	s11,s0,11270 <_vfprintf_r+0xcf8>
   112c0:	00090e93          	mv	t4,s2
   112c4:	000a0913          	mv	s2,s4
   112c8:	00040a13          	mv	s4,s0
   112cc:	00078413          	mv	s0,a5
   112d0:	0016051b          	addw	a0,a2,1
   112d4:	00ba05b3          	add	a1,s4,a1
   112d8:	01a43023          	sd	s10,0(s0)
   112dc:	01443423          	sd	s4,8(s0)
   112e0:	10b13823          	sd	a1,272(sp)
   112e4:	10a12423          	sw	a0,264(sp)
   112e8:	00700613          	li	a2,7
   112ec:	4ca64863          	blt	a2,a0,117bc <_vfprintf_r+0x1244>
   112f0:	01040413          	add	s0,s0,16
   112f4:	00058d13          	mv	s10,a1
   112f8:	d54ff06f          	j	1084c <_vfprintf_r+0x2d4>
   112fc:	00013583          	ld	a1,0(sp)
   11300:	10010613          	add	a2,sp,256
   11304:	00048513          	mv	a0,s1
   11308:	12c0a0ef          	jal	1b434 <__sprint_r>
   1130c:	d8050e63          	beqz	a0,108a8 <_vfprintf_r+0x330>
   11310:	01013583          	ld	a1,16(sp)
   11314:	dc058463          	beqz	a1,108dc <_vfprintf_r+0x364>
   11318:	04013503          	ld	a0,64(sp)
   1131c:	500020ef          	jal	1381c <_free_r>
   11320:	dbcff06f          	j	108dc <_vfprintf_r+0x364>
   11324:	01000513          	li	a0,16
   11328:	11013583          	ld	a1,272(sp)
   1132c:	10812603          	lw	a2,264(sp)
   11330:	00011a17          	auipc	s4,0x11
   11334:	c70a0a13          	add	s4,s4,-912 # 21fa0 <blanks.1>
   11338:	0ba55863          	bge	a0,s10,113e8 <_vfprintf_r+0xe70>
   1133c:	000a0713          	mv	a4,s4
   11340:	00040793          	mv	a5,s0
   11344:	00090a13          	mv	s4,s2
   11348:	000d0413          	mv	s0,s10
   1134c:	01000813          	li	a6,16
   11350:	000a8d13          	mv	s10,s5
   11354:	00700393          	li	t2,7
   11358:	08513023          	sd	t0,128(sp)
   1135c:	09d13423          	sd	t4,136(sp)
   11360:	000e0a93          	mv	s5,t3
   11364:	00070913          	mv	s2,a4
   11368:	00c0006f          	j	11374 <_vfprintf_r+0xdfc>
   1136c:	ff04041b          	addw	s0,s0,-16
   11370:	04885a63          	bge	a6,s0,113c4 <_vfprintf_r+0xe4c>
   11374:	0016061b          	addw	a2,a2,1
   11378:	01058593          	add	a1,a1,16
   1137c:	0127b023          	sd	s2,0(a5)
   11380:	0107b423          	sd	a6,8(a5)
   11384:	10b13823          	sd	a1,272(sp)
   11388:	10c12423          	sw	a2,264(sp)
   1138c:	01078793          	add	a5,a5,16
   11390:	fcc3dee3          	bge	t2,a2,1136c <_vfprintf_r+0xdf4>
   11394:	00013583          	ld	a1,0(sp)
   11398:	10010613          	add	a2,sp,256
   1139c:	00048513          	mv	a0,s1
   113a0:	0940a0ef          	jal	1b434 <__sprint_r>
   113a4:	f60516e3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   113a8:	01000813          	li	a6,16
   113ac:	ff04041b          	addw	s0,s0,-16
   113b0:	11013583          	ld	a1,272(sp)
   113b4:	10812603          	lw	a2,264(sp)
   113b8:	18010793          	add	a5,sp,384
   113bc:	00700393          	li	t2,7
   113c0:	fa884ae3          	blt	a6,s0,11374 <_vfprintf_r+0xdfc>
   113c4:	08013283          	ld	t0,128(sp)
   113c8:	08813e83          	ld	t4,136(sp)
   113cc:	000a8e13          	mv	t3,s5
   113d0:	000d0a93          	mv	s5,s10
   113d4:	00040d13          	mv	s10,s0
   113d8:	00078413          	mv	s0,a5
   113dc:	00090793          	mv	a5,s2
   113e0:	000a0913          	mv	s2,s4
   113e4:	00078a13          	mv	s4,a5
   113e8:	0016061b          	addw	a2,a2,1
   113ec:	00bd05b3          	add	a1,s10,a1
   113f0:	01443023          	sd	s4,0(s0)
   113f4:	01a43423          	sd	s10,8(s0)
   113f8:	10b13823          	sd	a1,272(sp)
   113fc:	10c12423          	sw	a2,264(sp)
   11400:	0006059b          	sext.w	a1,a2
   11404:	00700613          	li	a2,7
   11408:	01040413          	add	s0,s0,16
   1140c:	bab65c63          	bge	a2,a1,107c4 <_vfprintf_r+0x24c>
   11410:	00013583          	ld	a1,0(sp)
   11414:	10010613          	add	a2,sp,256
   11418:	00048513          	mv	a0,s1
   1141c:	09c13823          	sd	t3,144(sp)
   11420:	09d13423          	sd	t4,136(sp)
   11424:	08513023          	sd	t0,128(sp)
   11428:	00c0a0ef          	jal	1b434 <__sprint_r>
   1142c:	ee0512e3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   11430:	09013e03          	ld	t3,144(sp)
   11434:	08813e83          	ld	t4,136(sp)
   11438:	08013283          	ld	t0,128(sp)
   1143c:	18010413          	add	s0,sp,384
   11440:	b84ff06f          	j	107c4 <_vfprintf_r+0x24c>
   11444:	00090c13          	mv	s8,s2
   11448:	00e13c23          	sd	a4,24(sp)
   1144c:	00900793          	li	a5,9
   11450:	6f67e063          	bltu	a5,s6,11b30 <_vfprintf_r+0x15b8>
   11454:	030b0b1b          	addw	s6,s6,48
   11458:	17610da3          	sb	s6,379(sp)
   1145c:	000c0913          	mv	s2,s8
   11460:	00100c93          	li	s9,1
   11464:	17b10a93          	add	s5,sp,379
   11468:	9bdff06f          	j	10e24 <_vfprintf_r+0x8ac>
   1146c:	00013583          	ld	a1,0(sp)
   11470:	10010613          	add	a2,sp,256
   11474:	00048513          	mv	a0,s1
   11478:	09c13423          	sd	t3,136(sp)
   1147c:	09d13023          	sd	t4,128(sp)
   11480:	7b5090ef          	jal	1b434 <__sprint_r>
   11484:	e80516e3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   11488:	11013d03          	ld	s10,272(sp)
   1148c:	08813e03          	ld	t3,136(sp)
   11490:	08013e83          	ld	t4,128(sp)
   11494:	18010413          	add	s0,sp,384
   11498:	ba4ff06f          	j	1083c <_vfprintf_r+0x2c4>
   1149c:	01000693          	li	a3,16
   114a0:	10812783          	lw	a5,264(sp)
   114a4:	00011a17          	auipc	s4,0x11
   114a8:	afca0a13          	add	s4,s4,-1284 # 21fa0 <blanks.1>
   114ac:	0726d263          	bge	a3,s2,11510 <_vfprintf_r+0xf98>
   114b0:	00013a83          	ld	s5,0(sp)
   114b4:	01000c13          	li	s8,16
   114b8:	00700c93          	li	s9,7
   114bc:	00c0006f          	j	114c8 <_vfprintf_r+0xf50>
   114c0:	ff09091b          	addw	s2,s2,-16
   114c4:	052c5663          	bge	s8,s2,11510 <_vfprintf_r+0xf98>
   114c8:	0017879b          	addw	a5,a5,1
   114cc:	01060613          	add	a2,a2,16
   114d0:	01443023          	sd	s4,0(s0)
   114d4:	01843423          	sd	s8,8(s0)
   114d8:	10c13823          	sd	a2,272(sp)
   114dc:	10f12423          	sw	a5,264(sp)
   114e0:	01040413          	add	s0,s0,16
   114e4:	fcfcdee3          	bge	s9,a5,114c0 <_vfprintf_r+0xf48>
   114e8:	10010613          	add	a2,sp,256
   114ec:	000a8593          	mv	a1,s5
   114f0:	00048513          	mv	a0,s1
   114f4:	741090ef          	jal	1b434 <__sprint_r>
   114f8:	e0051ce3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   114fc:	ff09091b          	addw	s2,s2,-16
   11500:	11013603          	ld	a2,272(sp)
   11504:	10812783          	lw	a5,264(sp)
   11508:	18010413          	add	s0,sp,384
   1150c:	fb2c4ee3          	blt	s8,s2,114c8 <_vfprintf_r+0xf50>
   11510:	0017869b          	addw	a3,a5,1
   11514:	01260633          	add	a2,a2,s2
   11518:	01443023          	sd	s4,0(s0)
   1151c:	01243423          	sd	s2,8(s0)
   11520:	10c13823          	sd	a2,272(sp)
   11524:	10d12423          	sw	a3,264(sp)
   11528:	00700793          	li	a5,7
   1152c:	b6d7d063          	bge	a5,a3,1088c <_vfprintf_r+0x314>
   11530:	00013583          	ld	a1,0(sp)
   11534:	10010613          	add	a2,sp,256
   11538:	00048513          	mv	a0,s1
   1153c:	6f9090ef          	jal	1b434 <__sprint_r>
   11540:	dc0518e3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   11544:	11013603          	ld	a2,272(sp)
   11548:	b44ff06f          	j	1088c <_vfprintf_r+0x314>
   1154c:	0d812503          	lw	a0,216(sp)
   11550:	64a05863          	blez	a0,11ba0 <_vfprintf_r+0x1628>
   11554:	02813783          	ld	a5,40(sp)
   11558:	00fa8733          	add	a4,s5,a5
   1155c:	08e13023          	sd	a4,128(sp)
   11560:	02013703          	ld	a4,32(sp)
   11564:	00070693          	mv	a3,a4
   11568:	3ce7c463          	blt	a5,a4,11930 <_vfprintf_r+0x13b8>
   1156c:	00068a1b          	sext.w	s4,a3
   11570:	03405663          	blez	s4,1159c <_vfprintf_r+0x1024>
   11574:	10812603          	lw	a2,264(sp)
   11578:	014d0d33          	add	s10,s10,s4
   1157c:	01543023          	sd	s5,0(s0)
   11580:	0016059b          	addw	a1,a2,1
   11584:	01443423          	sd	s4,8(s0)
   11588:	11a13823          	sd	s10,272(sp)
   1158c:	10b12423          	sw	a1,264(sp)
   11590:	00700613          	li	a2,7
   11594:	01040413          	add	s0,s0,16
   11598:	56b644e3          	blt	a2,a1,12300 <_vfprintf_r+0x1d88>
   1159c:	fffa4613          	not	a2,s4
   115a0:	02013783          	ld	a5,32(sp)
   115a4:	43f65613          	sra	a2,a2,0x3f
   115a8:	00ca76b3          	and	a3,s4,a2
   115ac:	40d78a3b          	subw	s4,a5,a3
   115b0:	4b404663          	bgtz	s4,11a5c <_vfprintf_r+0x14e4>
   115b4:	02013783          	ld	a5,32(sp)
   115b8:	40097693          	and	a3,s2,1024
   115bc:	00fa8ab3          	add	s5,s5,a5
   115c0:	100696e3          	bnez	a3,11ecc <_vfprintf_r+0x1954>
   115c4:	0d812683          	lw	a3,216(sp)
   115c8:	02813783          	ld	a5,40(sp)
   115cc:	00f6c663          	blt	a3,a5,115d8 <_vfprintf_r+0x1060>
   115d0:	00197613          	and	a2,s2,1
   115d4:	54060ce3          	beqz	a2,1232c <_vfprintf_r+0x1db4>
   115d8:	10812583          	lw	a1,264(sp)
   115dc:	04813783          	ld	a5,72(sp)
   115e0:	05013703          	ld	a4,80(sp)
   115e4:	0015851b          	addw	a0,a1,1
   115e8:	01a78633          	add	a2,a5,s10
   115ec:	00e43023          	sd	a4,0(s0)
   115f0:	00f43423          	sd	a5,8(s0)
   115f4:	10c13823          	sd	a2,272(sp)
   115f8:	10a12423          	sw	a0,264(sp)
   115fc:	00700593          	li	a1,7
   11600:	01040413          	add	s0,s0,16
   11604:	00a5d463          	bge	a1,a0,1160c <_vfprintf_r+0x1094>
   11608:	1d80106f          	j	127e0 <_vfprintf_r+0x2268>
   1160c:	08013783          	ld	a5,128(sp)
   11610:	41578c33          	sub	s8,a5,s5
   11614:	02813783          	ld	a5,40(sp)
   11618:	000c051b          	sext.w	a0,s8
   1161c:	40d785bb          	subw	a1,a5,a3
   11620:	00a5d463          	bge	a1,a0,11628 <_vfprintf_r+0x10b0>
   11624:	00058c13          	mv	s8,a1
   11628:	000c0c1b          	sext.w	s8,s8
   1162c:	03805863          	blez	s8,1165c <_vfprintf_r+0x10e4>
   11630:	10812683          	lw	a3,264(sp)
   11634:	01860633          	add	a2,a2,s8
   11638:	01543023          	sd	s5,0(s0)
   1163c:	0016869b          	addw	a3,a3,1
   11640:	01843423          	sd	s8,8(s0)
   11644:	10c13823          	sd	a2,272(sp)
   11648:	10d12423          	sw	a3,264(sp)
   1164c:	00700793          	li	a5,7
   11650:	01040413          	add	s0,s0,16
   11654:	00d7d463          	bge	a5,a3,1165c <_vfprintf_r+0x10e4>
   11658:	2300106f          	j	12888 <_vfprintf_r+0x2310>
   1165c:	fffc4793          	not	a5,s8
   11660:	43f7d793          	sra	a5,a5,0x3f
   11664:	00fc7c33          	and	s8,s8,a5
   11668:	41858c3b          	subw	s8,a1,s8
   1166c:	a1805863          	blez	s8,1087c <_vfprintf_r+0x304>
   11670:	01000693          	li	a3,16
   11674:	10812783          	lw	a5,264(sp)
   11678:	00011d17          	auipc	s10,0x11
   1167c:	918d0d13          	add	s10,s10,-1768 # 21f90 <zeroes.0>
   11680:	5f86d063          	bge	a3,s8,11c60 <_vfprintf_r+0x16e8>
   11684:	00013a83          	ld	s5,0(sp)
   11688:	01000c93          	li	s9,16
   1168c:	00700a13          	li	s4,7
   11690:	00c0006f          	j	1169c <_vfprintf_r+0x1124>
   11694:	ff0c0c1b          	addw	s8,s8,-16
   11698:	5d8cd463          	bge	s9,s8,11c60 <_vfprintf_r+0x16e8>
   1169c:	0017879b          	addw	a5,a5,1
   116a0:	01060613          	add	a2,a2,16
   116a4:	01a43023          	sd	s10,0(s0)
   116a8:	01943423          	sd	s9,8(s0)
   116ac:	10c13823          	sd	a2,272(sp)
   116b0:	10f12423          	sw	a5,264(sp)
   116b4:	01040413          	add	s0,s0,16
   116b8:	fcfa5ee3          	bge	s4,a5,11694 <_vfprintf_r+0x111c>
   116bc:	10010613          	add	a2,sp,256
   116c0:	000a8593          	mv	a1,s5
   116c4:	00048513          	mv	a0,s1
   116c8:	56d090ef          	jal	1b434 <__sprint_r>
   116cc:	c40512e3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   116d0:	11013603          	ld	a2,272(sp)
   116d4:	10812783          	lw	a5,264(sp)
   116d8:	18010413          	add	s0,sp,384
   116dc:	fb9ff06f          	j	11694 <_vfprintf_r+0x111c>
   116e0:	00197613          	and	a2,s2,1
   116e4:	c2061063          	bnez	a2,10b04 <_vfprintf_r+0x58c>
   116e8:	10812603          	lw	a2,264(sp)
   116ec:	001d0c93          	add	s9,s10,1
   116f0:	01543023          	sd	s5,0(s0)
   116f4:	0016079b          	addw	a5,a2,1
   116f8:	00d43423          	sd	a3,8(s0)
   116fc:	10f12423          	sw	a5,264(sp)
   11700:	0007841b          	sext.w	s0,a5
   11704:	11913823          	sd	s9,272(sp)
   11708:	00700793          	li	a5,7
   1170c:	ca87d063          	bge	a5,s0,10bac <_vfprintf_r+0x634>
   11710:	00013583          	ld	a1,0(sp)
   11714:	10010613          	add	a2,sp,256
   11718:	00048513          	mv	a0,s1
   1171c:	519090ef          	jal	1b434 <__sprint_r>
   11720:	be0518e3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   11724:	11013c83          	ld	s9,272(sp)
   11728:	10812403          	lw	s0,264(sp)
   1172c:	18010c13          	add	s8,sp,384
   11730:	c7cff06f          	j	10bac <_vfprintf_r+0x634>
   11734:	02813703          	ld	a4,40(sp)
   11738:	00100793          	li	a5,1
   1173c:	c6e7d863          	bge	a5,a4,10bac <_vfprintf_r+0x634>
   11740:	01100793          	li	a5,17
   11744:	00011d17          	auipc	s10,0x11
   11748:	84cd0d13          	add	s10,s10,-1972 # 21f90 <zeroes.0>
   1174c:	5ee7de63          	bge	a5,a4,11d48 <_vfprintf_r+0x17d0>
   11750:	000d0793          	mv	a5,s10
   11754:	01000813          	li	a6,16
   11758:	000a0d13          	mv	s10,s4
   1175c:	00700a93          	li	s5,7
   11760:	00090a13          	mv	s4,s2
   11764:	00078913          	mv	s2,a5
   11768:	00c0006f          	j	11774 <_vfprintf_r+0x11fc>
   1176c:	ff0d0d1b          	addw	s10,s10,-16
   11770:	5da85463          	bge	a6,s10,11d38 <_vfprintf_r+0x17c0>
   11774:	0014041b          	addw	s0,s0,1
   11778:	010c8c93          	add	s9,s9,16
   1177c:	012c3023          	sd	s2,0(s8)
   11780:	010c3423          	sd	a6,8(s8)
   11784:	11913823          	sd	s9,272(sp)
   11788:	10812423          	sw	s0,264(sp)
   1178c:	010c0c13          	add	s8,s8,16
   11790:	fc8adee3          	bge	s5,s0,1176c <_vfprintf_r+0x11f4>
   11794:	00013583          	ld	a1,0(sp)
   11798:	10010613          	add	a2,sp,256
   1179c:	00048513          	mv	a0,s1
   117a0:	495090ef          	jal	1b434 <__sprint_r>
   117a4:	b60516e3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   117a8:	11013c83          	ld	s9,272(sp)
   117ac:	10812403          	lw	s0,264(sp)
   117b0:	18010c13          	add	s8,sp,384
   117b4:	01000813          	li	a6,16
   117b8:	fb5ff06f          	j	1176c <_vfprintf_r+0x11f4>
   117bc:	00013583          	ld	a1,0(sp)
   117c0:	10010613          	add	a2,sp,256
   117c4:	00048513          	mv	a0,s1
   117c8:	09d13023          	sd	t4,128(sp)
   117cc:	469090ef          	jal	1b434 <__sprint_r>
   117d0:	b40510e3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   117d4:	11013d03          	ld	s10,272(sp)
   117d8:	08013e83          	ld	t4,128(sp)
   117dc:	18010413          	add	s0,sp,384
   117e0:	86cff06f          	j	1084c <_vfprintf_r+0x2d4>
   117e4:	01097793          	and	a5,s2,16
   117e8:	0e079863          	bnez	a5,118d8 <_vfprintf_r+0x1360>
   117ec:	01813683          	ld	a3,24(sp)
   117f0:	04097793          	and	a5,s2,64
   117f4:	0006ab03          	lw	s6,0(a3)
   117f8:	5e078c63          	beqz	a5,11df0 <_vfprintf_r+0x1878>
   117fc:	010b1b1b          	sllw	s6,s6,0x10
   11800:	410b5b1b          	sraw	s6,s6,0x10
   11804:	000b0793          	mv	a5,s6
   11808:	e807d063          	bgez	a5,10e88 <_vfprintf_r+0x910>
   1180c:	00e13c23          	sd	a4,24(sp)
   11810:	41600b33          	neg	s6,s6
   11814:	00090c13          	mv	s8,s2
   11818:	02d00713          	li	a4,45
   1181c:	00100793          	li	a5,1
   11820:	dd8ff06f          	j	10df8 <_vfprintf_r+0x880>
   11824:	01097793          	and	a5,s2,16
   11828:	0a079263          	bnez	a5,118cc <_vfprintf_r+0x1354>
   1182c:	01813683          	ld	a3,24(sp)
   11830:	04097793          	and	a5,s2,64
   11834:	0006ab03          	lw	s6,0(a3)
   11838:	58078c63          	beqz	a5,11dd0 <_vfprintf_r+0x1858>
   1183c:	030b1b13          	sll	s6,s6,0x30
   11840:	030b5b13          	srl	s6,s6,0x30
   11844:	e94ff06f          	j	10ed8 <_vfprintf_r+0x960>
   11848:	010c7793          	and	a5,s8,16
   1184c:	06079663          	bnez	a5,118b8 <_vfprintf_r+0x1340>
   11850:	01813683          	ld	a3,24(sp)
   11854:	040c7793          	and	a5,s8,64
   11858:	0006ab03          	lw	s6,0(a3)
   1185c:	5a078663          	beqz	a5,11e08 <_vfprintf_r+0x1890>
   11860:	030b1b13          	sll	s6,s6,0x30
   11864:	030b5b13          	srl	s6,s6,0x30
   11868:	00e13c23          	sd	a4,24(sp)
   1186c:	00100793          	li	a5,1
   11870:	d84ff06f          	j	10df4 <_vfprintf_r+0x87c>
   11874:	00000c93          	li	s9,0
   11878:	17c10a93          	add	s5,sp,380
   1187c:	da8ff06f          	j	10e24 <_vfprintf_r+0x8ac>
   11880:	00197793          	and	a5,s2,1
   11884:	000d0613          	mv	a2,s10
   11888:	00079463          	bnez	a5,11890 <_vfprintf_r+0x1318>
   1188c:	ff1fe06f          	j	1087c <_vfprintf_r+0x304>
   11890:	f6cff06f          	j	10ffc <_vfprintf_r+0xa84>
   11894:	000a0e13          	mv	t3,s4
   11898:	dd4ff06f          	j	10e6c <_vfprintf_r+0x8f4>
   1189c:	0009ce83          	lbu	t4,0(s3)
   118a0:	00f13c23          	sd	a5,24(sp)
   118a4:	e69fe06f          	j	1070c <_vfprintf_r+0x194>
   118a8:	03000793          	li	a5,48
   118ac:	16f10da3          	sb	a5,379(sp)
   118b0:	17b10a93          	add	s5,sp,379
   118b4:	d70ff06f          	j	10e24 <_vfprintf_r+0x8ac>
   118b8:	01813783          	ld	a5,24(sp)
   118bc:	00e13c23          	sd	a4,24(sp)
   118c0:	0007bb03          	ld	s6,0(a5)
   118c4:	00100793          	li	a5,1
   118c8:	d2cff06f          	j	10df4 <_vfprintf_r+0x87c>
   118cc:	01813783          	ld	a5,24(sp)
   118d0:	0007bb03          	ld	s6,0(a5)
   118d4:	e04ff06f          	j	10ed8 <_vfprintf_r+0x960>
   118d8:	01813783          	ld	a5,24(sp)
   118dc:	0007b783          	ld	a5,0(a5)
   118e0:	00078b13          	mv	s6,a5
   118e4:	da0ff06f          	j	10e84 <_vfprintf_r+0x90c>
   118e8:	01097793          	and	a5,s2,16
   118ec:	e2079063          	bnez	a5,10f0c <_vfprintf_r+0x994>
   118f0:	04097793          	and	a5,s2,64
   118f4:	24079ee3          	bnez	a5,12350 <_vfprintf_r+0x1dd8>
   118f8:	20097913          	and	s2,s2,512
   118fc:	00813783          	ld	a5,8(sp)
   11900:	00091463          	bnez	s2,11908 <_vfprintf_r+0x1390>
   11904:	1c00106f          	j	12ac4 <_vfprintf_r+0x254c>
   11908:	00f70023          	sb	a5,0(a4)
   1190c:	e08ff06f          	j	10f14 <_vfprintf_r+0x99c>
   11910:	01813783          	ld	a5,24(sp)
   11914:	00f78a13          	add	s4,a5,15
   11918:	ff0a7a13          	and	s4,s4,-16
   1191c:	010a0793          	add	a5,s4,16
   11920:	000a3703          	ld	a4,0(s4)
   11924:	008a3583          	ld	a1,8(s4)
   11928:	00f13c23          	sd	a5,24(sp)
   1192c:	8c4ff06f          	j	109f0 <_vfprintf_r+0x478>
   11930:	00078693          	mv	a3,a5
   11934:	00068a1b          	sext.w	s4,a3
   11938:	c3404ee3          	bgtz	s4,11574 <_vfprintf_r+0xffc>
   1193c:	c61ff06f          	j	1159c <_vfprintf_r+0x1024>
   11940:	00013583          	ld	a1,0(sp)
   11944:	10010613          	add	a2,sp,256
   11948:	00048513          	mv	a0,s1
   1194c:	09c13423          	sd	t3,136(sp)
   11950:	09d13023          	sd	t4,128(sp)
   11954:	2e1090ef          	jal	1b434 <__sprint_r>
   11958:	9a051ce3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   1195c:	11013d03          	ld	s10,272(sp)
   11960:	08813e03          	ld	t3,136(sp)
   11964:	08013e83          	ld	t4,128(sp)
   11968:	18010413          	add	s0,sp,384
   1196c:	ed9fe06f          	j	10844 <_vfprintf_r+0x2cc>
   11970:	00010797          	auipc	a5,0x10
   11974:	3e078793          	add	a5,a5,992 # 21d50 <__clzdi2+0xa0>
   11978:	000a0e13          	mv	t3,s4
   1197c:	04f13c23          	sd	a5,88(sp)
   11980:	01813683          	ld	a3,24(sp)
   11984:	02097793          	and	a5,s2,32
   11988:	00868713          	add	a4,a3,8
   1198c:	14078463          	beqz	a5,11ad4 <_vfprintf_r+0x155c>
   11990:	0006bb03          	ld	s6,0(a3)
   11994:	00197793          	and	a5,s2,1
   11998:	00078e63          	beqz	a5,119b4 <_vfprintf_r+0x143c>
   1199c:	000b0c63          	beqz	s6,119b4 <_vfprintf_r+0x143c>
   119a0:	00296913          	or	s2,s2,2
   119a4:	03000793          	li	a5,48
   119a8:	0cf10823          	sb	a5,208(sp)
   119ac:	0dd108a3          	sb	t4,209(sp)
   119b0:	0009091b          	sext.w	s2,s2
   119b4:	bff97c13          	and	s8,s2,-1025
   119b8:	000c0c1b          	sext.w	s8,s8
   119bc:	00e13c23          	sd	a4,24(sp)
   119c0:	00200793          	li	a5,2
   119c4:	c30ff06f          	j	10df4 <_vfprintf_r+0x87c>
   119c8:	000a0e13          	mv	t3,s4
   119cc:	00090c13          	mv	s8,s2
   119d0:	c08ff06f          	j	10dd8 <_vfprintf_r+0x860>
   119d4:	20096913          	or	s2,s2,512
   119d8:	0019ce83          	lbu	t4,1(s3)
   119dc:	0009091b          	sext.w	s2,s2
   119e0:	00198993          	add	s3,s3,1
   119e4:	d29fe06f          	j	1070c <_vfprintf_r+0x194>
   119e8:	00010797          	auipc	a5,0x10
   119ec:	38078793          	add	a5,a5,896 # 21d68 <__clzdi2+0xb8>
   119f0:	000a0e13          	mv	t3,s4
   119f4:	04f13c23          	sd	a5,88(sp)
   119f8:	f89ff06f          	j	11980 <_vfprintf_r+0x1408>
   119fc:	00013583          	ld	a1,0(sp)
   11a00:	10010613          	add	a2,sp,256
   11a04:	00048513          	mv	a0,s1
   11a08:	22d090ef          	jal	1b434 <__sprint_r>
   11a0c:	900512e3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   11a10:	11013603          	ld	a2,272(sp)
   11a14:	18010413          	add	s0,sp,384
   11a18:	e14ff06f          	j	1102c <_vfprintf_r+0xab4>
   11a1c:	000a0e13          	mv	t3,s4
   11a20:	ca4ff06f          	j	10ec4 <_vfprintf_r+0x94c>
   11a24:	02096913          	or	s2,s2,32
   11a28:	0019ce83          	lbu	t4,1(s3)
   11a2c:	0009091b          	sext.w	s2,s2
   11a30:	00198993          	add	s3,s3,1
   11a34:	cd9fe06f          	j	1070c <_vfprintf_r+0x194>
   11a38:	00600793          	li	a5,6
   11a3c:	000e0693          	mv	a3,t3
   11a40:	0fc7e2e3          	bltu	a5,t3,12324 <_vfprintf_r+0x1dac>
   11a44:	00068c9b          	sext.w	s9,a3
   11a48:	000c8b13          	mv	s6,s9
   11a4c:	01413c23          	sd	s4,24(sp)
   11a50:	00010a97          	auipc	s5,0x10
   11a54:	330a8a93          	add	s5,s5,816 # 21d80 <__clzdi2+0xd0>
   11a58:	d3dfe06f          	j	10794 <_vfprintf_r+0x21c>
   11a5c:	01000513          	li	a0,16
   11a60:	000d0613          	mv	a2,s10
   11a64:	10812583          	lw	a1,264(sp)
   11a68:	00010d17          	auipc	s10,0x10
   11a6c:	528d0d13          	add	s10,s10,1320 # 21f90 <zeroes.0>
   11a70:	3f455063          	bge	a0,s4,11e50 <_vfprintf_r+0x18d8>
   11a74:	00013c03          	ld	s8,0(sp)
   11a78:	01000813          	li	a6,16
   11a7c:	00700c93          	li	s9,7
   11a80:	00c0006f          	j	11a8c <_vfprintf_r+0x1514>
   11a84:	ff0a0a1b          	addw	s4,s4,-16
   11a88:	3d485463          	bge	a6,s4,11e50 <_vfprintf_r+0x18d8>
   11a8c:	0015859b          	addw	a1,a1,1
   11a90:	01060613          	add	a2,a2,16
   11a94:	01a43023          	sd	s10,0(s0)
   11a98:	01043423          	sd	a6,8(s0)
   11a9c:	10c13823          	sd	a2,272(sp)
   11aa0:	10b12423          	sw	a1,264(sp)
   11aa4:	01040413          	add	s0,s0,16
   11aa8:	fcbcdee3          	bge	s9,a1,11a84 <_vfprintf_r+0x150c>
   11aac:	10010613          	add	a2,sp,256
   11ab0:	000c0593          	mv	a1,s8
   11ab4:	00048513          	mv	a0,s1
   11ab8:	17d090ef          	jal	1b434 <__sprint_r>
   11abc:	84051ae3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   11ac0:	11013603          	ld	a2,272(sp)
   11ac4:	10812583          	lw	a1,264(sp)
   11ac8:	18010413          	add	s0,sp,384
   11acc:	01000813          	li	a6,16
   11ad0:	fb5ff06f          	j	11a84 <_vfprintf_r+0x150c>
   11ad4:	01097793          	and	a5,s2,16
   11ad8:	14078663          	beqz	a5,11c24 <_vfprintf_r+0x16ac>
   11adc:	01813783          	ld	a5,24(sp)
   11ae0:	0007bb03          	ld	s6,0(a5)
   11ae4:	eb1ff06f          	j	11994 <_vfprintf_r+0x141c>
   11ae8:	00013583          	ld	a1,0(sp)
   11aec:	10010613          	add	a2,sp,256
   11af0:	00048513          	mv	a0,s1
   11af4:	141090ef          	jal	1b434 <__sprint_r>
   11af8:	80051ce3          	bnez	a0,11310 <_vfprintf_r+0xd98>
   11afc:	11013d03          	ld	s10,272(sp)
   11b00:	10812683          	lw	a3,264(sp)
   11b04:	18010c13          	add	s8,sp,384
   11b08:	82cff06f          	j	10b34 <_vfprintf_r+0x5bc>
   11b0c:	00013583          	ld	a1,0(sp)
   11b10:	10010613          	add	a2,sp,256
   11b14:	00048513          	mv	a0,s1
   11b18:	11d090ef          	jal	1b434 <__sprint_r>
   11b1c:	fe051a63          	bnez	a0,11310 <_vfprintf_r+0xd98>
   11b20:	11013c83          	ld	s9,272(sp)
   11b24:	10812403          	lw	s0,264(sp)
   11b28:	18010c13          	add	s8,sp,384
   11b2c:	838ff06f          	j	10b64 <_vfprintf_r+0x5ec>
   11b30:	17c10a13          	add	s4,sp,380
   11b34:	06813803          	ld	a6,104(sp)
   11b38:	400c7c93          	and	s9,s8,1024
   11b3c:	00000693          	li	a3,0
   11b40:	000a0593          	mv	a1,s4
   11b44:	00a00913          	li	s2,10
   11b48:	00900d13          	li	s10,9
   11b4c:	0ff00713          	li	a4,255
   11b50:	0140006f          	j	11b64 <_vfprintf_r+0x15ec>
   11b54:	032b57b3          	divu	a5,s6,s2
   11b58:	036d7a63          	bgeu	s10,s6,11b8c <_vfprintf_r+0x1614>
   11b5c:	00078b13          	mv	s6,a5
   11b60:	000a8593          	mv	a1,s5
   11b64:	fff58a93          	add	s5,a1,-1
   11b68:	0016869b          	addw	a3,a3,1
   11b6c:	032b77b3          	remu	a5,s6,s2
   11b70:	0307879b          	addw	a5,a5,48
   11b74:	fef58fa3          	sb	a5,-1(a1)
   11b78:	fc0c8ee3          	beqz	s9,11b54 <_vfprintf_r+0x15dc>
   11b7c:	00084783          	lbu	a5,0(a6)
   11b80:	fcf69ae3          	bne	a3,a5,11b54 <_vfprintf_r+0x15dc>
   11b84:	fce788e3          	beq	a5,a4,11b54 <_vfprintf_r+0x15dc>
   11b88:	2f6d6a63          	bltu	s10,s6,11e7c <_vfprintf_r+0x1904>
   11b8c:	02d13423          	sd	a3,40(sp)
   11b90:	07013423          	sd	a6,104(sp)
   11b94:	415a0cbb          	subw	s9,s4,s5
   11b98:	000c0913          	mv	s2,s8
   11b9c:	a88ff06f          	j	10e24 <_vfprintf_r+0x8ac>
   11ba0:	10812683          	lw	a3,264(sp)
   11ba4:	00010597          	auipc	a1,0x10
   11ba8:	1e458593          	add	a1,a1,484 # 21d88 <__clzdi2+0xd8>
   11bac:	00b43023          	sd	a1,0(s0)
   11bb0:	0016869b          	addw	a3,a3,1
   11bb4:	00100593          	li	a1,1
   11bb8:	001d0613          	add	a2,s10,1
   11bbc:	00b43423          	sd	a1,8(s0)
   11bc0:	10d12423          	sw	a3,264(sp)
   11bc4:	0006859b          	sext.w	a1,a3
   11bc8:	10c13823          	sd	a2,272(sp)
   11bcc:	00700693          	li	a3,7
   11bd0:	01040413          	add	s0,s0,16
   11bd4:	50b6ca63          	blt	a3,a1,120e8 <_vfprintf_r+0x1b70>
   11bd8:	18051c63          	bnez	a0,11d70 <_vfprintf_r+0x17f8>
   11bdc:	02813783          	ld	a5,40(sp)
   11be0:	00197693          	and	a3,s2,1
   11be4:	00d7e6b3          	or	a3,a5,a3
   11be8:	00069463          	bnez	a3,11bf0 <_vfprintf_r+0x1678>
   11bec:	c91fe06f          	j	1087c <_vfprintf_r+0x304>
   11bf0:	10812683          	lw	a3,264(sp)
   11bf4:	04813783          	ld	a5,72(sp)
   11bf8:	05013703          	ld	a4,80(sp)
   11bfc:	0016859b          	addw	a1,a3,1
   11c00:	00c78633          	add	a2,a5,a2
   11c04:	00e43023          	sd	a4,0(s0)
   11c08:	00f43423          	sd	a5,8(s0)
   11c0c:	10c13823          	sd	a2,272(sp)
   11c10:	10b12423          	sw	a1,264(sp)
   11c14:	00700693          	li	a3,7
   11c18:	78b6ca63          	blt	a3,a1,123ac <_vfprintf_r+0x1e34>
   11c1c:	01040413          	add	s0,s0,16
   11c20:	1840006f          	j	11da4 <_vfprintf_r+0x182c>
   11c24:	01813683          	ld	a3,24(sp)
   11c28:	04097793          	and	a5,s2,64
   11c2c:	0006ab03          	lw	s6,0(a3)
   11c30:	1a078863          	beqz	a5,11de0 <_vfprintf_r+0x1868>
   11c34:	030b1b13          	sll	s6,s6,0x30
   11c38:	030b5b13          	srl	s6,s6,0x30
   11c3c:	d59ff06f          	j	11994 <_vfprintf_r+0x141c>
   11c40:	00013583          	ld	a1,0(sp)
   11c44:	10010613          	add	a2,sp,256
   11c48:	00048513          	mv	a0,s1
   11c4c:	7e8090ef          	jal	1b434 <__sprint_r>
   11c50:	ec051063          	bnez	a0,11310 <_vfprintf_r+0xd98>
   11c54:	11013d03          	ld	s10,272(sp)
   11c58:	18010413          	add	s0,sp,384
   11c5c:	b94ff06f          	j	10ff0 <_vfprintf_r+0xa78>
   11c60:	0017869b          	addw	a3,a5,1
   11c64:	01a43023          	sd	s10,0(s0)
   11c68:	01843423          	sd	s8,8(s0)
   11c6c:	01860633          	add	a2,a2,s8
   11c70:	10c13823          	sd	a2,272(sp)
   11c74:	10d12423          	sw	a3,264(sp)
   11c78:	00700793          	li	a5,7
   11c7c:	00d7c463          	blt	a5,a3,11c84 <_vfprintf_r+0x170c>
   11c80:	bf9fe06f          	j	10878 <_vfprintf_r+0x300>
   11c84:	f55fe06f          	j	10bd8 <_vfprintf_r+0x660>
   11c88:	00e13c23          	sd	a4,24(sp)
   11c8c:	fc0ff06f          	j	1144c <_vfprintf_r+0xed4>
   11c90:	0f013503          	ld	a0,240(sp)
   11c94:	0f813583          	ld	a1,248(sp)
   11c98:	00000613          	li	a2,0
   11c9c:	00000693          	li	a3,0
   11ca0:	3ec0e0ef          	jal	2008c <__letf2>
   11ca4:	01013e83          	ld	t4,16(sp)
   11ca8:	320544e3          	bltz	a0,127d0 <_vfprintf_r+0x2258>
   11cac:	0cf14603          	lbu	a2,207(sp)
   11cb0:	04700713          	li	a4,71
   11cb4:	00010a97          	auipc	s5,0x10
   11cb8:	07ca8a93          	add	s5,s5,124 # 21d30 <__clzdi2+0x80>
   11cbc:	45d74863          	blt	a4,t4,1210c <_vfprintf_r+0x1b94>
   11cc0:	f7f97913          	and	s2,s2,-129
   11cc4:	00013823          	sd	zero,16(sp)
   11cc8:	02013c23          	sd	zero,56(sp)
   11ccc:	02013823          	sd	zero,48(sp)
   11cd0:	02013023          	sd	zero,32(sp)
   11cd4:	0009091b          	sext.w	s2,s2
   11cd8:	00300b13          	li	s6,3
   11cdc:	00300c93          	li	s9,3
   11ce0:	00000e13          	li	t3,0
   11ce4:	00060463          	beqz	a2,11cec <_vfprintf_r+0x1774>
   11ce8:	fc9fe06f          	j	10cb0 <_vfprintf_r+0x738>
   11cec:	abdfe06f          	j	107a8 <_vfprintf_r+0x230>
   11cf0:	000a8513          	mv	a0,s5
   11cf4:	09d13023          	sd	t4,128(sp)
   11cf8:	5fd060ef          	jal	18af4 <strlen>
   11cfc:	00050c9b          	sext.w	s9,a0
   11d00:	0cf14603          	lbu	a2,207(sp)
   11d04:	fffcc713          	not	a4,s9
   11d08:	43f75713          	sra	a4,a4,0x3f
   11d0c:	01413c23          	sd	s4,24(sp)
   11d10:	00013823          	sd	zero,16(sp)
   11d14:	02013c23          	sd	zero,56(sp)
   11d18:	02013823          	sd	zero,48(sp)
   11d1c:	02013023          	sd	zero,32(sp)
   11d20:	08013e83          	ld	t4,128(sp)
   11d24:	01977b33          	and	s6,a4,s9
   11d28:	00000e13          	li	t3,0
   11d2c:	00060463          	beqz	a2,11d34 <_vfprintf_r+0x17bc>
   11d30:	f81fe06f          	j	10cb0 <_vfprintf_r+0x738>
   11d34:	a75fe06f          	j	107a8 <_vfprintf_r+0x230>
   11d38:	00090793          	mv	a5,s2
   11d3c:	000a0913          	mv	s2,s4
   11d40:	000d0a13          	mv	s4,s10
   11d44:	00078d13          	mv	s10,a5
   11d48:	0014041b          	addw	s0,s0,1
   11d4c:	014c8cb3          	add	s9,s9,s4
   11d50:	01ac3023          	sd	s10,0(s8)
   11d54:	014c3423          	sd	s4,8(s8)
   11d58:	11913823          	sd	s9,272(sp)
   11d5c:	10812423          	sw	s0,264(sp)
   11d60:	00700793          	li	a5,7
   11d64:	0087c463          	blt	a5,s0,11d6c <_vfprintf_r+0x17f4>
   11d68:	e41fe06f          	j	10ba8 <_vfprintf_r+0x630>
   11d6c:	9a5ff06f          	j	11710 <_vfprintf_r+0x1198>
   11d70:	10812683          	lw	a3,264(sp)
   11d74:	04813783          	ld	a5,72(sp)
   11d78:	05013703          	ld	a4,80(sp)
   11d7c:	0016859b          	addw	a1,a3,1
   11d80:	00c78633          	add	a2,a5,a2
   11d84:	00e43023          	sd	a4,0(s0)
   11d88:	00f43423          	sd	a5,8(s0)
   11d8c:	10c13823          	sd	a2,272(sp)
   11d90:	10b12423          	sw	a1,264(sp)
   11d94:	00700693          	li	a3,7
   11d98:	01040413          	add	s0,s0,16
   11d9c:	60b6c863          	blt	a3,a1,123ac <_vfprintf_r+0x1e34>
   11da0:	320540e3          	bltz	a0,128c0 <_vfprintf_r+0x2348>
   11da4:	02813783          	ld	a5,40(sp)
   11da8:	0015869b          	addw	a3,a1,1
   11dac:	01543023          	sd	s5,0(s0)
   11db0:	00c78633          	add	a2,a5,a2
   11db4:	00f43423          	sd	a5,8(s0)
   11db8:	10c13823          	sd	a2,272(sp)
   11dbc:	10d12423          	sw	a3,264(sp)
   11dc0:	00700793          	li	a5,7
   11dc4:	00d7c463          	blt	a5,a3,11dcc <_vfprintf_r+0x1854>
   11dc8:	ab1fe06f          	j	10878 <_vfprintf_r+0x300>
   11dcc:	e0dfe06f          	j	10bd8 <_vfprintf_r+0x660>
   11dd0:	20097793          	and	a5,s2,512
   11dd4:	5a078863          	beqz	a5,12384 <_vfprintf_r+0x1e0c>
   11dd8:	0ffb7b13          	zext.b	s6,s6
   11ddc:	8fcff06f          	j	10ed8 <_vfprintf_r+0x960>
   11de0:	20097793          	and	a5,s2,512
   11de4:	58078a63          	beqz	a5,12378 <_vfprintf_r+0x1e00>
   11de8:	0ffb7b13          	zext.b	s6,s6
   11dec:	ba9ff06f          	j	11994 <_vfprintf_r+0x141c>
   11df0:	20097793          	and	a5,s2,512
   11df4:	56078e63          	beqz	a5,12370 <_vfprintf_r+0x1df8>
   11df8:	018b1b1b          	sllw	s6,s6,0x18
   11dfc:	418b5b1b          	sraw	s6,s6,0x18
   11e00:	000b0793          	mv	a5,s6
   11e04:	880ff06f          	j	10e84 <_vfprintf_r+0x90c>
   11e08:	200c7793          	and	a5,s8,512
   11e0c:	54078863          	beqz	a5,1235c <_vfprintf_r+0x1de4>
   11e10:	0ffb7b13          	zext.b	s6,s6
   11e14:	00e13c23          	sd	a4,24(sp)
   11e18:	00100793          	li	a5,1
   11e1c:	fd9fe06f          	j	10df4 <_vfprintf_r+0x87c>
   11e20:	0f813783          	ld	a5,248(sp)
   11e24:	5807d063          	bgez	a5,123a4 <_vfprintf_r+0x1e2c>
   11e28:	02d00793          	li	a5,45
   11e2c:	0cf107a3          	sb	a5,207(sp)
   11e30:	02d00613          	li	a2,45
   11e34:	04700713          	li	a4,71
   11e38:	00010a97          	auipc	s5,0x10
   11e3c:	f08a8a93          	add	s5,s5,-248 # 21d40 <__clzdi2+0x90>
   11e40:	e9d750e3          	bge	a4,t4,11cc0 <_vfprintf_r+0x1748>
   11e44:	00010a97          	auipc	s5,0x10
   11e48:	f04a8a93          	add	s5,s5,-252 # 21d48 <__clzdi2+0x98>
   11e4c:	e75ff06f          	j	11cc0 <_vfprintf_r+0x1748>
   11e50:	0015851b          	addw	a0,a1,1
   11e54:	00ca0633          	add	a2,s4,a2
   11e58:	01a43023          	sd	s10,0(s0)
   11e5c:	01443423          	sd	s4,8(s0)
   11e60:	10c13823          	sd	a2,272(sp)
   11e64:	10a12423          	sw	a0,264(sp)
   11e68:	00700693          	li	a3,7
   11e6c:	7aa6c863          	blt	a3,a0,1261c <_vfprintf_r+0x20a4>
   11e70:	01040413          	add	s0,s0,16
   11e74:	00060d13          	mv	s10,a2
   11e78:	f3cff06f          	j	115b4 <_vfprintf_r+0x103c>
   11e7c:	07013783          	ld	a5,112(sp)
   11e80:	07813583          	ld	a1,120(sp)
   11e84:	03c13423          	sd	t3,40(sp)
   11e88:	40fa8ab3          	sub	s5,s5,a5
   11e8c:	00078613          	mv	a2,a5
   11e90:	000a8513          	mv	a0,s5
   11e94:	03d13023          	sd	t4,32(sp)
   11e98:	01013823          	sd	a6,16(sp)
   11e9c:	525060ef          	jal	18bc0 <strncpy>
   11ea0:	01013803          	ld	a6,16(sp)
   11ea4:	00a00793          	li	a5,10
   11ea8:	02fb57b3          	divu	a5,s6,a5
   11eac:	00184683          	lbu	a3,1(a6)
   11eb0:	02013e83          	ld	t4,32(sp)
   11eb4:	02813e03          	ld	t3,40(sp)
   11eb8:	00d036b3          	snez	a3,a3
   11ebc:	00d80833          	add	a6,a6,a3
   11ec0:	0ff00713          	li	a4,255
   11ec4:	00000693          	li	a3,0
   11ec8:	c95ff06f          	j	11b5c <_vfprintf_r+0x15e4>
   11ecc:	00040793          	mv	a5,s0
   11ed0:	03013403          	ld	s0,48(sp)
   11ed4:	09313423          	sd	s3,136(sp)
   11ed8:	09713c23          	sd	s7,152(sp)
   11edc:	03613823          	sd	s6,48(sp)
   11ee0:	09213823          	sd	s2,144(sp)
   11ee4:	000a8b13          	mv	s6,s5
   11ee8:	000d0693          	mv	a3,s10
   11eec:	07813983          	ld	s3,120(sp)
   11ef0:	07013b83          	ld	s7,112(sp)
   11ef4:	06813a83          	ld	s5,104(sp)
   11ef8:	00013c03          	ld	s8,0(sp)
   11efc:	03813d03          	ld	s10,56(sp)
   11f00:	00700893          	li	a7,7
   11f04:	01000a13          	li	s4,16
   11f08:	00010c97          	auipc	s9,0x10
   11f0c:	088c8c93          	add	s9,s9,136 # 21f90 <zeroes.0>
   11f10:	08040e63          	beqz	s0,11fac <_vfprintf_r+0x1a34>
   11f14:	160d0c63          	beqz	s10,1208c <_vfprintf_r+0x1b14>
   11f18:	fffd0d1b          	addw	s10,s10,-1
   11f1c:	10812703          	lw	a4,264(sp)
   11f20:	017686b3          	add	a3,a3,s7
   11f24:	0137b023          	sd	s3,0(a5)
   11f28:	0017061b          	addw	a2,a4,1
   11f2c:	0177b423          	sd	s7,8(a5)
   11f30:	10d13823          	sd	a3,272(sp)
   11f34:	10c12423          	sw	a2,264(sp)
   11f38:	01078793          	add	a5,a5,16
   11f3c:	14c8ce63          	blt	a7,a2,12098 <_vfprintf_r+0x1b20>
   11f40:	08013703          	ld	a4,128(sp)
   11f44:	000ac603          	lbu	a2,0(s5)
   11f48:	41670733          	sub	a4,a4,s6
   11f4c:	0007059b          	sext.w	a1,a4
   11f50:	0006081b          	sext.w	a6,a2
   11f54:	00b65463          	bge	a2,a1,11f5c <_vfprintf_r+0x19e4>
   11f58:	00080713          	mv	a4,a6
   11f5c:	0007091b          	sext.w	s2,a4
   11f60:	03205863          	blez	s2,11f90 <_vfprintf_r+0x1a18>
   11f64:	10812603          	lw	a2,264(sp)
   11f68:	012686b3          	add	a3,a3,s2
   11f6c:	0167b023          	sd	s6,0(a5)
   11f70:	0016059b          	addw	a1,a2,1
   11f74:	0127b423          	sd	s2,8(a5)
   11f78:	10d13823          	sd	a3,272(sp)
   11f7c:	10b12423          	sw	a1,264(sp)
   11f80:	12b8ce63          	blt	a7,a1,120bc <_vfprintf_r+0x1b44>
   11f84:	000ac603          	lbu	a2,0(s5)
   11f88:	01078793          	add	a5,a5,16
   11f8c:	0006081b          	sext.w	a6,a2
   11f90:	fff94593          	not	a1,s2
   11f94:	43f5d593          	sra	a1,a1,0x3f
   11f98:	00b97733          	and	a4,s2,a1
   11f9c:	40e8093b          	subw	s2,a6,a4
   11fa0:	05204063          	bgtz	s2,11fe0 <_vfprintf_r+0x1a68>
   11fa4:	00cb0b33          	add	s6,s6,a2
   11fa8:	f60416e3          	bnez	s0,11f14 <_vfprintf_r+0x199c>
   11fac:	f60d16e3          	bnez	s10,11f18 <_vfprintf_r+0x19a0>
   11fb0:	00078413          	mv	s0,a5
   11fb4:	08013783          	ld	a5,128(sp)
   11fb8:	07513423          	sd	s5,104(sp)
   11fbc:	000b0a93          	mv	s5,s6
   11fc0:	08813983          	ld	s3,136(sp)
   11fc4:	09013903          	ld	s2,144(sp)
   11fc8:	09813b83          	ld	s7,152(sp)
   11fcc:	03013b03          	ld	s6,48(sp)
   11fd0:	00068d13          	mv	s10,a3
   11fd4:	df57f863          	bgeu	a5,s5,115c4 <_vfprintf_r+0x104c>
   11fd8:	00078a93          	mv	s5,a5
   11fdc:	de8ff06f          	j	115c4 <_vfprintf_r+0x104c>
   11fe0:	10812703          	lw	a4,264(sp)
   11fe4:	00010597          	auipc	a1,0x10
   11fe8:	fac58593          	add	a1,a1,-84 # 21f90 <zeroes.0>
   11fec:	072a5a63          	bge	s4,s2,12060 <_vfprintf_r+0x1ae8>
   11ff0:	02813023          	sd	s0,32(sp)
   11ff4:	00090413          	mv	s0,s2
   11ff8:	000c8913          	mv	s2,s9
   11ffc:	00c0006f          	j	12008 <_vfprintf_r+0x1a90>
   12000:	ff04041b          	addw	s0,s0,-16
   12004:	048a5863          	bge	s4,s0,12054 <_vfprintf_r+0x1adc>
   12008:	0017071b          	addw	a4,a4,1
   1200c:	01068693          	add	a3,a3,16
   12010:	0197b023          	sd	s9,0(a5)
   12014:	0147b423          	sd	s4,8(a5)
   12018:	10d13823          	sd	a3,272(sp)
   1201c:	10e12423          	sw	a4,264(sp)
   12020:	01078793          	add	a5,a5,16
   12024:	fce8dee3          	bge	a7,a4,12000 <_vfprintf_r+0x1a88>
   12028:	10010613          	add	a2,sp,256
   1202c:	000c0593          	mv	a1,s8
   12030:	00048513          	mv	a0,s1
   12034:	400090ef          	jal	1b434 <__sprint_r>
   12038:	ac051c63          	bnez	a0,11310 <_vfprintf_r+0xd98>
   1203c:	ff04041b          	addw	s0,s0,-16
   12040:	11013683          	ld	a3,272(sp)
   12044:	10812703          	lw	a4,264(sp)
   12048:	18010793          	add	a5,sp,384
   1204c:	00700893          	li	a7,7
   12050:	fa8a4ce3          	blt	s4,s0,12008 <_vfprintf_r+0x1a90>
   12054:	00090593          	mv	a1,s2
   12058:	00040913          	mv	s2,s0
   1205c:	02013403          	ld	s0,32(sp)
   12060:	0017061b          	addw	a2,a4,1
   12064:	00d906b3          	add	a3,s2,a3
   12068:	00b7b023          	sd	a1,0(a5)
   1206c:	0127b423          	sd	s2,8(a5)
   12070:	10d13823          	sd	a3,272(sp)
   12074:	10c12423          	sw	a2,264(sp)
   12078:	72c8c063          	blt	a7,a2,12798 <_vfprintf_r+0x2220>
   1207c:	000ac603          	lbu	a2,0(s5)
   12080:	01078793          	add	a5,a5,16
   12084:	00cb0b33          	add	s6,s6,a2
   12088:	f21ff06f          	j	11fa8 <_vfprintf_r+0x1a30>
   1208c:	fffa8a93          	add	s5,s5,-1
   12090:	fff4041b          	addw	s0,s0,-1
   12094:	e89ff06f          	j	11f1c <_vfprintf_r+0x19a4>
   12098:	10010613          	add	a2,sp,256
   1209c:	000c0593          	mv	a1,s8
   120a0:	00048513          	mv	a0,s1
   120a4:	390090ef          	jal	1b434 <__sprint_r>
   120a8:	a6051463          	bnez	a0,11310 <_vfprintf_r+0xd98>
   120ac:	11013683          	ld	a3,272(sp)
   120b0:	18010793          	add	a5,sp,384
   120b4:	00700893          	li	a7,7
   120b8:	e89ff06f          	j	11f40 <_vfprintf_r+0x19c8>
   120bc:	10010613          	add	a2,sp,256
   120c0:	000c0593          	mv	a1,s8
   120c4:	00048513          	mv	a0,s1
   120c8:	36c090ef          	jal	1b434 <__sprint_r>
   120cc:	a4051263          	bnez	a0,11310 <_vfprintf_r+0xd98>
   120d0:	000ac603          	lbu	a2,0(s5)
   120d4:	11013683          	ld	a3,272(sp)
   120d8:	18010793          	add	a5,sp,384
   120dc:	0006081b          	sext.w	a6,a2
   120e0:	00700893          	li	a7,7
   120e4:	eadff06f          	j	11f90 <_vfprintf_r+0x1a18>
   120e8:	00013583          	ld	a1,0(sp)
   120ec:	10010613          	add	a2,sp,256
   120f0:	00048513          	mv	a0,s1
   120f4:	340090ef          	jal	1b434 <__sprint_r>
   120f8:	a0051c63          	bnez	a0,11310 <_vfprintf_r+0xd98>
   120fc:	0d812503          	lw	a0,216(sp)
   12100:	11013603          	ld	a2,272(sp)
   12104:	18010413          	add	s0,sp,384
   12108:	ad1ff06f          	j	11bd8 <_vfprintf_r+0x1660>
   1210c:	00010a97          	auipc	s5,0x10
   12110:	c2ca8a93          	add	s5,s5,-980 # 21d38 <__clzdi2+0x88>
   12114:	badff06f          	j	11cc0 <_vfprintf_r+0x1748>
   12118:	000e0913          	mv	s2,t3
   1211c:	00200693          	li	a3,2
   12120:	00090713          	mv	a4,s2
   12124:	0e810893          	add	a7,sp,232
   12128:	0dc10813          	add	a6,sp,220
   1212c:	0d810793          	add	a5,sp,216
   12130:	000a0593          	mv	a1,s4
   12134:	000b0613          	mv	a2,s6
   12138:	00048513          	mv	a0,s1
   1213c:	03c13423          	sd	t3,40(sp)
   12140:	03d13023          	sd	t4,32(sp)
   12144:	4a0030ef          	jal	155e4 <_ldtoa_r>
   12148:	02013e83          	ld	t4,32(sp)
   1214c:	06700713          	li	a4,103
   12150:	02813e03          	ld	t3,40(sp)
   12154:	00050a93          	mv	s5,a0
   12158:	62ee8463          	beq	t4,a4,12780 <_vfprintf_r+0x2208>
   1215c:	04700713          	li	a4,71
   12160:	62ee8063          	beq	t4,a4,12780 <_vfprintf_r+0x2208>
   12164:	fdfefd13          	and	s10,t4,-33
   12168:	04600713          	li	a4,70
   1216c:	01250cb3          	add	s9,a0,s2
   12170:	6ced0263          	beq	s10,a4,12834 <_vfprintf_r+0x22bc>
   12174:	00000613          	li	a2,0
   12178:	00000693          	li	a3,0
   1217c:	000a0513          	mv	a0,s4
   12180:	000b0593          	mv	a1,s6
   12184:	03c13423          	sd	t3,40(sp)
   12188:	03d13023          	sd	t4,32(sp)
   1218c:	5210d0ef          	jal	1feac <__eqtf2>
   12190:	02013e83          	ld	t4,32(sp)
   12194:	02813e03          	ld	t3,40(sp)
   12198:	000c8793          	mv	a5,s9
   1219c:	02050263          	beqz	a0,121c0 <_vfprintf_r+0x1c48>
   121a0:	0e813783          	ld	a5,232(sp)
   121a4:	0197fe63          	bgeu	a5,s9,121c0 <_vfprintf_r+0x1c48>
   121a8:	03000693          	li	a3,48
   121ac:	00178713          	add	a4,a5,1
   121b0:	0ee13423          	sd	a4,232(sp)
   121b4:	00d78023          	sb	a3,0(a5)
   121b8:	0e813783          	ld	a5,232(sp)
   121bc:	ff97e8e3          	bltu	a5,s9,121ac <_vfprintf_r+0x1c34>
   121c0:	415787bb          	subw	a5,a5,s5
   121c4:	02f13423          	sd	a5,40(sp)
   121c8:	0d812603          	lw	a2,216(sp)
   121cc:	04700713          	li	a4,71
   121d0:	02c13023          	sd	a2,32(sp)
   121d4:	50ed0063          	beq	s10,a4,126d4 <_vfprintf_r+0x215c>
   121d8:	04600713          	li	a4,70
   121dc:	74ed0a63          	beq	s10,a4,12930 <_vfprintf_r+0x23b8>
   121e0:	fff6071b          	addw	a4,a2,-1
   121e4:	0ce12c23          	sw	a4,216(sp)
   121e8:	06100693          	li	a3,97
   121ec:	1ede88e3          	beq	t4,a3,12bdc <_vfprintf_r+0x2664>
   121f0:	04100593          	li	a1,65
   121f4:	05000693          	li	a3,80
   121f8:	4ebe9c63          	bne	t4,a1,126f0 <_vfprintf_r+0x2178>
   121fc:	00100593          	li	a1,1
   12200:	0ed10023          	sb	a3,224(sp)
   12204:	02b00693          	li	a3,43
   12208:	00075863          	bgez	a4,12218 <_vfprintf_r+0x1ca0>
   1220c:	00100713          	li	a4,1
   12210:	40c7073b          	subw	a4,a4,a2
   12214:	02d00693          	li	a3,45
   12218:	0ed100a3          	sb	a3,225(sp)
   1221c:	00900693          	li	a3,9
   12220:	7ee6d863          	bge	a3,a4,12a10 <_vfprintf_r+0x2498>
   12224:	0ef10813          	add	a6,sp,239
   12228:	00080893          	mv	a7,a6
   1222c:	00a00e13          	li	t3,10
   12230:	06300f93          	li	t6,99
   12234:	03c767bb          	remw	a5,a4,t3
   12238:	00088613          	mv	a2,a7
   1223c:	00070693          	mv	a3,a4
   12240:	fff88893          	add	a7,a7,-1
   12244:	0307879b          	addw	a5,a5,48
   12248:	fef60fa3          	sb	a5,-1(a2)
   1224c:	03c7473b          	divw	a4,a4,t3
   12250:	fedfc2e3          	blt	t6,a3,12234 <_vfprintf_r+0x1cbc>
   12254:	0307051b          	addw	a0,a4,48
   12258:	fea88fa3          	sb	a0,-1(a7)
   1225c:	ffe60713          	add	a4,a2,-2
   12260:	1f077ae3          	bgeu	a4,a6,12c54 <_vfprintf_r+0x26dc>
   12264:	0e210693          	add	a3,sp,226
   12268:	00074783          	lbu	a5,0(a4)
   1226c:	00170713          	add	a4,a4,1
   12270:	00168693          	add	a3,a3,1
   12274:	fef68fa3          	sb	a5,-1(a3)
   12278:	ff0718e3          	bne	a4,a6,12268 <_vfprintf_r+0x1cf0>
   1227c:	0f110713          	add	a4,sp,241
   12280:	0e210793          	add	a5,sp,226
   12284:	40c70733          	sub	a4,a4,a2
   12288:	00e78733          	add	a4,a5,a4
   1228c:	0e010693          	add	a3,sp,224
   12290:	40d707bb          	subw	a5,a4,a3
   12294:	06f13023          	sd	a5,96(sp)
   12298:	06013703          	ld	a4,96(sp)
   1229c:	02813783          	ld	a5,40(sp)
   122a0:	00100613          	li	a2,1
   122a4:	00e78cbb          	addw	s9,a5,a4
   122a8:	000c8713          	mv	a4,s9
   122ac:	06f65ce3          	bge	a2,a5,12b24 <_vfprintf_r+0x25ac>
   122b0:	04813783          	ld	a5,72(sp)
   122b4:	00f70cbb          	addw	s9,a4,a5
   122b8:	03013783          	ld	a5,48(sp)
   122bc:	fffcc713          	not	a4,s9
   122c0:	43f75713          	sra	a4,a4,0x3f
   122c4:	bff7f913          	and	s2,a5,-1025
   122c8:	0009091b          	sext.w	s2,s2
   122cc:	00ecf733          	and	a4,s9,a4
   122d0:	10096913          	or	s2,s2,256
   122d4:	00070b1b          	sext.w	s6,a4
   122d8:	02013c23          	sd	zero,56(sp)
   122dc:	02013823          	sd	zero,48(sp)
   122e0:	02013023          	sd	zero,32(sp)
   122e4:	08813783          	ld	a5,136(sp)
   122e8:	40078a63          	beqz	a5,126fc <_vfprintf_r+0x2184>
   122ec:	02d00613          	li	a2,45
   122f0:	0cc107a3          	sb	a2,207(sp)
   122f4:	00000e13          	li	t3,0
   122f8:	001b0b1b          	addw	s6,s6,1
   122fc:	cacfe06f          	j	107a8 <_vfprintf_r+0x230>
   12300:	00013583          	ld	a1,0(sp)
   12304:	10010613          	add	a2,sp,256
   12308:	00048513          	mv	a0,s1
   1230c:	128090ef          	jal	1b434 <__sprint_r>
   12310:	00050463          	beqz	a0,12318 <_vfprintf_r+0x1da0>
   12314:	ffdfe06f          	j	11310 <_vfprintf_r+0xd98>
   12318:	11013d03          	ld	s10,272(sp)
   1231c:	18010413          	add	s0,sp,384
   12320:	a7cff06f          	j	1159c <_vfprintf_r+0x1024>
   12324:	00600693          	li	a3,6
   12328:	f1cff06f          	j	11a44 <_vfprintf_r+0x14cc>
   1232c:	08013703          	ld	a4,128(sp)
   12330:	40d785bb          	subw	a1,a5,a3
   12334:	000d0613          	mv	a2,s10
   12338:	41570c33          	sub	s8,a4,s5
   1233c:	000c079b          	sext.w	a5,s8
   12340:	00f5d463          	bge	a1,a5,12348 <_vfprintf_r+0x1dd0>
   12344:	00058c13          	mv	s8,a1
   12348:	000c0c1b          	sext.w	s8,s8
   1234c:	b10ff06f          	j	1165c <_vfprintf_r+0x10e4>
   12350:	00813783          	ld	a5,8(sp)
   12354:	00f71023          	sh	a5,0(a4)
   12358:	bbdfe06f          	j	10f14 <_vfprintf_r+0x99c>
   1235c:	020b1b13          	sll	s6,s6,0x20
   12360:	020b5b13          	srl	s6,s6,0x20
   12364:	00e13c23          	sd	a4,24(sp)
   12368:	00100793          	li	a5,1
   1236c:	a89fe06f          	j	10df4 <_vfprintf_r+0x87c>
   12370:	000b0793          	mv	a5,s6
   12374:	b11fe06f          	j	10e84 <_vfprintf_r+0x90c>
   12378:	020b1b13          	sll	s6,s6,0x20
   1237c:	020b5b13          	srl	s6,s6,0x20
   12380:	e14ff06f          	j	11994 <_vfprintf_r+0x141c>
   12384:	020b1b13          	sll	s6,s6,0x20
   12388:	020b5b13          	srl	s6,s6,0x20
   1238c:	b4dfe06f          	j	10ed8 <_vfprintf_r+0x960>
   12390:	00013583          	ld	a1,0(sp)
   12394:	04013503          	ld	a0,64(sp)
   12398:	10010613          	add	a2,sp,256
   1239c:	098090ef          	jal	1b434 <__sprint_r>
   123a0:	d3cfe06f          	j	108dc <_vfprintf_r+0x364>
   123a4:	0cf14603          	lbu	a2,207(sp)
   123a8:	a8dff06f          	j	11e34 <_vfprintf_r+0x18bc>
   123ac:	00013583          	ld	a1,0(sp)
   123b0:	10010613          	add	a2,sp,256
   123b4:	00048513          	mv	a0,s1
   123b8:	07c090ef          	jal	1b434 <__sprint_r>
   123bc:	00050463          	beqz	a0,123c4 <_vfprintf_r+0x1e4c>
   123c0:	f51fe06f          	j	11310 <_vfprintf_r+0xd98>
   123c4:	0d812503          	lw	a0,216(sp)
   123c8:	11013603          	ld	a2,272(sp)
   123cc:	10812583          	lw	a1,264(sp)
   123d0:	18010413          	add	s0,sp,384
   123d4:	9cdff06f          	j	11da0 <_vfprintf_r+0x1828>
   123d8:	05800713          	li	a4,88
   123dc:	00296793          	or	a5,s2,2
   123e0:	03000693          	li	a3,48
   123e4:	0007879b          	sext.w	a5,a5
   123e8:	0ce108a3          	sb	a4,209(sp)
   123ec:	0cd10823          	sb	a3,208(sp)
   123f0:	06300713          	li	a4,99
   123f4:	02f13823          	sd	a5,48(sp)
   123f8:	00013823          	sd	zero,16(sp)
   123fc:	11810a93          	add	s5,sp,280
   12400:	69c74463          	blt	a4,t3,12a88 <_vfprintf_r+0x2510>
   12404:	10296913          	or	s2,s2,258
   12408:	0f813b03          	ld	s6,248(sp)
   1240c:	0009079b          	sext.w	a5,s2
   12410:	08f13023          	sd	a5,128(sp)
   12414:	08013423          	sd	zero,136(sp)
   12418:	0f013a03          	ld	s4,240(sp)
   1241c:	340b4663          	bltz	s6,12768 <_vfprintf_r+0x21f0>
   12420:	06100713          	li	a4,97
   12424:	00ee8463          	beq	t4,a4,1242c <_vfprintf_r+0x1eb4>
   12428:	e60fe06f          	j	10a88 <_vfprintf_r+0x510>
   1242c:	000b0593          	mv	a1,s6
   12430:	000a0513          	mv	a0,s4
   12434:	03c13423          	sd	t3,40(sp)
   12438:	03d13023          	sd	t4,32(sp)
   1243c:	4e00f0ef          	jal	2191c <__trunctfdf2>
   12440:	0d810513          	add	a0,sp,216
   12444:	288060ef          	jal	186cc <frexp>
   12448:	3b80f0ef          	jal	21800 <__extenddftf2>
   1244c:	00010717          	auipc	a4,0x10
   12450:	b6470713          	add	a4,a4,-1180 # 21fb0 <blanks.1+0x10>
   12454:	00073603          	ld	a2,0(a4)
   12458:	00873683          	ld	a3,8(a4)
   1245c:	53d0d0ef          	jal	20198 <__multf3>
   12460:	00000613          	li	a2,0
   12464:	00000693          	li	a3,0
   12468:	00050d13          	mv	s10,a0
   1246c:	00058913          	mv	s2,a1
   12470:	23d0d0ef          	jal	1feac <__eqtf2>
   12474:	02013e83          	ld	t4,32(sp)
   12478:	02813e03          	ld	t3,40(sp)
   1247c:	00051663          	bnez	a0,12488 <_vfprintf_r+0x1f10>
   12480:	00100713          	li	a4,1
   12484:	0ce12c23          	sw	a4,216(sp)
   12488:	00010797          	auipc	a5,0x10
   1248c:	8e078793          	add	a5,a5,-1824 # 21d68 <__clzdi2+0xb8>
   12490:	02f13023          	sd	a5,32(sp)
   12494:	00010697          	auipc	a3,0x10
   12498:	b2c68693          	add	a3,a3,-1236 # 21fc0 <blanks.1+0x20>
   1249c:	020e1713          	sll	a4,t3,0x20
   124a0:	0006b783          	ld	a5,0(a3)
   124a4:	02075713          	srl	a4,a4,0x20
   124a8:	0086b683          	ld	a3,8(a3)
   124ac:	00170713          	add	a4,a4,1
   124b0:	00ea8733          	add	a4,s5,a4
   124b4:	000e061b          	sext.w	a2,t3
   124b8:	000a8a13          	mv	s4,s5
   124bc:	03313423          	sd	s3,40(sp)
   124c0:	09713823          	sd	s7,144(sp)
   124c4:	0a813023          	sd	s0,160(sp)
   124c8:	0b513823          	sd	s5,176(sp)
   124cc:	02013403          	ld	s0,32(sp)
   124d0:	00070993          	mv	s3,a4
   124d4:	03d13c23          	sd	t4,56(sp)
   124d8:	0ac13c23          	sd	a2,184(sp)
   124dc:	09c13c23          	sd	t3,152(sp)
   124e0:	0a913423          	sd	s1,168(sp)
   124e4:	00078a93          	mv	s5,a5
   124e8:	00068b93          	mv	s7,a3
   124ec:	0140006f          	j	12500 <_vfprintf_r+0x1f88>
   124f0:	00000613          	li	a2,0
   124f4:	00000693          	li	a3,0
   124f8:	1b50d0ef          	jal	1feac <__eqtf2>
   124fc:	5c050863          	beqz	a0,12acc <_vfprintf_r+0x2554>
   12500:	000a8613          	mv	a2,s5
   12504:	000b8693          	mv	a3,s7
   12508:	000d0513          	mv	a0,s10
   1250c:	00090593          	mv	a1,s2
   12510:	4890d0ef          	jal	20198 <__multf3>
   12514:	00058493          	mv	s1,a1
   12518:	00050913          	mv	s2,a0
   1251c:	1880f0ef          	jal	216a4 <__fixtfsi>
   12520:	00050b1b          	sext.w	s6,a0
   12524:	000b0513          	mv	a0,s6
   12528:	2500f0ef          	jal	21778 <__floatsitf>
   1252c:	00058693          	mv	a3,a1
   12530:	00050613          	mv	a2,a0
   12534:	00048593          	mv	a1,s1
   12538:	00090513          	mv	a0,s2
   1253c:	4e00e0ef          	jal	20a1c <__subtf3>
   12540:	01640733          	add	a4,s0,s6
   12544:	00074683          	lbu	a3,0(a4)
   12548:	000a0493          	mv	s1,s4
   1254c:	001a0a13          	add	s4,s4,1
   12550:	feda0fa3          	sb	a3,-1(s4)
   12554:	00050c13          	mv	s8,a0
   12558:	00050d13          	mv	s10,a0
   1255c:	00058913          	mv	s2,a1
   12560:	f94998e3          	bne	s3,s4,124f0 <_vfprintf_r+0x1f78>
   12564:	02813983          	ld	s3,40(sp)
   12568:	03813e83          	ld	t4,56(sp)
   1256c:	02913423          	sd	s1,40(sp)
   12570:	09013b83          	ld	s7,144(sp)
   12574:	09813e03          	ld	t3,152(sp)
   12578:	0a013403          	ld	s0,160(sp)
   1257c:	0a813483          	ld	s1,168(sp)
   12580:	0b013a83          	ld	s5,176(sp)
   12584:	00050c93          	mv	s9,a0
   12588:	00058c13          	mv	s8,a1
   1258c:	fff00913          	li	s2,-1
   12590:	00010697          	auipc	a3,0x10
   12594:	a4068693          	add	a3,a3,-1472 # 21fd0 <blanks.1+0x30>
   12598:	0086bd03          	ld	s10,8(a3)
   1259c:	0006b603          	ld	a2,0(a3)
   125a0:	000c8513          	mv	a0,s9
   125a4:	000d0693          	mv	a3,s10
   125a8:	000c0593          	mv	a1,s8
   125ac:	09c13823          	sd	t3,144(sp)
   125b0:	03d13c23          	sd	t4,56(sp)
   125b4:	08c13c23          	sd	a2,152(sp)
   125b8:	1c90d0ef          	jal	1ff80 <__getf2>
   125bc:	03813e83          	ld	t4,56(sp)
   125c0:	09013e03          	ld	t3,144(sp)
   125c4:	3ea04c63          	bgtz	a0,129bc <_vfprintf_r+0x2444>
   125c8:	09813603          	ld	a2,152(sp)
   125cc:	000d0693          	mv	a3,s10
   125d0:	000c8513          	mv	a0,s9
   125d4:	000c0593          	mv	a1,s8
   125d8:	0d50d0ef          	jal	1feac <__eqtf2>
   125dc:	03813e83          	ld	t4,56(sp)
   125e0:	09013e03          	ld	t3,144(sp)
   125e4:	00051663          	bnez	a0,125f0 <_vfprintf_r+0x2078>
   125e8:	001b7793          	and	a5,s6,1
   125ec:	3c079863          	bnez	a5,129bc <_vfprintf_r+0x2444>
   125f0:	0019079b          	addw	a5,s2,1
   125f4:	00fa07b3          	add	a5,s4,a5
   125f8:	03000693          	li	a3,48
   125fc:	40094663          	bltz	s2,12a08 <_vfprintf_r+0x2490>
   12600:	001a0a13          	add	s4,s4,1
   12604:	feda0fa3          	sb	a3,-1(s4)
   12608:	ff479ce3          	bne	a5,s4,12600 <_vfprintf_r+0x2088>
   1260c:	415787bb          	subw	a5,a5,s5
   12610:	02f13423          	sd	a5,40(sp)
   12614:	fdfefd13          	and	s10,t4,-33
   12618:	bb1ff06f          	j	121c8 <_vfprintf_r+0x1c50>
   1261c:	00013583          	ld	a1,0(sp)
   12620:	10010613          	add	a2,sp,256
   12624:	00048513          	mv	a0,s1
   12628:	60d080ef          	jal	1b434 <__sprint_r>
   1262c:	00050463          	beqz	a0,12634 <_vfprintf_r+0x20bc>
   12630:	ce1fe06f          	j	11310 <_vfprintf_r+0xd98>
   12634:	11013d03          	ld	s10,272(sp)
   12638:	18010413          	add	s0,sp,384
   1263c:	f79fe06f          	j	115b4 <_vfprintf_r+0x103c>
   12640:	001e091b          	addw	s2,t3,1
   12644:	00200693          	li	a3,2
   12648:	ad9ff06f          	j	12120 <_vfprintf_r+0x1ba8>
   1264c:	000e0913          	mv	s2,t3
   12650:	00300693          	li	a3,3
   12654:	acdff06f          	j	12120 <_vfprintf_r+0x1ba8>
   12658:	000b0593          	mv	a1,s6
   1265c:	000a0513          	mv	a0,s4
   12660:	03c13423          	sd	t3,40(sp)
   12664:	03d13023          	sd	t4,32(sp)
   12668:	2b40f0ef          	jal	2191c <__trunctfdf2>
   1266c:	0d810513          	add	a0,sp,216
   12670:	05c060ef          	jal	186cc <frexp>
   12674:	18c0f0ef          	jal	21800 <__extenddftf2>
   12678:	00010717          	auipc	a4,0x10
   1267c:	93870713          	add	a4,a4,-1736 # 21fb0 <blanks.1+0x10>
   12680:	00073603          	ld	a2,0(a4)
   12684:	00873683          	ld	a3,8(a4)
   12688:	3110d0ef          	jal	20198 <__multf3>
   1268c:	00000613          	li	a2,0
   12690:	00000693          	li	a3,0
   12694:	00050d13          	mv	s10,a0
   12698:	00058913          	mv	s2,a1
   1269c:	0110d0ef          	jal	1feac <__eqtf2>
   126a0:	02013e83          	ld	t4,32(sp)
   126a4:	02813e03          	ld	t3,40(sp)
   126a8:	00051663          	bnez	a0,126b4 <_vfprintf_r+0x213c>
   126ac:	00100713          	li	a4,1
   126b0:	0ce12c23          	sw	a4,216(sp)
   126b4:	0000f797          	auipc	a5,0xf
   126b8:	69c78793          	add	a5,a5,1692 # 21d50 <__clzdi2+0xa0>
   126bc:	02f13023          	sd	a5,32(sp)
   126c0:	dd5ff06f          	j	12494 <_vfprintf_r+0x1f1c>
   126c4:	0e813783          	ld	a5,232(sp)
   126c8:	0d812603          	lw	a2,216(sp)
   126cc:	415787bb          	subw	a5,a5,s5
   126d0:	02f13423          	sd	a5,40(sp)
   126d4:	ffd00713          	li	a4,-3
   126d8:	02c13023          	sd	a2,32(sp)
   126dc:	00e64463          	blt	a2,a4,126e4 <_vfprintf_r+0x216c>
   126e0:	02ce5863          	bge	t3,a2,12710 <_vfprintf_r+0x2198>
   126e4:	fff6071b          	addw	a4,a2,-1
   126e8:	ffee8e9b          	addw	t4,t4,-2
   126ec:	0ce12c23          	sw	a4,216(sp)
   126f0:	0ffef693          	zext.b	a3,t4
   126f4:	00000593          	li	a1,0
   126f8:	b09ff06f          	j	12200 <_vfprintf_r+0x1c88>
   126fc:	0cf14603          	lbu	a2,207(sp)
   12700:	00000e13          	li	t3,0
   12704:	00060463          	beqz	a2,1270c <_vfprintf_r+0x2194>
   12708:	da8fe06f          	j	10cb0 <_vfprintf_r+0x738>
   1270c:	89cfe06f          	j	107a8 <_vfprintf_r+0x230>
   12710:	02813783          	ld	a5,40(sp)
   12714:	26f64063          	blt	a2,a5,12974 <_vfprintf_r+0x23fc>
   12718:	03013783          	ld	a5,48(sp)
   1271c:	00060c93          	mv	s9,a2
   12720:	0017f713          	and	a4,a5,1
   12724:	00070663          	beqz	a4,12730 <_vfprintf_r+0x21b8>
   12728:	04813783          	ld	a5,72(sp)
   1272c:	00c78cbb          	addw	s9,a5,a2
   12730:	03013783          	ld	a5,48(sp)
   12734:	4007f713          	and	a4,a5,1024
   12738:	00070463          	beqz	a4,12740 <_vfprintf_r+0x21c8>
   1273c:	3ec04c63          	bgtz	a2,12b34 <_vfprintf_r+0x25bc>
   12740:	fffcc713          	not	a4,s9
   12744:	43f75713          	sra	a4,a4,0x3f
   12748:	08013903          	ld	s2,128(sp)
   1274c:	00ecf733          	and	a4,s9,a4
   12750:	00070b1b          	sext.w	s6,a4
   12754:	06700e93          	li	t4,103
   12758:	02013c23          	sd	zero,56(sp)
   1275c:	02013823          	sd	zero,48(sp)
   12760:	b85ff06f          	j	122e4 <_vfprintf_r+0x1d6c>
   12764:	00013823          	sd	zero,16(sp)
   12768:	fff00713          	li	a4,-1
   1276c:	03f71713          	sll	a4,a4,0x3f
   12770:	02d00793          	li	a5,45
   12774:	00eb4b33          	xor	s6,s6,a4
   12778:	08f13423          	sd	a5,136(sp)
   1277c:	ca5ff06f          	j	12420 <_vfprintf_r+0x1ea8>
   12780:	03013783          	ld	a5,48(sp)
   12784:	0017f713          	and	a4,a5,1
   12788:	f2070ee3          	beqz	a4,126c4 <_vfprintf_r+0x214c>
   1278c:	012a8cb3          	add	s9,s5,s2
   12790:	04700d13          	li	s10,71
   12794:	9e1ff06f          	j	12174 <_vfprintf_r+0x1bfc>
   12798:	10010613          	add	a2,sp,256
   1279c:	000c0593          	mv	a1,s8
   127a0:	00048513          	mv	a0,s1
   127a4:	491080ef          	jal	1b434 <__sprint_r>
   127a8:	00050463          	beqz	a0,127b0 <_vfprintf_r+0x2238>
   127ac:	b65fe06f          	j	11310 <_vfprintf_r+0xd98>
   127b0:	000ac603          	lbu	a2,0(s5)
   127b4:	11013683          	ld	a3,272(sp)
   127b8:	18010793          	add	a5,sp,384
   127bc:	00700893          	li	a7,7
   127c0:	00cb0b33          	add	s6,s6,a2
   127c4:	fe4ff06f          	j	11fa8 <_vfprintf_r+0x1a30>
   127c8:	07800713          	li	a4,120
   127cc:	c11ff06f          	j	123dc <_vfprintf_r+0x1e64>
   127d0:	02d00793          	li	a5,45
   127d4:	0cf107a3          	sb	a5,207(sp)
   127d8:	02d00613          	li	a2,45
   127dc:	cd4ff06f          	j	11cb0 <_vfprintf_r+0x1738>
   127e0:	00013583          	ld	a1,0(sp)
   127e4:	10010613          	add	a2,sp,256
   127e8:	00048513          	mv	a0,s1
   127ec:	449080ef          	jal	1b434 <__sprint_r>
   127f0:	00050463          	beqz	a0,127f8 <_vfprintf_r+0x2280>
   127f4:	b1dfe06f          	j	11310 <_vfprintf_r+0xd98>
   127f8:	0d812683          	lw	a3,216(sp)
   127fc:	11013603          	ld	a2,272(sp)
   12800:	18010413          	add	s0,sp,384
   12804:	e09fe06f          	j	1160c <_vfprintf_r+0x1094>
   12808:	0cf14603          	lbu	a2,207(sp)
   1280c:	01413c23          	sd	s4,24(sp)
   12810:	02013c23          	sd	zero,56(sp)
   12814:	02013823          	sd	zero,48(sp)
   12818:	02013023          	sd	zero,32(sp)
   1281c:	000e0b13          	mv	s6,t3
   12820:	000e0c93          	mv	s9,t3
   12824:	00000e13          	li	t3,0
   12828:	00060463          	beqz	a2,12830 <_vfprintf_r+0x22b8>
   1282c:	c84fe06f          	j	10cb0 <_vfprintf_r+0x738>
   12830:	f79fd06f          	j	107a8 <_vfprintf_r+0x230>
   12834:	00054683          	lbu	a3,0(a0)
   12838:	03000713          	li	a4,48
   1283c:	00e68863          	beq	a3,a4,1284c <_vfprintf_r+0x22d4>
   12840:	0d812683          	lw	a3,216(sp)
   12844:	00dc8cb3          	add	s9,s9,a3
   12848:	92dff06f          	j	12174 <_vfprintf_r+0x1bfc>
   1284c:	00000613          	li	a2,0
   12850:	00000693          	li	a3,0
   12854:	000a0513          	mv	a0,s4
   12858:	000b0593          	mv	a1,s6
   1285c:	03c13423          	sd	t3,40(sp)
   12860:	03d13023          	sd	t4,32(sp)
   12864:	6480d0ef          	jal	1feac <__eqtf2>
   12868:	02013e83          	ld	t4,32(sp)
   1286c:	02813e03          	ld	t3,40(sp)
   12870:	fc0508e3          	beqz	a0,12840 <_vfprintf_r+0x22c8>
   12874:	00100713          	li	a4,1
   12878:	412706bb          	subw	a3,a4,s2
   1287c:	0cd12c23          	sw	a3,216(sp)
   12880:	00dc8cb3          	add	s9,s9,a3
   12884:	8f1ff06f          	j	12174 <_vfprintf_r+0x1bfc>
   12888:	00013583          	ld	a1,0(sp)
   1288c:	10010613          	add	a2,sp,256
   12890:	00048513          	mv	a0,s1
   12894:	3a1080ef          	jal	1b434 <__sprint_r>
   12898:	00050463          	beqz	a0,128a0 <_vfprintf_r+0x2328>
   1289c:	a75fe06f          	j	11310 <_vfprintf_r+0xd98>
   128a0:	0d812583          	lw	a1,216(sp)
   128a4:	02813783          	ld	a5,40(sp)
   128a8:	11013603          	ld	a2,272(sp)
   128ac:	18010413          	add	s0,sp,384
   128b0:	40b785bb          	subw	a1,a5,a1
   128b4:	da9fe06f          	j	1165c <_vfprintf_r+0x10e4>
   128b8:	00090c13          	mv	s8,s2
   128bc:	b99fe06f          	j	11454 <_vfprintf_r+0xedc>
   128c0:	ff000693          	li	a3,-16
   128c4:	40a00c3b          	negw	s8,a0
   128c8:	0000fd17          	auipc	s10,0xf
   128cc:	6c8d0d13          	add	s10,s10,1736 # 21f90 <zeroes.0>
   128d0:	01000c93          	li	s9,16
   128d4:	00700a13          	li	s4,7
   128d8:	00d54863          	blt	a0,a3,128e8 <_vfprintf_r+0x2370>
   128dc:	1640006f          	j	12a40 <_vfprintf_r+0x24c8>
   128e0:	ff0c0c1b          	addw	s8,s8,-16
   128e4:	158cde63          	bge	s9,s8,12a40 <_vfprintf_r+0x24c8>
   128e8:	0015859b          	addw	a1,a1,1
   128ec:	01060613          	add	a2,a2,16
   128f0:	01a43023          	sd	s10,0(s0)
   128f4:	01943423          	sd	s9,8(s0)
   128f8:	10c13823          	sd	a2,272(sp)
   128fc:	10b12423          	sw	a1,264(sp)
   12900:	01040413          	add	s0,s0,16
   12904:	fcba5ee3          	bge	s4,a1,128e0 <_vfprintf_r+0x2368>
   12908:	00013583          	ld	a1,0(sp)
   1290c:	10010613          	add	a2,sp,256
   12910:	00048513          	mv	a0,s1
   12914:	321080ef          	jal	1b434 <__sprint_r>
   12918:	00050463          	beqz	a0,12920 <_vfprintf_r+0x23a8>
   1291c:	9f5fe06f          	j	11310 <_vfprintf_r+0xd98>
   12920:	11013603          	ld	a2,272(sp)
   12924:	10812583          	lw	a1,264(sp)
   12928:	18010413          	add	s0,sp,384
   1292c:	fb5ff06f          	j	128e0 <_vfprintf_r+0x2368>
   12930:	03013783          	ld	a5,48(sp)
   12934:	0017f713          	and	a4,a5,1
   12938:	02013783          	ld	a5,32(sp)
   1293c:	00ee6733          	or	a4,t3,a4
   12940:	2cf05863          	blez	a5,12c10 <_vfprintf_r+0x2698>
   12944:	28071263          	bnez	a4,12bc8 <_vfprintf_r+0x2650>
   12948:	02013c83          	ld	s9,32(sp)
   1294c:	06600e93          	li	t4,102
   12950:	03013783          	ld	a5,48(sp)
   12954:	4007f713          	and	a4,a5,1024
   12958:	1e071063          	bnez	a4,12b38 <_vfprintf_r+0x25c0>
   1295c:	fffcc713          	not	a4,s9
   12960:	43f75713          	sra	a4,a4,0x3f
   12964:	00ecf733          	and	a4,s9,a4
   12968:	08013903          	ld	s2,128(sp)
   1296c:	00070b1b          	sext.w	s6,a4
   12970:	de9ff06f          	j	12758 <_vfprintf_r+0x21e0>
   12974:	04813783          	ld	a5,72(sp)
   12978:	02813703          	ld	a4,40(sp)
   1297c:	06700e93          	li	t4,103
   12980:	00e78cbb          	addw	s9,a5,a4
   12984:	02013783          	ld	a5,32(sp)
   12988:	fcf044e3          	bgtz	a5,12950 <_vfprintf_r+0x23d8>
   1298c:	40fc873b          	subw	a4,s9,a5
   12990:	0017071b          	addw	a4,a4,1
   12994:	00070c9b          	sext.w	s9,a4
   12998:	fffcc613          	not	a2,s9
   1299c:	43f65613          	sra	a2,a2,0x3f
   129a0:	00c77733          	and	a4,a4,a2
   129a4:	08013903          	ld	s2,128(sp)
   129a8:	00070b1b          	sext.w	s6,a4
   129ac:	dadff06f          	j	12758 <_vfprintf_r+0x21e0>
   129b0:	fff00793          	li	a5,-1
   129b4:	00f13423          	sd	a5,8(sp)
   129b8:	f39fd06f          	j	108f0 <_vfprintf_r+0x378>
   129bc:	02813783          	ld	a5,40(sp)
   129c0:	000a0693          	mv	a3,s4
   129c4:	0ef13423          	sd	a5,232(sp)
   129c8:	02013783          	ld	a5,32(sp)
   129cc:	fffa4603          	lbu	a2,-1(s4)
   129d0:	00f7c583          	lbu	a1,15(a5)
   129d4:	02c59063          	bne	a1,a2,129f4 <_vfprintf_r+0x247c>
   129d8:	03000513          	li	a0,48
   129dc:	fea68fa3          	sb	a0,-1(a3)
   129e0:	0e813683          	ld	a3,232(sp)
   129e4:	fff68793          	add	a5,a3,-1
   129e8:	0ef13423          	sd	a5,232(sp)
   129ec:	fff6c603          	lbu	a2,-1(a3)
   129f0:	fec586e3          	beq	a1,a2,129dc <_vfprintf_r+0x2464>
   129f4:	0016059b          	addw	a1,a2,1
   129f8:	03900513          	li	a0,57
   129fc:	0ff5f593          	zext.b	a1,a1
   12a00:	0aa60a63          	beq	a2,a0,12ab4 <_vfprintf_r+0x253c>
   12a04:	feb68fa3          	sb	a1,-1(a3)
   12a08:	000a0793          	mv	a5,s4
   12a0c:	c01ff06f          	j	1260c <_vfprintf_r+0x2094>
   12a10:	0e210693          	add	a3,sp,226
   12a14:	00059863          	bnez	a1,12a24 <_vfprintf_r+0x24ac>
   12a18:	03000693          	li	a3,48
   12a1c:	0ed10123          	sb	a3,226(sp)
   12a20:	0e310693          	add	a3,sp,227
   12a24:	20010793          	add	a5,sp,512
   12a28:	40f68633          	sub	a2,a3,a5
   12a2c:	0307071b          	addw	a4,a4,48
   12a30:	1216079b          	addw	a5,a2,289
   12a34:	00e68023          	sb	a4,0(a3)
   12a38:	06f13023          	sd	a5,96(sp)
   12a3c:	85dff06f          	j	12298 <_vfprintf_r+0x1d20>
   12a40:	0015859b          	addw	a1,a1,1
   12a44:	01860633          	add	a2,a2,s8
   12a48:	01a43023          	sd	s10,0(s0)
   12a4c:	01843423          	sd	s8,8(s0)
   12a50:	10c13823          	sd	a2,272(sp)
   12a54:	10b12423          	sw	a1,264(sp)
   12a58:	00700693          	li	a3,7
   12a5c:	9cb6d063          	bge	a3,a1,11c1c <_vfprintf_r+0x16a4>
   12a60:	00013583          	ld	a1,0(sp)
   12a64:	10010613          	add	a2,sp,256
   12a68:	00048513          	mv	a0,s1
   12a6c:	1c9080ef          	jal	1b434 <__sprint_r>
   12a70:	00050463          	beqz	a0,12a78 <_vfprintf_r+0x2500>
   12a74:	89dfe06f          	j	11310 <_vfprintf_r+0xd98>
   12a78:	11013603          	ld	a2,272(sp)
   12a7c:	10812583          	lw	a1,264(sp)
   12a80:	18010413          	add	s0,sp,384
   12a84:	b20ff06f          	j	11da4 <_vfprintf_r+0x182c>
   12a88:	001e059b          	addw	a1,t3,1
   12a8c:	00048513          	mv	a0,s1
   12a90:	03d13023          	sd	t4,32(sp)
   12a94:	01c13823          	sd	t3,16(sp)
   12a98:	104040ef          	jal	16b9c <_malloc_r>
   12a9c:	01013e03          	ld	t3,16(sp)
   12aa0:	02013e83          	ld	t4,32(sp)
   12aa4:	00050a93          	mv	s5,a0
   12aa8:	1c050263          	beqz	a0,12c6c <_vfprintf_r+0x26f4>
   12aac:	00a13823          	sd	a0,16(sp)
   12ab0:	955ff06f          	j	12404 <_vfprintf_r+0x1e8c>
   12ab4:	02013783          	ld	a5,32(sp)
   12ab8:	00a7c583          	lbu	a1,10(a5)
   12abc:	feb68fa3          	sb	a1,-1(a3)
   12ac0:	f49ff06f          	j	12a08 <_vfprintf_r+0x2490>
   12ac4:	00f72023          	sw	a5,0(a4)
   12ac8:	c4cfe06f          	j	10f14 <_vfprintf_r+0x99c>
   12acc:	0b813603          	ld	a2,184(sp)
   12ad0:	0b013a83          	ld	s5,176(sp)
   12ad4:	02813983          	ld	s3,40(sp)
   12ad8:	000c0c93          	mv	s9,s8
   12adc:	00ca863b          	addw	a2,s5,a2
   12ae0:	02913423          	sd	s1,40(sp)
   12ae4:	00090c13          	mv	s8,s2
   12ae8:	03813e83          	ld	t4,56(sp)
   12aec:	09013b83          	ld	s7,144(sp)
   12af0:	09813e03          	ld	t3,152(sp)
   12af4:	0a013403          	ld	s0,160(sp)
   12af8:	0a813483          	ld	s1,168(sp)
   12afc:	4146093b          	subw	s2,a2,s4
   12b00:	a91ff06f          	j	12590 <_vfprintf_r+0x2018>
   12b04:	000e0463          	beqz	t3,12b0c <_vfprintf_r+0x2594>
   12b08:	f59fd06f          	j	10a60 <_vfprintf_r+0x4e8>
   12b0c:	00100e13          	li	t3,1
   12b10:	f51fd06f          	j	10a60 <_vfprintf_r+0x4e8>
   12b14:	00600e13          	li	t3,6
   12b18:	f49fd06f          	j	10a60 <_vfprintf_r+0x4e8>
   12b1c:	00e13c23          	sd	a4,24(sp)
   12b20:	935fe06f          	j	11454 <_vfprintf_r+0xedc>
   12b24:	03013783          	ld	a5,48(sp)
   12b28:	0017f613          	and	a2,a5,1
   12b2c:	f8060663          	beqz	a2,122b8 <_vfprintf_r+0x1d40>
   12b30:	f80ff06f          	j	122b0 <_vfprintf_r+0x1d38>
   12b34:	06700e93          	li	t4,103
   12b38:	06813683          	ld	a3,104(sp)
   12b3c:	0ff00613          	li	a2,255
   12b40:	0006c703          	lbu	a4,0(a3)
   12b44:	10c70e63          	beq	a4,a2,12c60 <_vfprintf_r+0x26e8>
   12b48:	02013783          	ld	a5,32(sp)
   12b4c:	00000813          	li	a6,0
   12b50:	00000513          	li	a0,0
   12b54:	0ff00593          	li	a1,255
   12b58:	0007061b          	sext.w	a2,a4
   12b5c:	00f75e63          	bge	a4,a5,12b78 <_vfprintf_r+0x2600>
   12b60:	0016c703          	lbu	a4,1(a3)
   12b64:	40c787bb          	subw	a5,a5,a2
   12b68:	04070a63          	beqz	a4,12bbc <_vfprintf_r+0x2644>
   12b6c:	0015051b          	addw	a0,a0,1
   12b70:	00168693          	add	a3,a3,1
   12b74:	feb712e3          	bne	a4,a1,12b58 <_vfprintf_r+0x25e0>
   12b78:	02f13023          	sd	a5,32(sp)
   12b7c:	06d13423          	sd	a3,104(sp)
   12b80:	02a13823          	sd	a0,48(sp)
   12b84:	03013c23          	sd	a6,56(sp)
   12b88:	03813783          	ld	a5,56(sp)
   12b8c:	03013703          	ld	a4,48(sp)
   12b90:	08013903          	ld	s2,128(sp)
   12b94:	00e7873b          	addw	a4,a5,a4
   12b98:	07013783          	ld	a5,112(sp)
   12b9c:	02f7073b          	mulw	a4,a4,a5
   12ba0:	0197073b          	addw	a4,a4,s9
   12ba4:	00070c9b          	sext.w	s9,a4
   12ba8:	fffcc613          	not	a2,s9
   12bac:	43f65613          	sra	a2,a2,0x3f
   12bb0:	00c77733          	and	a4,a4,a2
   12bb4:	00070b1b          	sext.w	s6,a4
   12bb8:	f2cff06f          	j	122e4 <_vfprintf_r+0x1d6c>
   12bbc:	0006c703          	lbu	a4,0(a3)
   12bc0:	0018081b          	addw	a6,a6,1
   12bc4:	fb1ff06f          	j	12b74 <_vfprintf_r+0x25fc>
   12bc8:	04813703          	ld	a4,72(sp)
   12bcc:	06600e93          	li	t4,102
   12bd0:	00f706bb          	addw	a3,a4,a5
   12bd4:	01c68cbb          	addw	s9,a3,t3
   12bd8:	d79ff06f          	j	12950 <_vfprintf_r+0x23d8>
   12bdc:	07000693          	li	a3,112
   12be0:	e1cff06f          	j	121fc <_vfprintf_r+0x1c84>
   12be4:	01813683          	ld	a3,24(sp)
   12be8:	0006a703          	lw	a4,0(a3)
   12bec:	00868693          	add	a3,a3,8
   12bf0:	00070e13          	mv	t3,a4
   12bf4:	00075463          	bgez	a4,12bfc <_vfprintf_r+0x2684>
   12bf8:	fff00e13          	li	t3,-1
   12bfc:	0019ce83          	lbu	t4,1(s3)
   12c00:	000e0a1b          	sext.w	s4,t3
   12c04:	00d13c23          	sd	a3,24(sp)
   12c08:	00078993          	mv	s3,a5
   12c0c:	b01fd06f          	j	1070c <_vfprintf_r+0x194>
   12c10:	00071c63          	bnez	a4,12c28 <_vfprintf_r+0x26b0>
   12c14:	08013903          	ld	s2,128(sp)
   12c18:	00100b13          	li	s6,1
   12c1c:	06600e93          	li	t4,102
   12c20:	00100c93          	li	s9,1
   12c24:	b35ff06f          	j	12758 <_vfprintf_r+0x21e0>
   12c28:	04813783          	ld	a5,72(sp)
   12c2c:	08013903          	ld	s2,128(sp)
   12c30:	06600e93          	li	t4,102
   12c34:	0017871b          	addw	a4,a5,1
   12c38:	01c7073b          	addw	a4,a4,t3
   12c3c:	00070c9b          	sext.w	s9,a4
   12c40:	fffcc613          	not	a2,s9
   12c44:	43f65613          	sra	a2,a2,0x3f
   12c48:	00c77733          	and	a4,a4,a2
   12c4c:	00070b1b          	sext.w	s6,a4
   12c50:	b09ff06f          	j	12758 <_vfprintf_r+0x21e0>
   12c54:	00200793          	li	a5,2
   12c58:	06f13023          	sd	a5,96(sp)
   12c5c:	e3cff06f          	j	12298 <_vfprintf_r+0x1d20>
   12c60:	02013c23          	sd	zero,56(sp)
   12c64:	02013823          	sd	zero,48(sp)
   12c68:	f21ff06f          	j	12b88 <_vfprintf_r+0x2610>
   12c6c:	00013703          	ld	a4,0(sp)
   12c70:	01075783          	lhu	a5,16(a4)
   12c74:	0407e793          	or	a5,a5,64
   12c78:	00f71823          	sh	a5,16(a4)
   12c7c:	c61fd06f          	j	108dc <_vfprintf_r+0x364>

0000000000012c80 <vfprintf>:
   12c80:	00060693          	mv	a3,a2
   12c84:	00058613          	mv	a2,a1
   12c88:	00050593          	mv	a1,a0
   12c8c:	7581b503          	ld	a0,1880(gp) # 24d78 <_impure_ptr>
   12c90:	8e9fd06f          	j	10578 <_vfprintf_r>

0000000000012c94 <__sbprintf>:
   12c94:	01059783          	lh	a5,16(a1)
   12c98:	0125d703          	lhu	a4,18(a1)
   12c9c:	0ac5a303          	lw	t1,172(a1)
   12ca0:	ffd7f793          	and	a5,a5,-3
   12ca4:	0107979b          	sllw	a5,a5,0x10
   12ca8:	0305b883          	ld	a7,48(a1)
   12cac:	0405b803          	ld	a6,64(a1)
   12cb0:	0107171b          	sllw	a4,a4,0x10
   12cb4:	0107d79b          	srlw	a5,a5,0x10
   12cb8:	b3010113          	add	sp,sp,-1232
   12cbc:	00e7e7b3          	or	a5,a5,a4
   12cc0:	4c813023          	sd	s0,1216(sp)
   12cc4:	40000713          	li	a4,1024
   12cc8:	00f12823          	sw	a5,16(sp)
   12ccc:	00058413          	mv	s0,a1
   12cd0:	0b010793          	add	a5,sp,176
   12cd4:	00010593          	mv	a1,sp
   12cd8:	4a913c23          	sd	s1,1208(sp)
   12cdc:	4b213823          	sd	s2,1200(sp)
   12ce0:	4c113423          	sd	ra,1224(sp)
   12ce4:	00050913          	mv	s2,a0
   12ce8:	0a612623          	sw	t1,172(sp)
   12cec:	03113823          	sd	a7,48(sp)
   12cf0:	05013023          	sd	a6,64(sp)
   12cf4:	00f13023          	sd	a5,0(sp)
   12cf8:	00f13c23          	sd	a5,24(sp)
   12cfc:	00e12623          	sw	a4,12(sp)
   12d00:	02e12023          	sw	a4,32(sp)
   12d04:	02012423          	sw	zero,40(sp)
   12d08:	871fd0ef          	jal	10578 <_vfprintf_r>
   12d0c:	00050493          	mv	s1,a0
   12d10:	02055c63          	bgez	a0,12d48 <__sbprintf+0xb4>
   12d14:	01015783          	lhu	a5,16(sp)
   12d18:	0407f793          	and	a5,a5,64
   12d1c:	00078863          	beqz	a5,12d2c <__sbprintf+0x98>
   12d20:	01045783          	lhu	a5,16(s0)
   12d24:	0407e793          	or	a5,a5,64
   12d28:	00f41823          	sh	a5,16(s0)
   12d2c:	4c813083          	ld	ra,1224(sp)
   12d30:	4c013403          	ld	s0,1216(sp)
   12d34:	4b013903          	ld	s2,1200(sp)
   12d38:	00048513          	mv	a0,s1
   12d3c:	4b813483          	ld	s1,1208(sp)
   12d40:	4d010113          	add	sp,sp,1232
   12d44:	00008067          	ret
   12d48:	00010593          	mv	a1,sp
   12d4c:	00090513          	mv	a0,s2
   12d50:	4d8000ef          	jal	13228 <_fflush_r>
   12d54:	fc0500e3          	beqz	a0,12d14 <__sbprintf+0x80>
   12d58:	fff00493          	li	s1,-1
   12d5c:	fb9ff06f          	j	12d14 <__sbprintf+0x80>

0000000000012d60 <__swsetup_r>:
   12d60:	fe010113          	add	sp,sp,-32
   12d64:	00813823          	sd	s0,16(sp)
   12d68:	00913423          	sd	s1,8(sp)
   12d6c:	00113c23          	sd	ra,24(sp)
   12d70:	7581b783          	ld	a5,1880(gp) # 24d78 <_impure_ptr>
   12d74:	00050493          	mv	s1,a0
   12d78:	00058413          	mv	s0,a1
   12d7c:	00078663          	beqz	a5,12d88 <__swsetup_r+0x28>
   12d80:	0507a703          	lw	a4,80(a5)
   12d84:	08070063          	beqz	a4,12e04 <__swsetup_r+0xa4>
   12d88:	01041783          	lh	a5,16(s0)
   12d8c:	0087f713          	and	a4,a5,8
   12d90:	08070463          	beqz	a4,12e18 <__swsetup_r+0xb8>
   12d94:	01843703          	ld	a4,24(s0)
   12d98:	0a070063          	beqz	a4,12e38 <__swsetup_r+0xd8>
   12d9c:	0017f693          	and	a3,a5,1
   12da0:	02068863          	beqz	a3,12dd0 <__swsetup_r+0x70>
   12da4:	02042683          	lw	a3,32(s0)
   12da8:	00042623          	sw	zero,12(s0)
   12dac:	00000513          	li	a0,0
   12db0:	40d006bb          	negw	a3,a3
   12db4:	02d42423          	sw	a3,40(s0)
   12db8:	02070a63          	beqz	a4,12dec <__swsetup_r+0x8c>
   12dbc:	01813083          	ld	ra,24(sp)
   12dc0:	01013403          	ld	s0,16(sp)
   12dc4:	00813483          	ld	s1,8(sp)
   12dc8:	02010113          	add	sp,sp,32
   12dcc:	00008067          	ret
   12dd0:	0027f693          	and	a3,a5,2
   12dd4:	00000613          	li	a2,0
   12dd8:	00069463          	bnez	a3,12de0 <__swsetup_r+0x80>
   12ddc:	02042603          	lw	a2,32(s0)
   12de0:	00c42623          	sw	a2,12(s0)
   12de4:	00000513          	li	a0,0
   12de8:	fc071ae3          	bnez	a4,12dbc <__swsetup_r+0x5c>
   12dec:	0807f713          	and	a4,a5,128
   12df0:	fc0706e3          	beqz	a4,12dbc <__swsetup_r+0x5c>
   12df4:	0407e793          	or	a5,a5,64
   12df8:	00f41823          	sh	a5,16(s0)
   12dfc:	fff00513          	li	a0,-1
   12e00:	fbdff06f          	j	12dbc <__swsetup_r+0x5c>
   12e04:	00078513          	mv	a0,a5
   12e08:	03d000ef          	jal	13644 <__sinit>
   12e0c:	01041783          	lh	a5,16(s0)
   12e10:	0087f713          	and	a4,a5,8
   12e14:	f80710e3          	bnez	a4,12d94 <__swsetup_r+0x34>
   12e18:	0107f713          	and	a4,a5,16
   12e1c:	06070a63          	beqz	a4,12e90 <__swsetup_r+0x130>
   12e20:	0047f713          	and	a4,a5,4
   12e24:	02071c63          	bnez	a4,12e5c <__swsetup_r+0xfc>
   12e28:	01843703          	ld	a4,24(s0)
   12e2c:	0087e793          	or	a5,a5,8
   12e30:	00f41823          	sh	a5,16(s0)
   12e34:	f60714e3          	bnez	a4,12d9c <__swsetup_r+0x3c>
   12e38:	2807f693          	and	a3,a5,640
   12e3c:	20000613          	li	a2,512
   12e40:	f4c68ee3          	beq	a3,a2,12d9c <__swsetup_r+0x3c>
   12e44:	00040593          	mv	a1,s0
   12e48:	00048513          	mv	a0,s1
   12e4c:	2e9030ef          	jal	16934 <__smakebuf_r>
   12e50:	01041783          	lh	a5,16(s0)
   12e54:	01843703          	ld	a4,24(s0)
   12e58:	f45ff06f          	j	12d9c <__swsetup_r+0x3c>
   12e5c:	05843583          	ld	a1,88(s0)
   12e60:	00058e63          	beqz	a1,12e7c <__swsetup_r+0x11c>
   12e64:	07440713          	add	a4,s0,116
   12e68:	00e58863          	beq	a1,a4,12e78 <__swsetup_r+0x118>
   12e6c:	00048513          	mv	a0,s1
   12e70:	1ad000ef          	jal	1381c <_free_r>
   12e74:	01041783          	lh	a5,16(s0)
   12e78:	04043c23          	sd	zero,88(s0)
   12e7c:	01843703          	ld	a4,24(s0)
   12e80:	fdb7f793          	and	a5,a5,-37
   12e84:	00042423          	sw	zero,8(s0)
   12e88:	00e43023          	sd	a4,0(s0)
   12e8c:	fa1ff06f          	j	12e2c <__swsetup_r+0xcc>
   12e90:	00900713          	li	a4,9
   12e94:	00e4a023          	sw	a4,0(s1)
   12e98:	0407e793          	or	a5,a5,64
   12e9c:	f5dff06f          	j	12df8 <__swsetup_r+0x98>

0000000000012ea0 <__call_exitprocs>:
   12ea0:	fb010113          	add	sp,sp,-80
   12ea4:	03413023          	sd	s4,32(sp)
   12ea8:	7481ba03          	ld	s4,1864(gp) # 24d68 <_global_impure_ptr>
   12eac:	03213823          	sd	s2,48(sp)
   12eb0:	1f8a3903          	ld	s2,504(s4)
   12eb4:	04113423          	sd	ra,72(sp)
   12eb8:	04813023          	sd	s0,64(sp)
   12ebc:	02913c23          	sd	s1,56(sp)
   12ec0:	03313423          	sd	s3,40(sp)
   12ec4:	01513c23          	sd	s5,24(sp)
   12ec8:	01613823          	sd	s6,16(sp)
   12ecc:	01713423          	sd	s7,8(sp)
   12ed0:	01813023          	sd	s8,0(sp)
   12ed4:	04090063          	beqz	s2,12f14 <__call_exitprocs+0x74>
   12ed8:	00050b13          	mv	s6,a0
   12edc:	00058b93          	mv	s7,a1
   12ee0:	00100a93          	li	s5,1
   12ee4:	fff00993          	li	s3,-1
   12ee8:	00892483          	lw	s1,8(s2)
   12eec:	fff4841b          	addw	s0,s1,-1
   12ef0:	02044263          	bltz	s0,12f14 <__call_exitprocs+0x74>
   12ef4:	00349493          	sll	s1,s1,0x3
   12ef8:	009904b3          	add	s1,s2,s1
   12efc:	040b8463          	beqz	s7,12f44 <__call_exitprocs+0xa4>
   12f00:	2084b783          	ld	a5,520(s1)
   12f04:	05778063          	beq	a5,s7,12f44 <__call_exitprocs+0xa4>
   12f08:	fff4041b          	addw	s0,s0,-1
   12f0c:	ff848493          	add	s1,s1,-8
   12f10:	ff3416e3          	bne	s0,s3,12efc <__call_exitprocs+0x5c>
   12f14:	04813083          	ld	ra,72(sp)
   12f18:	04013403          	ld	s0,64(sp)
   12f1c:	03813483          	ld	s1,56(sp)
   12f20:	03013903          	ld	s2,48(sp)
   12f24:	02813983          	ld	s3,40(sp)
   12f28:	02013a03          	ld	s4,32(sp)
   12f2c:	01813a83          	ld	s5,24(sp)
   12f30:	01013b03          	ld	s6,16(sp)
   12f34:	00813b83          	ld	s7,8(sp)
   12f38:	00013c03          	ld	s8,0(sp)
   12f3c:	05010113          	add	sp,sp,80
   12f40:	00008067          	ret
   12f44:	00892783          	lw	a5,8(s2)
   12f48:	0084b703          	ld	a4,8(s1)
   12f4c:	fff7879b          	addw	a5,a5,-1
   12f50:	06878263          	beq	a5,s0,12fb4 <__call_exitprocs+0x114>
   12f54:	0004b423          	sd	zero,8(s1)
   12f58:	fa0708e3          	beqz	a4,12f08 <__call_exitprocs+0x68>
   12f5c:	31092783          	lw	a5,784(s2)
   12f60:	008a96bb          	sllw	a3,s5,s0
   12f64:	00892c03          	lw	s8,8(s2)
   12f68:	00d7f7b3          	and	a5,a5,a3
   12f6c:	0007879b          	sext.w	a5,a5
   12f70:	02079263          	bnez	a5,12f94 <__call_exitprocs+0xf4>
   12f74:	000700e7          	jalr	a4
   12f78:	00892703          	lw	a4,8(s2)
   12f7c:	1f8a3783          	ld	a5,504(s4)
   12f80:	01871463          	bne	a4,s8,12f88 <__call_exitprocs+0xe8>
   12f84:	f92782e3          	beq	a5,s2,12f08 <__call_exitprocs+0x68>
   12f88:	f80786e3          	beqz	a5,12f14 <__call_exitprocs+0x74>
   12f8c:	00078913          	mv	s2,a5
   12f90:	f59ff06f          	j	12ee8 <__call_exitprocs+0x48>
   12f94:	31492783          	lw	a5,788(s2)
   12f98:	1084b583          	ld	a1,264(s1)
   12f9c:	00d7f7b3          	and	a5,a5,a3
   12fa0:	0007879b          	sext.w	a5,a5
   12fa4:	00079c63          	bnez	a5,12fbc <__call_exitprocs+0x11c>
   12fa8:	000b0513          	mv	a0,s6
   12fac:	000700e7          	jalr	a4
   12fb0:	fc9ff06f          	j	12f78 <__call_exitprocs+0xd8>
   12fb4:	00892423          	sw	s0,8(s2)
   12fb8:	fa1ff06f          	j	12f58 <__call_exitprocs+0xb8>
   12fbc:	00058513          	mv	a0,a1
   12fc0:	000700e7          	jalr	a4
   12fc4:	fb5ff06f          	j	12f78 <__call_exitprocs+0xd8>

0000000000012fc8 <atexit>:
   12fc8:	00050593          	mv	a1,a0
   12fcc:	00000693          	li	a3,0
   12fd0:	00000613          	li	a2,0
   12fd4:	00000513          	li	a0,0
   12fd8:	0850906f          	j	1c85c <__register_exitproc>

0000000000012fdc <__sflush_r>:
   12fdc:	01059783          	lh	a5,16(a1)
   12fe0:	fd010113          	add	sp,sp,-48
   12fe4:	02813023          	sd	s0,32(sp)
   12fe8:	01313423          	sd	s3,8(sp)
   12fec:	02113423          	sd	ra,40(sp)
   12ff0:	00913c23          	sd	s1,24(sp)
   12ff4:	01213823          	sd	s2,16(sp)
   12ff8:	0087f713          	and	a4,a5,8
   12ffc:	00058413          	mv	s0,a1
   13000:	00050993          	mv	s3,a0
   13004:	12071263          	bnez	a4,13128 <__sflush_r+0x14c>
   13008:	00001737          	lui	a4,0x1
   1300c:	80070713          	add	a4,a4,-2048 # 800 <exit-0xf8e8>
   13010:	0085a683          	lw	a3,8(a1)
   13014:	00e7e733          	or	a4,a5,a4
   13018:	00e59823          	sh	a4,16(a1)
   1301c:	18d05863          	blez	a3,131ac <__sflush_r+0x1d0>
   13020:	04843803          	ld	a6,72(s0)
   13024:	0e080263          	beqz	a6,13108 <__sflush_r+0x12c>
   13028:	00c7d793          	srl	a5,a5,0xc
   1302c:	0009a483          	lw	s1,0(s3)
   13030:	0017f793          	and	a5,a5,1
   13034:	0009a023          	sw	zero,0(s3)
   13038:	03043583          	ld	a1,48(s0)
   1303c:	18079063          	bnez	a5,131bc <__sflush_r+0x1e0>
   13040:	00000613          	li	a2,0
   13044:	00100693          	li	a3,1
   13048:	00098513          	mv	a0,s3
   1304c:	000800e7          	jalr	a6
   13050:	fff00793          	li	a5,-1
   13054:	00050613          	mv	a2,a0
   13058:	1af50063          	beq	a0,a5,131f8 <__sflush_r+0x21c>
   1305c:	01041703          	lh	a4,16(s0)
   13060:	04843803          	ld	a6,72(s0)
   13064:	03043583          	ld	a1,48(s0)
   13068:	00477713          	and	a4,a4,4
   1306c:	00070e63          	beqz	a4,13088 <__sflush_r+0xac>
   13070:	00842703          	lw	a4,8(s0)
   13074:	05843783          	ld	a5,88(s0)
   13078:	40e60633          	sub	a2,a2,a4
   1307c:	00078663          	beqz	a5,13088 <__sflush_r+0xac>
   13080:	07042783          	lw	a5,112(s0)
   13084:	40f60633          	sub	a2,a2,a5
   13088:	00000693          	li	a3,0
   1308c:	00098513          	mv	a0,s3
   13090:	000800e7          	jalr	a6
   13094:	fff00793          	li	a5,-1
   13098:	12f51663          	bne	a0,a5,131c4 <__sflush_r+0x1e8>
   1309c:	0009a683          	lw	a3,0(s3)
   130a0:	01d00793          	li	a5,29
   130a4:	0cd7ee63          	bltu	a5,a3,13180 <__sflush_r+0x1a4>
   130a8:	dfc00737          	lui	a4,0xdfc00
   130ac:	ffe70713          	add	a4,a4,-2 # ffffffffdfbffffe <__BSS_END__+0xffffffffdfbdb1de>
   130b0:	40d75733          	sra	a4,a4,a3
   130b4:	00177713          	and	a4,a4,1
   130b8:	01041783          	lh	a5,16(s0)
   130bc:	0c071463          	bnez	a4,13184 <__sflush_r+0x1a8>
   130c0:	01843603          	ld	a2,24(s0)
   130c4:	fffff737          	lui	a4,0xfffff
   130c8:	7ff70713          	add	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffda9df>
   130cc:	00e7f733          	and	a4,a5,a4
   130d0:	00c7d793          	srl	a5,a5,0xc
   130d4:	00e41823          	sh	a4,16(s0)
   130d8:	00042423          	sw	zero,8(s0)
   130dc:	00c43023          	sd	a2,0(s0)
   130e0:	0017f793          	and	a5,a5,1
   130e4:	12079c63          	bnez	a5,1321c <__sflush_r+0x240>
   130e8:	05843583          	ld	a1,88(s0)
   130ec:	0099a023          	sw	s1,0(s3)
   130f0:	00058c63          	beqz	a1,13108 <__sflush_r+0x12c>
   130f4:	07440793          	add	a5,s0,116
   130f8:	00f58663          	beq	a1,a5,13104 <__sflush_r+0x128>
   130fc:	00098513          	mv	a0,s3
   13100:	71c000ef          	jal	1381c <_free_r>
   13104:	04043c23          	sd	zero,88(s0)
   13108:	00000513          	li	a0,0
   1310c:	02813083          	ld	ra,40(sp)
   13110:	02013403          	ld	s0,32(sp)
   13114:	01813483          	ld	s1,24(sp)
   13118:	01013903          	ld	s2,16(sp)
   1311c:	00813983          	ld	s3,8(sp)
   13120:	03010113          	add	sp,sp,48
   13124:	00008067          	ret
   13128:	0185b903          	ld	s2,24(a1)
   1312c:	fc090ee3          	beqz	s2,13108 <__sflush_r+0x12c>
   13130:	0005b483          	ld	s1,0(a1)
   13134:	0037f793          	and	a5,a5,3
   13138:	0125b023          	sd	s2,0(a1)
   1313c:	412484bb          	subw	s1,s1,s2
   13140:	00000713          	li	a4,0
   13144:	00079463          	bnez	a5,1314c <__sflush_r+0x170>
   13148:	0205a703          	lw	a4,32(a1)
   1314c:	00e42623          	sw	a4,12(s0)
   13150:	00904863          	bgtz	s1,13160 <__sflush_r+0x184>
   13154:	fb5ff06f          	j	13108 <__sflush_r+0x12c>
   13158:	00a90933          	add	s2,s2,a0
   1315c:	fa9056e3          	blez	s1,13108 <__sflush_r+0x12c>
   13160:	04043783          	ld	a5,64(s0)
   13164:	03043583          	ld	a1,48(s0)
   13168:	00048693          	mv	a3,s1
   1316c:	00090613          	mv	a2,s2
   13170:	00098513          	mv	a0,s3
   13174:	000780e7          	jalr	a5
   13178:	40a484bb          	subw	s1,s1,a0
   1317c:	fca04ee3          	bgtz	a0,13158 <__sflush_r+0x17c>
   13180:	01041783          	lh	a5,16(s0)
   13184:	0407e793          	or	a5,a5,64
   13188:	02813083          	ld	ra,40(sp)
   1318c:	00f41823          	sh	a5,16(s0)
   13190:	02013403          	ld	s0,32(sp)
   13194:	01813483          	ld	s1,24(sp)
   13198:	01013903          	ld	s2,16(sp)
   1319c:	00813983          	ld	s3,8(sp)
   131a0:	fff00513          	li	a0,-1
   131a4:	03010113          	add	sp,sp,48
   131a8:	00008067          	ret
   131ac:	0705a683          	lw	a3,112(a1)
   131b0:	e6d048e3          	bgtz	a3,13020 <__sflush_r+0x44>
   131b4:	00000513          	li	a0,0
   131b8:	f55ff06f          	j	1310c <__sflush_r+0x130>
   131bc:	09043603          	ld	a2,144(s0)
   131c0:	ea9ff06f          	j	13068 <__sflush_r+0x8c>
   131c4:	01041783          	lh	a5,16(s0)
   131c8:	01843683          	ld	a3,24(s0)
   131cc:	fffff737          	lui	a4,0xfffff
   131d0:	7ff70713          	add	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffda9df>
   131d4:	00e7f733          	and	a4,a5,a4
   131d8:	00c7d793          	srl	a5,a5,0xc
   131dc:	00e41823          	sh	a4,16(s0)
   131e0:	00042423          	sw	zero,8(s0)
   131e4:	00d43023          	sd	a3,0(s0)
   131e8:	0017f793          	and	a5,a5,1
   131ec:	ee078ee3          	beqz	a5,130e8 <__sflush_r+0x10c>
   131f0:	08a43823          	sd	a0,144(s0)
   131f4:	ef5ff06f          	j	130e8 <__sflush_r+0x10c>
   131f8:	0009a783          	lw	a5,0(s3)
   131fc:	e60780e3          	beqz	a5,1305c <__sflush_r+0x80>
   13200:	01d00713          	li	a4,29
   13204:	00e78663          	beq	a5,a4,13210 <__sflush_r+0x234>
   13208:	01600713          	li	a4,22
   1320c:	f6e79ae3          	bne	a5,a4,13180 <__sflush_r+0x1a4>
   13210:	0099a023          	sw	s1,0(s3)
   13214:	00000513          	li	a0,0
   13218:	ef5ff06f          	j	1310c <__sflush_r+0x130>
   1321c:	ec0696e3          	bnez	a3,130e8 <__sflush_r+0x10c>
   13220:	08a43823          	sd	a0,144(s0)
   13224:	ec5ff06f          	j	130e8 <__sflush_r+0x10c>

0000000000013228 <_fflush_r>:
   13228:	fe010113          	add	sp,sp,-32
   1322c:	00813823          	sd	s0,16(sp)
   13230:	00113c23          	sd	ra,24(sp)
   13234:	00050413          	mv	s0,a0
   13238:	00050663          	beqz	a0,13244 <_fflush_r+0x1c>
   1323c:	05052783          	lw	a5,80(a0)
   13240:	02078063          	beqz	a5,13260 <_fflush_r+0x38>
   13244:	01059783          	lh	a5,16(a1)
   13248:	02079663          	bnez	a5,13274 <_fflush_r+0x4c>
   1324c:	01813083          	ld	ra,24(sp)
   13250:	01013403          	ld	s0,16(sp)
   13254:	00000513          	li	a0,0
   13258:	02010113          	add	sp,sp,32
   1325c:	00008067          	ret
   13260:	00b13423          	sd	a1,8(sp)
   13264:	3e0000ef          	jal	13644 <__sinit>
   13268:	00813583          	ld	a1,8(sp)
   1326c:	01059783          	lh	a5,16(a1)
   13270:	fc078ee3          	beqz	a5,1324c <_fflush_r+0x24>
   13274:	00040513          	mv	a0,s0
   13278:	01013403          	ld	s0,16(sp)
   1327c:	01813083          	ld	ra,24(sp)
   13280:	02010113          	add	sp,sp,32
   13284:	d59ff06f          	j	12fdc <__sflush_r>

0000000000013288 <fflush>:
   13288:	06050663          	beqz	a0,132f4 <fflush+0x6c>
   1328c:	fe010113          	add	sp,sp,-32
   13290:	00813823          	sd	s0,16(sp)
   13294:	00113c23          	sd	ra,24(sp)
   13298:	00050413          	mv	s0,a0
   1329c:	7581b503          	ld	a0,1880(gp) # 24d78 <_impure_ptr>
   132a0:	00050663          	beqz	a0,132ac <fflush+0x24>
   132a4:	05052783          	lw	a5,80(a0)
   132a8:	02078a63          	beqz	a5,132dc <fflush+0x54>
   132ac:	01041783          	lh	a5,16(s0)
   132b0:	00079c63          	bnez	a5,132c8 <fflush+0x40>
   132b4:	01813083          	ld	ra,24(sp)
   132b8:	01013403          	ld	s0,16(sp)
   132bc:	00000513          	li	a0,0
   132c0:	02010113          	add	sp,sp,32
   132c4:	00008067          	ret
   132c8:	00040593          	mv	a1,s0
   132cc:	01013403          	ld	s0,16(sp)
   132d0:	01813083          	ld	ra,24(sp)
   132d4:	02010113          	add	sp,sp,32
   132d8:	d05ff06f          	j	12fdc <__sflush_r>
   132dc:	00a13423          	sd	a0,8(sp)
   132e0:	364000ef          	jal	13644 <__sinit>
   132e4:	01041783          	lh	a5,16(s0)
   132e8:	00813503          	ld	a0,8(sp)
   132ec:	fc0784e3          	beqz	a5,132b4 <fflush+0x2c>
   132f0:	fd9ff06f          	j	132c8 <fflush+0x40>
   132f4:	00000597          	auipc	a1,0x0
   132f8:	f3458593          	add	a1,a1,-204 # 13228 <_fflush_r>
   132fc:	7481b503          	ld	a0,1864(gp) # 24d68 <_global_impure_ptr>
   13300:	0f90006f          	j	13bf8 <_fwalk_reent>

0000000000013304 <__fp_lock>:
   13304:	00000513          	li	a0,0
   13308:	00008067          	ret

000000000001330c <_cleanup_r>:
   1330c:	00009597          	auipc	a1,0x9
   13310:	7a058593          	add	a1,a1,1952 # 1caac <_fclose_r>
   13314:	0e50006f          	j	13bf8 <_fwalk_reent>

0000000000013318 <__fp_unlock>:
   13318:	00000513          	li	a0,0
   1331c:	00008067          	ret

0000000000013320 <__sinit.part.0>:
   13320:	fc010113          	add	sp,sp,-64
   13324:	02113c23          	sd	ra,56(sp)
   13328:	02813823          	sd	s0,48(sp)
   1332c:	02913423          	sd	s1,40(sp)
   13330:	03213023          	sd	s2,32(sp)
   13334:	01313c23          	sd	s3,24(sp)
   13338:	01413823          	sd	s4,16(sp)
   1333c:	01513423          	sd	s5,8(sp)
   13340:	01613023          	sd	s6,0(sp)
   13344:	00853403          	ld	s0,8(a0)
   13348:	00000717          	auipc	a4,0x0
   1334c:	fc470713          	add	a4,a4,-60 # 1330c <_cleanup_r>
   13350:	04e53c23          	sd	a4,88(a0)
   13354:	53850793          	add	a5,a0,1336
   13358:	00300713          	li	a4,3
   1335c:	52e52423          	sw	a4,1320(a0)
   13360:	52f53823          	sd	a5,1328(a0)
   13364:	52053023          	sd	zero,1312(a0)
   13368:	00400793          	li	a5,4
   1336c:	00050913          	mv	s2,a0
   13370:	00f42823          	sw	a5,16(s0)
   13374:	00800613          	li	a2,8
   13378:	00000593          	li	a1,0
   1337c:	00043023          	sd	zero,0(s0)
   13380:	00043423          	sd	zero,8(s0)
   13384:	0a042623          	sw	zero,172(s0)
   13388:	00043c23          	sd	zero,24(s0)
   1338c:	02042023          	sw	zero,32(s0)
   13390:	02042423          	sw	zero,40(s0)
   13394:	0a440513          	add	a0,s0,164
   13398:	878fd0ef          	jal	10410 <memset>
   1339c:	01093483          	ld	s1,16(s2)
   133a0:	00005b17          	auipc	s6,0x5
   133a4:	508b0b13          	add	s6,s6,1288 # 188a8 <__sread>
   133a8:	00005a97          	auipc	s5,0x5
   133ac:	564a8a93          	add	s5,s5,1380 # 1890c <__swrite>
   133b0:	00005a17          	auipc	s4,0x5
   133b4:	5e4a0a13          	add	s4,s4,1508 # 18994 <__sseek>
   133b8:	00005997          	auipc	s3,0x5
   133bc:	65498993          	add	s3,s3,1620 # 18a0c <__sclose>
   133c0:	000107b7          	lui	a5,0x10
   133c4:	03643c23          	sd	s6,56(s0)
   133c8:	05543023          	sd	s5,64(s0)
   133cc:	05443423          	sd	s4,72(s0)
   133d0:	05343823          	sd	s3,80(s0)
   133d4:	02843823          	sd	s0,48(s0)
   133d8:	00978793          	add	a5,a5,9 # 10009 <exit-0xdf>
   133dc:	00f4a823          	sw	a5,16(s1)
   133e0:	00800613          	li	a2,8
   133e4:	00000593          	li	a1,0
   133e8:	0004b023          	sd	zero,0(s1)
   133ec:	0004b423          	sd	zero,8(s1)
   133f0:	0a04a623          	sw	zero,172(s1)
   133f4:	0004bc23          	sd	zero,24(s1)
   133f8:	0204a023          	sw	zero,32(s1)
   133fc:	0204a423          	sw	zero,40(s1)
   13400:	0a448513          	add	a0,s1,164
   13404:	80cfd0ef          	jal	10410 <memset>
   13408:	01893403          	ld	s0,24(s2)
   1340c:	000207b7          	lui	a5,0x20
   13410:	0364bc23          	sd	s6,56(s1)
   13414:	0554b023          	sd	s5,64(s1)
   13418:	0544b423          	sd	s4,72(s1)
   1341c:	0534b823          	sd	s3,80(s1)
   13420:	0294b823          	sd	s1,48(s1)
   13424:	01278793          	add	a5,a5,18 # 20012 <__getf2+0x92>
   13428:	00f42823          	sw	a5,16(s0)
   1342c:	00043023          	sd	zero,0(s0)
   13430:	00043423          	sd	zero,8(s0)
   13434:	0a042623          	sw	zero,172(s0)
   13438:	00043c23          	sd	zero,24(s0)
   1343c:	02042023          	sw	zero,32(s0)
   13440:	02042423          	sw	zero,40(s0)
   13444:	0a440513          	add	a0,s0,164
   13448:	00800613          	li	a2,8
   1344c:	00000593          	li	a1,0
   13450:	fc1fc0ef          	jal	10410 <memset>
   13454:	03813083          	ld	ra,56(sp)
   13458:	03643c23          	sd	s6,56(s0)
   1345c:	05543023          	sd	s5,64(s0)
   13460:	05443423          	sd	s4,72(s0)
   13464:	05343823          	sd	s3,80(s0)
   13468:	02843823          	sd	s0,48(s0)
   1346c:	03013403          	ld	s0,48(sp)
   13470:	00100793          	li	a5,1
   13474:	04f92823          	sw	a5,80(s2)
   13478:	02813483          	ld	s1,40(sp)
   1347c:	02013903          	ld	s2,32(sp)
   13480:	01813983          	ld	s3,24(sp)
   13484:	01013a03          	ld	s4,16(sp)
   13488:	00813a83          	ld	s5,8(sp)
   1348c:	00013b03          	ld	s6,0(sp)
   13490:	04010113          	add	sp,sp,64
   13494:	00008067          	ret

0000000000013498 <__sfmoreglue>:
   13498:	fe010113          	add	sp,sp,-32
   1349c:	00913423          	sd	s1,8(sp)
   134a0:	0b000793          	li	a5,176
   134a4:	fff5849b          	addw	s1,a1,-1
   134a8:	02f484b3          	mul	s1,s1,a5
   134ac:	01213023          	sd	s2,0(sp)
   134b0:	00058913          	mv	s2,a1
   134b4:	00813823          	sd	s0,16(sp)
   134b8:	00113c23          	sd	ra,24(sp)
   134bc:	0c848593          	add	a1,s1,200
   134c0:	6dc030ef          	jal	16b9c <_malloc_r>
   134c4:	00050413          	mv	s0,a0
   134c8:	02050063          	beqz	a0,134e8 <__sfmoreglue+0x50>
   134cc:	01850513          	add	a0,a0,24
   134d0:	00043023          	sd	zero,0(s0)
   134d4:	01242423          	sw	s2,8(s0)
   134d8:	00a43823          	sd	a0,16(s0)
   134dc:	0b048613          	add	a2,s1,176
   134e0:	00000593          	li	a1,0
   134e4:	f2dfc0ef          	jal	10410 <memset>
   134e8:	01813083          	ld	ra,24(sp)
   134ec:	00040513          	mv	a0,s0
   134f0:	01013403          	ld	s0,16(sp)
   134f4:	00813483          	ld	s1,8(sp)
   134f8:	00013903          	ld	s2,0(sp)
   134fc:	02010113          	add	sp,sp,32
   13500:	00008067          	ret

0000000000013504 <__sfp>:
   13504:	fd010113          	add	sp,sp,-48
   13508:	00913c23          	sd	s1,24(sp)
   1350c:	7481b483          	ld	s1,1864(gp) # 24d68 <_global_impure_ptr>
   13510:	0504a783          	lw	a5,80(s1)
   13514:	01213823          	sd	s2,16(sp)
   13518:	02113423          	sd	ra,40(sp)
   1351c:	02813023          	sd	s0,32(sp)
   13520:	01313423          	sd	s3,8(sp)
   13524:	00050913          	mv	s2,a0
   13528:	0a078863          	beqz	a5,135d8 <__sfp+0xd4>
   1352c:	52048493          	add	s1,s1,1312
   13530:	0b000993          	li	s3,176
   13534:	0084a703          	lw	a4,8(s1)
   13538:	0104b403          	ld	s0,16(s1)
   1353c:	08e05663          	blez	a4,135c8 <__sfp+0xc4>
   13540:	02071713          	sll	a4,a4,0x20
   13544:	02075713          	srl	a4,a4,0x20
   13548:	03370733          	mul	a4,a4,s3
   1354c:	00e40733          	add	a4,s0,a4
   13550:	00c0006f          	j	1355c <__sfp+0x58>
   13554:	0b040413          	add	s0,s0,176
   13558:	06e40863          	beq	s0,a4,135c8 <__sfp+0xc4>
   1355c:	01041783          	lh	a5,16(s0)
   13560:	fe079ae3          	bnez	a5,13554 <__sfp+0x50>
   13564:	ffff07b7          	lui	a5,0xffff0
   13568:	00178793          	add	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffcb1e1>
   1356c:	00f42823          	sw	a5,16(s0)
   13570:	0a042623          	sw	zero,172(s0)
   13574:	00043023          	sd	zero,0(s0)
   13578:	00043423          	sd	zero,8(s0)
   1357c:	00043c23          	sd	zero,24(s0)
   13580:	02042023          	sw	zero,32(s0)
   13584:	02042423          	sw	zero,40(s0)
   13588:	00800613          	li	a2,8
   1358c:	00000593          	li	a1,0
   13590:	0a440513          	add	a0,s0,164
   13594:	e7dfc0ef          	jal	10410 <memset>
   13598:	04043c23          	sd	zero,88(s0)
   1359c:	06042023          	sw	zero,96(s0)
   135a0:	06043c23          	sd	zero,120(s0)
   135a4:	08042023          	sw	zero,128(s0)
   135a8:	02813083          	ld	ra,40(sp)
   135ac:	00040513          	mv	a0,s0
   135b0:	02013403          	ld	s0,32(sp)
   135b4:	01813483          	ld	s1,24(sp)
   135b8:	01013903          	ld	s2,16(sp)
   135bc:	00813983          	ld	s3,8(sp)
   135c0:	03010113          	add	sp,sp,48
   135c4:	00008067          	ret
   135c8:	0004b403          	ld	s0,0(s1)
   135cc:	00040c63          	beqz	s0,135e4 <__sfp+0xe0>
   135d0:	00040493          	mv	s1,s0
   135d4:	f61ff06f          	j	13534 <__sfp+0x30>
   135d8:	00048513          	mv	a0,s1
   135dc:	d45ff0ef          	jal	13320 <__sinit.part.0>
   135e0:	f4dff06f          	j	1352c <__sfp+0x28>
   135e4:	2d800593          	li	a1,728
   135e8:	00090513          	mv	a0,s2
   135ec:	5b0030ef          	jal	16b9c <_malloc_r>
   135f0:	00050413          	mv	s0,a0
   135f4:	02050863          	beqz	a0,13624 <__sfp+0x120>
   135f8:	01850513          	add	a0,a0,24
   135fc:	00400793          	li	a5,4
   13600:	00043023          	sd	zero,0(s0)
   13604:	00f42423          	sw	a5,8(s0)
   13608:	00a43823          	sd	a0,16(s0)
   1360c:	2c000613          	li	a2,704
   13610:	00000593          	li	a1,0
   13614:	dfdfc0ef          	jal	10410 <memset>
   13618:	0084b023          	sd	s0,0(s1)
   1361c:	00040493          	mv	s1,s0
   13620:	f15ff06f          	j	13534 <__sfp+0x30>
   13624:	0004b023          	sd	zero,0(s1)
   13628:	00c00793          	li	a5,12
   1362c:	00f92023          	sw	a5,0(s2)
   13630:	f79ff06f          	j	135a8 <__sfp+0xa4>

0000000000013634 <_cleanup>:
   13634:	00009597          	auipc	a1,0x9
   13638:	47858593          	add	a1,a1,1144 # 1caac <_fclose_r>
   1363c:	7481b503          	ld	a0,1864(gp) # 24d68 <_global_impure_ptr>
   13640:	5b80006f          	j	13bf8 <_fwalk_reent>

0000000000013644 <__sinit>:
   13644:	05052783          	lw	a5,80(a0)
   13648:	00078463          	beqz	a5,13650 <__sinit+0xc>
   1364c:	00008067          	ret
   13650:	cd1ff06f          	j	13320 <__sinit.part.0>

0000000000013654 <__sfp_lock_acquire>:
   13654:	00008067          	ret

0000000000013658 <__sfp_lock_release>:
   13658:	00008067          	ret

000000000001365c <__sinit_lock_acquire>:
   1365c:	00008067          	ret

0000000000013660 <__sinit_lock_release>:
   13660:	00008067          	ret

0000000000013664 <__fp_lock_all>:
   13664:	00000597          	auipc	a1,0x0
   13668:	ca058593          	add	a1,a1,-864 # 13304 <__fp_lock>
   1366c:	7581b503          	ld	a0,1880(gp) # 24d78 <_impure_ptr>
   13670:	4cc0006f          	j	13b3c <_fwalk>

0000000000013674 <__fp_unlock_all>:
   13674:	00000597          	auipc	a1,0x0
   13678:	ca458593          	add	a1,a1,-860 # 13318 <__fp_unlock>
   1367c:	7581b503          	ld	a0,1880(gp) # 24d78 <_impure_ptr>
   13680:	4bc0006f          	j	13b3c <_fwalk>

0000000000013684 <__libc_fini_array>:
   13684:	fe010113          	add	sp,sp,-32
   13688:	00813823          	sd	s0,16(sp)
   1368c:	00010797          	auipc	a5,0x10
   13690:	59c78793          	add	a5,a5,1436 # 23c28 <__do_global_dtors_aux_fini_array_entry>
   13694:	00010417          	auipc	s0,0x10
   13698:	59c40413          	add	s0,s0,1436 # 23c30 <impure_data>
   1369c:	40f40433          	sub	s0,s0,a5
   136a0:	00913423          	sd	s1,8(sp)
   136a4:	00113c23          	sd	ra,24(sp)
   136a8:	40345493          	sra	s1,s0,0x3
   136ac:	02048063          	beqz	s1,136cc <__libc_fini_array+0x48>
   136b0:	ff840413          	add	s0,s0,-8
   136b4:	00f40433          	add	s0,s0,a5
   136b8:	00043783          	ld	a5,0(s0)
   136bc:	fff48493          	add	s1,s1,-1
   136c0:	ff840413          	add	s0,s0,-8
   136c4:	000780e7          	jalr	a5
   136c8:	fe0498e3          	bnez	s1,136b8 <__libc_fini_array+0x34>
   136cc:	01813083          	ld	ra,24(sp)
   136d0:	01013403          	ld	s0,16(sp)
   136d4:	00813483          	ld	s1,8(sp)
   136d8:	02010113          	add	sp,sp,32
   136dc:	00008067          	ret

00000000000136e0 <_malloc_trim_r>:
   136e0:	fd010113          	add	sp,sp,-48
   136e4:	02813023          	sd	s0,32(sp)
   136e8:	00913c23          	sd	s1,24(sp)
   136ec:	01213823          	sd	s2,16(sp)
   136f0:	01313423          	sd	s3,8(sp)
   136f4:	01413023          	sd	s4,0(sp)
   136f8:	00058993          	mv	s3,a1
   136fc:	02113423          	sd	ra,40(sp)
   13700:	00011a17          	auipc	s4,0x11
   13704:	c78a0a13          	add	s4,s4,-904 # 24378 <__malloc_av_>
   13708:	00050913          	mv	s2,a0
   1370c:	545030ef          	jal	17450 <__malloc_lock>
   13710:	010a3703          	ld	a4,16(s4)
   13714:	000017b7          	lui	a5,0x1
   13718:	fdf78413          	add	s0,a5,-33 # fdf <exit-0xf109>
   1371c:	00873483          	ld	s1,8(a4)
   13720:	ffc4f493          	and	s1,s1,-4
   13724:	00848433          	add	s0,s1,s0
   13728:	41340433          	sub	s0,s0,s3
   1372c:	00c45413          	srl	s0,s0,0xc
   13730:	fff40413          	add	s0,s0,-1
   13734:	00c41413          	sll	s0,s0,0xc
   13738:	00f44e63          	blt	s0,a5,13754 <_malloc_trim_r+0x74>
   1373c:	00000593          	li	a1,0
   13740:	00090513          	mv	a0,s2
   13744:	030050ef          	jal	18774 <_sbrk_r>
   13748:	010a3783          	ld	a5,16(s4)
   1374c:	009787b3          	add	a5,a5,s1
   13750:	02f50863          	beq	a0,a5,13780 <_malloc_trim_r+0xa0>
   13754:	00090513          	mv	a0,s2
   13758:	4fd030ef          	jal	17454 <__malloc_unlock>
   1375c:	02813083          	ld	ra,40(sp)
   13760:	02013403          	ld	s0,32(sp)
   13764:	01813483          	ld	s1,24(sp)
   13768:	01013903          	ld	s2,16(sp)
   1376c:	00813983          	ld	s3,8(sp)
   13770:	00013a03          	ld	s4,0(sp)
   13774:	00000513          	li	a0,0
   13778:	03010113          	add	sp,sp,48
   1377c:	00008067          	ret
   13780:	408005b3          	neg	a1,s0
   13784:	00090513          	mv	a0,s2
   13788:	7ed040ef          	jal	18774 <_sbrk_r>
   1378c:	fff00793          	li	a5,-1
   13790:	04f50a63          	beq	a0,a5,137e4 <_malloc_trim_r+0x104>
   13794:	00011717          	auipc	a4,0x11
   13798:	66470713          	add	a4,a4,1636 # 24df8 <__malloc_current_mallinfo>
   1379c:	00072783          	lw	a5,0(a4)
   137a0:	010a3683          	ld	a3,16(s4)
   137a4:	408484b3          	sub	s1,s1,s0
   137a8:	0014e493          	or	s1,s1,1
   137ac:	408787bb          	subw	a5,a5,s0
   137b0:	00090513          	mv	a0,s2
   137b4:	0096b423          	sd	s1,8(a3)
   137b8:	00f72023          	sw	a5,0(a4)
   137bc:	499030ef          	jal	17454 <__malloc_unlock>
   137c0:	02813083          	ld	ra,40(sp)
   137c4:	02013403          	ld	s0,32(sp)
   137c8:	01813483          	ld	s1,24(sp)
   137cc:	01013903          	ld	s2,16(sp)
   137d0:	00813983          	ld	s3,8(sp)
   137d4:	00013a03          	ld	s4,0(sp)
   137d8:	00100513          	li	a0,1
   137dc:	03010113          	add	sp,sp,48
   137e0:	00008067          	ret
   137e4:	00000593          	li	a1,0
   137e8:	00090513          	mv	a0,s2
   137ec:	789040ef          	jal	18774 <_sbrk_r>
   137f0:	010a3703          	ld	a4,16(s4)
   137f4:	01f00693          	li	a3,31
   137f8:	40e507b3          	sub	a5,a0,a4
   137fc:	f4f6dce3          	bge	a3,a5,13754 <_malloc_trim_r+0x74>
   13800:	7601b683          	ld	a3,1888(gp) # 24d80 <__malloc_sbrk_base>
   13804:	40d50533          	sub	a0,a0,a3
   13808:	0017e793          	or	a5,a5,1
   1380c:	00011697          	auipc	a3,0x11
   13810:	5ea6a623          	sw	a0,1516(a3) # 24df8 <__malloc_current_mallinfo>
   13814:	00f73423          	sd	a5,8(a4)
   13818:	f3dff06f          	j	13754 <_malloc_trim_r+0x74>

000000000001381c <_free_r>:
   1381c:	18058863          	beqz	a1,139ac <_free_r+0x190>
   13820:	fe010113          	add	sp,sp,-32
   13824:	00813823          	sd	s0,16(sp)
   13828:	00913423          	sd	s1,8(sp)
   1382c:	00058413          	mv	s0,a1
   13830:	00050493          	mv	s1,a0
   13834:	00113c23          	sd	ra,24(sp)
   13838:	419030ef          	jal	17450 <__malloc_lock>
   1383c:	ff843583          	ld	a1,-8(s0)
   13840:	ff040713          	add	a4,s0,-16
   13844:	00011517          	auipc	a0,0x11
   13848:	b3450513          	add	a0,a0,-1228 # 24378 <__malloc_av_>
   1384c:	ffe5f793          	and	a5,a1,-2
   13850:	00f70633          	add	a2,a4,a5
   13854:	00863683          	ld	a3,8(a2)
   13858:	01053803          	ld	a6,16(a0)
   1385c:	ffc6f693          	and	a3,a3,-4
   13860:	1ac80863          	beq	a6,a2,13a10 <_free_r+0x1f4>
   13864:	00d63423          	sd	a3,8(a2)
   13868:	0015f593          	and	a1,a1,1
   1386c:	00d60833          	add	a6,a2,a3
   13870:	0a059463          	bnez	a1,13918 <_free_r+0xfc>
   13874:	ff043303          	ld	t1,-16(s0)
   13878:	00883583          	ld	a1,8(a6)
   1387c:	00011897          	auipc	a7,0x11
   13880:	b0c88893          	add	a7,a7,-1268 # 24388 <__malloc_av_+0x10>
   13884:	40670733          	sub	a4,a4,t1
   13888:	01073803          	ld	a6,16(a4)
   1388c:	006787b3          	add	a5,a5,t1
   13890:	0015f593          	and	a1,a1,1
   13894:	15180863          	beq	a6,a7,139e4 <_free_r+0x1c8>
   13898:	01873303          	ld	t1,24(a4)
   1389c:	00683c23          	sd	t1,24(a6)
   138a0:	01033823          	sd	a6,16(t1)
   138a4:	1a058c63          	beqz	a1,13a5c <_free_r+0x240>
   138a8:	0017e693          	or	a3,a5,1
   138ac:	00d73423          	sd	a3,8(a4)
   138b0:	00f63023          	sd	a5,0(a2)
   138b4:	1ff00693          	li	a3,511
   138b8:	08f6e063          	bltu	a3,a5,13938 <_free_r+0x11c>
   138bc:	0037d793          	srl	a5,a5,0x3
   138c0:	0017869b          	addw	a3,a5,1
   138c4:	0016969b          	sllw	a3,a3,0x1
   138c8:	00369693          	sll	a3,a3,0x3
   138cc:	00853803          	ld	a6,8(a0)
   138d0:	00d506b3          	add	a3,a0,a3
   138d4:	0006b583          	ld	a1,0(a3)
   138d8:	4027d61b          	sraw	a2,a5,0x2
   138dc:	00100793          	li	a5,1
   138e0:	00c797b3          	sll	a5,a5,a2
   138e4:	0107e7b3          	or	a5,a5,a6
   138e8:	ff068613          	add	a2,a3,-16
   138ec:	00c73c23          	sd	a2,24(a4)
   138f0:	00b73823          	sd	a1,16(a4)
   138f4:	00f53423          	sd	a5,8(a0)
   138f8:	00e6b023          	sd	a4,0(a3)
   138fc:	00e5bc23          	sd	a4,24(a1)
   13900:	01013403          	ld	s0,16(sp)
   13904:	01813083          	ld	ra,24(sp)
   13908:	00048513          	mv	a0,s1
   1390c:	00813483          	ld	s1,8(sp)
   13910:	02010113          	add	sp,sp,32
   13914:	3410306f          	j	17454 <__malloc_unlock>
   13918:	00883583          	ld	a1,8(a6)
   1391c:	0015f593          	and	a1,a1,1
   13920:	08058863          	beqz	a1,139b0 <_free_r+0x194>
   13924:	0017e693          	or	a3,a5,1
   13928:	fed43c23          	sd	a3,-8(s0)
   1392c:	00f63023          	sd	a5,0(a2)
   13930:	1ff00693          	li	a3,511
   13934:	f8f6f4e3          	bgeu	a3,a5,138bc <_free_r+0xa0>
   13938:	0097d693          	srl	a3,a5,0x9
   1393c:	00400613          	li	a2,4
   13940:	12d66263          	bltu	a2,a3,13a64 <_free_r+0x248>
   13944:	0067d693          	srl	a3,a5,0x6
   13948:	0396859b          	addw	a1,a3,57
   1394c:	0015959b          	sllw	a1,a1,0x1
   13950:	0386861b          	addw	a2,a3,56
   13954:	00359593          	sll	a1,a1,0x3
   13958:	00b505b3          	add	a1,a0,a1
   1395c:	0005b683          	ld	a3,0(a1)
   13960:	ff058593          	add	a1,a1,-16
   13964:	00d59863          	bne	a1,a3,13974 <_free_r+0x158>
   13968:	15c0006f          	j	13ac4 <_free_r+0x2a8>
   1396c:	0106b683          	ld	a3,16(a3)
   13970:	00d58863          	beq	a1,a3,13980 <_free_r+0x164>
   13974:	0086b603          	ld	a2,8(a3)
   13978:	ffc67613          	and	a2,a2,-4
   1397c:	fec7e8e3          	bltu	a5,a2,1396c <_free_r+0x150>
   13980:	0186b583          	ld	a1,24(a3)
   13984:	00b73c23          	sd	a1,24(a4)
   13988:	00d73823          	sd	a3,16(a4)
   1398c:	01013403          	ld	s0,16(sp)
   13990:	01813083          	ld	ra,24(sp)
   13994:	00e5b823          	sd	a4,16(a1)
   13998:	00048513          	mv	a0,s1
   1399c:	00813483          	ld	s1,8(sp)
   139a0:	00e6bc23          	sd	a4,24(a3)
   139a4:	02010113          	add	sp,sp,32
   139a8:	2ad0306f          	j	17454 <__malloc_unlock>
   139ac:	00008067          	ret
   139b0:	00d787b3          	add	a5,a5,a3
   139b4:	00011897          	auipc	a7,0x11
   139b8:	9d488893          	add	a7,a7,-1580 # 24388 <__malloc_av_+0x10>
   139bc:	01063683          	ld	a3,16(a2)
   139c0:	0f168063          	beq	a3,a7,13aa0 <_free_r+0x284>
   139c4:	01863803          	ld	a6,24(a2)
   139c8:	0017e593          	or	a1,a5,1
   139cc:	00f70633          	add	a2,a4,a5
   139d0:	0106bc23          	sd	a6,24(a3)
   139d4:	00d83823          	sd	a3,16(a6)
   139d8:	00b73423          	sd	a1,8(a4)
   139dc:	00f63023          	sd	a5,0(a2)
   139e0:	ed5ff06f          	j	138b4 <_free_r+0x98>
   139e4:	14059463          	bnez	a1,13b2c <_free_r+0x310>
   139e8:	01063583          	ld	a1,16(a2)
   139ec:	01863603          	ld	a2,24(a2)
   139f0:	00f686b3          	add	a3,a3,a5
   139f4:	0016e793          	or	a5,a3,1
   139f8:	00c5bc23          	sd	a2,24(a1)
   139fc:	00b63823          	sd	a1,16(a2)
   13a00:	00f73423          	sd	a5,8(a4)
   13a04:	00d70733          	add	a4,a4,a3
   13a08:	00d73023          	sd	a3,0(a4)
   13a0c:	ef5ff06f          	j	13900 <_free_r+0xe4>
   13a10:	0015f593          	and	a1,a1,1
   13a14:	00d786b3          	add	a3,a5,a3
   13a18:	02059063          	bnez	a1,13a38 <_free_r+0x21c>
   13a1c:	ff043583          	ld	a1,-16(s0)
   13a20:	40b70733          	sub	a4,a4,a1
   13a24:	01873783          	ld	a5,24(a4)
   13a28:	01073603          	ld	a2,16(a4)
   13a2c:	00b686b3          	add	a3,a3,a1
   13a30:	00f63c23          	sd	a5,24(a2)
   13a34:	00c7b823          	sd	a2,16(a5)
   13a38:	0016e793          	or	a5,a3,1
   13a3c:	00f73423          	sd	a5,8(a4)
   13a40:	00e53823          	sd	a4,16(a0)
   13a44:	7681b783          	ld	a5,1896(gp) # 24d88 <__malloc_trim_threshold>
   13a48:	eaf6ece3          	bltu	a3,a5,13900 <_free_r+0xe4>
   13a4c:	7801b583          	ld	a1,1920(gp) # 24da0 <__malloc_top_pad>
   13a50:	00048513          	mv	a0,s1
   13a54:	c8dff0ef          	jal	136e0 <_malloc_trim_r>
   13a58:	ea9ff06f          	j	13900 <_free_r+0xe4>
   13a5c:	00d787b3          	add	a5,a5,a3
   13a60:	f5dff06f          	j	139bc <_free_r+0x1a0>
   13a64:	01400613          	li	a2,20
   13a68:	02d67263          	bgeu	a2,a3,13a8c <_free_r+0x270>
   13a6c:	05400613          	li	a2,84
   13a70:	06d66863          	bltu	a2,a3,13ae0 <_free_r+0x2c4>
   13a74:	00c7d693          	srl	a3,a5,0xc
   13a78:	06f6859b          	addw	a1,a3,111
   13a7c:	0015959b          	sllw	a1,a1,0x1
   13a80:	06e6861b          	addw	a2,a3,110
   13a84:	00359593          	sll	a1,a1,0x3
   13a88:	ed1ff06f          	j	13958 <_free_r+0x13c>
   13a8c:	05c6859b          	addw	a1,a3,92
   13a90:	0015959b          	sllw	a1,a1,0x1
   13a94:	05b6861b          	addw	a2,a3,91
   13a98:	00359593          	sll	a1,a1,0x3
   13a9c:	ebdff06f          	j	13958 <_free_r+0x13c>
   13aa0:	02e53423          	sd	a4,40(a0)
   13aa4:	02e53023          	sd	a4,32(a0)
   13aa8:	0017e693          	or	a3,a5,1
   13aac:	01173c23          	sd	a7,24(a4)
   13ab0:	01173823          	sd	a7,16(a4)
   13ab4:	00d73423          	sd	a3,8(a4)
   13ab8:	00f70733          	add	a4,a4,a5
   13abc:	00f73023          	sd	a5,0(a4)
   13ac0:	e41ff06f          	j	13900 <_free_r+0xe4>
   13ac4:	00853803          	ld	a6,8(a0)
   13ac8:	4026561b          	sraw	a2,a2,0x2
   13acc:	00100793          	li	a5,1
   13ad0:	00c797b3          	sll	a5,a5,a2
   13ad4:	0107e7b3          	or	a5,a5,a6
   13ad8:	00f53423          	sd	a5,8(a0)
   13adc:	ea9ff06f          	j	13984 <_free_r+0x168>
   13ae0:	15400613          	li	a2,340
   13ae4:	00d66e63          	bltu	a2,a3,13b00 <_free_r+0x2e4>
   13ae8:	00f7d693          	srl	a3,a5,0xf
   13aec:	0786859b          	addw	a1,a3,120
   13af0:	0015959b          	sllw	a1,a1,0x1
   13af4:	0776861b          	addw	a2,a3,119
   13af8:	00359593          	sll	a1,a1,0x3
   13afc:	e5dff06f          	j	13958 <_free_r+0x13c>
   13b00:	55400613          	li	a2,1364
   13b04:	00d66e63          	bltu	a2,a3,13b20 <_free_r+0x304>
   13b08:	0127d693          	srl	a3,a5,0x12
   13b0c:	07d6859b          	addw	a1,a3,125
   13b10:	0015959b          	sllw	a1,a1,0x1
   13b14:	07c6861b          	addw	a2,a3,124
   13b18:	00359593          	sll	a1,a1,0x3
   13b1c:	e3dff06f          	j	13958 <_free_r+0x13c>
   13b20:	7f000593          	li	a1,2032
   13b24:	07e00613          	li	a2,126
   13b28:	e31ff06f          	j	13958 <_free_r+0x13c>
   13b2c:	0017e693          	or	a3,a5,1
   13b30:	00d73423          	sd	a3,8(a4)
   13b34:	00f63023          	sd	a5,0(a2)
   13b38:	dc9ff06f          	j	13900 <_free_r+0xe4>

0000000000013b3c <_fwalk>:
   13b3c:	fb010113          	add	sp,sp,-80
   13b40:	03213823          	sd	s2,48(sp)
   13b44:	03313423          	sd	s3,40(sp)
   13b48:	03413023          	sd	s4,32(sp)
   13b4c:	01513c23          	sd	s5,24(sp)
   13b50:	01613823          	sd	s6,16(sp)
   13b54:	01713423          	sd	s7,8(sp)
   13b58:	04113423          	sd	ra,72(sp)
   13b5c:	04813023          	sd	s0,64(sp)
   13b60:	02913c23          	sd	s1,56(sp)
   13b64:	00058a93          	mv	s5,a1
   13b68:	52050993          	add	s3,a0,1312
   13b6c:	00000913          	li	s2,0
   13b70:	0b000b13          	li	s6,176
   13b74:	00100b93          	li	s7,1
   13b78:	fff00a13          	li	s4,-1
   13b7c:	0089a483          	lw	s1,8(s3)
   13b80:	0109b403          	ld	s0,16(s3)
   13b84:	02905e63          	blez	s1,13bc0 <_fwalk+0x84>
   13b88:	02049493          	sll	s1,s1,0x20
   13b8c:	0204d493          	srl	s1,s1,0x20
   13b90:	036484b3          	mul	s1,s1,s6
   13b94:	009404b3          	add	s1,s0,s1
   13b98:	01045783          	lhu	a5,16(s0)
   13b9c:	00fbfe63          	bgeu	s7,a5,13bb8 <_fwalk+0x7c>
   13ba0:	01241783          	lh	a5,18(s0)
   13ba4:	00040513          	mv	a0,s0
   13ba8:	01478863          	beq	a5,s4,13bb8 <_fwalk+0x7c>
   13bac:	000a80e7          	jalr	s5
   13bb0:	01256933          	or	s2,a0,s2
   13bb4:	0009091b          	sext.w	s2,s2
   13bb8:	0b040413          	add	s0,s0,176
   13bbc:	fc849ee3          	bne	s1,s0,13b98 <_fwalk+0x5c>
   13bc0:	0009b983          	ld	s3,0(s3)
   13bc4:	fa099ce3          	bnez	s3,13b7c <_fwalk+0x40>
   13bc8:	04813083          	ld	ra,72(sp)
   13bcc:	04013403          	ld	s0,64(sp)
   13bd0:	03813483          	ld	s1,56(sp)
   13bd4:	02813983          	ld	s3,40(sp)
   13bd8:	02013a03          	ld	s4,32(sp)
   13bdc:	01813a83          	ld	s5,24(sp)
   13be0:	01013b03          	ld	s6,16(sp)
   13be4:	00813b83          	ld	s7,8(sp)
   13be8:	00090513          	mv	a0,s2
   13bec:	03013903          	ld	s2,48(sp)
   13bf0:	05010113          	add	sp,sp,80
   13bf4:	00008067          	ret

0000000000013bf8 <_fwalk_reent>:
   13bf8:	fb010113          	add	sp,sp,-80
   13bfc:	03213823          	sd	s2,48(sp)
   13c00:	03313423          	sd	s3,40(sp)
   13c04:	03413023          	sd	s4,32(sp)
   13c08:	01513c23          	sd	s5,24(sp)
   13c0c:	01613823          	sd	s6,16(sp)
   13c10:	01713423          	sd	s7,8(sp)
   13c14:	01813023          	sd	s8,0(sp)
   13c18:	04113423          	sd	ra,72(sp)
   13c1c:	04813023          	sd	s0,64(sp)
   13c20:	02913c23          	sd	s1,56(sp)
   13c24:	00050993          	mv	s3,a0
   13c28:	00058b13          	mv	s6,a1
   13c2c:	52050a13          	add	s4,a0,1312
   13c30:	00000913          	li	s2,0
   13c34:	0b000b93          	li	s7,176
   13c38:	00100c13          	li	s8,1
   13c3c:	fff00a93          	li	s5,-1
   13c40:	008a2483          	lw	s1,8(s4)
   13c44:	010a3403          	ld	s0,16(s4)
   13c48:	04905063          	blez	s1,13c88 <_fwalk_reent+0x90>
   13c4c:	02049493          	sll	s1,s1,0x20
   13c50:	0204d493          	srl	s1,s1,0x20
   13c54:	037484b3          	mul	s1,s1,s7
   13c58:	009404b3          	add	s1,s0,s1
   13c5c:	01045783          	lhu	a5,16(s0)
   13c60:	02fc7063          	bgeu	s8,a5,13c80 <_fwalk_reent+0x88>
   13c64:	01241783          	lh	a5,18(s0)
   13c68:	00040593          	mv	a1,s0
   13c6c:	00098513          	mv	a0,s3
   13c70:	01578863          	beq	a5,s5,13c80 <_fwalk_reent+0x88>
   13c74:	000b00e7          	jalr	s6
   13c78:	01256933          	or	s2,a0,s2
   13c7c:	0009091b          	sext.w	s2,s2
   13c80:	0b040413          	add	s0,s0,176
   13c84:	fc849ce3          	bne	s1,s0,13c5c <_fwalk_reent+0x64>
   13c88:	000a3a03          	ld	s4,0(s4)
   13c8c:	fa0a1ae3          	bnez	s4,13c40 <_fwalk_reent+0x48>
   13c90:	04813083          	ld	ra,72(sp)
   13c94:	04013403          	ld	s0,64(sp)
   13c98:	03813483          	ld	s1,56(sp)
   13c9c:	02813983          	ld	s3,40(sp)
   13ca0:	02013a03          	ld	s4,32(sp)
   13ca4:	01813a83          	ld	s5,24(sp)
   13ca8:	01013b03          	ld	s6,16(sp)
   13cac:	00813b83          	ld	s7,8(sp)
   13cb0:	00013c03          	ld	s8,0(sp)
   13cb4:	00090513          	mv	a0,s2
   13cb8:	03013903          	ld	s2,48(sp)
   13cbc:	05010113          	add	sp,sp,80
   13cc0:	00008067          	ret

0000000000013cc4 <eshdn1>:
   13cc4:	00450693          	add	a3,a0,4
   13cc8:	00000713          	li	a4,0
   13ccc:	01a50513          	add	a0,a0,26
   13cd0:	ffff8837          	lui	a6,0xffff8
   13cd4:	0006d783          	lhu	a5,0(a3)
   13cd8:	0017f613          	and	a2,a5,1
   13cdc:	00060463          	beqz	a2,13ce4 <eshdn1+0x20>
   13ce0:	00176713          	or	a4,a4,1
   13ce4:	00277613          	and	a2,a4,2
   13ce8:	0017d793          	srl	a5,a5,0x1
   13cec:	0017171b          	sllw	a4,a4,0x1
   13cf0:	0107e5b3          	or	a1,a5,a6
   13cf4:	00060663          	beqz	a2,13d00 <eshdn1+0x3c>
   13cf8:	03059793          	sll	a5,a1,0x30
   13cfc:	0307d793          	srl	a5,a5,0x30
   13d00:	00f69023          	sh	a5,0(a3)
   13d04:	03071713          	sll	a4,a4,0x30
   13d08:	00268693          	add	a3,a3,2
   13d0c:	03075713          	srl	a4,a4,0x30
   13d10:	fcd512e3          	bne	a0,a3,13cd4 <eshdn1+0x10>
   13d14:	00008067          	ret

0000000000013d18 <eshup1>:
   13d18:	01850693          	add	a3,a0,24
   13d1c:	00000713          	li	a4,0
   13d20:	00250513          	add	a0,a0,2
   13d24:	0006d783          	lhu	a5,0(a3)
   13d28:	00f7d613          	srl	a2,a5,0xf
   13d2c:	0017979b          	sllw	a5,a5,0x1
   13d30:	00060463          	beqz	a2,13d38 <eshup1+0x20>
   13d34:	00176713          	or	a4,a4,1
   13d38:	00277613          	and	a2,a4,2
   13d3c:	03079793          	sll	a5,a5,0x30
   13d40:	0017171b          	sllw	a4,a4,0x1
   13d44:	0307d793          	srl	a5,a5,0x30
   13d48:	00060463          	beqz	a2,13d50 <eshup1+0x38>
   13d4c:	0017e793          	or	a5,a5,1
   13d50:	00f69023          	sh	a5,0(a3)
   13d54:	03071713          	sll	a4,a4,0x30
   13d58:	ffe68693          	add	a3,a3,-2
   13d5c:	03075713          	srl	a4,a4,0x30
   13d60:	fcd512e3          	bne	a0,a3,13d24 <eshup1+0xc>
   13d64:	00008067          	ret

0000000000013d68 <m16m>:
   13d68:	fe010113          	add	sp,sp,-32
   13d6c:	00010e37          	lui	t3,0x10
   13d70:	00011b23          	sh	zero,22(sp)
   13d74:	00011c23          	sh	zero,24(sp)
   13d78:	01858593          	add	a1,a1,24
   13d7c:	01810793          	add	a5,sp,24
   13d80:	00410813          	add	a6,sp,4
   13d84:	fffe0e13          	add	t3,t3,-1 # ffff <exit-0xe9>
   13d88:	0005d703          	lhu	a4,0(a1)
   13d8c:	ffe78793          	add	a5,a5,-2
   13d90:	ffe58593          	add	a1,a1,-2
   13d94:	02070a63          	beqz	a4,13dc8 <m16m+0x60>
   13d98:	02a70733          	mul	a4,a4,a0
   13d9c:	0027d883          	lhu	a7,2(a5)
   13da0:	0007d303          	lhu	t1,0(a5)
   13da4:	01c776b3          	and	a3,a4,t3
   13da8:	011686b3          	add	a3,a3,a7
   13dac:	01075713          	srl	a4,a4,0x10
   13db0:	0106d893          	srl	a7,a3,0x10
   13db4:	00670733          	add	a4,a4,t1
   13db8:	01170733          	add	a4,a4,a7
   13dbc:	00e79023          	sh	a4,0(a5)
   13dc0:	00d79123          	sh	a3,2(a5)
   13dc4:	01075713          	srl	a4,a4,0x10
   13dc8:	fee79f23          	sh	a4,-2(a5)
   13dcc:	fb079ee3          	bne	a5,a6,13d88 <m16m+0x20>
   13dd0:	00460613          	add	a2,a2,4
   13dd4:	01a10693          	add	a3,sp,26
   13dd8:	0007d703          	lhu	a4,0(a5)
   13ddc:	00278793          	add	a5,a5,2
   13de0:	00260613          	add	a2,a2,2
   13de4:	fee61f23          	sh	a4,-2(a2)
   13de8:	fef698e3          	bne	a3,a5,13dd8 <m16m+0x70>
   13dec:	02010113          	add	sp,sp,32
   13df0:	00008067          	ret

0000000000013df4 <emovo.constprop.0>:
   13df4:	00055703          	lhu	a4,0(a0)
   13df8:	00255783          	lhu	a5,2(a0)
   13dfc:	00070663          	beqz	a4,13e08 <emovo.constprop.0+0x14>
   13e00:	00008737          	lui	a4,0x8
   13e04:	00e7e7b3          	or	a5,a5,a4
   13e08:	00f59923          	sh	a5,18(a1)
   13e0c:	00255703          	lhu	a4,2(a0)
   13e10:	000087b7          	lui	a5,0x8
   13e14:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   13e18:	02f70463          	beq	a4,a5,13e40 <emovo.constprop.0+0x4c>
   13e1c:	00650793          	add	a5,a0,6
   13e20:	01058593          	add	a1,a1,16
   13e24:	01850513          	add	a0,a0,24
   13e28:	0007d703          	lhu	a4,0(a5)
   13e2c:	00278793          	add	a5,a5,2
   13e30:	ffe58593          	add	a1,a1,-2
   13e34:	00e59123          	sh	a4,2(a1)
   13e38:	fea798e3          	bne	a5,a0,13e28 <emovo.constprop.0+0x34>
   13e3c:	00008067          	ret
   13e40:	00650793          	add	a5,a0,6
   13e44:	01a50513          	add	a0,a0,26
   13e48:	0007d703          	lhu	a4,0(a5)
   13e4c:	00278793          	add	a5,a5,2
   13e50:	02071a63          	bnez	a4,13e84 <emovo.constprop.0+0x90>
   13e54:	fef51ae3          	bne	a0,a5,13e48 <emovo.constprop.0+0x54>
   13e58:	01258713          	add	a4,a1,18
   13e5c:	00058793          	mv	a5,a1
   13e60:	00278793          	add	a5,a5,2
   13e64:	fe079f23          	sh	zero,-2(a5)
   13e68:	fee79ce3          	bne	a5,a4,13e60 <emovo.constprop.0+0x6c>
   13e6c:	0125d783          	lhu	a5,18(a1)
   13e70:	00008737          	lui	a4,0x8
   13e74:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   13e78:	00e7e7b3          	or	a5,a5,a4
   13e7c:	00f59923          	sh	a5,18(a1)
   13e80:	00008067          	ret
   13e84:	01058713          	add	a4,a1,16
   13e88:	00058793          	mv	a5,a1
   13e8c:	00278793          	add	a5,a5,2
   13e90:	fe079f23          	sh	zero,-2(a5)
   13e94:	fee79ce3          	bne	a5,a4,13e8c <emovo.constprop.0+0x98>
   13e98:	ffffc7b7          	lui	a5,0xffffc
   13e9c:	00f59823          	sh	a5,16(a1)
   13ea0:	ffff87b7          	lui	a5,0xffff8
   13ea4:	fff7c793          	not	a5,a5
   13ea8:	00f59923          	sh	a5,18(a1)
   13eac:	00008067          	ret

0000000000013eb0 <enormlz>:
   13eb0:	00455783          	lhu	a5,4(a0)
   13eb4:	fe010113          	add	sp,sp,-32
   13eb8:	00913423          	sd	s1,8(sp)
   13ebc:	00113c23          	sd	ra,24(sp)
   13ec0:	00813823          	sd	s0,16(sp)
   13ec4:	01213023          	sd	s2,0(sp)
   13ec8:	00050493          	mv	s1,a0
   13ecc:	0c079663          	bnez	a5,13f98 <enormlz+0xe8>
   13ed0:	00655783          	lhu	a5,6(a0)
   13ed4:	00000413          	li	s0,0
   13ed8:	00f7d713          	srl	a4,a5,0xf
   13edc:	0a071063          	bnez	a4,13f7c <enormlz+0xcc>
   13ee0:	01850693          	add	a3,a0,24
   13ee4:	0a000613          	li	a2,160
   13ee8:	02079663          	bnez	a5,13f14 <enormlz+0x64>
   13eec:	00448793          	add	a5,s1,4
   13ef0:	0027d703          	lhu	a4,2(a5) # ffffffffffff8002 <__BSS_END__+0xfffffffffffd31e2>
   13ef4:	00278793          	add	a5,a5,2
   13ef8:	fee79f23          	sh	a4,-2(a5)
   13efc:	fed79ae3          	bne	a5,a3,13ef0 <enormlz+0x40>
   13f00:	00049c23          	sh	zero,24(s1)
   13f04:	0104041b          	addw	s0,s0,16
   13f08:	06c40a63          	beq	s0,a2,13f7c <enormlz+0xcc>
   13f0c:	0064d783          	lhu	a5,6(s1)
   13f10:	fc078ee3          	beqz	a5,13eec <enormlz+0x3c>
   13f14:	0ff00713          	li	a4,255
   13f18:	04f76063          	bltu	a4,a5,13f58 <enormlz+0xa8>
   13f1c:	01848813          	add	a6,s1,24
   13f20:	00248593          	add	a1,s1,2
   13f24:	0ff00513          	li	a0,255
   13f28:	00000793          	li	a5,0
   13f2c:	00080713          	mv	a4,a6
   13f30:	00075683          	lhu	a3,0(a4)
   13f34:	ffe70713          	add	a4,a4,-2
   13f38:	0086961b          	sllw	a2,a3,0x8
   13f3c:	00c7e7b3          	or	a5,a5,a2
   13f40:	00f71123          	sh	a5,2(a4)
   13f44:	0086d793          	srl	a5,a3,0x8
   13f48:	feb714e3          	bne	a4,a1,13f30 <enormlz+0x80>
   13f4c:	0064d783          	lhu	a5,6(s1)
   13f50:	0084041b          	addw	s0,s0,8
   13f54:	fcf57ae3          	bgeu	a0,a5,13f28 <enormlz+0x78>
   13f58:	0a000913          	li	s2,160
   13f5c:	0140006f          	j	13f70 <enormlz+0xc0>
   13f60:	0014041b          	addw	s0,s0,1
   13f64:	db5ff0ef          	jal	13d18 <eshup1>
   13f68:	00894a63          	blt	s2,s0,13f7c <enormlz+0xcc>
   13f6c:	0064d783          	lhu	a5,6(s1)
   13f70:	00f7d793          	srl	a5,a5,0xf
   13f74:	00048513          	mv	a0,s1
   13f78:	fe0784e3          	beqz	a5,13f60 <enormlz+0xb0>
   13f7c:	01813083          	ld	ra,24(sp)
   13f80:	00040513          	mv	a0,s0
   13f84:	01013403          	ld	s0,16(sp)
   13f88:	00813483          	ld	s1,8(sp)
   13f8c:	00013903          	ld	s2,0(sp)
   13f90:	02010113          	add	sp,sp,32
   13f94:	00008067          	ret
   13f98:	0ff00713          	li	a4,255
   13f9c:	00000413          	li	s0,0
   13fa0:	04f76063          	bltu	a4,a5,13fe0 <enormlz+0x130>
   13fa4:	f6f00913          	li	s2,-145
   13fa8:	0140006f          	j	13fbc <enormlz+0x10c>
   13fac:	fff4041b          	addw	s0,s0,-1
   13fb0:	d15ff0ef          	jal	13cc4 <eshdn1>
   13fb4:	fd2404e3          	beq	s0,s2,13f7c <enormlz+0xcc>
   13fb8:	0044d783          	lhu	a5,4(s1)
   13fbc:	00048513          	mv	a0,s1
   13fc0:	fe0796e3          	bnez	a5,13fac <enormlz+0xfc>
   13fc4:	01813083          	ld	ra,24(sp)
   13fc8:	00040513          	mv	a0,s0
   13fcc:	01013403          	ld	s0,16(sp)
   13fd0:	00813483          	ld	s1,8(sp)
   13fd4:	00013903          	ld	s2,0(sp)
   13fd8:	02010113          	add	sp,sp,32
   13fdc:	00008067          	ret
   13fe0:	00450713          	add	a4,a0,4
   13fe4:	01a50593          	add	a1,a0,26
   13fe8:	00000793          	li	a5,0
   13fec:	00075683          	lhu	a3,0(a4)
   13ff0:	00270713          	add	a4,a4,2
   13ff4:	0086d61b          	srlw	a2,a3,0x8
   13ff8:	00c7e7b3          	or	a5,a5,a2
   13ffc:	0086969b          	sllw	a3,a3,0x8
   14000:	fef71f23          	sh	a5,-2(a4)
   14004:	03069793          	sll	a5,a3,0x30
   14008:	0307d793          	srl	a5,a5,0x30
   1400c:	feb710e3          	bne	a4,a1,13fec <enormlz+0x13c>
   14010:	0044d783          	lhu	a5,4(s1)
   14014:	ff800413          	li	s0,-8
   14018:	f8dff06f          	j	13fa4 <enormlz+0xf4>

000000000001401c <eshift.part.0>:
   1401c:	fd010113          	add	sp,sp,-48
   14020:	02813023          	sd	s0,32(sp)
   14024:	00913c23          	sd	s1,24(sp)
   14028:	02113423          	sd	ra,40(sp)
   1402c:	01213823          	sd	s2,16(sp)
   14030:	01313423          	sd	s3,8(sp)
   14034:	00058493          	mv	s1,a1
   14038:	00050413          	mv	s0,a0
   1403c:	0a05c463          	bltz	a1,140e4 <eshift.part.0+0xc8>
   14040:	00f00793          	li	a5,15
   14044:	00058613          	mv	a2,a1
   14048:	00450513          	add	a0,a0,4
   1404c:	01840693          	add	a3,s0,24
   14050:	00f00593          	li	a1,15
   14054:	0297d463          	bge	a5,s1,1407c <eshift.part.0+0x60>
   14058:	00050793          	mv	a5,a0
   1405c:	0027d703          	lhu	a4,2(a5)
   14060:	00278793          	add	a5,a5,2
   14064:	fee79f23          	sh	a4,-2(a5)
   14068:	fef69ae3          	bne	a3,a5,1405c <eshift.part.0+0x40>
   1406c:	00041c23          	sh	zero,24(s0)
   14070:	ff06061b          	addw	a2,a2,-16
   14074:	fec5c2e3          	blt	a1,a2,14058 <eshift.part.0+0x3c>
   14078:	00f4f493          	and	s1,s1,15
   1407c:	00700793          	li	a5,7
   14080:	0297d863          	bge	a5,s1,140b0 <eshift.part.0+0x94>
   14084:	01840713          	add	a4,s0,24
   14088:	00240593          	add	a1,s0,2
   1408c:	00000793          	li	a5,0
   14090:	00075683          	lhu	a3,0(a4)
   14094:	ffe70713          	add	a4,a4,-2
   14098:	0086961b          	sllw	a2,a3,0x8
   1409c:	00c7e7b3          	or	a5,a5,a2
   140a0:	00f71123          	sh	a5,2(a4)
   140a4:	0086d793          	srl	a5,a3,0x8
   140a8:	feb714e3          	bne	a4,a1,14090 <eshift.part.0+0x74>
   140ac:	ff84849b          	addw	s1,s1,-8
   140b0:	00048a63          	beqz	s1,140c4 <eshift.part.0+0xa8>
   140b4:	fff4849b          	addw	s1,s1,-1
   140b8:	00040513          	mv	a0,s0
   140bc:	c5dff0ef          	jal	13d18 <eshup1>
   140c0:	fe049ae3          	bnez	s1,140b4 <eshift.part.0+0x98>
   140c4:	00000513          	li	a0,0
   140c8:	02813083          	ld	ra,40(sp)
   140cc:	02013403          	ld	s0,32(sp)
   140d0:	01813483          	ld	s1,24(sp)
   140d4:	01013903          	ld	s2,16(sp)
   140d8:	00813983          	ld	s3,8(sp)
   140dc:	03010113          	add	sp,sp,48
   140e0:	00008067          	ret
   140e4:	ff100793          	li	a5,-15
   140e8:	40b0093b          	negw	s2,a1
   140ec:	00000993          	li	s3,0
   140f0:	01850593          	add	a1,a0,24
   140f4:	00450693          	add	a3,a0,4
   140f8:	00f00613          	li	a2,15
   140fc:	0cf4dc63          	bge	s1,a5,141d4 <eshift.part.0+0x1b8>
   14100:	01845703          	lhu	a4,24(s0)
   14104:	00058793          	mv	a5,a1
   14108:	00e9e9b3          	or	s3,s3,a4
   1410c:	ffe7d703          	lhu	a4,-2(a5)
   14110:	ffe78793          	add	a5,a5,-2
   14114:	00e79123          	sh	a4,2(a5)
   14118:	fed79ae3          	bne	a5,a3,1410c <eshift.part.0+0xf0>
   1411c:	00041223          	sh	zero,4(s0)
   14120:	ff09091b          	addw	s2,s2,-16
   14124:	fd264ee3          	blt	a2,s2,14100 <eshift.part.0+0xe4>
   14128:	ff000913          	li	s2,-16
   1412c:	ff100713          	li	a4,-15
   14130:	4099093b          	subw	s2,s2,s1
   14134:	00000793          	li	a5,0
   14138:	08e4c863          	blt	s1,a4,141c8 <eshift.part.0+0x1ac>
   1413c:	00f9093b          	addw	s2,s2,a5
   14140:	00700793          	li	a5,7
   14144:	0327de63          	bge	a5,s2,14180 <eshift.part.0+0x164>
   14148:	01844783          	lbu	a5,24(s0)
   1414c:	01a40593          	add	a1,s0,26
   14150:	00f9e9b3          	or	s3,s3,a5
   14154:	00000793          	li	a5,0
   14158:	0006d703          	lhu	a4,0(a3)
   1415c:	00268693          	add	a3,a3,2
   14160:	0087561b          	srlw	a2,a4,0x8
   14164:	00c7e7b3          	or	a5,a5,a2
   14168:	0087171b          	sllw	a4,a4,0x8
   1416c:	fef69f23          	sh	a5,-2(a3)
   14170:	03071793          	sll	a5,a4,0x30
   14174:	0307d793          	srl	a5,a5,0x30
   14178:	feb690e3          	bne	a3,a1,14158 <eshift.part.0+0x13c>
   1417c:	ff89091b          	addw	s2,s2,-8
   14180:	01303533          	snez	a0,s3
   14184:	f40902e3          	beqz	s2,140c8 <eshift.part.0+0xac>
   14188:	01845783          	lhu	a5,24(s0)
   1418c:	fff9091b          	addw	s2,s2,-1
   14190:	00040513          	mv	a0,s0
   14194:	0017f793          	and	a5,a5,1
   14198:	00f9e9b3          	or	s3,s3,a5
   1419c:	b29ff0ef          	jal	13cc4 <eshdn1>
   141a0:	fe0914e3          	bnez	s2,14188 <eshift.part.0+0x16c>
   141a4:	02813083          	ld	ra,40(sp)
   141a8:	02013403          	ld	s0,32(sp)
   141ac:	0009899b          	sext.w	s3,s3
   141b0:	01813483          	ld	s1,24(sp)
   141b4:	01013903          	ld	s2,16(sp)
   141b8:	01303533          	snez	a0,s3
   141bc:	00813983          	ld	s3,8(sp)
   141c0:	03010113          	add	sp,sp,48
   141c4:	00008067          	ret
   141c8:	ff097793          	and	a5,s2,-16
   141cc:	40f007bb          	negw	a5,a5
   141d0:	f6dff06f          	j	1413c <eshift.part.0+0x120>
   141d4:	ff900793          	li	a5,-7
   141d8:	f6f4c8e3          	blt	s1,a5,14148 <eshift.part.0+0x12c>
   141dc:	fadff06f          	j	14188 <eshift.part.0+0x16c>

00000000000141e0 <emovi>:
   141e0:	01255783          	lhu	a5,18(a0)
   141e4:	000086b7          	lui	a3,0x8
   141e8:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   141ec:	00f7d79b          	srlw	a5,a5,0xf
   141f0:	40f007bb          	negw	a5,a5
   141f4:	00f59023          	sh	a5,0(a1)
   141f8:	01255703          	lhu	a4,18(a0)
   141fc:	01050793          	add	a5,a0,16
   14200:	00d77733          	and	a4,a4,a3
   14204:	00e59123          	sh	a4,2(a1)
   14208:	0007061b          	sext.w	a2,a4
   1420c:	02d70663          	beq	a4,a3,14238 <emovi+0x58>
   14210:	00658713          	add	a4,a1,6
   14214:	00059223          	sh	zero,4(a1)
   14218:	ffe50513          	add	a0,a0,-2
   1421c:	0007d683          	lhu	a3,0(a5)
   14220:	ffe78793          	add	a5,a5,-2
   14224:	00270713          	add	a4,a4,2
   14228:	fed71f23          	sh	a3,-2(a4)
   1422c:	fea798e3          	bne	a5,a0,1421c <emovi+0x3c>
   14230:	00059c23          	sh	zero,24(a1)
   14234:	00008067          	ret
   14238:	01255703          	lhu	a4,18(a0)
   1423c:	00c77733          	and	a4,a4,a2
   14240:	00c71e63          	bne	a4,a2,1425c <emovi+0x7c>
   14244:	01250613          	add	a2,a0,18
   14248:	00050713          	mv	a4,a0
   1424c:	00075683          	lhu	a3,0(a4)
   14250:	00270713          	add	a4,a4,2
   14254:	02069063          	bnez	a3,14274 <emovi+0x94>
   14258:	fec71ae3          	bne	a4,a2,1424c <emovi+0x6c>
   1425c:	00458793          	add	a5,a1,4
   14260:	01a58593          	add	a1,a1,26
   14264:	00278793          	add	a5,a5,2
   14268:	fe079f23          	sh	zero,-2(a5)
   1426c:	feb79ce3          	bne	a5,a1,14264 <emovi+0x84>
   14270:	00008067          	ret
   14274:	00658713          	add	a4,a1,6
   14278:	00059223          	sh	zero,4(a1)
   1427c:	ffc50513          	add	a0,a0,-4
   14280:	0007d683          	lhu	a3,0(a5)
   14284:	ffe78793          	add	a5,a5,-2
   14288:	00270713          	add	a4,a4,2
   1428c:	fed71f23          	sh	a3,-2(a4)
   14290:	fef518e3          	bne	a0,a5,14280 <emovi+0xa0>
   14294:	00008067          	ret

0000000000014298 <ecmp>:
   14298:	01255783          	lhu	a5,18(a0)
   1429c:	fb010113          	add	sp,sp,-80
   142a0:	04813023          	sd	s0,64(sp)
   142a4:	fff7c793          	not	a5,a5
   142a8:	04113423          	sd	ra,72(sp)
   142ac:	03179713          	sll	a4,a5,0x31
   142b0:	00058413          	mv	s0,a1
   142b4:	00071e63          	bnez	a4,142d0 <ecmp+0x38>
   142b8:	01250693          	add	a3,a0,18
   142bc:	00050793          	mv	a5,a0
   142c0:	0007d703          	lhu	a4,0(a5)
   142c4:	00278793          	add	a5,a5,2
   142c8:	08071c63          	bnez	a4,14360 <ecmp+0xc8>
   142cc:	fed79ae3          	bne	a5,a3,142c0 <ecmp+0x28>
   142d0:	01245783          	lhu	a5,18(s0)
   142d4:	fff7c793          	not	a5,a5
   142d8:	03179713          	sll	a4,a5,0x31
   142dc:	06070063          	beqz	a4,1433c <ecmp+0xa4>
   142e0:	00010593          	mv	a1,sp
   142e4:	efdff0ef          	jal	141e0 <emovi>
   142e8:	02010593          	add	a1,sp,32
   142ec:	00040513          	mv	a0,s0
   142f0:	ef1ff0ef          	jal	141e0 <emovi>
   142f4:	00015583          	lhu	a1,0(sp)
   142f8:	02015783          	lhu	a5,32(sp)
   142fc:	06b78c63          	beq	a5,a1,14374 <ecmp+0xdc>
   14300:	00210793          	add	a5,sp,2
   14304:	02210713          	add	a4,sp,34
   14308:	01810613          	add	a2,sp,24
   1430c:	0007d683          	lhu	a3,0(a5)
   14310:	00278793          	add	a5,a5,2
   14314:	0a069663          	bnez	a3,143c0 <ecmp+0x128>
   14318:	00075683          	lhu	a3,0(a4)
   1431c:	00270713          	add	a4,a4,2
   14320:	0a069063          	bnez	a3,143c0 <ecmp+0x128>
   14324:	fef614e3          	bne	a2,a5,1430c <ecmp+0x74>
   14328:	00000513          	li	a0,0
   1432c:	04813083          	ld	ra,72(sp)
   14330:	04013403          	ld	s0,64(sp)
   14334:	05010113          	add	sp,sp,80
   14338:	00008067          	ret
   1433c:	00040793          	mv	a5,s0
   14340:	0007d703          	lhu	a4,0(a5)
   14344:	01240693          	add	a3,s0,18
   14348:	00278793          	add	a5,a5,2
   1434c:	00071a63          	bnez	a4,14360 <ecmp+0xc8>
   14350:	f8d788e3          	beq	a5,a3,142e0 <ecmp+0x48>
   14354:	0007d703          	lhu	a4,0(a5)
   14358:	00278793          	add	a5,a5,2
   1435c:	fe070ae3          	beqz	a4,14350 <ecmp+0xb8>
   14360:	04813083          	ld	ra,72(sp)
   14364:	04013403          	ld	s0,64(sp)
   14368:	ffe00513          	li	a0,-2
   1436c:	05010113          	add	sp,sp,80
   14370:	00008067          	ret
   14374:	fff00513          	li	a0,-1
   14378:	06058063          	beqz	a1,143d8 <ecmp+0x140>
   1437c:	00010793          	mv	a5,sp
   14380:	0007d603          	lhu	a2,0(a5)
   14384:	02015683          	lhu	a3,32(sp)
   14388:	02010713          	add	a4,sp,32
   1438c:	01810593          	add	a1,sp,24
   14390:	00278793          	add	a5,a5,2
   14394:	00270713          	add	a4,a4,2
   14398:	00d61e63          	bne	a2,a3,143b4 <ecmp+0x11c>
   1439c:	f8b786e3          	beq	a5,a1,14328 <ecmp+0x90>
   143a0:	0007d603          	lhu	a2,0(a5)
   143a4:	00075683          	lhu	a3,0(a4)
   143a8:	00278793          	add	a5,a5,2
   143ac:	00270713          	add	a4,a4,2
   143b0:	fed606e3          	beq	a2,a3,1439c <ecmp+0x104>
   143b4:	f6c6ece3          	bltu	a3,a2,1432c <ecmp+0x94>
   143b8:	40a0053b          	negw	a0,a0
   143bc:	f71ff06f          	j	1432c <ecmp+0x94>
   143c0:	02059063          	bnez	a1,143e0 <ecmp+0x148>
   143c4:	04813083          	ld	ra,72(sp)
   143c8:	04013403          	ld	s0,64(sp)
   143cc:	00100513          	li	a0,1
   143d0:	05010113          	add	sp,sp,80
   143d4:	00008067          	ret
   143d8:	00100513          	li	a0,1
   143dc:	fa1ff06f          	j	1437c <ecmp+0xe4>
   143e0:	fff00513          	li	a0,-1
   143e4:	f49ff06f          	j	1432c <ecmp+0x94>

00000000000143e8 <emdnorm>:
   143e8:	fc010113          	add	sp,sp,-64
   143ec:	02813823          	sd	s0,48(sp)
   143f0:	02913423          	sd	s1,40(sp)
   143f4:	03213023          	sd	s2,32(sp)
   143f8:	01313c23          	sd	s3,24(sp)
   143fc:	01413823          	sd	s4,16(sp)
   14400:	01513423          	sd	s5,8(sp)
   14404:	00068913          	mv	s2,a3
   14408:	00078413          	mv	s0,a5
   1440c:	02113c23          	sd	ra,56(sp)
   14410:	00050493          	mv	s1,a0
   14414:	00058993          	mv	s3,a1
   14418:	00060a13          	mv	s4,a2
   1441c:	00070a93          	mv	s5,a4
   14420:	a91ff0ef          	jal	13eb0 <enormlz>
   14424:	09000793          	li	a5,144
   14428:	40a90933          	sub	s2,s2,a0
   1442c:	18a7d863          	bge	a5,a0,145bc <emdnorm+0x1d4>
   14430:	000087b7          	lui	a5,0x8
   14434:	ffe78793          	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   14438:	2d27da63          	bge	a5,s2,1470c <emdnorm+0x324>
   1443c:	220a8a63          	beqz	s5,14670 <emdnorm+0x288>
   14440:	00442a83          	lw	s5,4(s0)
   14444:	00042783          	lw	a5,0(s0)
   14448:	28fa8a63          	beq	s5,a5,146dc <emdnorm+0x2f4>
   1444c:	01a40713          	add	a4,s0,26
   14450:	03440793          	add	a5,s0,52
   14454:	00270713          	add	a4,a4,2
   14458:	fe071f23          	sh	zero,-2(a4)
   1445c:	fee79ce3          	bne	a5,a4,14454 <emdnorm+0x6c>
   14460:	03800793          	li	a5,56
   14464:	38fa8863          	beq	s5,a5,147f4 <emdnorm+0x40c>
   14468:	1b57da63          	bge	a5,s5,1461c <emdnorm+0x234>
   1446c:	04000793          	li	a5,64
   14470:	2afa8a63          	beq	s5,a5,14724 <emdnorm+0x33c>
   14474:	07100793          	li	a5,113
   14478:	3afa9c63          	bne	s5,a5,14830 <emdnorm+0x448>
   1447c:	400087b7          	lui	a5,0x40008
   14480:	00a00693          	li	a3,10
   14484:	ffff8737          	lui	a4,0xffff8
   14488:	fff78793          	add	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe31df>
   1448c:	00d42423          	sw	a3,8(s0)
   14490:	00f42a23          	sw	a5,20(s0)
   14494:	00e41c23          	sh	a4,24(s0)
   14498:	00d42623          	sw	a3,12(s0)
   1449c:	02e41723          	sh	a4,46(s0)
   144a0:	01542023          	sw	s5,0(s0)
   144a4:	23205063          	blez	s2,146c4 <emdnorm+0x2dc>
   144a8:	0144d603          	lhu	a2,20(s1)
   144ac:	01448593          	add	a1,s1,20
   144b0:	00b00793          	li	a5,11
   144b4:	03161613          	sll	a2,a2,0x31
   144b8:	03165613          	srl	a2,a2,0x31
   144bc:	00c00713          	li	a4,12
   144c0:	40f7073b          	subw	a4,a4,a5
   144c4:	02071713          	sll	a4,a4,0x20
   144c8:	02075713          	srl	a4,a4,0x20
   144cc:	00f70733          	add	a4,a4,a5
   144d0:	00171713          	sll	a4,a4,0x1
   144d4:	00179793          	sll	a5,a5,0x1
   144d8:	00248693          	add	a3,s1,2
   144dc:	00f487b3          	add	a5,s1,a5
   144e0:	00d70733          	add	a4,a4,a3
   144e4:	0007d683          	lhu	a3,0(a5)
   144e8:	00068463          	beqz	a3,144f0 <emdnorm+0x108>
   144ec:	00166613          	or	a2,a2,1
   144f0:	00079023          	sh	zero,0(a5)
   144f4:	00278793          	add	a5,a5,2
   144f8:	fef716e3          	bne	a4,a5,144e4 <emdnorm+0xfc>
   144fc:	0005d703          	lhu	a4,0(a1)
   14500:	01445683          	lhu	a3,20(s0)
   14504:	fff6c693          	not	a3,a3
   14508:	00d77733          	and	a4,a4,a3
   1450c:	00e59023          	sh	a4,0(a1)
   14510:	01645783          	lhu	a5,22(s0)
   14514:	00c7f733          	and	a4,a5,a2
   14518:	06070063          	beqz	a4,14578 <emdnorm+0x190>
   1451c:	02c79263          	bne	a5,a2,14540 <emdnorm+0x158>
   14520:	2c099663          	bnez	s3,147ec <emdnorm+0x404>
   14524:	00c42783          	lw	a5,12(s0)
   14528:	01845703          	lhu	a4,24(s0)
   1452c:	00179793          	sll	a5,a5,0x1
   14530:	00f487b3          	add	a5,s1,a5
   14534:	0007d783          	lhu	a5,0(a5)
   14538:	00e7f7b3          	and	a5,a5,a4
   1453c:	02078e63          	beqz	a5,14578 <emdnorm+0x190>
   14540:	03240793          	add	a5,s0,50
   14544:	01848613          	add	a2,s1,24
   14548:	00248513          	add	a0,s1,2
   1454c:	00000593          	li	a1,0
   14550:	0007d703          	lhu	a4,0(a5)
   14554:	00065683          	lhu	a3,0(a2)
   14558:	ffe60613          	add	a2,a2,-2
   1455c:	ffe78793          	add	a5,a5,-2
   14560:	00d70733          	add	a4,a4,a3
   14564:	00b70733          	add	a4,a4,a1
   14568:	01075593          	srl	a1,a4,0x10
   1456c:	00e61123          	sh	a4,2(a2)
   14570:	0015f593          	and	a1,a1,1
   14574:	fcc51ee3          	bne	a0,a2,14550 <emdnorm+0x168>
   14578:	23205a63          	blez	s2,147ac <emdnorm+0x3c4>
   1457c:	0044d783          	lhu	a5,4(s1)
   14580:	20079663          	bnez	a5,1478c <emdnorm+0x3a4>
   14584:	000087b7          	lui	a5,0x8
   14588:	00049c23          	sh	zero,24(s1)
   1458c:	ffe78793          	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   14590:	0f27c263          	blt	a5,s2,14674 <emdnorm+0x28c>
   14594:	01249123          	sh	s2,2(s1)
   14598:	03813083          	ld	ra,56(sp)
   1459c:	03013403          	ld	s0,48(sp)
   145a0:	02813483          	ld	s1,40(sp)
   145a4:	02013903          	ld	s2,32(sp)
   145a8:	01813983          	ld	s3,24(sp)
   145ac:	01013a03          	ld	s4,16(sp)
   145b0:	00813a83          	ld	s5,8(sp)
   145b4:	04010113          	add	sp,sp,64
   145b8:	00008067          	ret
   145bc:	04094063          	bltz	s2,145fc <emdnorm+0x214>
   145c0:	fc0a82e3          	beqz	s5,14584 <emdnorm+0x19c>
   145c4:	00442a83          	lw	s5,4(s0)
   145c8:	00042783          	lw	a5,0(s0)
   145cc:	e8fa90e3          	bne	s5,a5,1444c <emdnorm+0x64>
   145d0:	2d204263          	bgtz	s2,14894 <emdnorm+0x4ac>
   145d4:	09000713          	li	a4,144
   145d8:	2ce79263          	bne	a5,a4,1489c <emdnorm+0x4b4>
   145dc:	00842583          	lw	a1,8(s0)
   145e0:	01445683          	lhu	a3,20(s0)
   145e4:	09000a93          	li	s5,144
   145e8:	00159593          	sll	a1,a1,0x1
   145ec:	00b485b3          	add	a1,s1,a1
   145f0:	0005d703          	lhu	a4,0(a1)
   145f4:	00d77633          	and	a2,a4,a3
   145f8:	f0dff06f          	j	14504 <emdnorm+0x11c>
   145fc:	f7000793          	li	a5,-144
   14600:	16f95263          	bge	s2,a5,14764 <emdnorm+0x37c>
   14604:	00248793          	add	a5,s1,2
   14608:	01a48493          	add	s1,s1,26
   1460c:	00278793          	add	a5,a5,2
   14610:	fe079f23          	sh	zero,-2(a5)
   14614:	fe979ce3          	bne	a5,s1,1460c <emdnorm+0x224>
   14618:	f81ff06f          	j	14598 <emdnorm+0x1b0>
   1461c:	01800793          	li	a5,24
   14620:	06fa8c63          	beq	s5,a5,14698 <emdnorm+0x2b0>
   14624:	03500793          	li	a5,53
   14628:	20fa9463          	bne	s5,a5,14830 <emdnorm+0x448>
   1462c:	000017b7          	lui	a5,0x1
   14630:	04000737          	lui	a4,0x4000
   14634:	00600693          	li	a3,6
   14638:	80078793          	add	a5,a5,-2048 # 800 <exit-0xf8e8>
   1463c:	7ff70713          	add	a4,a4,2047 # 40007ff <__BSS_END__+0x3fdb9df>
   14640:	00d42423          	sw	a3,8(s0)
   14644:	00e42a23          	sw	a4,20(s0)
   14648:	00f41c23          	sh	a5,24(s0)
   1464c:	00d42623          	sw	a3,12(s0)
   14650:	02f41323          	sh	a5,38(s0)
   14654:	01542023          	sw	s5,0(s0)
   14658:	07205663          	blez	s2,146c4 <emdnorm+0x2dc>
   1465c:	00c4d603          	lhu	a2,12(s1)
   14660:	00c48593          	add	a1,s1,12
   14664:	00700793          	li	a5,7
   14668:	7ff67613          	and	a2,a2,2047
   1466c:	e51ff06f          	j	144bc <emdnorm+0xd4>
   14670:	00049c23          	sh	zero,24(s1)
   14674:	ffff87b7          	lui	a5,0xffff8
   14678:	fff7c793          	not	a5,a5
   1467c:	00f49123          	sh	a5,2(s1)
   14680:	00448793          	add	a5,s1,4
   14684:	01848493          	add	s1,s1,24
   14688:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31e0>
   1468c:	00278793          	add	a5,a5,2
   14690:	fe979ce3          	bne	a5,s1,14688 <emdnorm+0x2a0>
   14694:	f05ff06f          	j	14598 <emdnorm+0x1b0>
   14698:	008007b7          	lui	a5,0x800
   1469c:	00400693          	li	a3,4
   146a0:	10000713          	li	a4,256
   146a4:	0ff78793          	add	a5,a5,255 # 8000ff <__BSS_END__+0x7db2df>
   146a8:	00d42423          	sw	a3,8(s0)
   146ac:	00f42a23          	sw	a5,20(s0)
   146b0:	00e41c23          	sh	a4,24(s0)
   146b4:	00d42623          	sw	a3,12(s0)
   146b8:	02e41123          	sh	a4,34(s0)
   146bc:	01542023          	sw	s5,0(s0)
   146c0:	1b204c63          	bgtz	s2,14878 <emdnorm+0x490>
   146c4:	0184d783          	lhu	a5,24(s1)
   146c8:	00048513          	mv	a0,s1
   146cc:	0017f793          	and	a5,a5,1
   146d0:	00f9e7b3          	or	a5,s3,a5
   146d4:	0007899b          	sext.w	s3,a5
   146d8:	decff0ef          	jal	13cc4 <eshdn1>
   146dc:	00842783          	lw	a5,8(s0)
   146e0:	01445683          	lhu	a3,20(s0)
   146e4:	08f00513          	li	a0,143
   146e8:	00179593          	sll	a1,a5,0x1
   146ec:	00b485b3          	add	a1,s1,a1
   146f0:	0005d703          	lhu	a4,0(a1)
   146f4:	00d77633          	and	a2,a4,a3
   146f8:	e15546e3          	blt	a0,s5,14504 <emdnorm+0x11c>
   146fc:	0017879b          	addw	a5,a5,1
   14700:	00c00513          	li	a0,12
   14704:	daf55ce3          	bge	a0,a5,144bc <emdnorm+0xd4>
   14708:	dfdff06f          	j	14504 <emdnorm+0x11c>
   1470c:	00248793          	add	a5,s1,2
   14710:	01a48493          	add	s1,s1,26
   14714:	00278793          	add	a5,a5,2
   14718:	fe079f23          	sh	zero,-2(a5)
   1471c:	fe979ce3          	bne	a5,s1,14714 <emdnorm+0x32c>
   14720:	e79ff06f          	j	14598 <emdnorm+0x1b0>
   14724:	00700793          	li	a5,7
   14728:	00f42423          	sw	a5,8(s0)
   1472c:	800107b7          	lui	a5,0x80010
   14730:	fff78793          	add	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb1df>
   14734:	00100713          	li	a4,1
   14738:	00f42a23          	sw	a5,20(s0)
   1473c:	00600793          	li	a5,6
   14740:	00e41c23          	sh	a4,24(s0)
   14744:	00f42623          	sw	a5,12(s0)
   14748:	02e41323          	sh	a4,38(s0)
   1474c:	01542023          	sw	s5,0(s0)
   14750:	f7205ae3          	blez	s2,146c4 <emdnorm+0x2dc>
   14754:	00e4d603          	lhu	a2,14(s1)
   14758:	00e48593          	add	a1,s1,14
   1475c:	00800793          	li	a5,8
   14760:	d5dff06f          	j	144bc <emdnorm+0xd4>
   14764:	0009059b          	sext.w	a1,s2
   14768:	00048513          	mv	a0,s1
   1476c:	8b1ff0ef          	jal	1401c <eshift.part.0>
   14770:	0e050a63          	beqz	a0,14864 <emdnorm+0x47c>
   14774:	100a8a63          	beqz	s5,14888 <emdnorm+0x4a0>
   14778:	00442a83          	lw	s5,4(s0)
   1477c:	00042783          	lw	a5,0(s0)
   14780:	00100993          	li	s3,1
   14784:	ccfa94e3          	bne	s5,a5,1444c <emdnorm+0x64>
   14788:	e4dff06f          	j	145d4 <emdnorm+0x1ec>
   1478c:	00048513          	mv	a0,s1
   14790:	d34ff0ef          	jal	13cc4 <eshdn1>
   14794:	000087b7          	lui	a5,0x8
   14798:	00190913          	add	s2,s2,1
   1479c:	00049c23          	sh	zero,24(s1)
   147a0:	ffe78793          	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   147a4:	ed27c8e3          	blt	a5,s2,14674 <emdnorm+0x28c>
   147a8:	dedff06f          	j	14594 <emdnorm+0x1ac>
   147ac:	09000793          	li	a5,144
   147b0:	02fa8263          	beq	s5,a5,147d4 <emdnorm+0x3ec>
   147b4:	00048513          	mv	a0,s1
   147b8:	d60ff0ef          	jal	13d18 <eshup1>
   147bc:	0044d783          	lhu	a5,4(s1)
   147c0:	00079e63          	bnez	a5,147dc <emdnorm+0x3f4>
   147c4:	00049c23          	sh	zero,24(s1)
   147c8:	dc0956e3          	bgez	s2,14594 <emdnorm+0x1ac>
   147cc:	00049123          	sh	zero,2(s1)
   147d0:	dc9ff06f          	j	14598 <emdnorm+0x1b0>
   147d4:	0044d783          	lhu	a5,4(s1)
   147d8:	fe0786e3          	beqz	a5,147c4 <emdnorm+0x3dc>
   147dc:	00048513          	mv	a0,s1
   147e0:	ce4ff0ef          	jal	13cc4 <eshdn1>
   147e4:	00190913          	add	s2,s2,1
   147e8:	fddff06f          	j	147c4 <emdnorm+0x3dc>
   147ec:	d40a0ae3          	beqz	s4,14540 <emdnorm+0x158>
   147f0:	d89ff06f          	j	14578 <emdnorm+0x190>
   147f4:	008007b7          	lui	a5,0x800
   147f8:	00600693          	li	a3,6
   147fc:	10000713          	li	a4,256
   14800:	0ff78793          	add	a5,a5,255 # 8000ff <__BSS_END__+0x7db2df>
   14804:	00d42423          	sw	a3,8(s0)
   14808:	00f42a23          	sw	a5,20(s0)
   1480c:	00e41c23          	sh	a4,24(s0)
   14810:	00d42623          	sw	a3,12(s0)
   14814:	02e41323          	sh	a4,38(s0)
   14818:	01542023          	sw	s5,0(s0)
   1481c:	eb2054e3          	blez	s2,146c4 <emdnorm+0x2dc>
   14820:	00c4c603          	lbu	a2,12(s1)
   14824:	00c48593          	add	a1,s1,12
   14828:	00700793          	li	a5,7
   1482c:	c91ff06f          	j	144bc <emdnorm+0xd4>
   14830:	00c00793          	li	a5,12
   14834:	00f42423          	sw	a5,8(s0)
   14838:	800107b7          	lui	a5,0x80010
   1483c:	fff78793          	add	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb1df>
   14840:	00100713          	li	a4,1
   14844:	00f42a23          	sw	a5,20(s0)
   14848:	00b00793          	li	a5,11
   1484c:	00f42623          	sw	a5,12(s0)
   14850:	00e41c23          	sh	a4,24(s0)
   14854:	02e41823          	sh	a4,48(s0)
   14858:	01542023          	sw	s5,0(s0)
   1485c:	000a8793          	mv	a5,s5
   14860:	d71ff06f          	j	145d0 <emdnorm+0x1e8>
   14864:	020a8263          	beqz	s5,14888 <emdnorm+0x4a0>
   14868:	00442a83          	lw	s5,4(s0)
   1486c:	00042783          	lw	a5,0(s0)
   14870:	bcfa9ee3          	bne	s5,a5,1444c <emdnorm+0x64>
   14874:	d61ff06f          	j	145d4 <emdnorm+0x1ec>
   14878:	0084c603          	lbu	a2,8(s1)
   1487c:	00848593          	add	a1,s1,8
   14880:	00500793          	li	a5,5
   14884:	c39ff06f          	j	144bc <emdnorm+0xd4>
   14888:	00049c23          	sh	zero,24(s1)
   1488c:	00049123          	sh	zero,2(s1)
   14890:	d09ff06f          	j	14598 <emdnorm+0x1b0>
   14894:	00078a93          	mv	s5,a5
   14898:	e45ff06f          	j	146dc <emdnorm+0x2f4>
   1489c:	00078a93          	mv	s5,a5
   148a0:	e25ff06f          	j	146c4 <emdnorm+0x2dc>

00000000000148a4 <eiremain>:
   148a4:	fa010113          	add	sp,sp,-96
   148a8:	05213023          	sd	s2,64(sp)
   148ac:	03313c23          	sd	s3,56(sp)
   148b0:	00058913          	mv	s2,a1
   148b4:	00255983          	lhu	s3,2(a0)
   148b8:	04113c23          	sd	ra,88(sp)
   148bc:	04813823          	sd	s0,80(sp)
   148c0:	04913423          	sd	s1,72(sp)
   148c4:	03413823          	sd	s4,48(sp)
   148c8:	00060493          	mv	s1,a2
   148cc:	01713c23          	sd	s7,24(sp)
   148d0:	03513423          	sd	s5,40(sp)
   148d4:	03613023          	sd	s6,32(sp)
   148d8:	01813823          	sd	s8,16(sp)
   148dc:	01913423          	sd	s9,8(sp)
   148e0:	01a13023          	sd	s10,0(sp)
   148e4:	00050b93          	mv	s7,a0
   148e8:	dc8ff0ef          	jal	13eb0 <enormlz>
   148ec:	00295403          	lhu	s0,2(s2)
   148f0:	00050793          	mv	a5,a0
   148f4:	00090513          	mv	a0,s2
   148f8:	40f989b3          	sub	s3,s3,a5
   148fc:	03448a13          	add	s4,s1,52
   14900:	db0ff0ef          	jal	13eb0 <enormlz>
   14904:	40a40433          	sub	s0,s0,a0
   14908:	04e48713          	add	a4,s1,78
   1490c:	000a0793          	mv	a5,s4
   14910:	00278793          	add	a5,a5,2
   14914:	fe079f23          	sh	zero,-2(a5)
   14918:	fee79ce3          	bne	a5,a4,14910 <eiremain+0x6c>
   1491c:	09344863          	blt	s0,s3,149ac <eiremain+0x108>
   14920:	004b8b13          	add	s6,s7,4
   14924:	00490a93          	add	s5,s2,4
   14928:	01ab8c13          	add	s8,s7,26
   1492c:	00290d13          	add	s10,s2,2
   14930:	000a8713          	mv	a4,s5
   14934:	000b0793          	mv	a5,s6
   14938:	0007d603          	lhu	a2,0(a5)
   1493c:	00075683          	lhu	a3,0(a4)
   14940:	00278793          	add	a5,a5,2
   14944:	00270713          	add	a4,a4,2
   14948:	0ad61a63          	bne	a2,a3,149fc <eiremain+0x158>
   1494c:	fefc16e3          	bne	s8,a5,14938 <eiremain+0x94>
   14950:	018b8613          	add	a2,s7,24
   14954:	01890713          	add	a4,s2,24
   14958:	00000693          	li	a3,0
   1495c:	00075783          	lhu	a5,0(a4)
   14960:	00065583          	lhu	a1,0(a2)
   14964:	ffe70713          	add	a4,a4,-2
   14968:	ffe60613          	add	a2,a2,-2
   1496c:	40b787b3          	sub	a5,a5,a1
   14970:	40d787b3          	sub	a5,a5,a3
   14974:	0107d693          	srl	a3,a5,0x10
   14978:	00f71123          	sh	a5,2(a4)
   1497c:	0016f693          	and	a3,a3,1
   14980:	fda71ee3          	bne	a4,s10,1495c <eiremain+0xb8>
   14984:	00100c93          	li	s9,1
   14988:	000a0513          	mv	a0,s4
   1498c:	b8cff0ef          	jal	13d18 <eshup1>
   14990:	04c4d783          	lhu	a5,76(s1)
   14994:	fff40413          	add	s0,s0,-1
   14998:	00090513          	mv	a0,s2
   1499c:	00fce7b3          	or	a5,s9,a5
   149a0:	04f49623          	sh	a5,76(s1)
   149a4:	b74ff0ef          	jal	13d18 <eshup1>
   149a8:	f93454e3          	bge	s0,s3,14930 <eiremain+0x8c>
   149ac:	00040693          	mv	a3,s0
   149b0:	05013403          	ld	s0,80(sp)
   149b4:	05813083          	ld	ra,88(sp)
   149b8:	03813983          	ld	s3,56(sp)
   149bc:	03013a03          	ld	s4,48(sp)
   149c0:	02813a83          	ld	s5,40(sp)
   149c4:	02013b03          	ld	s6,32(sp)
   149c8:	01813b83          	ld	s7,24(sp)
   149cc:	01013c03          	ld	s8,16(sp)
   149d0:	00813c83          	ld	s9,8(sp)
   149d4:	00013d03          	ld	s10,0(sp)
   149d8:	00048793          	mv	a5,s1
   149dc:	00090513          	mv	a0,s2
   149e0:	04813483          	ld	s1,72(sp)
   149e4:	04013903          	ld	s2,64(sp)
   149e8:	00000713          	li	a4,0
   149ec:	00000613          	li	a2,0
   149f0:	00000593          	li	a1,0
   149f4:	06010113          	add	sp,sp,96
   149f8:	9f1ff06f          	j	143e8 <emdnorm>
   149fc:	00000c93          	li	s9,0
   14a00:	f8c6e4e3          	bltu	a3,a2,14988 <eiremain+0xe4>
   14a04:	f4dff06f          	j	14950 <eiremain+0xac>

0000000000014a08 <e113toe.isra.0>:
   14a08:	fd010113          	add	sp,sp,-48
   14a0c:	02813023          	sd	s0,32(sp)
   14a10:	02113423          	sd	ra,40(sp)
   14a14:	00058413          	mv	s0,a1
   14a18:	00010793          	mv	a5,sp
   14a1c:	01a10713          	add	a4,sp,26
   14a20:	00278793          	add	a5,a5,2
   14a24:	fe079f23          	sh	zero,-2(a5)
   14a28:	fee79ce3          	bne	a5,a4,14a20 <e113toe.isra.0+0x18>
   14a2c:	00e55783          	lhu	a5,14(a0)
   14a30:	00008737          	lui	a4,0x8
   14a34:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   14a38:	03079693          	sll	a3,a5,0x30
   14a3c:	43f6d693          	sra	a3,a3,0x3f
   14a40:	00d11023          	sh	a3,0(sp)
   14a44:	00e7f6b3          	and	a3,a5,a4
   14a48:	00068613          	mv	a2,a3
   14a4c:	06e68063          	beq	a3,a4,14aac <e113toe.isra.0+0xa4>
   14a50:	00e50793          	add	a5,a0,14
   14a54:	00d11123          	sh	a3,2(sp)
   14a58:	00610713          	add	a4,sp,6
   14a5c:	ffe7d683          	lhu	a3,-2(a5)
   14a60:	ffe78793          	add	a5,a5,-2
   14a64:	00270713          	add	a4,a4,2
   14a68:	fed71f23          	sh	a3,-2(a4)
   14a6c:	fef518e3          	bne	a0,a5,14a5c <e113toe.isra.0+0x54>
   14a70:	02061263          	bnez	a2,14a94 <e113toe.isra.0+0x8c>
   14a74:	00011223          	sh	zero,4(sp)
   14a78:	00040593          	mv	a1,s0
   14a7c:	00010513          	mv	a0,sp
   14a80:	b74ff0ef          	jal	13df4 <emovo.constprop.0>
   14a84:	02813083          	ld	ra,40(sp)
   14a88:	02013403          	ld	s0,32(sp)
   14a8c:	03010113          	add	sp,sp,48
   14a90:	00008067          	ret
   14a94:	00100793          	li	a5,1
   14a98:	fff00593          	li	a1,-1
   14a9c:	00010513          	mv	a0,sp
   14aa0:	00f11223          	sh	a5,4(sp)
   14aa4:	d78ff0ef          	jal	1401c <eshift.part.0>
   14aa8:	fd1ff06f          	j	14a78 <e113toe.isra.0+0x70>
   14aac:	00050793          	mv	a5,a0
   14ab0:	00e50693          	add	a3,a0,14
   14ab4:	0007d703          	lhu	a4,0(a5)
   14ab8:	00278793          	add	a5,a5,2
   14abc:	06071c63          	bnez	a4,14b34 <e113toe.isra.0+0x12c>
   14ac0:	fed79ae3          	bne	a5,a3,14ab4 <e113toe.isra.0+0xac>
   14ac4:	01440713          	add	a4,s0,20
   14ac8:	00040793          	mv	a5,s0
   14acc:	00278793          	add	a5,a5,2
   14ad0:	fe079f23          	sh	zero,-2(a5)
   14ad4:	fee79ce3          	bne	a5,a4,14acc <e113toe.isra.0+0xc4>
   14ad8:	01240713          	add	a4,s0,18
   14adc:	00040793          	mv	a5,s0
   14ae0:	00278793          	add	a5,a5,2
   14ae4:	fe079f23          	sh	zero,-2(a5)
   14ae8:	fee79ce3          	bne	a5,a4,14ae0 <e113toe.isra.0+0xd8>
   14aec:	01245783          	lhu	a5,18(s0)
   14af0:	000086b7          	lui	a3,0x8
   14af4:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   14af8:	00d7e7b3          	or	a5,a5,a3
   14afc:	03079793          	sll	a5,a5,0x30
   14b00:	0307d793          	srl	a5,a5,0x30
   14b04:	00f41923          	sh	a5,18(s0)
   14b08:	00e51683          	lh	a3,14(a0)
   14b0c:	f606dce3          	bgez	a3,14a84 <e113toe.isra.0+0x7c>
   14b10:	00040693          	mv	a3,s0
   14b14:	0006d603          	lhu	a2,0(a3)
   14b18:	00268693          	add	a3,a3,2
   14b1c:	f60614e3          	bnez	a2,14a84 <e113toe.isra.0+0x7c>
   14b20:	fee69ae3          	bne	a3,a4,14b14 <e113toe.isra.0+0x10c>
   14b24:	ffff8737          	lui	a4,0xffff8
   14b28:	00e7c7b3          	xor	a5,a5,a4
   14b2c:	00f41923          	sh	a5,18(s0)
   14b30:	f55ff06f          	j	14a84 <e113toe.isra.0+0x7c>
   14b34:	01040713          	add	a4,s0,16
   14b38:	00040793          	mv	a5,s0
   14b3c:	00278793          	add	a5,a5,2
   14b40:	fe079f23          	sh	zero,-2(a5)
   14b44:	fee79ce3          	bne	a5,a4,14b3c <e113toe.isra.0+0x134>
   14b48:	ffffc7b7          	lui	a5,0xffffc
   14b4c:	00f41823          	sh	a5,16(s0)
   14b50:	ffff87b7          	lui	a5,0xffff8
   14b54:	fff7c793          	not	a5,a5
   14b58:	00f41923          	sh	a5,18(s0)
   14b5c:	f29ff06f          	j	14a84 <e113toe.isra.0+0x7c>

0000000000014b60 <ediv>:
   14b60:	01255783          	lhu	a5,18(a0)
   14b64:	f1010113          	add	sp,sp,-240
   14b68:	0e813023          	sd	s0,224(sp)
   14b6c:	fff7c793          	not	a5,a5
   14b70:	0c913c23          	sd	s1,216(sp)
   14b74:	0d213823          	sd	s2,208(sp)
   14b78:	0d313423          	sd	s3,200(sp)
   14b7c:	0e113423          	sd	ra,232(sp)
   14b80:	0d413023          	sd	s4,192(sp)
   14b84:	0b513c23          	sd	s5,184(sp)
   14b88:	0b613823          	sd	s6,176(sp)
   14b8c:	0b713423          	sd	s7,168(sp)
   14b90:	0b813023          	sd	s8,160(sp)
   14b94:	09913c23          	sd	s9,152(sp)
   14b98:	09a13823          	sd	s10,144(sp)
   14b9c:	09b13423          	sd	s11,136(sp)
   14ba0:	03179713          	sll	a4,a5,0x31
   14ba4:	00050493          	mv	s1,a0
   14ba8:	00058993          	mv	s3,a1
   14bac:	00060413          	mv	s0,a2
   14bb0:	00068913          	mv	s2,a3
   14bb4:	00071e63          	bnez	a4,14bd0 <ediv+0x70>
   14bb8:	01250693          	add	a3,a0,18
   14bbc:	00050793          	mv	a5,a0
   14bc0:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31e0>
   14bc4:	00278793          	add	a5,a5,2
   14bc8:	0e071e63          	bnez	a4,14cc4 <ediv+0x164>
   14bcc:	fed79ae3          	bne	a5,a3,14bc0 <ediv+0x60>
   14bd0:	0129d783          	lhu	a5,18(s3)
   14bd4:	fff7c793          	not	a5,a5
   14bd8:	03179713          	sll	a4,a5,0x31
   14bdc:	00071e63          	bnez	a4,14bf8 <ediv+0x98>
   14be0:	01298693          	add	a3,s3,18
   14be4:	00098793          	mv	a5,s3
   14be8:	0007d703          	lhu	a4,0(a5)
   14bec:	00278793          	add	a5,a5,2
   14bf0:	0e071863          	bnez	a4,14ce0 <ediv+0x180>
   14bf4:	fed79ae3          	bne	a5,a3,14be8 <ediv+0x88>
   14bf8:	0000d597          	auipc	a1,0xd
   14bfc:	6e058593          	add	a1,a1,1760 # 222d8 <ezero>
   14c00:	00048513          	mv	a0,s1
   14c04:	e94ff0ef          	jal	14298 <ecmp>
   14c08:	18050a63          	beqz	a0,14d9c <ediv+0x23c>
   14c0c:	0124d603          	lhu	a2,18(s1)
   14c10:	000087b7          	lui	a5,0x8
   14c14:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   14c18:	00f67533          	and	a0,a2,a5
   14c1c:	0ef51063          	bne	a0,a5,14cfc <ediv+0x19c>
   14c20:	01248693          	add	a3,s1,18
   14c24:	00048793          	mv	a5,s1
   14c28:	0007d703          	lhu	a4,0(a5)
   14c2c:	00278793          	add	a5,a5,2
   14c30:	0c071663          	bnez	a4,14cfc <ediv+0x19c>
   14c34:	fed79ae3          	bne	a5,a3,14c28 <ediv+0xc8>
   14c38:	0129d703          	lhu	a4,18(s3)
   14c3c:	fff74793          	not	a5,a4
   14c40:	03179693          	sll	a3,a5,0x31
   14c44:	14069263          	bnez	a3,14d88 <ediv+0x228>
   14c48:	01298693          	add	a3,s3,18
   14c4c:	00098793          	mv	a5,s3
   14c50:	0007d583          	lhu	a1,0(a5)
   14c54:	00278793          	add	a5,a5,2
   14c58:	48059c63          	bnez	a1,150f0 <ediv+0x590>
   14c5c:	fed79ae3          	bne	a5,a3,14c50 <ediv+0xf0>
   14c60:	01040713          	add	a4,s0,16
   14c64:	00040793          	mv	a5,s0
   14c68:	00278793          	add	a5,a5,2
   14c6c:	fe079f23          	sh	zero,-2(a5)
   14c70:	fee79ce3          	bne	a5,a4,14c68 <ediv+0x108>
   14c74:	ffffc7b7          	lui	a5,0xffffc
   14c78:	00f41823          	sh	a5,16(s0)
   14c7c:	ffff87b7          	lui	a5,0xffff8
   14c80:	fff7c793          	not	a5,a5
   14c84:	00f41923          	sh	a5,18(s0)
   14c88:	0e813083          	ld	ra,232(sp)
   14c8c:	0e013403          	ld	s0,224(sp)
   14c90:	0d813483          	ld	s1,216(sp)
   14c94:	0d013903          	ld	s2,208(sp)
   14c98:	0c813983          	ld	s3,200(sp)
   14c9c:	0c013a03          	ld	s4,192(sp)
   14ca0:	0b813a83          	ld	s5,184(sp)
   14ca4:	0b013b03          	ld	s6,176(sp)
   14ca8:	0a813b83          	ld	s7,168(sp)
   14cac:	0a013c03          	ld	s8,160(sp)
   14cb0:	09813c83          	ld	s9,152(sp)
   14cb4:	09013d03          	ld	s10,144(sp)
   14cb8:	08813d83          	ld	s11,136(sp)
   14cbc:	0f010113          	add	sp,sp,240
   14cc0:	00008067          	ret
   14cc4:	01448713          	add	a4,s1,20
   14cc8:	0004d783          	lhu	a5,0(s1)
   14ccc:	00248493          	add	s1,s1,2
   14cd0:	00240413          	add	s0,s0,2
   14cd4:	fef41f23          	sh	a5,-2(s0)
   14cd8:	fee498e3          	bne	s1,a4,14cc8 <ediv+0x168>
   14cdc:	fadff06f          	j	14c88 <ediv+0x128>
   14ce0:	01440713          	add	a4,s0,20
   14ce4:	0009d783          	lhu	a5,0(s3)
   14ce8:	00240413          	add	s0,s0,2
   14cec:	00298993          	add	s3,s3,2
   14cf0:	fef41f23          	sh	a5,-2(s0)
   14cf4:	fee418e3          	bne	s0,a4,14ce4 <ediv+0x184>
   14cf8:	f91ff06f          	j	14c88 <ediv+0x128>
   14cfc:	0129d703          	lhu	a4,18(s3)
   14d00:	fff74793          	not	a5,a4
   14d04:	03179693          	sll	a3,a5,0x31
   14d08:	0a069663          	bnez	a3,14db4 <ediv+0x254>
   14d0c:	00000813          	li	a6,0
   14d10:	01298693          	add	a3,s3,18
   14d14:	00098793          	mv	a5,s3
   14d18:	0007d583          	lhu	a1,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31e0>
   14d1c:	00278793          	add	a5,a5,2
   14d20:	06059263          	bnez	a1,14d84 <ediv+0x224>
   14d24:	fed79ae3          	bne	a5,a3,14d18 <ediv+0x1b8>
   14d28:	000087b7          	lui	a5,0x8
   14d2c:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   14d30:	0cf50a63          	beq	a0,a5,14e04 <ediv+0x2a4>
   14d34:	00f65613          	srl	a2,a2,0xf
   14d38:	0009d783          	lhu	a5,0(s3)
   14d3c:	00298993          	add	s3,s3,2
   14d40:	3a079063          	bnez	a5,150e0 <ediv+0x580>
   14d44:	fed99ae3          	bne	s3,a3,14d38 <ediv+0x1d8>
   14d48:	00f75793          	srl	a5,a4,0xf
   14d4c:	00c7c7b3          	xor	a5,a5,a2
   14d50:	00f7979b          	sllw	a5,a5,0xf
   14d54:	00f41923          	sh	a5,18(s0)
   14d58:	01240713          	add	a4,s0,18
   14d5c:	00040793          	mv	a5,s0
   14d60:	00278793          	add	a5,a5,2
   14d64:	fe079f23          	sh	zero,-2(a5)
   14d68:	fee79ce3          	bne	a5,a4,14d60 <ediv+0x200>
   14d6c:	01245783          	lhu	a5,18(s0)
   14d70:	00008737          	lui	a4,0x8
   14d74:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   14d78:	00e7e7b3          	or	a5,a5,a4
   14d7c:	00f41923          	sh	a5,18(s0)
   14d80:	f09ff06f          	j	14c88 <ediv+0x128>
   14d84:	02080863          	beqz	a6,14db4 <ediv+0x254>
   14d88:	01440793          	add	a5,s0,20
   14d8c:	00240413          	add	s0,s0,2
   14d90:	fe041f23          	sh	zero,-2(s0)
   14d94:	fef41ce3          	bne	s0,a5,14d8c <ediv+0x22c>
   14d98:	ef1ff06f          	j	14c88 <ediv+0x128>
   14d9c:	0000d597          	auipc	a1,0xd
   14da0:	53c58593          	add	a1,a1,1340 # 222d8 <ezero>
   14da4:	00098513          	mv	a0,s3
   14da8:	cf0ff0ef          	jal	14298 <ecmp>
   14dac:	e60510e3          	bnez	a0,14c0c <ediv+0xac>
   14db0:	eb1ff06f          	j	14c60 <ediv+0x100>
   14db4:	02010593          	add	a1,sp,32
   14db8:	00048513          	mv	a0,s1
   14dbc:	c24ff0ef          	jal	141e0 <emovi>
   14dc0:	04010593          	add	a1,sp,64
   14dc4:	00098513          	mv	a0,s3
   14dc8:	c18ff0ef          	jal	141e0 <emovi>
   14dcc:	04215b03          	lhu	s6,66(sp)
   14dd0:	02215c03          	lhu	s8,34(sp)
   14dd4:	040b1463          	bnez	s6,14e1c <ediv+0x2bc>
   14dd8:	04210793          	add	a5,sp,66
   14ddc:	05810c93          	add	s9,sp,88
   14de0:	0007d703          	lhu	a4,0(a5)
   14de4:	00278793          	add	a5,a5,2
   14de8:	2c071863          	bnez	a4,150b8 <ediv+0x558>
   14dec:	fefc9ae3          	bne	s9,a5,14de0 <ediv+0x280>
   14df0:	01440793          	add	a5,s0,20
   14df4:	00240413          	add	s0,s0,2
   14df8:	fe041f23          	sh	zero,-2(s0)
   14dfc:	fef41ce3          	bne	s0,a5,14df4 <ediv+0x294>
   14e00:	e89ff06f          	j	14c88 <ediv+0x128>
   14e04:	01248593          	add	a1,s1,18
   14e08:	0004d783          	lhu	a5,0(s1)
   14e0c:	00248493          	add	s1,s1,2
   14e10:	2c079c63          	bnez	a5,150e8 <ediv+0x588>
   14e14:	feb49ae3          	bne	s1,a1,14e08 <ediv+0x2a8>
   14e18:	f1dff06f          	j	14d34 <ediv+0x1d4>
   14e1c:	01613423          	sd	s6,8(sp)
   14e20:	040c1663          	bnez	s8,14e6c <ediv+0x30c>
   14e24:	02210793          	add	a5,sp,34
   14e28:	03810693          	add	a3,sp,56
   14e2c:	0007d703          	lhu	a4,0(a5)
   14e30:	00278793          	add	a5,a5,2
   14e34:	28071c63          	bnez	a4,150cc <ediv+0x56c>
   14e38:	fed79ae3          	bne	a5,a3,14e2c <ediv+0x2cc>
   14e3c:	02015683          	lhu	a3,32(sp)
   14e40:	04015603          	lhu	a2,64(sp)
   14e44:	01240713          	add	a4,s0,18
   14e48:	00040793          	mv	a5,s0
   14e4c:	40c686b3          	sub	a3,a3,a2
   14e50:	00d036b3          	snez	a3,a3
   14e54:	00f6969b          	sllw	a3,a3,0xf
   14e58:	00d41923          	sh	a3,18(s0)
   14e5c:	00278793          	add	a5,a5,2
   14e60:	fe079f23          	sh	zero,-2(a5)
   14e64:	fee79ce3          	bne	a5,a4,14e5c <ediv+0x2fc>
   14e68:	f05ff06f          	j	14d6c <ediv+0x20c>
   14e6c:	01813823          	sd	s8,16(sp)
   14e70:	04012783          	lw	a5,64(sp)
   14e74:	03890493          	add	s1,s2,56
   14e78:	03490713          	add	a4,s2,52
   14e7c:	02f92a23          	sw	a5,52(s2)
   14e80:	00e13c23          	sd	a4,24(sp)
   14e84:	04e90993          	add	s3,s2,78
   14e88:	00048793          	mv	a5,s1
   14e8c:	00278793          	add	a5,a5,2
   14e90:	fe079f23          	sh	zero,-2(a5)
   14e94:	ff379ce3          	bne	a5,s3,14e8c <ediv+0x32c>
   14e98:	04010513          	add	a0,sp,64
   14e9c:	e29fe0ef          	jal	13cc4 <eshdn1>
   14ea0:	02615b83          	lhu	s7,38(sp)
   14ea4:	00010a37          	lui	s4,0x10
   14ea8:	04210d13          	add	s10,sp,66
   14eac:	010b9a93          	sll	s5,s7,0x10
   14eb0:	417a8ab3          	sub	s5,s5,s7
   14eb4:	05810c93          	add	s9,sp,88
   14eb8:	fffa0a13          	add	s4,s4,-1 # ffff <exit-0xe9>
   14ebc:	07a10d93          	add	s11,sp,122
   14ec0:	06210c13          	add	s8,sp,98
   14ec4:	04415783          	lhu	a5,68(sp)
   14ec8:	04615703          	lhu	a4,70(sp)
   14ecc:	000a0b13          	mv	s6,s4
   14ed0:	01079793          	sll	a5,a5,0x10
   14ed4:	00e787b3          	add	a5,a5,a4
   14ed8:	00fae863          	bltu	s5,a5,14ee8 <ediv+0x388>
   14edc:	0377d7b3          	divu	a5,a5,s7
   14ee0:	03079b13          	sll	s6,a5,0x30
   14ee4:	030b5b13          	srl	s6,s6,0x30
   14ee8:	06010613          	add	a2,sp,96
   14eec:	02010593          	add	a1,sp,32
   14ef0:	000b0513          	mv	a0,s6
   14ef4:	e75fe0ef          	jal	13d68 <m16m>
   14ef8:	04410713          	add	a4,sp,68
   14efc:	06410793          	add	a5,sp,100
   14f00:	0007d603          	lhu	a2,0(a5)
   14f04:	00075683          	lhu	a3,0(a4)
   14f08:	00278793          	add	a5,a5,2
   14f0c:	00270713          	add	a4,a4,2
   14f10:	0ed61a63          	bne	a2,a3,15004 <ediv+0x4a4>
   14f14:	ffb796e3          	bne	a5,s11,14f00 <ediv+0x3a0>
   14f18:	00000693          	li	a3,0
   14f1c:	07810613          	add	a2,sp,120
   14f20:	000c8793          	mv	a5,s9
   14f24:	0007d703          	lhu	a4,0(a5)
   14f28:	00065583          	lhu	a1,0(a2)
   14f2c:	ffe78793          	add	a5,a5,-2
   14f30:	ffe60613          	add	a2,a2,-2
   14f34:	40b70733          	sub	a4,a4,a1
   14f38:	40d70733          	sub	a4,a4,a3
   14f3c:	01075693          	srl	a3,a4,0x10
   14f40:	00e79123          	sh	a4,2(a5)
   14f44:	0016f693          	and	a3,a3,1
   14f48:	fda79ee3          	bne	a5,s10,14f24 <ediv+0x3c4>
   14f4c:	01649023          	sh	s6,0(s1)
   14f50:	04410793          	add	a5,sp,68
   14f54:	0027d703          	lhu	a4,2(a5)
   14f58:	00278793          	add	a5,a5,2
   14f5c:	fee79f23          	sh	a4,-2(a5)
   14f60:	ff979ae3          	bne	a5,s9,14f54 <ediv+0x3f4>
   14f64:	04011c23          	sh	zero,88(sp)
   14f68:	00248493          	add	s1,s1,2
   14f6c:	f4999ce3          	bne	s3,s1,14ec4 <ediv+0x364>
   14f70:	00000713          	li	a4,0
   14f74:	04410793          	add	a5,sp,68
   14f78:	05a10693          	add	a3,sp,90
   14f7c:	0007d603          	lhu	a2,0(a5)
   14f80:	00278793          	add	a5,a5,2
   14f84:	00c76733          	or	a4,a4,a2
   14f88:	fed79ae3          	bne	a5,a3,14f7c <ediv+0x41c>
   14f8c:	01813483          	ld	s1,24(sp)
   14f90:	0007071b          	sext.w	a4,a4
   14f94:	00e035b3          	snez	a1,a4
   14f98:	04010793          	add	a5,sp,64
   14f9c:	0004d703          	lhu	a4,0(s1)
   14fa0:	00278793          	add	a5,a5,2
   14fa4:	00248493          	add	s1,s1,2
   14fa8:	fee79f23          	sh	a4,-2(a5)
   14fac:	fed798e3          	bne	a5,a3,14f9c <ediv+0x43c>
   14fb0:	00813783          	ld	a5,8(sp)
   14fb4:	01013703          	ld	a4,16(sp)
   14fb8:	000046b7          	lui	a3,0x4
   14fbc:	fff68693          	add	a3,a3,-1 # 3fff <exit-0xc0e9>
   14fc0:	40e78b33          	sub	s6,a5,a4
   14fc4:	04010513          	add	a0,sp,64
   14fc8:	00090793          	mv	a5,s2
   14fcc:	04000713          	li	a4,64
   14fd0:	00db06b3          	add	a3,s6,a3
   14fd4:	00000613          	li	a2,0
   14fd8:	c10ff0ef          	jal	143e8 <emdnorm>
   14fdc:	04015703          	lhu	a4,64(sp)
   14fe0:	02015783          	lhu	a5,32(sp)
   14fe4:	00040593          	mv	a1,s0
   14fe8:	04010513          	add	a0,sp,64
   14fec:	40e787b3          	sub	a5,a5,a4
   14ff0:	00f037b3          	snez	a5,a5
   14ff4:	40f007bb          	negw	a5,a5
   14ff8:	04f11023          	sh	a5,64(sp)
   14ffc:	df9fe0ef          	jal	13df4 <emovo.constprop.0>
   15000:	c89ff06f          	j	14c88 <ediv+0x128>
   15004:	f0c6fae3          	bgeu	a3,a2,14f18 <ediv+0x3b8>
   15008:	fffb079b          	addw	a5,s6,-1
   1500c:	03079313          	sll	t1,a5,0x30
   15010:	03035313          	srl	t1,t1,0x30
   15014:	00000693          	li	a3,0
   15018:	03810613          	add	a2,sp,56
   1501c:	07810713          	add	a4,sp,120
   15020:	00075783          	lhu	a5,0(a4)
   15024:	00065583          	lhu	a1,0(a2)
   15028:	ffe70713          	add	a4,a4,-2
   1502c:	ffe60613          	add	a2,a2,-2
   15030:	40b787b3          	sub	a5,a5,a1
   15034:	40d787b3          	sub	a5,a5,a3
   15038:	0107d693          	srl	a3,a5,0x10
   1503c:	00f71123          	sh	a5,2(a4)
   15040:	0016f693          	and	a3,a3,1
   15044:	fd871ee3          	bne	a4,s8,15020 <ediv+0x4c0>
   15048:	04410713          	add	a4,sp,68
   1504c:	06410793          	add	a5,sp,100
   15050:	0007d603          	lhu	a2,0(a5)
   15054:	00075683          	lhu	a3,0(a4)
   15058:	00278793          	add	a5,a5,2
   1505c:	00270713          	add	a4,a4,2
   15060:	00d61863          	bne	a2,a3,15070 <ediv+0x510>
   15064:	ffb796e3          	bne	a5,s11,15050 <ediv+0x4f0>
   15068:	00030b13          	mv	s6,t1
   1506c:	eadff06f          	j	14f18 <ediv+0x3b8>
   15070:	fec6fce3          	bgeu	a3,a2,15068 <ediv+0x508>
   15074:	ffeb051b          	addw	a0,s6,-2
   15078:	03051b13          	sll	s6,a0,0x30
   1507c:	030b5b13          	srl	s6,s6,0x30
   15080:	00000693          	li	a3,0
   15084:	03810613          	add	a2,sp,56
   15088:	07810713          	add	a4,sp,120
   1508c:	00075783          	lhu	a5,0(a4)
   15090:	00065583          	lhu	a1,0(a2)
   15094:	ffe70713          	add	a4,a4,-2
   15098:	ffe60613          	add	a2,a2,-2
   1509c:	40b787b3          	sub	a5,a5,a1
   150a0:	40d787b3          	sub	a5,a5,a3
   150a4:	0107d693          	srl	a3,a5,0x10
   150a8:	00f71123          	sh	a5,2(a4)
   150ac:	0016f693          	and	a3,a3,1
   150b0:	fd871ee3          	bne	a4,s8,1508c <ediv+0x52c>
   150b4:	e65ff06f          	j	14f18 <ediv+0x3b8>
   150b8:	04010513          	add	a0,sp,64
   150bc:	df5fe0ef          	jal	13eb0 <enormlz>
   150c0:	40a007b3          	neg	a5,a0
   150c4:	00f13423          	sd	a5,8(sp)
   150c8:	d59ff06f          	j	14e20 <ediv+0x2c0>
   150cc:	02010513          	add	a0,sp,32
   150d0:	de1fe0ef          	jal	13eb0 <enormlz>
   150d4:	40a007b3          	neg	a5,a0
   150d8:	00f13823          	sd	a5,16(sp)
   150dc:	d95ff06f          	j	14e70 <ediv+0x310>
   150e0:	00000793          	li	a5,0
   150e4:	c69ff06f          	j	14d4c <ediv+0x1ec>
   150e8:	00000613          	li	a2,0
   150ec:	c4dff06f          	j	14d38 <ediv+0x1d8>
   150f0:	00100813          	li	a6,1
   150f4:	c21ff06f          	j	14d14 <ediv+0x1b4>

00000000000150f8 <emul>:
   150f8:	01255803          	lhu	a6,18(a0)
   150fc:	00008737          	lui	a4,0x8
   15100:	f4010113          	add	sp,sp,-192
   15104:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   15108:	0a813823          	sd	s0,176(sp)
   1510c:	0a913423          	sd	s1,168(sp)
   15110:	0b213023          	sd	s2,160(sp)
   15114:	09513423          	sd	s5,136(sp)
   15118:	00050493          	mv	s1,a0
   1511c:	0a113c23          	sd	ra,184(sp)
   15120:	09313c23          	sd	s3,152(sp)
   15124:	09413823          	sd	s4,144(sp)
   15128:	09613023          	sd	s6,128(sp)
   1512c:	07713c23          	sd	s7,120(sp)
   15130:	07813823          	sd	s8,112(sp)
   15134:	07913423          	sd	s9,104(sp)
   15138:	07a13023          	sd	s10,96(sp)
   1513c:	00e87533          	and	a0,a6,a4
   15140:	00058913          	mv	s2,a1
   15144:	00060413          	mv	s0,a2
   15148:	00068a93          	mv	s5,a3
   1514c:	18e51663          	bne	a0,a4,152d8 <emul+0x1e0>
   15150:	01248993          	add	s3,s1,18
   15154:	00048713          	mv	a4,s1
   15158:	00075603          	lhu	a2,0(a4)
   1515c:	00270713          	add	a4,a4,2
   15160:	20061463          	bnez	a2,15368 <emul+0x270>
   15164:	ff371ae3          	bne	a4,s3,15158 <emul+0x60>
   15168:	01295603          	lhu	a2,18(s2)
   1516c:	fff64793          	not	a5,a2
   15170:	03179713          	sll	a4,a5,0x31
   15174:	16070863          	beqz	a4,152e4 <emul+0x1ec>
   15178:	00048793          	mv	a5,s1
   1517c:	0007d703          	lhu	a4,0(a5)
   15180:	00278793          	add	a5,a5,2
   15184:	28071063          	bnez	a4,15404 <emul+0x30c>
   15188:	ff379ae3          	bne	a5,s3,1517c <emul+0x84>
   1518c:	0000d597          	auipc	a1,0xd
   15190:	14c58593          	add	a1,a1,332 # 222d8 <ezero>
   15194:	00090513          	mv	a0,s2
   15198:	900ff0ef          	jal	14298 <ecmp>
   1519c:	28050e63          	beqz	a0,15438 <emul+0x340>
   151a0:	01295603          	lhu	a2,18(s2)
   151a4:	000085b7          	lui	a1,0x8
   151a8:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   151ac:	00b67733          	and	a4,a2,a1
   151b0:	00070693          	mv	a3,a4
   151b4:	01290793          	add	a5,s2,18
   151b8:	40b71e63          	bne	a4,a1,155d4 <emul+0x4dc>
   151bc:	00090713          	mv	a4,s2
   151c0:	00075683          	lhu	a3,0(a4)
   151c4:	00270713          	add	a4,a4,2
   151c8:	20069263          	bnez	a3,153cc <emul+0x2d4>
   151cc:	fee79ae3          	bne	a5,a4,151c0 <emul+0xc8>
   151d0:	0000d597          	auipc	a1,0xd
   151d4:	10858593          	add	a1,a1,264 # 222d8 <ezero>
   151d8:	00048513          	mv	a0,s1
   151dc:	8bcff0ef          	jal	14298 <ecmp>
   151e0:	24050c63          	beqz	a0,15438 <emul+0x340>
   151e4:	0124d803          	lhu	a6,18(s1)
   151e8:	01295603          	lhu	a2,18(s2)
   151ec:	000087b7          	lui	a5,0x8
   151f0:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   151f4:	00f87733          	and	a4,a6,a5
   151f8:	00f676b3          	and	a3,a2,a5
   151fc:	00070593          	mv	a1,a4
   15200:	1ef70263          	beq	a4,a5,153e4 <emul+0x2ec>
   15204:	00068713          	mv	a4,a3
   15208:	00058693          	mv	a3,a1
   1520c:	000087b7          	lui	a5,0x8
   15210:	0007071b          	sext.w	a4,a4
   15214:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15218:	0ef71e63          	bne	a4,a5,15314 <emul+0x21c>
   1521c:	01290793          	add	a5,s2,18
   15220:	00090713          	mv	a4,s2
   15224:	00075583          	lhu	a1,0(a4)
   15228:	00270713          	add	a4,a4,2
   1522c:	0e059463          	bnez	a1,15314 <emul+0x21c>
   15230:	fee79ae3          	bne	a5,a4,15224 <emul+0x12c>
   15234:	000085b7          	lui	a1,0x8
   15238:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   1523c:	0006871b          	sext.w	a4,a3
   15240:	01248993          	add	s3,s1,18
   15244:	22b69063          	bne	a3,a1,15464 <emul+0x36c>
   15248:	0004d783          	lhu	a5,0(s1)
   1524c:	00248493          	add	s1,s1,2
   15250:	20079e63          	bnez	a5,1546c <emul+0x374>
   15254:	fe999ae3          	bne	s3,s1,15248 <emul+0x150>
   15258:	00f85813          	srl	a6,a6,0xf
   1525c:	000087b7          	lui	a5,0x8
   15260:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15264:	1af70e63          	beq	a4,a5,15420 <emul+0x328>
   15268:	00f65793          	srl	a5,a2,0xf
   1526c:	0107c7b3          	xor	a5,a5,a6
   15270:	00f7979b          	sllw	a5,a5,0xf
   15274:	00f41923          	sh	a5,18(s0)
   15278:	01240713          	add	a4,s0,18
   1527c:	00040793          	mv	a5,s0
   15280:	00278793          	add	a5,a5,2
   15284:	fe079f23          	sh	zero,-2(a5)
   15288:	fee79ce3          	bne	a5,a4,15280 <emul+0x188>
   1528c:	01245783          	lhu	a5,18(s0)
   15290:	00008737          	lui	a4,0x8
   15294:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   15298:	00e7e7b3          	or	a5,a5,a4
   1529c:	00f41923          	sh	a5,18(s0)
   152a0:	0b813083          	ld	ra,184(sp)
   152a4:	0b013403          	ld	s0,176(sp)
   152a8:	0a813483          	ld	s1,168(sp)
   152ac:	0a013903          	ld	s2,160(sp)
   152b0:	09813983          	ld	s3,152(sp)
   152b4:	09013a03          	ld	s4,144(sp)
   152b8:	08813a83          	ld	s5,136(sp)
   152bc:	08013b03          	ld	s6,128(sp)
   152c0:	07813b83          	ld	s7,120(sp)
   152c4:	07013c03          	ld	s8,112(sp)
   152c8:	06813c83          	ld	s9,104(sp)
   152cc:	06013d03          	ld	s10,96(sp)
   152d0:	0c010113          	add	sp,sp,192
   152d4:	00008067          	ret
   152d8:	0125d603          	lhu	a2,18(a1)
   152dc:	00e677b3          	and	a5,a2,a4
   152e0:	02e79a63          	bne	a5,a4,15314 <emul+0x21c>
   152e4:	01290793          	add	a5,s2,18
   152e8:	00090713          	mv	a4,s2
   152ec:	00075683          	lhu	a3,0(a4)
   152f0:	00270713          	add	a4,a4,2
   152f4:	08069863          	bnez	a3,15384 <emul+0x28c>
   152f8:	fef71ae3          	bne	a4,a5,152ec <emul+0x1f4>
   152fc:	00008737          	lui	a4,0x8
   15300:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   15304:	01248993          	add	s3,s1,18
   15308:	e6e508e3          	beq	a0,a4,15178 <emul+0x80>
   1530c:	00e676b3          	and	a3,a2,a4
   15310:	eae686e3          	beq	a3,a4,151bc <emul+0xc4>
   15314:	00048513          	mv	a0,s1
   15318:	00010593          	mv	a1,sp
   1531c:	ec5fe0ef          	jal	141e0 <emovi>
   15320:	00090513          	mv	a0,s2
   15324:	02010593          	add	a1,sp,32
   15328:	eb9fe0ef          	jal	141e0 <emovi>
   1532c:	00215903          	lhu	s2,2(sp)
   15330:	02215483          	lhu	s1,34(sp)
   15334:	06090663          	beqz	s2,153a0 <emul+0x2a8>
   15338:	14049a63          	bnez	s1,1548c <emul+0x394>
   1533c:	02210793          	add	a5,sp,34
   15340:	03810693          	add	a3,sp,56
   15344:	0007d703          	lhu	a4,0(a5)
   15348:	00278793          	add	a5,a5,2
   1534c:	26071a63          	bnez	a4,155c0 <emul+0x4c8>
   15350:	fed79ae3          	bne	a5,a3,15344 <emul+0x24c>
   15354:	01440793          	add	a5,s0,20
   15358:	00240413          	add	s0,s0,2
   1535c:	fe041f23          	sh	zero,-2(s0)
   15360:	fe879ce3          	bne	a5,s0,15358 <emul+0x260>
   15364:	f3dff06f          	j	152a0 <emul+0x1a8>
   15368:	01440713          	add	a4,s0,20
   1536c:	0004d783          	lhu	a5,0(s1)
   15370:	00240413          	add	s0,s0,2
   15374:	00248493          	add	s1,s1,2
   15378:	fef41f23          	sh	a5,-2(s0)
   1537c:	fee418e3          	bne	s0,a4,1536c <emul+0x274>
   15380:	f21ff06f          	j	152a0 <emul+0x1a8>
   15384:	01490713          	add	a4,s2,20
   15388:	00095783          	lhu	a5,0(s2)
   1538c:	00290913          	add	s2,s2,2
   15390:	00240413          	add	s0,s0,2
   15394:	fef41f23          	sh	a5,-2(s0)
   15398:	ff2718e3          	bne	a4,s2,15388 <emul+0x290>
   1539c:	f05ff06f          	j	152a0 <emul+0x1a8>
   153a0:	00210793          	add	a5,sp,2
   153a4:	01810693          	add	a3,sp,24
   153a8:	0007d703          	lhu	a4,0(a5)
   153ac:	00278793          	add	a5,a5,2
   153b0:	20071063          	bnez	a4,155b0 <emul+0x4b8>
   153b4:	fef69ae3          	bne	a3,a5,153a8 <emul+0x2b0>
   153b8:	01440793          	add	a5,s0,20
   153bc:	00240413          	add	s0,s0,2
   153c0:	fe041f23          	sh	zero,-2(s0)
   153c4:	fef41ce3          	bne	s0,a5,153bc <emul+0x2c4>
   153c8:	ed9ff06f          	j	152a0 <emul+0x1a8>
   153cc:	0124d803          	lhu	a6,18(s1)
   153d0:	000085b7          	lui	a1,0x8
   153d4:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   153d8:	00b87733          	and	a4,a6,a1
   153dc:	00070693          	mv	a3,a4
   153e0:	e4b710e3          	bne	a4,a1,15220 <emul+0x128>
   153e4:	01248993          	add	s3,s1,18
   153e8:	00048793          	mv	a5,s1
   153ec:	0007d703          	lhu	a4,0(a5)
   153f0:	00278793          	add	a5,a5,2
   153f4:	08071463          	bnez	a4,1547c <emul+0x384>
   153f8:	fef99ae3          	bne	s3,a5,153ec <emul+0x2f4>
   153fc:	0006871b          	sext.w	a4,a3
   15400:	e49ff06f          	j	15248 <emul+0x150>
   15404:	000085b7          	lui	a1,0x8
   15408:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   1540c:	00b67733          	and	a4,a2,a1
   15410:	00070693          	mv	a3,a4
   15414:	01290793          	add	a5,s2,18
   15418:	dab702e3          	beq	a4,a1,151bc <emul+0xc4>
   1541c:	fcdff06f          	j	153e8 <emul+0x2f0>
   15420:	01290793          	add	a5,s2,18
   15424:	00095703          	lhu	a4,0(s2)
   15428:	00290913          	add	s2,s2,2
   1542c:	04071463          	bnez	a4,15474 <emul+0x37c>
   15430:	fef91ae3          	bne	s2,a5,15424 <emul+0x32c>
   15434:	e35ff06f          	j	15268 <emul+0x170>
   15438:	01040713          	add	a4,s0,16
   1543c:	00040793          	mv	a5,s0
   15440:	00278793          	add	a5,a5,2
   15444:	fe079f23          	sh	zero,-2(a5)
   15448:	fef71ce3          	bne	a4,a5,15440 <emul+0x348>
   1544c:	ffffc7b7          	lui	a5,0xffffc
   15450:	00f41823          	sh	a5,16(s0)
   15454:	ffff87b7          	lui	a5,0xffff8
   15458:	fff7c793          	not	a5,a5
   1545c:	00f41923          	sh	a5,18(s0)
   15460:	e41ff06f          	j	152a0 <emul+0x1a8>
   15464:	00f85813          	srl	a6,a6,0xf
   15468:	fbdff06f          	j	15424 <emul+0x32c>
   1546c:	00000813          	li	a6,0
   15470:	dedff06f          	j	1525c <emul+0x164>
   15474:	00000793          	li	a5,0
   15478:	df5ff06f          	j	1526c <emul+0x174>
   1547c:	00068713          	mv	a4,a3
   15480:	000086b7          	lui	a3,0x8
   15484:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   15488:	d85ff06f          	j	1520c <emul+0x114>
   1548c:	00048993          	mv	s3,s1
   15490:	02015783          	lhu	a5,32(sp)
   15494:	0104949b          	sllw	s1,s1,0x10
   15498:	038a8a13          	add	s4,s5,56
   1549c:	0097e7b3          	or	a5,a5,s1
   154a0:	02faaa23          	sw	a5,52(s5)
   154a4:	034a8493          	add	s1,s5,52
   154a8:	000a0793          	mv	a5,s4
   154ac:	04ea8713          	add	a4,s5,78
   154b0:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31e0>
   154b4:	00278793          	add	a5,a5,2
   154b8:	fee79ce3          	bne	a5,a4,154b0 <emul+0x3b8>
   154bc:	04ca8c93          	add	s9,s5,76
   154c0:	00000c13          	li	s8,0
   154c4:	01810b13          	add	s6,sp,24
   154c8:	00410d13          	add	s10,sp,4
   154cc:	04210b93          	add	s7,sp,66
   154d0:	000b5503          	lhu	a0,0(s6)
   154d4:	ffeb0b13          	add	s6,s6,-2
   154d8:	08051a63          	bnez	a0,1556c <emul+0x474>
   154dc:	04cad783          	lhu	a5,76(s5)
   154e0:	000c8713          	mv	a4,s9
   154e4:	00fc6c33          	or	s8,s8,a5
   154e8:	ffe75603          	lhu	a2,-2(a4)
   154ec:	ffe70713          	add	a4,a4,-2
   154f0:	00c71123          	sh	a2,2(a4)
   154f4:	feea1ae3          	bne	s4,a4,154e8 <emul+0x3f0>
   154f8:	020a9c23          	sh	zero,56(s5)
   154fc:	fdab1ae3          	bne	s6,s10,154d0 <emul+0x3d8>
   15500:	02010793          	add	a5,sp,32
   15504:	03a10693          	add	a3,sp,58
   15508:	0004d703          	lhu	a4,0(s1)
   1550c:	00278793          	add	a5,a5,2
   15510:	00248493          	add	s1,s1,2
   15514:	fee79f23          	sh	a4,-2(a5)
   15518:	fef698e3          	bne	a3,a5,15508 <emul+0x410>
   1551c:	ffffc6b7          	lui	a3,0xffffc
   15520:	01390933          	add	s2,s2,s3
   15524:	00268693          	add	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd71e2>
   15528:	000c0593          	mv	a1,s8
   1552c:	02010513          	add	a0,sp,32
   15530:	000a8793          	mv	a5,s5
   15534:	04000713          	li	a4,64
   15538:	00d906b3          	add	a3,s2,a3
   1553c:	00000613          	li	a2,0
   15540:	ea9fe0ef          	jal	143e8 <emdnorm>
   15544:	02015703          	lhu	a4,32(sp)
   15548:	00015783          	lhu	a5,0(sp)
   1554c:	00040593          	mv	a1,s0
   15550:	02010513          	add	a0,sp,32
   15554:	40e787b3          	sub	a5,a5,a4
   15558:	00f037b3          	snez	a5,a5
   1555c:	40f007bb          	negw	a5,a5
   15560:	02f11023          	sh	a5,32(sp)
   15564:	891fe0ef          	jal	13df4 <emovo.constprop.0>
   15568:	d39ff06f          	j	152a0 <emul+0x1a8>
   1556c:	04010613          	add	a2,sp,64
   15570:	02010593          	add	a1,sp,32
   15574:	ff4fe0ef          	jal	13d68 <m16m>
   15578:	000c8513          	mv	a0,s9
   1557c:	00000593          	li	a1,0
   15580:	05810613          	add	a2,sp,88
   15584:	00055783          	lhu	a5,0(a0)
   15588:	00065703          	lhu	a4,0(a2)
   1558c:	ffe50513          	add	a0,a0,-2
   15590:	ffe60613          	add	a2,a2,-2
   15594:	00f70733          	add	a4,a4,a5
   15598:	00b70733          	add	a4,a4,a1
   1559c:	01075593          	srl	a1,a4,0x10
   155a0:	00e51123          	sh	a4,2(a0)
   155a4:	0015f593          	and	a1,a1,1
   155a8:	fd761ee3          	bne	a2,s7,15584 <emul+0x48c>
   155ac:	f31ff06f          	j	154dc <emul+0x3e4>
   155b0:	00010513          	mv	a0,sp
   155b4:	8fdfe0ef          	jal	13eb0 <enormlz>
   155b8:	40a00933          	neg	s2,a0
   155bc:	d7dff06f          	j	15338 <emul+0x240>
   155c0:	02010513          	add	a0,sp,32
   155c4:	8edfe0ef          	jal	13eb0 <enormlz>
   155c8:	40a009b3          	neg	s3,a0
   155cc:	02215483          	lhu	s1,34(sp)
   155d0:	ec1ff06f          	j	15490 <emul+0x398>
   155d4:	0124d803          	lhu	a6,18(s1)
   155d8:	00b877b3          	and	a5,a6,a1
   155dc:	e0b786e3          	beq	a5,a1,153e8 <emul+0x2f0>
   155e0:	d35ff06f          	j	15314 <emul+0x21c>

00000000000155e4 <_ldtoa_r>:
   155e4:	d9010113          	add	sp,sp,-624
   155e8:	09100313          	li	t1,145
   155ec:	06c13423          	sd	a2,104(sp)
   155f0:	06053e03          	ld	t3,96(a0)
   155f4:	02031613          	sll	a2,t1,0x20
   155f8:	fff60613          	add	a2,a2,-1
   155fc:	26813023          	sd	s0,608(sp)
   15600:	25313423          	sd	s3,584(sp)
   15604:	26113423          	sd	ra,616(sp)
   15608:	24913c23          	sd	s1,600(sp)
   1560c:	25213823          	sd	s2,592(sp)
   15610:	25413023          	sd	s4,576(sp)
   15614:	23513c23          	sd	s5,568(sp)
   15618:	23613823          	sd	s6,560(sp)
   1561c:	23713423          	sd	s7,552(sp)
   15620:	23813023          	sd	s8,544(sp)
   15624:	21913c23          	sd	s9,536(sp)
   15628:	21a13823          	sd	s10,528(sp)
   1562c:	21b13423          	sd	s11,520(sp)
   15630:	06b13023          	sd	a1,96(sp)
   15634:	1ac13823          	sd	a2,432(sp)
   15638:	00d13423          	sd	a3,8(sp)
   1563c:	00e13c23          	sd	a4,24(sp)
   15640:	02f13023          	sd	a5,32(sp)
   15644:	03113423          	sd	a7,40(sp)
   15648:	00050993          	mv	s3,a0
   1564c:	00080413          	mv	s0,a6
   15650:	020e0863          	beqz	t3,15680 <_ldtoa_r+0x9c>
   15654:	06852783          	lw	a5,104(a0)
   15658:	00100713          	li	a4,1
   1565c:	000e0593          	mv	a1,t3
   15660:	00f7173b          	sllw	a4,a4,a5
   15664:	02079793          	sll	a5,a5,0x20
   15668:	02071713          	sll	a4,a4,0x20
   1566c:	0207d793          	srl	a5,a5,0x20
   15670:	00e7e7b3          	or	a5,a5,a4
   15674:	00fe3423          	sd	a5,8(t3)
   15678:	68d010ef          	jal	17504 <_Bfree>
   1567c:	0609b023          	sd	zero,96(s3)
   15680:	09010593          	add	a1,sp,144
   15684:	06010513          	add	a0,sp,96
   15688:	b80ff0ef          	jal	14a08 <e113toe.isra.0>
   1568c:	0a215683          	lhu	a3,162(sp)
   15690:	000087b7          	lui	a5,0x8
   15694:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15698:	00f6f733          	and	a4,a3,a5
   1569c:	02e13823          	sd	a4,48(sp)
   156a0:	46f70a63          	beq	a4,a5,15b14 <_ldtoa_r+0x530>
   156a4:	0106979b          	sllw	a5,a3,0x10
   156a8:	4107d79b          	sraw	a5,a5,0x10
   156ac:	00813703          	ld	a4,8(sp)
   156b0:	01f7d79b          	srlw	a5,a5,0x1f
   156b4:	00f42023          	sw	a5,0(s0)
   156b8:	00300793          	li	a5,3
   156bc:	14f706e3          	beq	a4,a5,16008 <_ldtoa_r+0xa24>
   156c0:	01400793          	li	a5,20
   156c4:	00f13823          	sd	a5,16(sp)
   156c8:	00813783          	ld	a5,8(sp)
   156cc:	14079ee3          	bnez	a5,16028 <_ldtoa_r+0xa44>
   156d0:	0b010793          	add	a5,sp,176
   156d4:	09010713          	add	a4,sp,144
   156d8:	0c410413          	add	s0,sp,196
   156dc:	00075683          	lhu	a3,0(a4)
   156e0:	00278793          	add	a5,a5,2
   156e4:	00270713          	add	a4,a4,2
   156e8:	fed79f23          	sh	a3,-2(a5)
   156ec:	fe8798e3          	bne	a5,s0,156dc <_ldtoa_r+0xf8>
   156f0:	0c215a83          	lhu	s5,194(sp)
   156f4:	00000493          	li	s1,0
   156f8:	00fad793          	srl	a5,s5,0xf
   156fc:	00078c63          	beqz	a5,15714 <_ldtoa_r+0x130>
   15700:	031a9f13          	sll	t5,s5,0x31
   15704:	031f5a93          	srl	s5,t5,0x31
   15708:	000107b7          	lui	a5,0x10
   1570c:	0d511123          	sh	s5,194(sp)
   15710:	fff78493          	add	s1,a5,-1 # ffff <exit-0xe9>
   15714:	0d010713          	add	a4,sp,208
   15718:	0000d797          	auipc	a5,0xd
   1571c:	ba878793          	add	a5,a5,-1112 # 222c0 <eone>
   15720:	0000d917          	auipc	s2,0xd
   15724:	bb490913          	add	s2,s2,-1100 # 222d4 <eone+0x14>
   15728:	0007d683          	lhu	a3,0(a5)
   1572c:	00278793          	add	a5,a5,2
   15730:	00270713          	add	a4,a4,2
   15734:	fed71f23          	sh	a3,-2(a4)
   15738:	ff2798e3          	bne	a5,s2,15728 <_ldtoa_r+0x144>
   1573c:	6a0a9e63          	bnez	s5,15df8 <_ldtoa_r+0x814>
   15740:	0b010793          	add	a5,sp,176
   15744:	0c210693          	add	a3,sp,194
   15748:	0007d703          	lhu	a4,0(a5)
   1574c:	6c071063          	bnez	a4,15e0c <_ldtoa_r+0x828>
   15750:	00278793          	add	a5,a5,2
   15754:	fef69ae3          	bne	a3,a5,15748 <_ldtoa_r+0x164>
   15758:	00000413          	li	s0,0
   1575c:	17010b13          	add	s6,sp,368
   15760:	1b010b93          	add	s7,sp,432
   15764:	11010a13          	add	s4,sp,272
   15768:	12810a93          	add	s5,sp,296
   1576c:	000a0593          	mv	a1,s4
   15770:	0d010513          	add	a0,sp,208
   15774:	a6dfe0ef          	jal	141e0 <emovi>
   15778:	000a0913          	mv	s2,s4
   1577c:	0d010693          	add	a3,sp,208
   15780:	000a0793          	mv	a5,s4
   15784:	0007b703          	ld	a4,0(a5)
   15788:	00878793          	add	a5,a5,8
   1578c:	00868693          	add	a3,a3,8
   15790:	fee6bc23          	sd	a4,-8(a3)
   15794:	fefa98e3          	bne	s5,a5,15784 <_ldtoa_r+0x1a0>
   15798:	000a0593          	mv	a1,s4
   1579c:	0b010513          	add	a0,sp,176
   157a0:	0e011423          	sh	zero,232(sp)
   157a4:	a3dfe0ef          	jal	141e0 <emovi>
   157a8:	0c810c93          	add	s9,sp,200
   157ac:	0b010793          	add	a5,sp,176
   157b0:	00093703          	ld	a4,0(s2)
   157b4:	00878793          	add	a5,a5,8
   157b8:	00890913          	add	s2,s2,8
   157bc:	fee7bc23          	sd	a4,-8(a5)
   157c0:	fefc98e3          	bne	s9,a5,157b0 <_ldtoa_r+0x1cc>
   157c4:	000b8613          	mv	a2,s7
   157c8:	0b010593          	add	a1,sp,176
   157cc:	0d010513          	add	a0,sp,208
   157d0:	0c011423          	sh	zero,200(sp)
   157d4:	8d0ff0ef          	jal	148a4 <eiremain>
   157d8:	1fc15d83          	lhu	s11,508(sp)
   157dc:	160d9863          	bnez	s11,1594c <_ldtoa_r+0x368>
   157e0:	0000d917          	auipc	s2,0xd
   157e4:	af890913          	add	s2,s2,-1288 # 222d8 <ezero>
   157e8:	0b210d13          	add	s10,sp,178
   157ec:	0f210c13          	add	s8,sp,242
   157f0:	00090593          	mv	a1,s2
   157f4:	0b010513          	add	a0,sp,176
   157f8:	aa1fe0ef          	jal	14298 <ecmp>
   157fc:	14050863          	beqz	a0,1594c <_ldtoa_r+0x368>
   15800:	00000713          	li	a4,0
   15804:	000c8693          	mv	a3,s9
   15808:	0006d783          	lhu	a5,0(a3)
   1580c:	00f7d613          	srl	a2,a5,0xf
   15810:	00060463          	beqz	a2,15818 <_ldtoa_r+0x234>
   15814:	00176713          	or	a4,a4,1
   15818:	0017979b          	sllw	a5,a5,0x1
   1581c:	03079793          	sll	a5,a5,0x30
   15820:	00277613          	and	a2,a4,2
   15824:	0307d793          	srl	a5,a5,0x30
   15828:	00060463          	beqz	a2,15830 <_ldtoa_r+0x24c>
   1582c:	0017e793          	or	a5,a5,1
   15830:	0017171b          	sllw	a4,a4,0x1
   15834:	00f69023          	sh	a5,0(a3)
   15838:	03071713          	sll	a4,a4,0x30
   1583c:	ffe68693          	add	a3,a3,-2
   15840:	03075713          	srl	a4,a4,0x30
   15844:	fda692e3          	bne	a3,s10,15808 <_ldtoa_r+0x224>
   15848:	0f010713          	add	a4,sp,240
   1584c:	0b010793          	add	a5,sp,176
   15850:	0007b683          	ld	a3,0(a5)
   15854:	00878793          	add	a5,a5,8
   15858:	00870713          	add	a4,a4,8
   1585c:	fed73c23          	sd	a3,-8(a4)
   15860:	fefc98e3          	bne	s9,a5,15850 <_ldtoa_r+0x26c>
   15864:	10011423          	sh	zero,264(sp)
   15868:	00000713          	li	a4,0
   1586c:	10810693          	add	a3,sp,264
   15870:	0006d783          	lhu	a5,0(a3)
   15874:	00f7d613          	srl	a2,a5,0xf
   15878:	00060463          	beqz	a2,15880 <_ldtoa_r+0x29c>
   1587c:	00176713          	or	a4,a4,1
   15880:	0017979b          	sllw	a5,a5,0x1
   15884:	03079793          	sll	a5,a5,0x30
   15888:	00277613          	and	a2,a4,2
   1588c:	0307d793          	srl	a5,a5,0x30
   15890:	00060463          	beqz	a2,15898 <_ldtoa_r+0x2b4>
   15894:	0017e793          	or	a5,a5,1
   15898:	0017171b          	sllw	a4,a4,0x1
   1589c:	00f69023          	sh	a5,0(a3)
   158a0:	03071713          	sll	a4,a4,0x30
   158a4:	ffe68693          	add	a3,a3,-2
   158a8:	03075713          	srl	a4,a4,0x30
   158ac:	fd8692e3          	bne	a3,s8,15870 <_ldtoa_r+0x28c>
   158b0:	00000713          	li	a4,0
   158b4:	10810693          	add	a3,sp,264
   158b8:	0006d783          	lhu	a5,0(a3)
   158bc:	00f7d613          	srl	a2,a5,0xf
   158c0:	00060463          	beqz	a2,158c8 <_ldtoa_r+0x2e4>
   158c4:	00176713          	or	a4,a4,1
   158c8:	0017979b          	sllw	a5,a5,0x1
   158cc:	03079793          	sll	a5,a5,0x30
   158d0:	00277613          	and	a2,a4,2
   158d4:	0307d793          	srl	a5,a5,0x30
   158d8:	00060463          	beqz	a2,158e0 <_ldtoa_r+0x2fc>
   158dc:	0017e793          	or	a5,a5,1
   158e0:	0017171b          	sllw	a4,a4,0x1
   158e4:	00f69023          	sh	a5,0(a3)
   158e8:	03071713          	sll	a4,a4,0x30
   158ec:	ffe68693          	add	a3,a3,-2
   158f0:	03075713          	srl	a4,a4,0x30
   158f4:	fd8692e3          	bne	a3,s8,158b8 <_ldtoa_r+0x2d4>
   158f8:	00000613          	li	a2,0
   158fc:	000c8693          	mv	a3,s9
   15900:	10810713          	add	a4,sp,264
   15904:	0006d583          	lhu	a1,0(a3)
   15908:	00075783          	lhu	a5,0(a4)
   1590c:	ffe68693          	add	a3,a3,-2
   15910:	ffe70713          	add	a4,a4,-2
   15914:	00b787b3          	add	a5,a5,a1
   15918:	00c787b3          	add	a5,a5,a2
   1591c:	0107d613          	srl	a2,a5,0x10
   15920:	00f69123          	sh	a5,2(a3)
   15924:	00167613          	and	a2,a2,1
   15928:	fd871ee3          	bne	a4,s8,15904 <_ldtoa_r+0x320>
   1592c:	000b8613          	mv	a2,s7
   15930:	0b010593          	add	a1,sp,176
   15934:	0d010513          	add	a0,sp,208
   15938:	f6dfe0ef          	jal	148a4 <eiremain>
   1593c:	1fc15783          	lhu	a5,508(sp)
   15940:	fff4041b          	addw	s0,s0,-1
   15944:	ea0786e3          	beqz	a5,157f0 <_ldtoa_r+0x20c>
   15948:	00078d93          	mv	s11,a5
   1594c:	02000793          	li	a5,32
   15950:	00048463          	beqz	s1,15958 <_ldtoa_r+0x374>
   15954:	02d00793          	li	a5,45
   15958:	00813703          	ld	a4,8(sp)
   1595c:	16f10823          	sb	a5,368(sp)
   15960:	00300693          	li	a3,3
   15964:	01013783          	ld	a5,16(sp)
   15968:	00d71463          	bne	a4,a3,15970 <_ldtoa_r+0x38c>
   1596c:	008787bb          	addw	a5,a5,s0
   15970:	02a00693          	li	a3,42
   15974:	00078613          	mv	a2,a5
   15978:	00f6d463          	bge	a3,a5,15980 <_ldtoa_r+0x39c>
   1597c:	02a00613          	li	a2,42
   15980:	00a00693          	li	a3,10
   15984:	00060a9b          	sext.w	s5,a2
   15988:	64dd8a63          	beq	s11,a3,15fdc <_ldtoa_r+0x9f8>
   1598c:	030d8d9b          	addw	s11,s11,48
   15990:	02e00693          	li	a3,46
   15994:	17b108a3          	sb	s11,369(sp)
   15998:	16d10923          	sb	a3,370(sp)
   1599c:	2407c063          	bltz	a5,15bdc <_ldtoa_r+0x5f8>
   159a0:	17310493          	add	s1,sp,371
   159a4:	00000a13          	li	s4,0
   159a8:	0f010c13          	add	s8,sp,240
   159ac:	10810d93          	add	s11,sp,264
   159b0:	0b210d13          	add	s10,sp,178
   159b4:	0f210913          	add	s2,sp,242
   159b8:	00000713          	li	a4,0
   159bc:	000c8693          	mv	a3,s9
   159c0:	0006d783          	lhu	a5,0(a3)
   159c4:	00f7d613          	srl	a2,a5,0xf
   159c8:	00060463          	beqz	a2,159d0 <_ldtoa_r+0x3ec>
   159cc:	00176713          	or	a4,a4,1
   159d0:	0017979b          	sllw	a5,a5,0x1
   159d4:	03079793          	sll	a5,a5,0x30
   159d8:	00277613          	and	a2,a4,2
   159dc:	0307d793          	srl	a5,a5,0x30
   159e0:	00060463          	beqz	a2,159e8 <_ldtoa_r+0x404>
   159e4:	0017e793          	or	a5,a5,1
   159e8:	0017171b          	sllw	a4,a4,0x1
   159ec:	00f69023          	sh	a5,0(a3)
   159f0:	03071713          	sll	a4,a4,0x30
   159f4:	ffe68693          	add	a3,a3,-2
   159f8:	03075713          	srl	a4,a4,0x30
   159fc:	fda692e3          	bne	a3,s10,159c0 <_ldtoa_r+0x3dc>
   15a00:	000c0793          	mv	a5,s8
   15a04:	0b010713          	add	a4,sp,176
   15a08:	00073683          	ld	a3,0(a4)
   15a0c:	00878793          	add	a5,a5,8
   15a10:	00870713          	add	a4,a4,8
   15a14:	fed7bc23          	sd	a3,-8(a5)
   15a18:	fefd98e3          	bne	s11,a5,15a08 <_ldtoa_r+0x424>
   15a1c:	10011423          	sh	zero,264(sp)
   15a20:	00000713          	li	a4,0
   15a24:	000d8693          	mv	a3,s11
   15a28:	0006d783          	lhu	a5,0(a3)
   15a2c:	00f7d613          	srl	a2,a5,0xf
   15a30:	00060463          	beqz	a2,15a38 <_ldtoa_r+0x454>
   15a34:	00176713          	or	a4,a4,1
   15a38:	0017979b          	sllw	a5,a5,0x1
   15a3c:	03079793          	sll	a5,a5,0x30
   15a40:	00277613          	and	a2,a4,2
   15a44:	0307d793          	srl	a5,a5,0x30
   15a48:	00060463          	beqz	a2,15a50 <_ldtoa_r+0x46c>
   15a4c:	0017e793          	or	a5,a5,1
   15a50:	0017171b          	sllw	a4,a4,0x1
   15a54:	00f69023          	sh	a5,0(a3)
   15a58:	03071713          	sll	a4,a4,0x30
   15a5c:	ffe68693          	add	a3,a3,-2
   15a60:	03075713          	srl	a4,a4,0x30
   15a64:	fd2692e3          	bne	a3,s2,15a28 <_ldtoa_r+0x444>
   15a68:	00000713          	li	a4,0
   15a6c:	000d8693          	mv	a3,s11
   15a70:	0006d783          	lhu	a5,0(a3)
   15a74:	00f7d613          	srl	a2,a5,0xf
   15a78:	00060463          	beqz	a2,15a80 <_ldtoa_r+0x49c>
   15a7c:	00176713          	or	a4,a4,1
   15a80:	0017979b          	sllw	a5,a5,0x1
   15a84:	03079793          	sll	a5,a5,0x30
   15a88:	00277613          	and	a2,a4,2
   15a8c:	0307d793          	srl	a5,a5,0x30
   15a90:	00060463          	beqz	a2,15a98 <_ldtoa_r+0x4b4>
   15a94:	0017e793          	or	a5,a5,1
   15a98:	0017171b          	sllw	a4,a4,0x1
   15a9c:	00f69023          	sh	a5,0(a3)
   15aa0:	03071713          	sll	a4,a4,0x30
   15aa4:	ffe68693          	add	a3,a3,-2
   15aa8:	03075713          	srl	a4,a4,0x30
   15aac:	fd2692e3          	bne	a3,s2,15a70 <_ldtoa_r+0x48c>
   15ab0:	00000613          	li	a2,0
   15ab4:	000c8693          	mv	a3,s9
   15ab8:	000d8713          	mv	a4,s11
   15abc:	0006d583          	lhu	a1,0(a3)
   15ac0:	00075783          	lhu	a5,0(a4)
   15ac4:	ffe68693          	add	a3,a3,-2
   15ac8:	ffe70713          	add	a4,a4,-2
   15acc:	00b787b3          	add	a5,a5,a1
   15ad0:	00c787b3          	add	a5,a5,a2
   15ad4:	0107d613          	srl	a2,a5,0x10
   15ad8:	00f69123          	sh	a5,2(a3)
   15adc:	00167613          	and	a2,a2,1
   15ae0:	fd271ee3          	bne	a4,s2,15abc <_ldtoa_r+0x4d8>
   15ae4:	0b010593          	add	a1,sp,176
   15ae8:	000b8613          	mv	a2,s7
   15aec:	0d010513          	add	a0,sp,208
   15af0:	db5fe0ef          	jal	148a4 <eiremain>
   15af4:	1fc15583          	lhu	a1,508(sp)
   15af8:	00148793          	add	a5,s1,1
   15afc:	001a0a1b          	addw	s4,s4,1
   15b00:	0305871b          	addw	a4,a1,48
   15b04:	fee78fa3          	sb	a4,-1(a5)
   15b08:	0f4ac063          	blt	s5,s4,15be8 <_ldtoa_r+0x604>
   15b0c:	00078493          	mv	s1,a5
   15b10:	ea9ff06f          	j	159b8 <_ldtoa_r+0x3d4>
   15b14:	09010793          	add	a5,sp,144
   15b18:	0a210613          	add	a2,sp,162
   15b1c:	0007d703          	lhu	a4,0(a5)
   15b20:	00278793          	add	a5,a5,2
   15b24:	7e071263          	bnez	a4,16308 <_ldtoa_r+0xd24>
   15b28:	fec79ae3          	bne	a5,a2,15b1c <_ldtoa_r+0x538>
   15b2c:	00f6d693          	srl	a3,a3,0xf
   15b30:	00813703          	ld	a4,8(sp)
   15b34:	00d42023          	sw	a3,0(s0)
   15b38:	00300793          	li	a5,3
   15b3c:	7af70663          	beq	a4,a5,162e8 <_ldtoa_r+0xd04>
   15b40:	01400793          	li	a5,20
   15b44:	00f13823          	sd	a5,16(sp)
   15b48:	00070e63          	beqz	a4,15b64 <_ldtoa_r+0x580>
   15b4c:	01813783          	ld	a5,24(sp)
   15b50:	fff78a9b          	addw	s5,a5,-1
   15b54:	02a00793          	li	a5,42
   15b58:	0157d463          	bge	a5,s5,15b60 <_ldtoa_r+0x57c>
   15b5c:	02a00a93          	li	s5,42
   15b60:	01513823          	sd	s5,16(sp)
   15b64:	09015703          	lhu	a4,144(sp)
   15b68:	09010793          	add	a5,sp,144
   15b6c:	0a210693          	add	a3,sp,162
   15b70:	00278793          	add	a5,a5,2
   15b74:	00071a63          	bnez	a4,15b88 <_ldtoa_r+0x5a4>
   15b78:	b4d78ce3          	beq	a5,a3,156d0 <_ldtoa_r+0xec>
   15b7c:	0007d703          	lhu	a4,0(a5)
   15b80:	00278793          	add	a5,a5,2
   15b84:	fe070ae3          	beqz	a4,15b78 <_ldtoa_r+0x594>
   15b88:	17010b13          	add	s6,sp,368
   15b8c:	0000c597          	auipc	a1,0xc
   15b90:	4f458593          	add	a1,a1,1268 # 22080 <blanks.1+0xe0>
   15b94:	000b0513          	mv	a0,s6
   15b98:	499020ef          	jal	18830 <sprintf>
   15b9c:	00002437          	lui	s0,0x2
   15ba0:	70f40413          	add	s0,s0,1807 # 270f <exit-0xd9d9>
   15ba4:	09000793          	li	a5,144
   15ba8:	1af12a23          	sw	a5,436(sp)
   15bac:	1c812023          	sw	s0,448(sp)
   15bb0:	09010793          	add	a5,sp,144
   15bb4:	0a210613          	add	a2,sp,162
   15bb8:	0007d703          	lhu	a4,0(a5)
   15bbc:	00278793          	add	a5,a5,2
   15bc0:	140714e3          	bnez	a4,16508 <_ldtoa_r+0xf24>
   15bc4:	fec79ae3          	bne	a5,a2,15bb8 <_ldtoa_r+0x5d4>
   15bc8:	02013703          	ld	a4,32(sp)
   15bcc:	000027b7          	lui	a5,0x2
   15bd0:	70f78793          	add	a5,a5,1807 # 270f <exit-0xd9d9>
   15bd4:	00f72023          	sw	a5,0(a4)
   15bd8:	0e00006f          	j	15cb8 <_ldtoa_r+0x6d4>
   15bdc:	1fc15583          	lhu	a1,508(sp)
   15be0:	17210493          	add	s1,sp,370
   15be4:	17310793          	add	a5,sp,371
   15be8:	00400693          	li	a3,4
   15bec:	04b6d863          	bge	a3,a1,15c3c <_ldtoa_r+0x658>
   15bf0:	00500693          	li	a3,5
   15bf4:	14d58ee3          	beq	a1,a3,16550 <_ldtoa_r+0xf6c>
   15bf8:	ffe7c683          	lbu	a3,-2(a5)
   15bfc:	ffe78593          	add	a1,a5,-2
   15c00:	07f6f693          	and	a3,a3,127
   15c04:	020ac663          	bltz	s5,15c30 <_ldtoa_r+0x64c>
   15c08:	02e00793          	li	a5,46
   15c0c:	03800613          	li	a2,56
   15c10:	03000513          	li	a0,48
   15c14:	0cf68ce3          	beq	a3,a5,164ec <_ldtoa_r+0xf08>
   15c18:	0cd674e3          	bgeu	a2,a3,164e0 <_ldtoa_r+0xefc>
   15c1c:	fff5c683          	lbu	a3,-1(a1)
   15c20:	00a58023          	sb	a0,0(a1)
   15c24:	fff58593          	add	a1,a1,-1
   15c28:	07f6f693          	and	a3,a3,127
   15c2c:	fe9ff06f          	j	15c14 <_ldtoa_r+0x630>
   15c30:	03100693          	li	a3,49
   15c34:	fed78f23          	sb	a3,-2(a5)
   15c38:	0014041b          	addw	s0,s0,1
   15c3c:	00040613          	mv	a2,s0
   15c40:	0000c597          	auipc	a1,0xc
   15c44:	3c858593          	add	a1,a1,968 # 22008 <blanks.1+0x68>
   15c48:	00048513          	mv	a0,s1
   15c4c:	3e5020ef          	jal	18830 <sprintf>
   15c50:	09000793          	li	a5,144
   15c54:	03013703          	ld	a4,48(sp)
   15c58:	1af12a23          	sw	a5,436(sp)
   15c5c:	000087b7          	lui	a5,0x8
   15c60:	1c812023          	sw	s0,448(sp)
   15c64:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15c68:	f4f704e3          	beq	a4,a5,15bb0 <_ldtoa_r+0x5cc>
   15c6c:	02013703          	ld	a4,32(sp)
   15c70:	17014683          	lbu	a3,368(sp)
   15c74:	0014079b          	addw	a5,s0,1
   15c78:	00f72023          	sw	a5,0(a4)
   15c7c:	66068263          	beqz	a3,162e0 <_ldtoa_r+0xcfc>
   15c80:	000b0793          	mv	a5,s6
   15c84:	02e00613          	li	a2,46
   15c88:	32c68463          	beq	a3,a2,15fb0 <_ldtoa_r+0x9cc>
   15c8c:	0017c683          	lbu	a3,1(a5)
   15c90:	00178793          	add	a5,a5,1
   15c94:	fe069ae3          	bnez	a3,15c88 <_ldtoa_r+0x6a4>
   15c98:	04500613          	li	a2,69
   15c9c:	00fb6663          	bltu	s6,a5,15ca8 <_ldtoa_r+0x6c4>
   15ca0:	0140006f          	j	15cb4 <_ldtoa_r+0x6d0>
   15ca4:	63678e63          	beq	a5,s6,162e0 <_ldtoa_r+0xcfc>
   15ca8:	fff7c703          	lbu	a4,-1(a5)
   15cac:	fff78793          	add	a5,a5,-1
   15cb0:	fec71ae3          	bne	a4,a2,15ca4 <_ldtoa_r+0x6c0>
   15cb4:	00078023          	sb	zero,0(a5)
   15cb8:	000b0793          	mv	a5,s6
   15cbc:	02000613          	li	a2,32
   15cc0:	02d00593          	li	a1,45
   15cc4:	0007c703          	lbu	a4,0(a5)
   15cc8:	00c70463          	beq	a4,a2,15cd0 <_ldtoa_r+0x6ec>
   15ccc:	00b71663          	bne	a4,a1,15cd8 <_ldtoa_r+0x6f4>
   15cd0:	00178793          	add	a5,a5,1
   15cd4:	ff1ff06f          	j	15cc4 <_ldtoa_r+0x6e0>
   15cd8:	000b0613          	mv	a2,s6
   15cdc:	0007c703          	lbu	a4,0(a5)
   15ce0:	00060913          	mv	s2,a2
   15ce4:	00178793          	add	a5,a5,1
   15ce8:	00e60023          	sb	a4,0(a2)
   15cec:	00160613          	add	a2,a2,1
   15cf0:	fe0716e3          	bnez	a4,15cdc <_ldtoa_r+0x6f8>
   15cf4:	00813703          	ld	a4,8(sp)
   15cf8:	00200793          	li	a5,2
   15cfc:	fff94603          	lbu	a2,-1(s2)
   15d00:	28f70c63          	beq	a4,a5,15f98 <_ldtoa_r+0x9b4>
   15d04:	01013703          	ld	a4,16(sp)
   15d08:	00070793          	mv	a5,a4
   15d0c:	00875463          	bge	a4,s0,15d14 <_ldtoa_r+0x730>
   15d10:	00040793          	mv	a5,s0
   15d14:	03000593          	li	a1,48
   15d18:	0007869b          	sext.w	a3,a5
   15d1c:	02b61663          	bne	a2,a1,15d48 <_ldtoa_r+0x764>
   15d20:	416907b3          	sub	a5,s2,s6
   15d24:	02f6d263          	bge	a3,a5,15d48 <_ldtoa_r+0x764>
   15d28:	03000613          	li	a2,48
   15d2c:	00c0006f          	j	15d38 <_ldtoa_r+0x754>
   15d30:	416907b3          	sub	a5,s2,s6
   15d34:	00f6da63          	bge	a3,a5,15d48 <_ldtoa_r+0x764>
   15d38:	ffe94783          	lbu	a5,-2(s2)
   15d3c:	fe090fa3          	sb	zero,-1(s2)
   15d40:	fff90913          	add	s2,s2,-1
   15d44:	fec786e3          	beq	a5,a2,15d30 <_ldtoa_r+0x74c>
   15d48:	00813703          	ld	a4,8(sp)
   15d4c:	00300793          	li	a5,3
   15d50:	20f70263          	beq	a4,a5,15f54 <_ldtoa_r+0x970>
   15d54:	01813783          	ld	a5,24(sp)
   15d58:	01f00613          	li	a2,31
   15d5c:	00100693          	li	a3,1
   15d60:	0097849b          	addw	s1,a5,9
   15d64:	00400793          	li	a5,4
   15d68:	22967263          	bgeu	a2,s1,15f8c <_ldtoa_r+0x9a8>
   15d6c:	0017979b          	sllw	a5,a5,0x1
   15d70:	01c78713          	add	a4,a5,28
   15d74:	0006859b          	sext.w	a1,a3
   15d78:	0016869b          	addw	a3,a3,1
   15d7c:	fee4f8e3          	bgeu	s1,a4,15d6c <_ldtoa_r+0x788>
   15d80:	0005859b          	sext.w	a1,a1
   15d84:	06b9a423          	sw	a1,104(s3)
   15d88:	00098513          	mv	a0,s3
   15d8c:	6cc010ef          	jal	17458 <_Balloc>
   15d90:	00050413          	mv	s0,a0
   15d94:	1c0502e3          	beqz	a0,16758 <_ldtoa_r+0x1174>
   15d98:	06a9b023          	sd	a0,96(s3)
   15d9c:	000b0593          	mv	a1,s6
   15da0:	475020ef          	jal	18a14 <strcpy>
   15da4:	02813703          	ld	a4,40(sp)
   15da8:	00070863          	beqz	a4,15db8 <_ldtoa_r+0x7d4>
   15dac:	416907b3          	sub	a5,s2,s6
   15db0:	00f407b3          	add	a5,s0,a5
   15db4:	00f73023          	sd	a5,0(a4)
   15db8:	26813083          	ld	ra,616(sp)
   15dbc:	00040513          	mv	a0,s0
   15dc0:	26013403          	ld	s0,608(sp)
   15dc4:	25813483          	ld	s1,600(sp)
   15dc8:	25013903          	ld	s2,592(sp)
   15dcc:	24813983          	ld	s3,584(sp)
   15dd0:	24013a03          	ld	s4,576(sp)
   15dd4:	23813a83          	ld	s5,568(sp)
   15dd8:	23013b03          	ld	s6,560(sp)
   15ddc:	22813b83          	ld	s7,552(sp)
   15de0:	22013c03          	ld	s8,544(sp)
   15de4:	21813c83          	ld	s9,536(sp)
   15de8:	21013d03          	ld	s10,528(sp)
   15dec:	20813d83          	ld	s11,520(sp)
   15df0:	27010113          	add	sp,sp,624
   15df4:	00008067          	ret
   15df8:	000087b7          	lui	a5,0x8
   15dfc:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15e00:	6afa8a63          	beq	s5,a5,164b4 <_ldtoa_r+0xed0>
   15e04:	0c011783          	lh	a5,192(sp)
   15e08:	7207d863          	bgez	a5,16538 <_ldtoa_r+0xf54>
   15e0c:	0b010593          	add	a1,sp,176
   15e10:	0000c517          	auipc	a0,0xc
   15e14:	4b050513          	add	a0,a0,1200 # 222c0 <eone>
   15e18:	c80fe0ef          	jal	14298 <ecmp>
   15e1c:	92050ee3          	beqz	a0,15758 <_ldtoa_r+0x174>
   15e20:	22054263          	bltz	a0,16044 <_ldtoa_r+0xa60>
   15e24:	7a0a9263          	bnez	s5,165c8 <_ldtoa_r+0xfe4>
   15e28:	0c011783          	lh	a5,192(sp)
   15e2c:	00000413          	li	s0,0
   15e30:	1b010b93          	add	s7,sp,432
   15e34:	0207c663          	bltz	a5,15e60 <_ldtoa_r+0x87c>
   15e38:	0000cc17          	auipc	s8,0xc
   15e3c:	470c0c13          	add	s8,s8,1136 # 222a8 <etens+0xf0>
   15e40:	0b010613          	add	a2,sp,176
   15e44:	000b8693          	mv	a3,s7
   15e48:	00060593          	mv	a1,a2
   15e4c:	000c0513          	mv	a0,s8
   15e50:	aa8ff0ef          	jal	150f8 <emul>
   15e54:	0c011783          	lh	a5,192(sp)
   15e58:	fff4041b          	addw	s0,s0,-1
   15e5c:	fe07d2e3          	bgez	a5,15e40 <_ldtoa_r+0x85c>
   15e60:	11010a13          	add	s4,sp,272
   15e64:	12810a93          	add	s5,sp,296
   15e68:	000a0793          	mv	a5,s4
   15e6c:	0b010713          	add	a4,sp,176
   15e70:	12410613          	add	a2,sp,292
   15e74:	00075683          	lhu	a3,0(a4)
   15e78:	00278793          	add	a5,a5,2
   15e7c:	00270713          	add	a4,a4,2
   15e80:	fed79f23          	sh	a3,-2(a5)
   15e84:	fec798e3          	bne	a5,a2,15e74 <_ldtoa_r+0x890>
   15e88:	0d010713          	add	a4,sp,208
   15e8c:	0000c797          	auipc	a5,0xc
   15e90:	43478793          	add	a5,a5,1076 # 222c0 <eone>
   15e94:	0007d683          	lhu	a3,0(a5)
   15e98:	00278793          	add	a5,a5,2
   15e9c:	00270713          	add	a4,a4,2
   15ea0:	fed71f23          	sh	a3,-2(a4)
   15ea4:	ff2798e3          	bne	a5,s2,15e94 <_ldtoa_r+0x8b0>
   15ea8:	fffff937          	lui	s2,0xfffff
   15eac:	0000cc97          	auipc	s9,0xc
   15eb0:	30cc8c93          	add	s9,s9,780 # 221b8 <etens>
   15eb4:	0000cc17          	auipc	s8,0xc
   15eb8:	1fcc0c13          	add	s8,s8,508 # 220b0 <emtens>
   15ebc:	0000cd97          	auipc	s11,0xc
   15ec0:	404d8d93          	add	s11,s11,1028 # 222c0 <eone>
   15ec4:	0000cd17          	auipc	s10,0xc
   15ec8:	2dcd0d13          	add	s10,s10,732 # 221a0 <emtens+0xf0>
   15ecc:	00c0006f          	j	15ed8 <_ldtoa_r+0x8f4>
   15ed0:	014c0c13          	add	s8,s8,20
   15ed4:	014c8c93          	add	s9,s9,20
   15ed8:	000a0593          	mv	a1,s4
   15edc:	000d8513          	mv	a0,s11
   15ee0:	bb8fe0ef          	jal	14298 <ecmp>
   15ee4:	04a05863          	blez	a0,15f34 <_ldtoa_r+0x950>
   15ee8:	000a0593          	mv	a1,s4
   15eec:	000c0513          	mv	a0,s8
   15ef0:	ba8fe0ef          	jal	14298 <ecmp>
   15ef4:	02054863          	bltz	a0,15f24 <_ldtoa_r+0x940>
   15ef8:	000b8693          	mv	a3,s7
   15efc:	000a0613          	mv	a2,s4
   15f00:	000a0593          	mv	a1,s4
   15f04:	000c8513          	mv	a0,s9
   15f08:	9f0ff0ef          	jal	150f8 <emul>
   15f0c:	0d010613          	add	a2,sp,208
   15f10:	000b8693          	mv	a3,s7
   15f14:	00060593          	mv	a1,a2
   15f18:	000c8513          	mv	a0,s9
   15f1c:	9dcff0ef          	jal	150f8 <emul>
   15f20:	0089043b          	addw	s0,s2,s0
   15f24:	01f9579b          	srlw	a5,s2,0x1f
   15f28:	012787bb          	addw	a5,a5,s2
   15f2c:	4017d91b          	sraw	s2,a5,0x1
   15f30:	fbac10e3          	bne	s8,s10,15ed0 <_ldtoa_r+0x8ec>
   15f34:	0d010613          	add	a2,sp,208
   15f38:	000b8693          	mv	a3,s7
   15f3c:	0000c597          	auipc	a1,0xc
   15f40:	38458593          	add	a1,a1,900 # 222c0 <eone>
   15f44:	00060513          	mv	a0,a2
   15f48:	c19fe0ef          	jal	14b60 <ediv>
   15f4c:	17010b13          	add	s6,sp,368
   15f50:	81dff06f          	j	1576c <_ldtoa_r+0x188>
   15f54:	01013783          	ld	a5,16(sp)
   15f58:	0087843b          	addw	s0,a5,s0
   15f5c:	52044663          	bltz	s0,16488 <_ldtoa_r+0xea4>
   15f60:	02013783          	ld	a5,32(sp)
   15f64:	01813703          	ld	a4,24(sp)
   15f68:	0007a783          	lw	a5,0(a5)
   15f6c:	00e787bb          	addw	a5,a5,a4
   15f70:	00f13c23          	sd	a5,24(sp)
   15f74:	01813783          	ld	a5,24(sp)
   15f78:	01f00613          	li	a2,31
   15f7c:	00100693          	li	a3,1
   15f80:	0037849b          	addw	s1,a5,3
   15f84:	00400793          	li	a5,4
   15f88:	de9662e3          	bltu	a2,s1,15d6c <_ldtoa_r+0x788>
   15f8c:	0609a423          	sw	zero,104(s3)
   15f90:	00000593          	li	a1,0
   15f94:	df5ff06f          	j	15d88 <_ldtoa_r+0x7a4>
   15f98:	03000793          	li	a5,48
   15f9c:	daf61ce3          	bne	a2,a5,15d54 <_ldtoa_r+0x770>
   15fa0:	416907b3          	sub	a5,s2,s6
   15fa4:	00100693          	li	a3,1
   15fa8:	d8f6c0e3          	blt	a3,a5,15d28 <_ldtoa_r+0x744>
   15fac:	da9ff06f          	j	15d54 <_ldtoa_r+0x770>
   15fb0:	0007c683          	lbu	a3,0(a5)
   15fb4:	ce0682e3          	beqz	a3,15c98 <_ldtoa_r+0x6b4>
   15fb8:	0017c703          	lbu	a4,1(a5)
   15fbc:	00178793          	add	a5,a5,1
   15fc0:	fee78fa3          	sb	a4,-1(a5)
   15fc4:	cc070ae3          	beqz	a4,15c98 <_ldtoa_r+0x6b4>
   15fc8:	0017c703          	lbu	a4,1(a5)
   15fcc:	00178793          	add	a5,a5,1
   15fd0:	fee78fa3          	sb	a4,-1(a5)
   15fd4:	fe0712e3          	bnez	a4,15fb8 <_ldtoa_r+0x9d4>
   15fd8:	cc1ff06f          	j	15c98 <_ldtoa_r+0x6b4>
   15fdc:	03100693          	li	a3,49
   15fe0:	16d108a3          	sb	a3,369(sp)
   15fe4:	02e00693          	li	a3,46
   15fe8:	16d10923          	sb	a3,370(sp)
   15fec:	0014041b          	addw	s0,s0,1
   15ff0:	2ef05063          	blez	a5,162d0 <_ldtoa_r+0xcec>
   15ff4:	03000793          	li	a5,48
   15ff8:	16f109a3          	sb	a5,371(sp)
   15ffc:	fffa8a9b          	addw	s5,s5,-1
   16000:	17410493          	add	s1,sp,372
   16004:	9a1ff06f          	j	159a4 <_ldtoa_r+0x3c0>
   16008:	01813703          	ld	a4,24(sp)
   1600c:	02a00793          	li	a5,42
   16010:	00070a93          	mv	s5,a4
   16014:	00e7d463          	bge	a5,a4,1601c <_ldtoa_r+0xa38>
   16018:	02a00a93          	li	s5,42
   1601c:	000a879b          	sext.w	a5,s5
   16020:	00f13823          	sd	a5,16(sp)
   16024:	eacff06f          	j	156d0 <_ldtoa_r+0xec>
   16028:	01813783          	ld	a5,24(sp)
   1602c:	fff78a9b          	addw	s5,a5,-1
   16030:	02a00793          	li	a5,42
   16034:	0157d463          	bge	a5,s5,1603c <_ldtoa_r+0xa58>
   16038:	02a00a93          	li	s5,42
   1603c:	01513823          	sd	s5,16(sp)
   16040:	e90ff06f          	j	156d0 <_ldtoa_r+0xec>
   16044:	0f010c13          	add	s8,sp,240
   16048:	000c0713          	mv	a4,s8
   1604c:	0b010793          	add	a5,sp,176
   16050:	0007d683          	lhu	a3,0(a5)
   16054:	00278793          	add	a5,a5,2
   16058:	00270713          	add	a4,a4,2
   1605c:	fed71f23          	sh	a3,-2(a4)
   16060:	fe8798e3          	bne	a5,s0,16050 <_ldtoa_r+0xa6c>
   16064:	000047b7          	lui	a5,0x4
   16068:	08e78793          	add	a5,a5,142 # 408e <exit-0xc05a>
   1606c:	10f11123          	sh	a5,258(sp)
   16070:	000087b7          	lui	a5,0x8
   16074:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   16078:	02f13c23          	sd	a5,56(sp)
   1607c:	ffffc7b7          	lui	a5,0xffffc
   16080:	00000413          	li	s0,0
   16084:	01000713          	li	a4,16
   16088:	0000ce97          	auipc	t4,0xc
   1608c:	1d0e8e93          	add	t4,t4,464 # 22258 <etens+0xa0>
   16090:	0027879b          	addw	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd71e2>
   16094:	04913423          	sd	s1,72(sp)
   16098:	05313823          	sd	s3,80(sp)
   1609c:	00040493          	mv	s1,s0
   160a0:	17010b13          	add	s6,sp,368
   160a4:	1b010b93          	add	s7,sp,432
   160a8:	08c10d13          	add	s10,sp,140
   160ac:	11010a13          	add	s4,sp,272
   160b0:	0e210c93          	add	s9,sp,226
   160b4:	04f12223          	sw	a5,68(sp)
   160b8:	0e410d93          	add	s11,sp,228
   160bc:	00070413          	mv	s0,a4
   160c0:	000e8993          	mv	s3,t4
   160c4:	000b8693          	mv	a3,s7
   160c8:	0d010613          	add	a2,sp,208
   160cc:	000c0593          	mv	a1,s8
   160d0:	00098513          	mv	a0,s3
   160d4:	a8dfe0ef          	jal	14b60 <ediv>
   160d8:	07810793          	add	a5,sp,120
   160dc:	0d010713          	add	a4,sp,208
   160e0:	00075683          	lhu	a3,0(a4)
   160e4:	00278793          	add	a5,a5,2
   160e8:	00270713          	add	a4,a4,2
   160ec:	fed79f23          	sh	a3,-2(a5)
   160f0:	ffa798e3          	bne	a5,s10,160e0 <_ldtoa_r+0xafc>
   160f4:	03813783          	ld	a5,56(sp)
   160f8:	08a15583          	lhu	a1,138(sp)
   160fc:	00f5f533          	and	a0,a1,a5
   16100:	04412783          	lw	a5,68(sp)
   16104:	00f507bb          	addw	a5,a0,a5
   16108:	00078513          	mv	a0,a5
   1610c:	38f05863          	blez	a5,1649c <_ldtoa_r+0xeb8>
   16110:	09000793          	li	a5,144
   16114:	40a7863b          	subw	a2,a5,a0
   16118:	000a0713          	mv	a4,s4
   1611c:	07810793          	add	a5,sp,120
   16120:	0007d683          	lhu	a3,0(a5)
   16124:	00278793          	add	a5,a5,2
   16128:	00270713          	add	a4,a4,2
   1612c:	fed71f23          	sh	a3,-2(a4)
   16130:	ffa798e3          	bne	a5,s10,16120 <_ldtoa_r+0xb3c>
   16134:	06c05863          	blez	a2,161a4 <_ldtoa_r+0xbc0>
   16138:	00f00793          	li	a5,15
   1613c:	000a0713          	mv	a4,s4
   16140:	02c7de63          	bge	a5,a2,1617c <_ldtoa_r+0xb98>
   16144:	08000693          	li	a3,128
   16148:	40a686bb          	subw	a3,a3,a0
   1614c:	0046d69b          	srlw	a3,a3,0x4
   16150:	0016871b          	addw	a4,a3,1
   16154:	00171713          	sll	a4,a4,0x1
   16158:	00ea0733          	add	a4,s4,a4
   1615c:	000a0793          	mv	a5,s4
   16160:	00278793          	add	a5,a5,2
   16164:	fe079f23          	sh	zero,-2(a5)
   16168:	fee79ce3          	bne	a5,a4,16160 <_ldtoa_r+0xb7c>
   1616c:	08000613          	li	a2,128
   16170:	40a6063b          	subw	a2,a2,a0
   16174:	0046969b          	sllw	a3,a3,0x4
   16178:	40d6063b          	subw	a2,a2,a3
   1617c:	0000c697          	auipc	a3,0xc
   16180:	f0c68693          	add	a3,a3,-244 # 22088 <bmask>
   16184:	00161793          	sll	a5,a2,0x1
   16188:	00f687b3          	add	a5,a3,a5
   1618c:	0007d783          	lhu	a5,0(a5)
   16190:	00075683          	lhu	a3,0(a4)
   16194:	00f6f7b3          	and	a5,a3,a5
   16198:	00f71023          	sh	a5,0(a4)
   1619c:	00f5d593          	srl	a1,a1,0xf
   161a0:	16059863          	bnez	a1,16310 <_ldtoa_r+0xd2c>
   161a4:	0d010793          	add	a5,sp,208
   161a8:	000a0713          	mv	a4,s4
   161ac:	0007d603          	lhu	a2,0(a5)
   161b0:	00075683          	lhu	a3,0(a4)
   161b4:	02d61863          	bne	a2,a3,161e4 <_ldtoa_r+0xc00>
   161b8:	00278793          	add	a5,a5,2
   161bc:	00270713          	add	a4,a4,2
   161c0:	ff9796e3          	bne	a5,s9,161ac <_ldtoa_r+0xbc8>
   161c4:	000c0713          	mv	a4,s8
   161c8:	0d010793          	add	a5,sp,208
   161cc:	0007d683          	lhu	a3,0(a5)
   161d0:	00278793          	add	a5,a5,2
   161d4:	00270713          	add	a4,a4,2
   161d8:	fed71f23          	sh	a3,-2(a4)
   161dc:	ffb798e3          	bne	a5,s11,161cc <_ldtoa_r+0xbe8>
   161e0:	009404bb          	addw	s1,s0,s1
   161e4:	01498993          	add	s3,s3,20
   161e8:	0000c797          	auipc	a5,0xc
   161ec:	0d478793          	add	a5,a5,212 # 222bc <etens+0x104>
   161f0:	00145413          	srl	s0,s0,0x1
   161f4:	ecf998e3          	bne	s3,a5,160c4 <_ldtoa_r+0xae0>
   161f8:	10215683          	lhu	a3,258(sp)
   161fc:	ffffc7b7          	lui	a5,0xffffc
   16200:	f727879b          	addw	a5,a5,-142 # ffffffffffffbf72 <__BSS_END__+0xfffffffffffd7152>
   16204:	00d787bb          	addw	a5,a5,a3
   16208:	00048413          	mv	s0,s1
   1620c:	05013983          	ld	s3,80(sp)
   16210:	04813483          	ld	s1,72(sp)
   16214:	015787bb          	addw	a5,a5,s5
   16218:	10f11123          	sh	a5,258(sp)
   1621c:	0b010693          	add	a3,sp,176
   16220:	000c0793          	mv	a5,s8
   16224:	10410593          	add	a1,sp,260
   16228:	0007d703          	lhu	a4,0(a5)
   1622c:	00278793          	add	a5,a5,2
   16230:	00268693          	add	a3,a3,2
   16234:	fee69f23          	sh	a4,-2(a3)
   16238:	feb798e3          	bne	a5,a1,16228 <_ldtoa_r+0xc44>
   1623c:	0d010693          	add	a3,sp,208
   16240:	0000c797          	auipc	a5,0xc
   16244:	08078793          	add	a5,a5,128 # 222c0 <eone>
   16248:	0007d703          	lhu	a4,0(a5)
   1624c:	00278793          	add	a5,a5,2
   16250:	00268693          	add	a3,a3,2
   16254:	fee69f23          	sh	a4,-2(a3)
   16258:	ff2798e3          	bne	a5,s2,16248 <_ldtoa_r+0xc64>
   1625c:	00001cb7          	lui	s9,0x1
   16260:	0000c917          	auipc	s2,0xc
   16264:	f5890913          	add	s2,s2,-168 # 221b8 <etens>
   16268:	0000cd17          	auipc	s10,0xc
   1626c:	040d0d13          	add	s10,s10,64 # 222a8 <etens+0xf0>
   16270:	0100006f          	j	16280 <_ldtoa_r+0xc9c>
   16274:	001cdc93          	srl	s9,s9,0x1
   16278:	27a90063          	beq	s2,s10,164d8 <_ldtoa_r+0xef4>
   1627c:	01490913          	add	s2,s2,20
   16280:	000c0593          	mv	a1,s8
   16284:	000d0513          	mv	a0,s10
   16288:	810fe0ef          	jal	14298 <ecmp>
   1628c:	24a04663          	bgtz	a0,164d8 <_ldtoa_r+0xef4>
   16290:	000c0593          	mv	a1,s8
   16294:	00090513          	mv	a0,s2
   16298:	800fe0ef          	jal	14298 <ecmp>
   1629c:	fca04ce3          	bgtz	a0,16274 <_ldtoa_r+0xc90>
   162a0:	000b8693          	mv	a3,s7
   162a4:	000c0613          	mv	a2,s8
   162a8:	000c0593          	mv	a1,s8
   162ac:	00090513          	mv	a0,s2
   162b0:	8b1fe0ef          	jal	14b60 <ediv>
   162b4:	0d010613          	add	a2,sp,208
   162b8:	000b8693          	mv	a3,s7
   162bc:	00060593          	mv	a1,a2
   162c0:	00090513          	mv	a0,s2
   162c4:	e35fe0ef          	jal	150f8 <emul>
   162c8:	008c843b          	addw	s0,s9,s0
   162cc:	fa9ff06f          	j	16274 <_ldtoa_r+0xc90>
   162d0:	17310493          	add	s1,sp,371
   162d4:	00000a93          	li	s5,0
   162d8:	960792e3          	bnez	a5,15c3c <_ldtoa_r+0x658>
   162dc:	ec8ff06f          	j	159a4 <_ldtoa_r+0x3c0>
   162e0:	000b0793          	mv	a5,s6
   162e4:	9d1ff06f          	j	15cb4 <_ldtoa_r+0x6d0>
   162e8:	01813703          	ld	a4,24(sp)
   162ec:	02a00793          	li	a5,42
   162f0:	00070a93          	mv	s5,a4
   162f4:	00e7d463          	bge	a5,a4,162fc <_ldtoa_r+0xd18>
   162f8:	02a00a93          	li	s5,42
   162fc:	000a879b          	sext.w	a5,s5
   16300:	00f13823          	sd	a5,16(sp)
   16304:	861ff06f          	j	15b64 <_ldtoa_r+0x580>
   16308:	00000693          	li	a3,0
   1630c:	825ff06f          	j	15b30 <_ldtoa_r+0x54c>
   16310:	07810793          	add	a5,sp,120
   16314:	000a0713          	mv	a4,s4
   16318:	0140006f          	j	1632c <_ldtoa_r+0xd48>
   1631c:	00278793          	add	a5,a5,2
   16320:	08a10693          	add	a3,sp,138
   16324:	00270713          	add	a4,a4,2
   16328:	e6d78ee3          	beq	a5,a3,161a4 <_ldtoa_r+0xbc0>
   1632c:	0007d603          	lhu	a2,0(a5)
   16330:	00075683          	lhu	a3,0(a4)
   16334:	fed604e3          	beq	a2,a3,1631c <_ldtoa_r+0xd38>
   16338:	12215783          	lhu	a5,290(sp)
   1633c:	fff7c793          	not	a5,a5
   16340:	03179713          	sll	a4,a5,0x31
   16344:	38070e63          	beqz	a4,166e0 <_ldtoa_r+0x10fc>
   16348:	13010593          	add	a1,sp,304
   1634c:	0000c517          	auipc	a0,0xc
   16350:	f7450513          	add	a0,a0,-140 # 222c0 <eone>
   16354:	e8dfd0ef          	jal	141e0 <emovi>
   16358:	15010593          	add	a1,sp,336
   1635c:	000a0513          	mv	a0,s4
   16360:	e81fd0ef          	jal	141e0 <emovi>
   16364:	13015783          	lhu	a5,304(sp)
   16368:	15215703          	lhu	a4,338(sp)
   1636c:	13215883          	lhu	a7,306(sp)
   16370:	fff7c793          	not	a5,a5
   16374:	12f11823          	sh	a5,304(sp)
   16378:	40e885b3          	sub	a1,a7,a4
   1637c:	00070693          	mv	a3,a4
   16380:	06b05e63          	blez	a1,163fc <_ldtoa_r+0xe18>
   16384:	15010593          	add	a1,sp,336
   16388:	000b0693          	mv	a3,s6
   1638c:	16810793          	add	a5,sp,360
   16390:	000b0513          	mv	a0,s6
   16394:	00058613          	mv	a2,a1
   16398:	00063803          	ld	a6,0(a2)
   1639c:	00860613          	add	a2,a2,8
   163a0:	00850513          	add	a0,a0,8
   163a4:	ff053c23          	sd	a6,-8(a0)
   163a8:	fec798e3          	bne	a5,a2,16398 <_ldtoa_r+0xdb4>
   163ac:	13010613          	add	a2,sp,304
   163b0:	18011423          	sh	zero,392(sp)
   163b4:	14810513          	add	a0,sp,328
   163b8:	00060793          	mv	a5,a2
   163bc:	0007b803          	ld	a6,0(a5)
   163c0:	00878793          	add	a5,a5,8
   163c4:	00858593          	add	a1,a1,8
   163c8:	ff05bc23          	sd	a6,-8(a1)
   163cc:	fea798e3          	bne	a5,a0,163bc <_ldtoa_r+0xdd8>
   163d0:	16011423          	sh	zero,360(sp)
   163d4:	018b0793          	add	a5,s6,24
   163d8:	0006b583          	ld	a1,0(a3)
   163dc:	00868693          	add	a3,a3,8
   163e0:	00860613          	add	a2,a2,8
   163e4:	feb63c23          	sd	a1,-8(a2)
   163e8:	fef698e3          	bne	a3,a5,163d8 <_ldtoa_r+0xdf4>
   163ec:	15215683          	lhu	a3,338(sp)
   163f0:	411705b3          	sub	a1,a4,a7
   163f4:	14011423          	sh	zero,328(sp)
   163f8:	00068713          	mv	a4,a3
   163fc:	30058a63          	beqz	a1,16710 <_ldtoa_r+0x112c>
   16400:	04d13c23          	sd	a3,88(sp)
   16404:	f6f00793          	li	a5,-145
   16408:	06f5c863          	blt	a1,a5,16478 <_ldtoa_r+0xe94>
   1640c:	0005859b          	sext.w	a1,a1
   16410:	13010513          	add	a0,sp,304
   16414:	c09fd0ef          	jal	1401c <eshift.part.0>
   16418:	05813683          	ld	a3,88(sp)
   1641c:	00050593          	mv	a1,a0
   16420:	16810793          	add	a5,sp,360
   16424:	13015603          	lhu	a2,304(sp)
   16428:	15015703          	lhu	a4,336(sp)
   1642c:	44e60663          	beq	a2,a4,16878 <_ldtoa_r+0x1294>
   16430:	00000713          	li	a4,0
   16434:	14810893          	add	a7,sp,328
   16438:	15210513          	add	a0,sp,338
   1643c:	0007d603          	lhu	a2,0(a5)
   16440:	0008d803          	lhu	a6,0(a7)
   16444:	ffe78793          	add	a5,a5,-2
   16448:	ffe88893          	add	a7,a7,-2
   1644c:	41060633          	sub	a2,a2,a6
   16450:	40e60733          	sub	a4,a2,a4
   16454:	01075613          	srl	a2,a4,0x10
   16458:	00e79123          	sh	a4,2(a5)
   1645c:	00167713          	and	a4,a2,1
   16460:	fca79ee3          	bne	a5,a0,1643c <_ldtoa_r+0xe58>
   16464:	00100613          	li	a2,1
   16468:	000b8793          	mv	a5,s7
   1646c:	04000713          	li	a4,64
   16470:	15010513          	add	a0,sp,336
   16474:	f75fd0ef          	jal	143e8 <emdnorm>
   16478:	000a0593          	mv	a1,s4
   1647c:	15010513          	add	a0,sp,336
   16480:	975fd0ef          	jal	13df4 <emovo.constprop.0>
   16484:	d21ff06f          	j	161a4 <_ldtoa_r+0xbc0>
   16488:	02013783          	ld	a5,32(sp)
   1648c:	16010823          	sb	zero,368(sp)
   16490:	000b0913          	mv	s2,s6
   16494:	0007a023          	sw	zero,0(a5)
   16498:	addff06f          	j	15f74 <_ldtoa_r+0x990>
   1649c:	000a0793          	mv	a5,s4
   164a0:	00278793          	add	a5,a5,2
   164a4:	12410713          	add	a4,sp,292
   164a8:	fe079f23          	sh	zero,-2(a5)
   164ac:	fee79ae3          	bne	a5,a4,164a0 <_ldtoa_r+0xebc>
   164b0:	cedff06f          	j	1619c <_ldtoa_r+0xbb8>
   164b4:	17010b13          	add	s6,sp,368
   164b8:	0e048863          	beqz	s1,165a8 <_ldtoa_r+0xfc4>
   164bc:	0000c597          	auipc	a1,0xc
   164c0:	b2458593          	add	a1,a1,-1244 # 21fe0 <blanks.1+0x40>
   164c4:	000b0513          	mv	a0,s6
   164c8:	368020ef          	jal	18830 <sprintf>
   164cc:	00002437          	lui	s0,0x2
   164d0:	70f40413          	add	s0,s0,1807 # 270f <exit-0xd9d9>
   164d4:	f7cff06f          	j	15c50 <_ldtoa_r+0x66c>
   164d8:	12810a93          	add	s5,sp,296
   164dc:	a90ff06f          	j	1576c <_ldtoa_r+0x188>
   164e0:	0016869b          	addw	a3,a3,1
   164e4:	00d58023          	sb	a3,0(a1)
   164e8:	f54ff06f          	j	15c3c <_ldtoa_r+0x658>
   164ec:	fff5c783          	lbu	a5,-1(a1)
   164f0:	03800693          	li	a3,56
   164f4:	0cf6f463          	bgeu	a3,a5,165bc <_ldtoa_r+0xfd8>
   164f8:	03100793          	li	a5,49
   164fc:	0014041b          	addw	s0,s0,1
   16500:	fef58fa3          	sb	a5,-1(a1)
   16504:	f38ff06f          	j	15c3c <_ldtoa_r+0x658>
   16508:	09010793          	add	a5,sp,144
   1650c:	0a210613          	add	a2,sp,162
   16510:	0080006f          	j	16518 <_ldtoa_r+0xf34>
   16514:	f4c78c63          	beq	a5,a2,15c6c <_ldtoa_r+0x688>
   16518:	0007d703          	lhu	a4,0(a5)
   1651c:	00278793          	add	a5,a5,2
   16520:	fe070ae3          	beqz	a4,16514 <_ldtoa_r+0xf30>
   16524:	02013703          	ld	a4,32(sp)
   16528:	000027b7          	lui	a5,0x2
   1652c:	70f78793          	add	a5,a5,1807 # 270f <exit-0xd9d9>
   16530:	00f72023          	sw	a5,0(a4)
   16534:	f84ff06f          	j	15cb8 <_ldtoa_r+0x6d4>
   16538:	17010b13          	add	s6,sp,368
   1653c:	0000c597          	auipc	a1,0xc
   16540:	ac458593          	add	a1,a1,-1340 # 22000 <blanks.1+0x60>
   16544:	000b0513          	mv	a0,s6
   16548:	2e8020ef          	jal	18830 <sprintf>
   1654c:	f81ff06f          	j	164cc <_ldtoa_r+0xee8>
   16550:	0d010593          	add	a1,sp,208
   16554:	0b010513          	add	a0,sp,176
   16558:	02f13c23          	sd	a5,56(sp)
   1655c:	899fd0ef          	jal	13df4 <emovo.constprop.0>
   16560:	0000c597          	auipc	a1,0xc
   16564:	d7858593          	add	a1,a1,-648 # 222d8 <ezero>
   16568:	0d010513          	add	a0,sp,208
   1656c:	d2dfd0ef          	jal	14298 <ecmp>
   16570:	03813783          	ld	a5,56(sp)
   16574:	e8051263          	bnez	a0,15bf8 <_ldtoa_r+0x614>
   16578:	ec0ac263          	bltz	s5,15c3c <_ldtoa_r+0x658>
   1657c:	ffe7c683          	lbu	a3,-2(a5)
   16580:	ffe78593          	add	a1,a5,-2
   16584:	fd268613          	add	a2,a3,-46
   16588:	00163613          	seqz	a2,a2
   1658c:	fff64613          	not	a2,a2
   16590:	00c48633          	add	a2,s1,a2
   16594:	00064603          	lbu	a2,0(a2)
   16598:	07f6f693          	and	a3,a3,127
   1659c:	00167613          	and	a2,a2,1
   165a0:	e6061463          	bnez	a2,15c08 <_ldtoa_r+0x624>
   165a4:	e98ff06f          	j	15c3c <_ldtoa_r+0x658>
   165a8:	0000c597          	auipc	a1,0xc
   165ac:	a4858593          	add	a1,a1,-1464 # 21ff0 <blanks.1+0x50>
   165b0:	000b0513          	mv	a0,s6
   165b4:	27c020ef          	jal	18830 <sprintf>
   165b8:	f15ff06f          	j	164cc <_ldtoa_r+0xee8>
   165bc:	0017879b          	addw	a5,a5,1
   165c0:	fef58fa3          	sb	a5,-1(a1)
   165c4:	e78ff06f          	j	15c3c <_ldtoa_r+0x658>
   165c8:	11010a13          	add	s4,sp,272
   165cc:	000a0593          	mv	a1,s4
   165d0:	0b010513          	add	a0,sp,176
   165d4:	00004d37          	lui	s10,0x4
   165d8:	c09fd0ef          	jal	141e0 <emovi>
   165dc:	00000413          	li	s0,0
   165e0:	12810a93          	add	s5,sp,296
   165e4:	11210b93          	add	s7,sp,274
   165e8:	ffed0d13          	add	s10,s10,-2 # 3ffe <exit-0xc0ea>
   165ec:	10810c93          	add	s9,sp,264
   165f0:	fd500d93          	li	s11,-43
   165f4:	12815783          	lhu	a5,296(sp)
   165f8:	0077f793          	and	a5,a5,7
   165fc:	0c079863          	bnez	a5,166cc <_ldtoa_r+0x10e8>
   16600:	0f010b13          	add	s6,sp,240
   16604:	000a0c13          	mv	s8,s4
   16608:	000b0713          	mv	a4,s6
   1660c:	000a0793          	mv	a5,s4
   16610:	0007b683          	ld	a3,0(a5)
   16614:	00878793          	add	a5,a5,8
   16618:	00870713          	add	a4,a4,8
   1661c:	fed73c23          	sd	a3,-8(a4)
   16620:	ff5798e3          	bne	a5,s5,16610 <_ldtoa_r+0x102c>
   16624:	0f010513          	add	a0,sp,240
   16628:	10011423          	sh	zero,264(sp)
   1662c:	e98fd0ef          	jal	13cc4 <eshdn1>
   16630:	0f010513          	add	a0,sp,240
   16634:	e90fd0ef          	jal	13cc4 <eshdn1>
   16638:	00000613          	li	a2,0
   1663c:	10810693          	add	a3,sp,264
   16640:	000a8713          	mv	a4,s5
   16644:	0006d583          	lhu	a1,0(a3)
   16648:	00075783          	lhu	a5,0(a4)
   1664c:	ffe68693          	add	a3,a3,-2
   16650:	ffe70713          	add	a4,a4,-2
   16654:	00b787b3          	add	a5,a5,a1
   16658:	00c787b3          	add	a5,a5,a2
   1665c:	0107d613          	srl	a2,a5,0x10
   16660:	00f69123          	sh	a5,2(a3)
   16664:	00167613          	and	a2,a2,1
   16668:	fd771ee3          	bne	a4,s7,16644 <_ldtoa_r+0x1060>
   1666c:	0f215783          	lhu	a5,242(sp)
   16670:	0f415703          	lhu	a4,244(sp)
   16674:	0037879b          	addw	a5,a5,3
   16678:	0ef11923          	sh	a5,242(sp)
   1667c:	02070063          	beqz	a4,1669c <_ldtoa_r+0x10b8>
   16680:	0f010513          	add	a0,sp,240
   16684:	e40fd0ef          	jal	13cc4 <eshdn1>
   16688:	0f215783          	lhu	a5,242(sp)
   1668c:	0f415703          	lhu	a4,244(sp)
   16690:	0017879b          	addw	a5,a5,1
   16694:	0ef11923          	sh	a5,242(sp)
   16698:	fe0714e3          	bnez	a4,16680 <_ldtoa_r+0x109c>
   1669c:	10815783          	lhu	a5,264(sp)
   166a0:	02079663          	bnez	a5,166cc <_ldtoa_r+0x10e8>
   166a4:	0f215783          	lhu	a5,242(sp)
   166a8:	02fd6263          	bltu	s10,a5,166cc <_ldtoa_r+0x10e8>
   166ac:	000b3783          	ld	a5,0(s6)
   166b0:	008b0b13          	add	s6,s6,8
   166b4:	008c0c13          	add	s8,s8,8
   166b8:	fefc3c23          	sd	a5,-8(s8)
   166bc:	ff9b18e3          	bne	s6,s9,166ac <_ldtoa_r+0x10c8>
   166c0:	12011423          	sh	zero,296(sp)
   166c4:	fff4041b          	addw	s0,s0,-1
   166c8:	f3b416e3          	bne	s0,s11,165f4 <_ldtoa_r+0x1010>
   166cc:	0b010593          	add	a1,sp,176
   166d0:	000a0513          	mv	a0,s4
   166d4:	f20fd0ef          	jal	13df4 <emovo.constprop.0>
   166d8:	1b010b93          	add	s7,sp,432
   166dc:	f8cff06f          	j	15e68 <_ldtoa_r+0x884>
   166e0:	000a0793          	mv	a5,s4
   166e4:	12210713          	add	a4,sp,290
   166e8:	0007d683          	lhu	a3,0(a5)
   166ec:	00278793          	add	a5,a5,2
   166f0:	aa069ae3          	bnez	a3,161a4 <_ldtoa_r+0xbc0>
   166f4:	fee79ae3          	bne	a5,a4,166e8 <_ldtoa_r+0x1104>
   166f8:	000a0793          	mv	a5,s4
   166fc:	0007d683          	lhu	a3,0(a5)
   16700:	00278793          	add	a5,a5,2
   16704:	c40692e3          	bnez	a3,16348 <_ldtoa_r+0xd64>
   16708:	fee79ae3          	bne	a5,a4,166fc <_ldtoa_r+0x1118>
   1670c:	a99ff06f          	j	161a4 <_ldtoa_r+0xbc0>
   16710:	15410613          	add	a2,sp,340
   16714:	13410793          	add	a5,sp,308
   16718:	14a10893          	add	a7,sp,330
   1671c:	0007d503          	lhu	a0,0(a5)
   16720:	00065583          	lhu	a1,0(a2)
   16724:	00278793          	add	a5,a5,2
   16728:	00260613          	add	a2,a2,2
   1672c:	04b51663          	bne	a0,a1,16778 <_ldtoa_r+0x1194>
   16730:	ff1796e3          	bne	a5,a7,1671c <_ldtoa_r+0x1138>
   16734:	13015603          	lhu	a2,304(sp)
   16738:	15015783          	lhu	a5,336(sp)
   1673c:	0af60a63          	beq	a2,a5,167f0 <_ldtoa_r+0x120c>
   16740:	000a0793          	mv	a5,s4
   16744:	12410713          	add	a4,sp,292
   16748:	00278793          	add	a5,a5,2
   1674c:	fe079f23          	sh	zero,-2(a5)
   16750:	fee79ce3          	bne	a5,a4,16748 <_ldtoa_r+0x1164>
   16754:	a51ff06f          	j	161a4 <_ldtoa_r+0xbc0>
   16758:	000015b7          	lui	a1,0x1
   1675c:	0000c697          	auipc	a3,0xc
   16760:	8b468693          	add	a3,a3,-1868 # 22010 <blanks.1+0x70>
   16764:	00000613          	li	a2,0
   16768:	b6e58593          	add	a1,a1,-1170 # b6e <exit-0xf57a>
   1676c:	0000c517          	auipc	a0,0xc
   16770:	8bc50513          	add	a0,a0,-1860 # 22028 <blanks.1+0x88>
   16774:	190060ef          	jal	1c904 <__assert_func>
   16778:	16810793          	add	a5,sp,360
   1677c:	06a5f663          	bgeu	a1,a0,167e8 <_ldtoa_r+0x1204>
   16780:	15010713          	add	a4,sp,336
   16784:	000b0593          	mv	a1,s6
   16788:	16810793          	add	a5,sp,360
   1678c:	000b0513          	mv	a0,s6
   16790:	00070613          	mv	a2,a4
   16794:	00063803          	ld	a6,0(a2)
   16798:	00860613          	add	a2,a2,8
   1679c:	00850513          	add	a0,a0,8
   167a0:	ff053c23          	sd	a6,-8(a0)
   167a4:	fec798e3          	bne	a5,a2,16794 <_ldtoa_r+0x11b0>
   167a8:	13010613          	add	a2,sp,304
   167ac:	18011423          	sh	zero,392(sp)
   167b0:	00060513          	mv	a0,a2
   167b4:	00053803          	ld	a6,0(a0)
   167b8:	00870713          	add	a4,a4,8
   167bc:	00850513          	add	a0,a0,8
   167c0:	ff073c23          	sd	a6,-8(a4)
   167c4:	fee798e3          	bne	a5,a4,167b4 <_ldtoa_r+0x11d0>
   167c8:	16011423          	sh	zero,360(sp)
   167cc:	14810713          	add	a4,sp,328
   167d0:	0005b503          	ld	a0,0(a1)
   167d4:	00860613          	add	a2,a2,8
   167d8:	00858593          	add	a1,a1,8
   167dc:	fea63c23          	sd	a0,-8(a2)
   167e0:	fec718e3          	bne	a4,a2,167d0 <_ldtoa_r+0x11ec>
   167e4:	14011423          	sh	zero,328(sp)
   167e8:	00000593          	li	a1,0
   167ec:	c39ff06f          	j	16424 <_ldtoa_r+0xe40>
   167f0:	00068793          	mv	a5,a3
   167f4:	00069663          	bnez	a3,16800 <_ldtoa_r+0x121c>
   167f8:	15611603          	lh	a2,342(sp)
   167fc:	02065263          	bgez	a2,16820 <_ldtoa_r+0x123c>
   16800:	15210613          	add	a2,sp,338
   16804:	16810793          	add	a5,sp,360
   16808:	00065583          	lhu	a1,0(a2)
   1680c:	06059063          	bnez	a1,1686c <_ldtoa_r+0x1288>
   16810:	00260613          	add	a2,a2,2
   16814:	fec79ae3          	bne	a5,a2,16808 <_ldtoa_r+0x1224>
   16818:	14e11923          	sh	a4,338(sp)
   1681c:	c5dff06f          	j	16478 <_ldtoa_r+0xe94>
   16820:	16810693          	add	a3,sp,360
   16824:	15210513          	add	a0,sp,338
   16828:	0006d703          	lhu	a4,0(a3)
   1682c:	00f75613          	srl	a2,a4,0xf
   16830:	00060463          	beqz	a2,16838 <_ldtoa_r+0x1254>
   16834:	0017e793          	or	a5,a5,1
   16838:	0017171b          	sllw	a4,a4,0x1
   1683c:	03071713          	sll	a4,a4,0x30
   16840:	0027f613          	and	a2,a5,2
   16844:	03075713          	srl	a4,a4,0x30
   16848:	00060463          	beqz	a2,16850 <_ldtoa_r+0x126c>
   1684c:	00176713          	or	a4,a4,1
   16850:	0017979b          	sllw	a5,a5,0x1
   16854:	00e69023          	sh	a4,0(a3)
   16858:	03079793          	sll	a5,a5,0x30
   1685c:	ffe68693          	add	a3,a3,-2
   16860:	0307d793          	srl	a5,a5,0x30
   16864:	fca692e3          	bne	a3,a0,16828 <_ldtoa_r+0x1244>
   16868:	c11ff06f          	j	16478 <_ldtoa_r+0xe94>
   1686c:	00168713          	add	a4,a3,1
   16870:	14e11923          	sh	a4,338(sp)
   16874:	c05ff06f          	j	16478 <_ldtoa_r+0xe94>
   16878:	00000713          	li	a4,0
   1687c:	14810513          	add	a0,sp,328
   16880:	13210893          	add	a7,sp,306
   16884:	0007d803          	lhu	a6,0(a5)
   16888:	00055603          	lhu	a2,0(a0)
   1688c:	ffe78793          	add	a5,a5,-2
   16890:	ffe50513          	add	a0,a0,-2
   16894:	01060633          	add	a2,a2,a6
   16898:	00e60733          	add	a4,a2,a4
   1689c:	01075613          	srl	a2,a4,0x10
   168a0:	00e79123          	sh	a4,2(a5)
   168a4:	00167713          	and	a4,a2,1
   168a8:	fd151ee3          	bne	a0,a7,16884 <_ldtoa_r+0x12a0>
   168ac:	00000613          	li	a2,0
   168b0:	bb9ff06f          	j	16468 <_ldtoa_r+0xe84>

00000000000168b4 <_ldcheck>:
   168b4:	00053703          	ld	a4,0(a0)
   168b8:	00853783          	ld	a5,8(a0)
   168bc:	fc010113          	add	sp,sp,-64
   168c0:	00010513          	mv	a0,sp
   168c4:	01010593          	add	a1,sp,16
   168c8:	00e13023          	sd	a4,0(sp)
   168cc:	00f13423          	sd	a5,8(sp)
   168d0:	02113c23          	sd	ra,56(sp)
   168d4:	934fe0ef          	jal	14a08 <e113toe.isra.0>
   168d8:	02215783          	lhu	a5,34(sp)
   168dc:	00000513          	li	a0,0
   168e0:	fff7c793          	not	a5,a5
   168e4:	03179713          	sll	a4,a5,0x31
   168e8:	02071063          	bnez	a4,16908 <_ldcheck+0x54>
   168ec:	01010793          	add	a5,sp,16
   168f0:	02210693          	add	a3,sp,34
   168f4:	0007d703          	lhu	a4,0(a5)
   168f8:	00278793          	add	a5,a5,2
   168fc:	00071c63          	bnez	a4,16914 <_ldcheck+0x60>
   16900:	fed79ae3          	bne	a5,a3,168f4 <_ldcheck+0x40>
   16904:	00200513          	li	a0,2
   16908:	03813083          	ld	ra,56(sp)
   1690c:	04010113          	add	sp,sp,64
   16910:	00008067          	ret
   16914:	00100513          	li	a0,1
   16918:	ff1ff06f          	j	16908 <_ldcheck+0x54>

000000000001691c <__localeconv_l>:
   1691c:	10050513          	add	a0,a0,256
   16920:	00008067          	ret

0000000000016924 <_localeconv_r>:
   16924:	66818513          	add	a0,gp,1640 # 24c88 <__global_locale+0x100>
   16928:	00008067          	ret

000000000001692c <localeconv>:
   1692c:	66818513          	add	a0,gp,1640 # 24c88 <__global_locale+0x100>
   16930:	00008067          	ret

0000000000016934 <__smakebuf_r>:
   16934:	01059783          	lh	a5,16(a1)
   16938:	f6010113          	add	sp,sp,-160
   1693c:	08813823          	sd	s0,144(sp)
   16940:	08113c23          	sd	ra,152(sp)
   16944:	08913423          	sd	s1,136(sp)
   16948:	09213023          	sd	s2,128(sp)
   1694c:	07313c23          	sd	s3,120(sp)
   16950:	07413823          	sd	s4,112(sp)
   16954:	0027f713          	and	a4,a5,2
   16958:	00058413          	mv	s0,a1
   1695c:	02070c63          	beqz	a4,16994 <__smakebuf_r+0x60>
   16960:	07758793          	add	a5,a1,119
   16964:	00f5b023          	sd	a5,0(a1)
   16968:	00f5bc23          	sd	a5,24(a1)
   1696c:	00100793          	li	a5,1
   16970:	02f5a023          	sw	a5,32(a1)
   16974:	09813083          	ld	ra,152(sp)
   16978:	09013403          	ld	s0,144(sp)
   1697c:	08813483          	ld	s1,136(sp)
   16980:	08013903          	ld	s2,128(sp)
   16984:	07813983          	ld	s3,120(sp)
   16988:	07013a03          	ld	s4,112(sp)
   1698c:	0a010113          	add	sp,sp,160
   16990:	00008067          	ret
   16994:	01259583          	lh	a1,18(a1)
   16998:	00050493          	mv	s1,a0
   1699c:	0805cc63          	bltz	a1,16a34 <__smakebuf_r+0x100>
   169a0:	00810613          	add	a2,sp,8
   169a4:	440060ef          	jal	1cde4 <_fstat_r>
   169a8:	08054463          	bltz	a0,16a30 <__smakebuf_r+0xfc>
   169ac:	00c12903          	lw	s2,12(sp)
   169b0:	0000f7b7          	lui	a5,0xf
   169b4:	00001a37          	lui	s4,0x1
   169b8:	00f97933          	and	s2,s2,a5
   169bc:	000027b7          	lui	a5,0x2
   169c0:	40f90933          	sub	s2,s2,a5
   169c4:	00193913          	seqz	s2,s2
   169c8:	40000993          	li	s3,1024
   169cc:	800a0a13          	add	s4,s4,-2048 # 800 <exit-0xf8e8>
   169d0:	00098593          	mv	a1,s3
   169d4:	00048513          	mv	a0,s1
   169d8:	1c4000ef          	jal	16b9c <_malloc_r>
   169dc:	01041783          	lh	a5,16(s0)
   169e0:	06050e63          	beqz	a0,16a5c <__smakebuf_r+0x128>
   169e4:	ffffd717          	auipc	a4,0xffffd
   169e8:	92870713          	add	a4,a4,-1752 # 1330c <_cleanup_r>
   169ec:	04e4bc23          	sd	a4,88(s1)
   169f0:	0807e793          	or	a5,a5,128
   169f4:	00f41823          	sh	a5,16(s0)
   169f8:	00a43023          	sd	a0,0(s0)
   169fc:	00a43c23          	sd	a0,24(s0)
   16a00:	03342023          	sw	s3,32(s0)
   16a04:	08091863          	bnez	s2,16a94 <__smakebuf_r+0x160>
   16a08:	0147e7b3          	or	a5,a5,s4
   16a0c:	09813083          	ld	ra,152(sp)
   16a10:	00f41823          	sh	a5,16(s0)
   16a14:	09013403          	ld	s0,144(sp)
   16a18:	08813483          	ld	s1,136(sp)
   16a1c:	08013903          	ld	s2,128(sp)
   16a20:	07813983          	ld	s3,120(sp)
   16a24:	07013a03          	ld	s4,112(sp)
   16a28:	0a010113          	add	sp,sp,160
   16a2c:	00008067          	ret
   16a30:	01041783          	lh	a5,16(s0)
   16a34:	0807f793          	and	a5,a5,128
   16a38:	00000913          	li	s2,0
   16a3c:	04078663          	beqz	a5,16a88 <__smakebuf_r+0x154>
   16a40:	04000993          	li	s3,64
   16a44:	00098593          	mv	a1,s3
   16a48:	00048513          	mv	a0,s1
   16a4c:	150000ef          	jal	16b9c <_malloc_r>
   16a50:	01041783          	lh	a5,16(s0)
   16a54:	00000a13          	li	s4,0
   16a58:	f80516e3          	bnez	a0,169e4 <__smakebuf_r+0xb0>
   16a5c:	2007f713          	and	a4,a5,512
   16a60:	f0071ae3          	bnez	a4,16974 <__smakebuf_r+0x40>
   16a64:	ffc7f793          	and	a5,a5,-4
   16a68:	0027e793          	or	a5,a5,2
   16a6c:	07740713          	add	a4,s0,119
   16a70:	00f41823          	sh	a5,16(s0)
   16a74:	00100793          	li	a5,1
   16a78:	00e43023          	sd	a4,0(s0)
   16a7c:	00e43c23          	sd	a4,24(s0)
   16a80:	02f42023          	sw	a5,32(s0)
   16a84:	ef1ff06f          	j	16974 <__smakebuf_r+0x40>
   16a88:	40000993          	li	s3,1024
   16a8c:	00000a13          	li	s4,0
   16a90:	f41ff06f          	j	169d0 <__smakebuf_r+0x9c>
   16a94:	01241583          	lh	a1,18(s0)
   16a98:	00048513          	mv	a0,s1
   16a9c:	049060ef          	jal	1d2e4 <_isatty_r>
   16aa0:	00051663          	bnez	a0,16aac <__smakebuf_r+0x178>
   16aa4:	01041783          	lh	a5,16(s0)
   16aa8:	f61ff06f          	j	16a08 <__smakebuf_r+0xd4>
   16aac:	01045783          	lhu	a5,16(s0)
   16ab0:	ffc7f793          	and	a5,a5,-4
   16ab4:	0017e793          	or	a5,a5,1
   16ab8:	0107979b          	sllw	a5,a5,0x10
   16abc:	4107d79b          	sraw	a5,a5,0x10
   16ac0:	f49ff06f          	j	16a08 <__smakebuf_r+0xd4>

0000000000016ac4 <__swhatbuf_r>:
   16ac4:	f7010113          	add	sp,sp,-144
   16ac8:	08813023          	sd	s0,128(sp)
   16acc:	00058413          	mv	s0,a1
   16ad0:	01259583          	lh	a1,18(a1)
   16ad4:	06913c23          	sd	s1,120(sp)
   16ad8:	07213823          	sd	s2,112(sp)
   16adc:	08113423          	sd	ra,136(sp)
   16ae0:	00060493          	mv	s1,a2
   16ae4:	00068913          	mv	s2,a3
   16ae8:	0405ca63          	bltz	a1,16b3c <__swhatbuf_r+0x78>
   16aec:	00810613          	add	a2,sp,8
   16af0:	2f4060ef          	jal	1cde4 <_fstat_r>
   16af4:	04054463          	bltz	a0,16b3c <__swhatbuf_r+0x78>
   16af8:	00c12783          	lw	a5,12(sp)
   16afc:	0000f737          	lui	a4,0xf
   16b00:	08813083          	ld	ra,136(sp)
   16b04:	00e7f7b3          	and	a5,a5,a4
   16b08:	00002737          	lui	a4,0x2
   16b0c:	40e787b3          	sub	a5,a5,a4
   16b10:	08013403          	ld	s0,128(sp)
   16b14:	0017b793          	seqz	a5,a5
   16b18:	00f92023          	sw	a5,0(s2)
   16b1c:	40000713          	li	a4,1024
   16b20:	00e4b023          	sd	a4,0(s1)
   16b24:	00001537          	lui	a0,0x1
   16b28:	07813483          	ld	s1,120(sp)
   16b2c:	07013903          	ld	s2,112(sp)
   16b30:	80050513          	add	a0,a0,-2048 # 800 <exit-0xf8e8>
   16b34:	09010113          	add	sp,sp,144
   16b38:	00008067          	ret
   16b3c:	01045783          	lhu	a5,16(s0)
   16b40:	0807f793          	and	a5,a5,128
   16b44:	02078863          	beqz	a5,16b74 <__swhatbuf_r+0xb0>
   16b48:	08813083          	ld	ra,136(sp)
   16b4c:	08013403          	ld	s0,128(sp)
   16b50:	00000793          	li	a5,0
   16b54:	00f92023          	sw	a5,0(s2)
   16b58:	04000713          	li	a4,64
   16b5c:	00e4b023          	sd	a4,0(s1)
   16b60:	07013903          	ld	s2,112(sp)
   16b64:	07813483          	ld	s1,120(sp)
   16b68:	00000513          	li	a0,0
   16b6c:	09010113          	add	sp,sp,144
   16b70:	00008067          	ret
   16b74:	08813083          	ld	ra,136(sp)
   16b78:	08013403          	ld	s0,128(sp)
   16b7c:	00f92023          	sw	a5,0(s2)
   16b80:	40000713          	li	a4,1024
   16b84:	00e4b023          	sd	a4,0(s1)
   16b88:	07013903          	ld	s2,112(sp)
   16b8c:	07813483          	ld	s1,120(sp)
   16b90:	00000513          	li	a0,0
   16b94:	09010113          	add	sp,sp,144
   16b98:	00008067          	ret

0000000000016b9c <_malloc_r>:
   16b9c:	fa010113          	add	sp,sp,-96
   16ba0:	04913423          	sd	s1,72(sp)
   16ba4:	05213023          	sd	s2,64(sp)
   16ba8:	04113c23          	sd	ra,88(sp)
   16bac:	04813823          	sd	s0,80(sp)
   16bb0:	03313c23          	sd	s3,56(sp)
   16bb4:	03413823          	sd	s4,48(sp)
   16bb8:	03513423          	sd	s5,40(sp)
   16bbc:	03613023          	sd	s6,32(sp)
   16bc0:	01713c23          	sd	s7,24(sp)
   16bc4:	01813823          	sd	s8,16(sp)
   16bc8:	01913423          	sd	s9,8(sp)
   16bcc:	01758493          	add	s1,a1,23
   16bd0:	02e00793          	li	a5,46
   16bd4:	00050913          	mv	s2,a0
   16bd8:	0897ee63          	bltu	a5,s1,16c74 <_malloc_r+0xd8>
   16bdc:	02000793          	li	a5,32
   16be0:	24b7e063          	bltu	a5,a1,16e20 <_malloc_r+0x284>
   16be4:	06d000ef          	jal	17450 <__malloc_lock>
   16be8:	02000493          	li	s1,32
   16bec:	05000793          	li	a5,80
   16bf0:	00400613          	li	a2,4
   16bf4:	0000d997          	auipc	s3,0xd
   16bf8:	78498993          	add	s3,s3,1924 # 24378 <__malloc_av_>
   16bfc:	00f987b3          	add	a5,s3,a5
   16c00:	0087b403          	ld	s0,8(a5) # 2008 <exit-0xe0e0>
   16c04:	ff078713          	add	a4,a5,-16
   16c08:	32e40c63          	beq	s0,a4,16f40 <_malloc_r+0x3a4>
   16c0c:	00843783          	ld	a5,8(s0)
   16c10:	01843683          	ld	a3,24(s0)
   16c14:	01043603          	ld	a2,16(s0)
   16c18:	ffc7f793          	and	a5,a5,-4
   16c1c:	00f407b3          	add	a5,s0,a5
   16c20:	0087b703          	ld	a4,8(a5)
   16c24:	00d63c23          	sd	a3,24(a2)
   16c28:	00c6b823          	sd	a2,16(a3)
   16c2c:	00176713          	or	a4,a4,1
   16c30:	00090513          	mv	a0,s2
   16c34:	00e7b423          	sd	a4,8(a5)
   16c38:	01d000ef          	jal	17454 <__malloc_unlock>
   16c3c:	01040513          	add	a0,s0,16
   16c40:	05813083          	ld	ra,88(sp)
   16c44:	05013403          	ld	s0,80(sp)
   16c48:	04813483          	ld	s1,72(sp)
   16c4c:	04013903          	ld	s2,64(sp)
   16c50:	03813983          	ld	s3,56(sp)
   16c54:	03013a03          	ld	s4,48(sp)
   16c58:	02813a83          	ld	s5,40(sp)
   16c5c:	02013b03          	ld	s6,32(sp)
   16c60:	01813b83          	ld	s7,24(sp)
   16c64:	01013c03          	ld	s8,16(sp)
   16c68:	00813c83          	ld	s9,8(sp)
   16c6c:	06010113          	add	sp,sp,96
   16c70:	00008067          	ret
   16c74:	800007b7          	lui	a5,0x80000
   16c78:	ff04f493          	and	s1,s1,-16
   16c7c:	fff7c793          	not	a5,a5
   16c80:	1a97e063          	bltu	a5,s1,16e20 <_malloc_r+0x284>
   16c84:	18b4ee63          	bltu	s1,a1,16e20 <_malloc_r+0x284>
   16c88:	7c8000ef          	jal	17450 <__malloc_lock>
   16c8c:	1f700793          	li	a5,503
   16c90:	4097f463          	bgeu	a5,s1,17098 <_malloc_r+0x4fc>
   16c94:	0094d793          	srl	a5,s1,0x9
   16c98:	18078c63          	beqz	a5,16e30 <_malloc_r+0x294>
   16c9c:	00400713          	li	a4,4
   16ca0:	30f76a63          	bltu	a4,a5,16fb4 <_malloc_r+0x418>
   16ca4:	0064d793          	srl	a5,s1,0x6
   16ca8:	0397861b          	addw	a2,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffdb219>
   16cac:	0016169b          	sllw	a3,a2,0x1
   16cb0:	0387851b          	addw	a0,a5,56
   16cb4:	00369693          	sll	a3,a3,0x3
   16cb8:	0000d997          	auipc	s3,0xd
   16cbc:	6c098993          	add	s3,s3,1728 # 24378 <__malloc_av_>
   16cc0:	00d986b3          	add	a3,s3,a3
   16cc4:	0086b403          	ld	s0,8(a3)
   16cc8:	ff068693          	add	a3,a3,-16
   16ccc:	02868663          	beq	a3,s0,16cf8 <_malloc_r+0x15c>
   16cd0:	01f00593          	li	a1,31
   16cd4:	0100006f          	j	16ce4 <_malloc_r+0x148>
   16cd8:	24075e63          	bgez	a4,16f34 <_malloc_r+0x398>
   16cdc:	01843403          	ld	s0,24(s0)
   16ce0:	00868c63          	beq	a3,s0,16cf8 <_malloc_r+0x15c>
   16ce4:	00843783          	ld	a5,8(s0)
   16ce8:	ffc7f793          	and	a5,a5,-4
   16cec:	40978733          	sub	a4,a5,s1
   16cf0:	fee5d4e3          	bge	a1,a4,16cd8 <_malloc_r+0x13c>
   16cf4:	00050613          	mv	a2,a0
   16cf8:	0209b403          	ld	s0,32(s3)
   16cfc:	0000d897          	auipc	a7,0xd
   16d00:	68c88893          	add	a7,a7,1676 # 24388 <__malloc_av_+0x10>
   16d04:	23140463          	beq	s0,a7,16f2c <_malloc_r+0x390>
   16d08:	00843783          	ld	a5,8(s0)
   16d0c:	01f00693          	li	a3,31
   16d10:	ffc7f793          	and	a5,a5,-4
   16d14:	40978733          	sub	a4,a5,s1
   16d18:	34e6c263          	blt	a3,a4,1705c <_malloc_r+0x4c0>
   16d1c:	0319b423          	sd	a7,40(s3)
   16d20:	0319b023          	sd	a7,32(s3)
   16d24:	30075c63          	bgez	a4,1703c <_malloc_r+0x4a0>
   16d28:	1ff00713          	li	a4,511
   16d2c:	0089b503          	ld	a0,8(s3)
   16d30:	22f76063          	bltu	a4,a5,16f50 <_malloc_r+0x3b4>
   16d34:	0037d793          	srl	a5,a5,0x3
   16d38:	0017871b          	addw	a4,a5,1
   16d3c:	0017171b          	sllw	a4,a4,0x1
   16d40:	00371713          	sll	a4,a4,0x3
   16d44:	00e98733          	add	a4,s3,a4
   16d48:	00073583          	ld	a1,0(a4) # 2000 <exit-0xe0e8>
   16d4c:	4027d79b          	sraw	a5,a5,0x2
   16d50:	00100693          	li	a3,1
   16d54:	00f697b3          	sll	a5,a3,a5
   16d58:	00f56533          	or	a0,a0,a5
   16d5c:	ff070793          	add	a5,a4,-16
   16d60:	00f43c23          	sd	a5,24(s0)
   16d64:	00b43823          	sd	a1,16(s0)
   16d68:	00a9b423          	sd	a0,8(s3)
   16d6c:	00873023          	sd	s0,0(a4)
   16d70:	0085bc23          	sd	s0,24(a1)
   16d74:	4026579b          	sraw	a5,a2,0x2
   16d78:	00100593          	li	a1,1
   16d7c:	00f595b3          	sll	a1,a1,a5
   16d80:	0cb56063          	bltu	a0,a1,16e40 <_malloc_r+0x2a4>
   16d84:	00a5f7b3          	and	a5,a1,a0
   16d88:	02079463          	bnez	a5,16db0 <_malloc_r+0x214>
   16d8c:	00159593          	sll	a1,a1,0x1
   16d90:	ffc67613          	and	a2,a2,-4
   16d94:	00a5f7b3          	and	a5,a1,a0
   16d98:	0046061b          	addw	a2,a2,4
   16d9c:	00079a63          	bnez	a5,16db0 <_malloc_r+0x214>
   16da0:	00159593          	sll	a1,a1,0x1
   16da4:	00a5f7b3          	and	a5,a1,a0
   16da8:	0046061b          	addw	a2,a2,4
   16dac:	fe078ae3          	beqz	a5,16da0 <_malloc_r+0x204>
   16db0:	01f00813          	li	a6,31
   16db4:	0016031b          	addw	t1,a2,1
   16db8:	0013131b          	sllw	t1,t1,0x1
   16dbc:	00331313          	sll	t1,t1,0x3
   16dc0:	ff030313          	add	t1,t1,-16
   16dc4:	00698333          	add	t1,s3,t1
   16dc8:	00030513          	mv	a0,t1
   16dcc:	01853783          	ld	a5,24(a0)
   16dd0:	00060e13          	mv	t3,a2
   16dd4:	20f50463          	beq	a0,a5,16fdc <_malloc_r+0x440>
   16dd8:	0087b703          	ld	a4,8(a5)
   16ddc:	00078413          	mv	s0,a5
   16de0:	0187b783          	ld	a5,24(a5)
   16de4:	ffc77713          	and	a4,a4,-4
   16de8:	409706b3          	sub	a3,a4,s1
   16dec:	20d84463          	blt	a6,a3,16ff4 <_malloc_r+0x458>
   16df0:	fe06c2e3          	bltz	a3,16dd4 <_malloc_r+0x238>
   16df4:	00e40733          	add	a4,s0,a4
   16df8:	00873683          	ld	a3,8(a4)
   16dfc:	01043603          	ld	a2,16(s0)
   16e00:	00090513          	mv	a0,s2
   16e04:	0016e693          	or	a3,a3,1
   16e08:	00d73423          	sd	a3,8(a4)
   16e0c:	00f63c23          	sd	a5,24(a2)
   16e10:	00c7b823          	sd	a2,16(a5)
   16e14:	640000ef          	jal	17454 <__malloc_unlock>
   16e18:	01040513          	add	a0,s0,16
   16e1c:	e25ff06f          	j	16c40 <_malloc_r+0xa4>
   16e20:	00c00793          	li	a5,12
   16e24:	00f92023          	sw	a5,0(s2)
   16e28:	00000513          	li	a0,0
   16e2c:	e15ff06f          	j	16c40 <_malloc_r+0xa4>
   16e30:	40000693          	li	a3,1024
   16e34:	04000613          	li	a2,64
   16e38:	03f00513          	li	a0,63
   16e3c:	e7dff06f          	j	16cb8 <_malloc_r+0x11c>
   16e40:	0109b403          	ld	s0,16(s3)
   16e44:	00843783          	ld	a5,8(s0)
   16e48:	ffc7fa93          	and	s5,a5,-4
   16e4c:	009ae863          	bltu	s5,s1,16e5c <_malloc_r+0x2c0>
   16e50:	409a8733          	sub	a4,s5,s1
   16e54:	01f00793          	li	a5,31
   16e58:	0ae7c663          	blt	a5,a4,16f04 <_malloc_r+0x368>
   16e5c:	76018c93          	add	s9,gp,1888 # 24d80 <__malloc_sbrk_base>
   16e60:	000cb703          	ld	a4,0(s9) # 1000 <exit-0xf0e8>
   16e64:	7801ba03          	ld	s4,1920(gp) # 24da0 <__malloc_top_pad>
   16e68:	fff00793          	li	a5,-1
   16e6c:	01540bb3          	add	s7,s0,s5
   16e70:	01448a33          	add	s4,s1,s4
   16e74:	3cf70c63          	beq	a4,a5,1724c <_malloc_r+0x6b0>
   16e78:	000017b7          	lui	a5,0x1
   16e7c:	01f78793          	add	a5,a5,31 # 101f <exit-0xf0c9>
   16e80:	00fa0a33          	add	s4,s4,a5
   16e84:	fffff7b7          	lui	a5,0xfffff
   16e88:	00fa7a33          	and	s4,s4,a5
   16e8c:	000a0593          	mv	a1,s4
   16e90:	00090513          	mv	a0,s2
   16e94:	0e1010ef          	jal	18774 <_sbrk_r>
   16e98:	fff00793          	li	a5,-1
   16e9c:	00050b13          	mv	s6,a0
   16ea0:	22f50663          	beq	a0,a5,170cc <_malloc_r+0x530>
   16ea4:	23756263          	bltu	a0,s7,170c8 <_malloc_r+0x52c>
   16ea8:	0000ec17          	auipc	s8,0xe
   16eac:	f50c0c13          	add	s8,s8,-176 # 24df8 <__malloc_current_mallinfo>
   16eb0:	000c2783          	lw	a5,0(s8)
   16eb4:	0147873b          	addw	a4,a5,s4
   16eb8:	00ec2023          	sw	a4,0(s8)
   16ebc:	00070693          	mv	a3,a4
   16ec0:	2aab9a63          	bne	s7,a0,17174 <_malloc_r+0x5d8>
   16ec4:	03451793          	sll	a5,a0,0x34
   16ec8:	2a079663          	bnez	a5,17174 <_malloc_r+0x5d8>
   16ecc:	0109bb03          	ld	s6,16(s3)
   16ed0:	014a87b3          	add	a5,s5,s4
   16ed4:	0017e793          	or	a5,a5,1
   16ed8:	00fb3423          	sd	a5,8(s6)
   16edc:	77818693          	add	a3,gp,1912 # 24d98 <__malloc_max_sbrked_mem>
   16ee0:	0006b603          	ld	a2,0(a3)
   16ee4:	00e67463          	bgeu	a2,a4,16eec <_malloc_r+0x350>
   16ee8:	00e6b023          	sd	a4,0(a3)
   16eec:	77018693          	add	a3,gp,1904 # 24d90 <__malloc_max_total_mem>
   16ef0:	0006b603          	ld	a2,0(a3)
   16ef4:	00e67463          	bgeu	a2,a4,16efc <_malloc_r+0x360>
   16ef8:	00e6b023          	sd	a4,0(a3)
   16efc:	000b0413          	mv	s0,s6
   16f00:	1d40006f          	j	170d4 <_malloc_r+0x538>
   16f04:	0014e793          	or	a5,s1,1
   16f08:	00f43423          	sd	a5,8(s0)
   16f0c:	009404b3          	add	s1,s0,s1
   16f10:	0099b823          	sd	s1,16(s3)
   16f14:	00176713          	or	a4,a4,1
   16f18:	00090513          	mv	a0,s2
   16f1c:	00e4b423          	sd	a4,8(s1)
   16f20:	534000ef          	jal	17454 <__malloc_unlock>
   16f24:	01040513          	add	a0,s0,16
   16f28:	d19ff06f          	j	16c40 <_malloc_r+0xa4>
   16f2c:	0089b503          	ld	a0,8(s3)
   16f30:	e45ff06f          	j	16d74 <_malloc_r+0x1d8>
   16f34:	01843683          	ld	a3,24(s0)
   16f38:	01043603          	ld	a2,16(s0)
   16f3c:	ce1ff06f          	j	16c1c <_malloc_r+0x80>
   16f40:	0187b403          	ld	s0,24(a5) # fffffffffffff018 <__BSS_END__+0xfffffffffffda1f8>
   16f44:	0026061b          	addw	a2,a2,2
   16f48:	da8788e3          	beq	a5,s0,16cf8 <_malloc_r+0x15c>
   16f4c:	cc1ff06f          	j	16c0c <_malloc_r+0x70>
   16f50:	0097d713          	srl	a4,a5,0x9
   16f54:	00400693          	li	a3,4
   16f58:	14e6fc63          	bgeu	a3,a4,170b0 <_malloc_r+0x514>
   16f5c:	01400693          	li	a3,20
   16f60:	32e6ec63          	bltu	a3,a4,17298 <_malloc_r+0x6fc>
   16f64:	05c7059b          	addw	a1,a4,92
   16f68:	0015959b          	sllw	a1,a1,0x1
   16f6c:	05b7069b          	addw	a3,a4,91
   16f70:	00359593          	sll	a1,a1,0x3
   16f74:	00b985b3          	add	a1,s3,a1
   16f78:	0005b703          	ld	a4,0(a1)
   16f7c:	ff058593          	add	a1,a1,-16
   16f80:	00e59863          	bne	a1,a4,16f90 <_malloc_r+0x3f4>
   16f84:	2d00006f          	j	17254 <_malloc_r+0x6b8>
   16f88:	01073703          	ld	a4,16(a4)
   16f8c:	00e58863          	beq	a1,a4,16f9c <_malloc_r+0x400>
   16f90:	00873683          	ld	a3,8(a4)
   16f94:	ffc6f693          	and	a3,a3,-4
   16f98:	fed7e8e3          	bltu	a5,a3,16f88 <_malloc_r+0x3ec>
   16f9c:	01873583          	ld	a1,24(a4)
   16fa0:	00b43c23          	sd	a1,24(s0)
   16fa4:	00e43823          	sd	a4,16(s0)
   16fa8:	0085b823          	sd	s0,16(a1)
   16fac:	00873c23          	sd	s0,24(a4)
   16fb0:	dc5ff06f          	j	16d74 <_malloc_r+0x1d8>
   16fb4:	01400713          	li	a4,20
   16fb8:	14f77063          	bgeu	a4,a5,170f8 <_malloc_r+0x55c>
   16fbc:	05400713          	li	a4,84
   16fc0:	2ef76c63          	bltu	a4,a5,172b8 <_malloc_r+0x71c>
   16fc4:	00c4d793          	srl	a5,s1,0xc
   16fc8:	06f7861b          	addw	a2,a5,111
   16fcc:	0016169b          	sllw	a3,a2,0x1
   16fd0:	06e7851b          	addw	a0,a5,110
   16fd4:	00369693          	sll	a3,a3,0x3
   16fd8:	ce1ff06f          	j	16cb8 <_malloc_r+0x11c>
   16fdc:	001e0e1b          	addw	t3,t3,1
   16fe0:	003e7793          	and	a5,t3,3
   16fe4:	01050513          	add	a0,a0,16
   16fe8:	12078863          	beqz	a5,17118 <_malloc_r+0x57c>
   16fec:	01853783          	ld	a5,24(a0)
   16ff0:	de5ff06f          	j	16dd4 <_malloc_r+0x238>
   16ff4:	01043603          	ld	a2,16(s0)
   16ff8:	0014e593          	or	a1,s1,1
   16ffc:	00b43423          	sd	a1,8(s0)
   17000:	00f63c23          	sd	a5,24(a2)
   17004:	00c7b823          	sd	a2,16(a5)
   17008:	009404b3          	add	s1,s0,s1
   1700c:	0299b423          	sd	s1,40(s3)
   17010:	0299b023          	sd	s1,32(s3)
   17014:	0016e793          	or	a5,a3,1
   17018:	0114bc23          	sd	a7,24(s1)
   1701c:	0114b823          	sd	a7,16(s1)
   17020:	00f4b423          	sd	a5,8(s1)
   17024:	00e40733          	add	a4,s0,a4
   17028:	00090513          	mv	a0,s2
   1702c:	00d73023          	sd	a3,0(a4)
   17030:	424000ef          	jal	17454 <__malloc_unlock>
   17034:	01040513          	add	a0,s0,16
   17038:	c09ff06f          	j	16c40 <_malloc_r+0xa4>
   1703c:	00f407b3          	add	a5,s0,a5
   17040:	0087b703          	ld	a4,8(a5)
   17044:	00090513          	mv	a0,s2
   17048:	00176713          	or	a4,a4,1
   1704c:	00e7b423          	sd	a4,8(a5)
   17050:	404000ef          	jal	17454 <__malloc_unlock>
   17054:	01040513          	add	a0,s0,16
   17058:	be9ff06f          	j	16c40 <_malloc_r+0xa4>
   1705c:	0014e693          	or	a3,s1,1
   17060:	00d43423          	sd	a3,8(s0)
   17064:	009404b3          	add	s1,s0,s1
   17068:	0299b423          	sd	s1,40(s3)
   1706c:	0299b023          	sd	s1,32(s3)
   17070:	00176693          	or	a3,a4,1
   17074:	0114bc23          	sd	a7,24(s1)
   17078:	0114b823          	sd	a7,16(s1)
   1707c:	00d4b423          	sd	a3,8(s1)
   17080:	00f407b3          	add	a5,s0,a5
   17084:	00090513          	mv	a0,s2
   17088:	00e7b023          	sd	a4,0(a5)
   1708c:	3c8000ef          	jal	17454 <__malloc_unlock>
   17090:	01040513          	add	a0,s0,16
   17094:	badff06f          	j	16c40 <_malloc_r+0xa4>
   17098:	0034d613          	srl	a2,s1,0x3
   1709c:	0016079b          	addw	a5,a2,1
   170a0:	0017979b          	sllw	a5,a5,0x1
   170a4:	0006061b          	sext.w	a2,a2
   170a8:	00379793          	sll	a5,a5,0x3
   170ac:	b49ff06f          	j	16bf4 <_malloc_r+0x58>
   170b0:	0067d713          	srl	a4,a5,0x6
   170b4:	0397059b          	addw	a1,a4,57
   170b8:	0015959b          	sllw	a1,a1,0x1
   170bc:	0387069b          	addw	a3,a4,56
   170c0:	00359593          	sll	a1,a1,0x3
   170c4:	eb1ff06f          	j	16f74 <_malloc_r+0x3d8>
   170c8:	09340c63          	beq	s0,s3,17160 <_malloc_r+0x5c4>
   170cc:	0109b403          	ld	s0,16(s3)
   170d0:	00843783          	ld	a5,8(s0)
   170d4:	ffc7f793          	and	a5,a5,-4
   170d8:	40978733          	sub	a4,a5,s1
   170dc:	0097e663          	bltu	a5,s1,170e8 <_malloc_r+0x54c>
   170e0:	01f00793          	li	a5,31
   170e4:	e2e7c0e3          	blt	a5,a4,16f04 <_malloc_r+0x368>
   170e8:	00090513          	mv	a0,s2
   170ec:	368000ef          	jal	17454 <__malloc_unlock>
   170f0:	00000513          	li	a0,0
   170f4:	b4dff06f          	j	16c40 <_malloc_r+0xa4>
   170f8:	05c7861b          	addw	a2,a5,92
   170fc:	0016169b          	sllw	a3,a2,0x1
   17100:	05b7851b          	addw	a0,a5,91
   17104:	00369693          	sll	a3,a3,0x3
   17108:	bb1ff06f          	j	16cb8 <_malloc_r+0x11c>
   1710c:	01033783          	ld	a5,16(t1)
   17110:	fff6061b          	addw	a2,a2,-1
   17114:	26679463          	bne	a5,t1,1737c <_malloc_r+0x7e0>
   17118:	00367793          	and	a5,a2,3
   1711c:	ff030313          	add	t1,t1,-16
   17120:	fe0796e3          	bnez	a5,1710c <_malloc_r+0x570>
   17124:	0089b703          	ld	a4,8(s3)
   17128:	fff5c793          	not	a5,a1
   1712c:	00e7f7b3          	and	a5,a5,a4
   17130:	00f9b423          	sd	a5,8(s3)
   17134:	00159593          	sll	a1,a1,0x1
   17138:	d0b7e4e3          	bltu	a5,a1,16e40 <_malloc_r+0x2a4>
   1713c:	d00582e3          	beqz	a1,16e40 <_malloc_r+0x2a4>
   17140:	00f5f733          	and	a4,a1,a5
   17144:	00071a63          	bnez	a4,17158 <_malloc_r+0x5bc>
   17148:	00159593          	sll	a1,a1,0x1
   1714c:	00f5f733          	and	a4,a1,a5
   17150:	004e0e1b          	addw	t3,t3,4
   17154:	fe070ae3          	beqz	a4,17148 <_malloc_r+0x5ac>
   17158:	000e0613          	mv	a2,t3
   1715c:	c59ff06f          	j	16db4 <_malloc_r+0x218>
   17160:	0000ec17          	auipc	s8,0xe
   17164:	c98c0c13          	add	s8,s8,-872 # 24df8 <__malloc_current_mallinfo>
   17168:	000c2783          	lw	a5,0(s8)
   1716c:	014786bb          	addw	a3,a5,s4
   17170:	00dc2023          	sw	a3,0(s8)
   17174:	000cb703          	ld	a4,0(s9)
   17178:	fff00793          	li	a5,-1
   1717c:	14f70e63          	beq	a4,a5,172d8 <_malloc_r+0x73c>
   17180:	417b07b3          	sub	a5,s6,s7
   17184:	00d787bb          	addw	a5,a5,a3
   17188:	00fc2023          	sw	a5,0(s8)
   1718c:	00fb7c93          	and	s9,s6,15
   17190:	0c0c8e63          	beqz	s9,1726c <_malloc_r+0x6d0>
   17194:	00001737          	lui	a4,0x1
   17198:	419b0b33          	sub	s6,s6,s9
   1719c:	01070b93          	add	s7,a4,16 # 1010 <exit-0xf0d8>
   171a0:	010b0b13          	add	s6,s6,16
   171a4:	419b8bb3          	sub	s7,s7,s9
   171a8:	014b0a33          	add	s4,s6,s4
   171ac:	fff70713          	add	a4,a4,-1
   171b0:	414b8bb3          	sub	s7,s7,s4
   171b4:	00ebfbb3          	and	s7,s7,a4
   171b8:	000b8593          	mv	a1,s7
   171bc:	00090513          	mv	a0,s2
   171c0:	5b4010ef          	jal	18774 <_sbrk_r>
   171c4:	fff00793          	li	a5,-1
   171c8:	16f50263          	beq	a0,a5,1732c <_malloc_r+0x790>
   171cc:	41650533          	sub	a0,a0,s6
   171d0:	000b869b          	sext.w	a3,s7
   171d4:	01750a33          	add	s4,a0,s7
   171d8:	000c2703          	lw	a4,0(s8)
   171dc:	0169b823          	sd	s6,16(s3)
   171e0:	001a6793          	or	a5,s4,1
   171e4:	00d7073b          	addw	a4,a4,a3
   171e8:	00ec2023          	sw	a4,0(s8)
   171ec:	00fb3423          	sd	a5,8(s6)
   171f0:	cf3406e3          	beq	s0,s3,16edc <_malloc_r+0x340>
   171f4:	01f00613          	li	a2,31
   171f8:	0f567463          	bgeu	a2,s5,172e0 <_malloc_r+0x744>
   171fc:	00843683          	ld	a3,8(s0)
   17200:	fe8a8793          	add	a5,s5,-24
   17204:	ff07f793          	and	a5,a5,-16
   17208:	0016f693          	and	a3,a3,1
   1720c:	00f6e6b3          	or	a3,a3,a5
   17210:	00d43423          	sd	a3,8(s0)
   17214:	00900593          	li	a1,9
   17218:	00f406b3          	add	a3,s0,a5
   1721c:	00b6b423          	sd	a1,8(a3)
   17220:	00b6b823          	sd	a1,16(a3)
   17224:	00f66663          	bltu	a2,a5,17230 <_malloc_r+0x694>
   17228:	008b3783          	ld	a5,8(s6)
   1722c:	cb1ff06f          	j	16edc <_malloc_r+0x340>
   17230:	01040593          	add	a1,s0,16
   17234:	00090513          	mv	a0,s2
   17238:	de4fc0ef          	jal	1381c <_free_r>
   1723c:	0109bb03          	ld	s6,16(s3)
   17240:	000c2703          	lw	a4,0(s8)
   17244:	008b3783          	ld	a5,8(s6)
   17248:	c95ff06f          	j	16edc <_malloc_r+0x340>
   1724c:	020a0a13          	add	s4,s4,32
   17250:	c3dff06f          	j	16e8c <_malloc_r+0x2f0>
   17254:	4026d69b          	sraw	a3,a3,0x2
   17258:	00100793          	li	a5,1
   1725c:	00d797b3          	sll	a5,a5,a3
   17260:	00f56533          	or	a0,a0,a5
   17264:	00a9b423          	sd	a0,8(s3)
   17268:	d39ff06f          	j	16fa0 <_malloc_r+0x404>
   1726c:	014b0bb3          	add	s7,s6,s4
   17270:	41700bb3          	neg	s7,s7
   17274:	034b9b93          	sll	s7,s7,0x34
   17278:	034bdb93          	srl	s7,s7,0x34
   1727c:	000b8593          	mv	a1,s7
   17280:	00090513          	mv	a0,s2
   17284:	4f0010ef          	jal	18774 <_sbrk_r>
   17288:	fff00793          	li	a5,-1
   1728c:	00000693          	li	a3,0
   17290:	f2f51ee3          	bne	a0,a5,171cc <_malloc_r+0x630>
   17294:	f45ff06f          	j	171d8 <_malloc_r+0x63c>
   17298:	05400693          	li	a3,84
   1729c:	04e6e863          	bltu	a3,a4,172ec <_malloc_r+0x750>
   172a0:	00c7d713          	srl	a4,a5,0xc
   172a4:	06f7059b          	addw	a1,a4,111
   172a8:	0015959b          	sllw	a1,a1,0x1
   172ac:	06e7069b          	addw	a3,a4,110
   172b0:	00359593          	sll	a1,a1,0x3
   172b4:	cc1ff06f          	j	16f74 <_malloc_r+0x3d8>
   172b8:	15400713          	li	a4,340
   172bc:	04f76863          	bltu	a4,a5,1730c <_malloc_r+0x770>
   172c0:	00f4d793          	srl	a5,s1,0xf
   172c4:	0787861b          	addw	a2,a5,120
   172c8:	0016169b          	sllw	a3,a2,0x1
   172cc:	0777851b          	addw	a0,a5,119
   172d0:	00369693          	sll	a3,a3,0x3
   172d4:	9e5ff06f          	j	16cb8 <_malloc_r+0x11c>
   172d8:	016cb023          	sd	s6,0(s9)
   172dc:	eb1ff06f          	j	1718c <_malloc_r+0x5f0>
   172e0:	00100793          	li	a5,1
   172e4:	00fb3423          	sd	a5,8(s6)
   172e8:	e01ff06f          	j	170e8 <_malloc_r+0x54c>
   172ec:	15400693          	li	a3,340
   172f0:	04e6e863          	bltu	a3,a4,17340 <_malloc_r+0x7a4>
   172f4:	00f7d713          	srl	a4,a5,0xf
   172f8:	0787059b          	addw	a1,a4,120
   172fc:	0015959b          	sllw	a1,a1,0x1
   17300:	0777069b          	addw	a3,a4,119
   17304:	00359593          	sll	a1,a1,0x3
   17308:	c6dff06f          	j	16f74 <_malloc_r+0x3d8>
   1730c:	55400713          	li	a4,1364
   17310:	04f76863          	bltu	a4,a5,17360 <_malloc_r+0x7c4>
   17314:	0124d793          	srl	a5,s1,0x12
   17318:	07d7861b          	addw	a2,a5,125
   1731c:	0016169b          	sllw	a3,a2,0x1
   17320:	07c7851b          	addw	a0,a5,124
   17324:	00369693          	sll	a3,a3,0x3
   17328:	991ff06f          	j	16cb8 <_malloc_r+0x11c>
   1732c:	ff0c8c93          	add	s9,s9,-16
   17330:	019a0a33          	add	s4,s4,s9
   17334:	416a0a33          	sub	s4,s4,s6
   17338:	00000693          	li	a3,0
   1733c:	e9dff06f          	j	171d8 <_malloc_r+0x63c>
   17340:	55400693          	li	a3,1364
   17344:	02e6e663          	bltu	a3,a4,17370 <_malloc_r+0x7d4>
   17348:	0127d713          	srl	a4,a5,0x12
   1734c:	07d7059b          	addw	a1,a4,125
   17350:	0015959b          	sllw	a1,a1,0x1
   17354:	07c7069b          	addw	a3,a4,124
   17358:	00359593          	sll	a1,a1,0x3
   1735c:	c19ff06f          	j	16f74 <_malloc_r+0x3d8>
   17360:	7f000693          	li	a3,2032
   17364:	07f00613          	li	a2,127
   17368:	07e00513          	li	a0,126
   1736c:	94dff06f          	j	16cb8 <_malloc_r+0x11c>
   17370:	7f000593          	li	a1,2032
   17374:	07e00693          	li	a3,126
   17378:	bfdff06f          	j	16f74 <_malloc_r+0x3d8>
   1737c:	0089b783          	ld	a5,8(s3)
   17380:	db5ff06f          	j	17134 <_malloc_r+0x598>

0000000000017384 <memchr>:
   17384:	00757793          	and	a5,a0,7
   17388:	0ff5f693          	zext.b	a3,a1
   1738c:	02078e63          	beqz	a5,173c8 <memchr+0x44>
   17390:	fff60793          	add	a5,a2,-1
   17394:	02060663          	beqz	a2,173c0 <memchr+0x3c>
   17398:	fff00613          	li	a2,-1
   1739c:	0180006f          	j	173b4 <memchr+0x30>
   173a0:	00150513          	add	a0,a0,1
   173a4:	00757713          	and	a4,a0,7
   173a8:	02070263          	beqz	a4,173cc <memchr+0x48>
   173ac:	fff78793          	add	a5,a5,-1
   173b0:	00c78863          	beq	a5,a2,173c0 <memchr+0x3c>
   173b4:	00054703          	lbu	a4,0(a0)
   173b8:	fed714e3          	bne	a4,a3,173a0 <memchr+0x1c>
   173bc:	00008067          	ret
   173c0:	00000513          	li	a0,0
   173c4:	00008067          	ret
   173c8:	00060793          	mv	a5,a2
   173cc:	00700713          	li	a4,7
   173d0:	06f77063          	bgeu	a4,a5,17430 <memchr+0xac>
   173d4:	0ff5f593          	zext.b	a1,a1
   173d8:	00859713          	sll	a4,a1,0x8
   173dc:	00b70733          	add	a4,a4,a1
   173e0:	01071593          	sll	a1,a4,0x10
   173e4:	00e585b3          	add	a1,a1,a4
   173e8:	02059713          	sll	a4,a1,0x20
   173ec:	00e585b3          	add	a1,a1,a4
   173f0:	0000e897          	auipc	a7,0xe
   173f4:	9408b883          	ld	a7,-1728(a7) # 24d30 <__SDATA_BEGIN__>
   173f8:	0000e817          	auipc	a6,0xe
   173fc:	94083803          	ld	a6,-1728(a6) # 24d38 <__SDATA_BEGIN__+0x8>
   17400:	00700313          	li	t1,7
   17404:	0100006f          	j	17414 <memchr+0x90>
   17408:	ff878793          	add	a5,a5,-8
   1740c:	00850513          	add	a0,a0,8
   17410:	02f37063          	bgeu	t1,a5,17430 <memchr+0xac>
   17414:	00053703          	ld	a4,0(a0)
   17418:	00e5c733          	xor	a4,a1,a4
   1741c:	01170633          	add	a2,a4,a7
   17420:	fff74713          	not	a4,a4
   17424:	00e67733          	and	a4,a2,a4
   17428:	01077733          	and	a4,a4,a6
   1742c:	fc070ee3          	beqz	a4,17408 <memchr+0x84>
   17430:	00f50733          	add	a4,a0,a5
   17434:	00079863          	bnez	a5,17444 <memchr+0xc0>
   17438:	f89ff06f          	j	173c0 <memchr+0x3c>
   1743c:	00150513          	add	a0,a0,1
   17440:	f8a700e3          	beq	a4,a0,173c0 <memchr+0x3c>
   17444:	00054783          	lbu	a5,0(a0)
   17448:	fed79ae3          	bne	a5,a3,1743c <memchr+0xb8>
   1744c:	00008067          	ret

0000000000017450 <__malloc_lock>:
   17450:	00008067          	ret

0000000000017454 <__malloc_unlock>:
   17454:	00008067          	ret

0000000000017458 <_Balloc>:
   17458:	07853783          	ld	a5,120(a0)
   1745c:	fe010113          	add	sp,sp,-32
   17460:	00813823          	sd	s0,16(sp)
   17464:	00913423          	sd	s1,8(sp)
   17468:	00113c23          	sd	ra,24(sp)
   1746c:	00050493          	mv	s1,a0
   17470:	00058413          	mv	s0,a1
   17474:	02078a63          	beqz	a5,174a8 <_Balloc+0x50>
   17478:	00341713          	sll	a4,s0,0x3
   1747c:	00e787b3          	add	a5,a5,a4
   17480:	0007b503          	ld	a0,0(a5)
   17484:	04050263          	beqz	a0,174c8 <_Balloc+0x70>
   17488:	00053703          	ld	a4,0(a0)
   1748c:	00e7b023          	sd	a4,0(a5)
   17490:	00053823          	sd	zero,16(a0)
   17494:	01813083          	ld	ra,24(sp)
   17498:	01013403          	ld	s0,16(sp)
   1749c:	00813483          	ld	s1,8(sp)
   174a0:	02010113          	add	sp,sp,32
   174a4:	00008067          	ret
   174a8:	04100613          	li	a2,65
   174ac:	00800593          	li	a1,8
   174b0:	4bc050ef          	jal	1c96c <_calloc_r>
   174b4:	06a4bc23          	sd	a0,120(s1)
   174b8:	00050793          	mv	a5,a0
   174bc:	fa051ee3          	bnez	a0,17478 <_Balloc+0x20>
   174c0:	00000513          	li	a0,0
   174c4:	fd1ff06f          	j	17494 <_Balloc+0x3c>
   174c8:	00100793          	li	a5,1
   174cc:	008797bb          	sllw	a5,a5,s0
   174d0:	0007861b          	sext.w	a2,a5
   174d4:	00760613          	add	a2,a2,7
   174d8:	02041413          	sll	s0,s0,0x20
   174dc:	02079793          	sll	a5,a5,0x20
   174e0:	02045413          	srl	s0,s0,0x20
   174e4:	00261613          	sll	a2,a2,0x2
   174e8:	00100593          	li	a1,1
   174ec:	00048513          	mv	a0,s1
   174f0:	00f46433          	or	s0,s0,a5
   174f4:	478050ef          	jal	1c96c <_calloc_r>
   174f8:	fc0504e3          	beqz	a0,174c0 <_Balloc+0x68>
   174fc:	00853423          	sd	s0,8(a0)
   17500:	f91ff06f          	j	17490 <_Balloc+0x38>

0000000000017504 <_Bfree>:
   17504:	02058063          	beqz	a1,17524 <_Bfree+0x20>
   17508:	0085a703          	lw	a4,8(a1)
   1750c:	07853783          	ld	a5,120(a0)
   17510:	00371713          	sll	a4,a4,0x3
   17514:	00e787b3          	add	a5,a5,a4
   17518:	0007b703          	ld	a4,0(a5)
   1751c:	00e5b023          	sd	a4,0(a1)
   17520:	00b7b023          	sd	a1,0(a5)
   17524:	00008067          	ret

0000000000017528 <__multadd>:
   17528:	fd010113          	add	sp,sp,-48
   1752c:	02813023          	sd	s0,32(sp)
   17530:	0145a403          	lw	s0,20(a1)
   17534:	00010337          	lui	t1,0x10
   17538:	01213823          	sd	s2,16(sp)
   1753c:	01313423          	sd	s3,8(sp)
   17540:	02113423          	sd	ra,40(sp)
   17544:	00913c23          	sd	s1,24(sp)
   17548:	01413023          	sd	s4,0(sp)
   1754c:	00058913          	mv	s2,a1
   17550:	00050993          	mv	s3,a0
   17554:	01858813          	add	a6,a1,24
   17558:	00000893          	li	a7,0
   1755c:	fff30313          	add	t1,t1,-1 # ffff <exit-0xe9>
   17560:	00082783          	lw	a5,0(a6)
   17564:	00480813          	add	a6,a6,4
   17568:	0018889b          	addw	a7,a7,1
   1756c:	0067f733          	and	a4,a5,t1
   17570:	02c7073b          	mulw	a4,a4,a2
   17574:	0107d79b          	srlw	a5,a5,0x10
   17578:	02c787bb          	mulw	a5,a5,a2
   1757c:	00d7073b          	addw	a4,a4,a3
   17580:	0107569b          	srlw	a3,a4,0x10
   17584:	00e37733          	and	a4,t1,a4
   17588:	00d787bb          	addw	a5,a5,a3
   1758c:	0107969b          	sllw	a3,a5,0x10
   17590:	00e6873b          	addw	a4,a3,a4
   17594:	fee82e23          	sw	a4,-4(a6)
   17598:	0107d49b          	srlw	s1,a5,0x10
   1759c:	0107d69b          	srlw	a3,a5,0x10
   175a0:	fc88c0e3          	blt	a7,s0,17560 <__multadd+0x38>
   175a4:	02068263          	beqz	a3,175c8 <__multadd+0xa0>
   175a8:	00c92783          	lw	a5,12(s2)
   175ac:	04f45063          	bge	s0,a5,175ec <__multadd+0xc4>
   175b0:	00440793          	add	a5,s0,4
   175b4:	00279793          	sll	a5,a5,0x2
   175b8:	00f907b3          	add	a5,s2,a5
   175bc:	0097a423          	sw	s1,8(a5)
   175c0:	0014041b          	addw	s0,s0,1
   175c4:	00892a23          	sw	s0,20(s2)
   175c8:	02813083          	ld	ra,40(sp)
   175cc:	02013403          	ld	s0,32(sp)
   175d0:	01813483          	ld	s1,24(sp)
   175d4:	00813983          	ld	s3,8(sp)
   175d8:	00013a03          	ld	s4,0(sp)
   175dc:	00090513          	mv	a0,s2
   175e0:	01013903          	ld	s2,16(sp)
   175e4:	03010113          	add	sp,sp,48
   175e8:	00008067          	ret
   175ec:	00892583          	lw	a1,8(s2)
   175f0:	00098513          	mv	a0,s3
   175f4:	0015859b          	addw	a1,a1,1
   175f8:	e61ff0ef          	jal	17458 <_Balloc>
   175fc:	00050a13          	mv	s4,a0
   17600:	04050c63          	beqz	a0,17658 <__multadd+0x130>
   17604:	01492603          	lw	a2,20(s2)
   17608:	01090593          	add	a1,s2,16
   1760c:	01050513          	add	a0,a0,16
   17610:	00260613          	add	a2,a2,2
   17614:	00261613          	sll	a2,a2,0x2
   17618:	6e9050ef          	jal	1d500 <memcpy>
   1761c:	00892703          	lw	a4,8(s2)
   17620:	0789b783          	ld	a5,120(s3)
   17624:	00371713          	sll	a4,a4,0x3
   17628:	00e787b3          	add	a5,a5,a4
   1762c:	0007b703          	ld	a4,0(a5)
   17630:	00e93023          	sd	a4,0(s2)
   17634:	0127b023          	sd	s2,0(a5)
   17638:	00440793          	add	a5,s0,4
   1763c:	000a0913          	mv	s2,s4
   17640:	00279793          	sll	a5,a5,0x2
   17644:	00f907b3          	add	a5,s2,a5
   17648:	0097a423          	sw	s1,8(a5)
   1764c:	0014041b          	addw	s0,s0,1
   17650:	00892a23          	sw	s0,20(s2)
   17654:	f75ff06f          	j	175c8 <__multadd+0xa0>
   17658:	0000b697          	auipc	a3,0xb
   1765c:	9b868693          	add	a3,a3,-1608 # 22010 <blanks.1+0x70>
   17660:	00000613          	li	a2,0
   17664:	0b500593          	li	a1,181
   17668:	0000b517          	auipc	a0,0xb
   1766c:	c8850513          	add	a0,a0,-888 # 222f0 <ezero+0x18>
   17670:	294050ef          	jal	1c904 <__assert_func>

0000000000017674 <__s2b>:
   17674:	fc010113          	add	sp,sp,-64
   17678:	02813823          	sd	s0,48(sp)
   1767c:	02913423          	sd	s1,40(sp)
   17680:	03213023          	sd	s2,32(sp)
   17684:	01313c23          	sd	s3,24(sp)
   17688:	01413823          	sd	s4,16(sp)
   1768c:	00068493          	mv	s1,a3
   17690:	00058413          	mv	s0,a1
   17694:	0086869b          	addw	a3,a3,8
   17698:	00900593          	li	a1,9
   1769c:	02113c23          	sd	ra,56(sp)
   176a0:	01513423          	sd	s5,8(sp)
   176a4:	01613023          	sd	s6,0(sp)
   176a8:	00900793          	li	a5,9
   176ac:	02b6c6bb          	divw	a3,a3,a1
   176b0:	00050913          	mv	s2,a0
   176b4:	00060a13          	mv	s4,a2
   176b8:	00070993          	mv	s3,a4
   176bc:	0e97d863          	bge	a5,s1,177ac <__s2b+0x138>
   176c0:	00100793          	li	a5,1
   176c4:	00000593          	li	a1,0
   176c8:	0017979b          	sllw	a5,a5,0x1
   176cc:	0015859b          	addw	a1,a1,1
   176d0:	fed7cce3          	blt	a5,a3,176c8 <__s2b+0x54>
   176d4:	00090513          	mv	a0,s2
   176d8:	d81ff0ef          	jal	17458 <_Balloc>
   176dc:	00050593          	mv	a1,a0
   176e0:	0c050a63          	beqz	a0,177b4 <__s2b+0x140>
   176e4:	00100793          	li	a5,1
   176e8:	00f52a23          	sw	a5,20(a0)
   176ec:	01352c23          	sw	s3,24(a0)
   176f0:	00900793          	li	a5,9
   176f4:	0b47d663          	bge	a5,s4,177a0 <__s2b+0x12c>
   176f8:	020a1793          	sll	a5,s4,0x20
   176fc:	00940b13          	add	s6,s0,9
   17700:	0207d793          	srl	a5,a5,0x20
   17704:	000a0a9b          	sext.w	s5,s4
   17708:	00f40433          	add	s0,s0,a5
   1770c:	000b0993          	mv	s3,s6
   17710:	0009c683          	lbu	a3,0(s3)
   17714:	00a00613          	li	a2,10
   17718:	00090513          	mv	a0,s2
   1771c:	fd06869b          	addw	a3,a3,-48
   17720:	e09ff0ef          	jal	17528 <__multadd>
   17724:	00198993          	add	s3,s3,1
   17728:	00050593          	mv	a1,a0
   1772c:	fe8992e3          	bne	s3,s0,17710 <__s2b+0x9c>
   17730:	ff8a8a9b          	addw	s5,s5,-8
   17734:	020a9a93          	sll	s5,s5,0x20
   17738:	020ada93          	srl	s5,s5,0x20
   1773c:	015b0433          	add	s0,s6,s5
   17740:	029a5a63          	bge	s4,s1,17774 <__s2b+0x100>
   17744:	414484bb          	subw	s1,s1,s4
   17748:	02049493          	sll	s1,s1,0x20
   1774c:	0204d493          	srl	s1,s1,0x20
   17750:	009404b3          	add	s1,s0,s1
   17754:	00044683          	lbu	a3,0(s0)
   17758:	00a00613          	li	a2,10
   1775c:	00090513          	mv	a0,s2
   17760:	fd06869b          	addw	a3,a3,-48
   17764:	dc5ff0ef          	jal	17528 <__multadd>
   17768:	00140413          	add	s0,s0,1
   1776c:	00050593          	mv	a1,a0
   17770:	fe9412e3          	bne	s0,s1,17754 <__s2b+0xe0>
   17774:	03813083          	ld	ra,56(sp)
   17778:	03013403          	ld	s0,48(sp)
   1777c:	02813483          	ld	s1,40(sp)
   17780:	02013903          	ld	s2,32(sp)
   17784:	01813983          	ld	s3,24(sp)
   17788:	01013a03          	ld	s4,16(sp)
   1778c:	00813a83          	ld	s5,8(sp)
   17790:	00013b03          	ld	s6,0(sp)
   17794:	00058513          	mv	a0,a1
   17798:	04010113          	add	sp,sp,64
   1779c:	00008067          	ret
   177a0:	00a40413          	add	s0,s0,10
   177a4:	00900a13          	li	s4,9
   177a8:	f99ff06f          	j	17740 <__s2b+0xcc>
   177ac:	00000593          	li	a1,0
   177b0:	f25ff06f          	j	176d4 <__s2b+0x60>
   177b4:	0000b697          	auipc	a3,0xb
   177b8:	85c68693          	add	a3,a3,-1956 # 22010 <blanks.1+0x70>
   177bc:	00000613          	li	a2,0
   177c0:	0ce00593          	li	a1,206
   177c4:	0000b517          	auipc	a0,0xb
   177c8:	b2c50513          	add	a0,a0,-1236 # 222f0 <ezero+0x18>
   177cc:	138050ef          	jal	1c904 <__assert_func>

00000000000177d0 <__hi0bits>:
   177d0:	00050793          	mv	a5,a0
   177d4:	00010737          	lui	a4,0x10
   177d8:	00000513          	li	a0,0
   177dc:	00e7f663          	bgeu	a5,a4,177e8 <__hi0bits+0x18>
   177e0:	0107979b          	sllw	a5,a5,0x10
   177e4:	01000513          	li	a0,16
   177e8:	01000737          	lui	a4,0x1000
   177ec:	00e7f663          	bgeu	a5,a4,177f8 <__hi0bits+0x28>
   177f0:	0087979b          	sllw	a5,a5,0x8
   177f4:	0085051b          	addw	a0,a0,8
   177f8:	10000737          	lui	a4,0x10000
   177fc:	00e7f663          	bgeu	a5,a4,17808 <__hi0bits+0x38>
   17800:	0047979b          	sllw	a5,a5,0x4
   17804:	0045051b          	addw	a0,a0,4
   17808:	40000737          	lui	a4,0x40000
   1780c:	00e7e863          	bltu	a5,a4,1781c <__hi0bits+0x4c>
   17810:	0207c463          	bltz	a5,17838 <__hi0bits+0x68>
   17814:	0015051b          	addw	a0,a0,1
   17818:	00008067          	ret
   1781c:	0027979b          	sllw	a5,a5,0x2
   17820:	0007871b          	sext.w	a4,a5
   17824:	00074c63          	bltz	a4,1783c <__hi0bits+0x6c>
   17828:	40000737          	lui	a4,0x40000
   1782c:	00e7f7b3          	and	a5,a5,a4
   17830:	00079a63          	bnez	a5,17844 <__hi0bits+0x74>
   17834:	02000513          	li	a0,32
   17838:	00008067          	ret
   1783c:	0025051b          	addw	a0,a0,2
   17840:	00008067          	ret
   17844:	0035051b          	addw	a0,a0,3
   17848:	00008067          	ret

000000000001784c <__lo0bits>:
   1784c:	00052783          	lw	a5,0(a0)
   17850:	00050713          	mv	a4,a0
   17854:	0077f693          	and	a3,a5,7
   17858:	00078613          	mv	a2,a5
   1785c:	02068463          	beqz	a3,17884 <__lo0bits+0x38>
   17860:	0017f693          	and	a3,a5,1
   17864:	00000513          	li	a0,0
   17868:	04069e63          	bnez	a3,178c4 <__lo0bits+0x78>
   1786c:	00267613          	and	a2,a2,2
   17870:	0a060863          	beqz	a2,17920 <__lo0bits+0xd4>
   17874:	0017d79b          	srlw	a5,a5,0x1
   17878:	00f72023          	sw	a5,0(a4) # 40000000 <__BSS_END__+0x3ffdb1e0>
   1787c:	00100513          	li	a0,1
   17880:	00008067          	ret
   17884:	03079693          	sll	a3,a5,0x30
   17888:	0306d693          	srl	a3,a3,0x30
   1788c:	00000513          	li	a0,0
   17890:	06068e63          	beqz	a3,1790c <__lo0bits+0xc0>
   17894:	0ff7f693          	zext.b	a3,a5
   17898:	06068063          	beqz	a3,178f8 <__lo0bits+0xac>
   1789c:	00f7f693          	and	a3,a5,15
   178a0:	04068263          	beqz	a3,178e4 <__lo0bits+0x98>
   178a4:	0037f693          	and	a3,a5,3
   178a8:	02068463          	beqz	a3,178d0 <__lo0bits+0x84>
   178ac:	0017f693          	and	a3,a5,1
   178b0:	00069c63          	bnez	a3,178c8 <__lo0bits+0x7c>
   178b4:	0017d79b          	srlw	a5,a5,0x1
   178b8:	0015051b          	addw	a0,a0,1
   178bc:	00079663          	bnez	a5,178c8 <__lo0bits+0x7c>
   178c0:	02000513          	li	a0,32
   178c4:	00008067          	ret
   178c8:	00f72023          	sw	a5,0(a4)
   178cc:	00008067          	ret
   178d0:	0027d79b          	srlw	a5,a5,0x2
   178d4:	0017f693          	and	a3,a5,1
   178d8:	0025051b          	addw	a0,a0,2
   178dc:	fe0696e3          	bnez	a3,178c8 <__lo0bits+0x7c>
   178e0:	fd5ff06f          	j	178b4 <__lo0bits+0x68>
   178e4:	0047d79b          	srlw	a5,a5,0x4
   178e8:	0037f693          	and	a3,a5,3
   178ec:	0045051b          	addw	a0,a0,4
   178f0:	fa069ee3          	bnez	a3,178ac <__lo0bits+0x60>
   178f4:	fddff06f          	j	178d0 <__lo0bits+0x84>
   178f8:	0087d79b          	srlw	a5,a5,0x8
   178fc:	00f7f693          	and	a3,a5,15
   17900:	0085051b          	addw	a0,a0,8
   17904:	fa0690e3          	bnez	a3,178a4 <__lo0bits+0x58>
   17908:	fddff06f          	j	178e4 <__lo0bits+0x98>
   1790c:	0107d79b          	srlw	a5,a5,0x10
   17910:	0ff7f693          	zext.b	a3,a5
   17914:	01000513          	li	a0,16
   17918:	f80692e3          	bnez	a3,1789c <__lo0bits+0x50>
   1791c:	fddff06f          	j	178f8 <__lo0bits+0xac>
   17920:	0027d79b          	srlw	a5,a5,0x2
   17924:	00f72023          	sw	a5,0(a4)
   17928:	00200513          	li	a0,2
   1792c:	00008067          	ret

0000000000017930 <__i2b>:
   17930:	07853783          	ld	a5,120(a0)
   17934:	fe010113          	add	sp,sp,-32
   17938:	00813823          	sd	s0,16(sp)
   1793c:	00913423          	sd	s1,8(sp)
   17940:	00113c23          	sd	ra,24(sp)
   17944:	00050413          	mv	s0,a0
   17948:	00058493          	mv	s1,a1
   1794c:	02078c63          	beqz	a5,17984 <__i2b+0x54>
   17950:	0087b503          	ld	a0,8(a5)
   17954:	06050263          	beqz	a0,179b8 <__i2b+0x88>
   17958:	00053703          	ld	a4,0(a0)
   1795c:	00e7b423          	sd	a4,8(a5)
   17960:	01813083          	ld	ra,24(sp)
   17964:	01013403          	ld	s0,16(sp)
   17968:	00100793          	li	a5,1
   1796c:	02079793          	sll	a5,a5,0x20
   17970:	00952c23          	sw	s1,24(a0)
   17974:	00f53823          	sd	a5,16(a0)
   17978:	00813483          	ld	s1,8(sp)
   1797c:	02010113          	add	sp,sp,32
   17980:	00008067          	ret
   17984:	04100613          	li	a2,65
   17988:	00800593          	li	a1,8
   1798c:	7e1040ef          	jal	1c96c <_calloc_r>
   17990:	06a43c23          	sd	a0,120(s0)
   17994:	00050793          	mv	a5,a0
   17998:	fa051ce3          	bnez	a0,17950 <__i2b+0x20>
   1799c:	0000a697          	auipc	a3,0xa
   179a0:	67468693          	add	a3,a3,1652 # 22010 <blanks.1+0x70>
   179a4:	00000613          	li	a2,0
   179a8:	14000593          	li	a1,320
   179ac:	0000b517          	auipc	a0,0xb
   179b0:	94450513          	add	a0,a0,-1724 # 222f0 <ezero+0x18>
   179b4:	751040ef          	jal	1c904 <__assert_func>
   179b8:	02400613          	li	a2,36
   179bc:	00100593          	li	a1,1
   179c0:	00040513          	mv	a0,s0
   179c4:	7a9040ef          	jal	1c96c <_calloc_r>
   179c8:	fc050ae3          	beqz	a0,1799c <__i2b+0x6c>
   179cc:	00100793          	li	a5,1
   179d0:	02179793          	sll	a5,a5,0x21
   179d4:	00178793          	add	a5,a5,1
   179d8:	00f53423          	sd	a5,8(a0)
   179dc:	f85ff06f          	j	17960 <__i2b+0x30>

00000000000179e0 <__multiply>:
   179e0:	fd010113          	add	sp,sp,-48
   179e4:	01213823          	sd	s2,16(sp)
   179e8:	01313423          	sd	s3,8(sp)
   179ec:	01462903          	lw	s2,20(a2)
   179f0:	0145a983          	lw	s3,20(a1)
   179f4:	00913c23          	sd	s1,24(sp)
   179f8:	01413023          	sd	s4,0(sp)
   179fc:	02113423          	sd	ra,40(sp)
   17a00:	02813023          	sd	s0,32(sp)
   17a04:	00058a13          	mv	s4,a1
   17a08:	00060493          	mv	s1,a2
   17a0c:	0129cc63          	blt	s3,s2,17a24 <__multiply+0x44>
   17a10:	00090793          	mv	a5,s2
   17a14:	00058493          	mv	s1,a1
   17a18:	00098913          	mv	s2,s3
   17a1c:	00060a13          	mv	s4,a2
   17a20:	00078993          	mv	s3,a5
   17a24:	00c4a783          	lw	a5,12(s1)
   17a28:	0139043b          	addw	s0,s2,s3
   17a2c:	0084a583          	lw	a1,8(s1)
   17a30:	0087d463          	bge	a5,s0,17a38 <__multiply+0x58>
   17a34:	0015859b          	addw	a1,a1,1
   17a38:	a21ff0ef          	jal	17458 <_Balloc>
   17a3c:	1c050263          	beqz	a0,17c00 <__multiply+0x220>
   17a40:	01850313          	add	t1,a0,24
   17a44:	00241893          	sll	a7,s0,0x2
   17a48:	011308b3          	add	a7,t1,a7
   17a4c:	00030793          	mv	a5,t1
   17a50:	01137863          	bgeu	t1,a7,17a60 <__multiply+0x80>
   17a54:	0007a023          	sw	zero,0(a5)
   17a58:	00478793          	add	a5,a5,4
   17a5c:	ff17ece3          	bltu	a5,a7,17a54 <__multiply+0x74>
   17a60:	018a0813          	add	a6,s4,24
   17a64:	00299e13          	sll	t3,s3,0x2
   17a68:	01848e93          	add	t4,s1,24
   17a6c:	00291593          	sll	a1,s2,0x2
   17a70:	01c80e33          	add	t3,a6,t3
   17a74:	00be85b3          	add	a1,t4,a1
   17a78:	13c87a63          	bgeu	a6,t3,17bac <__multiply+0x1cc>
   17a7c:	01948793          	add	a5,s1,25
   17a80:	00400f13          	li	t5,4
   17a84:	16f5f463          	bgeu	a1,a5,17bec <__multiply+0x20c>
   17a88:	000106b7          	lui	a3,0x10
   17a8c:	fff68693          	add	a3,a3,-1 # ffff <exit-0xe9>
   17a90:	0180006f          	j	17aa8 <__multiply+0xc8>
   17a94:	010fdf9b          	srlw	t6,t6,0x10
   17a98:	080f9a63          	bnez	t6,17b2c <__multiply+0x14c>
   17a9c:	00480813          	add	a6,a6,4
   17aa0:	00430313          	add	t1,t1,4
   17aa4:	11c87463          	bgeu	a6,t3,17bac <__multiply+0x1cc>
   17aa8:	00082f83          	lw	t6,0(a6)
   17aac:	00dff3b3          	and	t2,t6,a3
   17ab0:	fe0382e3          	beqz	t2,17a94 <__multiply+0xb4>
   17ab4:	00030293          	mv	t0,t1
   17ab8:	000e8f93          	mv	t6,t4
   17abc:	00000493          	li	s1,0
   17ac0:	000fa783          	lw	a5,0(t6)
   17ac4:	0002a603          	lw	a2,0(t0) # 104c4 <memset+0xb4>
   17ac8:	00428293          	add	t0,t0,4
   17acc:	00d7f733          	and	a4,a5,a3
   17ad0:	0277073b          	mulw	a4,a4,t2
   17ad4:	0107d79b          	srlw	a5,a5,0x10
   17ad8:	00d67933          	and	s2,a2,a3
   17adc:	0106561b          	srlw	a2,a2,0x10
   17ae0:	004f8f93          	add	t6,t6,4
   17ae4:	027787bb          	mulw	a5,a5,t2
   17ae8:	0127073b          	addw	a4,a4,s2
   17aec:	0097073b          	addw	a4,a4,s1
   17af0:	0107549b          	srlw	s1,a4,0x10
   17af4:	00e6f733          	and	a4,a3,a4
   17af8:	00c787bb          	addw	a5,a5,a2
   17afc:	009787bb          	addw	a5,a5,s1
   17b00:	0107961b          	sllw	a2,a5,0x10
   17b04:	00c76733          	or	a4,a4,a2
   17b08:	fee2ae23          	sw	a4,-4(t0)
   17b0c:	0107d49b          	srlw	s1,a5,0x10
   17b10:	0107d71b          	srlw	a4,a5,0x10
   17b14:	fabfe6e3          	bltu	t6,a1,17ac0 <__multiply+0xe0>
   17b18:	01e307b3          	add	a5,t1,t5
   17b1c:	00e7a023          	sw	a4,0(a5)
   17b20:	00082f83          	lw	t6,0(a6)
   17b24:	010fdf9b          	srlw	t6,t6,0x10
   17b28:	f60f8ae3          	beqz	t6,17a9c <__multiply+0xbc>
   17b2c:	00032703          	lw	a4,0(t1)
   17b30:	00030293          	mv	t0,t1
   17b34:	000e8613          	mv	a2,t4
   17b38:	00070393          	mv	t2,a4
   17b3c:	00000493          	li	s1,0
   17b40:	00062783          	lw	a5,0(a2)
   17b44:	0103d99b          	srlw	s3,t2,0x10
   17b48:	00d77733          	and	a4,a4,a3
   17b4c:	00d7f7b3          	and	a5,a5,a3
   17b50:	03f787bb          	mulw	a5,a5,t6
   17b54:	0042a383          	lw	t2,4(t0)
   17b58:	00428293          	add	t0,t0,4
   17b5c:	00460613          	add	a2,a2,4
   17b60:	00d3f933          	and	s2,t2,a3
   17b64:	009787bb          	addw	a5,a5,s1
   17b68:	013787bb          	addw	a5,a5,s3
   17b6c:	0107949b          	sllw	s1,a5,0x10
   17b70:	00976733          	or	a4,a4,s1
   17b74:	fee2ae23          	sw	a4,-4(t0)
   17b78:	ffe65703          	lhu	a4,-2(a2)
   17b7c:	0107d79b          	srlw	a5,a5,0x10
   17b80:	03f7073b          	mulw	a4,a4,t6
   17b84:	0127073b          	addw	a4,a4,s2
   17b88:	00f707bb          	addw	a5,a4,a5
   17b8c:	0007871b          	sext.w	a4,a5
   17b90:	0107d49b          	srlw	s1,a5,0x10
   17b94:	fab666e3          	bltu	a2,a1,17b40 <__multiply+0x160>
   17b98:	01e30733          	add	a4,t1,t5
   17b9c:	00f72023          	sw	a5,0(a4)
   17ba0:	00480813          	add	a6,a6,4
   17ba4:	00430313          	add	t1,t1,4
   17ba8:	f1c860e3          	bltu	a6,t3,17aa8 <__multiply+0xc8>
   17bac:	00804863          	bgtz	s0,17bbc <__multiply+0x1dc>
   17bb0:	0180006f          	j	17bc8 <__multiply+0x1e8>
   17bb4:	fff4041b          	addw	s0,s0,-1
   17bb8:	00040863          	beqz	s0,17bc8 <__multiply+0x1e8>
   17bbc:	ffc8a783          	lw	a5,-4(a7)
   17bc0:	ffc88893          	add	a7,a7,-4
   17bc4:	fe0788e3          	beqz	a5,17bb4 <__multiply+0x1d4>
   17bc8:	02813083          	ld	ra,40(sp)
   17bcc:	00852a23          	sw	s0,20(a0)
   17bd0:	02013403          	ld	s0,32(sp)
   17bd4:	01813483          	ld	s1,24(sp)
   17bd8:	01013903          	ld	s2,16(sp)
   17bdc:	00813983          	ld	s3,8(sp)
   17be0:	00013a03          	ld	s4,0(sp)
   17be4:	03010113          	add	sp,sp,48
   17be8:	00008067          	ret
   17bec:	409587b3          	sub	a5,a1,s1
   17bf0:	fe778793          	add	a5,a5,-25
   17bf4:	ffc7f793          	and	a5,a5,-4
   17bf8:	00478f13          	add	t5,a5,4
   17bfc:	e8dff06f          	j	17a88 <__multiply+0xa8>
   17c00:	0000a697          	auipc	a3,0xa
   17c04:	41068693          	add	a3,a3,1040 # 22010 <blanks.1+0x70>
   17c08:	00000613          	li	a2,0
   17c0c:	15d00593          	li	a1,349
   17c10:	0000a517          	auipc	a0,0xa
   17c14:	6e050513          	add	a0,a0,1760 # 222f0 <ezero+0x18>
   17c18:	4ed040ef          	jal	1c904 <__assert_func>

0000000000017c1c <__pow5mult>:
   17c1c:	fd010113          	add	sp,sp,-48
   17c20:	02813023          	sd	s0,32(sp)
   17c24:	01213823          	sd	s2,16(sp)
   17c28:	01313423          	sd	s3,8(sp)
   17c2c:	02113423          	sd	ra,40(sp)
   17c30:	00913c23          	sd	s1,24(sp)
   17c34:	00367793          	and	a5,a2,3
   17c38:	00060413          	mv	s0,a2
   17c3c:	00050993          	mv	s3,a0
   17c40:	00058913          	mv	s2,a1
   17c44:	0a079a63          	bnez	a5,17cf8 <__pow5mult+0xdc>
   17c48:	40245413          	sra	s0,s0,0x2
   17c4c:	06040663          	beqz	s0,17cb8 <__pow5mult+0x9c>
   17c50:	0709b483          	ld	s1,112(s3)
   17c54:	0c048663          	beqz	s1,17d20 <__pow5mult+0x104>
   17c58:	00147793          	and	a5,s0,1
   17c5c:	02079063          	bnez	a5,17c7c <__pow5mult+0x60>
   17c60:	40145413          	sra	s0,s0,0x1
   17c64:	04040a63          	beqz	s0,17cb8 <__pow5mult+0x9c>
   17c68:	0004b503          	ld	a0,0(s1)
   17c6c:	06050663          	beqz	a0,17cd8 <__pow5mult+0xbc>
   17c70:	00050493          	mv	s1,a0
   17c74:	00147793          	and	a5,s0,1
   17c78:	fe0784e3          	beqz	a5,17c60 <__pow5mult+0x44>
   17c7c:	00048613          	mv	a2,s1
   17c80:	00090593          	mv	a1,s2
   17c84:	00098513          	mv	a0,s3
   17c88:	d59ff0ef          	jal	179e0 <__multiply>
   17c8c:	02090063          	beqz	s2,17cac <__pow5mult+0x90>
   17c90:	00892703          	lw	a4,8(s2)
   17c94:	0789b783          	ld	a5,120(s3)
   17c98:	00371713          	sll	a4,a4,0x3
   17c9c:	00e787b3          	add	a5,a5,a4
   17ca0:	0007b703          	ld	a4,0(a5)
   17ca4:	00e93023          	sd	a4,0(s2)
   17ca8:	0127b023          	sd	s2,0(a5)
   17cac:	40145413          	sra	s0,s0,0x1
   17cb0:	00050913          	mv	s2,a0
   17cb4:	fa041ae3          	bnez	s0,17c68 <__pow5mult+0x4c>
   17cb8:	02813083          	ld	ra,40(sp)
   17cbc:	02013403          	ld	s0,32(sp)
   17cc0:	01813483          	ld	s1,24(sp)
   17cc4:	00813983          	ld	s3,8(sp)
   17cc8:	00090513          	mv	a0,s2
   17ccc:	01013903          	ld	s2,16(sp)
   17cd0:	03010113          	add	sp,sp,48
   17cd4:	00008067          	ret
   17cd8:	00048613          	mv	a2,s1
   17cdc:	00048593          	mv	a1,s1
   17ce0:	00098513          	mv	a0,s3
   17ce4:	cfdff0ef          	jal	179e0 <__multiply>
   17ce8:	00a4b023          	sd	a0,0(s1)
   17cec:	00053023          	sd	zero,0(a0)
   17cf0:	00050493          	mv	s1,a0
   17cf4:	f81ff06f          	j	17c74 <__pow5mult+0x58>
   17cf8:	fff7879b          	addw	a5,a5,-1
   17cfc:	0000a717          	auipc	a4,0xa
   17d00:	64c70713          	add	a4,a4,1612 # 22348 <p05.0>
   17d04:	00279793          	sll	a5,a5,0x2
   17d08:	00f707b3          	add	a5,a4,a5
   17d0c:	0007a603          	lw	a2,0(a5)
   17d10:	00000693          	li	a3,0
   17d14:	815ff0ef          	jal	17528 <__multadd>
   17d18:	00050913          	mv	s2,a0
   17d1c:	f2dff06f          	j	17c48 <__pow5mult+0x2c>
   17d20:	00100593          	li	a1,1
   17d24:	00098513          	mv	a0,s3
   17d28:	f30ff0ef          	jal	17458 <_Balloc>
   17d2c:	00050493          	mv	s1,a0
   17d30:	02050063          	beqz	a0,17d50 <__pow5mult+0x134>
   17d34:	27100793          	li	a5,625
   17d38:	00f52c23          	sw	a5,24(a0)
   17d3c:	00100793          	li	a5,1
   17d40:	00f52a23          	sw	a5,20(a0)
   17d44:	06a9b823          	sd	a0,112(s3)
   17d48:	00053023          	sd	zero,0(a0)
   17d4c:	f0dff06f          	j	17c58 <__pow5mult+0x3c>
   17d50:	0000a697          	auipc	a3,0xa
   17d54:	2c068693          	add	a3,a3,704 # 22010 <blanks.1+0x70>
   17d58:	00000613          	li	a2,0
   17d5c:	14000593          	li	a1,320
   17d60:	0000a517          	auipc	a0,0xa
   17d64:	59050513          	add	a0,a0,1424 # 222f0 <ezero+0x18>
   17d68:	39d040ef          	jal	1c904 <__assert_func>

0000000000017d6c <__lshift>:
   17d6c:	fc010113          	add	sp,sp,-64
   17d70:	02813823          	sd	s0,48(sp)
   17d74:	0145a403          	lw	s0,20(a1)
   17d78:	00c5a783          	lw	a5,12(a1)
   17d7c:	01513423          	sd	s5,8(sp)
   17d80:	40565a9b          	sraw	s5,a2,0x5
   17d84:	008a843b          	addw	s0,s5,s0
   17d88:	02913423          	sd	s1,40(sp)
   17d8c:	03213023          	sd	s2,32(sp)
   17d90:	01313c23          	sd	s3,24(sp)
   17d94:	01413823          	sd	s4,16(sp)
   17d98:	01613023          	sd	s6,0(sp)
   17d9c:	02113c23          	sd	ra,56(sp)
   17da0:	0014091b          	addw	s2,s0,1
   17da4:	00058493          	mv	s1,a1
   17da8:	00060a13          	mv	s4,a2
   17dac:	0085a583          	lw	a1,8(a1)
   17db0:	00050993          	mv	s3,a0
   17db4:	40565b13          	sra	s6,a2,0x5
   17db8:	0127d863          	bge	a5,s2,17dc8 <__lshift+0x5c>
   17dbc:	0017979b          	sllw	a5,a5,0x1
   17dc0:	0015859b          	addw	a1,a1,1
   17dc4:	ff27cce3          	blt	a5,s2,17dbc <__lshift+0x50>
   17dc8:	00098513          	mv	a0,s3
   17dcc:	e8cff0ef          	jal	17458 <_Balloc>
   17dd0:	12050263          	beqz	a0,17ef4 <__lshift+0x188>
   17dd4:	01850713          	add	a4,a0,24
   17dd8:	03605663          	blez	s6,17e04 <__lshift+0x98>
   17ddc:	006a869b          	addw	a3,s5,6
   17de0:	00269693          	sll	a3,a3,0x2
   17de4:	00d506b3          	add	a3,a0,a3
   17de8:	00070793          	mv	a5,a4
   17dec:	00478793          	add	a5,a5,4
   17df0:	fe07ae23          	sw	zero,-4(a5)
   17df4:	fef69ce3          	bne	a3,a5,17dec <__lshift+0x80>
   17df8:	020a9793          	sll	a5,s5,0x20
   17dfc:	01e7da93          	srl	s5,a5,0x1e
   17e00:	01570733          	add	a4,a4,s5
   17e04:	0144a883          	lw	a7,20(s1)
   17e08:	01848793          	add	a5,s1,24
   17e0c:	01fa7613          	and	a2,s4,31
   17e10:	00289893          	sll	a7,a7,0x2
   17e14:	011788b3          	add	a7,a5,a7
   17e18:	0a060863          	beqz	a2,17ec8 <__lshift+0x15c>
   17e1c:	02000593          	li	a1,32
   17e20:	40c585bb          	subw	a1,a1,a2
   17e24:	00070313          	mv	t1,a4
   17e28:	00000693          	li	a3,0
   17e2c:	0007a803          	lw	a6,0(a5)
   17e30:	00430313          	add	t1,t1,4
   17e34:	00478793          	add	a5,a5,4
   17e38:	00c8183b          	sllw	a6,a6,a2
   17e3c:	0106e6b3          	or	a3,a3,a6
   17e40:	fed32e23          	sw	a3,-4(t1)
   17e44:	ffc7a803          	lw	a6,-4(a5)
   17e48:	00b856bb          	srlw	a3,a6,a1
   17e4c:	00068813          	mv	a6,a3
   17e50:	fd17eee3          	bltu	a5,a7,17e2c <__lshift+0xc0>
   17e54:	01948793          	add	a5,s1,25
   17e58:	00400613          	li	a2,4
   17e5c:	00f8ea63          	bltu	a7,a5,17e70 <__lshift+0x104>
   17e60:	409887b3          	sub	a5,a7,s1
   17e64:	fe778793          	add	a5,a5,-25
   17e68:	ffc7f793          	and	a5,a5,-4
   17e6c:	00478613          	add	a2,a5,4
   17e70:	00c70733          	add	a4,a4,a2
   17e74:	01072023          	sw	a6,0(a4)
   17e78:	00069463          	bnez	a3,17e80 <__lshift+0x114>
   17e7c:	00040913          	mv	s2,s0
   17e80:	0084a703          	lw	a4,8(s1)
   17e84:	0789b783          	ld	a5,120(s3)
   17e88:	03813083          	ld	ra,56(sp)
   17e8c:	00371713          	sll	a4,a4,0x3
   17e90:	00e787b3          	add	a5,a5,a4
   17e94:	0007b703          	ld	a4,0(a5)
   17e98:	01252a23          	sw	s2,20(a0)
   17e9c:	03013403          	ld	s0,48(sp)
   17ea0:	00e4b023          	sd	a4,0(s1)
   17ea4:	0097b023          	sd	s1,0(a5)
   17ea8:	02013903          	ld	s2,32(sp)
   17eac:	02813483          	ld	s1,40(sp)
   17eb0:	01813983          	ld	s3,24(sp)
   17eb4:	01013a03          	ld	s4,16(sp)
   17eb8:	00813a83          	ld	s5,8(sp)
   17ebc:	00013b03          	ld	s6,0(sp)
   17ec0:	04010113          	add	sp,sp,64
   17ec4:	00008067          	ret
   17ec8:	0007a683          	lw	a3,0(a5)
   17ecc:	00478793          	add	a5,a5,4
   17ed0:	00470713          	add	a4,a4,4
   17ed4:	fed72e23          	sw	a3,-4(a4)
   17ed8:	fb17f2e3          	bgeu	a5,a7,17e7c <__lshift+0x110>
   17edc:	0007a683          	lw	a3,0(a5)
   17ee0:	00478793          	add	a5,a5,4
   17ee4:	00470713          	add	a4,a4,4
   17ee8:	fed72e23          	sw	a3,-4(a4)
   17eec:	fd17eee3          	bltu	a5,a7,17ec8 <__lshift+0x15c>
   17ef0:	f8dff06f          	j	17e7c <__lshift+0x110>
   17ef4:	0000a697          	auipc	a3,0xa
   17ef8:	11c68693          	add	a3,a3,284 # 22010 <blanks.1+0x70>
   17efc:	00000613          	li	a2,0
   17f00:	1d900593          	li	a1,473
   17f04:	0000a517          	auipc	a0,0xa
   17f08:	3ec50513          	add	a0,a0,1004 # 222f0 <ezero+0x18>
   17f0c:	1f9040ef          	jal	1c904 <__assert_func>

0000000000017f10 <__mcmp>:
   17f10:	0145a783          	lw	a5,20(a1)
   17f14:	00050813          	mv	a6,a0
   17f18:	01452503          	lw	a0,20(a0)
   17f1c:	40f5053b          	subw	a0,a0,a5
   17f20:	04051263          	bnez	a0,17f64 <__mcmp+0x54>
   17f24:	00279793          	sll	a5,a5,0x2
   17f28:	01880813          	add	a6,a6,24
   17f2c:	01858593          	add	a1,a1,24
   17f30:	00f80733          	add	a4,a6,a5
   17f34:	00f587b3          	add	a5,a1,a5
   17f38:	0080006f          	j	17f40 <__mcmp+0x30>
   17f3c:	02e87463          	bgeu	a6,a4,17f64 <__mcmp+0x54>
   17f40:	ffc72603          	lw	a2,-4(a4)
   17f44:	ffc7a683          	lw	a3,-4(a5)
   17f48:	ffc70713          	add	a4,a4,-4
   17f4c:	ffc78793          	add	a5,a5,-4
   17f50:	fed606e3          	beq	a2,a3,17f3c <__mcmp+0x2c>
   17f54:	00100513          	li	a0,1
   17f58:	00d67663          	bgeu	a2,a3,17f64 <__mcmp+0x54>
   17f5c:	fff00513          	li	a0,-1
   17f60:	00008067          	ret
   17f64:	00008067          	ret

0000000000017f68 <__mdiff>:
   17f68:	fe010113          	add	sp,sp,-32
   17f6c:	01462783          	lw	a5,20(a2)
   17f70:	01213023          	sd	s2,0(sp)
   17f74:	0145a903          	lw	s2,20(a1)
   17f78:	00813823          	sd	s0,16(sp)
   17f7c:	00913423          	sd	s1,8(sp)
   17f80:	00113c23          	sd	ra,24(sp)
   17f84:	40f9093b          	subw	s2,s2,a5
   17f88:	00058493          	mv	s1,a1
   17f8c:	00060413          	mv	s0,a2
   17f90:	04091663          	bnez	s2,17fdc <__mdiff+0x74>
   17f94:	00279693          	sll	a3,a5,0x2
   17f98:	01858593          	add	a1,a1,24
   17f9c:	01860713          	add	a4,a2,24
   17fa0:	00d587b3          	add	a5,a1,a3
   17fa4:	00d70733          	add	a4,a4,a3
   17fa8:	0080006f          	j	17fb0 <__mdiff+0x48>
   17fac:	18f5fa63          	bgeu	a1,a5,18140 <__mdiff+0x1d8>
   17fb0:	ffc7a603          	lw	a2,-4(a5)
   17fb4:	ffc72683          	lw	a3,-4(a4)
   17fb8:	ffc78793          	add	a5,a5,-4
   17fbc:	ffc70713          	add	a4,a4,-4
   17fc0:	fed606e3          	beq	a2,a3,17fac <__mdiff+0x44>
   17fc4:	02d67063          	bgeu	a2,a3,17fe4 <__mdiff+0x7c>
   17fc8:	00048793          	mv	a5,s1
   17fcc:	00100913          	li	s2,1
   17fd0:	00040493          	mv	s1,s0
   17fd4:	00078413          	mv	s0,a5
   17fd8:	00c0006f          	j	17fe4 <__mdiff+0x7c>
   17fdc:	fe0946e3          	bltz	s2,17fc8 <__mdiff+0x60>
   17fe0:	00000913          	li	s2,0
   17fe4:	0084a583          	lw	a1,8(s1)
   17fe8:	c70ff0ef          	jal	17458 <_Balloc>
   17fec:	1a050e63          	beqz	a0,181a8 <__mdiff+0x240>
   17ff0:	0144a303          	lw	t1,20(s1)
   17ff4:	01442f03          	lw	t5,20(s0)
   17ff8:	01848293          	add	t0,s1,24
   17ffc:	00231e13          	sll	t3,t1,0x2
   18000:	01840813          	add	a6,s0,24
   18004:	002f1f13          	sll	t5,t5,0x2
   18008:	01850f93          	add	t6,a0,24
   1800c:	000108b7          	lui	a7,0x10
   18010:	01252823          	sw	s2,16(a0)
   18014:	01c28e33          	add	t3,t0,t3
   18018:	01e80f33          	add	t5,a6,t5
   1801c:	000f8613          	mv	a2,t6
   18020:	00028e93          	mv	t4,t0
   18024:	00000593          	li	a1,0
   18028:	fff88893          	add	a7,a7,-1 # ffff <exit-0xe9>
   1802c:	000ea703          	lw	a4,0(t4)
   18030:	00082683          	lw	a3,0(a6)
   18034:	00460613          	add	a2,a2,4
   18038:	011777b3          	and	a5,a4,a7
   1803c:	0116f3b3          	and	t2,a3,a7
   18040:	407787bb          	subw	a5,a5,t2
   18044:	00b787bb          	addw	a5,a5,a1
   18048:	0106d69b          	srlw	a3,a3,0x10
   1804c:	0107571b          	srlw	a4,a4,0x10
   18050:	40d7073b          	subw	a4,a4,a3
   18054:	4107d69b          	sraw	a3,a5,0x10
   18058:	00d7073b          	addw	a4,a4,a3
   1805c:	00f8f7b3          	and	a5,a7,a5
   18060:	0107169b          	sllw	a3,a4,0x10
   18064:	00d7e7b3          	or	a5,a5,a3
   18068:	0007879b          	sext.w	a5,a5
   1806c:	00480813          	add	a6,a6,4
   18070:	fef62e23          	sw	a5,-4(a2)
   18074:	004e8e93          	add	t4,t4,4
   18078:	4107559b          	sraw	a1,a4,0x10
   1807c:	fbe868e3          	bltu	a6,t5,1802c <__mdiff+0xc4>
   18080:	408f0733          	sub	a4,t5,s0
   18084:	fe770713          	add	a4,a4,-25
   18088:	01940413          	add	s0,s0,25
   1808c:	00275e93          	srl	t4,a4,0x2
   18090:	00400713          	li	a4,4
   18094:	008f6663          	bltu	t5,s0,180a0 <__mdiff+0x138>
   18098:	001e8713          	add	a4,t4,1
   1809c:	00271713          	sll	a4,a4,0x2
   180a0:	00e282b3          	add	t0,t0,a4
   180a4:	00ef8833          	add	a6,t6,a4
   180a8:	000108b7          	lui	a7,0x10
   180ac:	00080613          	mv	a2,a6
   180b0:	00028693          	mv	a3,t0
   180b4:	fff88893          	add	a7,a7,-1 # ffff <exit-0xe9>
   180b8:	0bc2fc63          	bgeu	t0,t3,18170 <__mdiff+0x208>
   180bc:	0006a783          	lw	a5,0(a3)
   180c0:	00058e9b          	sext.w	t4,a1
   180c4:	00460613          	add	a2,a2,4
   180c8:	0117f733          	and	a4,a5,a7
   180cc:	00b7073b          	addw	a4,a4,a1
   180d0:	4107571b          	sraw	a4,a4,0x10
   180d4:	0107d59b          	srlw	a1,a5,0x10
   180d8:	00b7073b          	addw	a4,a4,a1
   180dc:	01d787bb          	addw	a5,a5,t4
   180e0:	0107159b          	sllw	a1,a4,0x10
   180e4:	0117f7b3          	and	a5,a5,a7
   180e8:	00b7e7b3          	or	a5,a5,a1
   180ec:	0007879b          	sext.w	a5,a5
   180f0:	00468693          	add	a3,a3,4
   180f4:	fef62e23          	sw	a5,-4(a2)
   180f8:	4107559b          	sraw	a1,a4,0x10
   180fc:	fdc6e0e3          	bltu	a3,t3,180bc <__mdiff+0x154>
   18100:	fffe0e13          	add	t3,t3,-1
   18104:	405e0e33          	sub	t3,t3,t0
   18108:	ffce7e13          	and	t3,t3,-4
   1810c:	01c80733          	add	a4,a6,t3
   18110:	00079a63          	bnez	a5,18124 <__mdiff+0x1bc>
   18114:	ffc72783          	lw	a5,-4(a4)
   18118:	fff3031b          	addw	t1,t1,-1
   1811c:	ffc70713          	add	a4,a4,-4
   18120:	fe078ae3          	beqz	a5,18114 <__mdiff+0x1ac>
   18124:	01813083          	ld	ra,24(sp)
   18128:	01013403          	ld	s0,16(sp)
   1812c:	00652a23          	sw	t1,20(a0)
   18130:	00813483          	ld	s1,8(sp)
   18134:	00013903          	ld	s2,0(sp)
   18138:	02010113          	add	sp,sp,32
   1813c:	00008067          	ret
   18140:	00000593          	li	a1,0
   18144:	b14ff0ef          	jal	17458 <_Balloc>
   18148:	04050263          	beqz	a0,1818c <__mdiff+0x224>
   1814c:	01813083          	ld	ra,24(sp)
   18150:	01013403          	ld	s0,16(sp)
   18154:	00100793          	li	a5,1
   18158:	00f52a23          	sw	a5,20(a0)
   1815c:	00052c23          	sw	zero,24(a0)
   18160:	00813483          	ld	s1,8(sp)
   18164:	00013903          	ld	s2,0(sp)
   18168:	02010113          	add	sp,sp,32
   1816c:	00008067          	ret
   18170:	00000713          	li	a4,0
   18174:	008f7663          	bgeu	t5,s0,18180 <__mdiff+0x218>
   18178:	00ef8733          	add	a4,t6,a4
   1817c:	f95ff06f          	j	18110 <__mdiff+0x1a8>
   18180:	002e9713          	sll	a4,t4,0x2
   18184:	00ef8733          	add	a4,t6,a4
   18188:	f89ff06f          	j	18110 <__mdiff+0x1a8>
   1818c:	0000a697          	auipc	a3,0xa
   18190:	e8468693          	add	a3,a3,-380 # 22010 <blanks.1+0x70>
   18194:	00000613          	li	a2,0
   18198:	23200593          	li	a1,562
   1819c:	0000a517          	auipc	a0,0xa
   181a0:	15450513          	add	a0,a0,340 # 222f0 <ezero+0x18>
   181a4:	760040ef          	jal	1c904 <__assert_func>
   181a8:	0000a697          	auipc	a3,0xa
   181ac:	e6868693          	add	a3,a3,-408 # 22010 <blanks.1+0x70>
   181b0:	00000613          	li	a2,0
   181b4:	24000593          	li	a1,576
   181b8:	0000a517          	auipc	a0,0xa
   181bc:	13850513          	add	a0,a0,312 # 222f0 <ezero+0x18>
   181c0:	744040ef          	jal	1c904 <__assert_func>

00000000000181c4 <__ulp>:
   181c4:	e2050753          	fmv.x.d	a4,fa0
   181c8:	7ff007b7          	lui	a5,0x7ff00
   181cc:	02075713          	srl	a4,a4,0x20
   181d0:	00f77733          	and	a4,a4,a5
   181d4:	fcc007b7          	lui	a5,0xfcc00
   181d8:	00e786bb          	addw	a3,a5,a4
   181dc:	00000713          	li	a4,0
   181e0:	00d05e63          	blez	a3,181fc <__ulp+0x38>
   181e4:	02071713          	sll	a4,a4,0x20
   181e8:	02069693          	sll	a3,a3,0x20
   181ec:	02075713          	srl	a4,a4,0x20
   181f0:	00d76733          	or	a4,a4,a3
   181f4:	f2070553          	fmv.d.x	fa0,a4
   181f8:	00008067          	ret
   181fc:	40d007bb          	negw	a5,a3
   18200:	4147d71b          	sraw	a4,a5,0x14
   18204:	01300693          	li	a3,19
   18208:	02e6c463          	blt	a3,a4,18230 <__ulp+0x6c>
   1820c:	000806b7          	lui	a3,0x80
   18210:	40e6d6bb          	sraw	a3,a3,a4
   18214:	00000713          	li	a4,0
   18218:	02071713          	sll	a4,a4,0x20
   1821c:	02069693          	sll	a3,a3,0x20
   18220:	02075713          	srl	a4,a4,0x20
   18224:	00d76733          	or	a4,a4,a3
   18228:	f2070553          	fmv.d.x	fa0,a4
   1822c:	00008067          	ret
   18230:	fec7079b          	addw	a5,a4,-20
   18234:	01e00693          	li	a3,30
   18238:	00100713          	li	a4,1
   1823c:	00f6c663          	blt	a3,a5,18248 <__ulp+0x84>
   18240:	80000737          	lui	a4,0x80000
   18244:	00f7573b          	srlw	a4,a4,a5
   18248:	00000693          	li	a3,0
   1824c:	02071713          	sll	a4,a4,0x20
   18250:	02069693          	sll	a3,a3,0x20
   18254:	02075713          	srl	a4,a4,0x20
   18258:	00d76733          	or	a4,a4,a3
   1825c:	f2070553          	fmv.d.x	fa0,a4
   18260:	00008067          	ret

0000000000018264 <__b2d>:
   18264:	fd010113          	add	sp,sp,-48
   18268:	00913c23          	sd	s1,24(sp)
   1826c:	01452483          	lw	s1,20(a0)
   18270:	02813023          	sd	s0,32(sp)
   18274:	01850413          	add	s0,a0,24
   18278:	00249493          	sll	s1,s1,0x2
   1827c:	009404b3          	add	s1,s0,s1
   18280:	01213823          	sd	s2,16(sp)
   18284:	ffc4a903          	lw	s2,-4(s1)
   18288:	01313423          	sd	s3,8(sp)
   1828c:	01413023          	sd	s4,0(sp)
   18290:	00090513          	mv	a0,s2
   18294:	00058993          	mv	s3,a1
   18298:	02113423          	sd	ra,40(sp)
   1829c:	d34ff0ef          	jal	177d0 <__hi0bits>
   182a0:	02000693          	li	a3,32
   182a4:	40a687bb          	subw	a5,a3,a0
   182a8:	00f9a023          	sw	a5,0(s3)
   182ac:	00a00793          	li	a5,10
   182b0:	ffc48a13          	add	s4,s1,-4
   182b4:	0aa7de63          	bge	a5,a0,18370 <__b2d+0x10c>
   182b8:	ff55079b          	addw	a5,a0,-11
   182bc:	05447663          	bgeu	s0,s4,18308 <__b2d+0xa4>
   182c0:	ff84a703          	lw	a4,-8(s1)
   182c4:	06078463          	beqz	a5,1832c <__b2d+0xc8>
   182c8:	40f686bb          	subw	a3,a3,a5
   182cc:	00d7563b          	srlw	a2,a4,a3
   182d0:	00f9193b          	sllw	s2,s2,a5
   182d4:	00c96933          	or	s2,s2,a2
   182d8:	3ff00637          	lui	a2,0x3ff00
   182dc:	00c96933          	or	s2,s2,a2
   182e0:	00f715bb          	sllw	a1,a4,a5
   182e4:	ff848613          	add	a2,s1,-8
   182e8:	02091793          	sll	a5,s2,0x20
   182ec:	0005871b          	sext.w	a4,a1
   182f0:	04c47463          	bgeu	s0,a2,18338 <__b2d+0xd4>
   182f4:	ff44a703          	lw	a4,-12(s1)
   182f8:	00d7573b          	srlw	a4,a4,a3
   182fc:	00b76733          	or	a4,a4,a1
   18300:	0007071b          	sext.w	a4,a4
   18304:	0340006f          	j	18338 <__b2d+0xd4>
   18308:	00b00713          	li	a4,11
   1830c:	00e50e63          	beq	a0,a4,18328 <__b2d+0xc4>
   18310:	3ff00737          	lui	a4,0x3ff00
   18314:	00f917bb          	sllw	a5,s2,a5
   18318:	00e7e7b3          	or	a5,a5,a4
   1831c:	02079793          	sll	a5,a5,0x20
   18320:	00000713          	li	a4,0
   18324:	0140006f          	j	18338 <__b2d+0xd4>
   18328:	00000713          	li	a4,0
   1832c:	3ff007b7          	lui	a5,0x3ff00
   18330:	00f967b3          	or	a5,s2,a5
   18334:	02079793          	sll	a5,a5,0x20
   18338:	02813083          	ld	ra,40(sp)
   1833c:	02013403          	ld	s0,32(sp)
   18340:	0207d793          	srl	a5,a5,0x20
   18344:	02071713          	sll	a4,a4,0x20
   18348:	02075713          	srl	a4,a4,0x20
   1834c:	02079793          	sll	a5,a5,0x20
   18350:	00e7e7b3          	or	a5,a5,a4
   18354:	01813483          	ld	s1,24(sp)
   18358:	01013903          	ld	s2,16(sp)
   1835c:	00813983          	ld	s3,8(sp)
   18360:	00013a03          	ld	s4,0(sp)
   18364:	f2078553          	fmv.d.x	fa0,a5
   18368:	03010113          	add	sp,sp,48
   1836c:	00008067          	ret
   18370:	00b00693          	li	a3,11
   18374:	40a686bb          	subw	a3,a3,a0
   18378:	3ff00737          	lui	a4,0x3ff00
   1837c:	00d957bb          	srlw	a5,s2,a3
   18380:	00e7e7b3          	or	a5,a5,a4
   18384:	02079793          	sll	a5,a5,0x20
   18388:	00000713          	li	a4,0
   1838c:	01447663          	bgeu	s0,s4,18398 <__b2d+0x134>
   18390:	ff84a703          	lw	a4,-8(s1)
   18394:	00d7573b          	srlw	a4,a4,a3
   18398:	0155051b          	addw	a0,a0,21
   1839c:	00a9153b          	sllw	a0,s2,a0
   183a0:	00a76733          	or	a4,a4,a0
   183a4:	0007071b          	sext.w	a4,a4
   183a8:	f91ff06f          	j	18338 <__b2d+0xd4>

00000000000183ac <__d2b>:
   183ac:	fc010113          	add	sp,sp,-64
   183b0:	01413823          	sd	s4,16(sp)
   183b4:	00058a13          	mv	s4,a1
   183b8:	00100593          	li	a1,1
   183bc:	02813823          	sd	s0,48(sp)
   183c0:	03213023          	sd	s2,32(sp)
   183c4:	02113c23          	sd	ra,56(sp)
   183c8:	02913423          	sd	s1,40(sp)
   183cc:	01313c23          	sd	s3,24(sp)
   183d0:	e2050453          	fmv.x.d	s0,fa0
   183d4:	00060913          	mv	s2,a2
   183d8:	880ff0ef          	jal	17458 <_Balloc>
   183dc:	10050063          	beqz	a0,184dc <__d2b+0x130>
   183e0:	42045793          	sra	a5,s0,0x20
   183e4:	0147d99b          	srlw	s3,a5,0x14
   183e8:	7ff9f993          	and	s3,s3,2047
   183ec:	02c79793          	sll	a5,a5,0x2c
   183f0:	00050493          	mv	s1,a0
   183f4:	02c7d793          	srl	a5,a5,0x2c
   183f8:	00098663          	beqz	s3,18404 <__d2b+0x58>
   183fc:	00100737          	lui	a4,0x100
   18400:	00e7e7b3          	or	a5,a5,a4
   18404:	00f12623          	sw	a5,12(sp)
   18408:	0004041b          	sext.w	s0,s0
   1840c:	06041063          	bnez	s0,1846c <__d2b+0xc0>
   18410:	00c10513          	add	a0,sp,12
   18414:	c38ff0ef          	jal	1784c <__lo0bits>
   18418:	00c12783          	lw	a5,12(sp)
   1841c:	00100413          	li	s0,1
   18420:	0084aa23          	sw	s0,20(s1)
   18424:	00f4ac23          	sw	a5,24(s1)
   18428:	0205051b          	addw	a0,a0,32
   1842c:	08098663          	beqz	s3,184b8 <__d2b+0x10c>
   18430:	bcd9899b          	addw	s3,s3,-1075
   18434:	00a989bb          	addw	s3,s3,a0
   18438:	03500413          	li	s0,53
   1843c:	013a2023          	sw	s3,0(s4)
   18440:	40a4053b          	subw	a0,s0,a0
   18444:	03813083          	ld	ra,56(sp)
   18448:	03013403          	ld	s0,48(sp)
   1844c:	00a92023          	sw	a0,0(s2)
   18450:	01813983          	ld	s3,24(sp)
   18454:	02013903          	ld	s2,32(sp)
   18458:	01013a03          	ld	s4,16(sp)
   1845c:	00048513          	mv	a0,s1
   18460:	02813483          	ld	s1,40(sp)
   18464:	04010113          	add	sp,sp,64
   18468:	00008067          	ret
   1846c:	00810513          	add	a0,sp,8
   18470:	00812423          	sw	s0,8(sp)
   18474:	bd8ff0ef          	jal	1784c <__lo0bits>
   18478:	00c12783          	lw	a5,12(sp)
   1847c:	00812703          	lw	a4,8(sp)
   18480:	02050063          	beqz	a0,184a0 <__d2b+0xf4>
   18484:	02000693          	li	a3,32
   18488:	40a686bb          	subw	a3,a3,a0
   1848c:	00d796bb          	sllw	a3,a5,a3
   18490:	00d76733          	or	a4,a4,a3
   18494:	00a7d7bb          	srlw	a5,a5,a0
   18498:	0007071b          	sext.w	a4,a4
   1849c:	00f12623          	sw	a5,12(sp)
   184a0:	00f03433          	snez	s0,a5
   184a4:	00140413          	add	s0,s0,1
   184a8:	00e4ac23          	sw	a4,24(s1)
   184ac:	00f4ae23          	sw	a5,28(s1)
   184b0:	0084aa23          	sw	s0,20(s1)
   184b4:	f6099ee3          	bnez	s3,18430 <__d2b+0x84>
   184b8:	bce5051b          	addw	a0,a0,-1074
   184bc:	00241793          	sll	a5,s0,0x2
   184c0:	00aa2023          	sw	a0,0(s4)
   184c4:	00f487b3          	add	a5,s1,a5
   184c8:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3fedb1f4>
   184cc:	0054141b          	sllw	s0,s0,0x5
   184d0:	b00ff0ef          	jal	177d0 <__hi0bits>
   184d4:	40a4053b          	subw	a0,s0,a0
   184d8:	f6dff06f          	j	18444 <__d2b+0x98>
   184dc:	0000a697          	auipc	a3,0xa
   184e0:	b3468693          	add	a3,a3,-1228 # 22010 <blanks.1+0x70>
   184e4:	00000613          	li	a2,0
   184e8:	30a00593          	li	a1,778
   184ec:	0000a517          	auipc	a0,0xa
   184f0:	e0450513          	add	a0,a0,-508 # 222f0 <ezero+0x18>
   184f4:	410040ef          	jal	1c904 <__assert_func>

00000000000184f8 <__ratio>:
   184f8:	fd010113          	add	sp,sp,-48
   184fc:	00913c23          	sd	s1,24(sp)
   18500:	00058493          	mv	s1,a1
   18504:	00810593          	add	a1,sp,8
   18508:	02113423          	sd	ra,40(sp)
   1850c:	02813023          	sd	s0,32(sp)
   18510:	01213823          	sd	s2,16(sp)
   18514:	00050913          	mv	s2,a0
   18518:	d4dff0ef          	jal	18264 <__b2d>
   1851c:	00c10593          	add	a1,sp,12
   18520:	00048513          	mv	a0,s1
   18524:	e2050453          	fmv.x.d	s0,fa0
   18528:	d3dff0ef          	jal	18264 <__b2d>
   1852c:	01492783          	lw	a5,20(s2)
   18530:	0144a603          	lw	a2,20(s1)
   18534:	00c12683          	lw	a3,12(sp)
   18538:	00812703          	lw	a4,8(sp)
   1853c:	40c787bb          	subw	a5,a5,a2
   18540:	0057979b          	sllw	a5,a5,0x5
   18544:	40d7073b          	subw	a4,a4,a3
   18548:	00e786bb          	addw	a3,a5,a4
   1854c:	00068793          	mv	a5,a3
   18550:	e2050753          	fmv.x.d	a4,fa0
   18554:	04d05463          	blez	a3,1859c <__ratio+0xa4>
   18558:	02045693          	srl	a3,s0,0x20
   1855c:	0147979b          	sllw	a5,a5,0x14
   18560:	00d787bb          	addw	a5,a5,a3
   18564:	fff00693          	li	a3,-1
   18568:	0206d693          	srl	a3,a3,0x20
   1856c:	02079793          	sll	a5,a5,0x20
   18570:	0086f6b3          	and	a3,a3,s0
   18574:	00f6e433          	or	s0,a3,a5
   18578:	f20407d3          	fmv.d.x	fa5,s0
   1857c:	02813083          	ld	ra,40(sp)
   18580:	02013403          	ld	s0,32(sp)
   18584:	f2070753          	fmv.d.x	fa4,a4
   18588:	01813483          	ld	s1,24(sp)
   1858c:	01013903          	ld	s2,16(sp)
   18590:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   18594:	03010113          	add	sp,sp,48
   18598:	00008067          	ret
   1859c:	02075693          	srl	a3,a4,0x20
   185a0:	0147979b          	sllw	a5,a5,0x14
   185a4:	40f687bb          	subw	a5,a3,a5
   185a8:	fff00693          	li	a3,-1
   185ac:	0206d693          	srl	a3,a3,0x20
   185b0:	02079793          	sll	a5,a5,0x20
   185b4:	00e6f733          	and	a4,a3,a4
   185b8:	00f76733          	or	a4,a4,a5
   185bc:	fbdff06f          	j	18578 <__ratio+0x80>

00000000000185c0 <_mprec_log10>:
   185c0:	01700793          	li	a5,23
   185c4:	02a7d263          	bge	a5,a0,185e8 <_mprec_log10+0x28>
   185c8:	0000c797          	auipc	a5,0xc
   185cc:	7787b507          	fld	fa0,1912(a5) # 24d40 <__SDATA_BEGIN__+0x10>
   185d0:	0000c797          	auipc	a5,0xc
   185d4:	7787b787          	fld	fa5,1912(a5) # 24d48 <__SDATA_BEGIN__+0x18>
   185d8:	fff5051b          	addw	a0,a0,-1
   185dc:	12f57553          	fmul.d	fa0,fa0,fa5
   185e0:	fe051ce3          	bnez	a0,185d8 <_mprec_log10+0x18>
   185e4:	00008067          	ret
   185e8:	00351513          	sll	a0,a0,0x3
   185ec:	0000a797          	auipc	a5,0xa
   185f0:	dbc78793          	add	a5,a5,-580 # 223a8 <__mprec_tens>
   185f4:	00a787b3          	add	a5,a5,a0
   185f8:	0007b507          	fld	fa0,0(a5)
   185fc:	00008067          	ret

0000000000018600 <__copybits>:
   18600:	01462683          	lw	a3,20(a2) # 3ff00014 <__BSS_END__+0x3fedb1f4>
   18604:	fff5859b          	addw	a1,a1,-1
   18608:	4055d59b          	sraw	a1,a1,0x5
   1860c:	0015859b          	addw	a1,a1,1
   18610:	01860793          	add	a5,a2,24
   18614:	00269693          	sll	a3,a3,0x2
   18618:	00259593          	sll	a1,a1,0x2
   1861c:	00d786b3          	add	a3,a5,a3
   18620:	00b505b3          	add	a1,a0,a1
   18624:	02d7f863          	bgeu	a5,a3,18654 <__copybits+0x54>
   18628:	00050713          	mv	a4,a0
   1862c:	0007a803          	lw	a6,0(a5)
   18630:	00478793          	add	a5,a5,4
   18634:	00470713          	add	a4,a4,4 # 100004 <__BSS_END__+0xdb1e4>
   18638:	ff072e23          	sw	a6,-4(a4)
   1863c:	fed7e8e3          	bltu	a5,a3,1862c <__copybits+0x2c>
   18640:	40c687b3          	sub	a5,a3,a2
   18644:	fe778793          	add	a5,a5,-25
   18648:	ffc7f793          	and	a5,a5,-4
   1864c:	00478793          	add	a5,a5,4
   18650:	00f50533          	add	a0,a0,a5
   18654:	00b57863          	bgeu	a0,a1,18664 <__copybits+0x64>
   18658:	00450513          	add	a0,a0,4
   1865c:	fe052e23          	sw	zero,-4(a0)
   18660:	feb56ce3          	bltu	a0,a1,18658 <__copybits+0x58>
   18664:	00008067          	ret

0000000000018668 <__any_on>:
   18668:	01452703          	lw	a4,20(a0)
   1866c:	4055d613          	sra	a2,a1,0x5
   18670:	01850693          	add	a3,a0,24
   18674:	02c75263          	bge	a4,a2,18698 <__any_on+0x30>
   18678:	00271713          	sll	a4,a4,0x2
   1867c:	00e687b3          	add	a5,a3,a4
   18680:	04f6f263          	bgeu	a3,a5,186c4 <__any_on+0x5c>
   18684:	ffc7a703          	lw	a4,-4(a5)
   18688:	ffc78793          	add	a5,a5,-4
   1868c:	fe070ae3          	beqz	a4,18680 <__any_on+0x18>
   18690:	00100513          	li	a0,1
   18694:	00008067          	ret
   18698:	00261793          	sll	a5,a2,0x2
   1869c:	00f687b3          	add	a5,a3,a5
   186a0:	fee650e3          	bge	a2,a4,18680 <__any_on+0x18>
   186a4:	01f5f593          	and	a1,a1,31
   186a8:	fc058ce3          	beqz	a1,18680 <__any_on+0x18>
   186ac:	0007a603          	lw	a2,0(a5)
   186b0:	00100513          	li	a0,1
   186b4:	00b6573b          	srlw	a4,a2,a1
   186b8:	00b7173b          	sllw	a4,a4,a1
   186bc:	fcc702e3          	beq	a4,a2,18680 <__any_on+0x18>
   186c0:	00008067          	ret
   186c4:	00000513          	li	a0,0
   186c8:	00008067          	ret

00000000000186cc <frexp>:
   186cc:	e20507d3          	fmv.x.d	a5,fa0
   186d0:	80000637          	lui	a2,0x80000
   186d4:	fff64613          	not	a2,a2
   186d8:	4207d693          	sra	a3,a5,0x20
   186dc:	00c6f733          	and	a4,a3,a2
   186e0:	00052023          	sw	zero,0(a0)
   186e4:	7ff005b7          	lui	a1,0x7ff00
   186e8:	06b77063          	bgeu	a4,a1,18748 <frexp+0x7c>
   186ec:	00f765b3          	or	a1,a4,a5
   186f0:	0005859b          	sext.w	a1,a1
   186f4:	04058a63          	beqz	a1,18748 <frexp+0x7c>
   186f8:	7ff005b7          	lui	a1,0x7ff00
   186fc:	00b6f5b3          	and	a1,a3,a1
   18700:	04058863          	beqz	a1,18750 <frexp+0x84>
   18704:	0006869b          	sext.w	a3,a3
   18708:	0007071b          	sext.w	a4,a4
   1870c:	00000593          	li	a1,0
   18710:	80100637          	lui	a2,0x80100
   18714:	fff60613          	add	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800db1df>
   18718:	00c6f6b3          	and	a3,a3,a2
   1871c:	3fe00637          	lui	a2,0x3fe00
   18720:	00c6e6b3          	or	a3,a3,a2
   18724:	4147571b          	sraw	a4,a4,0x14
   18728:	fff00613          	li	a2,-1
   1872c:	c027071b          	addw	a4,a4,-1022
   18730:	02065613          	srl	a2,a2,0x20
   18734:	00b7073b          	addw	a4,a4,a1
   18738:	02069693          	sll	a3,a3,0x20
   1873c:	00f677b3          	and	a5,a2,a5
   18740:	00e52023          	sw	a4,0(a0)
   18744:	00d7e7b3          	or	a5,a5,a3
   18748:	f2078553          	fmv.d.x	fa0,a5
   1874c:	00008067          	ret
   18750:	0000c717          	auipc	a4,0xc
   18754:	60073787          	fld	fa5,1536(a4) # 24d50 <__SDATA_BEGIN__+0x20>
   18758:	12f577d3          	fmul.d	fa5,fa0,fa5
   1875c:	fca00593          	li	a1,-54
   18760:	e20787d3          	fmv.x.d	a5,fa5
   18764:	4207d713          	sra	a4,a5,0x20
   18768:	00070693          	mv	a3,a4
   1876c:	00c77733          	and	a4,a4,a2
   18770:	fa1ff06f          	j	18710 <frexp+0x44>

0000000000018774 <_sbrk_r>:
   18774:	ff010113          	add	sp,sp,-16
   18778:	00813023          	sd	s0,0(sp)
   1877c:	00050413          	mv	s0,a0
   18780:	00058513          	mv	a0,a1
   18784:	7801a823          	sw	zero,1936(gp) # 24db0 <errno>
   18788:	00113423          	sd	ra,8(sp)
   1878c:	5f0070ef          	jal	1fd7c <_sbrk>
   18790:	fff00793          	li	a5,-1
   18794:	00f50a63          	beq	a0,a5,187a8 <_sbrk_r+0x34>
   18798:	00813083          	ld	ra,8(sp)
   1879c:	00013403          	ld	s0,0(sp)
   187a0:	01010113          	add	sp,sp,16
   187a4:	00008067          	ret
   187a8:	7901a783          	lw	a5,1936(gp) # 24db0 <errno>
   187ac:	fe0786e3          	beqz	a5,18798 <_sbrk_r+0x24>
   187b0:	00813083          	ld	ra,8(sp)
   187b4:	00f42023          	sw	a5,0(s0)
   187b8:	00013403          	ld	s0,0(sp)
   187bc:	01010113          	add	sp,sp,16
   187c0:	00008067          	ret

00000000000187c4 <_sprintf_r>:
   187c4:	f0010113          	add	sp,sp,-256
   187c8:	0d810e93          	add	t4,sp,216
   187cc:	0ef13423          	sd	a5,232(sp)
   187d0:	80000337          	lui	t1,0x80000
   187d4:	ffff07b7          	lui	a5,0xffff0
   187d8:	00058e13          	mv	t3,a1
   187dc:	fff34313          	not	t1,t1
   187e0:	0cd13c23          	sd	a3,216(sp)
   187e4:	20878793          	add	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb3e8>
   187e8:	01010593          	add	a1,sp,16
   187ec:	000e8693          	mv	a3,t4
   187f0:	0c113423          	sd	ra,200(sp)
   187f4:	02f12023          	sw	a5,32(sp)
   187f8:	0ee13023          	sd	a4,224(sp)
   187fc:	0f013823          	sd	a6,240(sp)
   18800:	0f113c23          	sd	a7,248(sp)
   18804:	01c13823          	sd	t3,16(sp)
   18808:	03c13423          	sd	t3,40(sp)
   1880c:	00612e23          	sw	t1,28(sp)
   18810:	02612823          	sw	t1,48(sp)
   18814:	01d13423          	sd	t4,8(sp)
   18818:	454000ef          	jal	18c6c <_svfprintf_r>
   1881c:	01013783          	ld	a5,16(sp)
   18820:	00078023          	sb	zero,0(a5)
   18824:	0c813083          	ld	ra,200(sp)
   18828:	10010113          	add	sp,sp,256
   1882c:	00008067          	ret

0000000000018830 <sprintf>:
   18830:	f0010113          	add	sp,sp,-256
   18834:	0d010e93          	add	t4,sp,208
   18838:	0ef13423          	sd	a5,232(sp)
   1883c:	80000337          	lui	t1,0x80000
   18840:	ffff07b7          	lui	a5,0xffff0
   18844:	00050e13          	mv	t3,a0
   18848:	fff34313          	not	t1,t1
   1884c:	0cc13823          	sd	a2,208(sp)
   18850:	0cd13c23          	sd	a3,216(sp)
   18854:	20878793          	add	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb3e8>
   18858:	00058613          	mv	a2,a1
   1885c:	000e8693          	mv	a3,t4
   18860:	01010593          	add	a1,sp,16
   18864:	7581b503          	ld	a0,1880(gp) # 24d78 <_impure_ptr>
   18868:	0c113423          	sd	ra,200(sp)
   1886c:	02f12023          	sw	a5,32(sp)
   18870:	0ee13023          	sd	a4,224(sp)
   18874:	0f013823          	sd	a6,240(sp)
   18878:	0f113c23          	sd	a7,248(sp)
   1887c:	01c13823          	sd	t3,16(sp)
   18880:	03c13423          	sd	t3,40(sp)
   18884:	00612e23          	sw	t1,28(sp)
   18888:	02612823          	sw	t1,48(sp)
   1888c:	01d13423          	sd	t4,8(sp)
   18890:	3dc000ef          	jal	18c6c <_svfprintf_r>
   18894:	01013783          	ld	a5,16(sp)
   18898:	00078023          	sb	zero,0(a5)
   1889c:	0c813083          	ld	ra,200(sp)
   188a0:	10010113          	add	sp,sp,256
   188a4:	00008067          	ret

00000000000188a8 <__sread>:
   188a8:	ff010113          	add	sp,sp,-16
   188ac:	00813023          	sd	s0,0(sp)
   188b0:	00058413          	mv	s0,a1
   188b4:	01259583          	lh	a1,18(a1) # 7ff00012 <__BSS_END__+0x7fedb1f2>
   188b8:	00113423          	sd	ra,8(sp)
   188bc:	705040ef          	jal	1d7c0 <_read_r>
   188c0:	02054063          	bltz	a0,188e0 <__sread+0x38>
   188c4:	09043783          	ld	a5,144(s0)
   188c8:	00813083          	ld	ra,8(sp)
   188cc:	00a787b3          	add	a5,a5,a0
   188d0:	08f43823          	sd	a5,144(s0)
   188d4:	00013403          	ld	s0,0(sp)
   188d8:	01010113          	add	sp,sp,16
   188dc:	00008067          	ret
   188e0:	01045783          	lhu	a5,16(s0)
   188e4:	fffff737          	lui	a4,0xfffff
   188e8:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda1df>
   188ec:	00e7f7b3          	and	a5,a5,a4
   188f0:	00813083          	ld	ra,8(sp)
   188f4:	00f41823          	sh	a5,16(s0)
   188f8:	00013403          	ld	s0,0(sp)
   188fc:	01010113          	add	sp,sp,16
   18900:	00008067          	ret

0000000000018904 <__seofread>:
   18904:	00000513          	li	a0,0
   18908:	00008067          	ret

000000000001890c <__swrite>:
   1890c:	01059783          	lh	a5,16(a1)
   18910:	fd010113          	add	sp,sp,-48
   18914:	02813023          	sd	s0,32(sp)
   18918:	00913c23          	sd	s1,24(sp)
   1891c:	01213823          	sd	s2,16(sp)
   18920:	01313423          	sd	s3,8(sp)
   18924:	02113423          	sd	ra,40(sp)
   18928:	1007f713          	and	a4,a5,256
   1892c:	00058413          	mv	s0,a1
   18930:	00050493          	mv	s1,a0
   18934:	00060913          	mv	s2,a2
   18938:	00068993          	mv	s3,a3
   1893c:	04071063          	bnez	a4,1897c <__swrite+0x70>
   18940:	fffff737          	lui	a4,0xfffff
   18944:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda1df>
   18948:	00e7f7b3          	and	a5,a5,a4
   1894c:	01241583          	lh	a1,18(s0)
   18950:	00f41823          	sh	a5,16(s0)
   18954:	02013403          	ld	s0,32(sp)
   18958:	02813083          	ld	ra,40(sp)
   1895c:	00098693          	mv	a3,s3
   18960:	00090613          	mv	a2,s2
   18964:	00813983          	ld	s3,8(sp)
   18968:	01013903          	ld	s2,16(sp)
   1896c:	00048513          	mv	a0,s1
   18970:	01813483          	ld	s1,24(sp)
   18974:	03010113          	add	sp,sp,48
   18978:	6890306f          	j	1c800 <_write_r>
   1897c:	01259583          	lh	a1,18(a1)
   18980:	00200693          	li	a3,2
   18984:	00000613          	li	a2,0
   18988:	2ad040ef          	jal	1d434 <_lseek_r>
   1898c:	01041783          	lh	a5,16(s0)
   18990:	fb1ff06f          	j	18940 <__swrite+0x34>

0000000000018994 <__sseek>:
   18994:	ff010113          	add	sp,sp,-16
   18998:	00813023          	sd	s0,0(sp)
   1899c:	00058413          	mv	s0,a1
   189a0:	01259583          	lh	a1,18(a1)
   189a4:	00113423          	sd	ra,8(sp)
   189a8:	28d040ef          	jal	1d434 <_lseek_r>
   189ac:	fff00793          	li	a5,-1
   189b0:	02f50863          	beq	a0,a5,189e0 <__sseek+0x4c>
   189b4:	01045783          	lhu	a5,16(s0)
   189b8:	00001737          	lui	a4,0x1
   189bc:	00813083          	ld	ra,8(sp)
   189c0:	00e7e7b3          	or	a5,a5,a4
   189c4:	0107979b          	sllw	a5,a5,0x10
   189c8:	4107d79b          	sraw	a5,a5,0x10
   189cc:	08a43823          	sd	a0,144(s0)
   189d0:	00f41823          	sh	a5,16(s0)
   189d4:	00013403          	ld	s0,0(sp)
   189d8:	01010113          	add	sp,sp,16
   189dc:	00008067          	ret
   189e0:	01045783          	lhu	a5,16(s0)
   189e4:	fffff737          	lui	a4,0xfffff
   189e8:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda1df>
   189ec:	00e7f7b3          	and	a5,a5,a4
   189f0:	0107979b          	sllw	a5,a5,0x10
   189f4:	4107d79b          	sraw	a5,a5,0x10
   189f8:	00813083          	ld	ra,8(sp)
   189fc:	00f41823          	sh	a5,16(s0)
   18a00:	00013403          	ld	s0,0(sp)
   18a04:	01010113          	add	sp,sp,16
   18a08:	00008067          	ret

0000000000018a0c <__sclose>:
   18a0c:	01259583          	lh	a1,18(a1)
   18a10:	0440406f          	j	1ca54 <_close_r>

0000000000018a14 <strcpy>:
   18a14:	00b567b3          	or	a5,a0,a1
   18a18:	0077f793          	and	a5,a5,7
   18a1c:	0a079663          	bnez	a5,18ac8 <strcpy+0xb4>
   18a20:	0005b703          	ld	a4,0(a1)
   18a24:	0000c697          	auipc	a3,0xc
   18a28:	3346b683          	ld	a3,820(a3) # 24d58 <mask>
   18a2c:	fff00613          	li	a2,-1
   18a30:	00d777b3          	and	a5,a4,a3
   18a34:	00d787b3          	add	a5,a5,a3
   18a38:	00e7e7b3          	or	a5,a5,a4
   18a3c:	00d7e7b3          	or	a5,a5,a3
   18a40:	0ac79263          	bne	a5,a2,18ae4 <strcpy+0xd0>
   18a44:	00050613          	mv	a2,a0
   18a48:	fff00813          	li	a6,-1
   18a4c:	00e63023          	sd	a4,0(a2) # 3fe00000 <__BSS_END__+0x3fddb1e0>
   18a50:	0085b703          	ld	a4,8(a1)
   18a54:	00858593          	add	a1,a1,8
   18a58:	00860613          	add	a2,a2,8
   18a5c:	00d777b3          	and	a5,a4,a3
   18a60:	00d787b3          	add	a5,a5,a3
   18a64:	00e7e7b3          	or	a5,a5,a4
   18a68:	00d7e7b3          	or	a5,a5,a3
   18a6c:	ff0780e3          	beq	a5,a6,18a4c <strcpy+0x38>
   18a70:	0005c783          	lbu	a5,0(a1)
   18a74:	0015c703          	lbu	a4,1(a1)
   18a78:	0025c683          	lbu	a3,2(a1)
   18a7c:	00f60023          	sb	a5,0(a2)
   18a80:	04078263          	beqz	a5,18ac4 <strcpy+0xb0>
   18a84:	00e600a3          	sb	a4,1(a2)
   18a88:	02070e63          	beqz	a4,18ac4 <strcpy+0xb0>
   18a8c:	0035c783          	lbu	a5,3(a1)
   18a90:	00d60123          	sb	a3,2(a2)
   18a94:	02068863          	beqz	a3,18ac4 <strcpy+0xb0>
   18a98:	0045c703          	lbu	a4,4(a1)
   18a9c:	00f601a3          	sb	a5,3(a2)
   18aa0:	02078263          	beqz	a5,18ac4 <strcpy+0xb0>
   18aa4:	0055c783          	lbu	a5,5(a1)
   18aa8:	00e60223          	sb	a4,4(a2)
   18aac:	00070c63          	beqz	a4,18ac4 <strcpy+0xb0>
   18ab0:	0065c703          	lbu	a4,6(a1)
   18ab4:	00f602a3          	sb	a5,5(a2)
   18ab8:	00078663          	beqz	a5,18ac4 <strcpy+0xb0>
   18abc:	00e60323          	sb	a4,6(a2)
   18ac0:	02071663          	bnez	a4,18aec <strcpy+0xd8>
   18ac4:	00008067          	ret
   18ac8:	00050793          	mv	a5,a0
   18acc:	0005c703          	lbu	a4,0(a1)
   18ad0:	00178793          	add	a5,a5,1
   18ad4:	00158593          	add	a1,a1,1
   18ad8:	fee78fa3          	sb	a4,-1(a5)
   18adc:	fe0718e3          	bnez	a4,18acc <strcpy+0xb8>
   18ae0:	00008067          	ret
   18ae4:	00050613          	mv	a2,a0
   18ae8:	f89ff06f          	j	18a70 <strcpy+0x5c>
   18aec:	000603a3          	sb	zero,7(a2)
   18af0:	00008067          	ret

0000000000018af4 <strlen>:
   18af4:	00757793          	and	a5,a0,7
   18af8:	00050713          	mv	a4,a0
   18afc:	06079c63          	bnez	a5,18b74 <strlen+0x80>
   18b00:	0000c697          	auipc	a3,0xc
   18b04:	2586b683          	ld	a3,600(a3) # 24d58 <mask>
   18b08:	fff00593          	li	a1,-1
   18b0c:	00073603          	ld	a2,0(a4)
   18b10:	00870713          	add	a4,a4,8
   18b14:	00d677b3          	and	a5,a2,a3
   18b18:	00d787b3          	add	a5,a5,a3
   18b1c:	00c7e7b3          	or	a5,a5,a2
   18b20:	00d7e7b3          	or	a5,a5,a3
   18b24:	feb784e3          	beq	a5,a1,18b0c <strlen+0x18>
   18b28:	ff874683          	lbu	a3,-8(a4)
   18b2c:	40a707b3          	sub	a5,a4,a0
   18b30:	06068463          	beqz	a3,18b98 <strlen+0xa4>
   18b34:	ff974683          	lbu	a3,-7(a4)
   18b38:	04068c63          	beqz	a3,18b90 <strlen+0x9c>
   18b3c:	ffa74683          	lbu	a3,-6(a4)
   18b40:	06068463          	beqz	a3,18ba8 <strlen+0xb4>
   18b44:	ffb74683          	lbu	a3,-5(a4)
   18b48:	04068c63          	beqz	a3,18ba0 <strlen+0xac>
   18b4c:	ffc74683          	lbu	a3,-4(a4)
   18b50:	06068063          	beqz	a3,18bb0 <strlen+0xbc>
   18b54:	ffd74683          	lbu	a3,-3(a4)
   18b58:	06068063          	beqz	a3,18bb8 <strlen+0xc4>
   18b5c:	ffe74503          	lbu	a0,-2(a4)
   18b60:	00a03533          	snez	a0,a0
   18b64:	00f50533          	add	a0,a0,a5
   18b68:	ffe50513          	add	a0,a0,-2
   18b6c:	00008067          	ret
   18b70:	f80688e3          	beqz	a3,18b00 <strlen+0xc>
   18b74:	00074783          	lbu	a5,0(a4)
   18b78:	00170713          	add	a4,a4,1
   18b7c:	00777693          	and	a3,a4,7
   18b80:	fe0798e3          	bnez	a5,18b70 <strlen+0x7c>
   18b84:	40a70733          	sub	a4,a4,a0
   18b88:	fff70513          	add	a0,a4,-1
   18b8c:	00008067          	ret
   18b90:	ff978513          	add	a0,a5,-7
   18b94:	00008067          	ret
   18b98:	ff878513          	add	a0,a5,-8
   18b9c:	00008067          	ret
   18ba0:	ffb78513          	add	a0,a5,-5
   18ba4:	00008067          	ret
   18ba8:	ffa78513          	add	a0,a5,-6
   18bac:	00008067          	ret
   18bb0:	ffc78513          	add	a0,a5,-4
   18bb4:	00008067          	ret
   18bb8:	ffd78513          	add	a0,a5,-3
   18bbc:	00008067          	ret

0000000000018bc0 <strncpy>:
   18bc0:	00b567b3          	or	a5,a0,a1
   18bc4:	0077f793          	and	a5,a5,7
   18bc8:	00050713          	mv	a4,a0
   18bcc:	06079a63          	bnez	a5,18c40 <strncpy+0x80>
   18bd0:	00700793          	li	a5,7
   18bd4:	06c7f663          	bgeu	a5,a2,18c40 <strncpy+0x80>
   18bd8:	0000c317          	auipc	t1,0xc
   18bdc:	15833303          	ld	t1,344(t1) # 24d30 <__SDATA_BEGIN__>
   18be0:	0000c897          	auipc	a7,0xc
   18be4:	1588b883          	ld	a7,344(a7) # 24d38 <__SDATA_BEGIN__+0x8>
   18be8:	00700e13          	li	t3,7
   18bec:	0180006f          	j	18c04 <strncpy+0x44>
   18bf0:	00d73023          	sd	a3,0(a4)
   18bf4:	ff860613          	add	a2,a2,-8
   18bf8:	00870713          	add	a4,a4,8
   18bfc:	00858593          	add	a1,a1,8
   18c00:	04ce7063          	bgeu	t3,a2,18c40 <strncpy+0x80>
   18c04:	0005b683          	ld	a3,0(a1)
   18c08:	006687b3          	add	a5,a3,t1
   18c0c:	fff6c813          	not	a6,a3
   18c10:	0107f7b3          	and	a5,a5,a6
   18c14:	0117f7b3          	and	a5,a5,a7
   18c18:	fc078ce3          	beqz	a5,18bf0 <strncpy+0x30>
   18c1c:	00158593          	add	a1,a1,1
   18c20:	00170793          	add	a5,a4,1
   18c24:	02060463          	beqz	a2,18c4c <strncpy+0x8c>
   18c28:	fff5c683          	lbu	a3,-1(a1)
   18c2c:	fff60813          	add	a6,a2,-1
   18c30:	fed78fa3          	sb	a3,-1(a5)
   18c34:	00068e63          	beqz	a3,18c50 <strncpy+0x90>
   18c38:	00078713          	mv	a4,a5
   18c3c:	00080613          	mv	a2,a6
   18c40:	00158593          	add	a1,a1,1
   18c44:	00170793          	add	a5,a4,1
   18c48:	fe0610e3          	bnez	a2,18c28 <strncpy+0x68>
   18c4c:	00008067          	ret
   18c50:	00c70733          	add	a4,a4,a2
   18c54:	00080a63          	beqz	a6,18c68 <strncpy+0xa8>
   18c58:	00178793          	add	a5,a5,1
   18c5c:	fe078fa3          	sb	zero,-1(a5)
   18c60:	fee79ce3          	bne	a5,a4,18c58 <strncpy+0x98>
   18c64:	00008067          	ret
   18c68:	00008067          	ret

0000000000018c6c <_svfprintf_r>:
   18c6c:	d9010113          	add	sp,sp,-624
   18c70:	26113423          	sd	ra,616(sp)
   18c74:	26813023          	sd	s0,608(sp)
   18c78:	24913c23          	sd	s1,600(sp)
   18c7c:	00058413          	mv	s0,a1
   18c80:	25213823          	sd	s2,592(sp)
   18c84:	00b13823          	sd	a1,16(sp)
   18c88:	00060913          	mv	s2,a2
   18c8c:	00068493          	mv	s1,a3
   18c90:	25313423          	sd	s3,584(sp)
   18c94:	25413023          	sd	s4,576(sp)
   18c98:	23513c23          	sd	s5,568(sp)
   18c9c:	23613823          	sd	s6,560(sp)
   18ca0:	23713423          	sd	s7,552(sp)
   18ca4:	23813023          	sd	s8,544(sp)
   18ca8:	21913c23          	sd	s9,536(sp)
   18cac:	21a13823          	sd	s10,528(sp)
   18cb0:	21b13423          	sd	s11,520(sp)
   18cb4:	00a13423          	sd	a0,8(sp)
   18cb8:	c6dfd0ef          	jal	16924 <_localeconv_r>
   18cbc:	00053783          	ld	a5,0(a0)
   18cc0:	00078513          	mv	a0,a5
   18cc4:	04f13823          	sd	a5,80(sp)
   18cc8:	e2dff0ef          	jal	18af4 <strlen>
   18ccc:	01045703          	lhu	a4,16(s0)
   18cd0:	0e013823          	sd	zero,240(sp)
   18cd4:	0e013c23          	sd	zero,248(sp)
   18cd8:	08077713          	and	a4,a4,128
   18cdc:	04a13423          	sd	a0,72(sp)
   18ce0:	00070863          	beqz	a4,18cf0 <_svfprintf_r+0x84>
   18ce4:	01843703          	ld	a4,24(s0)
   18ce8:	00071463          	bnez	a4,18cf0 <_svfprintf_r+0x84>
   18cec:	41c0106f          	j	1a108 <_svfprintf_r+0x149c>
   18cf0:	00090a93          	mv	s5,s2
   18cf4:	000ac703          	lbu	a4,0(s5)
   18cf8:	18010793          	add	a5,sp,384
   18cfc:	10f13023          	sd	a5,256(sp)
   18d00:	10013823          	sd	zero,272(sp)
   18d04:	10012423          	sw	zero,264(sp)
   18d08:	02013823          	sd	zero,48(sp)
   18d0c:	04013c23          	sd	zero,88(sp)
   18d10:	06013023          	sd	zero,96(sp)
   18d14:	06013423          	sd	zero,104(sp)
   18d18:	06013823          	sd	zero,112(sp)
   18d1c:	06013c23          	sd	zero,120(sp)
   18d20:	00013c23          	sd	zero,24(sp)
   18d24:	01000d93          	li	s11,16
   18d28:	00078413          	mv	s0,a5
   18d2c:	00048a13          	mv	s4,s1
   18d30:	24070463          	beqz	a4,18f78 <_svfprintf_r+0x30c>
   18d34:	000a8993          	mv	s3,s5
   18d38:	02500693          	li	a3,37
   18d3c:	2ad70663          	beq	a4,a3,18fe8 <_svfprintf_r+0x37c>
   18d40:	0019c703          	lbu	a4,1(s3)
   18d44:	00198993          	add	s3,s3,1
   18d48:	fe071ae3          	bnez	a4,18d3c <_svfprintf_r+0xd0>
   18d4c:	41598b3b          	subw	s6,s3,s5
   18d50:	220b0463          	beqz	s6,18f78 <_svfprintf_r+0x30c>
   18d54:	10812703          	lw	a4,264(sp)
   18d58:	11013d03          	ld	s10,272(sp)
   18d5c:	01543023          	sd	s5,0(s0)
   18d60:	0017069b          	addw	a3,a4,1
   18d64:	016d0d33          	add	s10,s10,s6
   18d68:	01643423          	sd	s6,8(s0)
   18d6c:	11a13823          	sd	s10,272(sp)
   18d70:	10d12423          	sw	a3,264(sp)
   18d74:	00700713          	li	a4,7
   18d78:	01040413          	add	s0,s0,16
   18d7c:	26d74e63          	blt	a4,a3,18ff8 <_svfprintf_r+0x38c>
   18d80:	01813783          	ld	a5,24(sp)
   18d84:	0009c703          	lbu	a4,0(s3)
   18d88:	016787bb          	addw	a5,a5,s6
   18d8c:	00f13c23          	sd	a5,24(sp)
   18d90:	1e070463          	beqz	a4,18f78 <_svfprintf_r+0x30c>
   18d94:	fff00e13          	li	t3,-1
   18d98:	0019ce83          	lbu	t4,1(s3)
   18d9c:	0c0107a3          	sb	zero,207(sp)
   18da0:	00198993          	add	s3,s3,1
   18da4:	00000493          	li	s1,0
   18da8:	00000913          	li	s2,0
   18dac:	05a00b13          	li	s6,90
   18db0:	000e0b93          	mv	s7,t3
   18db4:	00198993          	add	s3,s3,1
   18db8:	000e8e9b          	sext.w	t4,t4
   18dbc:	fe0e879b          	addw	a5,t4,-32
   18dc0:	0007871b          	sext.w	a4,a5
   18dc4:	06eb6063          	bltu	s6,a4,18e24 <_svfprintf_r+0x1b8>
   18dc8:	02079713          	sll	a4,a5,0x20
   18dcc:	01e75793          	srl	a5,a4,0x1e
   18dd0:	00009717          	auipc	a4,0x9
   18dd4:	6a070713          	add	a4,a4,1696 # 22470 <__mprec_tens+0xc8>
   18dd8:	00e787b3          	add	a5,a5,a4
   18ddc:	0007a783          	lw	a5,0(a5)
   18de0:	00e787b3          	add	a5,a5,a4
   18de4:	00078067          	jr	a5
   18de8:	00000493          	li	s1,0
   18dec:	00900693          	li	a3,9
   18df0:	0009c703          	lbu	a4,0(s3)
   18df4:	0024979b          	sllw	a5,s1,0x2
   18df8:	009784bb          	addw	s1,a5,s1
   18dfc:	fd0e8e9b          	addw	t4,t4,-48
   18e00:	0014949b          	sllw	s1,s1,0x1
   18e04:	fd07079b          	addw	a5,a4,-48
   18e08:	009e84bb          	addw	s1,t4,s1
   18e0c:	00198993          	add	s3,s3,1
   18e10:	00070e9b          	sext.w	t4,a4
   18e14:	fcf6fee3          	bgeu	a3,a5,18df0 <_svfprintf_r+0x184>
   18e18:	fe0e879b          	addw	a5,t4,-32
   18e1c:	0007871b          	sext.w	a4,a5
   18e20:	faeb74e3          	bgeu	s6,a4,18dc8 <_svfprintf_r+0x15c>
   18e24:	140e8a63          	beqz	t4,18f78 <_svfprintf_r+0x30c>
   18e28:	11d10c23          	sb	t4,280(sp)
   18e2c:	0c0107a3          	sb	zero,207(sp)
   18e30:	00100b93          	li	s7,1
   18e34:	00100c93          	li	s9,1
   18e38:	11810a93          	add	s5,sp,280
   18e3c:	02013023          	sd	zero,32(sp)
   18e40:	00000e13          	li	t3,0
   18e44:	04013023          	sd	zero,64(sp)
   18e48:	02013c23          	sd	zero,56(sp)
   18e4c:	02013423          	sd	zero,40(sp)
   18e50:	00297293          	and	t0,s2,2
   18e54:	00028463          	beqz	t0,18e5c <_svfprintf_r+0x1f0>
   18e58:	002b8b9b          	addw	s7,s7,2
   18e5c:	08497c13          	and	s8,s2,132
   18e60:	000c1663          	bnez	s8,18e6c <_svfprintf_r+0x200>
   18e64:	41748d3b          	subw	s10,s1,s7
   18e68:	3ba048e3          	bgtz	s10,19a18 <_svfprintf_r+0xdac>
   18e6c:	0cf14603          	lbu	a2,207(sp)
   18e70:	11013d03          	ld	s10,272(sp)
   18e74:	02060c63          	beqz	a2,18eac <_svfprintf_r+0x240>
   18e78:	10812603          	lw	a2,264(sp)
   18e7c:	0cf10593          	add	a1,sp,207
   18e80:	00b43023          	sd	a1,0(s0)
   18e84:	0016061b          	addw	a2,a2,1
   18e88:	00100593          	li	a1,1
   18e8c:	001d0d13          	add	s10,s10,1
   18e90:	00b43423          	sd	a1,8(s0)
   18e94:	10c12423          	sw	a2,264(sp)
   18e98:	0006059b          	sext.w	a1,a2
   18e9c:	11a13823          	sd	s10,272(sp)
   18ea0:	00700613          	li	a2,7
   18ea4:	01040413          	add	s0,s0,16
   18ea8:	26b64263          	blt	a2,a1,1910c <_svfprintf_r+0x4a0>
   18eac:	02028c63          	beqz	t0,18ee4 <_svfprintf_r+0x278>
   18eb0:	10812603          	lw	a2,264(sp)
   18eb4:	00200593          	li	a1,2
   18eb8:	002d0d13          	add	s10,s10,2
   18ebc:	0016061b          	addw	a2,a2,1
   18ec0:	0d010793          	add	a5,sp,208
   18ec4:	00b43423          	sd	a1,8(s0)
   18ec8:	00f43023          	sd	a5,0(s0)
   18ecc:	0006059b          	sext.w	a1,a2
   18ed0:	10c12423          	sw	a2,264(sp)
   18ed4:	11a13823          	sd	s10,272(sp)
   18ed8:	00700613          	li	a2,7
   18edc:	01040413          	add	s0,s0,16
   18ee0:	44b64ce3          	blt	a2,a1,19b38 <_svfprintf_r+0xecc>
   18ee4:	08000613          	li	a2,128
   18ee8:	10cc0ee3          	beq	s8,a2,19804 <_svfprintf_r+0xb98>
   18eec:	419e0b3b          	subw	s6,t3,s9
   18ef0:	216046e3          	bgtz	s6,198fc <_svfprintf_r+0xc90>
   18ef4:	10097613          	and	a2,s2,256
   18ef8:	78061e63          	bnez	a2,19694 <_svfprintf_r+0xa28>
   18efc:	10812583          	lw	a1,264(sp)
   18f00:	01ac8633          	add	a2,s9,s10
   18f04:	01543023          	sd	s5,0(s0)
   18f08:	0015869b          	addw	a3,a1,1
   18f0c:	01943423          	sd	s9,8(s0)
   18f10:	10c13823          	sd	a2,272(sp)
   18f14:	10d12423          	sw	a3,264(sp)
   18f18:	00700793          	li	a5,7
   18f1c:	30d7c263          	blt	a5,a3,19220 <_svfprintf_r+0x5b4>
   18f20:	01040413          	add	s0,s0,16
   18f24:	00497913          	and	s2,s2,4
   18f28:	00090663          	beqz	s2,18f34 <_svfprintf_r+0x2c8>
   18f2c:	4174893b          	subw	s2,s1,s7
   18f30:	43204ce3          	bgtz	s2,19b68 <_svfprintf_r+0xefc>
   18f34:	00048793          	mv	a5,s1
   18f38:	0174d463          	bge	s1,s7,18f40 <_svfprintf_r+0x2d4>
   18f3c:	000b8793          	mv	a5,s7
   18f40:	01813703          	ld	a4,24(sp)
   18f44:	00e787bb          	addw	a5,a5,a4
   18f48:	00f13c23          	sd	a5,24(sp)
   18f4c:	26061ce3          	bnez	a2,199c4 <_svfprintf_r+0xd58>
   18f50:	02013783          	ld	a5,32(sp)
   18f54:	10012423          	sw	zero,264(sp)
   18f58:	00078863          	beqz	a5,18f68 <_svfprintf_r+0x2fc>
   18f5c:	02013583          	ld	a1,32(sp)
   18f60:	00813503          	ld	a0,8(sp)
   18f64:	8b9fa0ef          	jal	1381c <_free_r>
   18f68:	18010413          	add	s0,sp,384
   18f6c:	00098a93          	mv	s5,s3
   18f70:	000ac703          	lbu	a4,0(s5)
   18f74:	dc0710e3          	bnez	a4,18d34 <_svfprintf_r+0xc8>
   18f78:	11013783          	ld	a5,272(sp)
   18f7c:	00078463          	beqz	a5,18f84 <_svfprintf_r+0x318>
   18f80:	3250106f          	j	1aaa4 <_svfprintf_r+0x1e38>
   18f84:	01013783          	ld	a5,16(sp)
   18f88:	0107d783          	lhu	a5,16(a5)
   18f8c:	0407f793          	and	a5,a5,64
   18f90:	00078463          	beqz	a5,18f98 <_svfprintf_r+0x32c>
   18f94:	1c80206f          	j	1b15c <_svfprintf_r+0x24f0>
   18f98:	26813083          	ld	ra,616(sp)
   18f9c:	26013403          	ld	s0,608(sp)
   18fa0:	01813503          	ld	a0,24(sp)
   18fa4:	25813483          	ld	s1,600(sp)
   18fa8:	25013903          	ld	s2,592(sp)
   18fac:	24813983          	ld	s3,584(sp)
   18fb0:	24013a03          	ld	s4,576(sp)
   18fb4:	23813a83          	ld	s5,568(sp)
   18fb8:	23013b03          	ld	s6,560(sp)
   18fbc:	22813b83          	ld	s7,552(sp)
   18fc0:	22013c03          	ld	s8,544(sp)
   18fc4:	21813c83          	ld	s9,536(sp)
   18fc8:	21013d03          	ld	s10,528(sp)
   18fcc:	20813d83          	ld	s11,520(sp)
   18fd0:	27010113          	add	sp,sp,624
   18fd4:	00008067          	ret
   18fd8:	01096913          	or	s2,s2,16
   18fdc:	0009ce83          	lbu	t4,0(s3)
   18fe0:	0009091b          	sext.w	s2,s2
   18fe4:	dd1ff06f          	j	18db4 <_svfprintf_r+0x148>
   18fe8:	41598b3b          	subw	s6,s3,s5
   18fec:	d60b14e3          	bnez	s6,18d54 <_svfprintf_r+0xe8>
   18ff0:	0009c703          	lbu	a4,0(s3)
   18ff4:	d9dff06f          	j	18d90 <_svfprintf_r+0x124>
   18ff8:	01013583          	ld	a1,16(sp)
   18ffc:	00813503          	ld	a0,8(sp)
   19000:	10010613          	add	a2,sp,256
   19004:	054050ef          	jal	1e058 <__ssprint_r>
   19008:	f6051ee3          	bnez	a0,18f84 <_svfprintf_r+0x318>
   1900c:	18010413          	add	s0,sp,384
   19010:	d71ff06f          	j	18d80 <_svfprintf_r+0x114>
   19014:	00897713          	and	a4,s2,8
   19018:	000b8e13          	mv	t3,s7
   1901c:	720718e3          	bnez	a4,19f4c <_svfprintf_r+0x12e0>
   19020:	000a3507          	fld	fa0,0(s4)
   19024:	03d13023          	sd	t4,32(sp)
   19028:	03713423          	sd	s7,40(sp)
   1902c:	7d4080ef          	jal	21800 <__extenddftf2>
   19030:	02813e03          	ld	t3,40(sp)
   19034:	02013e83          	ld	t4,32(sp)
   19038:	008a0a13          	add	s4,s4,8
   1903c:	00050713          	mv	a4,a0
   19040:	0f010513          	add	a0,sp,240
   19044:	03c13423          	sd	t3,40(sp)
   19048:	03d13023          	sd	t4,32(sp)
   1904c:	0ee13823          	sd	a4,240(sp)
   19050:	0eb13c23          	sd	a1,248(sp)
   19054:	861fd0ef          	jal	168b4 <_ldcheck>
   19058:	0ca12c23          	sw	a0,216(sp)
   1905c:	00200713          	li	a4,2
   19060:	02013e83          	ld	t4,32(sp)
   19064:	02813e03          	ld	t3,40(sp)
   19068:	00e51463          	bne	a0,a4,19070 <_svfprintf_r+0x404>
   1906c:	5300106f          	j	1a59c <_svfprintf_r+0x1930>
   19070:	00100713          	li	a4,1
   19074:	00e51463          	bne	a0,a4,1907c <_svfprintf_r+0x410>
   19078:	6d80106f          	j	1a750 <_svfprintf_r+0x1ae4>
   1907c:	06100713          	li	a4,97
   19080:	00ee9463          	bne	t4,a4,19088 <_svfprintf_r+0x41c>
   19084:	5890106f          	j	1ae0c <_svfprintf_r+0x21a0>
   19088:	04100713          	li	a4,65
   1908c:	00ee9463          	bne	t4,a4,19094 <_svfprintf_r+0x428>
   19090:	7450106f          	j	1afd4 <_svfprintf_r+0x2368>
   19094:	fff00713          	li	a4,-1
   19098:	00ee1463          	bne	t3,a4,190a0 <_svfprintf_r+0x434>
   1909c:	2710106f          	j	1ab0c <_svfprintf_r+0x1ea0>
   190a0:	fdfef713          	and	a4,t4,-33
   190a4:	04700693          	li	a3,71
   190a8:	00d71463          	bne	a4,a3,190b0 <_svfprintf_r+0x444>
   190ac:	0cc0206f          	j	1b178 <_svfprintf_r+0x250c>
   190b0:	10096713          	or	a4,s2,256
   190b4:	0f813b83          	ld	s7,248(sp)
   190b8:	0007079b          	sext.w	a5,a4
   190bc:	08f13023          	sd	a5,128(sp)
   190c0:	03213c23          	sd	s2,56(sp)
   190c4:	0f013c03          	ld	s8,240(sp)
   190c8:	000bd463          	bgez	s7,190d0 <_svfprintf_r+0x464>
   190cc:	6010106f          	j	1aecc <_svfprintf_r+0x2260>
   190d0:	08013423          	sd	zero,136(sp)
   190d4:	02013023          	sd	zero,32(sp)
   190d8:	fbfe871b          	addw	a4,t4,-65
   190dc:	0007061b          	sext.w	a2,a4
   190e0:	02500693          	li	a3,37
   190e4:	00c6f463          	bgeu	a3,a2,190ec <_svfprintf_r+0x480>
   190e8:	7980106f          	j	1a880 <_svfprintf_r+0x1c14>
   190ec:	02071613          	sll	a2,a4,0x20
   190f0:	00009697          	auipc	a3,0x9
   190f4:	4ec68693          	add	a3,a3,1260 # 225dc <__mprec_tens+0x234>
   190f8:	01e65713          	srl	a4,a2,0x1e
   190fc:	00d70733          	add	a4,a4,a3
   19100:	00072703          	lw	a4,0(a4)
   19104:	00d70733          	add	a4,a4,a3
   19108:	00070067          	jr	a4
   1910c:	01013583          	ld	a1,16(sp)
   19110:	00813503          	ld	a0,8(sp)
   19114:	10010613          	add	a2,sp,256
   19118:	09c13823          	sd	t3,144(sp)
   1911c:	09d13423          	sd	t4,136(sp)
   19120:	08513023          	sd	t0,128(sp)
   19124:	735040ef          	jal	1e058 <__ssprint_r>
   19128:	0a0518e3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   1912c:	11013d03          	ld	s10,272(sp)
   19130:	09013e03          	ld	t3,144(sp)
   19134:	08813e83          	ld	t4,136(sp)
   19138:	08013283          	ld	t0,128(sp)
   1913c:	18010413          	add	s0,sp,384
   19140:	d6dff06f          	j	18eac <_svfprintf_r+0x240>
   19144:	03013783          	ld	a5,48(sp)
   19148:	00100693          	li	a3,1
   1914c:	01040c13          	add	s8,s0,16
   19150:	46f6d6e3          	bge	a3,a5,19dbc <_svfprintf_r+0x1150>
   19154:	10812583          	lw	a1,264(sp)
   19158:	00100693          	li	a3,1
   1915c:	001d0d13          	add	s10,s10,1
   19160:	0015859b          	addw	a1,a1,1
   19164:	00d43423          	sd	a3,8(s0)
   19168:	01543023          	sd	s5,0(s0)
   1916c:	11a13823          	sd	s10,272(sp)
   19170:	0005869b          	sext.w	a3,a1
   19174:	10b12423          	sw	a1,264(sp)
   19178:	00700613          	li	a2,7
   1917c:	54d64ee3          	blt	a2,a3,19ed8 <_svfprintf_r+0x126c>
   19180:	04813783          	ld	a5,72(sp)
   19184:	05013703          	ld	a4,80(sp)
   19188:	0016841b          	addw	s0,a3,1
   1918c:	01a78cb3          	add	s9,a5,s10
   19190:	00ec3023          	sd	a4,0(s8)
   19194:	00fc3423          	sd	a5,8(s8)
   19198:	11913823          	sd	s9,272(sp)
   1919c:	10812423          	sw	s0,264(sp)
   191a0:	00700693          	li	a3,7
   191a4:	010c0c13          	add	s8,s8,16
   191a8:	5486cae3          	blt	a3,s0,19efc <_svfprintf_r+0x1290>
   191ac:	0f013503          	ld	a0,240(sp)
   191b0:	0f813583          	ld	a1,248(sp)
   191b4:	00000613          	li	a2,0
   191b8:	00000693          	li	a3,0
   191bc:	4f1060ef          	jal	1feac <__eqtf2>
   191c0:	03013783          	ld	a5,48(sp)
   191c4:	fff78b1b          	addw	s6,a5,-1
   191c8:	440504e3          	beqz	a0,19e10 <_svfprintf_r+0x11a4>
   191cc:	001a8793          	add	a5,s5,1
   191d0:	0014041b          	addw	s0,s0,1
   191d4:	016c8cb3          	add	s9,s9,s6
   191d8:	00fc3023          	sd	a5,0(s8)
   191dc:	016c3423          	sd	s6,8(s8)
   191e0:	11913823          	sd	s9,272(sp)
   191e4:	10812423          	sw	s0,264(sp)
   191e8:	00700793          	li	a5,7
   191ec:	4087c0e3          	blt	a5,s0,19dec <_svfprintf_r+0x1180>
   191f0:	010c0c13          	add	s8,s8,16
   191f4:	06013703          	ld	a4,96(sp)
   191f8:	0014069b          	addw	a3,s0,1
   191fc:	0e010793          	add	a5,sp,224
   19200:	01970633          	add	a2,a4,s9
   19204:	00fc3023          	sd	a5,0(s8)
   19208:	00ec3423          	sd	a4,8(s8)
   1920c:	10c13823          	sd	a2,272(sp)
   19210:	10d12423          	sw	a3,264(sp)
   19214:	00700793          	li	a5,7
   19218:	010c0413          	add	s0,s8,16
   1921c:	d0d7d4e3          	bge	a5,a3,18f24 <_svfprintf_r+0x2b8>
   19220:	01013583          	ld	a1,16(sp)
   19224:	00813503          	ld	a0,8(sp)
   19228:	10010613          	add	a2,sp,256
   1922c:	62d040ef          	jal	1e058 <__ssprint_r>
   19230:	7a051463          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19234:	11013603          	ld	a2,272(sp)
   19238:	18010413          	add	s0,sp,384
   1923c:	ce9ff06f          	j	18f24 <_svfprintf_r+0x2b8>
   19240:	000a2783          	lw	a5,0(s4)
   19244:	0c0107a3          	sb	zero,207(sp)
   19248:	008a0a13          	add	s4,s4,8
   1924c:	10f10c23          	sb	a5,280(sp)
   19250:	00100b93          	li	s7,1
   19254:	00100c93          	li	s9,1
   19258:	11810a93          	add	s5,sp,280
   1925c:	be1ff06f          	j	18e3c <_svfprintf_r+0x1d0>
   19260:	000a3a83          	ld	s5,0(s4)
   19264:	0c0107a3          	sb	zero,207(sp)
   19268:	008a0a13          	add	s4,s4,8
   1926c:	000a9463          	bnez	s5,19274 <_svfprintf_r+0x608>
   19270:	38c0106f          	j	1a5fc <_svfprintf_r+0x1990>
   19274:	fff00713          	li	a4,-1
   19278:	74eb8ae3          	beq	s7,a4,1a1cc <_svfprintf_r+0x1560>
   1927c:	000b8613          	mv	a2,s7
   19280:	00000593          	li	a1,0
   19284:	000a8513          	mv	a0,s5
   19288:	03d13c23          	sd	t4,56(sp)
   1928c:	03713423          	sd	s7,40(sp)
   19290:	8f4fe0ef          	jal	17384 <memchr>
   19294:	02a13023          	sd	a0,32(sp)
   19298:	02813e03          	ld	t3,40(sp)
   1929c:	03813e83          	ld	t4,56(sp)
   192a0:	00051463          	bnez	a0,192a8 <_svfprintf_r+0x63c>
   192a4:	47d0106f          	j	1af20 <_svfprintf_r+0x22b4>
   192a8:	02013783          	ld	a5,32(sp)
   192ac:	0cf14603          	lbu	a2,207(sp)
   192b0:	02013023          	sd	zero,32(sp)
   192b4:	41578cbb          	subw	s9,a5,s5
   192b8:	fffcc713          	not	a4,s9
   192bc:	43f75713          	sra	a4,a4,0x3f
   192c0:	04013023          	sd	zero,64(sp)
   192c4:	02013c23          	sd	zero,56(sp)
   192c8:	02013423          	sd	zero,40(sp)
   192cc:	01977bb3          	and	s7,a4,s9
   192d0:	00000e13          	li	t3,0
   192d4:	b6060ee3          	beqz	a2,18e50 <_svfprintf_r+0x1e4>
   192d8:	001b8b9b          	addw	s7,s7,1
   192dc:	b75ff06f          	j	18e50 <_svfprintf_r+0x1e4>
   192e0:	000a2483          	lw	s1,0(s4)
   192e4:	008a0a13          	add	s4,s4,8
   192e8:	0c04d263          	bgez	s1,193ac <_svfprintf_r+0x740>
   192ec:	409004bb          	negw	s1,s1
   192f0:	00496913          	or	s2,s2,4
   192f4:	0009ce83          	lbu	t4,0(s3)
   192f8:	0009091b          	sext.w	s2,s2
   192fc:	ab9ff06f          	j	18db4 <_svfprintf_r+0x148>
   19300:	02b00793          	li	a5,43
   19304:	0009ce83          	lbu	t4,0(s3)
   19308:	0cf107a3          	sb	a5,207(sp)
   1930c:	aa9ff06f          	j	18db4 <_svfprintf_r+0x148>
   19310:	08096913          	or	s2,s2,128
   19314:	0009ce83          	lbu	t4,0(s3)
   19318:	0009091b          	sext.w	s2,s2
   1931c:	a99ff06f          	j	18db4 <_svfprintf_r+0x148>
   19320:	0009ce83          	lbu	t4,0(s3)
   19324:	02a00693          	li	a3,42
   19328:	00198793          	add	a5,s3,1
   1932c:	00de9463          	bne	t4,a3,19334 <_svfprintf_r+0x6c8>
   19330:	7710106f          	j	1b2a0 <_svfprintf_r+0x2634>
   19334:	fd0e871b          	addw	a4,t4,-48
   19338:	00900613          	li	a2,9
   1933c:	00078993          	mv	s3,a5
   19340:	00000b93          	li	s7,0
   19344:	00900693          	li	a3,9
   19348:	a6e66ae3          	bltu	a2,a4,18dbc <_svfprintf_r+0x150>
   1934c:	0009ce83          	lbu	t4,0(s3)
   19350:	002b979b          	sllw	a5,s7,0x2
   19354:	01778e3b          	addw	t3,a5,s7
   19358:	001e1e1b          	sllw	t3,t3,0x1
   1935c:	00ee0bbb          	addw	s7,t3,a4
   19360:	fd0e871b          	addw	a4,t4,-48
   19364:	00198993          	add	s3,s3,1
   19368:	fee6f2e3          	bgeu	a3,a4,1934c <_svfprintf_r+0x6e0>
   1936c:	a51ff06f          	j	18dbc <_svfprintf_r+0x150>
   19370:	00813c03          	ld	s8,8(sp)
   19374:	000c0513          	mv	a0,s8
   19378:	dacfd0ef          	jal	16924 <_localeconv_r>
   1937c:	00853783          	ld	a5,8(a0)
   19380:	00078513          	mv	a0,a5
   19384:	06f13c23          	sd	a5,120(sp)
   19388:	f6cff0ef          	jal	18af4 <strlen>
   1938c:	00050793          	mv	a5,a0
   19390:	000c0513          	mv	a0,s8
   19394:	06f13823          	sd	a5,112(sp)
   19398:	00078c13          	mv	s8,a5
   1939c:	d88fd0ef          	jal	16924 <_localeconv_r>
   193a0:	01053783          	ld	a5,16(a0)
   193a4:	06f13423          	sd	a5,104(sp)
   193a8:	3c0c1ae3          	bnez	s8,19f7c <_svfprintf_r+0x1310>
   193ac:	0009ce83          	lbu	t4,0(s3)
   193b0:	a05ff06f          	j	18db4 <_svfprintf_r+0x148>
   193b4:	00196913          	or	s2,s2,1
   193b8:	0009ce83          	lbu	t4,0(s3)
   193bc:	0009091b          	sext.w	s2,s2
   193c0:	9f5ff06f          	j	18db4 <_svfprintf_r+0x148>
   193c4:	0cf14783          	lbu	a5,207(sp)
   193c8:	0009ce83          	lbu	t4,0(s3)
   193cc:	9e0794e3          	bnez	a5,18db4 <_svfprintf_r+0x148>
   193d0:	02000793          	li	a5,32
   193d4:	0cf107a3          	sb	a5,207(sp)
   193d8:	9ddff06f          	j	18db4 <_svfprintf_r+0x148>
   193dc:	01096c13          	or	s8,s2,16
   193e0:	000b8e13          	mv	t3,s7
   193e4:	000c0c1b          	sext.w	s8,s8
   193e8:	020c7793          	and	a5,s8,32
   193ec:	008a0713          	add	a4,s4,8
   193f0:	08079463          	bnez	a5,19478 <_svfprintf_r+0x80c>
   193f4:	010c7793          	and	a5,s8,16
   193f8:	08079063          	bnez	a5,19478 <_svfprintf_r+0x80c>
   193fc:	040c7793          	and	a5,s8,64
   19400:	000a2b03          	lw	s6,0(s4)
   19404:	00079463          	bnez	a5,1940c <_svfprintf_r+0x7a0>
   19408:	2f80106f          	j	1a700 <_svfprintf_r+0x1a94>
   1940c:	030b1b13          	sll	s6,s6,0x30
   19410:	030b5b13          	srl	s6,s6,0x30
   19414:	00070a13          	mv	s4,a4
   19418:	00100793          	li	a5,1
   1941c:	00000713          	li	a4,0
   19420:	0ce107a3          	sb	a4,207(sp)
   19424:	fff00713          	li	a4,-1
   19428:	10ee0863          	beq	t3,a4,19538 <_svfprintf_r+0x8cc>
   1942c:	f7fc7913          	and	s2,s8,-129
   19430:	0009091b          	sext.w	s2,s2
   19434:	5a0b1c63          	bnez	s6,199ec <_svfprintf_r+0xd80>
   19438:	380e1063          	bnez	t3,197b8 <_svfprintf_r+0xb4c>
   1943c:	280798e3          	bnez	a5,19ecc <_svfprintf_r+0x1260>
   19440:	001c7c93          	and	s9,s8,1
   19444:	17c10a93          	add	s5,sp,380
   19448:	2e0c9ae3          	bnez	s9,19f3c <_svfprintf_r+0x12d0>
   1944c:	0cf14603          	lbu	a2,207(sp)
   19450:	000e0713          	mv	a4,t3
   19454:	019e5463          	bge	t3,s9,1945c <_svfprintf_r+0x7f0>
   19458:	000c8713          	mv	a4,s9
   1945c:	02013023          	sd	zero,32(sp)
   19460:	04013023          	sd	zero,64(sp)
   19464:	02013c23          	sd	zero,56(sp)
   19468:	02013423          	sd	zero,40(sp)
   1946c:	00070b9b          	sext.w	s7,a4
   19470:	e60614e3          	bnez	a2,192d8 <_svfprintf_r+0x66c>
   19474:	9ddff06f          	j	18e50 <_svfprintf_r+0x1e4>
   19478:	000a3b03          	ld	s6,0(s4)
   1947c:	00100793          	li	a5,1
   19480:	00070a13          	mv	s4,a4
   19484:	f99ff06f          	j	1941c <_svfprintf_r+0x7b0>
   19488:	00896913          	or	s2,s2,8
   1948c:	0009ce83          	lbu	t4,0(s3)
   19490:	0009091b          	sext.w	s2,s2
   19494:	921ff06f          	j	18db4 <_svfprintf_r+0x148>
   19498:	01096913          	or	s2,s2,16
   1949c:	000b8e13          	mv	t3,s7
   194a0:	0009091b          	sext.w	s2,s2
   194a4:	02097793          	and	a5,s2,32
   194a8:	008a0713          	add	a4,s4,8
   194ac:	06079063          	bnez	a5,1950c <_svfprintf_r+0x8a0>
   194b0:	01097793          	and	a5,s2,16
   194b4:	04079c63          	bnez	a5,1950c <_svfprintf_r+0x8a0>
   194b8:	04097793          	and	a5,s2,64
   194bc:	000a2b03          	lw	s6,0(s4)
   194c0:	00079463          	bnez	a5,194c8 <_svfprintf_r+0x85c>
   194c4:	2740106f          	j	1a738 <_svfprintf_r+0x1acc>
   194c8:	010b1b1b          	sllw	s6,s6,0x10
   194cc:	410b5b1b          	sraw	s6,s6,0x10
   194d0:	000b0793          	mv	a5,s6
   194d4:	0407c263          	bltz	a5,19518 <_svfprintf_r+0x8ac>
   194d8:	fff00793          	li	a5,-1
   194dc:	00090c13          	mv	s8,s2
   194e0:	00070a13          	mv	s4,a4
   194e4:	50fe0a63          	beq	t3,a5,199f8 <_svfprintf_r+0xd8c>
   194e8:	f7f97c13          	and	s8,s2,-129
   194ec:	000c0c1b          	sext.w	s8,s8
   194f0:	2c0b10e3          	bnez	s6,19fb0 <_svfprintf_r+0x1344>
   194f4:	000e0463          	beqz	t3,194fc <_svfprintf_r+0x890>
   194f8:	4cd0106f          	j	1b1c4 <_svfprintf_r+0x2558>
   194fc:	00000c93          	li	s9,0
   19500:	000c0913          	mv	s2,s8
   19504:	17c10a93          	add	s5,sp,380
   19508:	f45ff06f          	j	1944c <_svfprintf_r+0x7e0>
   1950c:	000a3783          	ld	a5,0(s4)
   19510:	00078b13          	mv	s6,a5
   19514:	fc07d2e3          	bgez	a5,194d8 <_svfprintf_r+0x86c>
   19518:	00070a13          	mv	s4,a4
   1951c:	02d00713          	li	a4,45
   19520:	0ce107a3          	sb	a4,207(sp)
   19524:	fff00713          	li	a4,-1
   19528:	41600b33          	neg	s6,s6
   1952c:	00090c13          	mv	s8,s2
   19530:	00100793          	li	a5,1
   19534:	eeee1ce3          	bne	t3,a4,1942c <_svfprintf_r+0x7c0>
   19538:	00100713          	li	a4,1
   1953c:	4ae78e63          	beq	a5,a4,199f8 <_svfprintf_r+0xd8c>
   19540:	00200713          	li	a4,2
   19544:	28e78663          	beq	a5,a4,197d0 <_svfprintf_r+0xb64>
   19548:	17c10b93          	add	s7,sp,380
   1954c:	000b8a93          	mv	s5,s7
   19550:	007b7713          	and	a4,s6,7
   19554:	03070713          	add	a4,a4,48
   19558:	feea8fa3          	sb	a4,-1(s5)
   1955c:	003b5b13          	srl	s6,s6,0x3
   19560:	000a8613          	mv	a2,s5
   19564:	fffa8a93          	add	s5,s5,-1
   19568:	fe0b14e3          	bnez	s6,19550 <_svfprintf_r+0x8e4>
   1956c:	001c7593          	and	a1,s8,1
   19570:	28058463          	beqz	a1,197f8 <_svfprintf_r+0xb8c>
   19574:	03000593          	li	a1,48
   19578:	28b70063          	beq	a4,a1,197f8 <_svfprintf_r+0xb8c>
   1957c:	ffe60613          	add	a2,a2,-2
   19580:	feba8fa3          	sb	a1,-1(s5)
   19584:	40cb8cbb          	subw	s9,s7,a2
   19588:	000c0913          	mv	s2,s8
   1958c:	00060a93          	mv	s5,a2
   19590:	ebdff06f          	j	1944c <_svfprintf_r+0x7e0>
   19594:	01096913          	or	s2,s2,16
   19598:	000b8e13          	mv	t3,s7
   1959c:	0009091b          	sext.w	s2,s2
   195a0:	02097793          	and	a5,s2,32
   195a4:	008a0713          	add	a4,s4,8
   195a8:	00079663          	bnez	a5,195b4 <_svfprintf_r+0x948>
   195ac:	01097793          	and	a5,s2,16
   195b0:	1a078ae3          	beqz	a5,19f64 <_svfprintf_r+0x12f8>
   195b4:	000a3b03          	ld	s6,0(s4)
   195b8:	bff97c13          	and	s8,s2,-1025
   195bc:	000c0c1b          	sext.w	s8,s8
   195c0:	00070a13          	mv	s4,a4
   195c4:	00000793          	li	a5,0
   195c8:	e55ff06f          	j	1941c <_svfprintf_r+0x7b0>
   195cc:	0009ce83          	lbu	t4,0(s3)
   195d0:	06800793          	li	a5,104
   195d4:	32fe80e3          	beq	t4,a5,1a0f4 <_svfprintf_r+0x1488>
   195d8:	04096913          	or	s2,s2,64
   195dc:	0009091b          	sext.w	s2,s2
   195e0:	fd4ff06f          	j	18db4 <_svfprintf_r+0x148>
   195e4:	02096913          	or	s2,s2,32
   195e8:	0009ce83          	lbu	t4,0(s3)
   195ec:	0009091b          	sext.w	s2,s2
   195f0:	fc4ff06f          	j	18db4 <_svfprintf_r+0x148>
   195f4:	ffff87b7          	lui	a5,0xffff8
   195f8:	8307c793          	xor	a5,a5,-2000
   195fc:	00296c13          	or	s8,s2,2
   19600:	0cf11823          	sh	a5,208(sp)
   19604:	00008797          	auipc	a5,0x8
   19608:	76478793          	add	a5,a5,1892 # 21d68 <__clzdi2+0xb8>
   1960c:	000a3b03          	ld	s6,0(s4)
   19610:	04f13c23          	sd	a5,88(sp)
   19614:	000b8e13          	mv	t3,s7
   19618:	000c0c1b          	sext.w	s8,s8
   1961c:	008a0a13          	add	s4,s4,8
   19620:	00200793          	li	a5,2
   19624:	07800e93          	li	t4,120
   19628:	df5ff06f          	j	1941c <_svfprintf_r+0x7b0>
   1962c:	02097793          	and	a5,s2,32
   19630:	000a3703          	ld	a4,0(s4)
   19634:	02079c63          	bnez	a5,1966c <_svfprintf_r+0xa00>
   19638:	01097793          	and	a5,s2,16
   1963c:	02079863          	bnez	a5,1966c <_svfprintf_r+0xa00>
   19640:	04097793          	and	a5,s2,64
   19644:	00078463          	beqz	a5,1964c <_svfprintf_r+0x9e0>
   19648:	2280106f          	j	1a870 <_svfprintf_r+0x1c04>
   1964c:	20097913          	and	s2,s2,512
   19650:	01813783          	ld	a5,24(sp)
   19654:	00091463          	bnez	s2,1965c <_svfprintf_r+0x9f0>
   19658:	2ed0106f          	j	1b144 <_svfprintf_r+0x24d8>
   1965c:	00f70023          	sb	a5,0(a4)
   19660:	008a0a13          	add	s4,s4,8
   19664:	00098a93          	mv	s5,s3
   19668:	909ff06f          	j	18f70 <_svfprintf_r+0x304>
   1966c:	01813783          	ld	a5,24(sp)
   19670:	008a0a13          	add	s4,s4,8
   19674:	00f73023          	sd	a5,0(a4)
   19678:	fedff06f          	j	19664 <_svfprintf_r+0x9f8>
   1967c:	0009ce83          	lbu	t4,0(s3)
   19680:	06c00793          	li	a5,108
   19684:	24fe8ee3          	beq	t4,a5,1a0e0 <_svfprintf_r+0x1474>
   19688:	01096913          	or	s2,s2,16
   1968c:	0009091b          	sext.w	s2,s2
   19690:	f24ff06f          	j	18db4 <_svfprintf_r+0x148>
   19694:	06500693          	li	a3,101
   19698:	abd6d6e3          	bge	a3,t4,19144 <_svfprintf_r+0x4d8>
   1969c:	0f013503          	ld	a0,240(sp)
   196a0:	0f813583          	ld	a1,248(sp)
   196a4:	00000613          	li	a2,0
   196a8:	00000693          	li	a3,0
   196ac:	001060ef          	jal	1feac <__eqtf2>
   196b0:	56051663          	bnez	a0,19c1c <_svfprintf_r+0xfb0>
   196b4:	10812783          	lw	a5,264(sp)
   196b8:	00008697          	auipc	a3,0x8
   196bc:	6d068693          	add	a3,a3,1744 # 21d88 <__clzdi2+0xd8>
   196c0:	00d43023          	sd	a3,0(s0)
   196c4:	0017879b          	addw	a5,a5,1
   196c8:	00100693          	li	a3,1
   196cc:	001d0d13          	add	s10,s10,1
   196d0:	00d43423          	sd	a3,8(s0)
   196d4:	10f12423          	sw	a5,264(sp)
   196d8:	0007869b          	sext.w	a3,a5
   196dc:	11a13823          	sd	s10,272(sp)
   196e0:	00700793          	li	a5,7
   196e4:	01040413          	add	s0,s0,16
   196e8:	5ed7cce3          	blt	a5,a3,1a4e0 <_svfprintf_r+0x1874>
   196ec:	0d812783          	lw	a5,216(sp)
   196f0:	03013703          	ld	a4,48(sp)
   196f4:	02e7d6e3          	bge	a5,a4,19f20 <_svfprintf_r+0x12b4>
   196f8:	10812783          	lw	a5,264(sp)
   196fc:	04813703          	ld	a4,72(sp)
   19700:	05013683          	ld	a3,80(sp)
   19704:	01040413          	add	s0,s0,16
   19708:	01a70633          	add	a2,a4,s10
   1970c:	fed43823          	sd	a3,-16(s0)
   19710:	0017869b          	addw	a3,a5,1
   19714:	fee43c23          	sd	a4,-8(s0)
   19718:	10c13823          	sd	a2,272(sp)
   1971c:	10d12423          	sw	a3,264(sp)
   19720:	00700793          	li	a5,7
   19724:	18d7cee3          	blt	a5,a3,1a0c0 <_svfprintf_r+0x1454>
   19728:	03013783          	ld	a5,48(sp)
   1972c:	fff78c1b          	addw	s8,a5,-1
   19730:	ff805a63          	blez	s8,18f24 <_svfprintf_r+0x2b8>
   19734:	01000693          	li	a3,16
   19738:	10812783          	lw	a5,264(sp)
   1973c:	00009d17          	auipc	s10,0x9
   19740:	f3cd0d13          	add	s10,s10,-196 # 22678 <zeroes.0>
   19744:	5d86d8e3          	bge	a3,s8,1a514 <_svfprintf_r+0x18a8>
   19748:	000d0713          	mv	a4,s10
   1974c:	00813b03          	ld	s6,8(sp)
   19750:	000c0d13          	mv	s10,s8
   19754:	01000c93          	li	s9,16
   19758:	000a0c13          	mv	s8,s4
   1975c:	00700a93          	li	s5,7
   19760:	00048a13          	mv	s4,s1
   19764:	00070493          	mv	s1,a4
   19768:	00c0006f          	j	19774 <_svfprintf_r+0xb08>
   1976c:	ff0d0d1b          	addw	s10,s10,-16
   19770:	59acd8e3          	bge	s9,s10,1a500 <_svfprintf_r+0x1894>
   19774:	0017879b          	addw	a5,a5,1
   19778:	01060613          	add	a2,a2,16
   1977c:	00943023          	sd	s1,0(s0)
   19780:	01943423          	sd	s9,8(s0)
   19784:	10c13823          	sd	a2,272(sp)
   19788:	10f12423          	sw	a5,264(sp)
   1978c:	01040413          	add	s0,s0,16
   19790:	fcfadee3          	bge	s5,a5,1976c <_svfprintf_r+0xb00>
   19794:	01013583          	ld	a1,16(sp)
   19798:	10010613          	add	a2,sp,256
   1979c:	000b0513          	mv	a0,s6
   197a0:	0b9040ef          	jal	1e058 <__ssprint_r>
   197a4:	22051a63          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   197a8:	11013603          	ld	a2,272(sp)
   197ac:	10812783          	lw	a5,264(sp)
   197b0:	18010413          	add	s0,sp,384
   197b4:	fb9ff06f          	j	1976c <_svfprintf_r+0xb00>
   197b8:	00100713          	li	a4,1
   197bc:	00e79463          	bne	a5,a4,197c4 <_svfprintf_r+0xb58>
   197c0:	00d0106f          	j	1afcc <_svfprintf_r+0x2360>
   197c4:	00200713          	li	a4,2
   197c8:	00090c13          	mv	s8,s2
   197cc:	d6e79ee3          	bne	a5,a4,19548 <_svfprintf_r+0x8dc>
   197d0:	05813703          	ld	a4,88(sp)
   197d4:	17c10b93          	add	s7,sp,380
   197d8:	000b8a93          	mv	s5,s7
   197dc:	00fb7793          	and	a5,s6,15
   197e0:	00f707b3          	add	a5,a4,a5
   197e4:	0007c783          	lbu	a5,0(a5)
   197e8:	004b5b13          	srl	s6,s6,0x4
   197ec:	fffa8a93          	add	s5,s5,-1
   197f0:	00fa8023          	sb	a5,0(s5)
   197f4:	fe0b14e3          	bnez	s6,197dc <_svfprintf_r+0xb70>
   197f8:	415b8cbb          	subw	s9,s7,s5
   197fc:	000c0913          	mv	s2,s8
   19800:	c4dff06f          	j	1944c <_svfprintf_r+0x7e0>
   19804:	41748b3b          	subw	s6,s1,s7
   19808:	ef605263          	blez	s6,18eec <_svfprintf_r+0x280>
   1980c:	01000513          	li	a0,16
   19810:	000d0593          	mv	a1,s10
   19814:	10812603          	lw	a2,264(sp)
   19818:	00009d17          	auipc	s10,0x9
   1981c:	e60d0d13          	add	s10,s10,-416 # 22678 <zeroes.0>
   19820:	0b655663          	bge	a0,s6,198cc <_svfprintf_r+0xc60>
   19824:	000d0713          	mv	a4,s10
   19828:	00040793          	mv	a5,s0
   1982c:	000a0d13          	mv	s10,s4
   19830:	000b0413          	mv	s0,s6
   19834:	00048a13          	mv	s4,s1
   19838:	000a8b13          	mv	s6,s5
   1983c:	01000893          	li	a7,16
   19840:	00700c13          	li	s8,7
   19844:	09d13023          	sd	t4,128(sp)
   19848:	000e0a93          	mv	s5,t3
   1984c:	00070493          	mv	s1,a4
   19850:	00c0006f          	j	1985c <_svfprintf_r+0xbf0>
   19854:	ff04041b          	addw	s0,s0,-16
   19858:	0488d863          	bge	a7,s0,198a8 <_svfprintf_r+0xc3c>
   1985c:	0016061b          	addw	a2,a2,1
   19860:	01058593          	add	a1,a1,16
   19864:	0097b023          	sd	s1,0(a5)
   19868:	0117b423          	sd	a7,8(a5)
   1986c:	10b13823          	sd	a1,272(sp)
   19870:	10c12423          	sw	a2,264(sp)
   19874:	01078793          	add	a5,a5,16
   19878:	fccc5ee3          	bge	s8,a2,19854 <_svfprintf_r+0xbe8>
   1987c:	01013583          	ld	a1,16(sp)
   19880:	00813503          	ld	a0,8(sp)
   19884:	10010613          	add	a2,sp,256
   19888:	7d0040ef          	jal	1e058 <__ssprint_r>
   1988c:	14051663          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19890:	01000893          	li	a7,16
   19894:	ff04041b          	addw	s0,s0,-16
   19898:	11013583          	ld	a1,272(sp)
   1989c:	10812603          	lw	a2,264(sp)
   198a0:	18010793          	add	a5,sp,384
   198a4:	fa88cce3          	blt	a7,s0,1985c <_svfprintf_r+0xbf0>
   198a8:	08013e83          	ld	t4,128(sp)
   198ac:	000a8e13          	mv	t3,s5
   198b0:	000b0a93          	mv	s5,s6
   198b4:	00040b13          	mv	s6,s0
   198b8:	00078413          	mv	s0,a5
   198bc:	00048793          	mv	a5,s1
   198c0:	000a0493          	mv	s1,s4
   198c4:	000d0a13          	mv	s4,s10
   198c8:	00078d13          	mv	s10,a5
   198cc:	0016051b          	addw	a0,a2,1
   198d0:	00bb05b3          	add	a1,s6,a1
   198d4:	01a43023          	sd	s10,0(s0)
   198d8:	01643423          	sd	s6,8(s0)
   198dc:	10b13823          	sd	a1,272(sp)
   198e0:	10a12423          	sw	a0,264(sp)
   198e4:	00700613          	li	a2,7
   198e8:	48a642e3          	blt	a2,a0,1a56c <_svfprintf_r+0x1900>
   198ec:	419e0b3b          	subw	s6,t3,s9
   198f0:	01040413          	add	s0,s0,16
   198f4:	00058d13          	mv	s10,a1
   198f8:	df605e63          	blez	s6,18ef4 <_svfprintf_r+0x288>
   198fc:	000d0593          	mv	a1,s10
   19900:	10812603          	lw	a2,264(sp)
   19904:	00009d17          	auipc	s10,0x9
   19908:	d74d0d13          	add	s10,s10,-652 # 22678 <zeroes.0>
   1990c:	096dd663          	bge	s11,s6,19998 <_svfprintf_r+0xd2c>
   19910:	00040793          	mv	a5,s0
   19914:	00700c13          	li	s8,7
   19918:	000b0413          	mv	s0,s6
   1991c:	000a0b13          	mv	s6,s4
   19920:	00048a13          	mv	s4,s1
   19924:	000e8493          	mv	s1,t4
   19928:	00c0006f          	j	19934 <_svfprintf_r+0xcc8>
   1992c:	ff04041b          	addw	s0,s0,-16
   19930:	048dda63          	bge	s11,s0,19984 <_svfprintf_r+0xd18>
   19934:	0016061b          	addw	a2,a2,1
   19938:	01058593          	add	a1,a1,16
   1993c:	00009697          	auipc	a3,0x9
   19940:	d3c68693          	add	a3,a3,-708 # 22678 <zeroes.0>
   19944:	00d7b023          	sd	a3,0(a5)
   19948:	01b7b423          	sd	s11,8(a5)
   1994c:	10b13823          	sd	a1,272(sp)
   19950:	10c12423          	sw	a2,264(sp)
   19954:	01078793          	add	a5,a5,16
   19958:	fccc5ae3          	bge	s8,a2,1992c <_svfprintf_r+0xcc0>
   1995c:	01013583          	ld	a1,16(sp)
   19960:	00813503          	ld	a0,8(sp)
   19964:	10010613          	add	a2,sp,256
   19968:	6f0040ef          	jal	1e058 <__ssprint_r>
   1996c:	06051663          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19970:	ff04041b          	addw	s0,s0,-16
   19974:	11013583          	ld	a1,272(sp)
   19978:	10812603          	lw	a2,264(sp)
   1997c:	18010793          	add	a5,sp,384
   19980:	fa8dcae3          	blt	s11,s0,19934 <_svfprintf_r+0xcc8>
   19984:	00048e93          	mv	t4,s1
   19988:	000a0493          	mv	s1,s4
   1998c:	000b0a13          	mv	s4,s6
   19990:	00040b13          	mv	s6,s0
   19994:	00078413          	mv	s0,a5
   19998:	0016051b          	addw	a0,a2,1
   1999c:	00bb05b3          	add	a1,s6,a1
   199a0:	01a43023          	sd	s10,0(s0)
   199a4:	01643423          	sd	s6,8(s0)
   199a8:	10b13823          	sd	a1,272(sp)
   199ac:	10a12423          	sw	a0,264(sp)
   199b0:	00700613          	li	a2,7
   199b4:	4ea64863          	blt	a2,a0,19ea4 <_svfprintf_r+0x1238>
   199b8:	01040413          	add	s0,s0,16
   199bc:	00058d13          	mv	s10,a1
   199c0:	d34ff06f          	j	18ef4 <_svfprintf_r+0x288>
   199c4:	01013583          	ld	a1,16(sp)
   199c8:	00813503          	ld	a0,8(sp)
   199cc:	10010613          	add	a2,sp,256
   199d0:	688040ef          	jal	1e058 <__ssprint_r>
   199d4:	d6050e63          	beqz	a0,18f50 <_svfprintf_r+0x2e4>
   199d8:	02013583          	ld	a1,32(sp)
   199dc:	da058463          	beqz	a1,18f84 <_svfprintf_r+0x318>
   199e0:	00813503          	ld	a0,8(sp)
   199e4:	e39f90ef          	jal	1381c <_free_r>
   199e8:	d9cff06f          	j	18f84 <_svfprintf_r+0x318>
   199ec:	00100713          	li	a4,1
   199f0:	00090c13          	mv	s8,s2
   199f4:	b4e796e3          	bne	a5,a4,19540 <_svfprintf_r+0x8d4>
   199f8:	00900793          	li	a5,9
   199fc:	5d67e063          	bltu	a5,s6,19fbc <_svfprintf_r+0x1350>
   19a00:	030b0b1b          	addw	s6,s6,48
   19a04:	17610da3          	sb	s6,379(sp)
   19a08:	000c0913          	mv	s2,s8
   19a0c:	00100c93          	li	s9,1
   19a10:	17b10a93          	add	s5,sp,379
   19a14:	a39ff06f          	j	1944c <_svfprintf_r+0x7e0>
   19a18:	01000513          	li	a0,16
   19a1c:	11013583          	ld	a1,272(sp)
   19a20:	10812603          	lw	a2,264(sp)
   19a24:	00009b17          	auipc	s6,0x9
   19a28:	c64b0b13          	add	s6,s6,-924 # 22688 <blanks.1>
   19a2c:	0ba55863          	bge	a0,s10,19adc <_svfprintf_r+0xe70>
   19a30:	00040793          	mv	a5,s0
   19a34:	01000813          	li	a6,16
   19a38:	000d0413          	mv	s0,s10
   19a3c:	00700393          	li	t2,7
   19a40:	000a0d13          	mv	s10,s4
   19a44:	08513023          	sd	t0,128(sp)
   19a48:	00048a13          	mv	s4,s1
   19a4c:	09d13423          	sd	t4,136(sp)
   19a50:	000b0493          	mv	s1,s6
   19a54:	000a8b13          	mv	s6,s5
   19a58:	000e0a93          	mv	s5,t3
   19a5c:	00c0006f          	j	19a68 <_svfprintf_r+0xdfc>
   19a60:	ff04041b          	addw	s0,s0,-16
   19a64:	04885a63          	bge	a6,s0,19ab8 <_svfprintf_r+0xe4c>
   19a68:	0016061b          	addw	a2,a2,1
   19a6c:	01058593          	add	a1,a1,16
   19a70:	0097b023          	sd	s1,0(a5)
   19a74:	0107b423          	sd	a6,8(a5)
   19a78:	10b13823          	sd	a1,272(sp)
   19a7c:	10c12423          	sw	a2,264(sp)
   19a80:	01078793          	add	a5,a5,16
   19a84:	fcc3dee3          	bge	t2,a2,19a60 <_svfprintf_r+0xdf4>
   19a88:	01013583          	ld	a1,16(sp)
   19a8c:	00813503          	ld	a0,8(sp)
   19a90:	10010613          	add	a2,sp,256
   19a94:	5c4040ef          	jal	1e058 <__ssprint_r>
   19a98:	f40510e3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19a9c:	01000813          	li	a6,16
   19aa0:	ff04041b          	addw	s0,s0,-16
   19aa4:	11013583          	ld	a1,272(sp)
   19aa8:	10812603          	lw	a2,264(sp)
   19aac:	18010793          	add	a5,sp,384
   19ab0:	00700393          	li	t2,7
   19ab4:	fa884ae3          	blt	a6,s0,19a68 <_svfprintf_r+0xdfc>
   19ab8:	08013283          	ld	t0,128(sp)
   19abc:	08813e83          	ld	t4,136(sp)
   19ac0:	000a8e13          	mv	t3,s5
   19ac4:	000b0a93          	mv	s5,s6
   19ac8:	00048b13          	mv	s6,s1
   19acc:	000a0493          	mv	s1,s4
   19ad0:	000d0a13          	mv	s4,s10
   19ad4:	00040d13          	mv	s10,s0
   19ad8:	00078413          	mv	s0,a5
   19adc:	0016061b          	addw	a2,a2,1
   19ae0:	00bd05b3          	add	a1,s10,a1
   19ae4:	01643023          	sd	s6,0(s0)
   19ae8:	01a43423          	sd	s10,8(s0)
   19aec:	10b13823          	sd	a1,272(sp)
   19af0:	10c12423          	sw	a2,264(sp)
   19af4:	0006059b          	sext.w	a1,a2
   19af8:	00700613          	li	a2,7
   19afc:	01040413          	add	s0,s0,16
   19b00:	b6b65663          	bge	a2,a1,18e6c <_svfprintf_r+0x200>
   19b04:	01013583          	ld	a1,16(sp)
   19b08:	00813503          	ld	a0,8(sp)
   19b0c:	10010613          	add	a2,sp,256
   19b10:	09c13823          	sd	t3,144(sp)
   19b14:	09d13423          	sd	t4,136(sp)
   19b18:	08513023          	sd	t0,128(sp)
   19b1c:	53c040ef          	jal	1e058 <__ssprint_r>
   19b20:	ea051ce3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19b24:	09013e03          	ld	t3,144(sp)
   19b28:	08813e83          	ld	t4,136(sp)
   19b2c:	08013283          	ld	t0,128(sp)
   19b30:	18010413          	add	s0,sp,384
   19b34:	b38ff06f          	j	18e6c <_svfprintf_r+0x200>
   19b38:	01013583          	ld	a1,16(sp)
   19b3c:	00813503          	ld	a0,8(sp)
   19b40:	10010613          	add	a2,sp,256
   19b44:	09c13423          	sd	t3,136(sp)
   19b48:	09d13023          	sd	t4,128(sp)
   19b4c:	50c040ef          	jal	1e058 <__ssprint_r>
   19b50:	e80514e3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19b54:	11013d03          	ld	s10,272(sp)
   19b58:	08813e03          	ld	t3,136(sp)
   19b5c:	08013e83          	ld	t4,128(sp)
   19b60:	18010413          	add	s0,sp,384
   19b64:	b80ff06f          	j	18ee4 <_svfprintf_r+0x278>
   19b68:	01000693          	li	a3,16
   19b6c:	10812783          	lw	a5,264(sp)
   19b70:	00009b17          	auipc	s6,0x9
   19b74:	b18b0b13          	add	s6,s6,-1256 # 22688 <blanks.1>
   19b78:	0726d463          	bge	a3,s2,19be0 <_svfprintf_r+0xf74>
   19b7c:	00813a83          	ld	s5,8(sp)
   19b80:	01013d03          	ld	s10,16(sp)
   19b84:	01000c13          	li	s8,16
   19b88:	00700c93          	li	s9,7
   19b8c:	00c0006f          	j	19b98 <_svfprintf_r+0xf2c>
   19b90:	ff09091b          	addw	s2,s2,-16
   19b94:	052c5663          	bge	s8,s2,19be0 <_svfprintf_r+0xf74>
   19b98:	0017879b          	addw	a5,a5,1
   19b9c:	01060613          	add	a2,a2,16
   19ba0:	01643023          	sd	s6,0(s0)
   19ba4:	01843423          	sd	s8,8(s0)
   19ba8:	10c13823          	sd	a2,272(sp)
   19bac:	10f12423          	sw	a5,264(sp)
   19bb0:	01040413          	add	s0,s0,16
   19bb4:	fcfcdee3          	bge	s9,a5,19b90 <_svfprintf_r+0xf24>
   19bb8:	10010613          	add	a2,sp,256
   19bbc:	000d0593          	mv	a1,s10
   19bc0:	000a8513          	mv	a0,s5
   19bc4:	494040ef          	jal	1e058 <__ssprint_r>
   19bc8:	e00518e3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19bcc:	ff09091b          	addw	s2,s2,-16
   19bd0:	11013603          	ld	a2,272(sp)
   19bd4:	10812783          	lw	a5,264(sp)
   19bd8:	18010413          	add	s0,sp,384
   19bdc:	fb2c4ee3          	blt	s8,s2,19b98 <_svfprintf_r+0xf2c>
   19be0:	0017869b          	addw	a3,a5,1
   19be4:	01260633          	add	a2,a2,s2
   19be8:	01643023          	sd	s6,0(s0)
   19bec:	01243423          	sd	s2,8(s0)
   19bf0:	10c13823          	sd	a2,272(sp)
   19bf4:	10d12423          	sw	a3,264(sp)
   19bf8:	00700793          	li	a5,7
   19bfc:	b2d7dc63          	bge	a5,a3,18f34 <_svfprintf_r+0x2c8>
   19c00:	01013583          	ld	a1,16(sp)
   19c04:	00813503          	ld	a0,8(sp)
   19c08:	10010613          	add	a2,sp,256
   19c0c:	44c040ef          	jal	1e058 <__ssprint_r>
   19c10:	dc0514e3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19c14:	11013603          	ld	a2,272(sp)
   19c18:	b1cff06f          	j	18f34 <_svfprintf_r+0x2c8>
   19c1c:	0d812503          	lw	a0,216(sp)
   19c20:	7ea05863          	blez	a0,1a410 <_svfprintf_r+0x17a4>
   19c24:	03013783          	ld	a5,48(sp)
   19c28:	02813703          	ld	a4,40(sp)
   19c2c:	00fa8c33          	add	s8,s5,a5
   19c30:	00078693          	mv	a3,a5
   19c34:	36f74663          	blt	a4,a5,19fa0 <_svfprintf_r+0x1334>
   19c38:	00068b1b          	sext.w	s6,a3
   19c3c:	03605663          	blez	s6,19c68 <_svfprintf_r+0xffc>
   19c40:	10812603          	lw	a2,264(sp)
   19c44:	016d0d33          	add	s10,s10,s6
   19c48:	01543023          	sd	s5,0(s0)
   19c4c:	0016059b          	addw	a1,a2,1
   19c50:	01643423          	sd	s6,8(s0)
   19c54:	11a13823          	sd	s10,272(sp)
   19c58:	10b12423          	sw	a1,264(sp)
   19c5c:	00700613          	li	a2,7
   19c60:	01040413          	add	s0,s0,16
   19c64:	3cb642e3          	blt	a2,a1,1a828 <_svfprintf_r+0x1bbc>
   19c68:	fffb4613          	not	a2,s6
   19c6c:	02813783          	ld	a5,40(sp)
   19c70:	43f65613          	sra	a2,a2,0x3f
   19c74:	00cb76b3          	and	a3,s6,a2
   19c78:	40d78b3b          	subw	s6,a5,a3
   19c7c:	4b604e63          	bgtz	s6,1a138 <_svfprintf_r+0x14cc>
   19c80:	02813783          	ld	a5,40(sp)
   19c84:	40097693          	and	a3,s2,1024
   19c88:	00fa8ab3          	add	s5,s5,a5
   19c8c:	58069063          	bnez	a3,1a20c <_svfprintf_r+0x15a0>
   19c90:	0d812683          	lw	a3,216(sp)
   19c94:	03013783          	ld	a5,48(sp)
   19c98:	00f6c663          	blt	a3,a5,19ca4 <_svfprintf_r+0x1038>
   19c9c:	00197613          	and	a2,s2,1
   19ca0:	3a0608e3          	beqz	a2,1a850 <_svfprintf_r+0x1be4>
   19ca4:	10812583          	lw	a1,264(sp)
   19ca8:	04813783          	ld	a5,72(sp)
   19cac:	05013703          	ld	a4,80(sp)
   19cb0:	0015851b          	addw	a0,a1,1
   19cb4:	01a78633          	add	a2,a5,s10
   19cb8:	00e43023          	sd	a4,0(s0)
   19cbc:	00f43423          	sd	a5,8(s0)
   19cc0:	10c13823          	sd	a2,272(sp)
   19cc4:	10a12423          	sw	a0,264(sp)
   19cc8:	00700593          	li	a1,7
   19ccc:	01040413          	add	s0,s0,16
   19cd0:	00a5d463          	bge	a1,a0,19cd8 <_svfprintf_r+0x106c>
   19cd4:	2140106f          	j	1aee8 <_svfprintf_r+0x227c>
   19cd8:	03013783          	ld	a5,48(sp)
   19cdc:	415c0c33          	sub	s8,s8,s5
   19ce0:	000c051b          	sext.w	a0,s8
   19ce4:	40d785bb          	subw	a1,a5,a3
   19ce8:	00a5d463          	bge	a1,a0,19cf0 <_svfprintf_r+0x1084>
   19cec:	00058c13          	mv	s8,a1
   19cf0:	000c0c1b          	sext.w	s8,s8
   19cf4:	03805863          	blez	s8,19d24 <_svfprintf_r+0x10b8>
   19cf8:	10812683          	lw	a3,264(sp)
   19cfc:	01860633          	add	a2,a2,s8
   19d00:	01543023          	sd	s5,0(s0)
   19d04:	0016869b          	addw	a3,a3,1
   19d08:	01843423          	sd	s8,8(s0)
   19d0c:	10c13823          	sd	a2,272(sp)
   19d10:	10d12423          	sw	a3,264(sp)
   19d14:	00700793          	li	a5,7
   19d18:	01040413          	add	s0,s0,16
   19d1c:	00d7d463          	bge	a5,a3,19d24 <_svfprintf_r+0x10b8>
   19d20:	27c0106f          	j	1af9c <_svfprintf_r+0x2330>
   19d24:	fffc4793          	not	a5,s8
   19d28:	43f7d793          	sra	a5,a5,0x3f
   19d2c:	00fc7c33          	and	s8,s8,a5
   19d30:	41858c3b          	subw	s8,a1,s8
   19d34:	9f805863          	blez	s8,18f24 <_svfprintf_r+0x2b8>
   19d38:	01000693          	li	a3,16
   19d3c:	10812783          	lw	a5,264(sp)
   19d40:	00009d17          	auipc	s10,0x9
   19d44:	938d0d13          	add	s10,s10,-1736 # 22678 <zeroes.0>
   19d48:	7d86d663          	bge	a3,s8,1a514 <_svfprintf_r+0x18a8>
   19d4c:	000d0713          	mv	a4,s10
   19d50:	00813b03          	ld	s6,8(sp)
   19d54:	000c0d13          	mv	s10,s8
   19d58:	01000c93          	li	s9,16
   19d5c:	000a0c13          	mv	s8,s4
   19d60:	00700a93          	li	s5,7
   19d64:	00048a13          	mv	s4,s1
   19d68:	00070493          	mv	s1,a4
   19d6c:	00c0006f          	j	19d78 <_svfprintf_r+0x110c>
   19d70:	ff0d0d1b          	addw	s10,s10,-16
   19d74:	79acd663          	bge	s9,s10,1a500 <_svfprintf_r+0x1894>
   19d78:	0017879b          	addw	a5,a5,1
   19d7c:	01060613          	add	a2,a2,16
   19d80:	00943023          	sd	s1,0(s0)
   19d84:	01943423          	sd	s9,8(s0)
   19d88:	10c13823          	sd	a2,272(sp)
   19d8c:	10f12423          	sw	a5,264(sp)
   19d90:	01040413          	add	s0,s0,16
   19d94:	fcfadee3          	bge	s5,a5,19d70 <_svfprintf_r+0x1104>
   19d98:	01013583          	ld	a1,16(sp)
   19d9c:	10010613          	add	a2,sp,256
   19da0:	000b0513          	mv	a0,s6
   19da4:	2b4040ef          	jal	1e058 <__ssprint_r>
   19da8:	c20518e3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19dac:	11013603          	ld	a2,272(sp)
   19db0:	10812783          	lw	a5,264(sp)
   19db4:	18010413          	add	s0,sp,384
   19db8:	fb9ff06f          	j	19d70 <_svfprintf_r+0x1104>
   19dbc:	00197613          	and	a2,s2,1
   19dc0:	b8061a63          	bnez	a2,19154 <_svfprintf_r+0x4e8>
   19dc4:	10812603          	lw	a2,264(sp)
   19dc8:	001d0c93          	add	s9,s10,1
   19dcc:	01543023          	sd	s5,0(s0)
   19dd0:	0016079b          	addw	a5,a2,1
   19dd4:	00d43423          	sd	a3,8(s0)
   19dd8:	10f12423          	sw	a5,264(sp)
   19ddc:	0007841b          	sext.w	s0,a5
   19de0:	11913823          	sd	s9,272(sp)
   19de4:	00700793          	li	a5,7
   19de8:	c087d663          	bge	a5,s0,191f4 <_svfprintf_r+0x588>
   19dec:	01013583          	ld	a1,16(sp)
   19df0:	00813503          	ld	a0,8(sp)
   19df4:	10010613          	add	a2,sp,256
   19df8:	260040ef          	jal	1e058 <__ssprint_r>
   19dfc:	bc051ee3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19e00:	11013c83          	ld	s9,272(sp)
   19e04:	10812403          	lw	s0,264(sp)
   19e08:	18010c13          	add	s8,sp,384
   19e0c:	be8ff06f          	j	191f4 <_svfprintf_r+0x588>
   19e10:	03013703          	ld	a4,48(sp)
   19e14:	00100793          	li	a5,1
   19e18:	bce7de63          	bge	a5,a4,191f4 <_svfprintf_r+0x588>
   19e1c:	01100793          	li	a5,17
   19e20:	00009d17          	auipc	s10,0x9
   19e24:	858d0d13          	add	s10,s10,-1960 # 22678 <zeroes.0>
   19e28:	00e7d8e3          	bge	a5,a4,1a638 <_svfprintf_r+0x19cc>
   19e2c:	000b0713          	mv	a4,s6
   19e30:	000d0793          	mv	a5,s10
   19e34:	00048b13          	mv	s6,s1
   19e38:	000a0d13          	mv	s10,s4
   19e3c:	01000813          	li	a6,16
   19e40:	00090a13          	mv	s4,s2
   19e44:	00700a93          	li	s5,7
   19e48:	00078913          	mv	s2,a5
   19e4c:	00070493          	mv	s1,a4
   19e50:	00c0006f          	j	19e5c <_svfprintf_r+0x11f0>
   19e54:	ff04849b          	addw	s1,s1,-16
   19e58:	7c985263          	bge	a6,s1,1a61c <_svfprintf_r+0x19b0>
   19e5c:	0014041b          	addw	s0,s0,1
   19e60:	010c8c93          	add	s9,s9,16
   19e64:	012c3023          	sd	s2,0(s8)
   19e68:	010c3423          	sd	a6,8(s8)
   19e6c:	11913823          	sd	s9,272(sp)
   19e70:	10812423          	sw	s0,264(sp)
   19e74:	010c0c13          	add	s8,s8,16
   19e78:	fc8adee3          	bge	s5,s0,19e54 <_svfprintf_r+0x11e8>
   19e7c:	01013583          	ld	a1,16(sp)
   19e80:	00813503          	ld	a0,8(sp)
   19e84:	10010613          	add	a2,sp,256
   19e88:	1d0040ef          	jal	1e058 <__ssprint_r>
   19e8c:	b40516e3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19e90:	11013c83          	ld	s9,272(sp)
   19e94:	10812403          	lw	s0,264(sp)
   19e98:	18010c13          	add	s8,sp,384
   19e9c:	01000813          	li	a6,16
   19ea0:	fb5ff06f          	j	19e54 <_svfprintf_r+0x11e8>
   19ea4:	01013583          	ld	a1,16(sp)
   19ea8:	00813503          	ld	a0,8(sp)
   19eac:	10010613          	add	a2,sp,256
   19eb0:	09d13023          	sd	t4,128(sp)
   19eb4:	1a4040ef          	jal	1e058 <__ssprint_r>
   19eb8:	b20510e3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19ebc:	11013d03          	ld	s10,272(sp)
   19ec0:	08013e83          	ld	t4,128(sp)
   19ec4:	18010413          	add	s0,sp,384
   19ec8:	82cff06f          	j	18ef4 <_svfprintf_r+0x288>
   19ecc:	00000c93          	li	s9,0
   19ed0:	17c10a93          	add	s5,sp,380
   19ed4:	d78ff06f          	j	1944c <_svfprintf_r+0x7e0>
   19ed8:	01013583          	ld	a1,16(sp)
   19edc:	00813503          	ld	a0,8(sp)
   19ee0:	10010613          	add	a2,sp,256
   19ee4:	174040ef          	jal	1e058 <__ssprint_r>
   19ee8:	ae0518e3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19eec:	11013d03          	ld	s10,272(sp)
   19ef0:	10812683          	lw	a3,264(sp)
   19ef4:	18010c13          	add	s8,sp,384
   19ef8:	a88ff06f          	j	19180 <_svfprintf_r+0x514>
   19efc:	01013583          	ld	a1,16(sp)
   19f00:	00813503          	ld	a0,8(sp)
   19f04:	10010613          	add	a2,sp,256
   19f08:	150040ef          	jal	1e058 <__ssprint_r>
   19f0c:	ac0516e3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   19f10:	11013c83          	ld	s9,272(sp)
   19f14:	10812403          	lw	s0,264(sp)
   19f18:	18010c13          	add	s8,sp,384
   19f1c:	a90ff06f          	j	191ac <_svfprintf_r+0x540>
   19f20:	00197793          	and	a5,s2,1
   19f24:	000d0613          	mv	a2,s10
   19f28:	00079463          	bnez	a5,19f30 <_svfprintf_r+0x12c4>
   19f2c:	ff9fe06f          	j	18f24 <_svfprintf_r+0x2b8>
   19f30:	fc8ff06f          	j	196f8 <_svfprintf_r+0xa8c>
   19f34:	000b8e13          	mv	t3,s7
   19f38:	d6cff06f          	j	194a4 <_svfprintf_r+0x838>
   19f3c:	03000793          	li	a5,48
   19f40:	16f10da3          	sb	a5,379(sp)
   19f44:	17b10a93          	add	s5,sp,379
   19f48:	d04ff06f          	j	1944c <_svfprintf_r+0x7e0>
   19f4c:	00fa0a13          	add	s4,s4,15
   19f50:	ff0a7a13          	and	s4,s4,-16
   19f54:	000a3703          	ld	a4,0(s4)
   19f58:	008a3583          	ld	a1,8(s4)
   19f5c:	010a0a13          	add	s4,s4,16
   19f60:	8e0ff06f          	j	19040 <_svfprintf_r+0x3d4>
   19f64:	04097793          	and	a5,s2,64
   19f68:	000a2b03          	lw	s6,0(s4)
   19f6c:	7a078663          	beqz	a5,1a718 <_svfprintf_r+0x1aac>
   19f70:	030b1b13          	sll	s6,s6,0x30
   19f74:	030b5b13          	srl	s6,s6,0x30
   19f78:	e40ff06f          	j	195b8 <_svfprintf_r+0x94c>
   19f7c:	0009ce83          	lbu	t4,0(s3)
   19f80:	00079463          	bnez	a5,19f88 <_svfprintf_r+0x131c>
   19f84:	e31fe06f          	j	18db4 <_svfprintf_r+0x148>
   19f88:	0007c783          	lbu	a5,0(a5)
   19f8c:	00079463          	bnez	a5,19f94 <_svfprintf_r+0x1328>
   19f90:	e25fe06f          	j	18db4 <_svfprintf_r+0x148>
   19f94:	40096913          	or	s2,s2,1024
   19f98:	0009091b          	sext.w	s2,s2
   19f9c:	e19fe06f          	j	18db4 <_svfprintf_r+0x148>
   19fa0:	00070693          	mv	a3,a4
   19fa4:	00068b1b          	sext.w	s6,a3
   19fa8:	c9604ce3          	bgtz	s6,19c40 <_svfprintf_r+0xfd4>
   19fac:	cbdff06f          	j	19c68 <_svfprintf_r+0xffc>
   19fb0:	00900793          	li	a5,9
   19fb4:	00070a13          	mv	s4,a4
   19fb8:	a567f4e3          	bgeu	a5,s6,19a00 <_svfprintf_r+0xd94>
   19fbc:	17c10b93          	add	s7,sp,380
   19fc0:	06813803          	ld	a6,104(sp)
   19fc4:	400c7c93          	and	s9,s8,1024
   19fc8:	00000693          	li	a3,0
   19fcc:	000b8593          	mv	a1,s7
   19fd0:	00a00913          	li	s2,10
   19fd4:	00900d13          	li	s10,9
   19fd8:	0ff00713          	li	a4,255
   19fdc:	0140006f          	j	19ff0 <_svfprintf_r+0x1384>
   19fe0:	032b57b3          	divu	a5,s6,s2
   19fe4:	036d7a63          	bgeu	s10,s6,1a018 <_svfprintf_r+0x13ac>
   19fe8:	00078b13          	mv	s6,a5
   19fec:	000a8593          	mv	a1,s5
   19ff0:	fff58a93          	add	s5,a1,-1
   19ff4:	0016869b          	addw	a3,a3,1
   19ff8:	032b77b3          	remu	a5,s6,s2
   19ffc:	0307879b          	addw	a5,a5,48
   1a000:	fef58fa3          	sb	a5,-1(a1)
   1a004:	fc0c8ee3          	beqz	s9,19fe0 <_svfprintf_r+0x1374>
   1a008:	00084783          	lbu	a5,0(a6)
   1a00c:	fcf69ae3          	bne	a3,a5,19fe0 <_svfprintf_r+0x1374>
   1a010:	fce788e3          	beq	a5,a4,19fe0 <_svfprintf_r+0x1374>
   1a014:	7b6d6c63          	bltu	s10,s6,1a7cc <_svfprintf_r+0x1b60>
   1a018:	07013423          	sd	a6,104(sp)
   1a01c:	02d13823          	sd	a3,48(sp)
   1a020:	415b8cbb          	subw	s9,s7,s5
   1a024:	000c0913          	mv	s2,s8
   1a028:	c24ff06f          	j	1944c <_svfprintf_r+0x7e0>
   1a02c:	00008797          	auipc	a5,0x8
   1a030:	d2478793          	add	a5,a5,-732 # 21d50 <__clzdi2+0xa0>
   1a034:	000b8e13          	mv	t3,s7
   1a038:	04f13c23          	sd	a5,88(sp)
   1a03c:	02097793          	and	a5,s2,32
   1a040:	008a0713          	add	a4,s4,8
   1a044:	38079e63          	bnez	a5,1a3e0 <_svfprintf_r+0x1774>
   1a048:	01097793          	and	a5,s2,16
   1a04c:	38079a63          	bnez	a5,1a3e0 <_svfprintf_r+0x1774>
   1a050:	04097793          	and	a5,s2,64
   1a054:	000a2b03          	lw	s6,0(s4)
   1a058:	6c078863          	beqz	a5,1a728 <_svfprintf_r+0x1abc>
   1a05c:	030b1b13          	sll	s6,s6,0x30
   1a060:	030b5b13          	srl	s6,s6,0x30
   1a064:	00197793          	and	a5,s2,1
   1a068:	00078e63          	beqz	a5,1a084 <_svfprintf_r+0x1418>
   1a06c:	000b0c63          	beqz	s6,1a084 <_svfprintf_r+0x1418>
   1a070:	00296913          	or	s2,s2,2
   1a074:	03000793          	li	a5,48
   1a078:	0cf10823          	sb	a5,208(sp)
   1a07c:	0dd108a3          	sb	t4,209(sp)
   1a080:	0009091b          	sext.w	s2,s2
   1a084:	bff97c13          	and	s8,s2,-1025
   1a088:	000c0c1b          	sext.w	s8,s8
   1a08c:	00070a13          	mv	s4,a4
   1a090:	00200793          	li	a5,2
   1a094:	b88ff06f          	j	1941c <_svfprintf_r+0x7b0>
   1a098:	000b8e13          	mv	t3,s7
   1a09c:	00090c13          	mv	s8,s2
   1a0a0:	b48ff06f          	j	193e8 <_svfprintf_r+0x77c>
   1a0a4:	00008797          	auipc	a5,0x8
   1a0a8:	cc478793          	add	a5,a5,-828 # 21d68 <__clzdi2+0xb8>
   1a0ac:	000b8e13          	mv	t3,s7
   1a0b0:	04f13c23          	sd	a5,88(sp)
   1a0b4:	f89ff06f          	j	1a03c <_svfprintf_r+0x13d0>
   1a0b8:	000b8e13          	mv	t3,s7
   1a0bc:	ce4ff06f          	j	195a0 <_svfprintf_r+0x934>
   1a0c0:	01013583          	ld	a1,16(sp)
   1a0c4:	00813503          	ld	a0,8(sp)
   1a0c8:	10010613          	add	a2,sp,256
   1a0cc:	78d030ef          	jal	1e058 <__ssprint_r>
   1a0d0:	900514e3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   1a0d4:	11013603          	ld	a2,272(sp)
   1a0d8:	18010413          	add	s0,sp,384
   1a0dc:	e4cff06f          	j	19728 <_svfprintf_r+0xabc>
   1a0e0:	02096913          	or	s2,s2,32
   1a0e4:	0019ce83          	lbu	t4,1(s3)
   1a0e8:	0009091b          	sext.w	s2,s2
   1a0ec:	00198993          	add	s3,s3,1
   1a0f0:	cc5fe06f          	j	18db4 <_svfprintf_r+0x148>
   1a0f4:	20096913          	or	s2,s2,512
   1a0f8:	0019ce83          	lbu	t4,1(s3)
   1a0fc:	0009091b          	sext.w	s2,s2
   1a100:	00198993          	add	s3,s3,1
   1a104:	cb1fe06f          	j	18db4 <_svfprintf_r+0x148>
   1a108:	00813503          	ld	a0,8(sp)
   1a10c:	04000593          	li	a1,64
   1a110:	a8dfc0ef          	jal	16b9c <_malloc_r>
   1a114:	01013783          	ld	a5,16(sp)
   1a118:	00a7b023          	sd	a0,0(a5)
   1a11c:	00a7bc23          	sd	a0,24(a5)
   1a120:	00051463          	bnez	a0,1a128 <_svfprintf_r+0x14bc>
   1a124:	02c0106f          	j	1b150 <_svfprintf_r+0x24e4>
   1a128:	01013783          	ld	a5,16(sp)
   1a12c:	04000713          	li	a4,64
   1a130:	02e7a023          	sw	a4,32(a5)
   1a134:	bbdfe06f          	j	18cf0 <_svfprintf_r+0x84>
   1a138:	01000513          	li	a0,16
   1a13c:	000d0613          	mv	a2,s10
   1a140:	10812583          	lw	a1,264(sp)
   1a144:	00008d17          	auipc	s10,0x8
   1a148:	534d0d13          	add	s10,s10,1332 # 22678 <zeroes.0>
   1a14c:	65655a63          	bge	a0,s6,1a7a0 <_svfprintf_r+0x1b34>
   1a150:	000a8713          	mv	a4,s5
   1a154:	000d0793          	mv	a5,s10
   1a158:	00048a93          	mv	s5,s1
   1a15c:	000a0d13          	mv	s10,s4
   1a160:	000b0493          	mv	s1,s6
   1a164:	00090a13          	mv	s4,s2
   1a168:	01000813          	li	a6,16
   1a16c:	00700c93          	li	s9,7
   1a170:	00078913          	mv	s2,a5
   1a174:	00070b13          	mv	s6,a4
   1a178:	00c0006f          	j	1a184 <_svfprintf_r+0x1518>
   1a17c:	ff04849b          	addw	s1,s1,-16
   1a180:	60985063          	bge	a6,s1,1a780 <_svfprintf_r+0x1b14>
   1a184:	0015859b          	addw	a1,a1,1
   1a188:	01060613          	add	a2,a2,16
   1a18c:	01243023          	sd	s2,0(s0)
   1a190:	01043423          	sd	a6,8(s0)
   1a194:	10c13823          	sd	a2,272(sp)
   1a198:	10b12423          	sw	a1,264(sp)
   1a19c:	01040413          	add	s0,s0,16
   1a1a0:	fcbcdee3          	bge	s9,a1,1a17c <_svfprintf_r+0x1510>
   1a1a4:	01013583          	ld	a1,16(sp)
   1a1a8:	00813503          	ld	a0,8(sp)
   1a1ac:	10010613          	add	a2,sp,256
   1a1b0:	6a9030ef          	jal	1e058 <__ssprint_r>
   1a1b4:	820512e3          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   1a1b8:	11013603          	ld	a2,272(sp)
   1a1bc:	10812583          	lw	a1,264(sp)
   1a1c0:	18010413          	add	s0,sp,384
   1a1c4:	01000813          	li	a6,16
   1a1c8:	fb5ff06f          	j	1a17c <_svfprintf_r+0x1510>
   1a1cc:	000a8513          	mv	a0,s5
   1a1d0:	09d13023          	sd	t4,128(sp)
   1a1d4:	921fe0ef          	jal	18af4 <strlen>
   1a1d8:	00050c9b          	sext.w	s9,a0
   1a1dc:	0cf14603          	lbu	a2,207(sp)
   1a1e0:	fffcc713          	not	a4,s9
   1a1e4:	43f75713          	sra	a4,a4,0x3f
   1a1e8:	02013023          	sd	zero,32(sp)
   1a1ec:	04013023          	sd	zero,64(sp)
   1a1f0:	02013c23          	sd	zero,56(sp)
   1a1f4:	02013423          	sd	zero,40(sp)
   1a1f8:	08013e83          	ld	t4,128(sp)
   1a1fc:	01977bb3          	and	s7,a4,s9
   1a200:	00000e13          	li	t3,0
   1a204:	8c061a63          	bnez	a2,192d8 <_svfprintf_r+0x66c>
   1a208:	c49fe06f          	j	18e50 <_svfprintf_r+0x1e4>
   1a20c:	08913823          	sd	s1,144(sp)
   1a210:	03813483          	ld	s1,56(sp)
   1a214:	09313023          	sd	s3,128(sp)
   1a218:	09213423          	sd	s2,136(sp)
   1a21c:	03713c23          	sd	s7,56(sp)
   1a220:	04013b83          	ld	s7,64(sp)
   1a224:	05413023          	sd	s4,64(sp)
   1a228:	00040793          	mv	a5,s0
   1a22c:	000a8a13          	mv	s4,s5
   1a230:	06813983          	ld	s3,104(sp)
   1a234:	07813903          	ld	s2,120(sp)
   1a238:	00813c83          	ld	s9,8(sp)
   1a23c:	01013403          	ld	s0,16(sp)
   1a240:	07013a83          	ld	s5,112(sp)
   1a244:	00700893          	li	a7,7
   1a248:	01000813          	li	a6,16
   1a24c:	00008b17          	auipc	s6,0x8
   1a250:	42cb0b13          	add	s6,s6,1068 # 22678 <zeroes.0>
   1a254:	000d0693          	mv	a3,s10
   1a258:	08048c63          	beqz	s1,1a2f0 <_svfprintf_r+0x1684>
   1a25c:	160b8c63          	beqz	s7,1a3d4 <_svfprintf_r+0x1768>
   1a260:	fffb8b9b          	addw	s7,s7,-1
   1a264:	10812703          	lw	a4,264(sp)
   1a268:	015686b3          	add	a3,a3,s5
   1a26c:	0127b023          	sd	s2,0(a5)
   1a270:	0017061b          	addw	a2,a4,1
   1a274:	0157b423          	sd	s5,8(a5)
   1a278:	10d13823          	sd	a3,272(sp)
   1a27c:	10c12423          	sw	a2,264(sp)
   1a280:	01078793          	add	a5,a5,16
   1a284:	16c8c263          	blt	a7,a2,1a3e8 <_svfprintf_r+0x177c>
   1a288:	0009c603          	lbu	a2,0(s3)
   1a28c:	414c0733          	sub	a4,s8,s4
   1a290:	0007059b          	sext.w	a1,a4
   1a294:	0006031b          	sext.w	t1,a2
   1a298:	00b65463          	bge	a2,a1,1a2a0 <_svfprintf_r+0x1634>
   1a29c:	00030713          	mv	a4,t1
   1a2a0:	00070d1b          	sext.w	s10,a4
   1a2a4:	03a05863          	blez	s10,1a2d4 <_svfprintf_r+0x1668>
   1a2a8:	10812603          	lw	a2,264(sp)
   1a2ac:	01a686b3          	add	a3,a3,s10
   1a2b0:	0147b023          	sd	s4,0(a5)
   1a2b4:	0016059b          	addw	a1,a2,1
   1a2b8:	01a7b423          	sd	s10,8(a5)
   1a2bc:	10d13823          	sd	a3,272(sp)
   1a2c0:	10b12423          	sw	a1,264(sp)
   1a2c4:	26b8cc63          	blt	a7,a1,1a53c <_svfprintf_r+0x18d0>
   1a2c8:	0009c603          	lbu	a2,0(s3)
   1a2cc:	01078793          	add	a5,a5,16
   1a2d0:	0006031b          	sext.w	t1,a2
   1a2d4:	fffd4593          	not	a1,s10
   1a2d8:	43f5d593          	sra	a1,a1,0x3f
   1a2dc:	00bd7733          	and	a4,s10,a1
   1a2e0:	40e30d3b          	subw	s10,t1,a4
   1a2e4:	05a04063          	bgtz	s10,1a324 <_svfprintf_r+0x16b8>
   1a2e8:	00ca0a33          	add	s4,s4,a2
   1a2ec:	f60498e3          	bnez	s1,1a25c <_svfprintf_r+0x15f0>
   1a2f0:	f60b98e3          	bnez	s7,1a260 <_svfprintf_r+0x15f4>
   1a2f4:	07313423          	sd	s3,104(sp)
   1a2f8:	000a0a93          	mv	s5,s4
   1a2fc:	08013983          	ld	s3,128(sp)
   1a300:	08813903          	ld	s2,136(sp)
   1a304:	09013483          	ld	s1,144(sp)
   1a308:	03813b83          	ld	s7,56(sp)
   1a30c:	04013a03          	ld	s4,64(sp)
   1a310:	00078413          	mv	s0,a5
   1a314:	00068d13          	mv	s10,a3
   1a318:	975c7ce3          	bgeu	s8,s5,19c90 <_svfprintf_r+0x1024>
   1a31c:	000c0a93          	mv	s5,s8
   1a320:	971ff06f          	j	19c90 <_svfprintf_r+0x1024>
   1a324:	10812703          	lw	a4,264(sp)
   1a328:	00008597          	auipc	a1,0x8
   1a32c:	35058593          	add	a1,a1,848 # 22678 <zeroes.0>
   1a330:	07a85c63          	bge	a6,s10,1a3a8 <_svfprintf_r+0x173c>
   1a334:	02913423          	sd	s1,40(sp)
   1a338:	000d0493          	mv	s1,s10
   1a33c:	000b0d13          	mv	s10,s6
   1a340:	00c0006f          	j	1a34c <_svfprintf_r+0x16e0>
   1a344:	ff04849b          	addw	s1,s1,-16
   1a348:	04985a63          	bge	a6,s1,1a39c <_svfprintf_r+0x1730>
   1a34c:	0017071b          	addw	a4,a4,1
   1a350:	01068693          	add	a3,a3,16
   1a354:	0167b023          	sd	s6,0(a5)
   1a358:	0107b423          	sd	a6,8(a5)
   1a35c:	10d13823          	sd	a3,272(sp)
   1a360:	10e12423          	sw	a4,264(sp)
   1a364:	01078793          	add	a5,a5,16
   1a368:	fce8dee3          	bge	a7,a4,1a344 <_svfprintf_r+0x16d8>
   1a36c:	10010613          	add	a2,sp,256
   1a370:	00040593          	mv	a1,s0
   1a374:	000c8513          	mv	a0,s9
   1a378:	4e1030ef          	jal	1e058 <__ssprint_r>
   1a37c:	e4051e63          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   1a380:	01000813          	li	a6,16
   1a384:	ff04849b          	addw	s1,s1,-16
   1a388:	11013683          	ld	a3,272(sp)
   1a38c:	10812703          	lw	a4,264(sp)
   1a390:	18010793          	add	a5,sp,384
   1a394:	00700893          	li	a7,7
   1a398:	fa984ae3          	blt	a6,s1,1a34c <_svfprintf_r+0x16e0>
   1a39c:	000d0593          	mv	a1,s10
   1a3a0:	00048d13          	mv	s10,s1
   1a3a4:	02813483          	ld	s1,40(sp)
   1a3a8:	0017061b          	addw	a2,a4,1
   1a3ac:	00dd06b3          	add	a3,s10,a3
   1a3b0:	00b7b023          	sd	a1,0(a5)
   1a3b4:	01a7b423          	sd	s10,8(a5)
   1a3b8:	10d13823          	sd	a3,272(sp)
   1a3bc:	10c12423          	sw	a2,264(sp)
   1a3c0:	20c8cce3          	blt	a7,a2,1add8 <_svfprintf_r+0x216c>
   1a3c4:	0009c603          	lbu	a2,0(s3)
   1a3c8:	01078793          	add	a5,a5,16
   1a3cc:	00ca0a33          	add	s4,s4,a2
   1a3d0:	f1dff06f          	j	1a2ec <_svfprintf_r+0x1680>
   1a3d4:	fff98993          	add	s3,s3,-1
   1a3d8:	fff4849b          	addw	s1,s1,-1
   1a3dc:	e89ff06f          	j	1a264 <_svfprintf_r+0x15f8>
   1a3e0:	000a3b03          	ld	s6,0(s4)
   1a3e4:	c81ff06f          	j	1a064 <_svfprintf_r+0x13f8>
   1a3e8:	10010613          	add	a2,sp,256
   1a3ec:	00040593          	mv	a1,s0
   1a3f0:	000c8513          	mv	a0,s9
   1a3f4:	465030ef          	jal	1e058 <__ssprint_r>
   1a3f8:	de051063          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   1a3fc:	11013683          	ld	a3,272(sp)
   1a400:	18010793          	add	a5,sp,384
   1a404:	01000813          	li	a6,16
   1a408:	00700893          	li	a7,7
   1a40c:	e7dff06f          	j	1a288 <_svfprintf_r+0x161c>
   1a410:	10812683          	lw	a3,264(sp)
   1a414:	00008597          	auipc	a1,0x8
   1a418:	97458593          	add	a1,a1,-1676 # 21d88 <__clzdi2+0xd8>
   1a41c:	00b43023          	sd	a1,0(s0)
   1a420:	0016869b          	addw	a3,a3,1
   1a424:	00100593          	li	a1,1
   1a428:	001d0613          	add	a2,s10,1
   1a42c:	00b43423          	sd	a1,8(s0)
   1a430:	10d12423          	sw	a3,264(sp)
   1a434:	0006859b          	sext.w	a1,a3
   1a438:	10c13823          	sd	a2,272(sp)
   1a43c:	00700693          	li	a3,7
   1a440:	01040413          	add	s0,s0,16
   1a444:	06b6cc63          	blt	a3,a1,1a4bc <_svfprintf_r+0x1850>
   1a448:	20051c63          	bnez	a0,1a660 <_svfprintf_r+0x19f4>
   1a44c:	03013783          	ld	a5,48(sp)
   1a450:	00197693          	and	a3,s2,1
   1a454:	00d7e6b3          	or	a3,a5,a3
   1a458:	00069463          	bnez	a3,1a460 <_svfprintf_r+0x17f4>
   1a45c:	ac9fe06f          	j	18f24 <_svfprintf_r+0x2b8>
   1a460:	10812683          	lw	a3,264(sp)
   1a464:	04813783          	ld	a5,72(sp)
   1a468:	05013703          	ld	a4,80(sp)
   1a46c:	0016859b          	addw	a1,a3,1
   1a470:	00c78633          	add	a2,a5,a2
   1a474:	00e43023          	sd	a4,0(s0)
   1a478:	00f43423          	sd	a5,8(s0)
   1a47c:	10c13823          	sd	a2,272(sp)
   1a480:	10b12423          	sw	a1,264(sp)
   1a484:	00700693          	li	a3,7
   1a488:	62b6c863          	blt	a3,a1,1aab8 <_svfprintf_r+0x1e4c>
   1a48c:	01040413          	add	s0,s0,16
   1a490:	03013783          	ld	a5,48(sp)
   1a494:	0015869b          	addw	a3,a1,1
   1a498:	01543023          	sd	s5,0(s0)
   1a49c:	00c78633          	add	a2,a5,a2
   1a4a0:	00f43423          	sd	a5,8(s0)
   1a4a4:	10c13823          	sd	a2,272(sp)
   1a4a8:	10d12423          	sw	a3,264(sp)
   1a4ac:	00700793          	li	a5,7
   1a4b0:	00d7c463          	blt	a5,a3,1a4b8 <_svfprintf_r+0x184c>
   1a4b4:	a6dfe06f          	j	18f20 <_svfprintf_r+0x2b4>
   1a4b8:	d69fe06f          	j	19220 <_svfprintf_r+0x5b4>
   1a4bc:	01013583          	ld	a1,16(sp)
   1a4c0:	00813503          	ld	a0,8(sp)
   1a4c4:	10010613          	add	a2,sp,256
   1a4c8:	391030ef          	jal	1e058 <__ssprint_r>
   1a4cc:	d0051663          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   1a4d0:	0d812503          	lw	a0,216(sp)
   1a4d4:	11013603          	ld	a2,272(sp)
   1a4d8:	18010413          	add	s0,sp,384
   1a4dc:	f6dff06f          	j	1a448 <_svfprintf_r+0x17dc>
   1a4e0:	01013583          	ld	a1,16(sp)
   1a4e4:	00813503          	ld	a0,8(sp)
   1a4e8:	10010613          	add	a2,sp,256
   1a4ec:	36d030ef          	jal	1e058 <__ssprint_r>
   1a4f0:	ce051463          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   1a4f4:	11013d03          	ld	s10,272(sp)
   1a4f8:	18010413          	add	s0,sp,384
   1a4fc:	9f0ff06f          	j	196ec <_svfprintf_r+0xa80>
   1a500:	00048713          	mv	a4,s1
   1a504:	000a0493          	mv	s1,s4
   1a508:	000c0a13          	mv	s4,s8
   1a50c:	000d0c13          	mv	s8,s10
   1a510:	00070d13          	mv	s10,a4
   1a514:	0017869b          	addw	a3,a5,1
   1a518:	01a43023          	sd	s10,0(s0)
   1a51c:	01843423          	sd	s8,8(s0)
   1a520:	01860633          	add	a2,a2,s8
   1a524:	10c13823          	sd	a2,272(sp)
   1a528:	10d12423          	sw	a3,264(sp)
   1a52c:	00700793          	li	a5,7
   1a530:	00d7c463          	blt	a5,a3,1a538 <_svfprintf_r+0x18cc>
   1a534:	9edfe06f          	j	18f20 <_svfprintf_r+0x2b4>
   1a538:	ce9fe06f          	j	19220 <_svfprintf_r+0x5b4>
   1a53c:	10010613          	add	a2,sp,256
   1a540:	00040593          	mv	a1,s0
   1a544:	000c8513          	mv	a0,s9
   1a548:	311030ef          	jal	1e058 <__ssprint_r>
   1a54c:	c8051663          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   1a550:	0009c603          	lbu	a2,0(s3)
   1a554:	11013683          	ld	a3,272(sp)
   1a558:	18010793          	add	a5,sp,384
   1a55c:	0006031b          	sext.w	t1,a2
   1a560:	01000813          	li	a6,16
   1a564:	00700893          	li	a7,7
   1a568:	d6dff06f          	j	1a2d4 <_svfprintf_r+0x1668>
   1a56c:	01013583          	ld	a1,16(sp)
   1a570:	00813503          	ld	a0,8(sp)
   1a574:	10010613          	add	a2,sp,256
   1a578:	09c13423          	sd	t3,136(sp)
   1a57c:	09d13023          	sd	t4,128(sp)
   1a580:	2d9030ef          	jal	1e058 <__ssprint_r>
   1a584:	c4051a63          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   1a588:	11013d03          	ld	s10,272(sp)
   1a58c:	08813e03          	ld	t3,136(sp)
   1a590:	08013e83          	ld	t4,128(sp)
   1a594:	18010413          	add	s0,sp,384
   1a598:	955fe06f          	j	18eec <_svfprintf_r+0x280>
   1a59c:	0f013503          	ld	a0,240(sp)
   1a5a0:	0f813583          	ld	a1,248(sp)
   1a5a4:	00000613          	li	a2,0
   1a5a8:	00000693          	li	a3,0
   1a5ac:	2e1050ef          	jal	2008c <__letf2>
   1a5b0:	02013e83          	ld	t4,32(sp)
   1a5b4:	14054ee3          	bltz	a0,1af10 <_svfprintf_r+0x22a4>
   1a5b8:	0cf14603          	lbu	a2,207(sp)
   1a5bc:	04700713          	li	a4,71
   1a5c0:	00007a97          	auipc	s5,0x7
   1a5c4:	770a8a93          	add	s5,s5,1904 # 21d30 <__clzdi2+0x80>
   1a5c8:	25d74a63          	blt	a4,t4,1a81c <_svfprintf_r+0x1bb0>
   1a5cc:	f7f97913          	and	s2,s2,-129
   1a5d0:	02013023          	sd	zero,32(sp)
   1a5d4:	04013023          	sd	zero,64(sp)
   1a5d8:	02013c23          	sd	zero,56(sp)
   1a5dc:	02013423          	sd	zero,40(sp)
   1a5e0:	0009091b          	sext.w	s2,s2
   1a5e4:	00300b93          	li	s7,3
   1a5e8:	00300c93          	li	s9,3
   1a5ec:	00000e13          	li	t3,0
   1a5f0:	00060463          	beqz	a2,1a5f8 <_svfprintf_r+0x198c>
   1a5f4:	ce5fe06f          	j	192d8 <_svfprintf_r+0x66c>
   1a5f8:	859fe06f          	j	18e50 <_svfprintf_r+0x1e4>
   1a5fc:	00600793          	li	a5,6
   1a600:	000b8693          	mv	a3,s7
   1a604:	2577e263          	bltu	a5,s7,1a848 <_svfprintf_r+0x1bdc>
   1a608:	00068c9b          	sext.w	s9,a3
   1a60c:	000c8b93          	mv	s7,s9
   1a610:	00007a97          	auipc	s5,0x7
   1a614:	770a8a93          	add	s5,s5,1904 # 21d80 <__clzdi2+0xd0>
   1a618:	825fe06f          	j	18e3c <_svfprintf_r+0x1d0>
   1a61c:	00048713          	mv	a4,s1
   1a620:	00090793          	mv	a5,s2
   1a624:	000b0493          	mv	s1,s6
   1a628:	000a0913          	mv	s2,s4
   1a62c:	00070b13          	mv	s6,a4
   1a630:	000d0a13          	mv	s4,s10
   1a634:	00078d13          	mv	s10,a5
   1a638:	0014041b          	addw	s0,s0,1
   1a63c:	016c8cb3          	add	s9,s9,s6
   1a640:	01ac3023          	sd	s10,0(s8)
   1a644:	016c3423          	sd	s6,8(s8)
   1a648:	11913823          	sd	s9,272(sp)
   1a64c:	10812423          	sw	s0,264(sp)
   1a650:	00700793          	li	a5,7
   1a654:	0087c463          	blt	a5,s0,1a65c <_svfprintf_r+0x19f0>
   1a658:	b99fe06f          	j	191f0 <_svfprintf_r+0x584>
   1a65c:	f90ff06f          	j	19dec <_svfprintf_r+0x1180>
   1a660:	10812683          	lw	a3,264(sp)
   1a664:	04813783          	ld	a5,72(sp)
   1a668:	05013703          	ld	a4,80(sp)
   1a66c:	0016859b          	addw	a1,a3,1
   1a670:	00c78633          	add	a2,a5,a2
   1a674:	00e43023          	sd	a4,0(s0)
   1a678:	00f43423          	sd	a5,8(s0)
   1a67c:	10c13823          	sd	a2,272(sp)
   1a680:	10b12423          	sw	a1,264(sp)
   1a684:	00700693          	li	a3,7
   1a688:	01040413          	add	s0,s0,16
   1a68c:	42b6c663          	blt	a3,a1,1aab8 <_svfprintf_r+0x1e4c>
   1a690:	e00550e3          	bgez	a0,1a490 <_svfprintf_r+0x1824>
   1a694:	ff000693          	li	a3,-16
   1a698:	40a00c3b          	negw	s8,a0
   1a69c:	00008d17          	auipc	s10,0x8
   1a6a0:	fdcd0d13          	add	s10,s10,-36 # 22678 <zeroes.0>
   1a6a4:	01000c93          	li	s9,16
   1a6a8:	00700b13          	li	s6,7
   1a6ac:	00d54863          	blt	a0,a3,1a6bc <_svfprintf_r+0x1a50>
   1a6b0:	21d0006f          	j	1b0cc <_svfprintf_r+0x2460>
   1a6b4:	ff0c0c1b          	addw	s8,s8,-16
   1a6b8:	218cdae3          	bge	s9,s8,1b0cc <_svfprintf_r+0x2460>
   1a6bc:	0015859b          	addw	a1,a1,1
   1a6c0:	01060613          	add	a2,a2,16
   1a6c4:	01a43023          	sd	s10,0(s0)
   1a6c8:	01943423          	sd	s9,8(s0)
   1a6cc:	10c13823          	sd	a2,272(sp)
   1a6d0:	10b12423          	sw	a1,264(sp)
   1a6d4:	01040413          	add	s0,s0,16
   1a6d8:	fcbb5ee3          	bge	s6,a1,1a6b4 <_svfprintf_r+0x1a48>
   1a6dc:	01013583          	ld	a1,16(sp)
   1a6e0:	00813503          	ld	a0,8(sp)
   1a6e4:	10010613          	add	a2,sp,256
   1a6e8:	171030ef          	jal	1e058 <__ssprint_r>
   1a6ec:	ae051663          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   1a6f0:	11013603          	ld	a2,272(sp)
   1a6f4:	10812583          	lw	a1,264(sp)
   1a6f8:	18010413          	add	s0,sp,384
   1a6fc:	fb9ff06f          	j	1a6b4 <_svfprintf_r+0x1a48>
   1a700:	200c7793          	and	a5,s8,512
   1a704:	36078863          	beqz	a5,1aa74 <_svfprintf_r+0x1e08>
   1a708:	0ffb7b13          	zext.b	s6,s6
   1a70c:	00070a13          	mv	s4,a4
   1a710:	00100793          	li	a5,1
   1a714:	d09fe06f          	j	1941c <_svfprintf_r+0x7b0>
   1a718:	20097793          	and	a5,s2,512
   1a71c:	34078663          	beqz	a5,1aa68 <_svfprintf_r+0x1dfc>
   1a720:	0ffb7b13          	zext.b	s6,s6
   1a724:	e95fe06f          	j	195b8 <_svfprintf_r+0x94c>
   1a728:	20097793          	and	a5,s2,512
   1a72c:	36078263          	beqz	a5,1aa90 <_svfprintf_r+0x1e24>
   1a730:	0ffb7b13          	zext.b	s6,s6
   1a734:	931ff06f          	j	1a064 <_svfprintf_r+0x13f8>
   1a738:	20097793          	and	a5,s2,512
   1a73c:	34078663          	beqz	a5,1aa88 <_svfprintf_r+0x1e1c>
   1a740:	018b1b1b          	sllw	s6,s6,0x18
   1a744:	418b5b1b          	sraw	s6,s6,0x18
   1a748:	000b0793          	mv	a5,s6
   1a74c:	d89fe06f          	j	194d4 <_svfprintf_r+0x868>
   1a750:	0f813783          	ld	a5,248(sp)
   1a754:	3407d463          	bgez	a5,1aa9c <_svfprintf_r+0x1e30>
   1a758:	02d00793          	li	a5,45
   1a75c:	0cf107a3          	sb	a5,207(sp)
   1a760:	02d00613          	li	a2,45
   1a764:	04700713          	li	a4,71
   1a768:	00007a97          	auipc	s5,0x7
   1a76c:	5d8a8a93          	add	s5,s5,1496 # 21d40 <__clzdi2+0x90>
   1a770:	e5d75ee3          	bge	a4,t4,1a5cc <_svfprintf_r+0x1960>
   1a774:	00007a97          	auipc	s5,0x7
   1a778:	5d4a8a93          	add	s5,s5,1492 # 21d48 <__clzdi2+0x98>
   1a77c:	e51ff06f          	j	1a5cc <_svfprintf_r+0x1960>
   1a780:	000b0713          	mv	a4,s6
   1a784:	00090793          	mv	a5,s2
   1a788:	00048b13          	mv	s6,s1
   1a78c:	000a0913          	mv	s2,s4
   1a790:	000a8493          	mv	s1,s5
   1a794:	000d0a13          	mv	s4,s10
   1a798:	00070a93          	mv	s5,a4
   1a79c:	00078d13          	mv	s10,a5
   1a7a0:	0015851b          	addw	a0,a1,1
   1a7a4:	00cb0633          	add	a2,s6,a2
   1a7a8:	01a43023          	sd	s10,0(s0)
   1a7ac:	01643423          	sd	s6,8(s0)
   1a7b0:	10c13823          	sd	a2,272(sp)
   1a7b4:	10a12423          	sw	a0,264(sp)
   1a7b8:	00700693          	li	a3,7
   1a7bc:	32a6c663          	blt	a3,a0,1aae8 <_svfprintf_r+0x1e7c>
   1a7c0:	01040413          	add	s0,s0,16
   1a7c4:	00060d13          	mv	s10,a2
   1a7c8:	cb8ff06f          	j	19c80 <_svfprintf_r+0x1014>
   1a7cc:	07013783          	ld	a5,112(sp)
   1a7d0:	07813583          	ld	a1,120(sp)
   1a7d4:	03c13823          	sd	t3,48(sp)
   1a7d8:	40fa8ab3          	sub	s5,s5,a5
   1a7dc:	00078613          	mv	a2,a5
   1a7e0:	000a8513          	mv	a0,s5
   1a7e4:	03d13423          	sd	t4,40(sp)
   1a7e8:	03013023          	sd	a6,32(sp)
   1a7ec:	bd4fe0ef          	jal	18bc0 <strncpy>
   1a7f0:	02013803          	ld	a6,32(sp)
   1a7f4:	00a00793          	li	a5,10
   1a7f8:	02fb57b3          	divu	a5,s6,a5
   1a7fc:	00184683          	lbu	a3,1(a6)
   1a800:	02813e83          	ld	t4,40(sp)
   1a804:	03013e03          	ld	t3,48(sp)
   1a808:	00d036b3          	snez	a3,a3
   1a80c:	00d80833          	add	a6,a6,a3
   1a810:	0ff00713          	li	a4,255
   1a814:	00000693          	li	a3,0
   1a818:	fd0ff06f          	j	19fe8 <_svfprintf_r+0x137c>
   1a81c:	00007a97          	auipc	s5,0x7
   1a820:	51ca8a93          	add	s5,s5,1308 # 21d38 <__clzdi2+0x88>
   1a824:	da9ff06f          	j	1a5cc <_svfprintf_r+0x1960>
   1a828:	01013583          	ld	a1,16(sp)
   1a82c:	00813503          	ld	a0,8(sp)
   1a830:	10010613          	add	a2,sp,256
   1a834:	025030ef          	jal	1e058 <__ssprint_r>
   1a838:	9a051063          	bnez	a0,199d8 <_svfprintf_r+0xd6c>
   1a83c:	11013d03          	ld	s10,272(sp)
   1a840:	18010413          	add	s0,sp,384
   1a844:	c24ff06f          	j	19c68 <_svfprintf_r+0xffc>
   1a848:	00600693          	li	a3,6
   1a84c:	dbdff06f          	j	1a608 <_svfprintf_r+0x199c>
   1a850:	415c0c33          	sub	s8,s8,s5
   1a854:	40d785bb          	subw	a1,a5,a3
   1a858:	000c079b          	sext.w	a5,s8
   1a85c:	000d0613          	mv	a2,s10
   1a860:	00f5d463          	bge	a1,a5,1a868 <_svfprintf_r+0x1bfc>
   1a864:	00058c13          	mv	s8,a1
   1a868:	000c0c1b          	sext.w	s8,s8
   1a86c:	cb8ff06f          	j	19d24 <_svfprintf_r+0x10b8>
   1a870:	01813783          	ld	a5,24(sp)
   1a874:	008a0a13          	add	s4,s4,8
   1a878:	00f71023          	sh	a5,0(a4)
   1a87c:	de9fe06f          	j	19664 <_svfprintf_r+0x9f8>
   1a880:	000e0913          	mv	s2,t3
   1a884:	00200693          	li	a3,2
   1a888:	00813503          	ld	a0,8(sp)
   1a88c:	00090713          	mv	a4,s2
   1a890:	0e810893          	add	a7,sp,232
   1a894:	0dc10813          	add	a6,sp,220
   1a898:	0d810793          	add	a5,sp,216
   1a89c:	000c0593          	mv	a1,s8
   1a8a0:	000b8613          	mv	a2,s7
   1a8a4:	03c13823          	sd	t3,48(sp)
   1a8a8:	03d13423          	sd	t4,40(sp)
   1a8ac:	d39fa0ef          	jal	155e4 <_ldtoa_r>
   1a8b0:	02813e83          	ld	t4,40(sp)
   1a8b4:	06700713          	li	a4,103
   1a8b8:	03013e03          	ld	t3,48(sp)
   1a8bc:	00050a93          	mv	s5,a0
   1a8c0:	50ee8063          	beq	t4,a4,1adc0 <_svfprintf_r+0x2154>
   1a8c4:	04700713          	li	a4,71
   1a8c8:	4eee8c63          	beq	t4,a4,1adc0 <_svfprintf_r+0x2154>
   1a8cc:	fdfefd13          	and	s10,t4,-33
   1a8d0:	04600713          	li	a4,70
   1a8d4:	01250cb3          	add	s9,a0,s2
   1a8d8:	66ed0863          	beq	s10,a4,1af48 <_svfprintf_r+0x22dc>
   1a8dc:	000b8593          	mv	a1,s7
   1a8e0:	00000613          	li	a2,0
   1a8e4:	00000693          	li	a3,0
   1a8e8:	000c0513          	mv	a0,s8
   1a8ec:	03c13823          	sd	t3,48(sp)
   1a8f0:	03d13423          	sd	t4,40(sp)
   1a8f4:	5b8050ef          	jal	1feac <__eqtf2>
   1a8f8:	02813e83          	ld	t4,40(sp)
   1a8fc:	03013e03          	ld	t3,48(sp)
   1a900:	000c8b93          	mv	s7,s9
   1a904:	02050263          	beqz	a0,1a928 <_svfprintf_r+0x1cbc>
   1a908:	0e813b83          	ld	s7,232(sp)
   1a90c:	019bfe63          	bgeu	s7,s9,1a928 <_svfprintf_r+0x1cbc>
   1a910:	03000693          	li	a3,48
   1a914:	001b8793          	add	a5,s7,1
   1a918:	0ef13423          	sd	a5,232(sp)
   1a91c:	00db8023          	sb	a3,0(s7)
   1a920:	0e813b83          	ld	s7,232(sp)
   1a924:	ff9be8e3          	bltu	s7,s9,1a914 <_svfprintf_r+0x1ca8>
   1a928:	415b87bb          	subw	a5,s7,s5
   1a92c:	02f13823          	sd	a5,48(sp)
   1a930:	0d812603          	lw	a2,216(sp)
   1a934:	04700713          	li	a4,71
   1a938:	02c13423          	sd	a2,40(sp)
   1a93c:	3eed0a63          	beq	s10,a4,1ad30 <_svfprintf_r+0x20c4>
   1a940:	04600713          	li	a4,70
   1a944:	6ced0a63          	beq	s10,a4,1b018 <_svfprintf_r+0x23ac>
   1a948:	fff6071b          	addw	a4,a2,-1
   1a94c:	0ce12c23          	sw	a4,216(sp)
   1a950:	06100693          	li	a3,97
   1a954:	14de82e3          	beq	t4,a3,1b298 <_svfprintf_r+0x262c>
   1a958:	04100593          	li	a1,65
   1a95c:	05000693          	li	a3,80
   1a960:	3ebe9663          	bne	t4,a1,1ad4c <_svfprintf_r+0x20e0>
   1a964:	00100593          	li	a1,1
   1a968:	0ed10023          	sb	a3,224(sp)
   1a96c:	02b00693          	li	a3,43
   1a970:	00075863          	bgez	a4,1a980 <_svfprintf_r+0x1d14>
   1a974:	00100713          	li	a4,1
   1a978:	40c7073b          	subw	a4,a4,a2
   1a97c:	02d00693          	li	a3,45
   1a980:	0ed100a3          	sb	a3,225(sp)
   1a984:	00900693          	li	a3,9
   1a988:	78e6d663          	bge	a3,a4,1b114 <_svfprintf_r+0x24a8>
   1a98c:	0ef10813          	add	a6,sp,239
   1a990:	00080893          	mv	a7,a6
   1a994:	00a00e13          	li	t3,10
   1a998:	06300f93          	li	t6,99
   1a99c:	03c767bb          	remw	a5,a4,t3
   1a9a0:	00088613          	mv	a2,a7
   1a9a4:	00070693          	mv	a3,a4
   1a9a8:	fff88893          	add	a7,a7,-1
   1a9ac:	0307879b          	addw	a5,a5,48
   1a9b0:	fef60fa3          	sb	a5,-1(a2)
   1a9b4:	03c7473b          	divw	a4,a4,t3
   1a9b8:	fedfc2e3          	blt	t6,a3,1a99c <_svfprintf_r+0x1d30>
   1a9bc:	0307051b          	addw	a0,a4,48
   1a9c0:	fea88fa3          	sb	a0,-1(a7)
   1a9c4:	ffe60713          	add	a4,a2,-2
   1a9c8:	150770e3          	bgeu	a4,a6,1b308 <_svfprintf_r+0x269c>
   1a9cc:	0e210693          	add	a3,sp,226
   1a9d0:	00074783          	lbu	a5,0(a4)
   1a9d4:	00170713          	add	a4,a4,1
   1a9d8:	00168693          	add	a3,a3,1
   1a9dc:	fef68fa3          	sb	a5,-1(a3)
   1a9e0:	ff0718e3          	bne	a4,a6,1a9d0 <_svfprintf_r+0x1d64>
   1a9e4:	0f110713          	add	a4,sp,241
   1a9e8:	0e210793          	add	a5,sp,226
   1a9ec:	40c70733          	sub	a4,a4,a2
   1a9f0:	00e78733          	add	a4,a5,a4
   1a9f4:	0e010693          	add	a3,sp,224
   1a9f8:	40d707bb          	subw	a5,a4,a3
   1a9fc:	06f13023          	sd	a5,96(sp)
   1aa00:	06013703          	ld	a4,96(sp)
   1aa04:	03013783          	ld	a5,48(sp)
   1aa08:	00100613          	li	a2,1
   1aa0c:	00f70cbb          	addw	s9,a4,a5
   1aa10:	000c8713          	mv	a4,s9
   1aa14:	74f65a63          	bge	a2,a5,1b168 <_svfprintf_r+0x24fc>
   1aa18:	04813783          	ld	a5,72(sp)
   1aa1c:	00f70cbb          	addw	s9,a4,a5
   1aa20:	03813783          	ld	a5,56(sp)
   1aa24:	fffcc713          	not	a4,s9
   1aa28:	43f75713          	sra	a4,a4,0x3f
   1aa2c:	bff7f913          	and	s2,a5,-1025
   1aa30:	0009091b          	sext.w	s2,s2
   1aa34:	00ecf733          	and	a4,s9,a4
   1aa38:	10096913          	or	s2,s2,256
   1aa3c:	00070b9b          	sext.w	s7,a4
   1aa40:	04013023          	sd	zero,64(sp)
   1aa44:	02013c23          	sd	zero,56(sp)
   1aa48:	02013423          	sd	zero,40(sp)
   1aa4c:	08813783          	ld	a5,136(sp)
   1aa50:	30078463          	beqz	a5,1ad58 <_svfprintf_r+0x20ec>
   1aa54:	02d00613          	li	a2,45
   1aa58:	0cc107a3          	sb	a2,207(sp)
   1aa5c:	00000e13          	li	t3,0
   1aa60:	001b8b9b          	addw	s7,s7,1
   1aa64:	becfe06f          	j	18e50 <_svfprintf_r+0x1e4>
   1aa68:	020b1b13          	sll	s6,s6,0x20
   1aa6c:	020b5b13          	srl	s6,s6,0x20
   1aa70:	b49fe06f          	j	195b8 <_svfprintf_r+0x94c>
   1aa74:	020b1b13          	sll	s6,s6,0x20
   1aa78:	020b5b13          	srl	s6,s6,0x20
   1aa7c:	00070a13          	mv	s4,a4
   1aa80:	00100793          	li	a5,1
   1aa84:	999fe06f          	j	1941c <_svfprintf_r+0x7b0>
   1aa88:	000b0793          	mv	a5,s6
   1aa8c:	a49fe06f          	j	194d4 <_svfprintf_r+0x868>
   1aa90:	020b1b13          	sll	s6,s6,0x20
   1aa94:	020b5b13          	srl	s6,s6,0x20
   1aa98:	dccff06f          	j	1a064 <_svfprintf_r+0x13f8>
   1aa9c:	0cf14603          	lbu	a2,207(sp)
   1aaa0:	cc5ff06f          	j	1a764 <_svfprintf_r+0x1af8>
   1aaa4:	01013583          	ld	a1,16(sp)
   1aaa8:	00813503          	ld	a0,8(sp)
   1aaac:	10010613          	add	a2,sp,256
   1aab0:	5a8030ef          	jal	1e058 <__ssprint_r>
   1aab4:	cd0fe06f          	j	18f84 <_svfprintf_r+0x318>
   1aab8:	01013583          	ld	a1,16(sp)
   1aabc:	00813503          	ld	a0,8(sp)
   1aac0:	10010613          	add	a2,sp,256
   1aac4:	594030ef          	jal	1e058 <__ssprint_r>
   1aac8:	00050463          	beqz	a0,1aad0 <_svfprintf_r+0x1e64>
   1aacc:	f0dfe06f          	j	199d8 <_svfprintf_r+0xd6c>
   1aad0:	0d812503          	lw	a0,216(sp)
   1aad4:	11013603          	ld	a2,272(sp)
   1aad8:	10812583          	lw	a1,264(sp)
   1aadc:	18010413          	add	s0,sp,384
   1aae0:	9a0558e3          	bgez	a0,1a490 <_svfprintf_r+0x1824>
   1aae4:	bb1ff06f          	j	1a694 <_svfprintf_r+0x1a28>
   1aae8:	01013583          	ld	a1,16(sp)
   1aaec:	00813503          	ld	a0,8(sp)
   1aaf0:	10010613          	add	a2,sp,256
   1aaf4:	564030ef          	jal	1e058 <__ssprint_r>
   1aaf8:	00050463          	beqz	a0,1ab00 <_svfprintf_r+0x1e94>
   1aafc:	eddfe06f          	j	199d8 <_svfprintf_r+0xd6c>
   1ab00:	11013d03          	ld	s10,272(sp)
   1ab04:	18010413          	add	s0,sp,384
   1ab08:	978ff06f          	j	19c80 <_svfprintf_r+0x1014>
   1ab0c:	00600e13          	li	t3,6
   1ab10:	da0fe06f          	j	190b0 <_svfprintf_r+0x444>
   1ab14:	001e091b          	addw	s2,t3,1
   1ab18:	00200693          	li	a3,2
   1ab1c:	d6dff06f          	j	1a888 <_svfprintf_r+0x1c1c>
   1ab20:	000e0913          	mv	s2,t3
   1ab24:	00300693          	li	a3,3
   1ab28:	d61ff06f          	j	1a888 <_svfprintf_r+0x1c1c>
   1ab2c:	000b8593          	mv	a1,s7
   1ab30:	000c0513          	mv	a0,s8
   1ab34:	03c13823          	sd	t3,48(sp)
   1ab38:	03d13423          	sd	t4,40(sp)
   1ab3c:	5e1060ef          	jal	2191c <__trunctfdf2>
   1ab40:	0d810513          	add	a0,sp,216
   1ab44:	b89fd0ef          	jal	186cc <frexp>
   1ab48:	4b9060ef          	jal	21800 <__extenddftf2>
   1ab4c:	00007717          	auipc	a4,0x7
   1ab50:	46470713          	add	a4,a4,1124 # 21fb0 <blanks.1+0x10>
   1ab54:	00073603          	ld	a2,0(a4)
   1ab58:	00873683          	ld	a3,8(a4)
   1ab5c:	63c050ef          	jal	20198 <__multf3>
   1ab60:	00000613          	li	a2,0
   1ab64:	00000693          	li	a3,0
   1ab68:	00050d13          	mv	s10,a0
   1ab6c:	00058913          	mv	s2,a1
   1ab70:	33c050ef          	jal	1feac <__eqtf2>
   1ab74:	02813e83          	ld	t4,40(sp)
   1ab78:	03013e03          	ld	t3,48(sp)
   1ab7c:	00051663          	bnez	a0,1ab88 <_svfprintf_r+0x1f1c>
   1ab80:	00100713          	li	a4,1
   1ab84:	0ce12c23          	sw	a4,216(sp)
   1ab88:	00007797          	auipc	a5,0x7
   1ab8c:	1c878793          	add	a5,a5,456 # 21d50 <__clzdi2+0xa0>
   1ab90:	02f13423          	sd	a5,40(sp)
   1ab94:	00007697          	auipc	a3,0x7
   1ab98:	42c68693          	add	a3,a3,1068 # 21fc0 <blanks.1+0x20>
   1ab9c:	020e1713          	sll	a4,t3,0x20
   1aba0:	0006b783          	ld	a5,0(a3)
   1aba4:	02075713          	srl	a4,a4,0x20
   1aba8:	0086b683          	ld	a3,8(a3)
   1abac:	00170713          	add	a4,a4,1
   1abb0:	00ea8733          	add	a4,s5,a4
   1abb4:	000e061b          	sext.w	a2,t3
   1abb8:	03313823          	sd	s3,48(sp)
   1abbc:	0a813023          	sd	s0,160(sp)
   1abc0:	0b513423          	sd	s5,168(sp)
   1abc4:	0b413823          	sd	s4,176(sp)
   1abc8:	02813403          	ld	s0,40(sp)
   1abcc:	000a8a13          	mv	s4,s5
   1abd0:	00070993          	mv	s3,a4
   1abd4:	05d13023          	sd	t4,64(sp)
   1abd8:	0ac13c23          	sd	a2,184(sp)
   1abdc:	08913823          	sd	s1,144(sp)
   1abe0:	09c13c23          	sd	t3,152(sp)
   1abe4:	00078a93          	mv	s5,a5
   1abe8:	00068b13          	mv	s6,a3
   1abec:	0140006f          	j	1ac00 <_svfprintf_r+0x1f94>
   1abf0:	00000613          	li	a2,0
   1abf4:	00000693          	li	a3,0
   1abf8:	2b4050ef          	jal	1feac <__eqtf2>
   1abfc:	58050663          	beqz	a0,1b188 <_svfprintf_r+0x251c>
   1ac00:	000a8613          	mv	a2,s5
   1ac04:	000b0693          	mv	a3,s6
   1ac08:	000d0513          	mv	a0,s10
   1ac0c:	00090593          	mv	a1,s2
   1ac10:	588050ef          	jal	20198 <__multf3>
   1ac14:	00058493          	mv	s1,a1
   1ac18:	00050913          	mv	s2,a0
   1ac1c:	289060ef          	jal	216a4 <__fixtfsi>
   1ac20:	00050b9b          	sext.w	s7,a0
   1ac24:	000b8513          	mv	a0,s7
   1ac28:	351060ef          	jal	21778 <__floatsitf>
   1ac2c:	00058693          	mv	a3,a1
   1ac30:	00050613          	mv	a2,a0
   1ac34:	00048593          	mv	a1,s1
   1ac38:	00090513          	mv	a0,s2
   1ac3c:	5e1050ef          	jal	20a1c <__subtf3>
   1ac40:	01740733          	add	a4,s0,s7
   1ac44:	00074683          	lbu	a3,0(a4)
   1ac48:	000a0493          	mv	s1,s4
   1ac4c:	001a0a13          	add	s4,s4,1
   1ac50:	feda0fa3          	sb	a3,-1(s4)
   1ac54:	00050c13          	mv	s8,a0
   1ac58:	00050d13          	mv	s10,a0
   1ac5c:	00058913          	mv	s2,a1
   1ac60:	f94998e3          	bne	s3,s4,1abf0 <_svfprintf_r+0x1f84>
   1ac64:	03013983          	ld	s3,48(sp)
   1ac68:	000a0b13          	mv	s6,s4
   1ac6c:	02913823          	sd	s1,48(sp)
   1ac70:	04013e83          	ld	t4,64(sp)
   1ac74:	09013483          	ld	s1,144(sp)
   1ac78:	09813e03          	ld	t3,152(sp)
   1ac7c:	0a013403          	ld	s0,160(sp)
   1ac80:	0a813a83          	ld	s5,168(sp)
   1ac84:	0b013a03          	ld	s4,176(sp)
   1ac88:	00050c93          	mv	s9,a0
   1ac8c:	00058c13          	mv	s8,a1
   1ac90:	fff00913          	li	s2,-1
   1ac94:	00007697          	auipc	a3,0x7
   1ac98:	33c68693          	add	a3,a3,828 # 21fd0 <blanks.1+0x30>
   1ac9c:	0086bd03          	ld	s10,8(a3)
   1aca0:	0006b603          	ld	a2,0(a3)
   1aca4:	000c8513          	mv	a0,s9
   1aca8:	000d0693          	mv	a3,s10
   1acac:	000c0593          	mv	a1,s8
   1acb0:	09c13823          	sd	t3,144(sp)
   1acb4:	05d13023          	sd	t4,64(sp)
   1acb8:	08c13c23          	sd	a2,152(sp)
   1acbc:	2c4050ef          	jal	1ff80 <__getf2>
   1acc0:	04013e83          	ld	t4,64(sp)
   1acc4:	09013e03          	ld	t3,144(sp)
   1acc8:	36a04a63          	bgtz	a0,1b03c <_svfprintf_r+0x23d0>
   1accc:	09813603          	ld	a2,152(sp)
   1acd0:	000d0693          	mv	a3,s10
   1acd4:	000c8513          	mv	a0,s9
   1acd8:	000c0593          	mv	a1,s8
   1acdc:	1d0050ef          	jal	1feac <__eqtf2>
   1ace0:	04013e83          	ld	t4,64(sp)
   1ace4:	09013e03          	ld	t3,144(sp)
   1ace8:	00051663          	bnez	a0,1acf4 <_svfprintf_r+0x2088>
   1acec:	001bfb93          	and	s7,s7,1
   1acf0:	340b9663          	bnez	s7,1b03c <_svfprintf_r+0x23d0>
   1acf4:	00190b9b          	addw	s7,s2,1
   1acf8:	017b0bb3          	add	s7,s6,s7
   1acfc:	03000693          	li	a3,48
   1ad00:	38094463          	bltz	s2,1b088 <_svfprintf_r+0x241c>
   1ad04:	001b0b13          	add	s6,s6,1
   1ad08:	fedb0fa3          	sb	a3,-1(s6)
   1ad0c:	ff6b9ce3          	bne	s7,s6,1ad04 <_svfprintf_r+0x2098>
   1ad10:	415b87bb          	subw	a5,s7,s5
   1ad14:	02f13823          	sd	a5,48(sp)
   1ad18:	fdfefd13          	and	s10,t4,-33
   1ad1c:	c15ff06f          	j	1a930 <_svfprintf_r+0x1cc4>
   1ad20:	0e813b83          	ld	s7,232(sp)
   1ad24:	0d812603          	lw	a2,216(sp)
   1ad28:	415b87bb          	subw	a5,s7,s5
   1ad2c:	02f13823          	sd	a5,48(sp)
   1ad30:	ffd00713          	li	a4,-3
   1ad34:	02c13423          	sd	a2,40(sp)
   1ad38:	00e64463          	blt	a2,a4,1ad40 <_svfprintf_r+0x20d4>
   1ad3c:	02ce5863          	bge	t3,a2,1ad6c <_svfprintf_r+0x2100>
   1ad40:	fff6071b          	addw	a4,a2,-1
   1ad44:	ffee8e9b          	addw	t4,t4,-2
   1ad48:	0ce12c23          	sw	a4,216(sp)
   1ad4c:	0ffef693          	zext.b	a3,t4
   1ad50:	00000593          	li	a1,0
   1ad54:	c15ff06f          	j	1a968 <_svfprintf_r+0x1cfc>
   1ad58:	0cf14603          	lbu	a2,207(sp)
   1ad5c:	00000e13          	li	t3,0
   1ad60:	00060463          	beqz	a2,1ad68 <_svfprintf_r+0x20fc>
   1ad64:	d74fe06f          	j	192d8 <_svfprintf_r+0x66c>
   1ad68:	8e8fe06f          	j	18e50 <_svfprintf_r+0x1e4>
   1ad6c:	03013783          	ld	a5,48(sp)
   1ad70:	26f64663          	blt	a2,a5,1afdc <_svfprintf_r+0x2370>
   1ad74:	03813783          	ld	a5,56(sp)
   1ad78:	00060c93          	mv	s9,a2
   1ad7c:	0017f713          	and	a4,a5,1
   1ad80:	00070663          	beqz	a4,1ad8c <_svfprintf_r+0x2120>
   1ad84:	04813783          	ld	a5,72(sp)
   1ad88:	00c78cbb          	addw	s9,a5,a2
   1ad8c:	03813783          	ld	a5,56(sp)
   1ad90:	4007f713          	and	a4,a5,1024
   1ad94:	00070463          	beqz	a4,1ad9c <_svfprintf_r+0x2130>
   1ad98:	42c04a63          	bgtz	a2,1b1cc <_svfprintf_r+0x2560>
   1ad9c:	fffcc713          	not	a4,s9
   1ada0:	43f75713          	sra	a4,a4,0x3f
   1ada4:	08013903          	ld	s2,128(sp)
   1ada8:	00ecf733          	and	a4,s9,a4
   1adac:	00070b9b          	sext.w	s7,a4
   1adb0:	06700e93          	li	t4,103
   1adb4:	04013023          	sd	zero,64(sp)
   1adb8:	02013c23          	sd	zero,56(sp)
   1adbc:	c91ff06f          	j	1aa4c <_svfprintf_r+0x1de0>
   1adc0:	03813783          	ld	a5,56(sp)
   1adc4:	0017f713          	and	a4,a5,1
   1adc8:	f4070ce3          	beqz	a4,1ad20 <_svfprintf_r+0x20b4>
   1adcc:	012a8cb3          	add	s9,s5,s2
   1add0:	04700d13          	li	s10,71
   1add4:	b09ff06f          	j	1a8dc <_svfprintf_r+0x1c70>
   1add8:	10010613          	add	a2,sp,256
   1addc:	00040593          	mv	a1,s0
   1ade0:	000c8513          	mv	a0,s9
   1ade4:	274030ef          	jal	1e058 <__ssprint_r>
   1ade8:	00050463          	beqz	a0,1adf0 <_svfprintf_r+0x2184>
   1adec:	bedfe06f          	j	199d8 <_svfprintf_r+0xd6c>
   1adf0:	0009c603          	lbu	a2,0(s3)
   1adf4:	11013683          	ld	a3,272(sp)
   1adf8:	18010793          	add	a5,sp,384
   1adfc:	01000813          	li	a6,16
   1ae00:	00700893          	li	a7,7
   1ae04:	00ca0a33          	add	s4,s4,a2
   1ae08:	ce4ff06f          	j	1a2ec <_svfprintf_r+0x1680>
   1ae0c:	07800713          	li	a4,120
   1ae10:	00296793          	or	a5,s2,2
   1ae14:	03000693          	li	a3,48
   1ae18:	0007879b          	sext.w	a5,a5
   1ae1c:	0ce108a3          	sb	a4,209(sp)
   1ae20:	0cd10823          	sb	a3,208(sp)
   1ae24:	06300713          	li	a4,99
   1ae28:	02f13c23          	sd	a5,56(sp)
   1ae2c:	02013023          	sd	zero,32(sp)
   1ae30:	11810a93          	add	s5,sp,280
   1ae34:	27c74663          	blt	a4,t3,1b0a0 <_svfprintf_r+0x2434>
   1ae38:	10296913          	or	s2,s2,258
   1ae3c:	0f813b83          	ld	s7,248(sp)
   1ae40:	0009079b          	sext.w	a5,s2
   1ae44:	08f13023          	sd	a5,128(sp)
   1ae48:	08013423          	sd	zero,136(sp)
   1ae4c:	0f013c03          	ld	s8,240(sp)
   1ae50:	080bc063          	bltz	s7,1aed0 <_svfprintf_r+0x2264>
   1ae54:	06100713          	li	a4,97
   1ae58:	00ee8463          	beq	t4,a4,1ae60 <_svfprintf_r+0x21f4>
   1ae5c:	a7cfe06f          	j	190d8 <_svfprintf_r+0x46c>
   1ae60:	000b8593          	mv	a1,s7
   1ae64:	000c0513          	mv	a0,s8
   1ae68:	03c13823          	sd	t3,48(sp)
   1ae6c:	03d13423          	sd	t4,40(sp)
   1ae70:	2ad060ef          	jal	2191c <__trunctfdf2>
   1ae74:	0d810513          	add	a0,sp,216
   1ae78:	855fd0ef          	jal	186cc <frexp>
   1ae7c:	185060ef          	jal	21800 <__extenddftf2>
   1ae80:	00007717          	auipc	a4,0x7
   1ae84:	13070713          	add	a4,a4,304 # 21fb0 <blanks.1+0x10>
   1ae88:	00073603          	ld	a2,0(a4)
   1ae8c:	00873683          	ld	a3,8(a4)
   1ae90:	308050ef          	jal	20198 <__multf3>
   1ae94:	00000613          	li	a2,0
   1ae98:	00000693          	li	a3,0
   1ae9c:	00050d13          	mv	s10,a0
   1aea0:	00058913          	mv	s2,a1
   1aea4:	008050ef          	jal	1feac <__eqtf2>
   1aea8:	02813e83          	ld	t4,40(sp)
   1aeac:	03013e03          	ld	t3,48(sp)
   1aeb0:	00051663          	bnez	a0,1aebc <_svfprintf_r+0x2250>
   1aeb4:	00100713          	li	a4,1
   1aeb8:	0ce12c23          	sw	a4,216(sp)
   1aebc:	00007797          	auipc	a5,0x7
   1aec0:	eac78793          	add	a5,a5,-340 # 21d68 <__clzdi2+0xb8>
   1aec4:	02f13423          	sd	a5,40(sp)
   1aec8:	ccdff06f          	j	1ab94 <_svfprintf_r+0x1f28>
   1aecc:	02013023          	sd	zero,32(sp)
   1aed0:	fff00713          	li	a4,-1
   1aed4:	03f71713          	sll	a4,a4,0x3f
   1aed8:	02d00793          	li	a5,45
   1aedc:	00ebcbb3          	xor	s7,s7,a4
   1aee0:	08f13423          	sd	a5,136(sp)
   1aee4:	f71ff06f          	j	1ae54 <_svfprintf_r+0x21e8>
   1aee8:	01013583          	ld	a1,16(sp)
   1aeec:	00813503          	ld	a0,8(sp)
   1aef0:	10010613          	add	a2,sp,256
   1aef4:	164030ef          	jal	1e058 <__ssprint_r>
   1aef8:	00050463          	beqz	a0,1af00 <_svfprintf_r+0x2294>
   1aefc:	addfe06f          	j	199d8 <_svfprintf_r+0xd6c>
   1af00:	0d812683          	lw	a3,216(sp)
   1af04:	11013603          	ld	a2,272(sp)
   1af08:	18010413          	add	s0,sp,384
   1af0c:	dcdfe06f          	j	19cd8 <_svfprintf_r+0x106c>
   1af10:	02d00793          	li	a5,45
   1af14:	0cf107a3          	sb	a5,207(sp)
   1af18:	02d00613          	li	a2,45
   1af1c:	ea0ff06f          	j	1a5bc <_svfprintf_r+0x1950>
   1af20:	0cf14603          	lbu	a2,207(sp)
   1af24:	04013023          	sd	zero,64(sp)
   1af28:	02013c23          	sd	zero,56(sp)
   1af2c:	02013423          	sd	zero,40(sp)
   1af30:	000e0b93          	mv	s7,t3
   1af34:	000e0c93          	mv	s9,t3
   1af38:	00000e13          	li	t3,0
   1af3c:	00060463          	beqz	a2,1af44 <_svfprintf_r+0x22d8>
   1af40:	b98fe06f          	j	192d8 <_svfprintf_r+0x66c>
   1af44:	f0dfd06f          	j	18e50 <_svfprintf_r+0x1e4>
   1af48:	00054683          	lbu	a3,0(a0)
   1af4c:	03000713          	li	a4,48
   1af50:	00e68863          	beq	a3,a4,1af60 <_svfprintf_r+0x22f4>
   1af54:	0d812683          	lw	a3,216(sp)
   1af58:	00dc8cb3          	add	s9,s9,a3
   1af5c:	981ff06f          	j	1a8dc <_svfprintf_r+0x1c70>
   1af60:	00000613          	li	a2,0
   1af64:	00000693          	li	a3,0
   1af68:	000c0513          	mv	a0,s8
   1af6c:	000b8593          	mv	a1,s7
   1af70:	03c13823          	sd	t3,48(sp)
   1af74:	03d13423          	sd	t4,40(sp)
   1af78:	735040ef          	jal	1feac <__eqtf2>
   1af7c:	02813e83          	ld	t4,40(sp)
   1af80:	03013e03          	ld	t3,48(sp)
   1af84:	fc0508e3          	beqz	a0,1af54 <_svfprintf_r+0x22e8>
   1af88:	00100713          	li	a4,1
   1af8c:	412706bb          	subw	a3,a4,s2
   1af90:	0cd12c23          	sw	a3,216(sp)
   1af94:	00dc8cb3          	add	s9,s9,a3
   1af98:	945ff06f          	j	1a8dc <_svfprintf_r+0x1c70>
   1af9c:	01013583          	ld	a1,16(sp)
   1afa0:	00813503          	ld	a0,8(sp)
   1afa4:	10010613          	add	a2,sp,256
   1afa8:	0b0030ef          	jal	1e058 <__ssprint_r>
   1afac:	00050463          	beqz	a0,1afb4 <_svfprintf_r+0x2348>
   1afb0:	a29fe06f          	j	199d8 <_svfprintf_r+0xd6c>
   1afb4:	0d812583          	lw	a1,216(sp)
   1afb8:	03013783          	ld	a5,48(sp)
   1afbc:	11013603          	ld	a2,272(sp)
   1afc0:	18010413          	add	s0,sp,384
   1afc4:	40b785bb          	subw	a1,a5,a1
   1afc8:	d5dfe06f          	j	19d24 <_svfprintf_r+0x10b8>
   1afcc:	00090c13          	mv	s8,s2
   1afd0:	a31fe06f          	j	19a00 <_svfprintf_r+0xd94>
   1afd4:	05800713          	li	a4,88
   1afd8:	e39ff06f          	j	1ae10 <_svfprintf_r+0x21a4>
   1afdc:	04813783          	ld	a5,72(sp)
   1afe0:	03013703          	ld	a4,48(sp)
   1afe4:	06700e93          	li	t4,103
   1afe8:	00e78cbb          	addw	s9,a5,a4
   1afec:	02813783          	ld	a5,40(sp)
   1aff0:	26f05863          	blez	a5,1b260 <_svfprintf_r+0x25f4>
   1aff4:	03813783          	ld	a5,56(sp)
   1aff8:	4007f713          	and	a4,a5,1024
   1affc:	1c071a63          	bnez	a4,1b1d0 <_svfprintf_r+0x2564>
   1b000:	fffcc713          	not	a4,s9
   1b004:	43f75713          	sra	a4,a4,0x3f
   1b008:	00ecf733          	and	a4,s9,a4
   1b00c:	08013903          	ld	s2,128(sp)
   1b010:	00070b9b          	sext.w	s7,a4
   1b014:	da1ff06f          	j	1adb4 <_svfprintf_r+0x2148>
   1b018:	03813783          	ld	a5,56(sp)
   1b01c:	0017f713          	and	a4,a5,1
   1b020:	02813783          	ld	a5,40(sp)
   1b024:	00ee6733          	or	a4,t3,a4
   1b028:	28f05e63          	blez	a5,1b2c4 <_svfprintf_r+0x2658>
   1b02c:	24071c63          	bnez	a4,1b284 <_svfprintf_r+0x2618>
   1b030:	02813c83          	ld	s9,40(sp)
   1b034:	06600e93          	li	t4,102
   1b038:	fbdff06f          	j	1aff4 <_svfprintf_r+0x2388>
   1b03c:	03013783          	ld	a5,48(sp)
   1b040:	000b0693          	mv	a3,s6
   1b044:	0ef13423          	sd	a5,232(sp)
   1b048:	02813783          	ld	a5,40(sp)
   1b04c:	fffb4603          	lbu	a2,-1(s6)
   1b050:	00f7c583          	lbu	a1,15(a5)
   1b054:	02c59063          	bne	a1,a2,1b074 <_svfprintf_r+0x2408>
   1b058:	03000513          	li	a0,48
   1b05c:	fea68fa3          	sb	a0,-1(a3)
   1b060:	0e813683          	ld	a3,232(sp)
   1b064:	fff68793          	add	a5,a3,-1
   1b068:	0ef13423          	sd	a5,232(sp)
   1b06c:	fff6c603          	lbu	a2,-1(a3)
   1b070:	fec586e3          	beq	a1,a2,1b05c <_svfprintf_r+0x23f0>
   1b074:	0016059b          	addw	a1,a2,1
   1b078:	03900513          	li	a0,57
   1b07c:	0ff5f593          	zext.b	a1,a1
   1b080:	00a60863          	beq	a2,a0,1b090 <_svfprintf_r+0x2424>
   1b084:	feb68fa3          	sb	a1,-1(a3)
   1b088:	000b0b93          	mv	s7,s6
   1b08c:	c85ff06f          	j	1ad10 <_svfprintf_r+0x20a4>
   1b090:	02813783          	ld	a5,40(sp)
   1b094:	00a7c583          	lbu	a1,10(a5)
   1b098:	feb68fa3          	sb	a1,-1(a3)
   1b09c:	fedff06f          	j	1b088 <_svfprintf_r+0x241c>
   1b0a0:	00813503          	ld	a0,8(sp)
   1b0a4:	001e059b          	addw	a1,t3,1
   1b0a8:	03d13423          	sd	t4,40(sp)
   1b0ac:	03c13023          	sd	t3,32(sp)
   1b0b0:	aedfb0ef          	jal	16b9c <_malloc_r>
   1b0b4:	02013e03          	ld	t3,32(sp)
   1b0b8:	02813e83          	ld	t4,40(sp)
   1b0bc:	00050a93          	mv	s5,a0
   1b0c0:	26050063          	beqz	a0,1b320 <_svfprintf_r+0x26b4>
   1b0c4:	02a13023          	sd	a0,32(sp)
   1b0c8:	d71ff06f          	j	1ae38 <_svfprintf_r+0x21cc>
   1b0cc:	0015859b          	addw	a1,a1,1
   1b0d0:	01860633          	add	a2,a2,s8
   1b0d4:	01a43023          	sd	s10,0(s0)
   1b0d8:	01843423          	sd	s8,8(s0)
   1b0dc:	10c13823          	sd	a2,272(sp)
   1b0e0:	10b12423          	sw	a1,264(sp)
   1b0e4:	00700693          	li	a3,7
   1b0e8:	bab6d263          	bge	a3,a1,1a48c <_svfprintf_r+0x1820>
   1b0ec:	01013583          	ld	a1,16(sp)
   1b0f0:	00813503          	ld	a0,8(sp)
   1b0f4:	10010613          	add	a2,sp,256
   1b0f8:	761020ef          	jal	1e058 <__ssprint_r>
   1b0fc:	00050463          	beqz	a0,1b104 <_svfprintf_r+0x2498>
   1b100:	8d9fe06f          	j	199d8 <_svfprintf_r+0xd6c>
   1b104:	11013603          	ld	a2,272(sp)
   1b108:	10812583          	lw	a1,264(sp)
   1b10c:	18010413          	add	s0,sp,384
   1b110:	b80ff06f          	j	1a490 <_svfprintf_r+0x1824>
   1b114:	0e210693          	add	a3,sp,226
   1b118:	00059863          	bnez	a1,1b128 <_svfprintf_r+0x24bc>
   1b11c:	03000693          	li	a3,48
   1b120:	0ed10123          	sb	a3,226(sp)
   1b124:	0e310693          	add	a3,sp,227
   1b128:	20010793          	add	a5,sp,512
   1b12c:	40f68633          	sub	a2,a3,a5
   1b130:	0307071b          	addw	a4,a4,48
   1b134:	1216079b          	addw	a5,a2,289
   1b138:	00e68023          	sb	a4,0(a3)
   1b13c:	06f13023          	sd	a5,96(sp)
   1b140:	8c1ff06f          	j	1aa00 <_svfprintf_r+0x1d94>
   1b144:	00f72023          	sw	a5,0(a4)
   1b148:	008a0a13          	add	s4,s4,8
   1b14c:	d18fe06f          	j	19664 <_svfprintf_r+0x9f8>
   1b150:	00813703          	ld	a4,8(sp)
   1b154:	00c00793          	li	a5,12
   1b158:	00f72023          	sw	a5,0(a4)
   1b15c:	fff00793          	li	a5,-1
   1b160:	00f13c23          	sd	a5,24(sp)
   1b164:	e35fd06f          	j	18f98 <_svfprintf_r+0x32c>
   1b168:	03813783          	ld	a5,56(sp)
   1b16c:	0017f613          	and	a2,a5,1
   1b170:	8a0608e3          	beqz	a2,1aa20 <_svfprintf_r+0x1db4>
   1b174:	8a5ff06f          	j	1aa18 <_svfprintf_r+0x1dac>
   1b178:	000e0463          	beqz	t3,1b180 <_svfprintf_r+0x2514>
   1b17c:	f35fd06f          	j	190b0 <_svfprintf_r+0x444>
   1b180:	00100e13          	li	t3,1
   1b184:	f2dfd06f          	j	190b0 <_svfprintf_r+0x444>
   1b188:	0b813603          	ld	a2,184(sp)
   1b18c:	0a813a83          	ld	s5,168(sp)
   1b190:	000a0b13          	mv	s6,s4
   1b194:	03013983          	ld	s3,48(sp)
   1b198:	00ca863b          	addw	a2,s5,a2
   1b19c:	02913823          	sd	s1,48(sp)
   1b1a0:	000c0c93          	mv	s9,s8
   1b1a4:	04013e83          	ld	t4,64(sp)
   1b1a8:	00090c13          	mv	s8,s2
   1b1ac:	09013483          	ld	s1,144(sp)
   1b1b0:	09813e03          	ld	t3,152(sp)
   1b1b4:	0a013403          	ld	s0,160(sp)
   1b1b8:	0b013a03          	ld	s4,176(sp)
   1b1bc:	4166093b          	subw	s2,a2,s6
   1b1c0:	ad5ff06f          	j	1ac94 <_svfprintf_r+0x2028>
   1b1c4:	00070a13          	mv	s4,a4
   1b1c8:	839fe06f          	j	19a00 <_svfprintf_r+0xd94>
   1b1cc:	06700e93          	li	t4,103
   1b1d0:	06813683          	ld	a3,104(sp)
   1b1d4:	0ff00613          	li	a2,255
   1b1d8:	0006c703          	lbu	a4,0(a3)
   1b1dc:	12c70c63          	beq	a4,a2,1b314 <_svfprintf_r+0x26a8>
   1b1e0:	02813783          	ld	a5,40(sp)
   1b1e4:	00000813          	li	a6,0
   1b1e8:	00000513          	li	a0,0
   1b1ec:	0ff00593          	li	a1,255
   1b1f0:	0007061b          	sext.w	a2,a4
   1b1f4:	00f75e63          	bge	a4,a5,1b210 <_svfprintf_r+0x25a4>
   1b1f8:	0016c703          	lbu	a4,1(a3)
   1b1fc:	40c787bb          	subw	a5,a5,a2
   1b200:	04070a63          	beqz	a4,1b254 <_svfprintf_r+0x25e8>
   1b204:	0015051b          	addw	a0,a0,1
   1b208:	00168693          	add	a3,a3,1
   1b20c:	feb712e3          	bne	a4,a1,1b1f0 <_svfprintf_r+0x2584>
   1b210:	06d13423          	sd	a3,104(sp)
   1b214:	02f13423          	sd	a5,40(sp)
   1b218:	02a13c23          	sd	a0,56(sp)
   1b21c:	05013023          	sd	a6,64(sp)
   1b220:	04013783          	ld	a5,64(sp)
   1b224:	03813703          	ld	a4,56(sp)
   1b228:	08013903          	ld	s2,128(sp)
   1b22c:	00e7873b          	addw	a4,a5,a4
   1b230:	07013783          	ld	a5,112(sp)
   1b234:	02f7073b          	mulw	a4,a4,a5
   1b238:	0197073b          	addw	a4,a4,s9
   1b23c:	00070c9b          	sext.w	s9,a4
   1b240:	fffcc613          	not	a2,s9
   1b244:	43f65613          	sra	a2,a2,0x3f
   1b248:	00c77733          	and	a4,a4,a2
   1b24c:	00070b9b          	sext.w	s7,a4
   1b250:	ffcff06f          	j	1aa4c <_svfprintf_r+0x1de0>
   1b254:	0006c703          	lbu	a4,0(a3)
   1b258:	0018081b          	addw	a6,a6,1
   1b25c:	fb1ff06f          	j	1b20c <_svfprintf_r+0x25a0>
   1b260:	40fc873b          	subw	a4,s9,a5
   1b264:	0017071b          	addw	a4,a4,1
   1b268:	00070c9b          	sext.w	s9,a4
   1b26c:	fffcc613          	not	a2,s9
   1b270:	43f65613          	sra	a2,a2,0x3f
   1b274:	00c77733          	and	a4,a4,a2
   1b278:	08013903          	ld	s2,128(sp)
   1b27c:	00070b9b          	sext.w	s7,a4
   1b280:	b35ff06f          	j	1adb4 <_svfprintf_r+0x2148>
   1b284:	04813703          	ld	a4,72(sp)
   1b288:	06600e93          	li	t4,102
   1b28c:	00f706bb          	addw	a3,a4,a5
   1b290:	01c68cbb          	addw	s9,a3,t3
   1b294:	d61ff06f          	j	1aff4 <_svfprintf_r+0x2388>
   1b298:	07000693          	li	a3,112
   1b29c:	ec8ff06f          	j	1a964 <_svfprintf_r+0x1cf8>
   1b2a0:	000a2703          	lw	a4,0(s4)
   1b2a4:	008a0a13          	add	s4,s4,8
   1b2a8:	00070e13          	mv	t3,a4
   1b2ac:	00075463          	bgez	a4,1b2b4 <_svfprintf_r+0x2648>
   1b2b0:	fff00e13          	li	t3,-1
   1b2b4:	0019ce83          	lbu	t4,1(s3)
   1b2b8:	000e0b9b          	sext.w	s7,t3
   1b2bc:	00078993          	mv	s3,a5
   1b2c0:	af5fd06f          	j	18db4 <_svfprintf_r+0x148>
   1b2c4:	00071c63          	bnez	a4,1b2dc <_svfprintf_r+0x2670>
   1b2c8:	08013903          	ld	s2,128(sp)
   1b2cc:	00100b93          	li	s7,1
   1b2d0:	06600e93          	li	t4,102
   1b2d4:	00100c93          	li	s9,1
   1b2d8:	addff06f          	j	1adb4 <_svfprintf_r+0x2148>
   1b2dc:	04813783          	ld	a5,72(sp)
   1b2e0:	08013903          	ld	s2,128(sp)
   1b2e4:	06600e93          	li	t4,102
   1b2e8:	0017871b          	addw	a4,a5,1
   1b2ec:	01c7073b          	addw	a4,a4,t3
   1b2f0:	00070c9b          	sext.w	s9,a4
   1b2f4:	fffcc613          	not	a2,s9
   1b2f8:	43f65613          	sra	a2,a2,0x3f
   1b2fc:	00c77733          	and	a4,a4,a2
   1b300:	00070b9b          	sext.w	s7,a4
   1b304:	ab1ff06f          	j	1adb4 <_svfprintf_r+0x2148>
   1b308:	00200793          	li	a5,2
   1b30c:	06f13023          	sd	a5,96(sp)
   1b310:	ef0ff06f          	j	1aa00 <_svfprintf_r+0x1d94>
   1b314:	04013023          	sd	zero,64(sp)
   1b318:	02013c23          	sd	zero,56(sp)
   1b31c:	f05ff06f          	j	1b220 <_svfprintf_r+0x25b4>
   1b320:	01013703          	ld	a4,16(sp)
   1b324:	01075783          	lhu	a5,16(a4)
   1b328:	0407e793          	or	a5,a5,64
   1b32c:	00f71823          	sh	a5,16(a4)
   1b330:	c55fd06f          	j	18f84 <_svfprintf_r+0x318>

000000000001b334 <__sprint_r.part.0>:
   1b334:	0ac5a783          	lw	a5,172(a1)
   1b338:	fb010113          	add	sp,sp,-80
   1b33c:	01513c23          	sd	s5,24(sp)
   1b340:	00d7d793          	srl	a5,a5,0xd
   1b344:	04113423          	sd	ra,72(sp)
   1b348:	04813023          	sd	s0,64(sp)
   1b34c:	02913c23          	sd	s1,56(sp)
   1b350:	03213823          	sd	s2,48(sp)
   1b354:	03313423          	sd	s3,40(sp)
   1b358:	03413023          	sd	s4,32(sp)
   1b35c:	01613823          	sd	s6,16(sp)
   1b360:	01713423          	sd	s7,8(sp)
   1b364:	0017f793          	and	a5,a5,1
   1b368:	00060a93          	mv	s5,a2
   1b36c:	0c078063          	beqz	a5,1b42c <__sprint_r.part.0+0xf8>
   1b370:	01063783          	ld	a5,16(a2)
   1b374:	00063b03          	ld	s6,0(a2)
   1b378:	00058913          	mv	s2,a1
   1b37c:	00050993          	mv	s3,a0
   1b380:	fff00a13          	li	s4,-1
   1b384:	0a078063          	beqz	a5,1b424 <__sprint_r.part.0+0xf0>
   1b388:	008b3483          	ld	s1,8(s6)
   1b38c:	000b3403          	ld	s0,0(s6)
   1b390:	0024d493          	srl	s1,s1,0x2
   1b394:	00048b9b          	sext.w	s7,s1
   1b398:	07705c63          	blez	s7,1b410 <__sprint_r.part.0+0xdc>
   1b39c:	fff4849b          	addw	s1,s1,-1
   1b3a0:	02049793          	sll	a5,s1,0x20
   1b3a4:	01e7d493          	srl	s1,a5,0x1e
   1b3a8:	00440793          	add	a5,s0,4
   1b3ac:	00f484b3          	add	s1,s1,a5
   1b3b0:	0080006f          	j	1b3b8 <__sprint_r.part.0+0x84>
   1b3b4:	04848c63          	beq	s1,s0,1b40c <__sprint_r.part.0+0xd8>
   1b3b8:	00042583          	lw	a1,0(s0)
   1b3bc:	00090613          	mv	a2,s2
   1b3c0:	00098513          	mv	a0,s3
   1b3c4:	179010ef          	jal	1cd3c <_fputwc_r>
   1b3c8:	0005051b          	sext.w	a0,a0
   1b3cc:	00440413          	add	s0,s0,4
   1b3d0:	ff4512e3          	bne	a0,s4,1b3b4 <__sprint_r.part.0+0x80>
   1b3d4:	fff00513          	li	a0,-1
   1b3d8:	04813083          	ld	ra,72(sp)
   1b3dc:	04013403          	ld	s0,64(sp)
   1b3e0:	000ab823          	sd	zero,16(s5)
   1b3e4:	000aa423          	sw	zero,8(s5)
   1b3e8:	03813483          	ld	s1,56(sp)
   1b3ec:	03013903          	ld	s2,48(sp)
   1b3f0:	02813983          	ld	s3,40(sp)
   1b3f4:	02013a03          	ld	s4,32(sp)
   1b3f8:	01813a83          	ld	s5,24(sp)
   1b3fc:	01013b03          	ld	s6,16(sp)
   1b400:	00813b83          	ld	s7,8(sp)
   1b404:	05010113          	add	sp,sp,80
   1b408:	00008067          	ret
   1b40c:	010ab783          	ld	a5,16(s5)
   1b410:	002b9b93          	sll	s7,s7,0x2
   1b414:	417787b3          	sub	a5,a5,s7
   1b418:	00fab823          	sd	a5,16(s5)
   1b41c:	010b0b13          	add	s6,s6,16
   1b420:	f60794e3          	bnez	a5,1b388 <__sprint_r.part.0+0x54>
   1b424:	00000513          	li	a0,0
   1b428:	fb1ff06f          	j	1b3d8 <__sprint_r.part.0+0xa4>
   1b42c:	211010ef          	jal	1ce3c <__sfvwrite_r>
   1b430:	fa9ff06f          	j	1b3d8 <__sprint_r.part.0+0xa4>

000000000001b434 <__sprint_r>:
   1b434:	01063703          	ld	a4,16(a2)
   1b438:	00070463          	beqz	a4,1b440 <__sprint_r+0xc>
   1b43c:	ef9ff06f          	j	1b334 <__sprint_r.part.0>
   1b440:	00062423          	sw	zero,8(a2)
   1b444:	00000513          	li	a0,0
   1b448:	00008067          	ret

000000000001b44c <_vfiprintf_r>:
   1b44c:	e2010113          	add	sp,sp,-480
   1b450:	1b413823          	sd	s4,432(sp)
   1b454:	1b513423          	sd	s5,424(sp)
   1b458:	19713c23          	sd	s7,408(sp)
   1b45c:	17b13c23          	sd	s11,376(sp)
   1b460:	1c113c23          	sd	ra,472(sp)
   1b464:	1c813823          	sd	s0,464(sp)
   1b468:	1c913423          	sd	s1,456(sp)
   1b46c:	1d213023          	sd	s2,448(sp)
   1b470:	1b313c23          	sd	s3,440(sp)
   1b474:	1b613023          	sd	s6,416(sp)
   1b478:	19813823          	sd	s8,400(sp)
   1b47c:	19913423          	sd	s9,392(sp)
   1b480:	19a13023          	sd	s10,384(sp)
   1b484:	00050a93          	mv	s5,a0
   1b488:	00058a13          	mv	s4,a1
   1b48c:	00060d93          	mv	s11,a2
   1b490:	00068b93          	mv	s7,a3
   1b494:	00050663          	beqz	a0,1b4a0 <_vfiprintf_r+0x54>
   1b498:	05052783          	lw	a5,80(a0)
   1b49c:	50078863          	beqz	a5,1b9ac <_vfiprintf_r+0x560>
   1b4a0:	010a1783          	lh	a5,16(s4)
   1b4a4:	03279713          	sll	a4,a5,0x32
   1b4a8:	02074663          	bltz	a4,1b4d4 <_vfiprintf_r+0x88>
   1b4ac:	0aca2703          	lw	a4,172(s4)
   1b4b0:	000026b7          	lui	a3,0x2
   1b4b4:	00d7e7b3          	or	a5,a5,a3
   1b4b8:	ffffe6b7          	lui	a3,0xffffe
   1b4bc:	0107979b          	sllw	a5,a5,0x10
   1b4c0:	fff68693          	add	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd91df>
   1b4c4:	4107d79b          	sraw	a5,a5,0x10
   1b4c8:	00d77733          	and	a4,a4,a3
   1b4cc:	00fa1823          	sh	a5,16(s4)
   1b4d0:	0aea2623          	sw	a4,172(s4)
   1b4d4:	0087f713          	and	a4,a5,8
   1b4d8:	12070063          	beqz	a4,1b5f8 <_vfiprintf_r+0x1ac>
   1b4dc:	018a3703          	ld	a4,24(s4)
   1b4e0:	10070c63          	beqz	a4,1b5f8 <_vfiprintf_r+0x1ac>
   1b4e4:	01a7f793          	and	a5,a5,26
   1b4e8:	00a00713          	li	a4,10
   1b4ec:	12e78863          	beq	a5,a4,1b61c <_vfiprintf_r+0x1d0>
   1b4f0:	0f010993          	add	s3,sp,240
   1b4f4:	00000c93          	li	s9,0
   1b4f8:	000c8d13          	mv	s10,s9
   1b4fc:	07313823          	sd	s3,112(sp)
   1b500:	08013023          	sd	zero,128(sp)
   1b504:	06012c23          	sw	zero,120(sp)
   1b508:	00098413          	mv	s0,s3
   1b50c:	00013423          	sd	zero,8(sp)
   1b510:	02013c23          	sd	zero,56(sp)
   1b514:	02013823          	sd	zero,48(sp)
   1b518:	04013023          	sd	zero,64(sp)
   1b51c:	00007c17          	auipc	s8,0x7
   1b520:	17cc0c13          	add	s8,s8,380 # 22698 <blanks.1+0x10>
   1b524:	01000913          	li	s2,16
   1b528:	00007b17          	auipc	s6,0x7
   1b52c:	2e0b0b13          	add	s6,s6,736 # 22808 <zeroes.0>
   1b530:	000b8c93          	mv	s9,s7
   1b534:	000dc783          	lbu	a5,0(s11)
   1b538:	36078663          	beqz	a5,1b8a4 <_vfiprintf_r+0x458>
   1b53c:	000d8493          	mv	s1,s11
   1b540:	02500713          	li	a4,37
   1b544:	3ce78e63          	beq	a5,a4,1b920 <_vfiprintf_r+0x4d4>
   1b548:	0014c783          	lbu	a5,1(s1)
   1b54c:	00148493          	add	s1,s1,1
   1b550:	fe079ae3          	bnez	a5,1b544 <_vfiprintf_r+0xf8>
   1b554:	41b48bbb          	subw	s7,s1,s11
   1b558:	340b8663          	beqz	s7,1b8a4 <_vfiprintf_r+0x458>
   1b55c:	07812783          	lw	a5,120(sp)
   1b560:	08013703          	ld	a4,128(sp)
   1b564:	01b43023          	sd	s11,0(s0)
   1b568:	0017861b          	addw	a2,a5,1
   1b56c:	00eb8733          	add	a4,s7,a4
   1b570:	01743423          	sd	s7,8(s0)
   1b574:	08e13023          	sd	a4,128(sp)
   1b578:	06c12c23          	sw	a2,120(sp)
   1b57c:	00700793          	li	a5,7
   1b580:	01040413          	add	s0,s0,16
   1b584:	02c7d063          	bge	a5,a2,1b5a4 <_vfiprintf_r+0x158>
   1b588:	540702e3          	beqz	a4,1c2cc <_vfiprintf_r+0xe80>
   1b58c:	07010613          	add	a2,sp,112
   1b590:	000a0593          	mv	a1,s4
   1b594:	000a8513          	mv	a0,s5
   1b598:	d9dff0ef          	jal	1b334 <__sprint_r.part.0>
   1b59c:	0e051463          	bnez	a0,1b684 <_vfiprintf_r+0x238>
   1b5a0:	00098413          	mv	s0,s3
   1b5a4:	0004c783          	lbu	a5,0(s1)
   1b5a8:	017d0d3b          	addw	s10,s10,s7
   1b5ac:	2e078c63          	beqz	a5,1b8a4 <_vfiprintf_r+0x458>
   1b5b0:	0014c783          	lbu	a5,1(s1)
   1b5b4:	00148d93          	add	s11,s1,1
   1b5b8:	060103a3          	sb	zero,103(sp)
   1b5bc:	fff00493          	li	s1,-1
   1b5c0:	00000893          	li	a7,0
   1b5c4:	00000813          	li	a6,0
   1b5c8:	05a00b93          	li	s7,90
   1b5cc:	001d8d93          	add	s11,s11,1
   1b5d0:	0007879b          	sext.w	a5,a5
   1b5d4:	fe07871b          	addw	a4,a5,-32
   1b5d8:	0007069b          	sext.w	a3,a4
   1b5dc:	12dbec63          	bltu	s7,a3,1b714 <_vfiprintf_r+0x2c8>
   1b5e0:	02071693          	sll	a3,a4,0x20
   1b5e4:	01e6d713          	srl	a4,a3,0x1e
   1b5e8:	01870733          	add	a4,a4,s8
   1b5ec:	00072703          	lw	a4,0(a4)
   1b5f0:	01870733          	add	a4,a4,s8
   1b5f4:	00070067          	jr	a4
   1b5f8:	000a0593          	mv	a1,s4
   1b5fc:	000a8513          	mv	a0,s5
   1b600:	f60f70ef          	jal	12d60 <__swsetup_r>
   1b604:	00050463          	beqz	a0,1b60c <_vfiprintf_r+0x1c0>
   1b608:	0e40106f          	j	1c6ec <_vfiprintf_r+0x12a0>
   1b60c:	010a1783          	lh	a5,16(s4)
   1b610:	00a00713          	li	a4,10
   1b614:	01a7f793          	and	a5,a5,26
   1b618:	ece79ce3          	bne	a5,a4,1b4f0 <_vfiprintf_r+0xa4>
   1b61c:	012a1783          	lh	a5,18(s4)
   1b620:	ec07c8e3          	bltz	a5,1b4f0 <_vfiprintf_r+0xa4>
   1b624:	1d013403          	ld	s0,464(sp)
   1b628:	1d813083          	ld	ra,472(sp)
   1b62c:	1c813483          	ld	s1,456(sp)
   1b630:	1c013903          	ld	s2,448(sp)
   1b634:	1b813983          	ld	s3,440(sp)
   1b638:	1a013b03          	ld	s6,416(sp)
   1b63c:	19013c03          	ld	s8,400(sp)
   1b640:	18813c83          	ld	s9,392(sp)
   1b644:	18013d03          	ld	s10,384(sp)
   1b648:	000b8693          	mv	a3,s7
   1b64c:	000d8613          	mv	a2,s11
   1b650:	19813b83          	ld	s7,408(sp)
   1b654:	17813d83          	ld	s11,376(sp)
   1b658:	000a0593          	mv	a1,s4
   1b65c:	000a8513          	mv	a0,s5
   1b660:	1b013a03          	ld	s4,432(sp)
   1b664:	1a813a83          	ld	s5,424(sp)
   1b668:	1e010113          	add	sp,sp,480
   1b66c:	0c80106f          	j	1c734 <__sbprintf>
   1b670:	07010613          	add	a2,sp,112
   1b674:	000a0593          	mv	a1,s4
   1b678:	000a8513          	mv	a0,s5
   1b67c:	cb9ff0ef          	jal	1b334 <__sprint_r.part.0>
   1b680:	20050a63          	beqz	a0,1b894 <_vfiprintf_r+0x448>
   1b684:	000d0c93          	mv	s9,s10
   1b688:	010a5783          	lhu	a5,16(s4)
   1b68c:	0407f793          	and	a5,a5,64
   1b690:	00078463          	beqz	a5,1b698 <_vfiprintf_r+0x24c>
   1b694:	0580106f          	j	1c6ec <_vfiprintf_r+0x12a0>
   1b698:	1d813083          	ld	ra,472(sp)
   1b69c:	1d013403          	ld	s0,464(sp)
   1b6a0:	1c813483          	ld	s1,456(sp)
   1b6a4:	1c013903          	ld	s2,448(sp)
   1b6a8:	1b813983          	ld	s3,440(sp)
   1b6ac:	1b013a03          	ld	s4,432(sp)
   1b6b0:	1a813a83          	ld	s5,424(sp)
   1b6b4:	1a013b03          	ld	s6,416(sp)
   1b6b8:	19813b83          	ld	s7,408(sp)
   1b6bc:	19013c03          	ld	s8,400(sp)
   1b6c0:	18013d03          	ld	s10,384(sp)
   1b6c4:	17813d83          	ld	s11,376(sp)
   1b6c8:	000c8513          	mv	a0,s9
   1b6cc:	18813c83          	ld	s9,392(sp)
   1b6d0:	1e010113          	add	sp,sp,480
   1b6d4:	00008067          	ret
   1b6d8:	00000893          	li	a7,0
   1b6dc:	00900613          	li	a2,9
   1b6e0:	000dc683          	lbu	a3,0(s11)
   1b6e4:	0028971b          	sllw	a4,a7,0x2
   1b6e8:	011708bb          	addw	a7,a4,a7
   1b6ec:	fd07879b          	addw	a5,a5,-48
   1b6f0:	0018989b          	sllw	a7,a7,0x1
   1b6f4:	fd06871b          	addw	a4,a3,-48
   1b6f8:	011788bb          	addw	a7,a5,a7
   1b6fc:	001d8d93          	add	s11,s11,1
   1b700:	0006879b          	sext.w	a5,a3
   1b704:	fce67ee3          	bgeu	a2,a4,1b6e0 <_vfiprintf_r+0x294>
   1b708:	fe07871b          	addw	a4,a5,-32
   1b70c:	0007069b          	sext.w	a3,a4
   1b710:	ecdbf8e3          	bgeu	s7,a3,1b5e0 <_vfiprintf_r+0x194>
   1b714:	18078863          	beqz	a5,1b8a4 <_vfiprintf_r+0x458>
   1b718:	08f10423          	sb	a5,136(sp)
   1b71c:	060103a3          	sb	zero,103(sp)
   1b720:	00100e13          	li	t3,1
   1b724:	00100313          	li	t1,1
   1b728:	08810b93          	add	s7,sp,136
   1b72c:	00000493          	li	s1,0
   1b730:	00287f93          	and	t6,a6,2
   1b734:	000f8463          	beqz	t6,1b73c <_vfiprintf_r+0x2f0>
   1b738:	002e0e1b          	addw	t3,t3,2
   1b73c:	07812603          	lw	a2,120(sp)
   1b740:	08487293          	and	t0,a6,132
   1b744:	08013783          	ld	a5,128(sp)
   1b748:	0016051b          	addw	a0,a2,1
   1b74c:	00050593          	mv	a1,a0
   1b750:	00029663          	bnez	t0,1b75c <_vfiprintf_r+0x310>
   1b754:	41c8873b          	subw	a4,a7,t3
   1b758:	0ee040e3          	bgtz	a4,1c038 <_vfiprintf_r+0xbec>
   1b75c:	06714703          	lbu	a4,103(sp)
   1b760:	02070a63          	beqz	a4,1b794 <_vfiprintf_r+0x348>
   1b764:	06710713          	add	a4,sp,103
   1b768:	00178793          	add	a5,a5,1
   1b76c:	00e43023          	sd	a4,0(s0)
   1b770:	00100713          	li	a4,1
   1b774:	00e43423          	sd	a4,8(s0)
   1b778:	08f13023          	sd	a5,128(sp)
   1b77c:	06a12c23          	sw	a0,120(sp)
   1b780:	00700713          	li	a4,7
   1b784:	7ea74263          	blt	a4,a0,1bf68 <_vfiprintf_r+0xb1c>
   1b788:	00050613          	mv	a2,a0
   1b78c:	01040413          	add	s0,s0,16
   1b790:	0015051b          	addw	a0,a0,1
   1b794:	060f8c63          	beqz	t6,1b80c <_vfiprintf_r+0x3c0>
   1b798:	06810713          	add	a4,sp,104
   1b79c:	00278793          	add	a5,a5,2
   1b7a0:	00e43023          	sd	a4,0(s0)
   1b7a4:	00200713          	li	a4,2
   1b7a8:	00e43423          	sd	a4,8(s0)
   1b7ac:	08f13023          	sd	a5,128(sp)
   1b7b0:	06a12c23          	sw	a0,120(sp)
   1b7b4:	00700713          	li	a4,7
   1b7b8:	02a754e3          	bge	a4,a0,1bfe0 <_vfiprintf_r+0xb94>
   1b7bc:	30078ee3          	beqz	a5,1c2d8 <_vfiprintf_r+0xe8c>
   1b7c0:	07010613          	add	a2,sp,112
   1b7c4:	000a0593          	mv	a1,s4
   1b7c8:	000a8513          	mv	a0,s5
   1b7cc:	04613423          	sd	t1,72(sp)
   1b7d0:	03c13423          	sd	t3,40(sp)
   1b7d4:	03113023          	sd	a7,32(sp)
   1b7d8:	01013c23          	sd	a6,24(sp)
   1b7dc:	00513823          	sd	t0,16(sp)
   1b7e0:	b55ff0ef          	jal	1b334 <__sprint_r.part.0>
   1b7e4:	ea0510e3          	bnez	a0,1b684 <_vfiprintf_r+0x238>
   1b7e8:	07812603          	lw	a2,120(sp)
   1b7ec:	08013783          	ld	a5,128(sp)
   1b7f0:	04813303          	ld	t1,72(sp)
   1b7f4:	02813e03          	ld	t3,40(sp)
   1b7f8:	02013883          	ld	a7,32(sp)
   1b7fc:	01813803          	ld	a6,24(sp)
   1b800:	01013283          	ld	t0,16(sp)
   1b804:	00098413          	mv	s0,s3
   1b808:	0016051b          	addw	a0,a2,1
   1b80c:	08000713          	li	a4,128
   1b810:	52e28463          	beq	t0,a4,1bd38 <_vfiprintf_r+0x8ec>
   1b814:	406484bb          	subw	s1,s1,t1
   1b818:	64904c63          	bgtz	s1,1be70 <_vfiprintf_r+0xa24>
   1b81c:	00f307b3          	add	a5,t1,a5
   1b820:	01743023          	sd	s7,0(s0)
   1b824:	00643423          	sd	t1,8(s0)
   1b828:	08f13023          	sd	a5,128(sp)
   1b82c:	06a12c23          	sw	a0,120(sp)
   1b830:	00700713          	li	a4,7
   1b834:	4ea75e63          	bge	a4,a0,1bd30 <_vfiprintf_r+0x8e4>
   1b838:	10078ae3          	beqz	a5,1c14c <_vfiprintf_r+0xd00>
   1b83c:	07010613          	add	a2,sp,112
   1b840:	000a0593          	mv	a1,s4
   1b844:	000a8513          	mv	a0,s5
   1b848:	03c13023          	sd	t3,32(sp)
   1b84c:	01113c23          	sd	a7,24(sp)
   1b850:	01013823          	sd	a6,16(sp)
   1b854:	ae1ff0ef          	jal	1b334 <__sprint_r.part.0>
   1b858:	e20516e3          	bnez	a0,1b684 <_vfiprintf_r+0x238>
   1b85c:	08013783          	ld	a5,128(sp)
   1b860:	02013e03          	ld	t3,32(sp)
   1b864:	01813883          	ld	a7,24(sp)
   1b868:	01013803          	ld	a6,16(sp)
   1b86c:	00098413          	mv	s0,s3
   1b870:	00487813          	and	a6,a6,4
   1b874:	00080663          	beqz	a6,1b880 <_vfiprintf_r+0x434>
   1b878:	41c884bb          	subw	s1,a7,t3
   1b87c:	0e9044e3          	bgtz	s1,1c164 <_vfiprintf_r+0xd18>
   1b880:	00088713          	mv	a4,a7
   1b884:	01c8d463          	bge	a7,t3,1b88c <_vfiprintf_r+0x440>
   1b888:	000e0713          	mv	a4,t3
   1b88c:	01a70d3b          	addw	s10,a4,s10
   1b890:	de0790e3          	bnez	a5,1b670 <_vfiprintf_r+0x224>
   1b894:	000dc783          	lbu	a5,0(s11)
   1b898:	06012c23          	sw	zero,120(sp)
   1b89c:	00098413          	mv	s0,s3
   1b8a0:	c8079ee3          	bnez	a5,1b53c <_vfiprintf_r+0xf0>
   1b8a4:	08013783          	ld	a5,128(sp)
   1b8a8:	000d0c93          	mv	s9,s10
   1b8ac:	dc078ee3          	beqz	a5,1b688 <_vfiprintf_r+0x23c>
   1b8b0:	07010613          	add	a2,sp,112
   1b8b4:	000a0593          	mv	a1,s4
   1b8b8:	000a8513          	mv	a0,s5
   1b8bc:	a79ff0ef          	jal	1b334 <__sprint_r.part.0>
   1b8c0:	dc9ff06f          	j	1b688 <_vfiprintf_r+0x23c>
   1b8c4:	01086813          	or	a6,a6,16
   1b8c8:	000dc783          	lbu	a5,0(s11)
   1b8cc:	0008081b          	sext.w	a6,a6
   1b8d0:	cfdff06f          	j	1b5cc <_vfiprintf_r+0x180>
   1b8d4:	01086813          	or	a6,a6,16
   1b8d8:	0008081b          	sext.w	a6,a6
   1b8dc:	02087793          	and	a5,a6,32
   1b8e0:	008c8e93          	add	t4,s9,8
   1b8e4:	04078663          	beqz	a5,1b930 <_vfiprintf_r+0x4e4>
   1b8e8:	000cb783          	ld	a5,0(s9)
   1b8ec:	00078c93          	mv	s9,a5
   1b8f0:	0607c263          	bltz	a5,1b954 <_vfiprintf_r+0x508>
   1b8f4:	fff00793          	li	a5,-1
   1b8f8:	06f48c63          	beq	s1,a5,1b970 <_vfiprintf_r+0x524>
   1b8fc:	f7f87813          	and	a6,a6,-129
   1b900:	0008081b          	sext.w	a6,a6
   1b904:	060c9663          	bnez	s9,1b970 <_vfiprintf_r+0x524>
   1b908:	5a049ce3          	bnez	s1,1c6c0 <_vfiprintf_r+0x1274>
   1b90c:	00000e13          	li	t3,0
   1b910:	00000313          	li	t1,0
   1b914:	000e8c93          	mv	s9,t4
   1b918:	0ec10b93          	add	s7,sp,236
   1b91c:	0800006f          	j	1b99c <_vfiprintf_r+0x550>
   1b920:	41b48bbb          	subw	s7,s1,s11
   1b924:	c20b9ce3          	bnez	s7,1b55c <_vfiprintf_r+0x110>
   1b928:	0004c783          	lbu	a5,0(s1)
   1b92c:	c81ff06f          	j	1b5ac <_vfiprintf_r+0x160>
   1b930:	01087793          	and	a5,a6,16
   1b934:	fa079ae3          	bnez	a5,1b8e8 <_vfiprintf_r+0x49c>
   1b938:	04087793          	and	a5,a6,64
   1b93c:	000cac83          	lw	s9,0(s9)
   1b940:	4e0786e3          	beqz	a5,1c62c <_vfiprintf_r+0x11e0>
   1b944:	010c9c9b          	sllw	s9,s9,0x10
   1b948:	410cdc9b          	sraw	s9,s9,0x10
   1b94c:	000c8793          	mv	a5,s9
   1b950:	fa07d2e3          	bgez	a5,1b8f4 <_vfiprintf_r+0x4a8>
   1b954:	02d00793          	li	a5,45
   1b958:	06f103a3          	sb	a5,103(sp)
   1b95c:	fff00793          	li	a5,-1
   1b960:	41900cb3          	neg	s9,s9
   1b964:	00f48663          	beq	s1,a5,1b970 <_vfiprintf_r+0x524>
   1b968:	f7f87813          	and	a6,a6,-129
   1b96c:	0008081b          	sext.w	a6,a6
   1b970:	00900793          	li	a5,9
   1b974:	1f97e0e3          	bltu	a5,s9,1c354 <_vfiprintf_r+0xf08>
   1b978:	030c879b          	addw	a5,s9,48
   1b97c:	0ff7f793          	zext.b	a5,a5
   1b980:	000e8c93          	mv	s9,t4
   1b984:	0ef105a3          	sb	a5,235(sp)
   1b988:	00048e1b          	sext.w	t3,s1
   1b98c:	00904463          	bgtz	s1,1b994 <_vfiprintf_r+0x548>
   1b990:	00100e13          	li	t3,1
   1b994:	00100313          	li	t1,1
   1b998:	0eb10b93          	add	s7,sp,235
   1b99c:	06714783          	lbu	a5,103(sp)
   1b9a0:	d80788e3          	beqz	a5,1b730 <_vfiprintf_r+0x2e4>
   1b9a4:	001e0e1b          	addw	t3,t3,1
   1b9a8:	d89ff06f          	j	1b730 <_vfiprintf_r+0x2e4>
   1b9ac:	c99f70ef          	jal	13644 <__sinit>
   1b9b0:	af1ff06f          	j	1b4a0 <_vfiprintf_r+0x54>
   1b9b4:	000cbb83          	ld	s7,0(s9)
   1b9b8:	060103a3          	sb	zero,103(sp)
   1b9bc:	008c8c93          	add	s9,s9,8
   1b9c0:	400b8ce3          	beqz	s7,1c5d8 <_vfiprintf_r+0x118c>
   1b9c4:	fff00793          	li	a5,-1
   1b9c8:	01113c23          	sd	a7,24(sp)
   1b9cc:	01013823          	sd	a6,16(sp)
   1b9d0:	30f48ae3          	beq	s1,a5,1c4e4 <_vfiprintf_r+0x1098>
   1b9d4:	00048613          	mv	a2,s1
   1b9d8:	00000593          	li	a1,0
   1b9dc:	000b8513          	mv	a0,s7
   1b9e0:	9a5fb0ef          	jal	17384 <memchr>
   1b9e4:	01013803          	ld	a6,16(sp)
   1b9e8:	01813883          	ld	a7,24(sp)
   1b9ec:	4a050ce3          	beqz	a0,1c6a4 <_vfiprintf_r+0x1258>
   1b9f0:	4175033b          	subw	t1,a0,s7
   1b9f4:	fff34e13          	not	t3,t1
   1b9f8:	43fe5e13          	sra	t3,t3,0x3f
   1b9fc:	006e7e33          	and	t3,t3,t1
   1ba00:	00000493          	li	s1,0
   1ba04:	f99ff06f          	j	1b99c <_vfiprintf_r+0x550>
   1ba08:	000ca783          	lw	a5,0(s9)
   1ba0c:	060103a3          	sb	zero,103(sp)
   1ba10:	008c8c93          	add	s9,s9,8
   1ba14:	08f10423          	sb	a5,136(sp)
   1ba18:	00100e13          	li	t3,1
   1ba1c:	00100313          	li	t1,1
   1ba20:	08810b93          	add	s7,sp,136
   1ba24:	d09ff06f          	j	1b72c <_vfiprintf_r+0x2e0>
   1ba28:	000ca883          	lw	a7,0(s9)
   1ba2c:	008c8c93          	add	s9,s9,8
   1ba30:	0c08d663          	bgez	a7,1bafc <_vfiprintf_r+0x6b0>
   1ba34:	411008bb          	negw	a7,a7
   1ba38:	00486813          	or	a6,a6,4
   1ba3c:	000dc783          	lbu	a5,0(s11)
   1ba40:	0008081b          	sext.w	a6,a6
   1ba44:	b89ff06f          	j	1b5cc <_vfiprintf_r+0x180>
   1ba48:	02b00713          	li	a4,43
   1ba4c:	000dc783          	lbu	a5,0(s11)
   1ba50:	06e103a3          	sb	a4,103(sp)
   1ba54:	b79ff06f          	j	1b5cc <_vfiprintf_r+0x180>
   1ba58:	08086813          	or	a6,a6,128
   1ba5c:	000dc783          	lbu	a5,0(s11)
   1ba60:	0008081b          	sext.w	a6,a6
   1ba64:	b69ff06f          	j	1b5cc <_vfiprintf_r+0x180>
   1ba68:	000dc783          	lbu	a5,0(s11)
   1ba6c:	02a00613          	li	a2,42
   1ba70:	001d8713          	add	a4,s11,1
   1ba74:	48c786e3          	beq	a5,a2,1c700 <_vfiprintf_r+0x12b4>
   1ba78:	fd07869b          	addw	a3,a5,-48
   1ba7c:	00900593          	li	a1,9
   1ba80:	00070d93          	mv	s11,a4
   1ba84:	00000493          	li	s1,0
   1ba88:	00900613          	li	a2,9
   1ba8c:	b4d5e4e3          	bltu	a1,a3,1b5d4 <_vfiprintf_r+0x188>
   1ba90:	000dc783          	lbu	a5,0(s11)
   1ba94:	0024971b          	sllw	a4,s1,0x2
   1ba98:	009704bb          	addw	s1,a4,s1
   1ba9c:	0014949b          	sllw	s1,s1,0x1
   1baa0:	00d484bb          	addw	s1,s1,a3
   1baa4:	fd07869b          	addw	a3,a5,-48
   1baa8:	001d8d93          	add	s11,s11,1
   1baac:	fed672e3          	bgeu	a2,a3,1ba90 <_vfiprintf_r+0x644>
   1bab0:	b25ff06f          	j	1b5d4 <_vfiprintf_r+0x188>
   1bab4:	000a8513          	mv	a0,s5
   1bab8:	01113c23          	sd	a7,24(sp)
   1babc:	01013823          	sd	a6,16(sp)
   1bac0:	e65fa0ef          	jal	16924 <_localeconv_r>
   1bac4:	00853783          	ld	a5,8(a0)
   1bac8:	00078513          	mv	a0,a5
   1bacc:	04f13023          	sd	a5,64(sp)
   1bad0:	824fd0ef          	jal	18af4 <strlen>
   1bad4:	00050793          	mv	a5,a0
   1bad8:	000a8513          	mv	a0,s5
   1badc:	02f13823          	sd	a5,48(sp)
   1bae0:	e45fa0ef          	jal	16924 <_localeconv_r>
   1bae4:	01053703          	ld	a4,16(a0)
   1bae8:	03013783          	ld	a5,48(sp)
   1baec:	01013803          	ld	a6,16(sp)
   1baf0:	02e13c23          	sd	a4,56(sp)
   1baf4:	01813883          	ld	a7,24(sp)
   1baf8:	120790e3          	bnez	a5,1c418 <_vfiprintf_r+0xfcc>
   1bafc:	000dc783          	lbu	a5,0(s11)
   1bb00:	acdff06f          	j	1b5cc <_vfiprintf_r+0x180>
   1bb04:	00186813          	or	a6,a6,1
   1bb08:	000dc783          	lbu	a5,0(s11)
   1bb0c:	0008081b          	sext.w	a6,a6
   1bb10:	abdff06f          	j	1b5cc <_vfiprintf_r+0x180>
   1bb14:	06714703          	lbu	a4,103(sp)
   1bb18:	000dc783          	lbu	a5,0(s11)
   1bb1c:	aa0718e3          	bnez	a4,1b5cc <_vfiprintf_r+0x180>
   1bb20:	02000713          	li	a4,32
   1bb24:	06e103a3          	sb	a4,103(sp)
   1bb28:	aa5ff06f          	j	1b5cc <_vfiprintf_r+0x180>
   1bb2c:	01086793          	or	a5,a6,16
   1bb30:	0007879b          	sext.w	a5,a5
   1bb34:	0207f713          	and	a4,a5,32
   1bb38:	008c8593          	add	a1,s9,8
   1bb3c:	00071663          	bnez	a4,1bb48 <_vfiprintf_r+0x6fc>
   1bb40:	0107f713          	and	a4,a5,16
   1bb44:	0a070ee3          	beqz	a4,1c400 <_vfiprintf_r+0xfb4>
   1bb48:	000cb703          	ld	a4,0(s9)
   1bb4c:	bff7f813          	and	a6,a5,-1025
   1bb50:	060103a3          	sb	zero,103(sp)
   1bb54:	fff00613          	li	a2,-1
   1bb58:	0008081b          	sext.w	a6,a6
   1bb5c:	00058c93          	mv	s9,a1
   1bb60:	0cc48463          	beq	s1,a2,1bc28 <_vfiprintf_r+0x7dc>
   1bb64:	b7f7f793          	and	a5,a5,-1153
   1bb68:	0007879b          	sext.w	a5,a5
   1bb6c:	22071ae3          	bnez	a4,1c5a0 <_vfiprintf_r+0x1154>
   1bb70:	00080313          	mv	t1,a6
   1bb74:	00078813          	mv	a6,a5
   1bb78:	08049e63          	bnez	s1,1bc14 <_vfiprintf_r+0x7c8>
   1bb7c:	7c071463          	bnez	a4,1c344 <_vfiprintf_r+0xef8>
   1bb80:	00137313          	and	t1,t1,1
   1bb84:	040304e3          	beqz	t1,1c3cc <_vfiprintf_r+0xf80>
   1bb88:	03000793          	li	a5,48
   1bb8c:	0ef105a3          	sb	a5,235(sp)
   1bb90:	00030e13          	mv	t3,t1
   1bb94:	0eb10b93          	add	s7,sp,235
   1bb98:	e05ff06f          	j	1b99c <_vfiprintf_r+0x550>
   1bb9c:	000dc783          	lbu	a5,0(s11)
   1bba0:	06c00713          	li	a4,108
   1bba4:	22e780e3          	beq	a5,a4,1c5c4 <_vfiprintf_r+0x1178>
   1bba8:	01086813          	or	a6,a6,16
   1bbac:	0008081b          	sext.w	a6,a6
   1bbb0:	a1dff06f          	j	1b5cc <_vfiprintf_r+0x180>
   1bbb4:	000dc783          	lbu	a5,0(s11)
   1bbb8:	06800713          	li	a4,104
   1bbbc:	1ee78ae3          	beq	a5,a4,1c5b0 <_vfiprintf_r+0x1164>
   1bbc0:	04086813          	or	a6,a6,64
   1bbc4:	0008081b          	sext.w	a6,a6
   1bbc8:	a05ff06f          	j	1b5cc <_vfiprintf_r+0x180>
   1bbcc:	01086313          	or	t1,a6,16
   1bbd0:	0003031b          	sext.w	t1,t1
   1bbd4:	02037793          	and	a5,t1,32
   1bbd8:	008c8e93          	add	t4,s9,8
   1bbdc:	00079663          	bnez	a5,1bbe8 <_vfiprintf_r+0x79c>
   1bbe0:	01037793          	and	a5,t1,16
   1bbe4:	000782e3          	beqz	a5,1c3e8 <_vfiprintf_r+0xf9c>
   1bbe8:	000cbc83          	ld	s9,0(s9)
   1bbec:	060103a3          	sb	zero,103(sp)
   1bbf0:	fff00793          	li	a5,-1
   1bbf4:	00030813          	mv	a6,t1
   1bbf8:	d6f48ce3          	beq	s1,a5,1b970 <_vfiprintf_r+0x524>
   1bbfc:	f7f37813          	and	a6,t1,-129
   1bc00:	0008081b          	sext.w	a6,a6
   1bc04:	d60c96e3          	bnez	s9,1b970 <_vfiprintf_r+0x524>
   1bc08:	000e8c93          	mv	s9,t4
   1bc0c:	00100713          	li	a4,1
   1bc10:	f60486e3          	beqz	s1,1bb7c <_vfiprintf_r+0x730>
   1bc14:	00100793          	li	a5,1
   1bc18:	2af706e3          	beq	a4,a5,1c6c4 <_vfiprintf_r+0x1278>
   1bc1c:	00200793          	li	a5,2
   1bc20:	1cf70ae3          	beq	a4,a5,1c5f4 <_vfiprintf_r+0x11a8>
   1bc24:	00000713          	li	a4,0
   1bc28:	0ec10313          	add	t1,sp,236
   1bc2c:	00030b93          	mv	s7,t1
   1bc30:	00777793          	and	a5,a4,7
   1bc34:	03078793          	add	a5,a5,48
   1bc38:	fefb8fa3          	sb	a5,-1(s7)
   1bc3c:	00375713          	srl	a4,a4,0x3
   1bc40:	000b8613          	mv	a2,s7
   1bc44:	fffb8b93          	add	s7,s7,-1
   1bc48:	fe0714e3          	bnez	a4,1bc30 <_vfiprintf_r+0x7e4>
   1bc4c:	00187713          	and	a4,a6,1
   1bc50:	3c070a63          	beqz	a4,1c024 <_vfiprintf_r+0xbd8>
   1bc54:	03000713          	li	a4,48
   1bc58:	3ce78663          	beq	a5,a4,1c024 <_vfiprintf_r+0xbd8>
   1bc5c:	ffe60613          	add	a2,a2,-2
   1bc60:	40c3033b          	subw	t1,t1,a2
   1bc64:	feeb8fa3          	sb	a4,-1(s7)
   1bc68:	00030e1b          	sext.w	t3,t1
   1bc6c:	7c934c63          	blt	t1,s1,1c444 <_vfiprintf_r+0xff8>
   1bc70:	00060b93          	mv	s7,a2
   1bc74:	d29ff06f          	j	1b99c <_vfiprintf_r+0x550>
   1bc78:	02086813          	or	a6,a6,32
   1bc7c:	000dc783          	lbu	a5,0(s11)
   1bc80:	0008081b          	sext.w	a6,a6
   1bc84:	949ff06f          	j	1b5cc <_vfiprintf_r+0x180>
   1bc88:	ffff87b7          	lui	a5,0xffff8
   1bc8c:	8307c793          	xor	a5,a5,-2000
   1bc90:	00286813          	or	a6,a6,2
   1bc94:	06f11423          	sh	a5,104(sp)
   1bc98:	00006797          	auipc	a5,0x6
   1bc9c:	0d078793          	add	a5,a5,208 # 21d68 <__clzdi2+0xb8>
   1bca0:	000cb703          	ld	a4,0(s9)
   1bca4:	0008081b          	sext.w	a6,a6
   1bca8:	008c8c93          	add	s9,s9,8
   1bcac:	00f13423          	sd	a5,8(sp)
   1bcb0:	060103a3          	sb	zero,103(sp)
   1bcb4:	fff00793          	li	a5,-1
   1bcb8:	34f48263          	beq	s1,a5,1bffc <_vfiprintf_r+0xbb0>
   1bcbc:	f7f87793          	and	a5,a6,-129
   1bcc0:	0007879b          	sext.w	a5,a5
   1bcc4:	32071663          	bnez	a4,1bff0 <_vfiprintf_r+0xba4>
   1bcc8:	00080313          	mv	t1,a6
   1bccc:	00200713          	li	a4,2
   1bcd0:	00078813          	mv	a6,a5
   1bcd4:	ea5ff06f          	j	1bb78 <_vfiprintf_r+0x72c>
   1bcd8:	02087793          	and	a5,a6,32
   1bcdc:	000cb703          	ld	a4,0(s9)
   1bce0:	02079463          	bnez	a5,1bd08 <_vfiprintf_r+0x8bc>
   1bce4:	01087793          	and	a5,a6,16
   1bce8:	02079063          	bnez	a5,1bd08 <_vfiprintf_r+0x8bc>
   1bcec:	04087793          	and	a5,a6,64
   1bcf0:	16079ee3          	bnez	a5,1c66c <_vfiprintf_r+0x1220>
   1bcf4:	20087813          	and	a6,a6,512
   1bcf8:	1e080ee3          	beqz	a6,1c6f4 <_vfiprintf_r+0x12a8>
   1bcfc:	01a70023          	sb	s10,0(a4)
   1bd00:	008c8c93          	add	s9,s9,8
   1bd04:	831ff06f          	j	1b534 <_vfiprintf_r+0xe8>
   1bd08:	01a73023          	sd	s10,0(a4)
   1bd0c:	008c8c93          	add	s9,s9,8
   1bd10:	825ff06f          	j	1b534 <_vfiprintf_r+0xe8>
   1bd14:	00100713          	li	a4,1
   1bd18:	00030793          	mv	a5,t1
   1bd1c:	0f713823          	sd	s7,240(sp)
   1bd20:	0e613c23          	sd	t1,248(sp)
   1bd24:	08613023          	sd	t1,128(sp)
   1bd28:	06e12c23          	sw	a4,120(sp)
   1bd2c:	00098413          	mv	s0,s3
   1bd30:	01040413          	add	s0,s0,16
   1bd34:	b3dff06f          	j	1b870 <_vfiprintf_r+0x424>
   1bd38:	41c8873b          	subw	a4,a7,t3
   1bd3c:	ace05ce3          	blez	a4,1b814 <_vfiprintf_r+0x3c8>
   1bd40:	01000593          	li	a1,16
   1bd44:	18e5dce3          	bge	a1,a4,1c6dc <_vfiprintf_r+0x1290>
   1bd48:	00007e97          	auipc	t4,0x7
   1bd4c:	ac0e8e93          	add	t4,t4,-1344 # 22808 <zeroes.0>
   1bd50:	02913023          	sd	s1,32(sp)
   1bd54:	00040693          	mv	a3,s0
   1bd58:	01000f13          	li	t5,16
   1bd5c:	00700f93          	li	t6,7
   1bd60:	01013823          	sd	a6,16(sp)
   1bd64:	01113c23          	sd	a7,24(sp)
   1bd68:	03c13423          	sd	t3,40(sp)
   1bd6c:	04613423          	sd	t1,72(sp)
   1bd70:	00070413          	mv	s0,a4
   1bd74:	000e8493          	mv	s1,t4
   1bd78:	0180006f          	j	1bd90 <_vfiprintf_r+0x944>
   1bd7c:	0026059b          	addw	a1,a2,2
   1bd80:	01068693          	add	a3,a3,16
   1bd84:	00050613          	mv	a2,a0
   1bd88:	ff04041b          	addw	s0,s0,-16
   1bd8c:	048f5c63          	bge	t5,s0,1bde4 <_vfiprintf_r+0x998>
   1bd90:	0016051b          	addw	a0,a2,1
   1bd94:	01078793          	add	a5,a5,16
   1bd98:	0096b023          	sd	s1,0(a3)
   1bd9c:	01e6b423          	sd	t5,8(a3)
   1bda0:	08f13023          	sd	a5,128(sp)
   1bda4:	06a12c23          	sw	a0,120(sp)
   1bda8:	fcafdae3          	bge	t6,a0,1bd7c <_vfiprintf_r+0x930>
   1bdac:	1a078663          	beqz	a5,1bf58 <_vfiprintf_r+0xb0c>
   1bdb0:	07010613          	add	a2,sp,112
   1bdb4:	000a0593          	mv	a1,s4
   1bdb8:	000a8513          	mv	a0,s5
   1bdbc:	d78ff0ef          	jal	1b334 <__sprint_r.part.0>
   1bdc0:	8c0512e3          	bnez	a0,1b684 <_vfiprintf_r+0x238>
   1bdc4:	07812603          	lw	a2,120(sp)
   1bdc8:	01000f13          	li	t5,16
   1bdcc:	ff04041b          	addw	s0,s0,-16
   1bdd0:	08013783          	ld	a5,128(sp)
   1bdd4:	00098693          	mv	a3,s3
   1bdd8:	0016059b          	addw	a1,a2,1
   1bddc:	00700f93          	li	t6,7
   1bde0:	fa8f48e3          	blt	t5,s0,1bd90 <_vfiprintf_r+0x944>
   1bde4:	00048e93          	mv	t4,s1
   1bde8:	01013803          	ld	a6,16(sp)
   1bdec:	01813883          	ld	a7,24(sp)
   1bdf0:	02813e03          	ld	t3,40(sp)
   1bdf4:	04813303          	ld	t1,72(sp)
   1bdf8:	02013483          	ld	s1,32(sp)
   1bdfc:	00040713          	mv	a4,s0
   1be00:	00068413          	mv	s0,a3
   1be04:	00e787b3          	add	a5,a5,a4
   1be08:	00e43423          	sd	a4,8(s0)
   1be0c:	01d43023          	sd	t4,0(s0)
   1be10:	08f13023          	sd	a5,128(sp)
   1be14:	06b12c23          	sw	a1,120(sp)
   1be18:	00700713          	li	a4,7
   1be1c:	5ab75e63          	bge	a4,a1,1c3d8 <_vfiprintf_r+0xf8c>
   1be20:	020782e3          	beqz	a5,1c644 <_vfiprintf_r+0x11f8>
   1be24:	07010613          	add	a2,sp,112
   1be28:	000a0593          	mv	a1,s4
   1be2c:	000a8513          	mv	a0,s5
   1be30:	02613423          	sd	t1,40(sp)
   1be34:	03c13023          	sd	t3,32(sp)
   1be38:	01113c23          	sd	a7,24(sp)
   1be3c:	01013823          	sd	a6,16(sp)
   1be40:	cf4ff0ef          	jal	1b334 <__sprint_r.part.0>
   1be44:	840510e3          	bnez	a0,1b684 <_vfiprintf_r+0x238>
   1be48:	02813303          	ld	t1,40(sp)
   1be4c:	07812603          	lw	a2,120(sp)
   1be50:	08013783          	ld	a5,128(sp)
   1be54:	406484bb          	subw	s1,s1,t1
   1be58:	02013e03          	ld	t3,32(sp)
   1be5c:	01813883          	ld	a7,24(sp)
   1be60:	01013803          	ld	a6,16(sp)
   1be64:	00098413          	mv	s0,s3
   1be68:	0016051b          	addw	a0,a2,1
   1be6c:	9a9058e3          	blez	s1,1b81c <_vfiprintf_r+0x3d0>
   1be70:	00007e97          	auipc	t4,0x7
   1be74:	998e8e93          	add	t4,t4,-1640 # 22808 <zeroes.0>
   1be78:	0a995463          	bge	s2,s1,1bf20 <_vfiprintf_r+0xad4>
   1be7c:	00040713          	mv	a4,s0
   1be80:	00700f13          	li	t5,7
   1be84:	00048413          	mv	s0,s1
   1be88:	01013823          	sd	a6,16(sp)
   1be8c:	01113c23          	sd	a7,24(sp)
   1be90:	03c13023          	sd	t3,32(sp)
   1be94:	02613423          	sd	t1,40(sp)
   1be98:	000b0493          	mv	s1,s6
   1be9c:	0180006f          	j	1beb4 <_vfiprintf_r+0xa68>
   1bea0:	0026051b          	addw	a0,a2,2
   1bea4:	01070713          	add	a4,a4,16
   1bea8:	00058613          	mv	a2,a1
   1beac:	ff04041b          	addw	s0,s0,-16
   1beb0:	04895a63          	bge	s2,s0,1bf04 <_vfiprintf_r+0xab8>
   1beb4:	0016059b          	addw	a1,a2,1
   1beb8:	01078793          	add	a5,a5,16
   1bebc:	01673023          	sd	s6,0(a4)
   1bec0:	01273423          	sd	s2,8(a4)
   1bec4:	08f13023          	sd	a5,128(sp)
   1bec8:	06b12c23          	sw	a1,120(sp)
   1becc:	fcbf5ae3          	bge	t5,a1,1bea0 <_vfiprintf_r+0xa54>
   1bed0:	06078c63          	beqz	a5,1bf48 <_vfiprintf_r+0xafc>
   1bed4:	07010613          	add	a2,sp,112
   1bed8:	000a0593          	mv	a1,s4
   1bedc:	000a8513          	mv	a0,s5
   1bee0:	c54ff0ef          	jal	1b334 <__sprint_r.part.0>
   1bee4:	fa051063          	bnez	a0,1b684 <_vfiprintf_r+0x238>
   1bee8:	07812603          	lw	a2,120(sp)
   1beec:	ff04041b          	addw	s0,s0,-16
   1bef0:	08013783          	ld	a5,128(sp)
   1bef4:	00098713          	mv	a4,s3
   1bef8:	0016051b          	addw	a0,a2,1
   1befc:	00700f13          	li	t5,7
   1bf00:	fa894ae3          	blt	s2,s0,1beb4 <_vfiprintf_r+0xa68>
   1bf04:	01013803          	ld	a6,16(sp)
   1bf08:	01813883          	ld	a7,24(sp)
   1bf0c:	02013e03          	ld	t3,32(sp)
   1bf10:	02813303          	ld	t1,40(sp)
   1bf14:	00048e93          	mv	t4,s1
   1bf18:	00040493          	mv	s1,s0
   1bf1c:	00070413          	mv	s0,a4
   1bf20:	009787b3          	add	a5,a5,s1
   1bf24:	01d43023          	sd	t4,0(s0)
   1bf28:	00943423          	sd	s1,8(s0)
   1bf2c:	08f13023          	sd	a5,128(sp)
   1bf30:	06a12c23          	sw	a0,120(sp)
   1bf34:	00700713          	li	a4,7
   1bf38:	34a74463          	blt	a4,a0,1c280 <_vfiprintf_r+0xe34>
   1bf3c:	01040413          	add	s0,s0,16
   1bf40:	0015051b          	addw	a0,a0,1
   1bf44:	8d9ff06f          	j	1b81c <_vfiprintf_r+0x3d0>
   1bf48:	00100513          	li	a0,1
   1bf4c:	00000613          	li	a2,0
   1bf50:	00098713          	mv	a4,s3
   1bf54:	f59ff06f          	j	1beac <_vfiprintf_r+0xa60>
   1bf58:	00100593          	li	a1,1
   1bf5c:	00000613          	li	a2,0
   1bf60:	00098693          	mv	a3,s3
   1bf64:	e25ff06f          	j	1bd88 <_vfiprintf_r+0x93c>
   1bf68:	04078e63          	beqz	a5,1bfc4 <_vfiprintf_r+0xb78>
   1bf6c:	07010613          	add	a2,sp,112
   1bf70:	000a0593          	mv	a1,s4
   1bf74:	000a8513          	mv	a0,s5
   1bf78:	04613823          	sd	t1,80(sp)
   1bf7c:	05c13423          	sd	t3,72(sp)
   1bf80:	03113423          	sd	a7,40(sp)
   1bf84:	03013023          	sd	a6,32(sp)
   1bf88:	00513c23          	sd	t0,24(sp)
   1bf8c:	01f13823          	sd	t6,16(sp)
   1bf90:	ba4ff0ef          	jal	1b334 <__sprint_r.part.0>
   1bf94:	ee051863          	bnez	a0,1b684 <_vfiprintf_r+0x238>
   1bf98:	07812603          	lw	a2,120(sp)
   1bf9c:	08013783          	ld	a5,128(sp)
   1bfa0:	05013303          	ld	t1,80(sp)
   1bfa4:	04813e03          	ld	t3,72(sp)
   1bfa8:	02813883          	ld	a7,40(sp)
   1bfac:	02013803          	ld	a6,32(sp)
   1bfb0:	01813283          	ld	t0,24(sp)
   1bfb4:	01013f83          	ld	t6,16(sp)
   1bfb8:	00098413          	mv	s0,s3
   1bfbc:	0016051b          	addw	a0,a2,1
   1bfc0:	fd4ff06f          	j	1b794 <_vfiprintf_r+0x348>
   1bfc4:	460f8863          	beqz	t6,1c434 <_vfiprintf_r+0xfe8>
   1bfc8:	06810793          	add	a5,sp,104
   1bfcc:	0ef13823          	sd	a5,240(sp)
   1bfd0:	00200793          	li	a5,2
   1bfd4:	0ef13c23          	sd	a5,248(sp)
   1bfd8:	00100513          	li	a0,1
   1bfdc:	00098413          	mv	s0,s3
   1bfe0:	00050613          	mv	a2,a0
   1bfe4:	01040413          	add	s0,s0,16
   1bfe8:	0015051b          	addw	a0,a0,1
   1bfec:	821ff06f          	j	1b80c <_vfiprintf_r+0x3c0>
   1bff0:	00078813          	mv	a6,a5
   1bff4:	00200793          	li	a5,2
   1bff8:	c20788e3          	beqz	a5,1bc28 <_vfiprintf_r+0x7dc>
   1bffc:	00813683          	ld	a3,8(sp)
   1c000:	0ec10313          	add	t1,sp,236
   1c004:	00030b93          	mv	s7,t1
   1c008:	00f77793          	and	a5,a4,15
   1c00c:	00f687b3          	add	a5,a3,a5
   1c010:	0007c783          	lbu	a5,0(a5)
   1c014:	00475713          	srl	a4,a4,0x4
   1c018:	fffb8b93          	add	s7,s7,-1
   1c01c:	00fb8023          	sb	a5,0(s7)
   1c020:	fe0714e3          	bnez	a4,1c008 <_vfiprintf_r+0xbbc>
   1c024:	4173033b          	subw	t1,t1,s7
   1c028:	00030e1b          	sext.w	t3,t1
   1c02c:	969358e3          	bge	t1,s1,1b99c <_vfiprintf_r+0x550>
   1c030:	00048e1b          	sext.w	t3,s1
   1c034:	969ff06f          	j	1b99c <_vfiprintf_r+0x550>
   1c038:	01000e93          	li	t4,16
   1c03c:	66eedc63          	bge	t4,a4,1c6b4 <_vfiprintf_r+0x1268>
   1c040:	00006e97          	auipc	t4,0x6
   1c044:	7d8e8e93          	add	t4,t4,2008 # 22818 <blanks.1>
   1c048:	04913423          	sd	s1,72(sp)
   1c04c:	00040693          	mv	a3,s0
   1c050:	01000f13          	li	t5,16
   1c054:	00700393          	li	t2,7
   1c058:	01f13823          	sd	t6,16(sp)
   1c05c:	00513c23          	sd	t0,24(sp)
   1c060:	03013023          	sd	a6,32(sp)
   1c064:	03113423          	sd	a7,40(sp)
   1c068:	05c13823          	sd	t3,80(sp)
   1c06c:	04613c23          	sd	t1,88(sp)
   1c070:	00070413          	mv	s0,a4
   1c074:	000e8493          	mv	s1,t4
   1c078:	01c0006f          	j	1c094 <_vfiprintf_r+0xc48>
   1c07c:	0026059b          	addw	a1,a2,2
   1c080:	01068693          	add	a3,a3,16
   1c084:	00050613          	mv	a2,a0
   1c088:	ff04041b          	addw	s0,s0,-16
   1c08c:	048f5e63          	bge	t5,s0,1c0e8 <_vfiprintf_r+0xc9c>
   1c090:	0016059b          	addw	a1,a2,1
   1c094:	01078793          	add	a5,a5,16
   1c098:	0096b023          	sd	s1,0(a3)
   1c09c:	01e6b423          	sd	t5,8(a3)
   1c0a0:	08f13023          	sd	a5,128(sp)
   1c0a4:	0005851b          	sext.w	a0,a1
   1c0a8:	06b12c23          	sw	a1,120(sp)
   1c0ac:	fca3d8e3          	bge	t2,a0,1c07c <_vfiprintf_r+0xc30>
   1c0b0:	08078663          	beqz	a5,1c13c <_vfiprintf_r+0xcf0>
   1c0b4:	07010613          	add	a2,sp,112
   1c0b8:	000a0593          	mv	a1,s4
   1c0bc:	000a8513          	mv	a0,s5
   1c0c0:	a74ff0ef          	jal	1b334 <__sprint_r.part.0>
   1c0c4:	dc051063          	bnez	a0,1b684 <_vfiprintf_r+0x238>
   1c0c8:	07812603          	lw	a2,120(sp)
   1c0cc:	01000f13          	li	t5,16
   1c0d0:	ff04041b          	addw	s0,s0,-16
   1c0d4:	08013783          	ld	a5,128(sp)
   1c0d8:	00098693          	mv	a3,s3
   1c0dc:	0016059b          	addw	a1,a2,1
   1c0e0:	00700393          	li	t2,7
   1c0e4:	fa8f46e3          	blt	t5,s0,1c090 <_vfiprintf_r+0xc44>
   1c0e8:	00048e93          	mv	t4,s1
   1c0ec:	01013f83          	ld	t6,16(sp)
   1c0f0:	01813283          	ld	t0,24(sp)
   1c0f4:	02013803          	ld	a6,32(sp)
   1c0f8:	02813883          	ld	a7,40(sp)
   1c0fc:	05013e03          	ld	t3,80(sp)
   1c100:	05813303          	ld	t1,88(sp)
   1c104:	04813483          	ld	s1,72(sp)
   1c108:	00040713          	mv	a4,s0
   1c10c:	00068413          	mv	s0,a3
   1c110:	00e787b3          	add	a5,a5,a4
   1c114:	00e43423          	sd	a4,8(s0)
   1c118:	01d43023          	sd	t4,0(s0)
   1c11c:	08f13023          	sd	a5,128(sp)
   1c120:	06b12c23          	sw	a1,120(sp)
   1c124:	00700713          	li	a4,7
   1c128:	1cb74063          	blt	a4,a1,1c2e8 <_vfiprintf_r+0xe9c>
   1c12c:	01040413          	add	s0,s0,16
   1c130:	0015851b          	addw	a0,a1,1
   1c134:	00058613          	mv	a2,a1
   1c138:	e24ff06f          	j	1b75c <_vfiprintf_r+0x310>
   1c13c:	00000613          	li	a2,0
   1c140:	00100593          	li	a1,1
   1c144:	00098693          	mv	a3,s3
   1c148:	f41ff06f          	j	1c088 <_vfiprintf_r+0xc3c>
   1c14c:	06012c23          	sw	zero,120(sp)
   1c150:	00487813          	and	a6,a6,4
   1c154:	10080c63          	beqz	a6,1c26c <_vfiprintf_r+0xe20>
   1c158:	41c884bb          	subw	s1,a7,t3
   1c15c:	10905863          	blez	s1,1c26c <_vfiprintf_r+0xe20>
   1c160:	00098413          	mv	s0,s3
   1c164:	01000713          	li	a4,16
   1c168:	07812603          	lw	a2,120(sp)
   1c16c:	56975063          	bge	a4,s1,1c6cc <_vfiprintf_r+0x1280>
   1c170:	00006e97          	auipc	t4,0x6
   1c174:	6a8e8e93          	add	t4,t4,1704 # 22818 <blanks.1>
   1c178:	00040693          	mv	a3,s0
   1c17c:	01000b93          	li	s7,16
   1c180:	00048413          	mv	s0,s1
   1c184:	00700813          	li	a6,7
   1c188:	01113823          	sd	a7,16(sp)
   1c18c:	01c13c23          	sd	t3,24(sp)
   1c190:	000e8493          	mv	s1,t4
   1c194:	0180006f          	j	1c1ac <_vfiprintf_r+0xd60>
   1c198:	0026071b          	addw	a4,a2,2
   1c19c:	01068693          	add	a3,a3,16
   1c1a0:	00058613          	mv	a2,a1
   1c1a4:	ff04041b          	addw	s0,s0,-16
   1c1a8:	048bda63          	bge	s7,s0,1c1fc <_vfiprintf_r+0xdb0>
   1c1ac:	0016059b          	addw	a1,a2,1
   1c1b0:	01078793          	add	a5,a5,16
   1c1b4:	0096b023          	sd	s1,0(a3)
   1c1b8:	0176b423          	sd	s7,8(a3)
   1c1bc:	08f13023          	sd	a5,128(sp)
   1c1c0:	06b12c23          	sw	a1,120(sp)
   1c1c4:	fcb85ae3          	bge	a6,a1,1c198 <_vfiprintf_r+0xd4c>
   1c1c8:	08078a63          	beqz	a5,1c25c <_vfiprintf_r+0xe10>
   1c1cc:	07010613          	add	a2,sp,112
   1c1d0:	000a0593          	mv	a1,s4
   1c1d4:	000a8513          	mv	a0,s5
   1c1d8:	95cff0ef          	jal	1b334 <__sprint_r.part.0>
   1c1dc:	ca051463          	bnez	a0,1b684 <_vfiprintf_r+0x238>
   1c1e0:	07812603          	lw	a2,120(sp)
   1c1e4:	ff04041b          	addw	s0,s0,-16
   1c1e8:	08013783          	ld	a5,128(sp)
   1c1ec:	00098693          	mv	a3,s3
   1c1f0:	0016071b          	addw	a4,a2,1
   1c1f4:	00700813          	li	a6,7
   1c1f8:	fa8bcae3          	blt	s7,s0,1c1ac <_vfiprintf_r+0xd60>
   1c1fc:	01013883          	ld	a7,16(sp)
   1c200:	01813e03          	ld	t3,24(sp)
   1c204:	00048e93          	mv	t4,s1
   1c208:	00040493          	mv	s1,s0
   1c20c:	00068413          	mv	s0,a3
   1c210:	009787b3          	add	a5,a5,s1
   1c214:	01d43023          	sd	t4,0(s0)
   1c218:	00943423          	sd	s1,8(s0)
   1c21c:	08f13023          	sd	a5,128(sp)
   1c220:	06e12c23          	sw	a4,120(sp)
   1c224:	00700613          	li	a2,7
   1c228:	e4e65c63          	bge	a2,a4,1b880 <_vfiprintf_r+0x434>
   1c22c:	04078063          	beqz	a5,1c26c <_vfiprintf_r+0xe20>
   1c230:	07010613          	add	a2,sp,112
   1c234:	000a0593          	mv	a1,s4
   1c238:	000a8513          	mv	a0,s5
   1c23c:	01c13c23          	sd	t3,24(sp)
   1c240:	01113823          	sd	a7,16(sp)
   1c244:	8f0ff0ef          	jal	1b334 <__sprint_r.part.0>
   1c248:	c2051e63          	bnez	a0,1b684 <_vfiprintf_r+0x238>
   1c24c:	08013783          	ld	a5,128(sp)
   1c250:	01813e03          	ld	t3,24(sp)
   1c254:	01013883          	ld	a7,16(sp)
   1c258:	e28ff06f          	j	1b880 <_vfiprintf_r+0x434>
   1c25c:	00100713          	li	a4,1
   1c260:	00000613          	li	a2,0
   1c264:	00098693          	mv	a3,s3
   1c268:	f3dff06f          	j	1c1a4 <_vfiprintf_r+0xd58>
   1c26c:	00088793          	mv	a5,a7
   1c270:	01c8d463          	bge	a7,t3,1c278 <_vfiprintf_r+0xe2c>
   1c274:	000e0793          	mv	a5,t3
   1c278:	01a78d3b          	addw	s10,a5,s10
   1c27c:	e18ff06f          	j	1b894 <_vfiprintf_r+0x448>
   1c280:	a8078ae3          	beqz	a5,1bd14 <_vfiprintf_r+0x8c8>
   1c284:	07010613          	add	a2,sp,112
   1c288:	000a0593          	mv	a1,s4
   1c28c:	000a8513          	mv	a0,s5
   1c290:	02613423          	sd	t1,40(sp)
   1c294:	03c13023          	sd	t3,32(sp)
   1c298:	01113c23          	sd	a7,24(sp)
   1c29c:	01013823          	sd	a6,16(sp)
   1c2a0:	894ff0ef          	jal	1b334 <__sprint_r.part.0>
   1c2a4:	be051063          	bnez	a0,1b684 <_vfiprintf_r+0x238>
   1c2a8:	07812503          	lw	a0,120(sp)
   1c2ac:	08013783          	ld	a5,128(sp)
   1c2b0:	02813303          	ld	t1,40(sp)
   1c2b4:	02013e03          	ld	t3,32(sp)
   1c2b8:	01813883          	ld	a7,24(sp)
   1c2bc:	01013803          	ld	a6,16(sp)
   1c2c0:	00098413          	mv	s0,s3
   1c2c4:	0015051b          	addw	a0,a0,1
   1c2c8:	d54ff06f          	j	1b81c <_vfiprintf_r+0x3d0>
   1c2cc:	06012c23          	sw	zero,120(sp)
   1c2d0:	00098413          	mv	s0,s3
   1c2d4:	ad0ff06f          	j	1b5a4 <_vfiprintf_r+0x158>
   1c2d8:	00100513          	li	a0,1
   1c2dc:	00000613          	li	a2,0
   1c2e0:	00098413          	mv	s0,s3
   1c2e4:	d28ff06f          	j	1b80c <_vfiprintf_r+0x3c0>
   1c2e8:	22078263          	beqz	a5,1c50c <_vfiprintf_r+0x10c0>
   1c2ec:	07010613          	add	a2,sp,112
   1c2f0:	000a0593          	mv	a1,s4
   1c2f4:	000a8513          	mv	a0,s5
   1c2f8:	04613823          	sd	t1,80(sp)
   1c2fc:	05c13423          	sd	t3,72(sp)
   1c300:	03113423          	sd	a7,40(sp)
   1c304:	03013023          	sd	a6,32(sp)
   1c308:	00513c23          	sd	t0,24(sp)
   1c30c:	01f13823          	sd	t6,16(sp)
   1c310:	824ff0ef          	jal	1b334 <__sprint_r.part.0>
   1c314:	b6051863          	bnez	a0,1b684 <_vfiprintf_r+0x238>
   1c318:	07812603          	lw	a2,120(sp)
   1c31c:	08013783          	ld	a5,128(sp)
   1c320:	05013303          	ld	t1,80(sp)
   1c324:	04813e03          	ld	t3,72(sp)
   1c328:	02813883          	ld	a7,40(sp)
   1c32c:	02013803          	ld	a6,32(sp)
   1c330:	01813283          	ld	t0,24(sp)
   1c334:	01013f83          	ld	t6,16(sp)
   1c338:	00098413          	mv	s0,s3
   1c33c:	0016051b          	addw	a0,a2,1
   1c340:	c1cff06f          	j	1b75c <_vfiprintf_r+0x310>
   1c344:	00000e13          	li	t3,0
   1c348:	00000313          	li	t1,0
   1c34c:	0ec10b93          	add	s7,sp,236
   1c350:	e4cff06f          	j	1b99c <_vfiprintf_r+0x550>
   1c354:	0ec10313          	add	t1,sp,236
   1c358:	03813683          	ld	a3,56(sp)
   1c35c:	40087f13          	and	t5,a6,1024
   1c360:	00000593          	li	a1,0
   1c364:	00030613          	mv	a2,t1
   1c368:	00a00713          	li	a4,10
   1c36c:	00900e13          	li	t3,9
   1c370:	0ff00f93          	li	t6,255
   1c374:	0140006f          	j	1c388 <_vfiprintf_r+0xf3c>
   1c378:	02ecd7b3          	divu	a5,s9,a4
   1c37c:	039e7a63          	bgeu	t3,s9,1c3b0 <_vfiprintf_r+0xf64>
   1c380:	00078c93          	mv	s9,a5
   1c384:	000b8613          	mv	a2,s7
   1c388:	fff60b93          	add	s7,a2,-1
   1c38c:	0015859b          	addw	a1,a1,1
   1c390:	02ecf7b3          	remu	a5,s9,a4
   1c394:	0307879b          	addw	a5,a5,48
   1c398:	fef60fa3          	sb	a5,-1(a2)
   1c39c:	fc0f0ee3          	beqz	t5,1c378 <_vfiprintf_r+0xf2c>
   1c3a0:	0006c783          	lbu	a5,0(a3)
   1c3a4:	fcb79ae3          	bne	a5,a1,1c378 <_vfiprintf_r+0xf2c>
   1c3a8:	fdf788e3          	beq	a5,t6,1c378 <_vfiprintf_r+0xf2c>
   1c3ac:	199e6263          	bltu	t3,s9,1c530 <_vfiprintf_r+0x10e4>
   1c3b0:	4173033b          	subw	t1,t1,s7
   1c3b4:	02d13c23          	sd	a3,56(sp)
   1c3b8:	00030e1b          	sext.w	t3,t1
   1c3bc:	00935463          	bge	t1,s1,1c3c4 <_vfiprintf_r+0xf78>
   1c3c0:	00048e1b          	sext.w	t3,s1
   1c3c4:	000e8c93          	mv	s9,t4
   1c3c8:	dd4ff06f          	j	1b99c <_vfiprintf_r+0x550>
   1c3cc:	00000e13          	li	t3,0
   1c3d0:	0ec10b93          	add	s7,sp,236
   1c3d4:	dc8ff06f          	j	1b99c <_vfiprintf_r+0x550>
   1c3d8:	01040413          	add	s0,s0,16
   1c3dc:	0015851b          	addw	a0,a1,1
   1c3e0:	00058613          	mv	a2,a1
   1c3e4:	c30ff06f          	j	1b814 <_vfiprintf_r+0x3c8>
   1c3e8:	04037793          	and	a5,t1,64
   1c3ec:	000cac83          	lw	s9,0(s9)
   1c3f0:	20078e63          	beqz	a5,1c60c <_vfiprintf_r+0x11c0>
   1c3f4:	030c9c93          	sll	s9,s9,0x30
   1c3f8:	030cdc93          	srl	s9,s9,0x30
   1c3fc:	ff0ff06f          	j	1bbec <_vfiprintf_r+0x7a0>
   1c400:	0407f613          	and	a2,a5,64
   1c404:	000ca703          	lw	a4,0(s9)
   1c408:	20060a63          	beqz	a2,1c61c <_vfiprintf_r+0x11d0>
   1c40c:	03071713          	sll	a4,a4,0x30
   1c410:	03075713          	srl	a4,a4,0x30
   1c414:	f38ff06f          	j	1bb4c <_vfiprintf_r+0x700>
   1c418:	000dc783          	lbu	a5,0(s11)
   1c41c:	9a070863          	beqz	a4,1b5cc <_vfiprintf_r+0x180>
   1c420:	00074703          	lbu	a4,0(a4)
   1c424:	9a070463          	beqz	a4,1b5cc <_vfiprintf_r+0x180>
   1c428:	40086813          	or	a6,a6,1024
   1c42c:	0008081b          	sext.w	a6,a6
   1c430:	99cff06f          	j	1b5cc <_vfiprintf_r+0x180>
   1c434:	00000613          	li	a2,0
   1c438:	00100513          	li	a0,1
   1c43c:	00098413          	mv	s0,s3
   1c440:	bccff06f          	j	1b80c <_vfiprintf_r+0x3c0>
   1c444:	00048e1b          	sext.w	t3,s1
   1c448:	00060b93          	mv	s7,a2
   1c44c:	d50ff06f          	j	1b99c <_vfiprintf_r+0x550>
   1c450:	00080793          	mv	a5,a6
   1c454:	ee0ff06f          	j	1bb34 <_vfiprintf_r+0x6e8>
   1c458:	00006717          	auipc	a4,0x6
   1c45c:	8f870713          	add	a4,a4,-1800 # 21d50 <__clzdi2+0xa0>
   1c460:	00e13423          	sd	a4,8(sp)
   1c464:	02087713          	and	a4,a6,32
   1c468:	008c8613          	add	a2,s9,8
   1c46c:	06071863          	bnez	a4,1c4dc <_vfiprintf_r+0x1090>
   1c470:	01087713          	and	a4,a6,16
   1c474:	06071463          	bnez	a4,1c4dc <_vfiprintf_r+0x1090>
   1c478:	04087593          	and	a1,a6,64
   1c47c:	000ca703          	lw	a4,0(s9)
   1c480:	16058e63          	beqz	a1,1c5fc <_vfiprintf_r+0x11b0>
   1c484:	03071713          	sll	a4,a4,0x30
   1c488:	03075713          	srl	a4,a4,0x30
   1c48c:	00187593          	and	a1,a6,1
   1c490:	00058e63          	beqz	a1,1c4ac <_vfiprintf_r+0x1060>
   1c494:	00070c63          	beqz	a4,1c4ac <_vfiprintf_r+0x1060>
   1c498:	00286813          	or	a6,a6,2
   1c49c:	03000593          	li	a1,48
   1c4a0:	06b10423          	sb	a1,104(sp)
   1c4a4:	06f104a3          	sb	a5,105(sp)
   1c4a8:	0008081b          	sext.w	a6,a6
   1c4ac:	bff87813          	and	a6,a6,-1025
   1c4b0:	0008081b          	sext.w	a6,a6
   1c4b4:	00060c93          	mv	s9,a2
   1c4b8:	ff8ff06f          	j	1bcb0 <_vfiprintf_r+0x864>
   1c4bc:	00080313          	mv	t1,a6
   1c4c0:	f14ff06f          	j	1bbd4 <_vfiprintf_r+0x788>
   1c4c4:	00006717          	auipc	a4,0x6
   1c4c8:	8a470713          	add	a4,a4,-1884 # 21d68 <__clzdi2+0xb8>
   1c4cc:	00e13423          	sd	a4,8(sp)
   1c4d0:	02087713          	and	a4,a6,32
   1c4d4:	008c8613          	add	a2,s9,8
   1c4d8:	f8070ce3          	beqz	a4,1c470 <_vfiprintf_r+0x1024>
   1c4dc:	000cb703          	ld	a4,0(s9)
   1c4e0:	fadff06f          	j	1c48c <_vfiprintf_r+0x1040>
   1c4e4:	000b8513          	mv	a0,s7
   1c4e8:	e0cfc0ef          	jal	18af4 <strlen>
   1c4ec:	0005031b          	sext.w	t1,a0
   1c4f0:	fff34e13          	not	t3,t1
   1c4f4:	43fe5e13          	sra	t3,t3,0x3f
   1c4f8:	01013803          	ld	a6,16(sp)
   1c4fc:	01813883          	ld	a7,24(sp)
   1c500:	006e7e33          	and	t3,t3,t1
   1c504:	00000493          	li	s1,0
   1c508:	c94ff06f          	j	1b99c <_vfiprintf_r+0x550>
   1c50c:	06714703          	lbu	a4,103(sp)
   1c510:	14070663          	beqz	a4,1c65c <_vfiprintf_r+0x1210>
   1c514:	06710793          	add	a5,sp,103
   1c518:	0ef13823          	sd	a5,240(sp)
   1c51c:	00100793          	li	a5,1
   1c520:	0ef13c23          	sd	a5,248(sp)
   1c524:	00100513          	li	a0,1
   1c528:	00098413          	mv	s0,s3
   1c52c:	a5cff06f          	j	1b788 <_vfiprintf_r+0x33c>
   1c530:	03013783          	ld	a5,48(sp)
   1c534:	04013583          	ld	a1,64(sp)
   1c538:	04613423          	sd	t1,72(sp)
   1c53c:	40fb8bb3          	sub	s7,s7,a5
   1c540:	00078613          	mv	a2,a5
   1c544:	000b8513          	mv	a0,s7
   1c548:	03d13c23          	sd	t4,56(sp)
   1c54c:	03e13423          	sd	t5,40(sp)
   1c550:	03113023          	sd	a7,32(sp)
   1c554:	01013c23          	sd	a6,24(sp)
   1c558:	00d13823          	sd	a3,16(sp)
   1c55c:	e64fc0ef          	jal	18bc0 <strncpy>
   1c560:	01013683          	ld	a3,16(sp)
   1c564:	00a00793          	li	a5,10
   1c568:	02fcd7b3          	divu	a5,s9,a5
   1c56c:	0016c603          	lbu	a2,1(a3)
   1c570:	01813803          	ld	a6,24(sp)
   1c574:	02013883          	ld	a7,32(sp)
   1c578:	00c03633          	snez	a2,a2
   1c57c:	02813f03          	ld	t5,40(sp)
   1c580:	03813e83          	ld	t4,56(sp)
   1c584:	04813303          	ld	t1,72(sp)
   1c588:	00c686b3          	add	a3,a3,a2
   1c58c:	00000593          	li	a1,0
   1c590:	00a00713          	li	a4,10
   1c594:	00900e13          	li	t3,9
   1c598:	0ff00f93          	li	t6,255
   1c59c:	de5ff06f          	j	1c380 <_vfiprintf_r+0xf34>
   1c5a0:	00078813          	mv	a6,a5
   1c5a4:	00000793          	li	a5,0
   1c5a8:	e8078063          	beqz	a5,1bc28 <_vfiprintf_r+0x7dc>
   1c5ac:	a51ff06f          	j	1bffc <_vfiprintf_r+0xbb0>
   1c5b0:	20086813          	or	a6,a6,512
   1c5b4:	001dc783          	lbu	a5,1(s11)
   1c5b8:	0008081b          	sext.w	a6,a6
   1c5bc:	001d8d93          	add	s11,s11,1
   1c5c0:	80cff06f          	j	1b5cc <_vfiprintf_r+0x180>
   1c5c4:	02086813          	or	a6,a6,32
   1c5c8:	001dc783          	lbu	a5,1(s11)
   1c5cc:	0008081b          	sext.w	a6,a6
   1c5d0:	001d8d93          	add	s11,s11,1
   1c5d4:	ff9fe06f          	j	1b5cc <_vfiprintf_r+0x180>
   1c5d8:	00600793          	li	a5,6
   1c5dc:	0004831b          	sext.w	t1,s1
   1c5e0:	0697ea63          	bltu	a5,s1,1c654 <_vfiprintf_r+0x1208>
   1c5e4:	00030e13          	mv	t3,t1
   1c5e8:	00005b97          	auipc	s7,0x5
   1c5ec:	798b8b93          	add	s7,s7,1944 # 21d80 <__clzdi2+0xd0>
   1c5f0:	93cff06f          	j	1b72c <_vfiprintf_r+0x2e0>
   1c5f4:	00000713          	li	a4,0
   1c5f8:	a05ff06f          	j	1bffc <_vfiprintf_r+0xbb0>
   1c5fc:	20087593          	and	a1,a6,512
   1c600:	08058c63          	beqz	a1,1c698 <_vfiprintf_r+0x124c>
   1c604:	0ff77713          	zext.b	a4,a4
   1c608:	e85ff06f          	j	1c48c <_vfiprintf_r+0x1040>
   1c60c:	20037793          	and	a5,t1,512
   1c610:	06078e63          	beqz	a5,1c68c <_vfiprintf_r+0x1240>
   1c614:	0ffcfc93          	zext.b	s9,s9
   1c618:	dd4ff06f          	j	1bbec <_vfiprintf_r+0x7a0>
   1c61c:	2007f613          	and	a2,a5,512
   1c620:	06060063          	beqz	a2,1c680 <_vfiprintf_r+0x1234>
   1c624:	0ff77713          	zext.b	a4,a4
   1c628:	d24ff06f          	j	1bb4c <_vfiprintf_r+0x700>
   1c62c:	20087793          	and	a5,a6,512
   1c630:	04078463          	beqz	a5,1c678 <_vfiprintf_r+0x122c>
   1c634:	018c9c9b          	sllw	s9,s9,0x18
   1c638:	418cdc9b          	sraw	s9,s9,0x18
   1c63c:	000c8793          	mv	a5,s9
   1c640:	ab0ff06f          	j	1b8f0 <_vfiprintf_r+0x4a4>
   1c644:	00100513          	li	a0,1
   1c648:	00000613          	li	a2,0
   1c64c:	00098413          	mv	s0,s3
   1c650:	9c4ff06f          	j	1b814 <_vfiprintf_r+0x3c8>
   1c654:	00600313          	li	t1,6
   1c658:	f8dff06f          	j	1c5e4 <_vfiprintf_r+0x1198>
   1c65c:	00000613          	li	a2,0
   1c660:	00100513          	li	a0,1
   1c664:	00098413          	mv	s0,s3
   1c668:	92cff06f          	j	1b794 <_vfiprintf_r+0x348>
   1c66c:	01a71023          	sh	s10,0(a4)
   1c670:	008c8c93          	add	s9,s9,8
   1c674:	ec1fe06f          	j	1b534 <_vfiprintf_r+0xe8>
   1c678:	000c8793          	mv	a5,s9
   1c67c:	a74ff06f          	j	1b8f0 <_vfiprintf_r+0x4a4>
   1c680:	02071713          	sll	a4,a4,0x20
   1c684:	02075713          	srl	a4,a4,0x20
   1c688:	cc4ff06f          	j	1bb4c <_vfiprintf_r+0x700>
   1c68c:	020c9c93          	sll	s9,s9,0x20
   1c690:	020cdc93          	srl	s9,s9,0x20
   1c694:	d58ff06f          	j	1bbec <_vfiprintf_r+0x7a0>
   1c698:	02071713          	sll	a4,a4,0x20
   1c69c:	02075713          	srl	a4,a4,0x20
   1c6a0:	dedff06f          	j	1c48c <_vfiprintf_r+0x1040>
   1c6a4:	00048e13          	mv	t3,s1
   1c6a8:	00048313          	mv	t1,s1
   1c6ac:	00000493          	li	s1,0
   1c6b0:	aecff06f          	j	1b99c <_vfiprintf_r+0x550>
   1c6b4:	00006e97          	auipc	t4,0x6
   1c6b8:	164e8e93          	add	t4,t4,356 # 22818 <blanks.1>
   1c6bc:	a55ff06f          	j	1c110 <_vfiprintf_r+0xcc4>
   1c6c0:	000e8c93          	mv	s9,t4
   1c6c4:	03000793          	li	a5,48
   1c6c8:	abcff06f          	j	1b984 <_vfiprintf_r+0x538>
   1c6cc:	0016071b          	addw	a4,a2,1
   1c6d0:	00006e97          	auipc	t4,0x6
   1c6d4:	148e8e93          	add	t4,t4,328 # 22818 <blanks.1>
   1c6d8:	b39ff06f          	j	1c210 <_vfiprintf_r+0xdc4>
   1c6dc:	00050593          	mv	a1,a0
   1c6e0:	00006e97          	auipc	t4,0x6
   1c6e4:	128e8e93          	add	t4,t4,296 # 22808 <zeroes.0>
   1c6e8:	f1cff06f          	j	1be04 <_vfiprintf_r+0x9b8>
   1c6ec:	fff00c93          	li	s9,-1
   1c6f0:	fa9fe06f          	j	1b698 <_vfiprintf_r+0x24c>
   1c6f4:	01a72023          	sw	s10,0(a4)
   1c6f8:	008c8c93          	add	s9,s9,8
   1c6fc:	e39fe06f          	j	1b534 <_vfiprintf_r+0xe8>
   1c700:	000ca783          	lw	a5,0(s9)
   1c704:	008c8c93          	add	s9,s9,8
   1c708:	0007849b          	sext.w	s1,a5
   1c70c:	0007d463          	bgez	a5,1c714 <_vfiprintf_r+0x12c8>
   1c710:	fff00493          	li	s1,-1
   1c714:	001dc783          	lbu	a5,1(s11)
   1c718:	00070d93          	mv	s11,a4
   1c71c:	eb1fe06f          	j	1b5cc <_vfiprintf_r+0x180>

000000000001c720 <vfiprintf>:
   1c720:	00060693          	mv	a3,a2
   1c724:	00058613          	mv	a2,a1
   1c728:	00050593          	mv	a1,a0
   1c72c:	7581b503          	ld	a0,1880(gp) # 24d78 <_impure_ptr>
   1c730:	d1dfe06f          	j	1b44c <_vfiprintf_r>

000000000001c734 <__sbprintf>:
   1c734:	01059783          	lh	a5,16(a1)
   1c738:	0125d703          	lhu	a4,18(a1)
   1c73c:	0ac5a303          	lw	t1,172(a1)
   1c740:	ffd7f793          	and	a5,a5,-3
   1c744:	0107979b          	sllw	a5,a5,0x10
   1c748:	0305b883          	ld	a7,48(a1)
   1c74c:	0405b803          	ld	a6,64(a1)
   1c750:	0107171b          	sllw	a4,a4,0x10
   1c754:	0107d79b          	srlw	a5,a5,0x10
   1c758:	b3010113          	add	sp,sp,-1232
   1c75c:	00e7e7b3          	or	a5,a5,a4
   1c760:	4c813023          	sd	s0,1216(sp)
   1c764:	40000713          	li	a4,1024
   1c768:	00f12823          	sw	a5,16(sp)
   1c76c:	00058413          	mv	s0,a1
   1c770:	0b010793          	add	a5,sp,176
   1c774:	00010593          	mv	a1,sp
   1c778:	4a913c23          	sd	s1,1208(sp)
   1c77c:	4b213823          	sd	s2,1200(sp)
   1c780:	4c113423          	sd	ra,1224(sp)
   1c784:	00050913          	mv	s2,a0
   1c788:	0a612623          	sw	t1,172(sp)
   1c78c:	03113823          	sd	a7,48(sp)
   1c790:	05013023          	sd	a6,64(sp)
   1c794:	00f13023          	sd	a5,0(sp)
   1c798:	00f13c23          	sd	a5,24(sp)
   1c79c:	00e12623          	sw	a4,12(sp)
   1c7a0:	02e12023          	sw	a4,32(sp)
   1c7a4:	02012423          	sw	zero,40(sp)
   1c7a8:	ca5fe0ef          	jal	1b44c <_vfiprintf_r>
   1c7ac:	00050493          	mv	s1,a0
   1c7b0:	02055c63          	bgez	a0,1c7e8 <__sbprintf+0xb4>
   1c7b4:	01015783          	lhu	a5,16(sp)
   1c7b8:	0407f793          	and	a5,a5,64
   1c7bc:	00078863          	beqz	a5,1c7cc <__sbprintf+0x98>
   1c7c0:	01045783          	lhu	a5,16(s0)
   1c7c4:	0407e793          	or	a5,a5,64
   1c7c8:	00f41823          	sh	a5,16(s0)
   1c7cc:	4c813083          	ld	ra,1224(sp)
   1c7d0:	4c013403          	ld	s0,1216(sp)
   1c7d4:	4b013903          	ld	s2,1200(sp)
   1c7d8:	00048513          	mv	a0,s1
   1c7dc:	4b813483          	ld	s1,1208(sp)
   1c7e0:	4d010113          	add	sp,sp,1232
   1c7e4:	00008067          	ret
   1c7e8:	00010593          	mv	a1,sp
   1c7ec:	00090513          	mv	a0,s2
   1c7f0:	a39f60ef          	jal	13228 <_fflush_r>
   1c7f4:	fc0500e3          	beqz	a0,1c7b4 <__sbprintf+0x80>
   1c7f8:	fff00493          	li	s1,-1
   1c7fc:	fb9ff06f          	j	1c7b4 <__sbprintf+0x80>

000000000001c800 <_write_r>:
   1c800:	ff010113          	add	sp,sp,-16
   1c804:	00058713          	mv	a4,a1
   1c808:	00813023          	sd	s0,0(sp)
   1c80c:	00060593          	mv	a1,a2
   1c810:	00050413          	mv	s0,a0
   1c814:	00068613          	mv	a2,a3
   1c818:	00070513          	mv	a0,a4
   1c81c:	7801a823          	sw	zero,1936(gp) # 24db0 <errno>
   1c820:	00113423          	sd	ra,8(sp)
   1c824:	5d4030ef          	jal	1fdf8 <_write>
   1c828:	fff00793          	li	a5,-1
   1c82c:	00f50a63          	beq	a0,a5,1c840 <_write_r+0x40>
   1c830:	00813083          	ld	ra,8(sp)
   1c834:	00013403          	ld	s0,0(sp)
   1c838:	01010113          	add	sp,sp,16
   1c83c:	00008067          	ret
   1c840:	7901a783          	lw	a5,1936(gp) # 24db0 <errno>
   1c844:	fe0786e3          	beqz	a5,1c830 <_write_r+0x30>
   1c848:	00813083          	ld	ra,8(sp)
   1c84c:	00f42023          	sw	a5,0(s0)
   1c850:	00013403          	ld	s0,0(sp)
   1c854:	01010113          	add	sp,sp,16
   1c858:	00008067          	ret

000000000001c85c <__register_exitproc>:
   1c85c:	7481b703          	ld	a4,1864(gp) # 24d68 <_global_impure_ptr>
   1c860:	1f873783          	ld	a5,504(a4)
   1c864:	06078063          	beqz	a5,1c8c4 <__register_exitproc+0x68>
   1c868:	0087a703          	lw	a4,8(a5)
   1c86c:	01f00813          	li	a6,31
   1c870:	08e84663          	blt	a6,a4,1c8fc <__register_exitproc+0xa0>
   1c874:	02050863          	beqz	a0,1c8a4 <__register_exitproc+0x48>
   1c878:	00371813          	sll	a6,a4,0x3
   1c87c:	01078833          	add	a6,a5,a6
   1c880:	10c83823          	sd	a2,272(a6)
   1c884:	3107a883          	lw	a7,784(a5)
   1c888:	00100613          	li	a2,1
   1c88c:	00e6163b          	sllw	a2,a2,a4
   1c890:	00c8e8b3          	or	a7,a7,a2
   1c894:	3117a823          	sw	a7,784(a5)
   1c898:	20d83823          	sd	a3,528(a6)
   1c89c:	00200693          	li	a3,2
   1c8a0:	02d50863          	beq	a0,a3,1c8d0 <__register_exitproc+0x74>
   1c8a4:	00270693          	add	a3,a4,2
   1c8a8:	00369693          	sll	a3,a3,0x3
   1c8ac:	0017071b          	addw	a4,a4,1
   1c8b0:	00e7a423          	sw	a4,8(a5)
   1c8b4:	00d787b3          	add	a5,a5,a3
   1c8b8:	00b7b023          	sd	a1,0(a5)
   1c8bc:	00000513          	li	a0,0
   1c8c0:	00008067          	ret
   1c8c4:	20070793          	add	a5,a4,512
   1c8c8:	1ef73c23          	sd	a5,504(a4)
   1c8cc:	f9dff06f          	j	1c868 <__register_exitproc+0xc>
   1c8d0:	3147a683          	lw	a3,788(a5)
   1c8d4:	00000513          	li	a0,0
   1c8d8:	00c6e6b3          	or	a3,a3,a2
   1c8dc:	30d7aa23          	sw	a3,788(a5)
   1c8e0:	00270693          	add	a3,a4,2
   1c8e4:	00369693          	sll	a3,a3,0x3
   1c8e8:	0017071b          	addw	a4,a4,1
   1c8ec:	00e7a423          	sw	a4,8(a5)
   1c8f0:	00d787b3          	add	a5,a5,a3
   1c8f4:	00b7b023          	sd	a1,0(a5)
   1c8f8:	00008067          	ret
   1c8fc:	fff00513          	li	a0,-1
   1c900:	00008067          	ret

000000000001c904 <__assert_func>:
   1c904:	ff010113          	add	sp,sp,-16
   1c908:	00068793          	mv	a5,a3
   1c90c:	7581b703          	ld	a4,1880(gp) # 24d78 <_impure_ptr>
   1c910:	00060813          	mv	a6,a2
   1c914:	00113423          	sd	ra,8(sp)
   1c918:	01873883          	ld	a7,24(a4)
   1c91c:	00078613          	mv	a2,a5
   1c920:	00050693          	mv	a3,a0
   1c924:	00058713          	mv	a4,a1
   1c928:	00006797          	auipc	a5,0x6
   1c92c:	f0078793          	add	a5,a5,-256 # 22828 <blanks.1+0x10>
   1c930:	00080c63          	beqz	a6,1c948 <__assert_func+0x44>
   1c934:	00006597          	auipc	a1,0x6
   1c938:	f0458593          	add	a1,a1,-252 # 22838 <blanks.1+0x20>
   1c93c:	00088513          	mv	a0,a7
   1c940:	2c0000ef          	jal	1cc00 <fiprintf>
   1c944:	4dd020ef          	jal	1f620 <abort>
   1c948:	00005797          	auipc	a5,0x5
   1c94c:	41878793          	add	a5,a5,1048 # 21d60 <__clzdi2+0xb0>
   1c950:	00078813          	mv	a6,a5
   1c954:	fe1ff06f          	j	1c934 <__assert_func+0x30>

000000000001c958 <__assert>:
   1c958:	ff010113          	add	sp,sp,-16
   1c95c:	00060693          	mv	a3,a2
   1c960:	00000613          	li	a2,0
   1c964:	00113423          	sd	ra,8(sp)
   1c968:	f9dff0ef          	jal	1c904 <__assert_func>

000000000001c96c <_calloc_r>:
   1c96c:	02c5b7b3          	mulhu	a5,a1,a2
   1c970:	ff010113          	add	sp,sp,-16
   1c974:	00113423          	sd	ra,8(sp)
   1c978:	00813023          	sd	s0,0(sp)
   1c97c:	02c585b3          	mul	a1,a1,a2
   1c980:	0a079063          	bnez	a5,1ca20 <_calloc_r+0xb4>
   1c984:	a18fa0ef          	jal	16b9c <_malloc_r>
   1c988:	00050413          	mv	s0,a0
   1c98c:	0a050063          	beqz	a0,1ca2c <_calloc_r+0xc0>
   1c990:	ff853603          	ld	a2,-8(a0)
   1c994:	04800713          	li	a4,72
   1c998:	ffc67613          	and	a2,a2,-4
   1c99c:	ff860613          	add	a2,a2,-8
   1c9a0:	04c76863          	bltu	a4,a2,1c9f0 <_calloc_r+0x84>
   1c9a4:	02700693          	li	a3,39
   1c9a8:	00050793          	mv	a5,a0
   1c9ac:	02c6f263          	bgeu	a3,a2,1c9d0 <_calloc_r+0x64>
   1c9b0:	00053023          	sd	zero,0(a0)
   1c9b4:	00053423          	sd	zero,8(a0)
   1c9b8:	03700793          	li	a5,55
   1c9bc:	04c7f863          	bgeu	a5,a2,1ca0c <_calloc_r+0xa0>
   1c9c0:	00053823          	sd	zero,16(a0)
   1c9c4:	00053c23          	sd	zero,24(a0)
   1c9c8:	02050793          	add	a5,a0,32
   1c9cc:	06e60c63          	beq	a2,a4,1ca44 <_calloc_r+0xd8>
   1c9d0:	0007b023          	sd	zero,0(a5)
   1c9d4:	0007b423          	sd	zero,8(a5)
   1c9d8:	0007b823          	sd	zero,16(a5)
   1c9dc:	00813083          	ld	ra,8(sp)
   1c9e0:	00040513          	mv	a0,s0
   1c9e4:	00013403          	ld	s0,0(sp)
   1c9e8:	01010113          	add	sp,sp,16
   1c9ec:	00008067          	ret
   1c9f0:	00000593          	li	a1,0
   1c9f4:	a1df30ef          	jal	10410 <memset>
   1c9f8:	00813083          	ld	ra,8(sp)
   1c9fc:	00040513          	mv	a0,s0
   1ca00:	00013403          	ld	s0,0(sp)
   1ca04:	01010113          	add	sp,sp,16
   1ca08:	00008067          	ret
   1ca0c:	01050793          	add	a5,a0,16
   1ca10:	0007b023          	sd	zero,0(a5)
   1ca14:	0007b423          	sd	zero,8(a5)
   1ca18:	0007b823          	sd	zero,16(a5)
   1ca1c:	fc1ff06f          	j	1c9dc <_calloc_r+0x70>
   1ca20:	084000ef          	jal	1caa4 <__errno>
   1ca24:	00c00793          	li	a5,12
   1ca28:	00f52023          	sw	a5,0(a0)
   1ca2c:	00000413          	li	s0,0
   1ca30:	00813083          	ld	ra,8(sp)
   1ca34:	00040513          	mv	a0,s0
   1ca38:	00013403          	ld	s0,0(sp)
   1ca3c:	01010113          	add	sp,sp,16
   1ca40:	00008067          	ret
   1ca44:	02053023          	sd	zero,32(a0)
   1ca48:	03050793          	add	a5,a0,48
   1ca4c:	02053423          	sd	zero,40(a0)
   1ca50:	f81ff06f          	j	1c9d0 <_calloc_r+0x64>

000000000001ca54 <_close_r>:
   1ca54:	ff010113          	add	sp,sp,-16
   1ca58:	00813023          	sd	s0,0(sp)
   1ca5c:	00050413          	mv	s0,a0
   1ca60:	00058513          	mv	a0,a1
   1ca64:	7801a823          	sw	zero,1936(gp) # 24db0 <errno>
   1ca68:	00113423          	sd	ra,8(sp)
   1ca6c:	144030ef          	jal	1fbb0 <_close>
   1ca70:	fff00793          	li	a5,-1
   1ca74:	00f50a63          	beq	a0,a5,1ca88 <_close_r+0x34>
   1ca78:	00813083          	ld	ra,8(sp)
   1ca7c:	00013403          	ld	s0,0(sp)
   1ca80:	01010113          	add	sp,sp,16
   1ca84:	00008067          	ret
   1ca88:	7901a783          	lw	a5,1936(gp) # 24db0 <errno>
   1ca8c:	fe0786e3          	beqz	a5,1ca78 <_close_r+0x24>
   1ca90:	00813083          	ld	ra,8(sp)
   1ca94:	00f42023          	sw	a5,0(s0)
   1ca98:	00013403          	ld	s0,0(sp)
   1ca9c:	01010113          	add	sp,sp,16
   1caa0:	00008067          	ret

000000000001caa4 <__errno>:
   1caa4:	7581b503          	ld	a0,1880(gp) # 24d78 <_impure_ptr>
   1caa8:	00008067          	ret

000000000001caac <_fclose_r>:
   1caac:	fe010113          	add	sp,sp,-32
   1cab0:	00113c23          	sd	ra,24(sp)
   1cab4:	00813823          	sd	s0,16(sp)
   1cab8:	00913423          	sd	s1,8(sp)
   1cabc:	01213023          	sd	s2,0(sp)
   1cac0:	02058063          	beqz	a1,1cae0 <_fclose_r+0x34>
   1cac4:	00058413          	mv	s0,a1
   1cac8:	00050493          	mv	s1,a0
   1cacc:	00050663          	beqz	a0,1cad8 <_fclose_r+0x2c>
   1cad0:	05052783          	lw	a5,80(a0)
   1cad4:	0a078c63          	beqz	a5,1cb8c <_fclose_r+0xe0>
   1cad8:	01041783          	lh	a5,16(s0)
   1cadc:	02079263          	bnez	a5,1cb00 <_fclose_r+0x54>
   1cae0:	01813083          	ld	ra,24(sp)
   1cae4:	01013403          	ld	s0,16(sp)
   1cae8:	00000913          	li	s2,0
   1caec:	00813483          	ld	s1,8(sp)
   1caf0:	00090513          	mv	a0,s2
   1caf4:	00013903          	ld	s2,0(sp)
   1caf8:	02010113          	add	sp,sp,32
   1cafc:	00008067          	ret
   1cb00:	00040593          	mv	a1,s0
   1cb04:	00048513          	mv	a0,s1
   1cb08:	cd4f60ef          	jal	12fdc <__sflush_r>
   1cb0c:	05043783          	ld	a5,80(s0)
   1cb10:	00050913          	mv	s2,a0
   1cb14:	00078a63          	beqz	a5,1cb28 <_fclose_r+0x7c>
   1cb18:	03043583          	ld	a1,48(s0)
   1cb1c:	00048513          	mv	a0,s1
   1cb20:	000780e7          	jalr	a5
   1cb24:	06054c63          	bltz	a0,1cb9c <_fclose_r+0xf0>
   1cb28:	01045783          	lhu	a5,16(s0)
   1cb2c:	0807f793          	and	a5,a5,128
   1cb30:	06079e63          	bnez	a5,1cbac <_fclose_r+0x100>
   1cb34:	05843583          	ld	a1,88(s0)
   1cb38:	00058c63          	beqz	a1,1cb50 <_fclose_r+0xa4>
   1cb3c:	07440793          	add	a5,s0,116
   1cb40:	00f58663          	beq	a1,a5,1cb4c <_fclose_r+0xa0>
   1cb44:	00048513          	mv	a0,s1
   1cb48:	cd5f60ef          	jal	1381c <_free_r>
   1cb4c:	04043c23          	sd	zero,88(s0)
   1cb50:	07843583          	ld	a1,120(s0)
   1cb54:	00058863          	beqz	a1,1cb64 <_fclose_r+0xb8>
   1cb58:	00048513          	mv	a0,s1
   1cb5c:	cc1f60ef          	jal	1381c <_free_r>
   1cb60:	06043c23          	sd	zero,120(s0)
   1cb64:	af1f60ef          	jal	13654 <__sfp_lock_acquire>
   1cb68:	00041823          	sh	zero,16(s0)
   1cb6c:	aedf60ef          	jal	13658 <__sfp_lock_release>
   1cb70:	01813083          	ld	ra,24(sp)
   1cb74:	01013403          	ld	s0,16(sp)
   1cb78:	00813483          	ld	s1,8(sp)
   1cb7c:	00090513          	mv	a0,s2
   1cb80:	00013903          	ld	s2,0(sp)
   1cb84:	02010113          	add	sp,sp,32
   1cb88:	00008067          	ret
   1cb8c:	ab9f60ef          	jal	13644 <__sinit>
   1cb90:	01041783          	lh	a5,16(s0)
   1cb94:	f40786e3          	beqz	a5,1cae0 <_fclose_r+0x34>
   1cb98:	f69ff06f          	j	1cb00 <_fclose_r+0x54>
   1cb9c:	01045783          	lhu	a5,16(s0)
   1cba0:	fff00913          	li	s2,-1
   1cba4:	0807f793          	and	a5,a5,128
   1cba8:	f80786e3          	beqz	a5,1cb34 <_fclose_r+0x88>
   1cbac:	01843583          	ld	a1,24(s0)
   1cbb0:	00048513          	mv	a0,s1
   1cbb4:	c69f60ef          	jal	1381c <_free_r>
   1cbb8:	f7dff06f          	j	1cb34 <_fclose_r+0x88>

000000000001cbbc <fclose>:
   1cbbc:	00050593          	mv	a1,a0
   1cbc0:	7581b503          	ld	a0,1880(gp) # 24d78 <_impure_ptr>
   1cbc4:	ee9ff06f          	j	1caac <_fclose_r>

000000000001cbc8 <_fiprintf_r>:
   1cbc8:	fb010113          	add	sp,sp,-80
   1cbcc:	02810313          	add	t1,sp,40
   1cbd0:	02d13423          	sd	a3,40(sp)
   1cbd4:	00030693          	mv	a3,t1
   1cbd8:	00113c23          	sd	ra,24(sp)
   1cbdc:	02e13823          	sd	a4,48(sp)
   1cbe0:	02f13c23          	sd	a5,56(sp)
   1cbe4:	05013023          	sd	a6,64(sp)
   1cbe8:	05113423          	sd	a7,72(sp)
   1cbec:	00613423          	sd	t1,8(sp)
   1cbf0:	85dfe0ef          	jal	1b44c <_vfiprintf_r>
   1cbf4:	01813083          	ld	ra,24(sp)
   1cbf8:	05010113          	add	sp,sp,80
   1cbfc:	00008067          	ret

000000000001cc00 <fiprintf>:
   1cc00:	fb010113          	add	sp,sp,-80
   1cc04:	02010313          	add	t1,sp,32
   1cc08:	02c13023          	sd	a2,32(sp)
   1cc0c:	02d13423          	sd	a3,40(sp)
   1cc10:	00058613          	mv	a2,a1
   1cc14:	00030693          	mv	a3,t1
   1cc18:	00050593          	mv	a1,a0
   1cc1c:	7581b503          	ld	a0,1880(gp) # 24d78 <_impure_ptr>
   1cc20:	00113c23          	sd	ra,24(sp)
   1cc24:	02e13823          	sd	a4,48(sp)
   1cc28:	02f13c23          	sd	a5,56(sp)
   1cc2c:	05013023          	sd	a6,64(sp)
   1cc30:	05113423          	sd	a7,72(sp)
   1cc34:	00613423          	sd	t1,8(sp)
   1cc38:	815fe0ef          	jal	1b44c <_vfiprintf_r>
   1cc3c:	01813083          	ld	ra,24(sp)
   1cc40:	05010113          	add	sp,sp,80
   1cc44:	00008067          	ret

000000000001cc48 <__fputwc>:
   1cc48:	fd010113          	add	sp,sp,-48
   1cc4c:	02813023          	sd	s0,32(sp)
   1cc50:	00913c23          	sd	s1,24(sp)
   1cc54:	01213823          	sd	s2,16(sp)
   1cc58:	02113423          	sd	ra,40(sp)
   1cc5c:	00050913          	mv	s2,a0
   1cc60:	00058493          	mv	s1,a1
   1cc64:	00060413          	mv	s0,a2
   1cc68:	748000ef          	jal	1d3b0 <__locale_mb_cur_max>
   1cc6c:	00100793          	li	a5,1
   1cc70:	00f51c63          	bne	a0,a5,1cc88 <__fputwc+0x40>
   1cc74:	fff4879b          	addw	a5,s1,-1
   1cc78:	0fe00713          	li	a4,254
   1cc7c:	00f76663          	bltu	a4,a5,1cc88 <__fputwc+0x40>
   1cc80:	00910423          	sb	s1,8(sp)
   1cc84:	0240006f          	j	1cca8 <__fputwc+0x60>
   1cc88:	0a440693          	add	a3,s0,164
   1cc8c:	00048613          	mv	a2,s1
   1cc90:	00810593          	add	a1,sp,8
   1cc94:	00090513          	mv	a0,s2
   1cc98:	04d020ef          	jal	1f4e4 <_wcrtomb_r>
   1cc9c:	fff00793          	li	a5,-1
   1cca0:	08f50463          	beq	a0,a5,1cd28 <__fputwc+0xe0>
   1cca4:	02050c63          	beqz	a0,1ccdc <__fputwc+0x94>
   1cca8:	00c42783          	lw	a5,12(s0)
   1ccac:	00814583          	lbu	a1,8(sp)
   1ccb0:	fff7871b          	addw	a4,a5,-1
   1ccb4:	00e42623          	sw	a4,12(s0)
   1ccb8:	00075a63          	bgez	a4,1cccc <__fputwc+0x84>
   1ccbc:	02842783          	lw	a5,40(s0)
   1ccc0:	02f74c63          	blt	a4,a5,1ccf8 <__fputwc+0xb0>
   1ccc4:	00a00793          	li	a5,10
   1ccc8:	02f58863          	beq	a1,a5,1ccf8 <__fputwc+0xb0>
   1cccc:	00043783          	ld	a5,0(s0)
   1ccd0:	00178713          	add	a4,a5,1
   1ccd4:	00e43023          	sd	a4,0(s0)
   1ccd8:	00b78023          	sb	a1,0(a5)
   1ccdc:	02813083          	ld	ra,40(sp)
   1cce0:	02013403          	ld	s0,32(sp)
   1cce4:	01013903          	ld	s2,16(sp)
   1cce8:	0004851b          	sext.w	a0,s1
   1ccec:	01813483          	ld	s1,24(sp)
   1ccf0:	03010113          	add	sp,sp,48
   1ccf4:	00008067          	ret
   1ccf8:	00040613          	mv	a2,s0
   1ccfc:	00090513          	mv	a0,s2
   1cd00:	660020ef          	jal	1f360 <__swbuf_r>
   1cd04:	fff00793          	li	a5,-1
   1cd08:	fcf51ae3          	bne	a0,a5,1ccdc <__fputwc+0x94>
   1cd0c:	fff00513          	li	a0,-1
   1cd10:	02813083          	ld	ra,40(sp)
   1cd14:	02013403          	ld	s0,32(sp)
   1cd18:	01813483          	ld	s1,24(sp)
   1cd1c:	01013903          	ld	s2,16(sp)
   1cd20:	03010113          	add	sp,sp,48
   1cd24:	00008067          	ret
   1cd28:	01045783          	lhu	a5,16(s0)
   1cd2c:	fff00513          	li	a0,-1
   1cd30:	0407e793          	or	a5,a5,64
   1cd34:	00f41823          	sh	a5,16(s0)
   1cd38:	fd9ff06f          	j	1cd10 <__fputwc+0xc8>

000000000001cd3c <_fputwc_r>:
   1cd3c:	01061783          	lh	a5,16(a2)
   1cd40:	03279713          	sll	a4,a5,0x32
   1cd44:	02074063          	bltz	a4,1cd64 <_fputwc_r+0x28>
   1cd48:	0ac62703          	lw	a4,172(a2)
   1cd4c:	000026b7          	lui	a3,0x2
   1cd50:	00d7e7b3          	or	a5,a5,a3
   1cd54:	000026b7          	lui	a3,0x2
   1cd58:	00d76733          	or	a4,a4,a3
   1cd5c:	00f61823          	sh	a5,16(a2)
   1cd60:	0ae62623          	sw	a4,172(a2)
   1cd64:	ee5ff06f          	j	1cc48 <__fputwc>

000000000001cd68 <fputwc>:
   1cd68:	fe010113          	add	sp,sp,-32
   1cd6c:	00813823          	sd	s0,16(sp)
   1cd70:	00113c23          	sd	ra,24(sp)
   1cd74:	7581b403          	ld	s0,1880(gp) # 24d78 <_impure_ptr>
   1cd78:	00058613          	mv	a2,a1
   1cd7c:	00050593          	mv	a1,a0
   1cd80:	00040663          	beqz	s0,1cd8c <fputwc+0x24>
   1cd84:	05042783          	lw	a5,80(s0)
   1cd88:	04078063          	beqz	a5,1cdc8 <fputwc+0x60>
   1cd8c:	01061783          	lh	a5,16(a2)
   1cd90:	03279713          	sll	a4,a5,0x32
   1cd94:	02074063          	bltz	a4,1cdb4 <fputwc+0x4c>
   1cd98:	0ac62703          	lw	a4,172(a2)
   1cd9c:	000026b7          	lui	a3,0x2
   1cda0:	00d7e7b3          	or	a5,a5,a3
   1cda4:	000026b7          	lui	a3,0x2
   1cda8:	00d76733          	or	a4,a4,a3
   1cdac:	00f61823          	sh	a5,16(a2)
   1cdb0:	0ae62623          	sw	a4,172(a2)
   1cdb4:	00040513          	mv	a0,s0
   1cdb8:	01013403          	ld	s0,16(sp)
   1cdbc:	01813083          	ld	ra,24(sp)
   1cdc0:	02010113          	add	sp,sp,32
   1cdc4:	e85ff06f          	j	1cc48 <__fputwc>
   1cdc8:	00a13023          	sd	a0,0(sp)
   1cdcc:	00040513          	mv	a0,s0
   1cdd0:	00c13423          	sd	a2,8(sp)
   1cdd4:	871f60ef          	jal	13644 <__sinit>
   1cdd8:	00813603          	ld	a2,8(sp)
   1cddc:	00013583          	ld	a1,0(sp)
   1cde0:	fadff06f          	j	1cd8c <fputwc+0x24>

000000000001cde4 <_fstat_r>:
   1cde4:	ff010113          	add	sp,sp,-16
   1cde8:	00058713          	mv	a4,a1
   1cdec:	00813023          	sd	s0,0(sp)
   1cdf0:	00060593          	mv	a1,a2
   1cdf4:	00050413          	mv	s0,a0
   1cdf8:	00070513          	mv	a0,a4
   1cdfc:	7801a823          	sw	zero,1936(gp) # 24db0 <errno>
   1ce00:	00113423          	sd	ra,8(sp)
   1ce04:	621020ef          	jal	1fc24 <_fstat>
   1ce08:	fff00793          	li	a5,-1
   1ce0c:	00f50a63          	beq	a0,a5,1ce20 <_fstat_r+0x3c>
   1ce10:	00813083          	ld	ra,8(sp)
   1ce14:	00013403          	ld	s0,0(sp)
   1ce18:	01010113          	add	sp,sp,16
   1ce1c:	00008067          	ret
   1ce20:	7901a783          	lw	a5,1936(gp) # 24db0 <errno>
   1ce24:	fe0786e3          	beqz	a5,1ce10 <_fstat_r+0x2c>
   1ce28:	00813083          	ld	ra,8(sp)
   1ce2c:	00f42023          	sw	a5,0(s0)
   1ce30:	00013403          	ld	s0,0(sp)
   1ce34:	01010113          	add	sp,sp,16
   1ce38:	00008067          	ret

000000000001ce3c <__sfvwrite_r>:
   1ce3c:	01063783          	ld	a5,16(a2)
   1ce40:	28078063          	beqz	a5,1d0c0 <__sfvwrite_r+0x284>
   1ce44:	01059703          	lh	a4,16(a1)
   1ce48:	fa010113          	add	sp,sp,-96
   1ce4c:	04813823          	sd	s0,80(sp)
   1ce50:	03413823          	sd	s4,48(sp)
   1ce54:	03613023          	sd	s6,32(sp)
   1ce58:	04113c23          	sd	ra,88(sp)
   1ce5c:	04913423          	sd	s1,72(sp)
   1ce60:	05213023          	sd	s2,64(sp)
   1ce64:	03313c23          	sd	s3,56(sp)
   1ce68:	03513423          	sd	s5,40(sp)
   1ce6c:	01713c23          	sd	s7,24(sp)
   1ce70:	01813823          	sd	s8,16(sp)
   1ce74:	01913423          	sd	s9,8(sp)
   1ce78:	00877793          	and	a5,a4,8
   1ce7c:	00060b13          	mv	s6,a2
   1ce80:	00050a13          	mv	s4,a0
   1ce84:	00058413          	mv	s0,a1
   1ce88:	08078863          	beqz	a5,1cf18 <__sfvwrite_r+0xdc>
   1ce8c:	0185b783          	ld	a5,24(a1)
   1ce90:	08078463          	beqz	a5,1cf18 <__sfvwrite_r+0xdc>
   1ce94:	00277793          	and	a5,a4,2
   1ce98:	000b3483          	ld	s1,0(s6)
   1ce9c:	08078e63          	beqz	a5,1cf38 <__sfvwrite_r+0xfc>
   1cea0:	04043783          	ld	a5,64(s0)
   1cea4:	03043583          	ld	a1,48(s0)
   1cea8:	80000ab7          	lui	s5,0x80000
   1ceac:	00000993          	li	s3,0
   1ceb0:	00000913          	li	s2,0
   1ceb4:	c00aca93          	xor	s5,s5,-1024
   1ceb8:	00098613          	mv	a2,s3
   1cebc:	000a0513          	mv	a0,s4
   1cec0:	04090463          	beqz	s2,1cf08 <__sfvwrite_r+0xcc>
   1cec4:	00090693          	mv	a3,s2
   1cec8:	012af463          	bgeu	s5,s2,1ced0 <__sfvwrite_r+0x94>
   1cecc:	000a8693          	mv	a3,s5
   1ced0:	0006869b          	sext.w	a3,a3
   1ced4:	000780e7          	jalr	a5
   1ced8:	1ca05a63          	blez	a0,1d0ac <__sfvwrite_r+0x270>
   1cedc:	010b3783          	ld	a5,16(s6)
   1cee0:	00a989b3          	add	s3,s3,a0
   1cee4:	40a90933          	sub	s2,s2,a0
   1cee8:	40a787b3          	sub	a5,a5,a0
   1ceec:	00fb3823          	sd	a5,16(s6)
   1cef0:	16078a63          	beqz	a5,1d064 <__sfvwrite_r+0x228>
   1cef4:	04043783          	ld	a5,64(s0)
   1cef8:	03043583          	ld	a1,48(s0)
   1cefc:	00098613          	mv	a2,s3
   1cf00:	000a0513          	mv	a0,s4
   1cf04:	fc0910e3          	bnez	s2,1cec4 <__sfvwrite_r+0x88>
   1cf08:	0004b983          	ld	s3,0(s1)
   1cf0c:	0084b903          	ld	s2,8(s1)
   1cf10:	01048493          	add	s1,s1,16
   1cf14:	fa5ff06f          	j	1ceb8 <__sfvwrite_r+0x7c>
   1cf18:	00040593          	mv	a1,s0
   1cf1c:	000a0513          	mv	a0,s4
   1cf20:	e41f50ef          	jal	12d60 <__swsetup_r>
   1cf24:	18051a63          	bnez	a0,1d0b8 <__sfvwrite_r+0x27c>
   1cf28:	01041703          	lh	a4,16(s0)
   1cf2c:	000b3483          	ld	s1,0(s6)
   1cf30:	00277793          	and	a5,a4,2
   1cf34:	f60796e3          	bnez	a5,1cea0 <__sfvwrite_r+0x64>
   1cf38:	00177793          	and	a5,a4,1
   1cf3c:	08079e63          	bnez	a5,1cfd8 <__sfvwrite_r+0x19c>
   1cf40:	00c42b83          	lw	s7,12(s0)
   1cf44:	00043783          	ld	a5,0(s0)
   1cf48:	80000ab7          	lui	s5,0x80000
   1cf4c:	00000c13          	li	s8,0
   1cf50:	00000913          	li	s2,0
   1cf54:	fffaca93          	not	s5,s5
   1cf58:	00078513          	mv	a0,a5
   1cf5c:	06090663          	beqz	s2,1cfc8 <__sfvwrite_r+0x18c>
   1cf60:	20077693          	and	a3,a4,512
   1cf64:	1c068663          	beqz	a3,1d130 <__sfvwrite_r+0x2f4>
   1cf68:	27797063          	bgeu	s2,s7,1d1c8 <__sfvwrite_r+0x38c>
   1cf6c:	00090c93          	mv	s9,s2
   1cf70:	00090b93          	mv	s7,s2
   1cf74:	000b8613          	mv	a2,s7
   1cf78:	000c0593          	mv	a1,s8
   1cf7c:	728000ef          	jal	1d6a4 <memmove>
   1cf80:	00c42703          	lw	a4,12(s0)
   1cf84:	00043783          	ld	a5,0(s0)
   1cf88:	00090993          	mv	s3,s2
   1cf8c:	4197073b          	subw	a4,a4,s9
   1cf90:	017787b3          	add	a5,a5,s7
   1cf94:	00e42623          	sw	a4,12(s0)
   1cf98:	00f43023          	sd	a5,0(s0)
   1cf9c:	00000913          	li	s2,0
   1cfa0:	010b3783          	ld	a5,16(s6)
   1cfa4:	013c0c33          	add	s8,s8,s3
   1cfa8:	413787b3          	sub	a5,a5,s3
   1cfac:	00fb3823          	sd	a5,16(s6)
   1cfb0:	0a078a63          	beqz	a5,1d064 <__sfvwrite_r+0x228>
   1cfb4:	00043783          	ld	a5,0(s0)
   1cfb8:	01041703          	lh	a4,16(s0)
   1cfbc:	00c42b83          	lw	s7,12(s0)
   1cfc0:	00078513          	mv	a0,a5
   1cfc4:	f8091ee3          	bnez	s2,1cf60 <__sfvwrite_r+0x124>
   1cfc8:	0004bc03          	ld	s8,0(s1)
   1cfcc:	0084b903          	ld	s2,8(s1)
   1cfd0:	01048493          	add	s1,s1,16
   1cfd4:	f85ff06f          	j	1cf58 <__sfvwrite_r+0x11c>
   1cfd8:	00000993          	li	s3,0
   1cfdc:	00000513          	li	a0,0
   1cfe0:	00000c93          	li	s9,0
   1cfe4:	00000c13          	li	s8,0
   1cfe8:	0e0c0063          	beqz	s8,1d0c8 <__sfvwrite_r+0x28c>
   1cfec:	0e050863          	beqz	a0,1d0dc <__sfvwrite_r+0x2a0>
   1cff0:	00098b93          	mv	s7,s3
   1cff4:	013c7463          	bgeu	s8,s3,1cffc <__sfvwrite_r+0x1c0>
   1cff8:	000c0b93          	mv	s7,s8
   1cffc:	00043503          	ld	a0,0(s0)
   1d000:	01843703          	ld	a4,24(s0)
   1d004:	00c42783          	lw	a5,12(s0)
   1d008:	02042683          	lw	a3,32(s0)
   1d00c:	000b8913          	mv	s2,s7
   1d010:	00a77663          	bgeu	a4,a0,1d01c <__sfvwrite_r+0x1e0>
   1d014:	00d78abb          	addw	s5,a5,a3
   1d018:	0f7ac263          	blt	s5,s7,1d0fc <__sfvwrite_r+0x2c0>
   1d01c:	24dbc463          	blt	s7,a3,1d264 <__sfvwrite_r+0x428>
   1d020:	04043783          	ld	a5,64(s0)
   1d024:	03043583          	ld	a1,48(s0)
   1d028:	000c8613          	mv	a2,s9
   1d02c:	000a0513          	mv	a0,s4
   1d030:	000780e7          	jalr	a5
   1d034:	00050913          	mv	s2,a0
   1d038:	06a05a63          	blez	a0,1d0ac <__sfvwrite_r+0x270>
   1d03c:	0005079b          	sext.w	a5,a0
   1d040:	40f989bb          	subw	s3,s3,a5
   1d044:	00100513          	li	a0,1
   1d048:	04098a63          	beqz	s3,1d09c <__sfvwrite_r+0x260>
   1d04c:	010b3783          	ld	a5,16(s6)
   1d050:	012c8cb3          	add	s9,s9,s2
   1d054:	412c0c33          	sub	s8,s8,s2
   1d058:	412787b3          	sub	a5,a5,s2
   1d05c:	00fb3823          	sd	a5,16(s6)
   1d060:	f80794e3          	bnez	a5,1cfe8 <__sfvwrite_r+0x1ac>
   1d064:	00000513          	li	a0,0
   1d068:	05813083          	ld	ra,88(sp)
   1d06c:	05013403          	ld	s0,80(sp)
   1d070:	04813483          	ld	s1,72(sp)
   1d074:	04013903          	ld	s2,64(sp)
   1d078:	03813983          	ld	s3,56(sp)
   1d07c:	03013a03          	ld	s4,48(sp)
   1d080:	02813a83          	ld	s5,40(sp)
   1d084:	02013b03          	ld	s6,32(sp)
   1d088:	01813b83          	ld	s7,24(sp)
   1d08c:	01013c03          	ld	s8,16(sp)
   1d090:	00813c83          	ld	s9,8(sp)
   1d094:	06010113          	add	sp,sp,96
   1d098:	00008067          	ret
   1d09c:	00040593          	mv	a1,s0
   1d0a0:	000a0513          	mv	a0,s4
   1d0a4:	984f60ef          	jal	13228 <_fflush_r>
   1d0a8:	fa0502e3          	beqz	a0,1d04c <__sfvwrite_r+0x210>
   1d0ac:	01041783          	lh	a5,16(s0)
   1d0b0:	0407e793          	or	a5,a5,64
   1d0b4:	00f41823          	sh	a5,16(s0)
   1d0b8:	fff00513          	li	a0,-1
   1d0bc:	fadff06f          	j	1d068 <__sfvwrite_r+0x22c>
   1d0c0:	00000513          	li	a0,0
   1d0c4:	00008067          	ret
   1d0c8:	0084bc03          	ld	s8,8(s1)
   1d0cc:	00048793          	mv	a5,s1
   1d0d0:	01048493          	add	s1,s1,16
   1d0d4:	fe0c0ae3          	beqz	s8,1d0c8 <__sfvwrite_r+0x28c>
   1d0d8:	0007bc83          	ld	s9,0(a5)
   1d0dc:	000c0613          	mv	a2,s8
   1d0e0:	00a00593          	li	a1,10
   1d0e4:	000c8513          	mv	a0,s9
   1d0e8:	a9cfa0ef          	jal	17384 <memchr>
   1d0ec:	1e050063          	beqz	a0,1d2cc <__sfvwrite_r+0x490>
   1d0f0:	00150513          	add	a0,a0,1
   1d0f4:	419509bb          	subw	s3,a0,s9
   1d0f8:	ef9ff06f          	j	1cff0 <__sfvwrite_r+0x1b4>
   1d0fc:	000c8593          	mv	a1,s9
   1d100:	000a8613          	mv	a2,s5
   1d104:	5a0000ef          	jal	1d6a4 <memmove>
   1d108:	00043783          	ld	a5,0(s0)
   1d10c:	00040593          	mv	a1,s0
   1d110:	000a0513          	mv	a0,s4
   1d114:	015787b3          	add	a5,a5,s5
   1d118:	00f43023          	sd	a5,0(s0)
   1d11c:	90cf60ef          	jal	13228 <_fflush_r>
   1d120:	f80516e3          	bnez	a0,1d0ac <__sfvwrite_r+0x270>
   1d124:	000a8793          	mv	a5,s5
   1d128:	000a8913          	mv	s2,s5
   1d12c:	f15ff06f          	j	1d040 <__sfvwrite_r+0x204>
   1d130:	01843703          	ld	a4,24(s0)
   1d134:	04f76263          	bltu	a4,a5,1d178 <__sfvwrite_r+0x33c>
   1d138:	02042703          	lw	a4,32(s0)
   1d13c:	02e96e63          	bltu	s2,a4,1d178 <__sfvwrite_r+0x33c>
   1d140:	00090693          	mv	a3,s2
   1d144:	012af463          	bgeu	s5,s2,1d14c <__sfvwrite_r+0x310>
   1d148:	000a8693          	mv	a3,s5
   1d14c:	02e6e73b          	remw	a4,a3,a4
   1d150:	04043783          	ld	a5,64(s0)
   1d154:	03043583          	ld	a1,48(s0)
   1d158:	000c0613          	mv	a2,s8
   1d15c:	000a0513          	mv	a0,s4
   1d160:	40e686bb          	subw	a3,a3,a4
   1d164:	000780e7          	jalr	a5
   1d168:	00050993          	mv	s3,a0
   1d16c:	f4a050e3          	blez	a0,1d0ac <__sfvwrite_r+0x270>
   1d170:	41390933          	sub	s2,s2,s3
   1d174:	e2dff06f          	j	1cfa0 <__sfvwrite_r+0x164>
   1d178:	000b8993          	mv	s3,s7
   1d17c:	01797463          	bgeu	s2,s7,1d184 <__sfvwrite_r+0x348>
   1d180:	00090993          	mv	s3,s2
   1d184:	00078513          	mv	a0,a5
   1d188:	00098613          	mv	a2,s3
   1d18c:	000c0593          	mv	a1,s8
   1d190:	514000ef          	jal	1d6a4 <memmove>
   1d194:	00c42703          	lw	a4,12(s0)
   1d198:	00043783          	ld	a5,0(s0)
   1d19c:	413706bb          	subw	a3,a4,s3
   1d1a0:	013787b3          	add	a5,a5,s3
   1d1a4:	00d42623          	sw	a3,12(s0)
   1d1a8:	00f43023          	sd	a5,0(s0)
   1d1ac:	fc0692e3          	bnez	a3,1d170 <__sfvwrite_r+0x334>
   1d1b0:	00040593          	mv	a1,s0
   1d1b4:	000a0513          	mv	a0,s4
   1d1b8:	870f60ef          	jal	13228 <_fflush_r>
   1d1bc:	ee0518e3          	bnez	a0,1d0ac <__sfvwrite_r+0x270>
   1d1c0:	41390933          	sub	s2,s2,s3
   1d1c4:	dddff06f          	j	1cfa0 <__sfvwrite_r+0x164>
   1d1c8:	48077693          	and	a3,a4,1152
   1d1cc:	0c068263          	beqz	a3,1d290 <__sfvwrite_r+0x454>
   1d1d0:	02042603          	lw	a2,32(s0)
   1d1d4:	01843583          	ld	a1,24(s0)
   1d1d8:	0016169b          	sllw	a3,a2,0x1
   1d1dc:	00c686bb          	addw	a3,a3,a2
   1d1e0:	40b787b3          	sub	a5,a5,a1
   1d1e4:	01f6d99b          	srlw	s3,a3,0x1f
   1d1e8:	00078b9b          	sext.w	s7,a5
   1d1ec:	00d989bb          	addw	s3,s3,a3
   1d1f0:	001b8693          	add	a3,s7,1
   1d1f4:	4019d99b          	sraw	s3,s3,0x1
   1d1f8:	012686b3          	add	a3,a3,s2
   1d1fc:	00d9f663          	bgeu	s3,a3,1d208 <__sfvwrite_r+0x3cc>
   1d200:	0017879b          	addw	a5,a5,1
   1d204:	012789bb          	addw	s3,a5,s2
   1d208:	40077713          	and	a4,a4,1024
   1d20c:	08070663          	beqz	a4,1d298 <__sfvwrite_r+0x45c>
   1d210:	00098593          	mv	a1,s3
   1d214:	000a0513          	mv	a0,s4
   1d218:	985f90ef          	jal	16b9c <_malloc_r>
   1d21c:	00050c93          	mv	s9,a0
   1d220:	0a050a63          	beqz	a0,1d2d4 <__sfvwrite_r+0x498>
   1d224:	01843583          	ld	a1,24(s0)
   1d228:	000b8613          	mv	a2,s7
   1d22c:	2d4000ef          	jal	1d500 <memcpy>
   1d230:	01045783          	lhu	a5,16(s0)
   1d234:	b7f7f793          	and	a5,a5,-1153
   1d238:	0807e793          	or	a5,a5,128
   1d23c:	00f41823          	sh	a5,16(s0)
   1d240:	017c8533          	add	a0,s9,s7
   1d244:	41798bbb          	subw	s7,s3,s7
   1d248:	01943c23          	sd	s9,24(s0)
   1d24c:	01742623          	sw	s7,12(s0)
   1d250:	00a43023          	sd	a0,0(s0)
   1d254:	03342023          	sw	s3,32(s0)
   1d258:	00090c93          	mv	s9,s2
   1d25c:	00090b93          	mv	s7,s2
   1d260:	d15ff06f          	j	1cf74 <__sfvwrite_r+0x138>
   1d264:	000b8613          	mv	a2,s7
   1d268:	000c8593          	mv	a1,s9
   1d26c:	438000ef          	jal	1d6a4 <memmove>
   1d270:	00c42683          	lw	a3,12(s0)
   1d274:	00043703          	ld	a4,0(s0)
   1d278:	000b879b          	sext.w	a5,s7
   1d27c:	417686bb          	subw	a3,a3,s7
   1d280:	01770733          	add	a4,a4,s7
   1d284:	00d42623          	sw	a3,12(s0)
   1d288:	00e43023          	sd	a4,0(s0)
   1d28c:	db5ff06f          	j	1d040 <__sfvwrite_r+0x204>
   1d290:	000b8c93          	mv	s9,s7
   1d294:	ce1ff06f          	j	1cf74 <__sfvwrite_r+0x138>
   1d298:	00098613          	mv	a2,s3
   1d29c:	000a0513          	mv	a0,s4
   1d2a0:	57c000ef          	jal	1d81c <_realloc_r>
   1d2a4:	00050c93          	mv	s9,a0
   1d2a8:	f8051ce3          	bnez	a0,1d240 <__sfvwrite_r+0x404>
   1d2ac:	01843583          	ld	a1,24(s0)
   1d2b0:	000a0513          	mv	a0,s4
   1d2b4:	d68f60ef          	jal	1381c <_free_r>
   1d2b8:	01041783          	lh	a5,16(s0)
   1d2bc:	00c00713          	li	a4,12
   1d2c0:	00ea2023          	sw	a4,0(s4)
   1d2c4:	f7f7f793          	and	a5,a5,-129
   1d2c8:	de9ff06f          	j	1d0b0 <__sfvwrite_r+0x274>
   1d2cc:	001c099b          	addw	s3,s8,1
   1d2d0:	d21ff06f          	j	1cff0 <__sfvwrite_r+0x1b4>
   1d2d4:	00c00713          	li	a4,12
   1d2d8:	01041783          	lh	a5,16(s0)
   1d2dc:	00ea2023          	sw	a4,0(s4)
   1d2e0:	dd1ff06f          	j	1d0b0 <__sfvwrite_r+0x274>

000000000001d2e4 <_isatty_r>:
   1d2e4:	ff010113          	add	sp,sp,-16
   1d2e8:	00813023          	sd	s0,0(sp)
   1d2ec:	00050413          	mv	s0,a0
   1d2f0:	00058513          	mv	a0,a1
   1d2f4:	7801a823          	sw	zero,1936(gp) # 24db0 <errno>
   1d2f8:	00113423          	sd	ra,8(sp)
   1d2fc:	195020ef          	jal	1fc90 <_isatty>
   1d300:	fff00793          	li	a5,-1
   1d304:	00f50a63          	beq	a0,a5,1d318 <_isatty_r+0x34>
   1d308:	00813083          	ld	ra,8(sp)
   1d30c:	00013403          	ld	s0,0(sp)
   1d310:	01010113          	add	sp,sp,16
   1d314:	00008067          	ret
   1d318:	7901a783          	lw	a5,1936(gp) # 24db0 <errno>
   1d31c:	fe0786e3          	beqz	a5,1d308 <_isatty_r+0x24>
   1d320:	00813083          	ld	ra,8(sp)
   1d324:	00f42023          	sw	a5,0(s0)
   1d328:	00013403          	ld	s0,0(sp)
   1d32c:	01010113          	add	sp,sp,16
   1d330:	00008067          	ret

000000000001d334 <_setlocale_r>:
   1d334:	04060063          	beqz	a2,1d374 <_setlocale_r+0x40>
   1d338:	ff010113          	add	sp,sp,-16
   1d33c:	00005597          	auipc	a1,0x5
   1d340:	53458593          	add	a1,a1,1332 # 22870 <blanks.1+0x58>
   1d344:	00060513          	mv	a0,a2
   1d348:	00813023          	sd	s0,0(sp)
   1d34c:	00113423          	sd	ra,8(sp)
   1d350:	00060413          	mv	s0,a2
   1d354:	3d9000ef          	jal	1df2c <strcmp>
   1d358:	02051463          	bnez	a0,1d380 <_setlocale_r+0x4c>
   1d35c:	00005517          	auipc	a0,0x5
   1d360:	50c50513          	add	a0,a0,1292 # 22868 <blanks.1+0x50>
   1d364:	00813083          	ld	ra,8(sp)
   1d368:	00013403          	ld	s0,0(sp)
   1d36c:	01010113          	add	sp,sp,16
   1d370:	00008067          	ret
   1d374:	00005517          	auipc	a0,0x5
   1d378:	4f450513          	add	a0,a0,1268 # 22868 <blanks.1+0x50>
   1d37c:	00008067          	ret
   1d380:	00005597          	auipc	a1,0x5
   1d384:	4e858593          	add	a1,a1,1256 # 22868 <blanks.1+0x50>
   1d388:	00040513          	mv	a0,s0
   1d38c:	3a1000ef          	jal	1df2c <strcmp>
   1d390:	fc0506e3          	beqz	a0,1d35c <_setlocale_r+0x28>
   1d394:	00005597          	auipc	a1,0x5
   1d398:	9cc58593          	add	a1,a1,-1588 # 21d60 <__clzdi2+0xb0>
   1d39c:	00040513          	mv	a0,s0
   1d3a0:	38d000ef          	jal	1df2c <strcmp>
   1d3a4:	fa050ce3          	beqz	a0,1d35c <_setlocale_r+0x28>
   1d3a8:	00000513          	li	a0,0
   1d3ac:	fb9ff06f          	j	1d364 <_setlocale_r+0x30>

000000000001d3b0 <__locale_mb_cur_max>:
   1d3b0:	6c81c503          	lbu	a0,1736(gp) # 24ce8 <__global_locale+0x160>
   1d3b4:	00008067          	ret

000000000001d3b8 <setlocale>:
   1d3b8:	04058063          	beqz	a1,1d3f8 <setlocale+0x40>
   1d3bc:	ff010113          	add	sp,sp,-16
   1d3c0:	00813023          	sd	s0,0(sp)
   1d3c4:	00058413          	mv	s0,a1
   1d3c8:	00040513          	mv	a0,s0
   1d3cc:	00005597          	auipc	a1,0x5
   1d3d0:	4a458593          	add	a1,a1,1188 # 22870 <blanks.1+0x58>
   1d3d4:	00113423          	sd	ra,8(sp)
   1d3d8:	355000ef          	jal	1df2c <strcmp>
   1d3dc:	02051463          	bnez	a0,1d404 <setlocale+0x4c>
   1d3e0:	00005517          	auipc	a0,0x5
   1d3e4:	48850513          	add	a0,a0,1160 # 22868 <blanks.1+0x50>
   1d3e8:	00813083          	ld	ra,8(sp)
   1d3ec:	00013403          	ld	s0,0(sp)
   1d3f0:	01010113          	add	sp,sp,16
   1d3f4:	00008067          	ret
   1d3f8:	00005517          	auipc	a0,0x5
   1d3fc:	47050513          	add	a0,a0,1136 # 22868 <blanks.1+0x50>
   1d400:	00008067          	ret
   1d404:	00005597          	auipc	a1,0x5
   1d408:	46458593          	add	a1,a1,1124 # 22868 <blanks.1+0x50>
   1d40c:	00040513          	mv	a0,s0
   1d410:	31d000ef          	jal	1df2c <strcmp>
   1d414:	fc0506e3          	beqz	a0,1d3e0 <setlocale+0x28>
   1d418:	00005597          	auipc	a1,0x5
   1d41c:	94858593          	add	a1,a1,-1720 # 21d60 <__clzdi2+0xb0>
   1d420:	00040513          	mv	a0,s0
   1d424:	309000ef          	jal	1df2c <strcmp>
   1d428:	fa050ce3          	beqz	a0,1d3e0 <setlocale+0x28>
   1d42c:	00000513          	li	a0,0
   1d430:	fb9ff06f          	j	1d3e8 <setlocale+0x30>

000000000001d434 <_lseek_r>:
   1d434:	ff010113          	add	sp,sp,-16
   1d438:	00058713          	mv	a4,a1
   1d43c:	00813023          	sd	s0,0(sp)
   1d440:	00060593          	mv	a1,a2
   1d444:	00050413          	mv	s0,a0
   1d448:	00068613          	mv	a2,a3
   1d44c:	00070513          	mv	a0,a4
   1d450:	7801a823          	sw	zero,1936(gp) # 24db0 <errno>
   1d454:	00113423          	sd	ra,8(sp)
   1d458:	09d020ef          	jal	1fcf4 <_lseek>
   1d45c:	fff00793          	li	a5,-1
   1d460:	00f50a63          	beq	a0,a5,1d474 <_lseek_r+0x40>
   1d464:	00813083          	ld	ra,8(sp)
   1d468:	00013403          	ld	s0,0(sp)
   1d46c:	01010113          	add	sp,sp,16
   1d470:	00008067          	ret
   1d474:	7901a783          	lw	a5,1936(gp) # 24db0 <errno>
   1d478:	fe0786e3          	beqz	a5,1d464 <_lseek_r+0x30>
   1d47c:	00813083          	ld	ra,8(sp)
   1d480:	00f42023          	sw	a5,0(s0)
   1d484:	00013403          	ld	s0,0(sp)
   1d488:	01010113          	add	sp,sp,16
   1d48c:	00008067          	ret

000000000001d490 <_mbtowc_r>:
   1d490:	6501b783          	ld	a5,1616(gp) # 24c70 <__global_locale+0xe8>
   1d494:	00078067          	jr	a5

000000000001d498 <__ascii_mbtowc>:
   1d498:	02058063          	beqz	a1,1d4b8 <__ascii_mbtowc+0x20>
   1d49c:	04060263          	beqz	a2,1d4e0 <__ascii_mbtowc+0x48>
   1d4a0:	04068863          	beqz	a3,1d4f0 <__ascii_mbtowc+0x58>
   1d4a4:	00064783          	lbu	a5,0(a2)
   1d4a8:	00f5a023          	sw	a5,0(a1)
   1d4ac:	00064503          	lbu	a0,0(a2)
   1d4b0:	00a03533          	snez	a0,a0
   1d4b4:	00008067          	ret
   1d4b8:	ff010113          	add	sp,sp,-16
   1d4bc:	00c10593          	add	a1,sp,12
   1d4c0:	02060463          	beqz	a2,1d4e8 <__ascii_mbtowc+0x50>
   1d4c4:	02068a63          	beqz	a3,1d4f8 <__ascii_mbtowc+0x60>
   1d4c8:	00064783          	lbu	a5,0(a2)
   1d4cc:	00f5a023          	sw	a5,0(a1)
   1d4d0:	00064503          	lbu	a0,0(a2)
   1d4d4:	00a03533          	snez	a0,a0
   1d4d8:	01010113          	add	sp,sp,16
   1d4dc:	00008067          	ret
   1d4e0:	00000513          	li	a0,0
   1d4e4:	00008067          	ret
   1d4e8:	00000513          	li	a0,0
   1d4ec:	fedff06f          	j	1d4d8 <__ascii_mbtowc+0x40>
   1d4f0:	ffe00513          	li	a0,-2
   1d4f4:	00008067          	ret
   1d4f8:	ffe00513          	li	a0,-2
   1d4fc:	fddff06f          	j	1d4d8 <__ascii_mbtowc+0x40>

000000000001d500 <memcpy>:
   1d500:	00b547b3          	xor	a5,a0,a1
   1d504:	0077f793          	and	a5,a5,7
   1d508:	00c508b3          	add	a7,a0,a2
   1d50c:	06079463          	bnez	a5,1d574 <memcpy+0x74>
   1d510:	00700793          	li	a5,7
   1d514:	06c7f063          	bgeu	a5,a2,1d574 <memcpy+0x74>
   1d518:	00757793          	and	a5,a0,7
   1d51c:	00050713          	mv	a4,a0
   1d520:	06079a63          	bnez	a5,1d594 <memcpy+0x94>
   1d524:	ff88f613          	and	a2,a7,-8
   1d528:	40e606b3          	sub	a3,a2,a4
   1d52c:	04000793          	li	a5,64
   1d530:	08d7ce63          	blt	a5,a3,1d5cc <memcpy+0xcc>
   1d534:	00058693          	mv	a3,a1
   1d538:	00070793          	mv	a5,a4
   1d53c:	02c77863          	bgeu	a4,a2,1d56c <memcpy+0x6c>
   1d540:	0006b803          	ld	a6,0(a3) # 2000 <exit-0xe0e8>
   1d544:	00878793          	add	a5,a5,8
   1d548:	00868693          	add	a3,a3,8
   1d54c:	ff07bc23          	sd	a6,-8(a5)
   1d550:	fec7e8e3          	bltu	a5,a2,1d540 <memcpy+0x40>
   1d554:	fff60793          	add	a5,a2,-1
   1d558:	40e787b3          	sub	a5,a5,a4
   1d55c:	ff87f793          	and	a5,a5,-8
   1d560:	00878793          	add	a5,a5,8
   1d564:	00f70733          	add	a4,a4,a5
   1d568:	00f585b3          	add	a1,a1,a5
   1d56c:	01176863          	bltu	a4,a7,1d57c <memcpy+0x7c>
   1d570:	00008067          	ret
   1d574:	00050713          	mv	a4,a0
   1d578:	05157863          	bgeu	a0,a7,1d5c8 <memcpy+0xc8>
   1d57c:	0005c783          	lbu	a5,0(a1)
   1d580:	00170713          	add	a4,a4,1
   1d584:	00158593          	add	a1,a1,1
   1d588:	fef70fa3          	sb	a5,-1(a4)
   1d58c:	fee898e3          	bne	a7,a4,1d57c <memcpy+0x7c>
   1d590:	00008067          	ret
   1d594:	0005c683          	lbu	a3,0(a1)
   1d598:	00170713          	add	a4,a4,1
   1d59c:	00777793          	and	a5,a4,7
   1d5a0:	fed70fa3          	sb	a3,-1(a4)
   1d5a4:	00158593          	add	a1,a1,1
   1d5a8:	f6078ee3          	beqz	a5,1d524 <memcpy+0x24>
   1d5ac:	0005c683          	lbu	a3,0(a1)
   1d5b0:	00170713          	add	a4,a4,1
   1d5b4:	00777793          	and	a5,a4,7
   1d5b8:	fed70fa3          	sb	a3,-1(a4)
   1d5bc:	00158593          	add	a1,a1,1
   1d5c0:	fc079ae3          	bnez	a5,1d594 <memcpy+0x94>
   1d5c4:	f61ff06f          	j	1d524 <memcpy+0x24>
   1d5c8:	00008067          	ret
   1d5cc:	ff010113          	add	sp,sp,-16
   1d5d0:	00813423          	sd	s0,8(sp)
   1d5d4:	04000413          	li	s0,64
   1d5d8:	0005b383          	ld	t2,0(a1)
   1d5dc:	0085b283          	ld	t0,8(a1)
   1d5e0:	0105bf83          	ld	t6,16(a1)
   1d5e4:	0185bf03          	ld	t5,24(a1)
   1d5e8:	0205be83          	ld	t4,32(a1)
   1d5ec:	0285be03          	ld	t3,40(a1)
   1d5f0:	0305b303          	ld	t1,48(a1)
   1d5f4:	0385b803          	ld	a6,56(a1)
   1d5f8:	0405b683          	ld	a3,64(a1)
   1d5fc:	04870713          	add	a4,a4,72
   1d600:	40e607b3          	sub	a5,a2,a4
   1d604:	fa773c23          	sd	t2,-72(a4)
   1d608:	fc573023          	sd	t0,-64(a4)
   1d60c:	fdf73423          	sd	t6,-56(a4)
   1d610:	fde73823          	sd	t5,-48(a4)
   1d614:	fdd73c23          	sd	t4,-40(a4)
   1d618:	ffc73023          	sd	t3,-32(a4)
   1d61c:	fe673423          	sd	t1,-24(a4)
   1d620:	ff073823          	sd	a6,-16(a4)
   1d624:	fed73c23          	sd	a3,-8(a4)
   1d628:	04858593          	add	a1,a1,72
   1d62c:	faf446e3          	blt	s0,a5,1d5d8 <memcpy+0xd8>
   1d630:	00058693          	mv	a3,a1
   1d634:	00070793          	mv	a5,a4
   1d638:	02c77863          	bgeu	a4,a2,1d668 <memcpy+0x168>
   1d63c:	0006b803          	ld	a6,0(a3)
   1d640:	00878793          	add	a5,a5,8
   1d644:	00868693          	add	a3,a3,8
   1d648:	ff07bc23          	sd	a6,-8(a5)
   1d64c:	fec7e8e3          	bltu	a5,a2,1d63c <memcpy+0x13c>
   1d650:	fff60793          	add	a5,a2,-1
   1d654:	40e787b3          	sub	a5,a5,a4
   1d658:	ff87f793          	and	a5,a5,-8
   1d65c:	00878793          	add	a5,a5,8
   1d660:	00f70733          	add	a4,a4,a5
   1d664:	00f585b3          	add	a1,a1,a5
   1d668:	01176863          	bltu	a4,a7,1d678 <memcpy+0x178>
   1d66c:	00813403          	ld	s0,8(sp)
   1d670:	01010113          	add	sp,sp,16
   1d674:	00008067          	ret
   1d678:	0005c783          	lbu	a5,0(a1)
   1d67c:	00170713          	add	a4,a4,1
   1d680:	00158593          	add	a1,a1,1
   1d684:	fef70fa3          	sb	a5,-1(a4)
   1d688:	fee882e3          	beq	a7,a4,1d66c <memcpy+0x16c>
   1d68c:	0005c783          	lbu	a5,0(a1)
   1d690:	00170713          	add	a4,a4,1
   1d694:	00158593          	add	a1,a1,1
   1d698:	fef70fa3          	sb	a5,-1(a4)
   1d69c:	fce89ee3          	bne	a7,a4,1d678 <memcpy+0x178>
   1d6a0:	fcdff06f          	j	1d66c <memcpy+0x16c>

000000000001d6a4 <memmove>:
   1d6a4:	02a5f663          	bgeu	a1,a0,1d6d0 <memmove+0x2c>
   1d6a8:	00c58733          	add	a4,a1,a2
   1d6ac:	02e57263          	bgeu	a0,a4,1d6d0 <memmove+0x2c>
   1d6b0:	00c507b3          	add	a5,a0,a2
   1d6b4:	04060663          	beqz	a2,1d700 <memmove+0x5c>
   1d6b8:	fff74683          	lbu	a3,-1(a4)
   1d6bc:	fff78793          	add	a5,a5,-1
   1d6c0:	fff70713          	add	a4,a4,-1
   1d6c4:	00d78023          	sb	a3,0(a5)
   1d6c8:	fef518e3          	bne	a0,a5,1d6b8 <memmove+0x14>
   1d6cc:	00008067          	ret
   1d6d0:	01f00793          	li	a5,31
   1d6d4:	02c7e863          	bltu	a5,a2,1d704 <memmove+0x60>
   1d6d8:	00050793          	mv	a5,a0
   1d6dc:	fff60693          	add	a3,a2,-1
   1d6e0:	0c060a63          	beqz	a2,1d7b4 <memmove+0x110>
   1d6e4:	00168693          	add	a3,a3,1
   1d6e8:	00d786b3          	add	a3,a5,a3
   1d6ec:	0005c703          	lbu	a4,0(a1)
   1d6f0:	00178793          	add	a5,a5,1
   1d6f4:	00158593          	add	a1,a1,1
   1d6f8:	fee78fa3          	sb	a4,-1(a5)
   1d6fc:	fed798e3          	bne	a5,a3,1d6ec <memmove+0x48>
   1d700:	00008067          	ret
   1d704:	00b567b3          	or	a5,a0,a1
   1d708:	0077f793          	and	a5,a5,7
   1d70c:	08079e63          	bnez	a5,1d7a8 <memmove+0x104>
   1d710:	fe060893          	add	a7,a2,-32
   1d714:	fe08f893          	and	a7,a7,-32
   1d718:	02088893          	add	a7,a7,32
   1d71c:	011507b3          	add	a5,a0,a7
   1d720:	00058693          	mv	a3,a1
   1d724:	00050713          	mv	a4,a0
   1d728:	0006b803          	ld	a6,0(a3)
   1d72c:	02068693          	add	a3,a3,32
   1d730:	02070713          	add	a4,a4,32
   1d734:	ff073023          	sd	a6,-32(a4)
   1d738:	fe86b803          	ld	a6,-24(a3)
   1d73c:	ff073423          	sd	a6,-24(a4)
   1d740:	ff06b803          	ld	a6,-16(a3)
   1d744:	ff073823          	sd	a6,-16(a4)
   1d748:	ff86b803          	ld	a6,-8(a3)
   1d74c:	ff073c23          	sd	a6,-8(a4)
   1d750:	fcf71ce3          	bne	a4,a5,1d728 <memmove+0x84>
   1d754:	01867713          	and	a4,a2,24
   1d758:	011585b3          	add	a1,a1,a7
   1d75c:	01f67813          	and	a6,a2,31
   1d760:	04070c63          	beqz	a4,1d7b8 <memmove+0x114>
   1d764:	00058693          	mv	a3,a1
   1d768:	00078713          	mv	a4,a5
   1d76c:	01078eb3          	add	t4,a5,a6
   1d770:	00700e13          	li	t3,7
   1d774:	0006b303          	ld	t1,0(a3)
   1d778:	00870713          	add	a4,a4,8
   1d77c:	40ee88b3          	sub	a7,t4,a4
   1d780:	fe673c23          	sd	t1,-8(a4)
   1d784:	00868693          	add	a3,a3,8
   1d788:	ff1e66e3          	bltu	t3,a7,1d774 <memmove+0xd0>
   1d78c:	ff880713          	add	a4,a6,-8
   1d790:	ff877713          	and	a4,a4,-8
   1d794:	00870713          	add	a4,a4,8
   1d798:	00767613          	and	a2,a2,7
   1d79c:	00e787b3          	add	a5,a5,a4
   1d7a0:	00e585b3          	add	a1,a1,a4
   1d7a4:	f39ff06f          	j	1d6dc <memmove+0x38>
   1d7a8:	fff60693          	add	a3,a2,-1
   1d7ac:	00050793          	mv	a5,a0
   1d7b0:	f35ff06f          	j	1d6e4 <memmove+0x40>
   1d7b4:	00008067          	ret
   1d7b8:	00080613          	mv	a2,a6
   1d7bc:	f21ff06f          	j	1d6dc <memmove+0x38>

000000000001d7c0 <_read_r>:
   1d7c0:	ff010113          	add	sp,sp,-16
   1d7c4:	00058713          	mv	a4,a1
   1d7c8:	00813023          	sd	s0,0(sp)
   1d7cc:	00060593          	mv	a1,a2
   1d7d0:	00050413          	mv	s0,a0
   1d7d4:	00068613          	mv	a2,a3
   1d7d8:	00070513          	mv	a0,a4
   1d7dc:	7801a823          	sw	zero,1936(gp) # 24db0 <errno>
   1d7e0:	00113423          	sd	ra,8(sp)
   1d7e4:	554020ef          	jal	1fd38 <_read>
   1d7e8:	fff00793          	li	a5,-1
   1d7ec:	00f50a63          	beq	a0,a5,1d800 <_read_r+0x40>
   1d7f0:	00813083          	ld	ra,8(sp)
   1d7f4:	00013403          	ld	s0,0(sp)
   1d7f8:	01010113          	add	sp,sp,16
   1d7fc:	00008067          	ret
   1d800:	7901a783          	lw	a5,1936(gp) # 24db0 <errno>
   1d804:	fe0786e3          	beqz	a5,1d7f0 <_read_r+0x30>
   1d808:	00813083          	ld	ra,8(sp)
   1d80c:	00f42023          	sw	a5,0(s0)
   1d810:	00013403          	ld	s0,0(sp)
   1d814:	01010113          	add	sp,sp,16
   1d818:	00008067          	ret

000000000001d81c <_realloc_r>:
   1d81c:	fb010113          	add	sp,sp,-80
   1d820:	03213823          	sd	s2,48(sp)
   1d824:	04113423          	sd	ra,72(sp)
   1d828:	04813023          	sd	s0,64(sp)
   1d82c:	02913c23          	sd	s1,56(sp)
   1d830:	03313423          	sd	s3,40(sp)
   1d834:	03413023          	sd	s4,32(sp)
   1d838:	01513c23          	sd	s5,24(sp)
   1d83c:	01613823          	sd	s6,16(sp)
   1d840:	01713423          	sd	s7,8(sp)
   1d844:	01813023          	sd	s8,0(sp)
   1d848:	00060913          	mv	s2,a2
   1d84c:	1c058663          	beqz	a1,1da18 <_realloc_r+0x1fc>
   1d850:	00058413          	mv	s0,a1
   1d854:	00050993          	mv	s3,a0
   1d858:	bf9f90ef          	jal	17450 <__malloc_lock>
   1d85c:	ff843783          	ld	a5,-8(s0)
   1d860:	01790493          	add	s1,s2,23
   1d864:	02e00713          	li	a4,46
   1d868:	ff040a93          	add	s5,s0,-16
   1d86c:	ffc7fa13          	and	s4,a5,-4
   1d870:	0e977a63          	bgeu	a4,s1,1d964 <_realloc_r+0x148>
   1d874:	80000737          	lui	a4,0x80000
   1d878:	ff04f493          	and	s1,s1,-16
   1d87c:	fff74713          	not	a4,a4
   1d880:	0e976663          	bltu	a4,s1,1d96c <_realloc_r+0x150>
   1d884:	0f24e463          	bltu	s1,s2,1d96c <_realloc_r+0x150>
   1d888:	109a5463          	bge	s4,s1,1d990 <_realloc_r+0x174>
   1d88c:	00007c17          	auipc	s8,0x7
   1d890:	aecc0c13          	add	s8,s8,-1300 # 24378 <__malloc_av_>
   1d894:	010c3603          	ld	a2,16(s8)
   1d898:	014a86b3          	add	a3,s5,s4
   1d89c:	0086b703          	ld	a4,8(a3)
   1d8a0:	1cd60e63          	beq	a2,a3,1da7c <_realloc_r+0x260>
   1d8a4:	ffe77613          	and	a2,a4,-2
   1d8a8:	00c68633          	add	a2,a3,a2
   1d8ac:	00863603          	ld	a2,8(a2)
   1d8b0:	00167613          	and	a2,a2,1
   1d8b4:	14061463          	bnez	a2,1d9fc <_realloc_r+0x1e0>
   1d8b8:	ffc77713          	and	a4,a4,-4
   1d8bc:	00ea0633          	add	a2,s4,a4
   1d8c0:	0a965e63          	bge	a2,s1,1d97c <_realloc_r+0x160>
   1d8c4:	0017f793          	and	a5,a5,1
   1d8c8:	02079463          	bnez	a5,1d8f0 <_realloc_r+0xd4>
   1d8cc:	ff043b83          	ld	s7,-16(s0)
   1d8d0:	417a8bb3          	sub	s7,s5,s7
   1d8d4:	008bb783          	ld	a5,8(s7)
   1d8d8:	ffc7f793          	and	a5,a5,-4
   1d8dc:	00f70733          	add	a4,a4,a5
   1d8e0:	01470b33          	add	s6,a4,s4
   1d8e4:	329b5463          	bge	s6,s1,1dc0c <_realloc_r+0x3f0>
   1d8e8:	00fa0b33          	add	s6,s4,a5
   1d8ec:	289b5663          	bge	s6,s1,1db78 <_realloc_r+0x35c>
   1d8f0:	00090593          	mv	a1,s2
   1d8f4:	00098513          	mv	a0,s3
   1d8f8:	aa4f90ef          	jal	16b9c <_malloc_r>
   1d8fc:	00050913          	mv	s2,a0
   1d900:	40050263          	beqz	a0,1dd04 <_realloc_r+0x4e8>
   1d904:	ff843783          	ld	a5,-8(s0)
   1d908:	ff050713          	add	a4,a0,-16
   1d90c:	ffe7f793          	and	a5,a5,-2
   1d910:	00fa87b3          	add	a5,s5,a5
   1d914:	24e78a63          	beq	a5,a4,1db68 <_realloc_r+0x34c>
   1d918:	ff8a0613          	add	a2,s4,-8
   1d91c:	04800793          	li	a5,72
   1d920:	2ec7e063          	bltu	a5,a2,1dc00 <_realloc_r+0x3e4>
   1d924:	02700713          	li	a4,39
   1d928:	20c76e63          	bltu	a4,a2,1db44 <_realloc_r+0x328>
   1d92c:	00050793          	mv	a5,a0
   1d930:	00040713          	mv	a4,s0
   1d934:	00073683          	ld	a3,0(a4) # ffffffff80000000 <__BSS_END__+0xffffffff7ffdb1e0>
   1d938:	00d7b023          	sd	a3,0(a5)
   1d93c:	00873683          	ld	a3,8(a4)
   1d940:	00d7b423          	sd	a3,8(a5)
   1d944:	01073703          	ld	a4,16(a4)
   1d948:	00e7b823          	sd	a4,16(a5)
   1d94c:	00098513          	mv	a0,s3
   1d950:	00040593          	mv	a1,s0
   1d954:	ec9f50ef          	jal	1381c <_free_r>
   1d958:	00098513          	mv	a0,s3
   1d95c:	af9f90ef          	jal	17454 <__malloc_unlock>
   1d960:	0680006f          	j	1d9c8 <_realloc_r+0x1ac>
   1d964:	02000493          	li	s1,32
   1d968:	f324f0e3          	bgeu	s1,s2,1d888 <_realloc_r+0x6c>
   1d96c:	00c00793          	li	a5,12
   1d970:	00f9a023          	sw	a5,0(s3)
   1d974:	00000913          	li	s2,0
   1d978:	0500006f          	j	1d9c8 <_realloc_r+0x1ac>
   1d97c:	0186b783          	ld	a5,24(a3)
   1d980:	0106b703          	ld	a4,16(a3)
   1d984:	00060a13          	mv	s4,a2
   1d988:	00f73c23          	sd	a5,24(a4)
   1d98c:	00e7b823          	sd	a4,16(a5)
   1d990:	008ab783          	ld	a5,8(s5) # ffffffff80000008 <__BSS_END__+0xffffffff7ffdb1e8>
   1d994:	409a06b3          	sub	a3,s4,s1
   1d998:	01f00613          	li	a2,31
   1d99c:	0017f793          	and	a5,a5,1
   1d9a0:	014a8733          	add	a4,s5,s4
   1d9a4:	0ad66463          	bltu	a2,a3,1da4c <_realloc_r+0x230>
   1d9a8:	0147e7b3          	or	a5,a5,s4
   1d9ac:	00fab423          	sd	a5,8(s5)
   1d9b0:	00873783          	ld	a5,8(a4)
   1d9b4:	0017e793          	or	a5,a5,1
   1d9b8:	00f73423          	sd	a5,8(a4)
   1d9bc:	00098513          	mv	a0,s3
   1d9c0:	a95f90ef          	jal	17454 <__malloc_unlock>
   1d9c4:	00040913          	mv	s2,s0
   1d9c8:	04813083          	ld	ra,72(sp)
   1d9cc:	04013403          	ld	s0,64(sp)
   1d9d0:	03813483          	ld	s1,56(sp)
   1d9d4:	02813983          	ld	s3,40(sp)
   1d9d8:	02013a03          	ld	s4,32(sp)
   1d9dc:	01813a83          	ld	s5,24(sp)
   1d9e0:	01013b03          	ld	s6,16(sp)
   1d9e4:	00813b83          	ld	s7,8(sp)
   1d9e8:	00013c03          	ld	s8,0(sp)
   1d9ec:	00090513          	mv	a0,s2
   1d9f0:	03013903          	ld	s2,48(sp)
   1d9f4:	05010113          	add	sp,sp,80
   1d9f8:	00008067          	ret
   1d9fc:	0017f793          	and	a5,a5,1
   1da00:	ee0798e3          	bnez	a5,1d8f0 <_realloc_r+0xd4>
   1da04:	ff043b83          	ld	s7,-16(s0)
   1da08:	417a8bb3          	sub	s7,s5,s7
   1da0c:	008bb783          	ld	a5,8(s7)
   1da10:	ffc7f793          	and	a5,a5,-4
   1da14:	ed5ff06f          	j	1d8e8 <_realloc_r+0xcc>
   1da18:	04013403          	ld	s0,64(sp)
   1da1c:	04813083          	ld	ra,72(sp)
   1da20:	03813483          	ld	s1,56(sp)
   1da24:	03013903          	ld	s2,48(sp)
   1da28:	02813983          	ld	s3,40(sp)
   1da2c:	02013a03          	ld	s4,32(sp)
   1da30:	01813a83          	ld	s5,24(sp)
   1da34:	01013b03          	ld	s6,16(sp)
   1da38:	00813b83          	ld	s7,8(sp)
   1da3c:	00013c03          	ld	s8,0(sp)
   1da40:	00060593          	mv	a1,a2
   1da44:	05010113          	add	sp,sp,80
   1da48:	954f906f          	j	16b9c <_malloc_r>
   1da4c:	0097e7b3          	or	a5,a5,s1
   1da50:	00fab423          	sd	a5,8(s5)
   1da54:	009a85b3          	add	a1,s5,s1
   1da58:	0016e693          	or	a3,a3,1
   1da5c:	00d5b423          	sd	a3,8(a1)
   1da60:	00873783          	ld	a5,8(a4)
   1da64:	01058593          	add	a1,a1,16
   1da68:	00098513          	mv	a0,s3
   1da6c:	0017e793          	or	a5,a5,1
   1da70:	00f73423          	sd	a5,8(a4)
   1da74:	da9f50ef          	jal	1381c <_free_r>
   1da78:	f45ff06f          	j	1d9bc <_realloc_r+0x1a0>
   1da7c:	ffc77713          	and	a4,a4,-4
   1da80:	014706b3          	add	a3,a4,s4
   1da84:	02048613          	add	a2,s1,32
   1da88:	22c6de63          	bge	a3,a2,1dcc4 <_realloc_r+0x4a8>
   1da8c:	0017f793          	and	a5,a5,1
   1da90:	e60790e3          	bnez	a5,1d8f0 <_realloc_r+0xd4>
   1da94:	ff043b83          	ld	s7,-16(s0)
   1da98:	417a8bb3          	sub	s7,s5,s7
   1da9c:	008bb783          	ld	a5,8(s7)
   1daa0:	ffc7f793          	and	a5,a5,-4
   1daa4:	00f70733          	add	a4,a4,a5
   1daa8:	01470b33          	add	s6,a4,s4
   1daac:	e2cb4ee3          	blt	s6,a2,1d8e8 <_realloc_r+0xcc>
   1dab0:	018bb783          	ld	a5,24(s7)
   1dab4:	010bb703          	ld	a4,16(s7)
   1dab8:	ff8a0613          	add	a2,s4,-8
   1dabc:	04800693          	li	a3,72
   1dac0:	00f73c23          	sd	a5,24(a4)
   1dac4:	00e7b823          	sd	a4,16(a5)
   1dac8:	010b8913          	add	s2,s7,16
   1dacc:	26c6e263          	bltu	a3,a2,1dd30 <_realloc_r+0x514>
   1dad0:	02700713          	li	a4,39
   1dad4:	00090793          	mv	a5,s2
   1dad8:	02c77263          	bgeu	a4,a2,1dafc <_realloc_r+0x2e0>
   1dadc:	00043703          	ld	a4,0(s0)
   1dae0:	03700793          	li	a5,55
   1dae4:	00ebb823          	sd	a4,16(s7)
   1dae8:	00843703          	ld	a4,8(s0)
   1daec:	00ebbc23          	sd	a4,24(s7)
   1daf0:	24c7e863          	bltu	a5,a2,1dd40 <_realloc_r+0x524>
   1daf4:	01040413          	add	s0,s0,16
   1daf8:	020b8793          	add	a5,s7,32
   1dafc:	00043703          	ld	a4,0(s0)
   1db00:	00e7b023          	sd	a4,0(a5)
   1db04:	00843703          	ld	a4,8(s0)
   1db08:	00e7b423          	sd	a4,8(a5)
   1db0c:	01043703          	ld	a4,16(s0)
   1db10:	00e7b823          	sd	a4,16(a5)
   1db14:	009b8733          	add	a4,s7,s1
   1db18:	409b07b3          	sub	a5,s6,s1
   1db1c:	00ec3823          	sd	a4,16(s8)
   1db20:	0017e793          	or	a5,a5,1
   1db24:	00f73423          	sd	a5,8(a4)
   1db28:	008bb783          	ld	a5,8(s7)
   1db2c:	00098513          	mv	a0,s3
   1db30:	0017f793          	and	a5,a5,1
   1db34:	0097e7b3          	or	a5,a5,s1
   1db38:	00fbb423          	sd	a5,8(s7)
   1db3c:	919f90ef          	jal	17454 <__malloc_unlock>
   1db40:	e89ff06f          	j	1d9c8 <_realloc_r+0x1ac>
   1db44:	00043683          	ld	a3,0(s0)
   1db48:	03700713          	li	a4,55
   1db4c:	00d53023          	sd	a3,0(a0)
   1db50:	00843683          	ld	a3,8(s0)
   1db54:	00d53423          	sd	a3,8(a0)
   1db58:	14c76663          	bltu	a4,a2,1dca4 <_realloc_r+0x488>
   1db5c:	01040713          	add	a4,s0,16
   1db60:	01050793          	add	a5,a0,16
   1db64:	dd1ff06f          	j	1d934 <_realloc_r+0x118>
   1db68:	ff853783          	ld	a5,-8(a0)
   1db6c:	ffc7f793          	and	a5,a5,-4
   1db70:	00fa0a33          	add	s4,s4,a5
   1db74:	e1dff06f          	j	1d990 <_realloc_r+0x174>
   1db78:	018bb783          	ld	a5,24(s7)
   1db7c:	010bb703          	ld	a4,16(s7)
   1db80:	ff8a0613          	add	a2,s4,-8
   1db84:	04800693          	li	a3,72
   1db88:	00f73c23          	sd	a5,24(a4)
   1db8c:	00e7b823          	sd	a4,16(a5)
   1db90:	010b8913          	add	s2,s7,16
   1db94:	10c6e063          	bltu	a3,a2,1dc94 <_realloc_r+0x478>
   1db98:	02700713          	li	a4,39
   1db9c:	00090793          	mv	a5,s2
   1dba0:	02c77c63          	bgeu	a4,a2,1dbd8 <_realloc_r+0x3bc>
   1dba4:	00043703          	ld	a4,0(s0)
   1dba8:	03700793          	li	a5,55
   1dbac:	00ebb823          	sd	a4,16(s7)
   1dbb0:	00843703          	ld	a4,8(s0)
   1dbb4:	00ebbc23          	sd	a4,24(s7)
   1dbb8:	14c7f063          	bgeu	a5,a2,1dcf8 <_realloc_r+0x4dc>
   1dbbc:	01043783          	ld	a5,16(s0)
   1dbc0:	02fbb023          	sd	a5,32(s7)
   1dbc4:	01843783          	ld	a5,24(s0)
   1dbc8:	02fbb423          	sd	a5,40(s7)
   1dbcc:	0ad60663          	beq	a2,a3,1dc78 <_realloc_r+0x45c>
   1dbd0:	02040413          	add	s0,s0,32
   1dbd4:	030b8793          	add	a5,s7,48
   1dbd8:	00043703          	ld	a4,0(s0)
   1dbdc:	00e7b023          	sd	a4,0(a5)
   1dbe0:	00843703          	ld	a4,8(s0)
   1dbe4:	00e7b423          	sd	a4,8(a5)
   1dbe8:	01043703          	ld	a4,16(s0)
   1dbec:	00e7b823          	sd	a4,16(a5)
   1dbf0:	00090413          	mv	s0,s2
   1dbf4:	000b0a13          	mv	s4,s6
   1dbf8:	000b8a93          	mv	s5,s7
   1dbfc:	d95ff06f          	j	1d990 <_realloc_r+0x174>
   1dc00:	00040593          	mv	a1,s0
   1dc04:	aa1ff0ef          	jal	1d6a4 <memmove>
   1dc08:	d45ff06f          	j	1d94c <_realloc_r+0x130>
   1dc0c:	0186b783          	ld	a5,24(a3)
   1dc10:	0106b703          	ld	a4,16(a3)
   1dc14:	ff8a0613          	add	a2,s4,-8
   1dc18:	04800693          	li	a3,72
   1dc1c:	00f73c23          	sd	a5,24(a4)
   1dc20:	00e7b823          	sd	a4,16(a5)
   1dc24:	010bb703          	ld	a4,16(s7)
   1dc28:	018bb783          	ld	a5,24(s7)
   1dc2c:	010b8913          	add	s2,s7,16
   1dc30:	00f73c23          	sd	a5,24(a4)
   1dc34:	00e7b823          	sd	a4,16(a5)
   1dc38:	04c6ee63          	bltu	a3,a2,1dc94 <_realloc_r+0x478>
   1dc3c:	02700713          	li	a4,39
   1dc40:	00090793          	mv	a5,s2
   1dc44:	f8c77ae3          	bgeu	a4,a2,1dbd8 <_realloc_r+0x3bc>
   1dc48:	00043703          	ld	a4,0(s0)
   1dc4c:	03700793          	li	a5,55
   1dc50:	00ebb823          	sd	a4,16(s7)
   1dc54:	00843703          	ld	a4,8(s0)
   1dc58:	00ebbc23          	sd	a4,24(s7)
   1dc5c:	08c7fe63          	bgeu	a5,a2,1dcf8 <_realloc_r+0x4dc>
   1dc60:	01043703          	ld	a4,16(s0)
   1dc64:	04800793          	li	a5,72
   1dc68:	02ebb023          	sd	a4,32(s7)
   1dc6c:	01843703          	ld	a4,24(s0)
   1dc70:	02ebb423          	sd	a4,40(s7)
   1dc74:	f4f61ee3          	bne	a2,a5,1dbd0 <_realloc_r+0x3b4>
   1dc78:	02043703          	ld	a4,32(s0)
   1dc7c:	040b8793          	add	a5,s7,64
   1dc80:	03040413          	add	s0,s0,48
   1dc84:	02ebb823          	sd	a4,48(s7)
   1dc88:	ff843703          	ld	a4,-8(s0)
   1dc8c:	02ebbc23          	sd	a4,56(s7)
   1dc90:	f49ff06f          	j	1dbd8 <_realloc_r+0x3bc>
   1dc94:	00040593          	mv	a1,s0
   1dc98:	00090513          	mv	a0,s2
   1dc9c:	a09ff0ef          	jal	1d6a4 <memmove>
   1dca0:	f51ff06f          	j	1dbf0 <_realloc_r+0x3d4>
   1dca4:	01043703          	ld	a4,16(s0)
   1dca8:	00e53823          	sd	a4,16(a0)
   1dcac:	01843703          	ld	a4,24(s0)
   1dcb0:	00e53c23          	sd	a4,24(a0)
   1dcb4:	06f60063          	beq	a2,a5,1dd14 <_realloc_r+0x4f8>
   1dcb8:	02040713          	add	a4,s0,32
   1dcbc:	02050793          	add	a5,a0,32
   1dcc0:	c75ff06f          	j	1d934 <_realloc_r+0x118>
   1dcc4:	009a8ab3          	add	s5,s5,s1
   1dcc8:	409687b3          	sub	a5,a3,s1
   1dccc:	015c3823          	sd	s5,16(s8)
   1dcd0:	0017e793          	or	a5,a5,1
   1dcd4:	00fab423          	sd	a5,8(s5)
   1dcd8:	ff843783          	ld	a5,-8(s0)
   1dcdc:	00098513          	mv	a0,s3
   1dce0:	00040913          	mv	s2,s0
   1dce4:	0017f793          	and	a5,a5,1
   1dce8:	0097e7b3          	or	a5,a5,s1
   1dcec:	fef43c23          	sd	a5,-8(s0)
   1dcf0:	f64f90ef          	jal	17454 <__malloc_unlock>
   1dcf4:	cd5ff06f          	j	1d9c8 <_realloc_r+0x1ac>
   1dcf8:	01040413          	add	s0,s0,16
   1dcfc:	020b8793          	add	a5,s7,32
   1dd00:	ed9ff06f          	j	1dbd8 <_realloc_r+0x3bc>
   1dd04:	00098513          	mv	a0,s3
   1dd08:	f4cf90ef          	jal	17454 <__malloc_unlock>
   1dd0c:	00000913          	li	s2,0
   1dd10:	cb9ff06f          	j	1d9c8 <_realloc_r+0x1ac>
   1dd14:	02043683          	ld	a3,32(s0)
   1dd18:	03040713          	add	a4,s0,48
   1dd1c:	03050793          	add	a5,a0,48
   1dd20:	02d53023          	sd	a3,32(a0)
   1dd24:	02843683          	ld	a3,40(s0)
   1dd28:	02d53423          	sd	a3,40(a0)
   1dd2c:	c09ff06f          	j	1d934 <_realloc_r+0x118>
   1dd30:	00040593          	mv	a1,s0
   1dd34:	00090513          	mv	a0,s2
   1dd38:	96dff0ef          	jal	1d6a4 <memmove>
   1dd3c:	dd9ff06f          	j	1db14 <_realloc_r+0x2f8>
   1dd40:	01043783          	ld	a5,16(s0)
   1dd44:	02fbb023          	sd	a5,32(s7)
   1dd48:	01843783          	ld	a5,24(s0)
   1dd4c:	02fbb423          	sd	a5,40(s7)
   1dd50:	00d60863          	beq	a2,a3,1dd60 <_realloc_r+0x544>
   1dd54:	02040413          	add	s0,s0,32
   1dd58:	030b8793          	add	a5,s7,48
   1dd5c:	da1ff06f          	j	1dafc <_realloc_r+0x2e0>
   1dd60:	02043703          	ld	a4,32(s0)
   1dd64:	040b8793          	add	a5,s7,64
   1dd68:	03040413          	add	s0,s0,48
   1dd6c:	02ebb823          	sd	a4,48(s7)
   1dd70:	ff843703          	ld	a4,-8(s0)
   1dd74:	02ebbc23          	sd	a4,56(s7)
   1dd78:	d85ff06f          	j	1dafc <_realloc_r+0x2e0>

000000000001dd7c <cleanup_glue>:
   1dd7c:	fd010113          	add	sp,sp,-48
   1dd80:	01213823          	sd	s2,16(sp)
   1dd84:	0005b903          	ld	s2,0(a1)
   1dd88:	02813023          	sd	s0,32(sp)
   1dd8c:	00913c23          	sd	s1,24(sp)
   1dd90:	02113423          	sd	ra,40(sp)
   1dd94:	01313423          	sd	s3,8(sp)
   1dd98:	01413023          	sd	s4,0(sp)
   1dd9c:	00058413          	mv	s0,a1
   1dda0:	00050493          	mv	s1,a0
   1dda4:	04090263          	beqz	s2,1dde8 <cleanup_glue+0x6c>
   1dda8:	00093983          	ld	s3,0(s2)
   1ddac:	02098863          	beqz	s3,1dddc <cleanup_glue+0x60>
   1ddb0:	0009ba03          	ld	s4,0(s3)
   1ddb4:	000a0e63          	beqz	s4,1ddd0 <cleanup_glue+0x54>
   1ddb8:	000a3583          	ld	a1,0(s4)
   1ddbc:	00058463          	beqz	a1,1ddc4 <cleanup_glue+0x48>
   1ddc0:	fbdff0ef          	jal	1dd7c <cleanup_glue>
   1ddc4:	000a0593          	mv	a1,s4
   1ddc8:	00048513          	mv	a0,s1
   1ddcc:	a51f50ef          	jal	1381c <_free_r>
   1ddd0:	00098593          	mv	a1,s3
   1ddd4:	00048513          	mv	a0,s1
   1ddd8:	a45f50ef          	jal	1381c <_free_r>
   1dddc:	00090593          	mv	a1,s2
   1dde0:	00048513          	mv	a0,s1
   1dde4:	a39f50ef          	jal	1381c <_free_r>
   1dde8:	00040593          	mv	a1,s0
   1ddec:	02013403          	ld	s0,32(sp)
   1ddf0:	02813083          	ld	ra,40(sp)
   1ddf4:	01013903          	ld	s2,16(sp)
   1ddf8:	00813983          	ld	s3,8(sp)
   1ddfc:	00013a03          	ld	s4,0(sp)
   1de00:	00048513          	mv	a0,s1
   1de04:	01813483          	ld	s1,24(sp)
   1de08:	03010113          	add	sp,sp,48
   1de0c:	a11f506f          	j	1381c <_free_r>

000000000001de10 <_reclaim_reent>:
   1de10:	7581b783          	ld	a5,1880(gp) # 24d78 <_impure_ptr>
   1de14:	10a78a63          	beq	a5,a0,1df28 <_reclaim_reent+0x118>
   1de18:	07853583          	ld	a1,120(a0)
   1de1c:	fd010113          	add	sp,sp,-48
   1de20:	00913c23          	sd	s1,24(sp)
   1de24:	02113423          	sd	ra,40(sp)
   1de28:	02813023          	sd	s0,32(sp)
   1de2c:	01213823          	sd	s2,16(sp)
   1de30:	01313423          	sd	s3,8(sp)
   1de34:	00050493          	mv	s1,a0
   1de38:	04058063          	beqz	a1,1de78 <_reclaim_reent+0x68>
   1de3c:	00000913          	li	s2,0
   1de40:	20000993          	li	s3,512
   1de44:	012587b3          	add	a5,a1,s2
   1de48:	0007b403          	ld	s0,0(a5)
   1de4c:	00040e63          	beqz	s0,1de68 <_reclaim_reent+0x58>
   1de50:	00040593          	mv	a1,s0
   1de54:	00043403          	ld	s0,0(s0)
   1de58:	00048513          	mv	a0,s1
   1de5c:	9c1f50ef          	jal	1381c <_free_r>
   1de60:	fe0418e3          	bnez	s0,1de50 <_reclaim_reent+0x40>
   1de64:	0784b583          	ld	a1,120(s1)
   1de68:	00890913          	add	s2,s2,8
   1de6c:	fd391ce3          	bne	s2,s3,1de44 <_reclaim_reent+0x34>
   1de70:	00048513          	mv	a0,s1
   1de74:	9a9f50ef          	jal	1381c <_free_r>
   1de78:	0604b583          	ld	a1,96(s1)
   1de7c:	00058663          	beqz	a1,1de88 <_reclaim_reent+0x78>
   1de80:	00048513          	mv	a0,s1
   1de84:	999f50ef          	jal	1381c <_free_r>
   1de88:	1f84b403          	ld	s0,504(s1)
   1de8c:	02040063          	beqz	s0,1deac <_reclaim_reent+0x9c>
   1de90:	20048913          	add	s2,s1,512
   1de94:	01240c63          	beq	s0,s2,1deac <_reclaim_reent+0x9c>
   1de98:	00040593          	mv	a1,s0
   1de9c:	00043403          	ld	s0,0(s0)
   1dea0:	00048513          	mv	a0,s1
   1dea4:	979f50ef          	jal	1381c <_free_r>
   1dea8:	fe8918e3          	bne	s2,s0,1de98 <_reclaim_reent+0x88>
   1deac:	0884b583          	ld	a1,136(s1)
   1deb0:	00058663          	beqz	a1,1debc <_reclaim_reent+0xac>
   1deb4:	00048513          	mv	a0,s1
   1deb8:	965f50ef          	jal	1381c <_free_r>
   1debc:	0504a783          	lw	a5,80(s1)
   1dec0:	04078663          	beqz	a5,1df0c <_reclaim_reent+0xfc>
   1dec4:	0584b783          	ld	a5,88(s1)
   1dec8:	00048513          	mv	a0,s1
   1decc:	000780e7          	jalr	a5
   1ded0:	5204b403          	ld	s0,1312(s1)
   1ded4:	02040c63          	beqz	s0,1df0c <_reclaim_reent+0xfc>
   1ded8:	00043583          	ld	a1,0(s0)
   1dedc:	00058663          	beqz	a1,1dee8 <_reclaim_reent+0xd8>
   1dee0:	00048513          	mv	a0,s1
   1dee4:	e99ff0ef          	jal	1dd7c <cleanup_glue>
   1dee8:	00040593          	mv	a1,s0
   1deec:	02013403          	ld	s0,32(sp)
   1def0:	02813083          	ld	ra,40(sp)
   1def4:	01013903          	ld	s2,16(sp)
   1def8:	00813983          	ld	s3,8(sp)
   1defc:	00048513          	mv	a0,s1
   1df00:	01813483          	ld	s1,24(sp)
   1df04:	03010113          	add	sp,sp,48
   1df08:	915f506f          	j	1381c <_free_r>
   1df0c:	02813083          	ld	ra,40(sp)
   1df10:	02013403          	ld	s0,32(sp)
   1df14:	01813483          	ld	s1,24(sp)
   1df18:	01013903          	ld	s2,16(sp)
   1df1c:	00813983          	ld	s3,8(sp)
   1df20:	03010113          	add	sp,sp,48
   1df24:	00008067          	ret
   1df28:	00008067          	ret

000000000001df2c <strcmp>:
   1df2c:	00b56733          	or	a4,a0,a1
   1df30:	fff00393          	li	t2,-1
   1df34:	00777713          	and	a4,a4,7
   1df38:	0c071c63          	bnez	a4,1e010 <strcmp+0xe4>
   1df3c:	00007797          	auipc	a5,0x7
   1df40:	e1c7b783          	ld	a5,-484(a5) # 24d58 <mask>
   1df44:	00053603          	ld	a2,0(a0)
   1df48:	0005b683          	ld	a3,0(a1)
   1df4c:	00f672b3          	and	t0,a2,a5
   1df50:	00f66333          	or	t1,a2,a5
   1df54:	00f282b3          	add	t0,t0,a5
   1df58:	0062e2b3          	or	t0,t0,t1
   1df5c:	0c729e63          	bne	t0,t2,1e038 <strcmp+0x10c>
   1df60:	04d61663          	bne	a2,a3,1dfac <strcmp+0x80>
   1df64:	00853603          	ld	a2,8(a0)
   1df68:	0085b683          	ld	a3,8(a1)
   1df6c:	00f672b3          	and	t0,a2,a5
   1df70:	00f66333          	or	t1,a2,a5
   1df74:	00f282b3          	add	t0,t0,a5
   1df78:	0062e2b3          	or	t0,t0,t1
   1df7c:	0a729a63          	bne	t0,t2,1e030 <strcmp+0x104>
   1df80:	02d61663          	bne	a2,a3,1dfac <strcmp+0x80>
   1df84:	01053603          	ld	a2,16(a0)
   1df88:	0105b683          	ld	a3,16(a1)
   1df8c:	00f672b3          	and	t0,a2,a5
   1df90:	00f66333          	or	t1,a2,a5
   1df94:	00f282b3          	add	t0,t0,a5
   1df98:	0062e2b3          	or	t0,t0,t1
   1df9c:	0a729463          	bne	t0,t2,1e044 <strcmp+0x118>
   1dfa0:	01850513          	add	a0,a0,24
   1dfa4:	01858593          	add	a1,a1,24
   1dfa8:	f8d60ee3          	beq	a2,a3,1df44 <strcmp+0x18>
   1dfac:	03061713          	sll	a4,a2,0x30
   1dfb0:	03069793          	sll	a5,a3,0x30
   1dfb4:	02f71a63          	bne	a4,a5,1dfe8 <strcmp+0xbc>
   1dfb8:	02061713          	sll	a4,a2,0x20
   1dfbc:	02069793          	sll	a5,a3,0x20
   1dfc0:	02f71463          	bne	a4,a5,1dfe8 <strcmp+0xbc>
   1dfc4:	01061713          	sll	a4,a2,0x10
   1dfc8:	01069793          	sll	a5,a3,0x10
   1dfcc:	00f71e63          	bne	a4,a5,1dfe8 <strcmp+0xbc>
   1dfd0:	03065713          	srl	a4,a2,0x30
   1dfd4:	0306d793          	srl	a5,a3,0x30
   1dfd8:	40f70533          	sub	a0,a4,a5
   1dfdc:	0ff57593          	zext.b	a1,a0
   1dfe0:	02059063          	bnez	a1,1e000 <strcmp+0xd4>
   1dfe4:	00008067          	ret
   1dfe8:	03075713          	srl	a4,a4,0x30
   1dfec:	0307d793          	srl	a5,a5,0x30
   1dff0:	40f70533          	sub	a0,a4,a5
   1dff4:	0ff57593          	zext.b	a1,a0
   1dff8:	00059463          	bnez	a1,1e000 <strcmp+0xd4>
   1dffc:	00008067          	ret
   1e000:	0ff77713          	zext.b	a4,a4
   1e004:	0ff7f793          	zext.b	a5,a5
   1e008:	40f70533          	sub	a0,a4,a5
   1e00c:	00008067          	ret
   1e010:	00054603          	lbu	a2,0(a0)
   1e014:	0005c683          	lbu	a3,0(a1)
   1e018:	00150513          	add	a0,a0,1
   1e01c:	00158593          	add	a1,a1,1
   1e020:	00d61463          	bne	a2,a3,1e028 <strcmp+0xfc>
   1e024:	fe0616e3          	bnez	a2,1e010 <strcmp+0xe4>
   1e028:	40d60533          	sub	a0,a2,a3
   1e02c:	00008067          	ret
   1e030:	00850513          	add	a0,a0,8
   1e034:	00858593          	add	a1,a1,8
   1e038:	fcd61ce3          	bne	a2,a3,1e010 <strcmp+0xe4>
   1e03c:	00000513          	li	a0,0
   1e040:	00008067          	ret
   1e044:	01050513          	add	a0,a0,16
   1e048:	01058593          	add	a1,a1,16
   1e04c:	fcd612e3          	bne	a2,a3,1e010 <strcmp+0xe4>
   1e050:	00000513          	li	a0,0
   1e054:	00008067          	ret

000000000001e058 <__ssprint_r>:
   1e058:	01063783          	ld	a5,16(a2)
   1e05c:	fb010113          	add	sp,sp,-80
   1e060:	03313423          	sd	s3,40(sp)
   1e064:	01513c23          	sd	s5,24(sp)
   1e068:	04113423          	sd	ra,72(sp)
   1e06c:	04813023          	sd	s0,64(sp)
   1e070:	02913c23          	sd	s1,56(sp)
   1e074:	03213823          	sd	s2,48(sp)
   1e078:	03413023          	sd	s4,32(sp)
   1e07c:	01613823          	sd	s6,16(sp)
   1e080:	01713423          	sd	s7,8(sp)
   1e084:	01813023          	sd	s8,0(sp)
   1e088:	00063983          	ld	s3,0(a2)
   1e08c:	00060a93          	mv	s5,a2
   1e090:	18078463          	beqz	a5,1e218 <__ssprint_r+0x1c0>
   1e094:	00c5a703          	lw	a4,12(a1)
   1e098:	0005b783          	ld	a5,0(a1)
   1e09c:	00050b13          	mv	s6,a0
   1e0a0:	00058493          	mv	s1,a1
   1e0a4:	00000a13          	li	s4,0
   1e0a8:	00000413          	li	s0,0
   1e0ac:	00070913          	mv	s2,a4
   1e0b0:	00078513          	mv	a0,a5
   1e0b4:	06040263          	beqz	s0,1e118 <__ssprint_r+0xc0>
   1e0b8:	06e47863          	bgeu	s0,a4,1e128 <__ssprint_r+0xd0>
   1e0bc:	0004071b          	sext.w	a4,s0
   1e0c0:	00070913          	mv	s2,a4
   1e0c4:	00070b93          	mv	s7,a4
   1e0c8:	00078513          	mv	a0,a5
   1e0cc:	000a0593          	mv	a1,s4
   1e0d0:	00090613          	mv	a2,s2
   1e0d4:	dd0ff0ef          	jal	1d6a4 <memmove>
   1e0d8:	00c4a683          	lw	a3,12(s1)
   1e0dc:	0004b783          	ld	a5,0(s1)
   1e0e0:	010ab703          	ld	a4,16(s5)
   1e0e4:	412686bb          	subw	a3,a3,s2
   1e0e8:	012787b3          	add	a5,a5,s2
   1e0ec:	00d4a623          	sw	a3,12(s1)
   1e0f0:	00f4b023          	sd	a5,0(s1)
   1e0f4:	41770733          	sub	a4,a4,s7
   1e0f8:	00eab823          	sd	a4,16(s5)
   1e0fc:	017a0a33          	add	s4,s4,s7
   1e100:	41740433          	sub	s0,s0,s7
   1e104:	10070a63          	beqz	a4,1e218 <__ssprint_r+0x1c0>
   1e108:	00c4a703          	lw	a4,12(s1)
   1e10c:	00078513          	mv	a0,a5
   1e110:	00070913          	mv	s2,a4
   1e114:	fa0412e3          	bnez	s0,1e0b8 <__ssprint_r+0x60>
   1e118:	0009ba03          	ld	s4,0(s3)
   1e11c:	0089b403          	ld	s0,8(s3)
   1e120:	01098993          	add	s3,s3,16
   1e124:	f89ff06f          	j	1e0ac <__ssprint_r+0x54>
   1e128:	01049703          	lh	a4,16(s1)
   1e12c:	00040b9b          	sext.w	s7,s0
   1e130:	48077693          	and	a3,a4,1152
   1e134:	f8068ce3          	beqz	a3,1e0cc <__ssprint_r+0x74>
   1e138:	0204a603          	lw	a2,32(s1)
   1e13c:	0184b583          	ld	a1,24(s1)
   1e140:	0016169b          	sllw	a3,a2,0x1
   1e144:	00c686bb          	addw	a3,a3,a2
   1e148:	40b787b3          	sub	a5,a5,a1
   1e14c:	01f6d91b          	srlw	s2,a3,0x1f
   1e150:	00078b9b          	sext.w	s7,a5
   1e154:	00d9093b          	addw	s2,s2,a3
   1e158:	001b8693          	add	a3,s7,1
   1e15c:	4019591b          	sraw	s2,s2,0x1
   1e160:	008686b3          	add	a3,a3,s0
   1e164:	00d97663          	bgeu	s2,a3,1e170 <__ssprint_r+0x118>
   1e168:	0017879b          	addw	a5,a5,1
   1e16c:	0087893b          	addw	s2,a5,s0
   1e170:	40077713          	and	a4,a4,1024
   1e174:	06070263          	beqz	a4,1e1d8 <__ssprint_r+0x180>
   1e178:	00090593          	mv	a1,s2
   1e17c:	000b0513          	mv	a0,s6
   1e180:	a1df80ef          	jal	16b9c <_malloc_r>
   1e184:	00050c13          	mv	s8,a0
   1e188:	06050863          	beqz	a0,1e1f8 <__ssprint_r+0x1a0>
   1e18c:	0184b583          	ld	a1,24(s1)
   1e190:	000b8613          	mv	a2,s7
   1e194:	b6cff0ef          	jal	1d500 <memcpy>
   1e198:	0104d783          	lhu	a5,16(s1)
   1e19c:	b7f7f793          	and	a5,a5,-1153
   1e1a0:	0807e793          	or	a5,a5,128
   1e1a4:	00f49823          	sh	a5,16(s1)
   1e1a8:	017c0533          	add	a0,s8,s7
   1e1ac:	41790bbb          	subw	s7,s2,s7
   1e1b0:	0004071b          	sext.w	a4,s0
   1e1b4:	0324a023          	sw	s2,32(s1)
   1e1b8:	0174a623          	sw	s7,12(s1)
   1e1bc:	0184bc23          	sd	s8,24(s1)
   1e1c0:	00a4b023          	sd	a0,0(s1)
   1e1c4:	00070913          	mv	s2,a4
   1e1c8:	00070b93          	mv	s7,a4
   1e1cc:	00050793          	mv	a5,a0
   1e1d0:	eee47ee3          	bgeu	s0,a4,1e0cc <__ssprint_r+0x74>
   1e1d4:	eedff06f          	j	1e0c0 <__ssprint_r+0x68>
   1e1d8:	00090613          	mv	a2,s2
   1e1dc:	000b0513          	mv	a0,s6
   1e1e0:	e3cff0ef          	jal	1d81c <_realloc_r>
   1e1e4:	00050c13          	mv	s8,a0
   1e1e8:	fc0510e3          	bnez	a0,1e1a8 <__ssprint_r+0x150>
   1e1ec:	0184b583          	ld	a1,24(s1)
   1e1f0:	000b0513          	mv	a0,s6
   1e1f4:	e28f50ef          	jal	1381c <_free_r>
   1e1f8:	0104d783          	lhu	a5,16(s1)
   1e1fc:	00c00713          	li	a4,12
   1e200:	00eb2023          	sw	a4,0(s6)
   1e204:	0407e793          	or	a5,a5,64
   1e208:	00f49823          	sh	a5,16(s1)
   1e20c:	000ab823          	sd	zero,16(s5)
   1e210:	fff00513          	li	a0,-1
   1e214:	0080006f          	j	1e21c <__ssprint_r+0x1c4>
   1e218:	00000513          	li	a0,0
   1e21c:	04813083          	ld	ra,72(sp)
   1e220:	04013403          	ld	s0,64(sp)
   1e224:	000aa423          	sw	zero,8(s5)
   1e228:	03813483          	ld	s1,56(sp)
   1e22c:	03013903          	ld	s2,48(sp)
   1e230:	02813983          	ld	s3,40(sp)
   1e234:	02013a03          	ld	s4,32(sp)
   1e238:	01813a83          	ld	s5,24(sp)
   1e23c:	01013b03          	ld	s6,16(sp)
   1e240:	00813b83          	ld	s7,8(sp)
   1e244:	00013c03          	ld	s8,0(sp)
   1e248:	05010113          	add	sp,sp,80
   1e24c:	00008067          	ret

000000000001e250 <_svfiprintf_r>:
   1e250:	0105d703          	lhu	a4,16(a1)
   1e254:	e2010113          	add	sp,sp,-480
   1e258:	1b413823          	sd	s4,432(sp)
   1e25c:	1b613023          	sd	s6,416(sp)
   1e260:	19813823          	sd	s8,400(sp)
   1e264:	17b13c23          	sd	s11,376(sp)
   1e268:	1c113c23          	sd	ra,472(sp)
   1e26c:	1c813823          	sd	s0,464(sp)
   1e270:	1c913423          	sd	s1,456(sp)
   1e274:	1d213023          	sd	s2,448(sp)
   1e278:	1b313c23          	sd	s3,440(sp)
   1e27c:	1b513423          	sd	s5,424(sp)
   1e280:	19713c23          	sd	s7,408(sp)
   1e284:	19913423          	sd	s9,392(sp)
   1e288:	19a13023          	sd	s10,384(sp)
   1e28c:	08077713          	and	a4,a4,128
   1e290:	00058a13          	mv	s4,a1
   1e294:	00050b13          	mv	s6,a0
   1e298:	00060d93          	mv	s11,a2
   1e29c:	00068c13          	mv	s8,a3
   1e2a0:	00070663          	beqz	a4,1e2ac <_svfiprintf_r+0x5c>
   1e2a4:	0185b703          	ld	a4,24(a1)
   1e2a8:	6c0702e3          	beqz	a4,1f16c <_svfiprintf_r+0xf1c>
   1e2ac:	0f010a93          	add	s5,sp,240
   1e2b0:	07513823          	sd	s5,112(sp)
   1e2b4:	08013023          	sd	zero,128(sp)
   1e2b8:	06012c23          	sw	zero,120(sp)
   1e2bc:	00000493          	li	s1,0
   1e2c0:	000a8413          	mv	s0,s5
   1e2c4:	00013423          	sd	zero,8(sp)
   1e2c8:	02013c23          	sd	zero,56(sp)
   1e2cc:	02013823          	sd	zero,48(sp)
   1e2d0:	04013023          	sd	zero,64(sp)
   1e2d4:	00000d13          	li	s10,0
   1e2d8:	00004c97          	auipc	s9,0x4
   1e2dc:	5a4c8c93          	add	s9,s9,1444 # 2287c <blanks.1+0x64>
   1e2e0:	01000993          	li	s3,16
   1e2e4:	00004b97          	auipc	s7,0x4
   1e2e8:	704b8b93          	add	s7,s7,1796 # 229e8 <zeroes.0>
   1e2ec:	000c0e93          	mv	t4,s8
   1e2f0:	000dc783          	lbu	a5,0(s11)
   1e2f4:	1e078263          	beqz	a5,1e4d8 <_svfiprintf_r+0x288>
   1e2f8:	000d8913          	mv	s2,s11
   1e2fc:	02500713          	li	a4,37
   1e300:	2ae78263          	beq	a5,a4,1e5a4 <_svfiprintf_r+0x354>
   1e304:	00194783          	lbu	a5,1(s2)
   1e308:	00190913          	add	s2,s2,1
   1e30c:	fe079ae3          	bnez	a5,1e300 <_svfiprintf_r+0xb0>
   1e310:	41b90c3b          	subw	s8,s2,s11
   1e314:	1c0c0263          	beqz	s8,1e4d8 <_svfiprintf_r+0x288>
   1e318:	07812783          	lw	a5,120(sp)
   1e31c:	018484b3          	add	s1,s1,s8
   1e320:	01b43023          	sd	s11,0(s0)
   1e324:	0017871b          	addw	a4,a5,1
   1e328:	01843423          	sd	s8,8(s0)
   1e32c:	08913023          	sd	s1,128(sp)
   1e330:	06e12c23          	sw	a4,120(sp)
   1e334:	00700793          	li	a5,7
   1e338:	01040413          	add	s0,s0,16
   1e33c:	26e7cc63          	blt	a5,a4,1e5b4 <_svfiprintf_r+0x364>
   1e340:	00094783          	lbu	a5,0(s2)
   1e344:	018d0d3b          	addw	s10,s10,s8
   1e348:	18078863          	beqz	a5,1e4d8 <_svfiprintf_r+0x288>
   1e34c:	00194683          	lbu	a3,1(s2)
   1e350:	00190d93          	add	s11,s2,1
   1e354:	060103a3          	sb	zero,103(sp)
   1e358:	fff00913          	li	s2,-1
   1e35c:	00000713          	li	a4,0
   1e360:	00000793          	li	a5,0
   1e364:	05a00c13          	li	s8,90
   1e368:	001d8d93          	add	s11,s11,1
   1e36c:	0006869b          	sext.w	a3,a3
   1e370:	fe06861b          	addw	a2,a3,-32
   1e374:	0006059b          	sext.w	a1,a2
   1e378:	04bc6c63          	bltu	s8,a1,1e3d0 <_svfiprintf_r+0x180>
   1e37c:	02061593          	sll	a1,a2,0x20
   1e380:	01e5d613          	srl	a2,a1,0x1e
   1e384:	01960633          	add	a2,a2,s9
   1e388:	00062603          	lw	a2,0(a2)
   1e38c:	01960633          	add	a2,a2,s9
   1e390:	00060067          	jr	a2
   1e394:	00000713          	li	a4,0
   1e398:	00900513          	li	a0,9
   1e39c:	000dc583          	lbu	a1,0(s11)
   1e3a0:	0027161b          	sllw	a2,a4,0x2
   1e3a4:	00e6073b          	addw	a4,a2,a4
   1e3a8:	fd06869b          	addw	a3,a3,-48
   1e3ac:	0017171b          	sllw	a4,a4,0x1
   1e3b0:	fd05861b          	addw	a2,a1,-48
   1e3b4:	00e6873b          	addw	a4,a3,a4
   1e3b8:	001d8d93          	add	s11,s11,1
   1e3bc:	0005869b          	sext.w	a3,a1
   1e3c0:	fcc57ee3          	bgeu	a0,a2,1e39c <_svfiprintf_r+0x14c>
   1e3c4:	fe06861b          	addw	a2,a3,-32
   1e3c8:	0006059b          	sext.w	a1,a2
   1e3cc:	fabc78e3          	bgeu	s8,a1,1e37c <_svfiprintf_r+0x12c>
   1e3d0:	10068463          	beqz	a3,1e4d8 <_svfiprintf_r+0x288>
   1e3d4:	08d10423          	sb	a3,136(sp)
   1e3d8:	060103a3          	sb	zero,103(sp)
   1e3dc:	00100893          	li	a7,1
   1e3e0:	00100813          	li	a6,1
   1e3e4:	08810c13          	add	s8,sp,136
   1e3e8:	00000913          	li	s2,0
   1e3ec:	0027ff93          	and	t6,a5,2
   1e3f0:	000f8463          	beqz	t6,1e3f8 <_svfiprintf_r+0x1a8>
   1e3f4:	0028889b          	addw	a7,a7,2
   1e3f8:	0847ff13          	and	t5,a5,132
   1e3fc:	07812603          	lw	a2,120(sp)
   1e400:	000f1663          	bnez	t5,1e40c <_svfiprintf_r+0x1bc>
   1e404:	411706bb          	subw	a3,a4,a7
   1e408:	0ed04ee3          	bgtz	a3,1ed04 <_svfiprintf_r+0xab4>
   1e40c:	06714683          	lbu	a3,103(sp)
   1e410:	02068863          	beqz	a3,1e440 <_svfiprintf_r+0x1f0>
   1e414:	06710593          	add	a1,sp,103
   1e418:	00b43023          	sd	a1,0(s0)
   1e41c:	0016061b          	addw	a2,a2,1
   1e420:	00148493          	add	s1,s1,1
   1e424:	00100593          	li	a1,1
   1e428:	00b43423          	sd	a1,8(s0)
   1e42c:	08913023          	sd	s1,128(sp)
   1e430:	06c12c23          	sw	a2,120(sp)
   1e434:	00700693          	li	a3,7
   1e438:	01040413          	add	s0,s0,16
   1e43c:	1ac6c063          	blt	a3,a2,1e5dc <_svfiprintf_r+0x38c>
   1e440:	020f8863          	beqz	t6,1e470 <_svfiprintf_r+0x220>
   1e444:	06810593          	add	a1,sp,104
   1e448:	00b43023          	sd	a1,0(s0)
   1e44c:	0016061b          	addw	a2,a2,1
   1e450:	00248493          	add	s1,s1,2
   1e454:	00200593          	li	a1,2
   1e458:	00b43423          	sd	a1,8(s0)
   1e45c:	08913023          	sd	s1,128(sp)
   1e460:	06c12c23          	sw	a2,120(sp)
   1e464:	00700693          	li	a3,7
   1e468:	01040413          	add	s0,s0,16
   1e46c:	1ec6c2e3          	blt	a3,a2,1ee50 <_svfiprintf_r+0xc00>
   1e470:	08000693          	li	a3,128
   1e474:	58df0663          	beq	t5,a3,1ea00 <_svfiprintf_r+0x7b0>
   1e478:	4109093b          	subw	s2,s2,a6
   1e47c:	6b204e63          	bgtz	s2,1eb38 <_svfiprintf_r+0x8e8>
   1e480:	0016059b          	addw	a1,a2,1
   1e484:	010484b3          	add	s1,s1,a6
   1e488:	01843023          	sd	s8,0(s0)
   1e48c:	01043423          	sd	a6,8(s0)
   1e490:	08913023          	sd	s1,128(sp)
   1e494:	06b12c23          	sw	a1,120(sp)
   1e498:	00700693          	li	a3,7
   1e49c:	01040413          	add	s0,s0,16
   1e4a0:	7ab6cc63          	blt	a3,a1,1ec58 <_svfiprintf_r+0xa08>
   1e4a4:	0047f793          	and	a5,a5,4
   1e4a8:	00078663          	beqz	a5,1e4b4 <_svfiprintf_r+0x264>
   1e4ac:	4117093b          	subw	s2,a4,a7
   1e4b0:	1f204ae3          	bgtz	s2,1eea4 <_svfiprintf_r+0xc54>
   1e4b4:	00070793          	mv	a5,a4
   1e4b8:	01175463          	bge	a4,a7,1e4c0 <_svfiprintf_r+0x270>
   1e4bc:	00088793          	mv	a5,a7
   1e4c0:	01a78d3b          	addw	s10,a5,s10
   1e4c4:	7c049a63          	bnez	s1,1ec98 <_svfiprintf_r+0xa48>
   1e4c8:	000dc783          	lbu	a5,0(s11)
   1e4cc:	06012c23          	sw	zero,120(sp)
   1e4d0:	000a8413          	mv	s0,s5
   1e4d4:	e20792e3          	bnez	a5,1e2f8 <_svfiprintf_r+0xa8>
   1e4d8:	60049ee3          	bnez	s1,1f2f4 <_svfiprintf_r+0x10a4>
   1e4dc:	010a5783          	lhu	a5,16(s4)
   1e4e0:	0407f793          	and	a5,a5,64
   1e4e4:	64079ae3          	bnez	a5,1f338 <_svfiprintf_r+0x10e8>
   1e4e8:	1d813083          	ld	ra,472(sp)
   1e4ec:	1d013403          	ld	s0,464(sp)
   1e4f0:	1c813483          	ld	s1,456(sp)
   1e4f4:	1c013903          	ld	s2,448(sp)
   1e4f8:	1b813983          	ld	s3,440(sp)
   1e4fc:	1b013a03          	ld	s4,432(sp)
   1e500:	1a813a83          	ld	s5,424(sp)
   1e504:	1a013b03          	ld	s6,416(sp)
   1e508:	19813b83          	ld	s7,408(sp)
   1e50c:	19013c03          	ld	s8,400(sp)
   1e510:	18813c83          	ld	s9,392(sp)
   1e514:	17813d83          	ld	s11,376(sp)
   1e518:	000d0513          	mv	a0,s10
   1e51c:	18013d03          	ld	s10,384(sp)
   1e520:	1e010113          	add	sp,sp,480
   1e524:	00008067          	ret
   1e528:	0107e793          	or	a5,a5,16
   1e52c:	000dc683          	lbu	a3,0(s11)
   1e530:	0007879b          	sext.w	a5,a5
   1e534:	e35ff06f          	j	1e368 <_svfiprintf_r+0x118>
   1e538:	0107e793          	or	a5,a5,16
   1e53c:	0007879b          	sext.w	a5,a5
   1e540:	0207f693          	and	a3,a5,32
   1e544:	008e8313          	add	t1,t4,8
   1e548:	0e068863          	beqz	a3,1e638 <_svfiprintf_r+0x3e8>
   1e54c:	000eb603          	ld	a2,0(t4)
   1e550:	00060693          	mv	a3,a2
   1e554:	10064463          	bltz	a2,1e65c <_svfiprintf_r+0x40c>
   1e558:	fff00613          	li	a2,-1
   1e55c:	10c90e63          	beq	s2,a2,1e678 <_svfiprintf_r+0x428>
   1e560:	f7f7f793          	and	a5,a5,-129
   1e564:	0007879b          	sext.w	a5,a5
   1e568:	10069863          	bnez	a3,1e678 <_svfiprintf_r+0x428>
   1e56c:	5a0916e3          	bnez	s2,1f318 <_svfiprintf_r+0x10c8>
   1e570:	00000893          	li	a7,0
   1e574:	00000813          	li	a6,0
   1e578:	00030e93          	mv	t4,t1
   1e57c:	0ec10c13          	add	s8,sp,236
   1e580:	1240006f          	j	1e6a4 <_svfiprintf_r+0x454>
   1e584:	000ea703          	lw	a4,0(t4)
   1e588:	008e8e93          	add	t4,t4,8
   1e58c:	3c075c63          	bgez	a4,1e964 <_svfiprintf_r+0x714>
   1e590:	40e0073b          	negw	a4,a4
   1e594:	0047e793          	or	a5,a5,4
   1e598:	000dc683          	lbu	a3,0(s11)
   1e59c:	0007879b          	sext.w	a5,a5
   1e5a0:	dc9ff06f          	j	1e368 <_svfiprintf_r+0x118>
   1e5a4:	41b90c3b          	subw	s8,s2,s11
   1e5a8:	d60c18e3          	bnez	s8,1e318 <_svfiprintf_r+0xc8>
   1e5ac:	00094783          	lbu	a5,0(s2)
   1e5b0:	d99ff06f          	j	1e348 <_svfiprintf_r+0xf8>
   1e5b4:	07010613          	add	a2,sp,112
   1e5b8:	000a0593          	mv	a1,s4
   1e5bc:	000b0513          	mv	a0,s6
   1e5c0:	01d13823          	sd	t4,16(sp)
   1e5c4:	a95ff0ef          	jal	1e058 <__ssprint_r>
   1e5c8:	f0051ae3          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1e5cc:	08013483          	ld	s1,128(sp)
   1e5d0:	01013e83          	ld	t4,16(sp)
   1e5d4:	000a8413          	mv	s0,s5
   1e5d8:	d69ff06f          	j	1e340 <_svfiprintf_r+0xf0>
   1e5dc:	07010613          	add	a2,sp,112
   1e5e0:	000a0593          	mv	a1,s4
   1e5e4:	000b0513          	mv	a0,s6
   1e5e8:	05d13c23          	sd	t4,88(sp)
   1e5ec:	05013823          	sd	a6,80(sp)
   1e5f0:	05113423          	sd	a7,72(sp)
   1e5f4:	02e13423          	sd	a4,40(sp)
   1e5f8:	03e13023          	sd	t5,32(sp)
   1e5fc:	01f13c23          	sd	t6,24(sp)
   1e600:	00f13823          	sd	a5,16(sp)
   1e604:	a55ff0ef          	jal	1e058 <__ssprint_r>
   1e608:	ec051ae3          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1e60c:	08013483          	ld	s1,128(sp)
   1e610:	07812603          	lw	a2,120(sp)
   1e614:	05813e83          	ld	t4,88(sp)
   1e618:	05013803          	ld	a6,80(sp)
   1e61c:	04813883          	ld	a7,72(sp)
   1e620:	02813703          	ld	a4,40(sp)
   1e624:	02013f03          	ld	t5,32(sp)
   1e628:	01813f83          	ld	t6,24(sp)
   1e62c:	01013783          	ld	a5,16(sp)
   1e630:	000a8413          	mv	s0,s5
   1e634:	e0dff06f          	j	1e440 <_svfiprintf_r+0x1f0>
   1e638:	0107f693          	and	a3,a5,16
   1e63c:	f00698e3          	bnez	a3,1e54c <_svfiprintf_r+0x2fc>
   1e640:	0407f613          	and	a2,a5,64
   1e644:	000ea683          	lw	a3,0(t4)
   1e648:	44060ae3          	beqz	a2,1f29c <_svfiprintf_r+0x104c>
   1e64c:	0106969b          	sllw	a3,a3,0x10
   1e650:	4106d69b          	sraw	a3,a3,0x10
   1e654:	00068613          	mv	a2,a3
   1e658:	f00650e3          	bgez	a2,1e558 <_svfiprintf_r+0x308>
   1e65c:	02d00613          	li	a2,45
   1e660:	06c103a3          	sb	a2,103(sp)
   1e664:	fff00613          	li	a2,-1
   1e668:	40d006b3          	neg	a3,a3
   1e66c:	00c90663          	beq	s2,a2,1e678 <_svfiprintf_r+0x428>
   1e670:	f7f7f793          	and	a5,a5,-129
   1e674:	0007879b          	sext.w	a5,a5
   1e678:	00900613          	li	a2,9
   1e67c:	14d666e3          	bltu	a2,a3,1efc8 <_svfiprintf_r+0xd78>
   1e680:	0306869b          	addw	a3,a3,48
   1e684:	0ff6f693          	zext.b	a3,a3
   1e688:	00030e93          	mv	t4,t1
   1e68c:	0ed105a3          	sb	a3,235(sp)
   1e690:	0009089b          	sext.w	a7,s2
   1e694:	01204463          	bgtz	s2,1e69c <_svfiprintf_r+0x44c>
   1e698:	00100893          	li	a7,1
   1e69c:	00100813          	li	a6,1
   1e6a0:	0eb10c13          	add	s8,sp,235
   1e6a4:	06714683          	lbu	a3,103(sp)
   1e6a8:	d40682e3          	beqz	a3,1e3ec <_svfiprintf_r+0x19c>
   1e6ac:	0018889b          	addw	a7,a7,1
   1e6b0:	d3dff06f          	j	1e3ec <_svfiprintf_r+0x19c>
   1e6b4:	000ebc03          	ld	s8,0(t4)
   1e6b8:	060103a3          	sb	zero,103(sp)
   1e6bc:	008e8e93          	add	t4,t4,8
   1e6c0:	380c02e3          	beqz	s8,1f244 <_svfiprintf_r+0xff4>
   1e6c4:	fff00693          	li	a3,-1
   1e6c8:	03d13023          	sd	t4,32(sp)
   1e6cc:	00e13c23          	sd	a4,24(sp)
   1e6d0:	00f13823          	sd	a5,16(sp)
   1e6d4:	26d906e3          	beq	s2,a3,1f140 <_svfiprintf_r+0xef0>
   1e6d8:	00090613          	mv	a2,s2
   1e6dc:	00000593          	li	a1,0
   1e6e0:	000c0513          	mv	a0,s8
   1e6e4:	ca1f80ef          	jal	17384 <memchr>
   1e6e8:	01013783          	ld	a5,16(sp)
   1e6ec:	01813703          	ld	a4,24(sp)
   1e6f0:	02013e83          	ld	t4,32(sp)
   1e6f4:	40050ae3          	beqz	a0,1f308 <_svfiprintf_r+0x10b8>
   1e6f8:	4185083b          	subw	a6,a0,s8
   1e6fc:	fff84893          	not	a7,a6
   1e700:	43f8d893          	sra	a7,a7,0x3f
   1e704:	0108f8b3          	and	a7,a7,a6
   1e708:	00000913          	li	s2,0
   1e70c:	f99ff06f          	j	1e6a4 <_svfiprintf_r+0x454>
   1e710:	000ea683          	lw	a3,0(t4)
   1e714:	060103a3          	sb	zero,103(sp)
   1e718:	008e8e93          	add	t4,t4,8
   1e71c:	08d10423          	sb	a3,136(sp)
   1e720:	00100893          	li	a7,1
   1e724:	00100813          	li	a6,1
   1e728:	08810c13          	add	s8,sp,136
   1e72c:	cbdff06f          	j	1e3e8 <_svfiprintf_r+0x198>
   1e730:	0207e793          	or	a5,a5,32
   1e734:	000dc683          	lbu	a3,0(s11)
   1e738:	0007879b          	sext.w	a5,a5
   1e73c:	c2dff06f          	j	1e368 <_svfiprintf_r+0x118>
   1e740:	ffff86b7          	lui	a3,0xffff8
   1e744:	8306c693          	xor	a3,a3,-2000
   1e748:	0027e793          	or	a5,a5,2
   1e74c:	06d11423          	sh	a3,104(sp)
   1e750:	00003697          	auipc	a3,0x3
   1e754:	61868693          	add	a3,a3,1560 # 21d68 <__clzdi2+0xb8>
   1e758:	000eb603          	ld	a2,0(t4)
   1e75c:	0007879b          	sext.w	a5,a5
   1e760:	008e8e93          	add	t4,t4,8
   1e764:	00d13423          	sd	a3,8(sp)
   1e768:	060103a3          	sb	zero,103(sp)
   1e76c:	fff00693          	li	a3,-1
   1e770:	54d90c63          	beq	s2,a3,1ecc8 <_svfiprintf_r+0xa78>
   1e774:	f7f7f693          	and	a3,a5,-129
   1e778:	0006869b          	sext.w	a3,a3
   1e77c:	54061063          	bnez	a2,1ecbc <_svfiprintf_r+0xa6c>
   1e780:	00078813          	mv	a6,a5
   1e784:	00200613          	li	a2,2
   1e788:	00068793          	mv	a5,a3
   1e78c:	06091a63          	bnez	s2,1e800 <_svfiprintf_r+0x5b0>
   1e790:	020614e3          	bnez	a2,1efb8 <_svfiprintf_r+0xd68>
   1e794:	00187813          	and	a6,a6,1
   1e798:	0a0802e3          	beqz	a6,1f03c <_svfiprintf_r+0xdec>
   1e79c:	03000693          	li	a3,48
   1e7a0:	0ed105a3          	sb	a3,235(sp)
   1e7a4:	00080893          	mv	a7,a6
   1e7a8:	0eb10c13          	add	s8,sp,235
   1e7ac:	ef9ff06f          	j	1e6a4 <_svfiprintf_r+0x454>
   1e7b0:	0107e693          	or	a3,a5,16
   1e7b4:	0006869b          	sext.w	a3,a3
   1e7b8:	0206f793          	and	a5,a3,32
   1e7bc:	008e8513          	add	a0,t4,8
   1e7c0:	00079663          	bnez	a5,1e7cc <_svfiprintf_r+0x57c>
   1e7c4:	0106f793          	and	a5,a3,16
   1e7c8:	0a078ae3          	beqz	a5,1f07c <_svfiprintf_r+0xe2c>
   1e7cc:	000eb603          	ld	a2,0(t4)
   1e7d0:	bff6f793          	and	a5,a3,-1025
   1e7d4:	060103a3          	sb	zero,103(sp)
   1e7d8:	fff00593          	li	a1,-1
   1e7dc:	0007879b          	sext.w	a5,a5
   1e7e0:	00050e93          	mv	t4,a0
   1e7e4:	02b90863          	beq	s2,a1,1e814 <_svfiprintf_r+0x5c4>
   1e7e8:	b7f6f693          	and	a3,a3,-1153
   1e7ec:	0006869b          	sext.w	a3,a3
   1e7f0:	20061ae3          	bnez	a2,1f204 <_svfiprintf_r+0xfb4>
   1e7f4:	00078813          	mv	a6,a5
   1e7f8:	00068793          	mv	a5,a3
   1e7fc:	f8090ae3          	beqz	s2,1e790 <_svfiprintf_r+0x540>
   1e800:	00100693          	li	a3,1
   1e804:	30d60ce3          	beq	a2,a3,1f31c <_svfiprintf_r+0x10cc>
   1e808:	00200693          	li	a3,2
   1e80c:	24d60ce3          	beq	a2,a3,1f264 <_svfiprintf_r+0x1014>
   1e810:	00000613          	li	a2,0
   1e814:	0ec10813          	add	a6,sp,236
   1e818:	00080c13          	mv	s8,a6
   1e81c:	00767693          	and	a3,a2,7
   1e820:	03068693          	add	a3,a3,48
   1e824:	fedc0fa3          	sb	a3,-1(s8)
   1e828:	00365613          	srl	a2,a2,0x3
   1e82c:	000c0593          	mv	a1,s8
   1e830:	fffc0c13          	add	s8,s8,-1
   1e834:	fe0614e3          	bnez	a2,1e81c <_svfiprintf_r+0x5cc>
   1e838:	0017f613          	and	a2,a5,1
   1e83c:	76060463          	beqz	a2,1efa4 <_svfiprintf_r+0xd54>
   1e840:	03000613          	li	a2,48
   1e844:	76c68063          	beq	a3,a2,1efa4 <_svfiprintf_r+0xd54>
   1e848:	ffe58593          	add	a1,a1,-2
   1e84c:	40b8083b          	subw	a6,a6,a1
   1e850:	fecc0fa3          	sb	a2,-1(s8)
   1e854:	0008089b          	sext.w	a7,a6
   1e858:	03284ee3          	blt	a6,s2,1f094 <_svfiprintf_r+0xe44>
   1e85c:	00058c13          	mv	s8,a1
   1e860:	e45ff06f          	j	1e6a4 <_svfiprintf_r+0x454>
   1e864:	0107e813          	or	a6,a5,16
   1e868:	0008081b          	sext.w	a6,a6
   1e86c:	02087793          	and	a5,a6,32
   1e870:	008e8313          	add	t1,t4,8
   1e874:	00079663          	bnez	a5,1e880 <_svfiprintf_r+0x630>
   1e878:	01087793          	and	a5,a6,16
   1e87c:	7e078463          	beqz	a5,1f064 <_svfiprintf_r+0xe14>
   1e880:	000eb683          	ld	a3,0(t4)
   1e884:	060103a3          	sb	zero,103(sp)
   1e888:	fff00793          	li	a5,-1
   1e88c:	18f904e3          	beq	s2,a5,1f214 <_svfiprintf_r+0xfc4>
   1e890:	f7f87793          	and	a5,a6,-129
   1e894:	0007879b          	sext.w	a5,a5
   1e898:	de0690e3          	bnez	a3,1e678 <_svfiprintf_r+0x428>
   1e89c:	00030e93          	mv	t4,t1
   1e8a0:	00100613          	li	a2,1
   1e8a4:	ee9ff06f          	j	1e78c <_svfiprintf_r+0x53c>
   1e8a8:	0807e793          	or	a5,a5,128
   1e8ac:	000dc683          	lbu	a3,0(s11)
   1e8b0:	0007879b          	sext.w	a5,a5
   1e8b4:	ab5ff06f          	j	1e368 <_svfiprintf_r+0x118>
   1e8b8:	000dc683          	lbu	a3,0(s11)
   1e8bc:	02a00513          	li	a0,42
   1e8c0:	001d8613          	add	a2,s11,1
   1e8c4:	26a68ee3          	beq	a3,a0,1f340 <_svfiprintf_r+0x10f0>
   1e8c8:	fd06859b          	addw	a1,a3,-48
   1e8cc:	00900813          	li	a6,9
   1e8d0:	00060d93          	mv	s11,a2
   1e8d4:	00000913          	li	s2,0
   1e8d8:	00900513          	li	a0,9
   1e8dc:	a8b86ae3          	bltu	a6,a1,1e370 <_svfiprintf_r+0x120>
   1e8e0:	000dc683          	lbu	a3,0(s11)
   1e8e4:	0029161b          	sllw	a2,s2,0x2
   1e8e8:	0126093b          	addw	s2,a2,s2
   1e8ec:	0019191b          	sllw	s2,s2,0x1
   1e8f0:	00b9093b          	addw	s2,s2,a1
   1e8f4:	fd06859b          	addw	a1,a3,-48
   1e8f8:	001d8d93          	add	s11,s11,1
   1e8fc:	feb572e3          	bgeu	a0,a1,1e8e0 <_svfiprintf_r+0x690>
   1e900:	a71ff06f          	j	1e370 <_svfiprintf_r+0x120>
   1e904:	02b00613          	li	a2,43
   1e908:	000dc683          	lbu	a3,0(s11)
   1e90c:	06c103a3          	sb	a2,103(sp)
   1e910:	a59ff06f          	j	1e368 <_svfiprintf_r+0x118>
   1e914:	000b0513          	mv	a0,s6
   1e918:	03d13023          	sd	t4,32(sp)
   1e91c:	00e13c23          	sd	a4,24(sp)
   1e920:	00f13823          	sd	a5,16(sp)
   1e924:	800f80ef          	jal	16924 <_localeconv_r>
   1e928:	00853783          	ld	a5,8(a0)
   1e92c:	00078513          	mv	a0,a5
   1e930:	04f13023          	sd	a5,64(sp)
   1e934:	9c0fa0ef          	jal	18af4 <strlen>
   1e938:	00050693          	mv	a3,a0
   1e93c:	000b0513          	mv	a0,s6
   1e940:	02d13823          	sd	a3,48(sp)
   1e944:	fe1f70ef          	jal	16924 <_localeconv_r>
   1e948:	01053603          	ld	a2,16(a0)
   1e94c:	03013683          	ld	a3,48(sp)
   1e950:	01013783          	ld	a5,16(sp)
   1e954:	02c13c23          	sd	a2,56(sp)
   1e958:	01813703          	ld	a4,24(sp)
   1e95c:	02013e83          	ld	t4,32(sp)
   1e960:	6e069463          	bnez	a3,1f048 <_svfiprintf_r+0xdf8>
   1e964:	000dc683          	lbu	a3,0(s11)
   1e968:	a01ff06f          	j	1e368 <_svfiprintf_r+0x118>
   1e96c:	0017e793          	or	a5,a5,1
   1e970:	000dc683          	lbu	a3,0(s11)
   1e974:	0007879b          	sext.w	a5,a5
   1e978:	9f1ff06f          	j	1e368 <_svfiprintf_r+0x118>
   1e97c:	06714603          	lbu	a2,103(sp)
   1e980:	000dc683          	lbu	a3,0(s11)
   1e984:	9e0612e3          	bnez	a2,1e368 <_svfiprintf_r+0x118>
   1e988:	02000613          	li	a2,32
   1e98c:	06c103a3          	sb	a2,103(sp)
   1e990:	9d9ff06f          	j	1e368 <_svfiprintf_r+0x118>
   1e994:	0207f713          	and	a4,a5,32
   1e998:	000eb683          	ld	a3,0(t4)
   1e99c:	02071463          	bnez	a4,1e9c4 <_svfiprintf_r+0x774>
   1e9a0:	0107f713          	and	a4,a5,16
   1e9a4:	02071063          	bnez	a4,1e9c4 <_svfiprintf_r+0x774>
   1e9a8:	0407f713          	and	a4,a5,64
   1e9ac:	12071ee3          	bnez	a4,1f2e8 <_svfiprintf_r+0x1098>
   1e9b0:	2007f793          	and	a5,a5,512
   1e9b4:	160788e3          	beqz	a5,1f324 <_svfiprintf_r+0x10d4>
   1e9b8:	01a68023          	sb	s10,0(a3)
   1e9bc:	008e8e93          	add	t4,t4,8
   1e9c0:	931ff06f          	j	1e2f0 <_svfiprintf_r+0xa0>
   1e9c4:	01a6b023          	sd	s10,0(a3)
   1e9c8:	008e8e93          	add	t4,t4,8
   1e9cc:	925ff06f          	j	1e2f0 <_svfiprintf_r+0xa0>
   1e9d0:	000dc683          	lbu	a3,0(s11)
   1e9d4:	06c00613          	li	a2,108
   1e9d8:	04c68ce3          	beq	a3,a2,1f230 <_svfiprintf_r+0xfe0>
   1e9dc:	0107e793          	or	a5,a5,16
   1e9e0:	0007879b          	sext.w	a5,a5
   1e9e4:	985ff06f          	j	1e368 <_svfiprintf_r+0x118>
   1e9e8:	000dc683          	lbu	a3,0(s11)
   1e9ec:	06800613          	li	a2,104
   1e9f0:	02c686e3          	beq	a3,a2,1f21c <_svfiprintf_r+0xfcc>
   1e9f4:	0407e793          	or	a5,a5,64
   1e9f8:	0007879b          	sext.w	a5,a5
   1e9fc:	96dff06f          	j	1e368 <_svfiprintf_r+0x118>
   1ea00:	411706bb          	subw	a3,a4,a7
   1ea04:	a6d05ae3          	blez	a3,1e478 <_svfiprintf_r+0x228>
   1ea08:	01000593          	li	a1,16
   1ea0c:	00004e17          	auipc	t3,0x4
   1ea10:	fdce0e13          	add	t3,t3,-36 # 229e8 <zeroes.0>
   1ea14:	0ad5d863          	bge	a1,a3,1eac4 <_svfiprintf_r+0x874>
   1ea18:	00f13823          	sd	a5,16(sp)
   1ea1c:	00e13c23          	sd	a4,24(sp)
   1ea20:	00040793          	mv	a5,s0
   1ea24:	00048713          	mv	a4,s1
   1ea28:	01000313          	li	t1,16
   1ea2c:	00700f13          	li	t5,7
   1ea30:	03113023          	sd	a7,32(sp)
   1ea34:	03013423          	sd	a6,40(sp)
   1ea38:	00068413          	mv	s0,a3
   1ea3c:	05d13423          	sd	t4,72(sp)
   1ea40:	000e0493          	mv	s1,t3
   1ea44:	00c0006f          	j	1ea50 <_svfiprintf_r+0x800>
   1ea48:	ff04041b          	addw	s0,s0,-16
   1ea4c:	04835a63          	bge	t1,s0,1eaa0 <_svfiprintf_r+0x850>
   1ea50:	0016061b          	addw	a2,a2,1
   1ea54:	01070713          	add	a4,a4,16
   1ea58:	0097b023          	sd	s1,0(a5)
   1ea5c:	0067b423          	sd	t1,8(a5)
   1ea60:	08e13023          	sd	a4,128(sp)
   1ea64:	06c12c23          	sw	a2,120(sp)
   1ea68:	01078793          	add	a5,a5,16
   1ea6c:	fccf5ee3          	bge	t5,a2,1ea48 <_svfiprintf_r+0x7f8>
   1ea70:	07010613          	add	a2,sp,112
   1ea74:	000a0593          	mv	a1,s4
   1ea78:	000b0513          	mv	a0,s6
   1ea7c:	ddcff0ef          	jal	1e058 <__ssprint_r>
   1ea80:	a4051ee3          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1ea84:	01000313          	li	t1,16
   1ea88:	ff04041b          	addw	s0,s0,-16
   1ea8c:	08013703          	ld	a4,128(sp)
   1ea90:	07812603          	lw	a2,120(sp)
   1ea94:	000a8793          	mv	a5,s5
   1ea98:	00700f13          	li	t5,7
   1ea9c:	fa834ae3          	blt	t1,s0,1ea50 <_svfiprintf_r+0x800>
   1eaa0:	00040693          	mv	a3,s0
   1eaa4:	00048e13          	mv	t3,s1
   1eaa8:	00078413          	mv	s0,a5
   1eaac:	00070493          	mv	s1,a4
   1eab0:	02013883          	ld	a7,32(sp)
   1eab4:	02813803          	ld	a6,40(sp)
   1eab8:	01013783          	ld	a5,16(sp)
   1eabc:	04813e83          	ld	t4,72(sp)
   1eac0:	01813703          	ld	a4,24(sp)
   1eac4:	00d484b3          	add	s1,s1,a3
   1eac8:	0016061b          	addw	a2,a2,1
   1eacc:	00d43423          	sd	a3,8(s0)
   1ead0:	01c43023          	sd	t3,0(s0)
   1ead4:	08913023          	sd	s1,128(sp)
   1ead8:	06c12c23          	sw	a2,120(sp)
   1eadc:	00700693          	li	a3,7
   1eae0:	01040413          	add	s0,s0,16
   1eae4:	98c6dae3          	bge	a3,a2,1e478 <_svfiprintf_r+0x228>
   1eae8:	07010613          	add	a2,sp,112
   1eaec:	000a0593          	mv	a1,s4
   1eaf0:	000b0513          	mv	a0,s6
   1eaf4:	05d13423          	sd	t4,72(sp)
   1eaf8:	03013423          	sd	a6,40(sp)
   1eafc:	03113023          	sd	a7,32(sp)
   1eb00:	00e13c23          	sd	a4,24(sp)
   1eb04:	00f13823          	sd	a5,16(sp)
   1eb08:	d50ff0ef          	jal	1e058 <__ssprint_r>
   1eb0c:	9c0518e3          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1eb10:	02813803          	ld	a6,40(sp)
   1eb14:	08013483          	ld	s1,128(sp)
   1eb18:	07812603          	lw	a2,120(sp)
   1eb1c:	4109093b          	subw	s2,s2,a6
   1eb20:	04813e83          	ld	t4,72(sp)
   1eb24:	02013883          	ld	a7,32(sp)
   1eb28:	01813703          	ld	a4,24(sp)
   1eb2c:	01013783          	ld	a5,16(sp)
   1eb30:	000a8413          	mv	s0,s5
   1eb34:	952056e3          	blez	s2,1e480 <_svfiprintf_r+0x230>
   1eb38:	00004e17          	auipc	t3,0x4
   1eb3c:	eb0e0e13          	add	t3,t3,-336 # 229e8 <zeroes.0>
   1eb40:	0b29d463          	bge	s3,s2,1ebe8 <_svfiprintf_r+0x998>
   1eb44:	00f13823          	sd	a5,16(sp)
   1eb48:	00e13c23          	sd	a4,24(sp)
   1eb4c:	00040793          	mv	a5,s0
   1eb50:	00048713          	mv	a4,s1
   1eb54:	00090413          	mv	s0,s2
   1eb58:	00700313          	li	t1,7
   1eb5c:	03113023          	sd	a7,32(sp)
   1eb60:	03013423          	sd	a6,40(sp)
   1eb64:	000e8493          	mv	s1,t4
   1eb68:	000b8913          	mv	s2,s7
   1eb6c:	00c0006f          	j	1eb78 <_svfiprintf_r+0x928>
   1eb70:	ff04041b          	addw	s0,s0,-16
   1eb74:	0489d863          	bge	s3,s0,1ebc4 <_svfiprintf_r+0x974>
   1eb78:	0016061b          	addw	a2,a2,1
   1eb7c:	01070713          	add	a4,a4,16
   1eb80:	0177b023          	sd	s7,0(a5)
   1eb84:	0137b423          	sd	s3,8(a5)
   1eb88:	08e13023          	sd	a4,128(sp)
   1eb8c:	06c12c23          	sw	a2,120(sp)
   1eb90:	01078793          	add	a5,a5,16
   1eb94:	fcc35ee3          	bge	t1,a2,1eb70 <_svfiprintf_r+0x920>
   1eb98:	07010613          	add	a2,sp,112
   1eb9c:	000a0593          	mv	a1,s4
   1eba0:	000b0513          	mv	a0,s6
   1eba4:	cb4ff0ef          	jal	1e058 <__ssprint_r>
   1eba8:	92051ae3          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1ebac:	ff04041b          	addw	s0,s0,-16
   1ebb0:	08013703          	ld	a4,128(sp)
   1ebb4:	07812603          	lw	a2,120(sp)
   1ebb8:	000a8793          	mv	a5,s5
   1ebbc:	00700313          	li	t1,7
   1ebc0:	fa89cce3          	blt	s3,s0,1eb78 <_svfiprintf_r+0x928>
   1ebc4:	00048e93          	mv	t4,s1
   1ebc8:	00090e13          	mv	t3,s2
   1ebcc:	00070493          	mv	s1,a4
   1ebd0:	00040913          	mv	s2,s0
   1ebd4:	02013883          	ld	a7,32(sp)
   1ebd8:	00078413          	mv	s0,a5
   1ebdc:	02813803          	ld	a6,40(sp)
   1ebe0:	01813703          	ld	a4,24(sp)
   1ebe4:	01013783          	ld	a5,16(sp)
   1ebe8:	0016061b          	addw	a2,a2,1
   1ebec:	012484b3          	add	s1,s1,s2
   1ebf0:	01c43023          	sd	t3,0(s0)
   1ebf4:	01243423          	sd	s2,8(s0)
   1ebf8:	08913023          	sd	s1,128(sp)
   1ebfc:	06c12c23          	sw	a2,120(sp)
   1ec00:	00700693          	li	a3,7
   1ec04:	01040413          	add	s0,s0,16
   1ec08:	86c6dce3          	bge	a3,a2,1e480 <_svfiprintf_r+0x230>
   1ec0c:	07010613          	add	a2,sp,112
   1ec10:	000a0593          	mv	a1,s4
   1ec14:	000b0513          	mv	a0,s6
   1ec18:	05d13423          	sd	t4,72(sp)
   1ec1c:	03013423          	sd	a6,40(sp)
   1ec20:	03113023          	sd	a7,32(sp)
   1ec24:	00e13c23          	sd	a4,24(sp)
   1ec28:	00f13823          	sd	a5,16(sp)
   1ec2c:	c2cff0ef          	jal	1e058 <__ssprint_r>
   1ec30:	8a0516e3          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1ec34:	08013483          	ld	s1,128(sp)
   1ec38:	07812603          	lw	a2,120(sp)
   1ec3c:	04813e83          	ld	t4,72(sp)
   1ec40:	02813803          	ld	a6,40(sp)
   1ec44:	02013883          	ld	a7,32(sp)
   1ec48:	01813703          	ld	a4,24(sp)
   1ec4c:	01013783          	ld	a5,16(sp)
   1ec50:	000a8413          	mv	s0,s5
   1ec54:	82dff06f          	j	1e480 <_svfiprintf_r+0x230>
   1ec58:	07010613          	add	a2,sp,112
   1ec5c:	000a0593          	mv	a1,s4
   1ec60:	000b0513          	mv	a0,s6
   1ec64:	03d13423          	sd	t4,40(sp)
   1ec68:	03113023          	sd	a7,32(sp)
   1ec6c:	00e13c23          	sd	a4,24(sp)
   1ec70:	00f13823          	sd	a5,16(sp)
   1ec74:	be4ff0ef          	jal	1e058 <__ssprint_r>
   1ec78:	860512e3          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1ec7c:	08013483          	ld	s1,128(sp)
   1ec80:	02813e83          	ld	t4,40(sp)
   1ec84:	02013883          	ld	a7,32(sp)
   1ec88:	01813703          	ld	a4,24(sp)
   1ec8c:	01013783          	ld	a5,16(sp)
   1ec90:	000a8413          	mv	s0,s5
   1ec94:	811ff06f          	j	1e4a4 <_svfiprintf_r+0x254>
   1ec98:	07010613          	add	a2,sp,112
   1ec9c:	000a0593          	mv	a1,s4
   1eca0:	000b0513          	mv	a0,s6
   1eca4:	01d13823          	sd	t4,16(sp)
   1eca8:	bb0ff0ef          	jal	1e058 <__ssprint_r>
   1ecac:	820518e3          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1ecb0:	08013483          	ld	s1,128(sp)
   1ecb4:	01013e83          	ld	t4,16(sp)
   1ecb8:	811ff06f          	j	1e4c8 <_svfiprintf_r+0x278>
   1ecbc:	00068793          	mv	a5,a3
   1ecc0:	00200693          	li	a3,2
   1ecc4:	b40688e3          	beqz	a3,1e814 <_svfiprintf_r+0x5c4>
   1ecc8:	00813583          	ld	a1,8(sp)
   1eccc:	0ec10813          	add	a6,sp,236
   1ecd0:	00080c13          	mv	s8,a6
   1ecd4:	00f67693          	and	a3,a2,15
   1ecd8:	00d586b3          	add	a3,a1,a3
   1ecdc:	0006c683          	lbu	a3,0(a3)
   1ece0:	00465613          	srl	a2,a2,0x4
   1ece4:	fffc0c13          	add	s8,s8,-1
   1ece8:	00dc0023          	sb	a3,0(s8)
   1ecec:	fe0614e3          	bnez	a2,1ecd4 <_svfiprintf_r+0xa84>
   1ecf0:	4188083b          	subw	a6,a6,s8
   1ecf4:	0009089b          	sext.w	a7,s2
   1ecf8:	9b0956e3          	bge	s2,a6,1e6a4 <_svfiprintf_r+0x454>
   1ecfc:	0008089b          	sext.w	a7,a6
   1ed00:	9a5ff06f          	j	1e6a4 <_svfiprintf_r+0x454>
   1ed04:	01000593          	li	a1,16
   1ed08:	00004317          	auipc	t1,0x4
   1ed0c:	cf030313          	add	t1,t1,-784 # 229f8 <blanks.1>
   1ed10:	0cd5d063          	bge	a1,a3,1edd0 <_svfiprintf_r+0xb80>
   1ed14:	00f13823          	sd	a5,16(sp)
   1ed18:	02e13423          	sd	a4,40(sp)
   1ed1c:	00040793          	mv	a5,s0
   1ed20:	00048713          	mv	a4,s1
   1ed24:	01000e13          	li	t3,16
   1ed28:	00700393          	li	t2,7
   1ed2c:	01f13c23          	sd	t6,24(sp)
   1ed30:	03e13023          	sd	t5,32(sp)
   1ed34:	05113423          	sd	a7,72(sp)
   1ed38:	05013823          	sd	a6,80(sp)
   1ed3c:	00068413          	mv	s0,a3
   1ed40:	05d13c23          	sd	t4,88(sp)
   1ed44:	00030493          	mv	s1,t1
   1ed48:	00c0006f          	j	1ed54 <_svfiprintf_r+0xb04>
   1ed4c:	ff04041b          	addw	s0,s0,-16
   1ed50:	048e5a63          	bge	t3,s0,1eda4 <_svfiprintf_r+0xb54>
   1ed54:	0016061b          	addw	a2,a2,1
   1ed58:	01070713          	add	a4,a4,16
   1ed5c:	0097b023          	sd	s1,0(a5)
   1ed60:	01c7b423          	sd	t3,8(a5)
   1ed64:	08e13023          	sd	a4,128(sp)
   1ed68:	06c12c23          	sw	a2,120(sp)
   1ed6c:	01078793          	add	a5,a5,16
   1ed70:	fcc3dee3          	bge	t2,a2,1ed4c <_svfiprintf_r+0xafc>
   1ed74:	07010613          	add	a2,sp,112
   1ed78:	000a0593          	mv	a1,s4
   1ed7c:	000b0513          	mv	a0,s6
   1ed80:	ad8ff0ef          	jal	1e058 <__ssprint_r>
   1ed84:	f4051c63          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1ed88:	01000e13          	li	t3,16
   1ed8c:	ff04041b          	addw	s0,s0,-16
   1ed90:	08013703          	ld	a4,128(sp)
   1ed94:	07812603          	lw	a2,120(sp)
   1ed98:	000a8793          	mv	a5,s5
   1ed9c:	00700393          	li	t2,7
   1eda0:	fa8e4ae3          	blt	t3,s0,1ed54 <_svfiprintf_r+0xb04>
   1eda4:	00040693          	mv	a3,s0
   1eda8:	00048313          	mv	t1,s1
   1edac:	00078413          	mv	s0,a5
   1edb0:	00070493          	mv	s1,a4
   1edb4:	01813f83          	ld	t6,24(sp)
   1edb8:	02013f03          	ld	t5,32(sp)
   1edbc:	04813883          	ld	a7,72(sp)
   1edc0:	05013803          	ld	a6,80(sp)
   1edc4:	01013783          	ld	a5,16(sp)
   1edc8:	05813e83          	ld	t4,88(sp)
   1edcc:	02813703          	ld	a4,40(sp)
   1edd0:	00d484b3          	add	s1,s1,a3
   1edd4:	0016061b          	addw	a2,a2,1
   1edd8:	00d43423          	sd	a3,8(s0)
   1eddc:	00643023          	sd	t1,0(s0)
   1ede0:	08913023          	sd	s1,128(sp)
   1ede4:	06c12c23          	sw	a2,120(sp)
   1ede8:	00700693          	li	a3,7
   1edec:	01040413          	add	s0,s0,16
   1edf0:	e0c6de63          	bge	a3,a2,1e40c <_svfiprintf_r+0x1bc>
   1edf4:	07010613          	add	a2,sp,112
   1edf8:	000a0593          	mv	a1,s4
   1edfc:	000b0513          	mv	a0,s6
   1ee00:	05d13c23          	sd	t4,88(sp)
   1ee04:	05013823          	sd	a6,80(sp)
   1ee08:	05113423          	sd	a7,72(sp)
   1ee0c:	02e13423          	sd	a4,40(sp)
   1ee10:	03e13023          	sd	t5,32(sp)
   1ee14:	01f13c23          	sd	t6,24(sp)
   1ee18:	00f13823          	sd	a5,16(sp)
   1ee1c:	a3cff0ef          	jal	1e058 <__ssprint_r>
   1ee20:	ea051e63          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1ee24:	08013483          	ld	s1,128(sp)
   1ee28:	07812603          	lw	a2,120(sp)
   1ee2c:	05813e83          	ld	t4,88(sp)
   1ee30:	05013803          	ld	a6,80(sp)
   1ee34:	04813883          	ld	a7,72(sp)
   1ee38:	02813703          	ld	a4,40(sp)
   1ee3c:	02013f03          	ld	t5,32(sp)
   1ee40:	01813f83          	ld	t6,24(sp)
   1ee44:	01013783          	ld	a5,16(sp)
   1ee48:	000a8413          	mv	s0,s5
   1ee4c:	dc0ff06f          	j	1e40c <_svfiprintf_r+0x1bc>
   1ee50:	07010613          	add	a2,sp,112
   1ee54:	000a0593          	mv	a1,s4
   1ee58:	000b0513          	mv	a0,s6
   1ee5c:	05d13823          	sd	t4,80(sp)
   1ee60:	05013423          	sd	a6,72(sp)
   1ee64:	03113423          	sd	a7,40(sp)
   1ee68:	02e13023          	sd	a4,32(sp)
   1ee6c:	01e13c23          	sd	t5,24(sp)
   1ee70:	00f13823          	sd	a5,16(sp)
   1ee74:	9e4ff0ef          	jal	1e058 <__ssprint_r>
   1ee78:	e6051263          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1ee7c:	08013483          	ld	s1,128(sp)
   1ee80:	07812603          	lw	a2,120(sp)
   1ee84:	05013e83          	ld	t4,80(sp)
   1ee88:	04813803          	ld	a6,72(sp)
   1ee8c:	02813883          	ld	a7,40(sp)
   1ee90:	02013703          	ld	a4,32(sp)
   1ee94:	01813f03          	ld	t5,24(sp)
   1ee98:	01013783          	ld	a5,16(sp)
   1ee9c:	000a8413          	mv	s0,s5
   1eea0:	dd0ff06f          	j	1e470 <_svfiprintf_r+0x220>
   1eea4:	01000693          	li	a3,16
   1eea8:	07812783          	lw	a5,120(sp)
   1eeac:	00004317          	auipc	t1,0x4
   1eeb0:	b4c30313          	add	t1,t1,-1204 # 229f8 <blanks.1>
   1eeb4:	0926de63          	bge	a3,s2,1ef50 <_svfiprintf_r+0xd00>
   1eeb8:	00e13823          	sd	a4,16(sp)
   1eebc:	00048693          	mv	a3,s1
   1eec0:	00040713          	mv	a4,s0
   1eec4:	01000c13          	li	s8,16
   1eec8:	00090413          	mv	s0,s2
   1eecc:	00700813          	li	a6,7
   1eed0:	01113c23          	sd	a7,24(sp)
   1eed4:	000e8913          	mv	s2,t4
   1eed8:	00030493          	mv	s1,t1
   1eedc:	00c0006f          	j	1eee8 <_svfiprintf_r+0xc98>
   1eee0:	ff04041b          	addw	s0,s0,-16
   1eee4:	048c5863          	bge	s8,s0,1ef34 <_svfiprintf_r+0xce4>
   1eee8:	0017879b          	addw	a5,a5,1
   1eeec:	01068693          	add	a3,a3,16
   1eef0:	00973023          	sd	s1,0(a4)
   1eef4:	01873423          	sd	s8,8(a4)
   1eef8:	08d13023          	sd	a3,128(sp)
   1eefc:	06f12c23          	sw	a5,120(sp)
   1ef00:	01070713          	add	a4,a4,16
   1ef04:	fcf85ee3          	bge	a6,a5,1eee0 <_svfiprintf_r+0xc90>
   1ef08:	07010613          	add	a2,sp,112
   1ef0c:	000a0593          	mv	a1,s4
   1ef10:	000b0513          	mv	a0,s6
   1ef14:	944ff0ef          	jal	1e058 <__ssprint_r>
   1ef18:	dc051263          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1ef1c:	ff04041b          	addw	s0,s0,-16
   1ef20:	08013683          	ld	a3,128(sp)
   1ef24:	07812783          	lw	a5,120(sp)
   1ef28:	000a8713          	mv	a4,s5
   1ef2c:	00700813          	li	a6,7
   1ef30:	fa8c4ce3          	blt	s8,s0,1eee8 <_svfiprintf_r+0xc98>
   1ef34:	00090e93          	mv	t4,s2
   1ef38:	01813883          	ld	a7,24(sp)
   1ef3c:	00040913          	mv	s2,s0
   1ef40:	00070413          	mv	s0,a4
   1ef44:	01013703          	ld	a4,16(sp)
   1ef48:	00048313          	mv	t1,s1
   1ef4c:	00068493          	mv	s1,a3
   1ef50:	0017869b          	addw	a3,a5,1
   1ef54:	012484b3          	add	s1,s1,s2
   1ef58:	00643023          	sd	t1,0(s0)
   1ef5c:	01243423          	sd	s2,8(s0)
   1ef60:	08913023          	sd	s1,128(sp)
   1ef64:	06d12c23          	sw	a3,120(sp)
   1ef68:	00700793          	li	a5,7
   1ef6c:	d4d7d463          	bge	a5,a3,1e4b4 <_svfiprintf_r+0x264>
   1ef70:	07010613          	add	a2,sp,112
   1ef74:	000a0593          	mv	a1,s4
   1ef78:	000b0513          	mv	a0,s6
   1ef7c:	03d13023          	sd	t4,32(sp)
   1ef80:	01113c23          	sd	a7,24(sp)
   1ef84:	00e13823          	sd	a4,16(sp)
   1ef88:	8d0ff0ef          	jal	1e058 <__ssprint_r>
   1ef8c:	d4051863          	bnez	a0,1e4dc <_svfiprintf_r+0x28c>
   1ef90:	08013483          	ld	s1,128(sp)
   1ef94:	02013e83          	ld	t4,32(sp)
   1ef98:	01813883          	ld	a7,24(sp)
   1ef9c:	01013703          	ld	a4,16(sp)
   1efa0:	d14ff06f          	j	1e4b4 <_svfiprintf_r+0x264>
   1efa4:	4188083b          	subw	a6,a6,s8
   1efa8:	0008089b          	sext.w	a7,a6
   1efac:	ef285c63          	bge	a6,s2,1e6a4 <_svfiprintf_r+0x454>
   1efb0:	0009089b          	sext.w	a7,s2
   1efb4:	ef0ff06f          	j	1e6a4 <_svfiprintf_r+0x454>
   1efb8:	00000893          	li	a7,0
   1efbc:	00000813          	li	a6,0
   1efc0:	0ec10c13          	add	s8,sp,236
   1efc4:	ee0ff06f          	j	1e6a4 <_svfiprintf_r+0x454>
   1efc8:	0ec10813          	add	a6,sp,236
   1efcc:	03813f83          	ld	t6,56(sp)
   1efd0:	4007fe93          	and	t4,a5,1024
   1efd4:	00000513          	li	a0,0
   1efd8:	00080593          	mv	a1,a6
   1efdc:	00a00893          	li	a7,10
   1efe0:	00900e13          	li	t3,9
   1efe4:	0ff00f13          	li	t5,255
   1efe8:	0140006f          	j	1effc <_svfiprintf_r+0xdac>
   1efec:	0316d633          	divu	a2,a3,a7
   1eff0:	02de7a63          	bgeu	t3,a3,1f024 <_svfiprintf_r+0xdd4>
   1eff4:	00060693          	mv	a3,a2
   1eff8:	000c0593          	mv	a1,s8
   1effc:	fff58c13          	add	s8,a1,-1
   1f000:	0015051b          	addw	a0,a0,1
   1f004:	0316f633          	remu	a2,a3,a7
   1f008:	0306061b          	addw	a2,a2,48
   1f00c:	fec58fa3          	sb	a2,-1(a1)
   1f010:	fc0e8ee3          	beqz	t4,1efec <_svfiprintf_r+0xd9c>
   1f014:	000fc603          	lbu	a2,0(t6)
   1f018:	fca61ae3          	bne	a2,a0,1efec <_svfiprintf_r+0xd9c>
   1f01c:	fde608e3          	beq	a2,t5,1efec <_svfiprintf_r+0xd9c>
   1f020:	16de6663          	bltu	t3,a3,1f18c <_svfiprintf_r+0xf3c>
   1f024:	4188083b          	subw	a6,a6,s8
   1f028:	03f13c23          	sd	t6,56(sp)
   1f02c:	0008089b          	sext.w	a7,a6
   1f030:	11284263          	blt	a6,s2,1f134 <_svfiprintf_r+0xee4>
   1f034:	00030e93          	mv	t4,t1
   1f038:	e6cff06f          	j	1e6a4 <_svfiprintf_r+0x454>
   1f03c:	00000893          	li	a7,0
   1f040:	0ec10c13          	add	s8,sp,236
   1f044:	e60ff06f          	j	1e6a4 <_svfiprintf_r+0x454>
   1f048:	000dc683          	lbu	a3,0(s11)
   1f04c:	b0060e63          	beqz	a2,1e368 <_svfiprintf_r+0x118>
   1f050:	00064603          	lbu	a2,0(a2)
   1f054:	b0060a63          	beqz	a2,1e368 <_svfiprintf_r+0x118>
   1f058:	4007e793          	or	a5,a5,1024
   1f05c:	0007879b          	sext.w	a5,a5
   1f060:	b08ff06f          	j	1e368 <_svfiprintf_r+0x118>
   1f064:	04087793          	and	a5,a6,64
   1f068:	000ea683          	lw	a3,0(t4)
   1f06c:	20078863          	beqz	a5,1f27c <_svfiprintf_r+0x102c>
   1f070:	03069693          	sll	a3,a3,0x30
   1f074:	0306d693          	srl	a3,a3,0x30
   1f078:	80dff06f          	j	1e884 <_svfiprintf_r+0x634>
   1f07c:	0406f793          	and	a5,a3,64
   1f080:	000ea603          	lw	a2,0(t4)
   1f084:	20078463          	beqz	a5,1f28c <_svfiprintf_r+0x103c>
   1f088:	03061613          	sll	a2,a2,0x30
   1f08c:	03065613          	srl	a2,a2,0x30
   1f090:	f40ff06f          	j	1e7d0 <_svfiprintf_r+0x580>
   1f094:	0009089b          	sext.w	a7,s2
   1f098:	00058c13          	mv	s8,a1
   1f09c:	e08ff06f          	j	1e6a4 <_svfiprintf_r+0x454>
   1f0a0:	00003617          	auipc	a2,0x3
   1f0a4:	cb060613          	add	a2,a2,-848 # 21d50 <__clzdi2+0xa0>
   1f0a8:	00c13423          	sd	a2,8(sp)
   1f0ac:	0207f613          	and	a2,a5,32
   1f0b0:	008e8513          	add	a0,t4,8
   1f0b4:	06061c63          	bnez	a2,1f12c <_svfiprintf_r+0xedc>
   1f0b8:	0107f613          	and	a2,a5,16
   1f0bc:	06061863          	bnez	a2,1f12c <_svfiprintf_r+0xedc>
   1f0c0:	0407f593          	and	a1,a5,64
   1f0c4:	000ea603          	lw	a2,0(t4)
   1f0c8:	1a058263          	beqz	a1,1f26c <_svfiprintf_r+0x101c>
   1f0cc:	03061613          	sll	a2,a2,0x30
   1f0d0:	03065613          	srl	a2,a2,0x30
   1f0d4:	0017f593          	and	a1,a5,1
   1f0d8:	00058e63          	beqz	a1,1f0f4 <_svfiprintf_r+0xea4>
   1f0dc:	00060c63          	beqz	a2,1f0f4 <_svfiprintf_r+0xea4>
   1f0e0:	0027e793          	or	a5,a5,2
   1f0e4:	03000593          	li	a1,48
   1f0e8:	06b10423          	sb	a1,104(sp)
   1f0ec:	06d104a3          	sb	a3,105(sp)
   1f0f0:	0007879b          	sext.w	a5,a5
   1f0f4:	bff7f793          	and	a5,a5,-1025
   1f0f8:	0007879b          	sext.w	a5,a5
   1f0fc:	00050e93          	mv	t4,a0
   1f100:	e68ff06f          	j	1e768 <_svfiprintf_r+0x518>
   1f104:	00078693          	mv	a3,a5
   1f108:	eb0ff06f          	j	1e7b8 <_svfiprintf_r+0x568>
   1f10c:	00078813          	mv	a6,a5
   1f110:	f5cff06f          	j	1e86c <_svfiprintf_r+0x61c>
   1f114:	00003617          	auipc	a2,0x3
   1f118:	c5460613          	add	a2,a2,-940 # 21d68 <__clzdi2+0xb8>
   1f11c:	00c13423          	sd	a2,8(sp)
   1f120:	0207f613          	and	a2,a5,32
   1f124:	008e8513          	add	a0,t4,8
   1f128:	f80608e3          	beqz	a2,1f0b8 <_svfiprintf_r+0xe68>
   1f12c:	000eb603          	ld	a2,0(t4)
   1f130:	fa5ff06f          	j	1f0d4 <_svfiprintf_r+0xe84>
   1f134:	0009089b          	sext.w	a7,s2
   1f138:	00030e93          	mv	t4,t1
   1f13c:	d68ff06f          	j	1e6a4 <_svfiprintf_r+0x454>
   1f140:	000c0513          	mv	a0,s8
   1f144:	9b1f90ef          	jal	18af4 <strlen>
   1f148:	0005081b          	sext.w	a6,a0
   1f14c:	fff84893          	not	a7,a6
   1f150:	43f8d893          	sra	a7,a7,0x3f
   1f154:	02013e83          	ld	t4,32(sp)
   1f158:	01013783          	ld	a5,16(sp)
   1f15c:	01813703          	ld	a4,24(sp)
   1f160:	0108f8b3          	and	a7,a7,a6
   1f164:	00000913          	li	s2,0
   1f168:	d3cff06f          	j	1e6a4 <_svfiprintf_r+0x454>
   1f16c:	04000593          	li	a1,64
   1f170:	a2df70ef          	jal	16b9c <_malloc_r>
   1f174:	00aa3023          	sd	a0,0(s4)
   1f178:	00aa3c23          	sd	a0,24(s4)
   1f17c:	1a050a63          	beqz	a0,1f330 <_svfiprintf_r+0x10e0>
   1f180:	04000713          	li	a4,64
   1f184:	02ea2023          	sw	a4,32(s4)
   1f188:	924ff06f          	j	1e2ac <_svfiprintf_r+0x5c>
   1f18c:	00f13823          	sd	a5,16(sp)
   1f190:	03013783          	ld	a5,48(sp)
   1f194:	04013583          	ld	a1,64(sp)
   1f198:	05013823          	sd	a6,80(sp)
   1f19c:	40fc0c33          	sub	s8,s8,a5
   1f1a0:	00078613          	mv	a2,a5
   1f1a4:	000c0513          	mv	a0,s8
   1f1a8:	04d13423          	sd	a3,72(sp)
   1f1ac:	02613c23          	sd	t1,56(sp)
   1f1b0:	03d13423          	sd	t4,40(sp)
   1f1b4:	02e13023          	sd	a4,32(sp)
   1f1b8:	01f13c23          	sd	t6,24(sp)
   1f1bc:	a05f90ef          	jal	18bc0 <strncpy>
   1f1c0:	01813f83          	ld	t6,24(sp)
   1f1c4:	04813683          	ld	a3,72(sp)
   1f1c8:	00a00613          	li	a2,10
   1f1cc:	001fc583          	lbu	a1,1(t6)
   1f1d0:	02c6d633          	divu	a2,a3,a2
   1f1d4:	01013783          	ld	a5,16(sp)
   1f1d8:	00b036b3          	snez	a3,a1
   1f1dc:	02013703          	ld	a4,32(sp)
   1f1e0:	02813e83          	ld	t4,40(sp)
   1f1e4:	03813303          	ld	t1,56(sp)
   1f1e8:	05013803          	ld	a6,80(sp)
   1f1ec:	00df8fb3          	add	t6,t6,a3
   1f1f0:	00000513          	li	a0,0
   1f1f4:	00a00893          	li	a7,10
   1f1f8:	00900e13          	li	t3,9
   1f1fc:	0ff00f13          	li	t5,255
   1f200:	df5ff06f          	j	1eff4 <_svfiprintf_r+0xda4>
   1f204:	00068793          	mv	a5,a3
   1f208:	00000693          	li	a3,0
   1f20c:	e0068463          	beqz	a3,1e814 <_svfiprintf_r+0x5c4>
   1f210:	ab9ff06f          	j	1ecc8 <_svfiprintf_r+0xa78>
   1f214:	00080793          	mv	a5,a6
   1f218:	c60ff06f          	j	1e678 <_svfiprintf_r+0x428>
   1f21c:	2007e793          	or	a5,a5,512
   1f220:	001dc683          	lbu	a3,1(s11)
   1f224:	0007879b          	sext.w	a5,a5
   1f228:	001d8d93          	add	s11,s11,1
   1f22c:	93cff06f          	j	1e368 <_svfiprintf_r+0x118>
   1f230:	0207e793          	or	a5,a5,32
   1f234:	001dc683          	lbu	a3,1(s11)
   1f238:	0007879b          	sext.w	a5,a5
   1f23c:	001d8d93          	add	s11,s11,1
   1f240:	928ff06f          	j	1e368 <_svfiprintf_r+0x118>
   1f244:	00600693          	li	a3,6
   1f248:	0009081b          	sext.w	a6,s2
   1f24c:	0126f463          	bgeu	a3,s2,1f254 <_svfiprintf_r+0x1004>
   1f250:	00600813          	li	a6,6
   1f254:	00080893          	mv	a7,a6
   1f258:	00003c17          	auipc	s8,0x3
   1f25c:	b28c0c13          	add	s8,s8,-1240 # 21d80 <__clzdi2+0xd0>
   1f260:	988ff06f          	j	1e3e8 <_svfiprintf_r+0x198>
   1f264:	00000613          	li	a2,0
   1f268:	a61ff06f          	j	1ecc8 <_svfiprintf_r+0xa78>
   1f26c:	2007f593          	and	a1,a5,512
   1f270:	06058663          	beqz	a1,1f2dc <_svfiprintf_r+0x108c>
   1f274:	0ff67613          	zext.b	a2,a2
   1f278:	e5dff06f          	j	1f0d4 <_svfiprintf_r+0xe84>
   1f27c:	20087793          	and	a5,a6,512
   1f280:	04078863          	beqz	a5,1f2d0 <_svfiprintf_r+0x1080>
   1f284:	0ff6f693          	zext.b	a3,a3
   1f288:	dfcff06f          	j	1e884 <_svfiprintf_r+0x634>
   1f28c:	2006f793          	and	a5,a3,512
   1f290:	02078a63          	beqz	a5,1f2c4 <_svfiprintf_r+0x1074>
   1f294:	0ff67613          	zext.b	a2,a2
   1f298:	d38ff06f          	j	1e7d0 <_svfiprintf_r+0x580>
   1f29c:	2007f613          	and	a2,a5,512
   1f2a0:	00060c63          	beqz	a2,1f2b8 <_svfiprintf_r+0x1068>
   1f2a4:	0186969b          	sllw	a3,a3,0x18
   1f2a8:	4186d69b          	sraw	a3,a3,0x18
   1f2ac:	00068613          	mv	a2,a3
   1f2b0:	aa065463          	bgez	a2,1e558 <_svfiprintf_r+0x308>
   1f2b4:	ba8ff06f          	j	1e65c <_svfiprintf_r+0x40c>
   1f2b8:	00068613          	mv	a2,a3
   1f2bc:	a8065e63          	bgez	a2,1e558 <_svfiprintf_r+0x308>
   1f2c0:	b9cff06f          	j	1e65c <_svfiprintf_r+0x40c>
   1f2c4:	02061613          	sll	a2,a2,0x20
   1f2c8:	02065613          	srl	a2,a2,0x20
   1f2cc:	d04ff06f          	j	1e7d0 <_svfiprintf_r+0x580>
   1f2d0:	02069693          	sll	a3,a3,0x20
   1f2d4:	0206d693          	srl	a3,a3,0x20
   1f2d8:	dacff06f          	j	1e884 <_svfiprintf_r+0x634>
   1f2dc:	02061613          	sll	a2,a2,0x20
   1f2e0:	02065613          	srl	a2,a2,0x20
   1f2e4:	df1ff06f          	j	1f0d4 <_svfiprintf_r+0xe84>
   1f2e8:	01a69023          	sh	s10,0(a3)
   1f2ec:	008e8e93          	add	t4,t4,8
   1f2f0:	800ff06f          	j	1e2f0 <_svfiprintf_r+0xa0>
   1f2f4:	07010613          	add	a2,sp,112
   1f2f8:	000a0593          	mv	a1,s4
   1f2fc:	000b0513          	mv	a0,s6
   1f300:	d59fe0ef          	jal	1e058 <__ssprint_r>
   1f304:	9d8ff06f          	j	1e4dc <_svfiprintf_r+0x28c>
   1f308:	00090893          	mv	a7,s2
   1f30c:	00090813          	mv	a6,s2
   1f310:	00000913          	li	s2,0
   1f314:	b90ff06f          	j	1e6a4 <_svfiprintf_r+0x454>
   1f318:	00030e93          	mv	t4,t1
   1f31c:	03000693          	li	a3,48
   1f320:	b6cff06f          	j	1e68c <_svfiprintf_r+0x43c>
   1f324:	01a6a023          	sw	s10,0(a3)
   1f328:	008e8e93          	add	t4,t4,8
   1f32c:	fc5fe06f          	j	1e2f0 <_svfiprintf_r+0xa0>
   1f330:	00c00793          	li	a5,12
   1f334:	00fb2023          	sw	a5,0(s6)
   1f338:	fff00d13          	li	s10,-1
   1f33c:	9acff06f          	j	1e4e8 <_svfiprintf_r+0x298>
   1f340:	000ea683          	lw	a3,0(t4)
   1f344:	008e8e93          	add	t4,t4,8
   1f348:	0006891b          	sext.w	s2,a3
   1f34c:	0006d463          	bgez	a3,1f354 <_svfiprintf_r+0x1104>
   1f350:	fff00913          	li	s2,-1
   1f354:	001dc683          	lbu	a3,1(s11)
   1f358:	00060d93          	mv	s11,a2
   1f35c:	80cff06f          	j	1e368 <_svfiprintf_r+0x118>

000000000001f360 <__swbuf_r>:
   1f360:	fd010113          	add	sp,sp,-48
   1f364:	02813023          	sd	s0,32(sp)
   1f368:	00913c23          	sd	s1,24(sp)
   1f36c:	01213823          	sd	s2,16(sp)
   1f370:	02113423          	sd	ra,40(sp)
   1f374:	01313423          	sd	s3,8(sp)
   1f378:	00050913          	mv	s2,a0
   1f37c:	00058493          	mv	s1,a1
   1f380:	00060413          	mv	s0,a2
   1f384:	00050663          	beqz	a0,1f390 <__swbuf_r+0x30>
   1f388:	05052783          	lw	a5,80(a0)
   1f38c:	14078063          	beqz	a5,1f4cc <__swbuf_r+0x16c>
   1f390:	02842783          	lw	a5,40(s0)
   1f394:	01041703          	lh	a4,16(s0)
   1f398:	00f42623          	sw	a5,12(s0)
   1f39c:	00877793          	and	a5,a4,8
   1f3a0:	08078263          	beqz	a5,1f424 <__swbuf_r+0xc4>
   1f3a4:	01843783          	ld	a5,24(s0)
   1f3a8:	06078e63          	beqz	a5,1f424 <__swbuf_r+0xc4>
   1f3ac:	0ff4f993          	zext.b	s3,s1
   1f3b0:	03271693          	sll	a3,a4,0x32
   1f3b4:	00098493          	mv	s1,s3
   1f3b8:	0806da63          	bgez	a3,1f44c <__swbuf_r+0xec>
   1f3bc:	00043703          	ld	a4,0(s0)
   1f3c0:	02042683          	lw	a3,32(s0)
   1f3c4:	40f707bb          	subw	a5,a4,a5
   1f3c8:	0ad7da63          	bge	a5,a3,1f47c <__swbuf_r+0x11c>
   1f3cc:	00c42683          	lw	a3,12(s0)
   1f3d0:	00170613          	add	a2,a4,1
   1f3d4:	00c43023          	sd	a2,0(s0)
   1f3d8:	fff6869b          	addw	a3,a3,-1
   1f3dc:	00d42623          	sw	a3,12(s0)
   1f3e0:	01370023          	sb	s3,0(a4)
   1f3e4:	02042703          	lw	a4,32(s0)
   1f3e8:	0017879b          	addw	a5,a5,1
   1f3ec:	0cf70463          	beq	a4,a5,1f4b4 <__swbuf_r+0x154>
   1f3f0:	01045783          	lhu	a5,16(s0)
   1f3f4:	0017f793          	and	a5,a5,1
   1f3f8:	00078663          	beqz	a5,1f404 <__swbuf_r+0xa4>
   1f3fc:	00a00793          	li	a5,10
   1f400:	0af48a63          	beq	s1,a5,1f4b4 <__swbuf_r+0x154>
   1f404:	02813083          	ld	ra,40(sp)
   1f408:	02013403          	ld	s0,32(sp)
   1f40c:	01013903          	ld	s2,16(sp)
   1f410:	00813983          	ld	s3,8(sp)
   1f414:	00048513          	mv	a0,s1
   1f418:	01813483          	ld	s1,24(sp)
   1f41c:	03010113          	add	sp,sp,48
   1f420:	00008067          	ret
   1f424:	00040593          	mv	a1,s0
   1f428:	00090513          	mv	a0,s2
   1f42c:	935f30ef          	jal	12d60 <__swsetup_r>
   1f430:	08051a63          	bnez	a0,1f4c4 <__swbuf_r+0x164>
   1f434:	01041703          	lh	a4,16(s0)
   1f438:	0ff4f993          	zext.b	s3,s1
   1f43c:	01843783          	ld	a5,24(s0)
   1f440:	03271693          	sll	a3,a4,0x32
   1f444:	00098493          	mv	s1,s3
   1f448:	f606cae3          	bltz	a3,1f3bc <__swbuf_r+0x5c>
   1f44c:	0ac42683          	lw	a3,172(s0)
   1f450:	00002637          	lui	a2,0x2
   1f454:	00c76733          	or	a4,a4,a2
   1f458:	ffffe637          	lui	a2,0xffffe
   1f45c:	fff60613          	add	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd91df>
   1f460:	00c6f6b3          	and	a3,a3,a2
   1f464:	00e41823          	sh	a4,16(s0)
   1f468:	00043703          	ld	a4,0(s0)
   1f46c:	0ad42623          	sw	a3,172(s0)
   1f470:	02042683          	lw	a3,32(s0)
   1f474:	40f707bb          	subw	a5,a4,a5
   1f478:	f4d7cae3          	blt	a5,a3,1f3cc <__swbuf_r+0x6c>
   1f47c:	00040593          	mv	a1,s0
   1f480:	00090513          	mv	a0,s2
   1f484:	da5f30ef          	jal	13228 <_fflush_r>
   1f488:	02051e63          	bnez	a0,1f4c4 <__swbuf_r+0x164>
   1f48c:	00043703          	ld	a4,0(s0)
   1f490:	00c42683          	lw	a3,12(s0)
   1f494:	00100793          	li	a5,1
   1f498:	00170613          	add	a2,a4,1
   1f49c:	fff6869b          	addw	a3,a3,-1
   1f4a0:	00c43023          	sd	a2,0(s0)
   1f4a4:	00d42623          	sw	a3,12(s0)
   1f4a8:	01370023          	sb	s3,0(a4)
   1f4ac:	02042703          	lw	a4,32(s0)
   1f4b0:	f4f710e3          	bne	a4,a5,1f3f0 <__swbuf_r+0x90>
   1f4b4:	00040593          	mv	a1,s0
   1f4b8:	00090513          	mv	a0,s2
   1f4bc:	d6df30ef          	jal	13228 <_fflush_r>
   1f4c0:	f40502e3          	beqz	a0,1f404 <__swbuf_r+0xa4>
   1f4c4:	fff00493          	li	s1,-1
   1f4c8:	f3dff06f          	j	1f404 <__swbuf_r+0xa4>
   1f4cc:	978f40ef          	jal	13644 <__sinit>
   1f4d0:	ec1ff06f          	j	1f390 <__swbuf_r+0x30>

000000000001f4d4 <__swbuf>:
   1f4d4:	00058613          	mv	a2,a1
   1f4d8:	00050593          	mv	a1,a0
   1f4dc:	7581b503          	ld	a0,1880(gp) # 24d78 <_impure_ptr>
   1f4e0:	e81ff06f          	j	1f360 <__swbuf_r>

000000000001f4e4 <_wcrtomb_r>:
   1f4e4:	fd010113          	add	sp,sp,-48
   1f4e8:	02813023          	sd	s0,32(sp)
   1f4ec:	00913c23          	sd	s1,24(sp)
   1f4f0:	02113423          	sd	ra,40(sp)
   1f4f4:	00050413          	mv	s0,a0
   1f4f8:	00068493          	mv	s1,a3
   1f4fc:	6481b783          	ld	a5,1608(gp) # 24c68 <__global_locale+0xe0>
   1f500:	02058263          	beqz	a1,1f524 <_wcrtomb_r+0x40>
   1f504:	000780e7          	jalr	a5
   1f508:	fff00793          	li	a5,-1
   1f50c:	02f50663          	beq	a0,a5,1f538 <_wcrtomb_r+0x54>
   1f510:	02813083          	ld	ra,40(sp)
   1f514:	02013403          	ld	s0,32(sp)
   1f518:	01813483          	ld	s1,24(sp)
   1f51c:	03010113          	add	sp,sp,48
   1f520:	00008067          	ret
   1f524:	00000613          	li	a2,0
   1f528:	00010593          	mv	a1,sp
   1f52c:	000780e7          	jalr	a5
   1f530:	fff00793          	li	a5,-1
   1f534:	fcf51ee3          	bne	a0,a5,1f510 <_wcrtomb_r+0x2c>
   1f538:	0004a023          	sw	zero,0(s1)
   1f53c:	08a00793          	li	a5,138
   1f540:	02813083          	ld	ra,40(sp)
   1f544:	00f42023          	sw	a5,0(s0)
   1f548:	02013403          	ld	s0,32(sp)
   1f54c:	01813483          	ld	s1,24(sp)
   1f550:	03010113          	add	sp,sp,48
   1f554:	00008067          	ret

000000000001f558 <wcrtomb>:
   1f558:	fd010113          	add	sp,sp,-48
   1f55c:	02813023          	sd	s0,32(sp)
   1f560:	00913c23          	sd	s1,24(sp)
   1f564:	02113423          	sd	ra,40(sp)
   1f568:	00060413          	mv	s0,a2
   1f56c:	7581b483          	ld	s1,1880(gp) # 24d78 <_impure_ptr>
   1f570:	6481b783          	ld	a5,1608(gp) # 24c68 <__global_locale+0xe0>
   1f574:	02050a63          	beqz	a0,1f5a8 <wcrtomb+0x50>
   1f578:	00058613          	mv	a2,a1
   1f57c:	00040693          	mv	a3,s0
   1f580:	00050593          	mv	a1,a0
   1f584:	00048513          	mv	a0,s1
   1f588:	000780e7          	jalr	a5
   1f58c:	fff00793          	li	a5,-1
   1f590:	02f50a63          	beq	a0,a5,1f5c4 <wcrtomb+0x6c>
   1f594:	02813083          	ld	ra,40(sp)
   1f598:	02013403          	ld	s0,32(sp)
   1f59c:	01813483          	ld	s1,24(sp)
   1f5a0:	03010113          	add	sp,sp,48
   1f5a4:	00008067          	ret
   1f5a8:	00060693          	mv	a3,a2
   1f5ac:	00010593          	mv	a1,sp
   1f5b0:	00000613          	li	a2,0
   1f5b4:	00048513          	mv	a0,s1
   1f5b8:	000780e7          	jalr	a5
   1f5bc:	fff00793          	li	a5,-1
   1f5c0:	fcf51ae3          	bne	a0,a5,1f594 <wcrtomb+0x3c>
   1f5c4:	00042023          	sw	zero,0(s0)
   1f5c8:	02813083          	ld	ra,40(sp)
   1f5cc:	02013403          	ld	s0,32(sp)
   1f5d0:	08a00793          	li	a5,138
   1f5d4:	00f4a023          	sw	a5,0(s1)
   1f5d8:	01813483          	ld	s1,24(sp)
   1f5dc:	03010113          	add	sp,sp,48
   1f5e0:	00008067          	ret

000000000001f5e4 <_wctomb_r>:
   1f5e4:	6481b783          	ld	a5,1608(gp) # 24c68 <__global_locale+0xe0>
   1f5e8:	00078067          	jr	a5

000000000001f5ec <__ascii_wctomb>:
   1f5ec:	0006079b          	sext.w	a5,a2
   1f5f0:	02058463          	beqz	a1,1f618 <__ascii_wctomb+0x2c>
   1f5f4:	0ff00713          	li	a4,255
   1f5f8:	00f76863          	bltu	a4,a5,1f608 <__ascii_wctomb+0x1c>
   1f5fc:	00c58023          	sb	a2,0(a1)
   1f600:	00100513          	li	a0,1
   1f604:	00008067          	ret
   1f608:	08a00793          	li	a5,138
   1f60c:	00f52023          	sw	a5,0(a0)
   1f610:	fff00513          	li	a0,-1
   1f614:	00008067          	ret
   1f618:	00000513          	li	a0,0
   1f61c:	00008067          	ret

000000000001f620 <abort>:
   1f620:	ff010113          	add	sp,sp,-16
   1f624:	00600513          	li	a0,6
   1f628:	00113423          	sd	ra,8(sp)
   1f62c:	29c000ef          	jal	1f8c8 <raise>
   1f630:	00100513          	li	a0,1
   1f634:	5c0000ef          	jal	1fbf4 <_exit>

000000000001f638 <_init_signal_r>:
   1f638:	51853783          	ld	a5,1304(a0)
   1f63c:	00078663          	beqz	a5,1f648 <_init_signal_r+0x10>
   1f640:	00000513          	li	a0,0
   1f644:	00008067          	ret
   1f648:	ff010113          	add	sp,sp,-16
   1f64c:	10000593          	li	a1,256
   1f650:	00813023          	sd	s0,0(sp)
   1f654:	00113423          	sd	ra,8(sp)
   1f658:	00050413          	mv	s0,a0
   1f65c:	d40f70ef          	jal	16b9c <_malloc_r>
   1f660:	50a43c23          	sd	a0,1304(s0)
   1f664:	02050463          	beqz	a0,1f68c <_init_signal_r+0x54>
   1f668:	10050793          	add	a5,a0,256
   1f66c:	00053023          	sd	zero,0(a0)
   1f670:	00850513          	add	a0,a0,8
   1f674:	fef51ce3          	bne	a0,a5,1f66c <_init_signal_r+0x34>
   1f678:	00000513          	li	a0,0
   1f67c:	00813083          	ld	ra,8(sp)
   1f680:	00013403          	ld	s0,0(sp)
   1f684:	01010113          	add	sp,sp,16
   1f688:	00008067          	ret
   1f68c:	fff00513          	li	a0,-1
   1f690:	fedff06f          	j	1f67c <_init_signal_r+0x44>

000000000001f694 <_signal_r>:
   1f694:	fd010113          	add	sp,sp,-48
   1f698:	00913c23          	sd	s1,24(sp)
   1f69c:	02113423          	sd	ra,40(sp)
   1f6a0:	02813023          	sd	s0,32(sp)
   1f6a4:	01f00793          	li	a5,31
   1f6a8:	00050493          	mv	s1,a0
   1f6ac:	02b7ea63          	bltu	a5,a1,1f6e0 <_signal_r+0x4c>
   1f6b0:	51853783          	ld	a5,1304(a0)
   1f6b4:	00058413          	mv	s0,a1
   1f6b8:	02078c63          	beqz	a5,1f6f0 <_signal_r+0x5c>
   1f6bc:	00341413          	sll	s0,s0,0x3
   1f6c0:	008787b3          	add	a5,a5,s0
   1f6c4:	0007b503          	ld	a0,0(a5)
   1f6c8:	00c7b023          	sd	a2,0(a5)
   1f6cc:	02813083          	ld	ra,40(sp)
   1f6d0:	02013403          	ld	s0,32(sp)
   1f6d4:	01813483          	ld	s1,24(sp)
   1f6d8:	03010113          	add	sp,sp,48
   1f6dc:	00008067          	ret
   1f6e0:	01600793          	li	a5,22
   1f6e4:	00f52023          	sw	a5,0(a0)
   1f6e8:	fff00513          	li	a0,-1
   1f6ec:	fe1ff06f          	j	1f6cc <_signal_r+0x38>
   1f6f0:	10000593          	li	a1,256
   1f6f4:	00c13423          	sd	a2,8(sp)
   1f6f8:	ca4f70ef          	jal	16b9c <_malloc_r>
   1f6fc:	50a4bc23          	sd	a0,1304(s1)
   1f700:	00813603          	ld	a2,8(sp)
   1f704:	00050793          	mv	a5,a0
   1f708:	00050713          	mv	a4,a0
   1f70c:	10050693          	add	a3,a0,256
   1f710:	fc050ce3          	beqz	a0,1f6e8 <_signal_r+0x54>
   1f714:	00073023          	sd	zero,0(a4)
   1f718:	00870713          	add	a4,a4,8
   1f71c:	fed71ce3          	bne	a4,a3,1f714 <_signal_r+0x80>
   1f720:	f9dff06f          	j	1f6bc <_signal_r+0x28>

000000000001f724 <_raise_r>:
   1f724:	fe010113          	add	sp,sp,-32
   1f728:	00913423          	sd	s1,8(sp)
   1f72c:	00113c23          	sd	ra,24(sp)
   1f730:	00813823          	sd	s0,16(sp)
   1f734:	01f00793          	li	a5,31
   1f738:	00050493          	mv	s1,a0
   1f73c:	08b7ee63          	bltu	a5,a1,1f7d8 <_raise_r+0xb4>
   1f740:	51853783          	ld	a5,1304(a0)
   1f744:	00058413          	mv	s0,a1
   1f748:	04078463          	beqz	a5,1f790 <_raise_r+0x6c>
   1f74c:	00359713          	sll	a4,a1,0x3
   1f750:	00e787b3          	add	a5,a5,a4
   1f754:	0007b703          	ld	a4,0(a5)
   1f758:	02070c63          	beqz	a4,1f790 <_raise_r+0x6c>
   1f75c:	00100693          	li	a3,1
   1f760:	00d70c63          	beq	a4,a3,1f778 <_raise_r+0x54>
   1f764:	fff00693          	li	a3,-1
   1f768:	04d70863          	beq	a4,a3,1f7b8 <_raise_r+0x94>
   1f76c:	0007b023          	sd	zero,0(a5)
   1f770:	00058513          	mv	a0,a1
   1f774:	000700e7          	jalr	a4
   1f778:	00000513          	li	a0,0
   1f77c:	01813083          	ld	ra,24(sp)
   1f780:	01013403          	ld	s0,16(sp)
   1f784:	00813483          	ld	s1,8(sp)
   1f788:	02010113          	add	sp,sp,32
   1f78c:	00008067          	ret
   1f790:	00048513          	mv	a0,s1
   1f794:	418000ef          	jal	1fbac <_getpid_r>
   1f798:	00040613          	mv	a2,s0
   1f79c:	01013403          	ld	s0,16(sp)
   1f7a0:	01813083          	ld	ra,24(sp)
   1f7a4:	00050593          	mv	a1,a0
   1f7a8:	00048513          	mv	a0,s1
   1f7ac:	00813483          	ld	s1,8(sp)
   1f7b0:	02010113          	add	sp,sp,32
   1f7b4:	3a00006f          	j	1fb54 <_kill_r>
   1f7b8:	01813083          	ld	ra,24(sp)
   1f7bc:	01013403          	ld	s0,16(sp)
   1f7c0:	01600793          	li	a5,22
   1f7c4:	00f52023          	sw	a5,0(a0)
   1f7c8:	00813483          	ld	s1,8(sp)
   1f7cc:	00100513          	li	a0,1
   1f7d0:	02010113          	add	sp,sp,32
   1f7d4:	00008067          	ret
   1f7d8:	01600793          	li	a5,22
   1f7dc:	00f52023          	sw	a5,0(a0)
   1f7e0:	fff00513          	li	a0,-1
   1f7e4:	f99ff06f          	j	1f77c <_raise_r+0x58>

000000000001f7e8 <__sigtramp_r>:
   1f7e8:	01f00793          	li	a5,31
   1f7ec:	0cb7ea63          	bltu	a5,a1,1f8c0 <__sigtramp_r+0xd8>
   1f7f0:	51853783          	ld	a5,1304(a0)
   1f7f4:	fe010113          	add	sp,sp,-32
   1f7f8:	00813823          	sd	s0,16(sp)
   1f7fc:	00913423          	sd	s1,8(sp)
   1f800:	00113c23          	sd	ra,24(sp)
   1f804:	00058413          	mv	s0,a1
   1f808:	00050493          	mv	s1,a0
   1f80c:	08078063          	beqz	a5,1f88c <__sigtramp_r+0xa4>
   1f810:	00341713          	sll	a4,s0,0x3
   1f814:	00e787b3          	add	a5,a5,a4
   1f818:	0007b703          	ld	a4,0(a5)
   1f81c:	02070c63          	beqz	a4,1f854 <__sigtramp_r+0x6c>
   1f820:	fff00693          	li	a3,-1
   1f824:	06d70063          	beq	a4,a3,1f884 <__sigtramp_r+0x9c>
   1f828:	00100693          	li	a3,1
   1f82c:	04d70063          	beq	a4,a3,1f86c <__sigtramp_r+0x84>
   1f830:	00040513          	mv	a0,s0
   1f834:	0007b023          	sd	zero,0(a5)
   1f838:	000700e7          	jalr	a4
   1f83c:	00000513          	li	a0,0
   1f840:	01813083          	ld	ra,24(sp)
   1f844:	01013403          	ld	s0,16(sp)
   1f848:	00813483          	ld	s1,8(sp)
   1f84c:	02010113          	add	sp,sp,32
   1f850:	00008067          	ret
   1f854:	01813083          	ld	ra,24(sp)
   1f858:	01013403          	ld	s0,16(sp)
   1f85c:	00813483          	ld	s1,8(sp)
   1f860:	00100513          	li	a0,1
   1f864:	02010113          	add	sp,sp,32
   1f868:	00008067          	ret
   1f86c:	01813083          	ld	ra,24(sp)
   1f870:	01013403          	ld	s0,16(sp)
   1f874:	00813483          	ld	s1,8(sp)
   1f878:	00300513          	li	a0,3
   1f87c:	02010113          	add	sp,sp,32
   1f880:	00008067          	ret
   1f884:	00200513          	li	a0,2
   1f888:	fb9ff06f          	j	1f840 <__sigtramp_r+0x58>
   1f88c:	10000593          	li	a1,256
   1f890:	b0cf70ef          	jal	16b9c <_malloc_r>
   1f894:	50a4bc23          	sd	a0,1304(s1)
   1f898:	00050793          	mv	a5,a0
   1f89c:	00050e63          	beqz	a0,1f8b8 <__sigtramp_r+0xd0>
   1f8a0:	00050713          	mv	a4,a0
   1f8a4:	10050693          	add	a3,a0,256
   1f8a8:	00073023          	sd	zero,0(a4)
   1f8ac:	00870713          	add	a4,a4,8
   1f8b0:	fee69ce3          	bne	a3,a4,1f8a8 <__sigtramp_r+0xc0>
   1f8b4:	f5dff06f          	j	1f810 <__sigtramp_r+0x28>
   1f8b8:	fff00513          	li	a0,-1
   1f8bc:	f85ff06f          	j	1f840 <__sigtramp_r+0x58>
   1f8c0:	fff00513          	li	a0,-1
   1f8c4:	00008067          	ret

000000000001f8c8 <raise>:
   1f8c8:	fe010113          	add	sp,sp,-32
   1f8cc:	00913423          	sd	s1,8(sp)
   1f8d0:	00113c23          	sd	ra,24(sp)
   1f8d4:	00813823          	sd	s0,16(sp)
   1f8d8:	01f00793          	li	a5,31
   1f8dc:	7581b483          	ld	s1,1880(gp) # 24d78 <_impure_ptr>
   1f8e0:	08a7ec63          	bltu	a5,a0,1f978 <raise+0xb0>
   1f8e4:	5184b783          	ld	a5,1304(s1)
   1f8e8:	00050413          	mv	s0,a0
   1f8ec:	04078263          	beqz	a5,1f930 <raise+0x68>
   1f8f0:	00351713          	sll	a4,a0,0x3
   1f8f4:	00e787b3          	add	a5,a5,a4
   1f8f8:	0007b703          	ld	a4,0(a5)
   1f8fc:	02070a63          	beqz	a4,1f930 <raise+0x68>
   1f900:	00100693          	li	a3,1
   1f904:	00d70a63          	beq	a4,a3,1f918 <raise+0x50>
   1f908:	fff00693          	li	a3,-1
   1f90c:	04d70663          	beq	a4,a3,1f958 <raise+0x90>
   1f910:	0007b023          	sd	zero,0(a5)
   1f914:	000700e7          	jalr	a4
   1f918:	00000513          	li	a0,0
   1f91c:	01813083          	ld	ra,24(sp)
   1f920:	01013403          	ld	s0,16(sp)
   1f924:	00813483          	ld	s1,8(sp)
   1f928:	02010113          	add	sp,sp,32
   1f92c:	00008067          	ret
   1f930:	00048513          	mv	a0,s1
   1f934:	278000ef          	jal	1fbac <_getpid_r>
   1f938:	00040613          	mv	a2,s0
   1f93c:	01013403          	ld	s0,16(sp)
   1f940:	01813083          	ld	ra,24(sp)
   1f944:	00050593          	mv	a1,a0
   1f948:	00048513          	mv	a0,s1
   1f94c:	00813483          	ld	s1,8(sp)
   1f950:	02010113          	add	sp,sp,32
   1f954:	2000006f          	j	1fb54 <_kill_r>
   1f958:	01813083          	ld	ra,24(sp)
   1f95c:	01013403          	ld	s0,16(sp)
   1f960:	01600793          	li	a5,22
   1f964:	00f4a023          	sw	a5,0(s1)
   1f968:	00100513          	li	a0,1
   1f96c:	00813483          	ld	s1,8(sp)
   1f970:	02010113          	add	sp,sp,32
   1f974:	00008067          	ret
   1f978:	01600793          	li	a5,22
   1f97c:	00f4a023          	sw	a5,0(s1)
   1f980:	fff00513          	li	a0,-1
   1f984:	f99ff06f          	j	1f91c <raise+0x54>

000000000001f988 <signal>:
   1f988:	fe010113          	add	sp,sp,-32
   1f98c:	01213023          	sd	s2,0(sp)
   1f990:	00113c23          	sd	ra,24(sp)
   1f994:	00813823          	sd	s0,16(sp)
   1f998:	00913423          	sd	s1,8(sp)
   1f99c:	01f00793          	li	a5,31
   1f9a0:	7581b903          	ld	s2,1880(gp) # 24d78 <_impure_ptr>
   1f9a4:	02a7ee63          	bltu	a5,a0,1f9e0 <signal+0x58>
   1f9a8:	00050413          	mv	s0,a0
   1f9ac:	51893503          	ld	a0,1304(s2)
   1f9b0:	00058493          	mv	s1,a1
   1f9b4:	02050e63          	beqz	a0,1f9f0 <signal+0x68>
   1f9b8:	00341413          	sll	s0,s0,0x3
   1f9bc:	008507b3          	add	a5,a0,s0
   1f9c0:	0007b503          	ld	a0,0(a5)
   1f9c4:	0097b023          	sd	s1,0(a5)
   1f9c8:	01813083          	ld	ra,24(sp)
   1f9cc:	01013403          	ld	s0,16(sp)
   1f9d0:	00813483          	ld	s1,8(sp)
   1f9d4:	00013903          	ld	s2,0(sp)
   1f9d8:	02010113          	add	sp,sp,32
   1f9dc:	00008067          	ret
   1f9e0:	01600793          	li	a5,22
   1f9e4:	00f92023          	sw	a5,0(s2)
   1f9e8:	fff00513          	li	a0,-1
   1f9ec:	fddff06f          	j	1f9c8 <signal+0x40>
   1f9f0:	10000593          	li	a1,256
   1f9f4:	00090513          	mv	a0,s2
   1f9f8:	9a4f70ef          	jal	16b9c <_malloc_r>
   1f9fc:	50a93c23          	sd	a0,1304(s2)
   1fa00:	00050793          	mv	a5,a0
   1fa04:	10050713          	add	a4,a0,256
   1fa08:	fe0500e3          	beqz	a0,1f9e8 <signal+0x60>
   1fa0c:	0007b023          	sd	zero,0(a5)
   1fa10:	00878793          	add	a5,a5,8
   1fa14:	fee79ce3          	bne	a5,a4,1fa0c <signal+0x84>
   1fa18:	fa1ff06f          	j	1f9b8 <signal+0x30>

000000000001fa1c <_init_signal>:
   1fa1c:	ff010113          	add	sp,sp,-16
   1fa20:	00813023          	sd	s0,0(sp)
   1fa24:	7581b403          	ld	s0,1880(gp) # 24d78 <_impure_ptr>
   1fa28:	51843783          	ld	a5,1304(s0)
   1fa2c:	00113423          	sd	ra,8(sp)
   1fa30:	00078c63          	beqz	a5,1fa48 <_init_signal+0x2c>
   1fa34:	00000513          	li	a0,0
   1fa38:	00813083          	ld	ra,8(sp)
   1fa3c:	00013403          	ld	s0,0(sp)
   1fa40:	01010113          	add	sp,sp,16
   1fa44:	00008067          	ret
   1fa48:	10000593          	li	a1,256
   1fa4c:	00040513          	mv	a0,s0
   1fa50:	94cf70ef          	jal	16b9c <_malloc_r>
   1fa54:	50a43c23          	sd	a0,1304(s0)
   1fa58:	00050c63          	beqz	a0,1fa70 <_init_signal+0x54>
   1fa5c:	10050793          	add	a5,a0,256
   1fa60:	00053023          	sd	zero,0(a0)
   1fa64:	00850513          	add	a0,a0,8
   1fa68:	fef51ce3          	bne	a0,a5,1fa60 <_init_signal+0x44>
   1fa6c:	fc9ff06f          	j	1fa34 <_init_signal+0x18>
   1fa70:	fff00513          	li	a0,-1
   1fa74:	fc5ff06f          	j	1fa38 <_init_signal+0x1c>

000000000001fa78 <__sigtramp>:
   1fa78:	fe010113          	add	sp,sp,-32
   1fa7c:	00913423          	sd	s1,8(sp)
   1fa80:	00113c23          	sd	ra,24(sp)
   1fa84:	00813823          	sd	s0,16(sp)
   1fa88:	01f00793          	li	a5,31
   1fa8c:	7581b483          	ld	s1,1880(gp) # 24d78 <_impure_ptr>
   1fa90:	0aa7ee63          	bltu	a5,a0,1fb4c <__sigtramp+0xd4>
   1fa94:	5184b783          	ld	a5,1304(s1)
   1fa98:	00050413          	mv	s0,a0
   1fa9c:	08078063          	beqz	a5,1fb1c <__sigtramp+0xa4>
   1faa0:	00341713          	sll	a4,s0,0x3
   1faa4:	00e787b3          	add	a5,a5,a4
   1faa8:	0007b703          	ld	a4,0(a5)
   1faac:	02070c63          	beqz	a4,1fae4 <__sigtramp+0x6c>
   1fab0:	fff00693          	li	a3,-1
   1fab4:	06d70063          	beq	a4,a3,1fb14 <__sigtramp+0x9c>
   1fab8:	00100693          	li	a3,1
   1fabc:	04d70063          	beq	a4,a3,1fafc <__sigtramp+0x84>
   1fac0:	00040513          	mv	a0,s0
   1fac4:	0007b023          	sd	zero,0(a5)
   1fac8:	000700e7          	jalr	a4
   1facc:	00000513          	li	a0,0
   1fad0:	01813083          	ld	ra,24(sp)
   1fad4:	01013403          	ld	s0,16(sp)
   1fad8:	00813483          	ld	s1,8(sp)
   1fadc:	02010113          	add	sp,sp,32
   1fae0:	00008067          	ret
   1fae4:	01813083          	ld	ra,24(sp)
   1fae8:	01013403          	ld	s0,16(sp)
   1faec:	00813483          	ld	s1,8(sp)
   1faf0:	00100513          	li	a0,1
   1faf4:	02010113          	add	sp,sp,32
   1faf8:	00008067          	ret
   1fafc:	01813083          	ld	ra,24(sp)
   1fb00:	01013403          	ld	s0,16(sp)
   1fb04:	00813483          	ld	s1,8(sp)
   1fb08:	00300513          	li	a0,3
   1fb0c:	02010113          	add	sp,sp,32
   1fb10:	00008067          	ret
   1fb14:	00200513          	li	a0,2
   1fb18:	fb9ff06f          	j	1fad0 <__sigtramp+0x58>
   1fb1c:	10000593          	li	a1,256
   1fb20:	00048513          	mv	a0,s1
   1fb24:	878f70ef          	jal	16b9c <_malloc_r>
   1fb28:	50a4bc23          	sd	a0,1304(s1)
   1fb2c:	00050793          	mv	a5,a0
   1fb30:	00050e63          	beqz	a0,1fb4c <__sigtramp+0xd4>
   1fb34:	00050713          	mv	a4,a0
   1fb38:	10050693          	add	a3,a0,256
   1fb3c:	00073023          	sd	zero,0(a4)
   1fb40:	00870713          	add	a4,a4,8
   1fb44:	fee69ce3          	bne	a3,a4,1fb3c <__sigtramp+0xc4>
   1fb48:	f59ff06f          	j	1faa0 <__sigtramp+0x28>
   1fb4c:	fff00513          	li	a0,-1
   1fb50:	f81ff06f          	j	1fad0 <__sigtramp+0x58>

000000000001fb54 <_kill_r>:
   1fb54:	ff010113          	add	sp,sp,-16
   1fb58:	00058713          	mv	a4,a1
   1fb5c:	00813023          	sd	s0,0(sp)
   1fb60:	00060593          	mv	a1,a2
   1fb64:	00050413          	mv	s0,a0
   1fb68:	00070513          	mv	a0,a4
   1fb6c:	7801a823          	sw	zero,1936(gp) # 24db0 <errno>
   1fb70:	00113423          	sd	ra,8(sp)
   1fb74:	15c000ef          	jal	1fcd0 <_kill>
   1fb78:	fff00793          	li	a5,-1
   1fb7c:	00f50a63          	beq	a0,a5,1fb90 <_kill_r+0x3c>
   1fb80:	00813083          	ld	ra,8(sp)
   1fb84:	00013403          	ld	s0,0(sp)
   1fb88:	01010113          	add	sp,sp,16
   1fb8c:	00008067          	ret
   1fb90:	7901a783          	lw	a5,1936(gp) # 24db0 <errno>
   1fb94:	fe0786e3          	beqz	a5,1fb80 <_kill_r+0x2c>
   1fb98:	00813083          	ld	ra,8(sp)
   1fb9c:	00f42023          	sw	a5,0(s0)
   1fba0:	00013403          	ld	s0,0(sp)
   1fba4:	01010113          	add	sp,sp,16
   1fba8:	00008067          	ret

000000000001fbac <_getpid_r>:
   1fbac:	0dc0006f          	j	1fc88 <_getpid>

000000000001fbb0 <_close>:
   1fbb0:	ff010113          	add	sp,sp,-16
   1fbb4:	00113423          	sd	ra,8(sp)
   1fbb8:	00813023          	sd	s0,0(sp)
   1fbbc:	03900893          	li	a7,57
   1fbc0:	00000073          	ecall
   1fbc4:	00050413          	mv	s0,a0
   1fbc8:	00054c63          	bltz	a0,1fbe0 <_close+0x30>
   1fbcc:	0005051b          	sext.w	a0,a0
   1fbd0:	00813083          	ld	ra,8(sp)
   1fbd4:	00013403          	ld	s0,0(sp)
   1fbd8:	01010113          	add	sp,sp,16
   1fbdc:	00008067          	ret
   1fbe0:	ec5fc0ef          	jal	1caa4 <__errno>
   1fbe4:	4080043b          	negw	s0,s0
   1fbe8:	00852023          	sw	s0,0(a0)
   1fbec:	fff00513          	li	a0,-1
   1fbf0:	fe1ff06f          	j	1fbd0 <_close+0x20>

000000000001fbf4 <_exit>:
   1fbf4:	05d00893          	li	a7,93
   1fbf8:	00000073          	ecall
   1fbfc:	00054463          	bltz	a0,1fc04 <_exit+0x10>
   1fc00:	0000006f          	j	1fc00 <_exit+0xc>
   1fc04:	ff010113          	add	sp,sp,-16
   1fc08:	00813023          	sd	s0,0(sp)
   1fc0c:	00050413          	mv	s0,a0
   1fc10:	00113423          	sd	ra,8(sp)
   1fc14:	4080043b          	negw	s0,s0
   1fc18:	e8dfc0ef          	jal	1caa4 <__errno>
   1fc1c:	00852023          	sw	s0,0(a0)
   1fc20:	0000006f          	j	1fc20 <_exit+0x2c>

000000000001fc24 <_fstat>:
   1fc24:	f6010113          	add	sp,sp,-160
   1fc28:	08913423          	sd	s1,136(sp)
   1fc2c:	08113c23          	sd	ra,152(sp)
   1fc30:	00058493          	mv	s1,a1
   1fc34:	08813823          	sd	s0,144(sp)
   1fc38:	05000893          	li	a7,80
   1fc3c:	00010593          	mv	a1,sp
   1fc40:	00000073          	ecall
   1fc44:	00050413          	mv	s0,a0
   1fc48:	02054663          	bltz	a0,1fc74 <_fstat+0x50>
   1fc4c:	0005041b          	sext.w	s0,a0
   1fc50:	00048513          	mv	a0,s1
   1fc54:	00010593          	mv	a1,sp
   1fc58:	1e4000ef          	jal	1fe3c <_conv_stat>
   1fc5c:	09813083          	ld	ra,152(sp)
   1fc60:	00040513          	mv	a0,s0
   1fc64:	09013403          	ld	s0,144(sp)
   1fc68:	08813483          	ld	s1,136(sp)
   1fc6c:	0a010113          	add	sp,sp,160
   1fc70:	00008067          	ret
   1fc74:	4080043b          	negw	s0,s0
   1fc78:	e2dfc0ef          	jal	1caa4 <__errno>
   1fc7c:	00852023          	sw	s0,0(a0)
   1fc80:	fff00413          	li	s0,-1
   1fc84:	fcdff06f          	j	1fc50 <_fstat+0x2c>

000000000001fc88 <_getpid>:
   1fc88:	00100513          	li	a0,1
   1fc8c:	00008067          	ret

000000000001fc90 <_isatty>:
   1fc90:	f8010113          	add	sp,sp,-128
   1fc94:	00810593          	add	a1,sp,8
   1fc98:	06113c23          	sd	ra,120(sp)
   1fc9c:	f89ff0ef          	jal	1fc24 <_fstat>
   1fca0:	fff00793          	li	a5,-1
   1fca4:	00f50e63          	beq	a0,a5,1fcc0 <_isatty+0x30>
   1fca8:	00c12503          	lw	a0,12(sp)
   1fcac:	07813083          	ld	ra,120(sp)
   1fcb0:	40d5551b          	sraw	a0,a0,0xd
   1fcb4:	00157513          	and	a0,a0,1
   1fcb8:	08010113          	add	sp,sp,128
   1fcbc:	00008067          	ret
   1fcc0:	07813083          	ld	ra,120(sp)
   1fcc4:	00000513          	li	a0,0
   1fcc8:	08010113          	add	sp,sp,128
   1fccc:	00008067          	ret

000000000001fcd0 <_kill>:
   1fcd0:	ff010113          	add	sp,sp,-16
   1fcd4:	00113423          	sd	ra,8(sp)
   1fcd8:	dcdfc0ef          	jal	1caa4 <__errno>
   1fcdc:	00813083          	ld	ra,8(sp)
   1fce0:	01600793          	li	a5,22
   1fce4:	00f52023          	sw	a5,0(a0)
   1fce8:	fff00513          	li	a0,-1
   1fcec:	01010113          	add	sp,sp,16
   1fcf0:	00008067          	ret

000000000001fcf4 <_lseek>:
   1fcf4:	ff010113          	add	sp,sp,-16
   1fcf8:	00113423          	sd	ra,8(sp)
   1fcfc:	00813023          	sd	s0,0(sp)
   1fd00:	03e00893          	li	a7,62
   1fd04:	00000073          	ecall
   1fd08:	00050413          	mv	s0,a0
   1fd0c:	00054c63          	bltz	a0,1fd24 <_lseek+0x30>
   1fd10:	00813083          	ld	ra,8(sp)
   1fd14:	00040513          	mv	a0,s0
   1fd18:	00013403          	ld	s0,0(sp)
   1fd1c:	01010113          	add	sp,sp,16
   1fd20:	00008067          	ret
   1fd24:	4080043b          	negw	s0,s0
   1fd28:	d7dfc0ef          	jal	1caa4 <__errno>
   1fd2c:	00852023          	sw	s0,0(a0)
   1fd30:	fff00413          	li	s0,-1
   1fd34:	fddff06f          	j	1fd10 <_lseek+0x1c>

000000000001fd38 <_read>:
   1fd38:	ff010113          	add	sp,sp,-16
   1fd3c:	00113423          	sd	ra,8(sp)
   1fd40:	00813023          	sd	s0,0(sp)
   1fd44:	03f00893          	li	a7,63
   1fd48:	00000073          	ecall
   1fd4c:	00050413          	mv	s0,a0
   1fd50:	00054c63          	bltz	a0,1fd68 <_read+0x30>
   1fd54:	00813083          	ld	ra,8(sp)
   1fd58:	00040513          	mv	a0,s0
   1fd5c:	00013403          	ld	s0,0(sp)
   1fd60:	01010113          	add	sp,sp,16
   1fd64:	00008067          	ret
   1fd68:	4080043b          	negw	s0,s0
   1fd6c:	d39fc0ef          	jal	1caa4 <__errno>
   1fd70:	00852023          	sw	s0,0(a0)
   1fd74:	fff00413          	li	s0,-1
   1fd78:	fddff06f          	j	1fd54 <_read+0x1c>

000000000001fd7c <_sbrk>:
   1fd7c:	79818693          	add	a3,gp,1944 # 24db8 <heap_end.0>
   1fd80:	0006b703          	ld	a4,0(a3)
   1fd84:	ff010113          	add	sp,sp,-16
   1fd88:	00113423          	sd	ra,8(sp)
   1fd8c:	00050793          	mv	a5,a0
   1fd90:	02071063          	bnez	a4,1fdb0 <_sbrk+0x34>
   1fd94:	0d600893          	li	a7,214
   1fd98:	00000513          	li	a0,0
   1fd9c:	00000073          	ecall
   1fda0:	fff00613          	li	a2,-1
   1fda4:	00050713          	mv	a4,a0
   1fda8:	02c50a63          	beq	a0,a2,1fddc <_sbrk+0x60>
   1fdac:	00a6b023          	sd	a0,0(a3)
   1fdb0:	0d600893          	li	a7,214
   1fdb4:	00e78533          	add	a0,a5,a4
   1fdb8:	00000073          	ecall
   1fdbc:	0006b703          	ld	a4,0(a3)
   1fdc0:	00e787b3          	add	a5,a5,a4
   1fdc4:	00f51c63          	bne	a0,a5,1fddc <_sbrk+0x60>
   1fdc8:	00813083          	ld	ra,8(sp)
   1fdcc:	00a6b023          	sd	a0,0(a3)
   1fdd0:	00070513          	mv	a0,a4
   1fdd4:	01010113          	add	sp,sp,16
   1fdd8:	00008067          	ret
   1fddc:	cc9fc0ef          	jal	1caa4 <__errno>
   1fde0:	00813083          	ld	ra,8(sp)
   1fde4:	00c00793          	li	a5,12
   1fde8:	00f52023          	sw	a5,0(a0)
   1fdec:	fff00513          	li	a0,-1
   1fdf0:	01010113          	add	sp,sp,16
   1fdf4:	00008067          	ret

000000000001fdf8 <_write>:
   1fdf8:	ff010113          	add	sp,sp,-16
   1fdfc:	00113423          	sd	ra,8(sp)
   1fe00:	00813023          	sd	s0,0(sp)
   1fe04:	04000893          	li	a7,64
   1fe08:	00000073          	ecall
   1fe0c:	00050413          	mv	s0,a0
   1fe10:	00054c63          	bltz	a0,1fe28 <_write+0x30>
   1fe14:	00813083          	ld	ra,8(sp)
   1fe18:	00040513          	mv	a0,s0
   1fe1c:	00013403          	ld	s0,0(sp)
   1fe20:	01010113          	add	sp,sp,16
   1fe24:	00008067          	ret
   1fe28:	4080043b          	negw	s0,s0
   1fe2c:	c79fc0ef          	jal	1caa4 <__errno>
   1fe30:	00852023          	sw	s0,0(a0)
   1fe34:	fff00413          	li	s0,-1
   1fe38:	fddff06f          	j	1fe14 <_write+0x1c>

000000000001fe3c <_conv_stat>:
   1fe3c:	0185d703          	lhu	a4,24(a1)
   1fe40:	0145d783          	lhu	a5,20(a1)
   1fe44:	01c5a603          	lw	a2,28(a1)
   1fe48:	0205b683          	ld	a3,32(a1)
   1fe4c:	0005b303          	ld	t1,0(a1)
   1fe50:	0085b883          	ld	a7,8(a1)
   1fe54:	0105a803          	lw	a6,16(a1)
   1fe58:	0107171b          	sllw	a4,a4,0x10
   1fe5c:	00e7e7b3          	or	a5,a5,a4
   1fe60:	00c51623          	sh	a2,12(a0)
   1fe64:	00d51723          	sh	a3,14(a0)
   1fe68:	00651023          	sh	t1,0(a0)
   1fe6c:	01151123          	sh	a7,2(a0)
   1fe70:	01052223          	sw	a6,4(a0)
   1fe74:	00f52423          	sw	a5,8(a0)
   1fe78:	0305b703          	ld	a4,48(a1)
   1fe7c:	0485b783          	ld	a5,72(a1)
   1fe80:	0405b603          	ld	a2,64(a1)
   1fe84:	0385a683          	lw	a3,56(a1)
   1fe88:	00e53823          	sd	a4,16(a0)
   1fe8c:	00f53c23          	sd	a5,24(a0)
   1fe90:	0585b703          	ld	a4,88(a1)
   1fe94:	0685b783          	ld	a5,104(a1)
   1fe98:	04c53823          	sd	a2,80(a0)
   1fe9c:	04d53423          	sd	a3,72(a0)
   1fea0:	02e53423          	sd	a4,40(a0)
   1fea4:	02f53c23          	sd	a5,56(a0)
   1fea8:	00008067          	ret

000000000001feac <__eqtf2>:
   1feac:	002027f3          	frrm	a5
   1feb0:	000087b7          	lui	a5,0x8
   1feb4:	0305d813          	srl	a6,a1,0x30
   1feb8:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   1febc:	fff00e13          	li	t3,-1
   1fec0:	010e5713          	srl	a4,t3,0x10
   1fec4:	0306d313          	srl	t1,a3,0x30
   1fec8:	00f87833          	and	a6,a6,a5
   1fecc:	00e5f8b3          	and	a7,a1,a4
   1fed0:	00f37333          	and	t1,t1,a5
   1fed4:	00e6f733          	and	a4,a3,a4
   1fed8:	03f5d593          	srl	a1,a1,0x3f
   1fedc:	03f6d693          	srl	a3,a3,0x3f
   1fee0:	02f81663          	bne	a6,a5,1ff0c <__eqtf2+0x60>
   1fee4:	00a8e533          	or	a0,a7,a0
   1fee8:	04051863          	bnez	a0,1ff38 <__eqtf2+0x8c>
   1feec:	00100793          	li	a5,1
   1fef0:	01031a63          	bne	t1,a6,1ff04 <__eqtf2+0x58>
   1fef4:	00c76633          	or	a2,a4,a2
   1fef8:	02061263          	bnez	a2,1ff1c <__eqtf2+0x70>
   1fefc:	40d585b3          	sub	a1,a1,a3
   1ff00:	00b037b3          	snez	a5,a1
   1ff04:	00078513          	mv	a0,a5
   1ff08:	0480006f          	j	1ff50 <__eqtf2+0xa4>
   1ff0c:	04f31463          	bne	t1,a5,1ff54 <__eqtf2+0xa8>
   1ff10:	00c76633          	or	a2,a4,a2
   1ff14:	00100793          	li	a5,1
   1ff18:	fe0606e3          	beqz	a2,1ff04 <__eqtf2+0x58>
   1ff1c:	fff00793          	li	a5,-1
   1ff20:	0117d793          	srl	a5,a5,0x11
   1ff24:	00100513          	li	a0,1
   1ff28:	02e7e463          	bltu	a5,a4,1ff50 <__eqtf2+0xa4>
   1ff2c:	00186073          	csrs	fflags,16
   1ff30:	00100513          	li	a0,1
   1ff34:	00008067          	ret
   1ff38:	011e5e13          	srl	t3,t3,0x11
   1ff3c:	ff1e78e3          	bgeu	t3,a7,1ff2c <__eqtf2+0x80>
   1ff40:	00100513          	li	a0,1
   1ff44:	01031663          	bne	t1,a6,1ff50 <__eqtf2+0xa4>
   1ff48:	00c76633          	or	a2,a4,a2
   1ff4c:	fc0618e3          	bnez	a2,1ff1c <__eqtf2+0x70>
   1ff50:	00008067          	ret
   1ff54:	00100793          	li	a5,1
   1ff58:	fa6816e3          	bne	a6,t1,1ff04 <__eqtf2+0x58>
   1ff5c:	fae894e3          	bne	a7,a4,1ff04 <__eqtf2+0x58>
   1ff60:	fac512e3          	bne	a0,a2,1ff04 <__eqtf2+0x58>
   1ff64:	00d58a63          	beq	a1,a3,1ff78 <__eqtf2+0xcc>
   1ff68:	f8081ee3          	bnez	a6,1ff04 <__eqtf2+0x58>
   1ff6c:	00a8e8b3          	or	a7,a7,a0
   1ff70:	011037b3          	snez	a5,a7
   1ff74:	f91ff06f          	j	1ff04 <__eqtf2+0x58>
   1ff78:	00000793          	li	a5,0
   1ff7c:	f89ff06f          	j	1ff04 <__eqtf2+0x58>

000000000001ff80 <__getf2>:
   1ff80:	00050313          	mv	t1,a0
   1ff84:	002027f3          	frrm	a5
   1ff88:	00008e37          	lui	t3,0x8
   1ff8c:	0305d893          	srl	a7,a1,0x30
   1ff90:	fffe0e13          	add	t3,t3,-1 # 7fff <exit-0x80e9>
   1ff94:	fff00713          	li	a4,-1
   1ff98:	01075713          	srl	a4,a4,0x10
   1ff9c:	0306d793          	srl	a5,a3,0x30
   1ffa0:	01c8f8b3          	and	a7,a7,t3
   1ffa4:	00e5f833          	and	a6,a1,a4
   1ffa8:	01c7f533          	and	a0,a5,t3
   1ffac:	00e6f733          	and	a4,a3,a4
   1ffb0:	03f5d593          	srl	a1,a1,0x3f
   1ffb4:	03f6d693          	srl	a3,a3,0x3f
   1ffb8:	03c89a63          	bne	a7,t3,1ffec <__getf2+0x6c>
   1ffbc:	00686833          	or	a6,a6,t1
   1ffc0:	0c081063          	bnez	a6,20080 <__getf2+0x100>
   1ffc4:	01150a63          	beq	a0,a7,1ffd8 <__getf2+0x58>
   1ffc8:	00100513          	li	a0,1
   1ffcc:	0a058863          	beqz	a1,2007c <__getf2+0xfc>
   1ffd0:	fff00513          	li	a0,-1
   1ffd4:	00008067          	ret
   1ffd8:	00c76733          	or	a4,a4,a2
   1ffdc:	0a071263          	bnez	a4,20080 <__getf2+0x100>
   1ffe0:	fed594e3          	bne	a1,a3,1ffc8 <__getf2+0x48>
   1ffe4:	00000513          	li	a0,0
   1ffe8:	00008067          	ret
   1ffec:	03c51e63          	bne	a0,t3,20028 <__getf2+0xa8>
   1fff0:	00c76733          	or	a4,a4,a2
   1fff4:	08071663          	bnez	a4,20080 <__getf2+0x100>
   1fff8:	00088c63          	beqz	a7,20010 <__getf2+0x90>
   1fffc:	fcd596e3          	bne	a1,a3,1ffc8 <__getf2+0x48>
   20000:	fff00513          	li	a0,-1
   20004:	06058c63          	beqz	a1,2007c <__getf2+0xfc>
   20008:	00058513          	mv	a0,a1
   2000c:	00008067          	ret
   20010:	00686833          	or	a6,a6,t1
   20014:	fe0814e3          	bnez	a6,1fffc <__getf2+0x7c>
   20018:	fff00513          	li	a0,-1
   2001c:	06068063          	beqz	a3,2007c <__getf2+0xfc>
   20020:	00068513          	mv	a0,a3
   20024:	00008067          	ret
   20028:	02088663          	beqz	a7,20054 <__getf2+0xd4>
   2002c:	f8050ee3          	beqz	a0,1ffc8 <__getf2+0x48>
   20030:	f8d59ce3          	bne	a1,a3,1ffc8 <__getf2+0x48>
   20034:	f9154ae3          	blt	a0,a7,1ffc8 <__getf2+0x48>
   20038:	fca8c4e3          	blt	a7,a0,20000 <__getf2+0x80>
   2003c:	f90766e3          	bltu	a4,a6,1ffc8 <__getf2+0x48>
   20040:	fce810e3          	bne	a6,a4,20000 <__getf2+0x80>
   20044:	f86662e3          	bltu	a2,t1,1ffc8 <__getf2+0x48>
   20048:	00000513          	li	a0,0
   2004c:	02c37863          	bgeu	t1,a2,2007c <__getf2+0xfc>
   20050:	fb1ff06f          	j	20000 <__getf2+0x80>
   20054:	006867b3          	or	a5,a6,t1
   20058:	00050663          	beqz	a0,20064 <__getf2+0xe4>
   2005c:	fa078ee3          	beqz	a5,20018 <__getf2+0x98>
   20060:	f9dff06f          	j	1fffc <__getf2+0x7c>
   20064:	00c768b3          	or	a7,a4,a2
   20068:	00088863          	beqz	a7,20078 <__getf2+0xf8>
   2006c:	fa0786e3          	beqz	a5,20018 <__getf2+0x98>
   20070:	fcd586e3          	beq	a1,a3,2003c <__getf2+0xbc>
   20074:	f55ff06f          	j	1ffc8 <__getf2+0x48>
   20078:	f40798e3          	bnez	a5,1ffc8 <__getf2+0x48>
   2007c:	00008067          	ret
   20080:	00186073          	csrs	fflags,16
   20084:	ffe00513          	li	a0,-2
   20088:	00008067          	ret

000000000002008c <__letf2>:
   2008c:	00050313          	mv	t1,a0
   20090:	002027f3          	frrm	a5
   20094:	00008e37          	lui	t3,0x8
   20098:	0305d893          	srl	a7,a1,0x30
   2009c:	fffe0e13          	add	t3,t3,-1 # 7fff <exit-0x80e9>
   200a0:	fff00713          	li	a4,-1
   200a4:	01075713          	srl	a4,a4,0x10
   200a8:	0306d793          	srl	a5,a3,0x30
   200ac:	01c8f8b3          	and	a7,a7,t3
   200b0:	00e5f833          	and	a6,a1,a4
   200b4:	01c7f533          	and	a0,a5,t3
   200b8:	00e6f733          	and	a4,a3,a4
   200bc:	03f5d593          	srl	a1,a1,0x3f
   200c0:	03f6d693          	srl	a3,a3,0x3f
   200c4:	03c89a63          	bne	a7,t3,200f8 <__letf2+0x6c>
   200c8:	00686833          	or	a6,a6,t1
   200cc:	0c081063          	bnez	a6,2018c <__letf2+0x100>
   200d0:	01150a63          	beq	a0,a7,200e4 <__letf2+0x58>
   200d4:	00100513          	li	a0,1
   200d8:	0a058863          	beqz	a1,20188 <__letf2+0xfc>
   200dc:	fff00513          	li	a0,-1
   200e0:	00008067          	ret
   200e4:	00c76733          	or	a4,a4,a2
   200e8:	0a071263          	bnez	a4,2018c <__letf2+0x100>
   200ec:	fed594e3          	bne	a1,a3,200d4 <__letf2+0x48>
   200f0:	00000513          	li	a0,0
   200f4:	00008067          	ret
   200f8:	03c51e63          	bne	a0,t3,20134 <__letf2+0xa8>
   200fc:	00c76733          	or	a4,a4,a2
   20100:	08071663          	bnez	a4,2018c <__letf2+0x100>
   20104:	00088c63          	beqz	a7,2011c <__letf2+0x90>
   20108:	fcd596e3          	bne	a1,a3,200d4 <__letf2+0x48>
   2010c:	fff00513          	li	a0,-1
   20110:	06058c63          	beqz	a1,20188 <__letf2+0xfc>
   20114:	00058513          	mv	a0,a1
   20118:	00008067          	ret
   2011c:	00686833          	or	a6,a6,t1
   20120:	fe0814e3          	bnez	a6,20108 <__letf2+0x7c>
   20124:	fff00513          	li	a0,-1
   20128:	06068063          	beqz	a3,20188 <__letf2+0xfc>
   2012c:	00068513          	mv	a0,a3
   20130:	00008067          	ret
   20134:	02088663          	beqz	a7,20160 <__letf2+0xd4>
   20138:	f8050ee3          	beqz	a0,200d4 <__letf2+0x48>
   2013c:	f8d59ce3          	bne	a1,a3,200d4 <__letf2+0x48>
   20140:	f9154ae3          	blt	a0,a7,200d4 <__letf2+0x48>
   20144:	fca8c4e3          	blt	a7,a0,2010c <__letf2+0x80>
   20148:	f90766e3          	bltu	a4,a6,200d4 <__letf2+0x48>
   2014c:	fce810e3          	bne	a6,a4,2010c <__letf2+0x80>
   20150:	f86662e3          	bltu	a2,t1,200d4 <__letf2+0x48>
   20154:	00000513          	li	a0,0
   20158:	02c37863          	bgeu	t1,a2,20188 <__letf2+0xfc>
   2015c:	fb1ff06f          	j	2010c <__letf2+0x80>
   20160:	006867b3          	or	a5,a6,t1
   20164:	00050663          	beqz	a0,20170 <__letf2+0xe4>
   20168:	fa078ee3          	beqz	a5,20124 <__letf2+0x98>
   2016c:	f9dff06f          	j	20108 <__letf2+0x7c>
   20170:	00c768b3          	or	a7,a4,a2
   20174:	00088863          	beqz	a7,20184 <__letf2+0xf8>
   20178:	fa0786e3          	beqz	a5,20124 <__letf2+0x98>
   2017c:	fcd586e3          	beq	a1,a3,20148 <__letf2+0xbc>
   20180:	f55ff06f          	j	200d4 <__letf2+0x48>
   20184:	f40798e3          	bnez	a5,200d4 <__letf2+0x48>
   20188:	00008067          	ret
   2018c:	00186073          	csrs	fflags,16
   20190:	00200513          	li	a0,2
   20194:	00008067          	ret

0000000000020198 <__multf3>:
   20198:	fa010113          	add	sp,sp,-96
   2019c:	04813823          	sd	s0,80(sp)
   201a0:	03413823          	sd	s4,48(sp)
   201a4:	01813823          	sd	s8,16(sp)
   201a8:	04113c23          	sd	ra,88(sp)
   201ac:	04913423          	sd	s1,72(sp)
   201b0:	05213023          	sd	s2,64(sp)
   201b4:	03313c23          	sd	s3,56(sp)
   201b8:	03513423          	sd	s5,40(sp)
   201bc:	03613023          	sd	s6,32(sp)
   201c0:	01713c23          	sd	s7,24(sp)
   201c4:	01913423          	sd	s9,8(sp)
   201c8:	00050413          	mv	s0,a0
   201cc:	00060c13          	mv	s8,a2
   201d0:	00068a13          	mv	s4,a3
   201d4:	002029f3          	frrm	s3
   201d8:	00008737          	lui	a4,0x8
   201dc:	0305d793          	srl	a5,a1,0x30
   201e0:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   201e4:	01059913          	sll	s2,a1,0x10
   201e8:	00e7f7b3          	and	a5,a5,a4
   201ec:	0009899b          	sext.w	s3,s3
   201f0:	01095913          	srl	s2,s2,0x10
   201f4:	03f5da93          	srl	s5,a1,0x3f
   201f8:	04078063          	beqz	a5,20238 <__multf3+0xa0>
   201fc:	00078c9b          	sext.w	s9,a5
   20200:	0ae78463          	beq	a5,a4,202a8 <__multf3+0x110>
   20204:	00391913          	sll	s2,s2,0x3
   20208:	03d55713          	srl	a4,a0,0x3d
   2020c:	01276733          	or	a4,a4,s2
   20210:	ffffccb7          	lui	s9,0xffffc
   20214:	00100913          	li	s2,1
   20218:	03391913          	sll	s2,s2,0x33
   2021c:	001c8c93          	add	s9,s9,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd71e1>
   20220:	01276933          	or	s2,a4,s2
   20224:	00351b13          	sll	s6,a0,0x3
   20228:	01978cb3          	add	s9,a5,s9
   2022c:	00000b93          	li	s7,0
   20230:	00000493          	li	s1,0
   20234:	0940006f          	j	202c8 <__multf3+0x130>
   20238:	00a96b33          	or	s6,s2,a0
   2023c:	140b0063          	beqz	s6,2037c <__multf3+0x1e4>
   20240:	04090463          	beqz	s2,20288 <__multf3+0xf0>
   20244:	00090513          	mv	a0,s2
   20248:	269010ef          	jal	21cb0 <__clzdi2>
   2024c:	0005071b          	sext.w	a4,a0
   20250:	ff170793          	add	a5,a4,-15
   20254:	03d00693          	li	a3,61
   20258:	0037861b          	addw	a2,a5,3
   2025c:	40f687bb          	subw	a5,a3,a5
   20260:	00c91933          	sll	s2,s2,a2
   20264:	00f457b3          	srl	a5,s0,a5
   20268:	0127e7b3          	or	a5,a5,s2
   2026c:	00c41933          	sll	s2,s0,a2
   20270:	ffffccb7          	lui	s9,0xffffc
   20274:	011c8c93          	add	s9,s9,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd71f1>
   20278:	00090b13          	mv	s6,s2
   2027c:	40ec8cb3          	sub	s9,s9,a4
   20280:	00078913          	mv	s2,a5
   20284:	fa9ff06f          	j	2022c <__multf3+0x94>
   20288:	229010ef          	jal	21cb0 <__clzdi2>
   2028c:	0405071b          	addw	a4,a0,64
   20290:	ff170793          	add	a5,a4,-15
   20294:	03c00693          	li	a3,60
   20298:	faf6dee3          	bge	a3,a5,20254 <__multf3+0xbc>
   2029c:	fc37879b          	addw	a5,a5,-61
   202a0:	00f417b3          	sll	a5,s0,a5
   202a4:	fcdff06f          	j	20270 <__multf3+0xd8>
   202a8:	00a96b33          	or	s6,s2,a0
   202ac:	0e0b0063          	beqz	s6,2038c <__multf3+0x1f4>
   202b0:	00100493          	li	s1,1
   202b4:	02f49493          	sll	s1,s1,0x2f
   202b8:	009934b3          	sltu	s1,s2,s1
   202bc:	0044949b          	sllw	s1,s1,0x4
   202c0:	00050b13          	mv	s6,a0
   202c4:	00300b93          	li	s7,3
   202c8:	000085b7          	lui	a1,0x8
   202cc:	030a5613          	srl	a2,s4,0x30
   202d0:	fff00693          	li	a3,-1
   202d4:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   202d8:	0106d413          	srl	s0,a3,0x10
   202dc:	00b67633          	and	a2,a2,a1
   202e0:	008a7433          	and	s0,s4,s0
   202e4:	000c0793          	mv	a5,s8
   202e8:	03fa5a13          	srl	s4,s4,0x3f
   202ec:	0a060663          	beqz	a2,20398 <__multf3+0x200>
   202f0:	0006071b          	sext.w	a4,a2
   202f4:	10b60c63          	beq	a2,a1,2040c <__multf3+0x274>
   202f8:	00341413          	sll	s0,s0,0x3
   202fc:	03dc5713          	srl	a4,s8,0x3d
   20300:	00876733          	or	a4,a4,s0
   20304:	00100413          	li	s0,1
   20308:	03341413          	sll	s0,s0,0x33
   2030c:	00876433          	or	s0,a4,s0
   20310:	ffffc737          	lui	a4,0xffffc
   20314:	00170713          	add	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd71e1>
   20318:	003c1793          	sll	a5,s8,0x3
   2031c:	00e60733          	add	a4,a2,a4
   20320:	00000893          	li	a7,0
   20324:	002b9693          	sll	a3,s7,0x2
   20328:	01970833          	add	a6,a4,s9
   2032c:	0116e6b3          	or	a3,a3,a7
   20330:	00a00713          	li	a4,10
   20334:	014ac633          	xor	a2,s5,s4
   20338:	00180593          	add	a1,a6,1
   2033c:	3ad74263          	blt	a4,a3,206e0 <__multf3+0x548>
   20340:	00200713          	li	a4,2
   20344:	10d74463          	blt	a4,a3,2044c <__multf3+0x2b4>
   20348:	fff68693          	add	a3,a3,-1
   2034c:	00100713          	li	a4,1
   20350:	10d76e63          	bltu	a4,a3,2046c <__multf3+0x2d4>
   20354:	00088b93          	mv	s7,a7
   20358:	00200713          	li	a4,2
   2035c:	68eb8863          	beq	s7,a4,209ec <__multf3+0x854>
   20360:	00300713          	li	a4,3
   20364:	68eb8e63          	beq	s7,a4,20a00 <__multf3+0x868>
   20368:	00100713          	li	a4,1
   2036c:	32eb9263          	bne	s7,a4,20690 <__multf3+0x4f8>
   20370:	00000713          	li	a4,0
   20374:	00000513          	li	a0,0
   20378:	6380006f          	j	209b0 <__multf3+0x818>
   2037c:	00000913          	li	s2,0
   20380:	00000c93          	li	s9,0
   20384:	00100b93          	li	s7,1
   20388:	ea9ff06f          	j	20230 <__multf3+0x98>
   2038c:	00000913          	li	s2,0
   20390:	00200b93          	li	s7,2
   20394:	e9dff06f          	j	20230 <__multf3+0x98>
   20398:	008c67b3          	or	a5,s8,s0
   2039c:	08078663          	beqz	a5,20428 <__multf3+0x290>
   203a0:	04040463          	beqz	s0,203e8 <__multf3+0x250>
   203a4:	00040513          	mv	a0,s0
   203a8:	109010ef          	jal	21cb0 <__clzdi2>
   203ac:	0005051b          	sext.w	a0,a0
   203b0:	ff150793          	add	a5,a0,-15
   203b4:	03d00713          	li	a4,61
   203b8:	0037861b          	addw	a2,a5,3
   203bc:	40f707bb          	subw	a5,a4,a5
   203c0:	00c41433          	sll	s0,s0,a2
   203c4:	00fc57b3          	srl	a5,s8,a5
   203c8:	0087e6b3          	or	a3,a5,s0
   203cc:	00cc1433          	sll	s0,s8,a2
   203d0:	ffffc737          	lui	a4,0xffffc
   203d4:	01170713          	add	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd71f1>
   203d8:	00040793          	mv	a5,s0
   203dc:	40a70733          	sub	a4,a4,a0
   203e0:	00068413          	mv	s0,a3
   203e4:	f3dff06f          	j	20320 <__multf3+0x188>
   203e8:	000c0513          	mv	a0,s8
   203ec:	0c5010ef          	jal	21cb0 <__clzdi2>
   203f0:	0405051b          	addw	a0,a0,64
   203f4:	ff150793          	add	a5,a0,-15
   203f8:	03c00713          	li	a4,60
   203fc:	faf75ce3          	bge	a4,a5,203b4 <__multf3+0x21c>
   20400:	fc37879b          	addw	a5,a5,-61
   20404:	00fc16b3          	sll	a3,s8,a5
   20408:	fc9ff06f          	j	203d0 <__multf3+0x238>
   2040c:	008c6633          	or	a2,s8,s0
   20410:	02060663          	beqz	a2,2043c <__multf3+0x2a4>
   20414:	0116d693          	srl	a3,a3,0x11
   20418:	00300893          	li	a7,3
   2041c:	f086e4e3          	bltu	a3,s0,20324 <__multf3+0x18c>
   20420:	01000493          	li	s1,16
   20424:	f01ff06f          	j	20324 <__multf3+0x18c>
   20428:	00000413          	li	s0,0
   2042c:	00000793          	li	a5,0
   20430:	00000713          	li	a4,0
   20434:	00100893          	li	a7,1
   20438:	eedff06f          	j	20324 <__multf3+0x18c>
   2043c:	00000413          	li	s0,0
   20440:	00000793          	li	a5,0
   20444:	00200893          	li	a7,2
   20448:	eddff06f          	j	20324 <__multf3+0x18c>
   2044c:	00100713          	li	a4,1
   20450:	00d716b3          	sll	a3,a4,a3
   20454:	5306f513          	and	a0,a3,1328
   20458:	2a051263          	bnez	a0,206fc <__multf3+0x564>
   2045c:	2406f313          	and	t1,a3,576
   20460:	56031a63          	bnez	t1,209d4 <__multf3+0x83c>
   20464:	0886f693          	and	a3,a3,136
   20468:	28069663          	bnez	a3,206f4 <__multf3+0x55c>
   2046c:	fff00693          	li	a3,-1
   20470:	0206d693          	srl	a3,a3,0x20
   20474:	00878f33          	add	t5,a5,s0
   20478:	020b5513          	srl	a0,s6,0x20
   2047c:	0207d313          	srl	t1,a5,0x20
   20480:	01690fb3          	add	t6,s2,s6
   20484:	00ff3eb3          	sltu	t4,t5,a5
   20488:	00db7b33          	and	s6,s6,a3
   2048c:	00d7f7b3          	and	a5,a5,a3
   20490:	036782b3          	mul	t0,a5,s6
   20494:	012fbe33          	sltu	t3,t6,s2
   20498:	000e0893          	mv	a7,t3
   2049c:	000e8713          	mv	a4,t4
   204a0:	02f507b3          	mul	a5,a0,a5
   204a4:	026506b3          	mul	a3,a0,t1
   204a8:	0202d513          	srl	a0,t0,0x20
   204ac:	03630333          	mul	t1,t1,s6
   204b0:	00f30333          	add	t1,t1,a5
   204b4:	00650533          	add	a0,a0,t1
   204b8:	00f57863          	bgeu	a0,a5,204c8 <__multf3+0x330>
   204bc:	00100793          	li	a5,1
   204c0:	02079793          	sll	a5,a5,0x20
   204c4:	00f686b3          	add	a3,a3,a5
   204c8:	fff00793          	li	a5,-1
   204cc:	0207d793          	srl	a5,a5,0x20
   204d0:	02055313          	srl	t1,a0,0x20
   204d4:	00f57533          	and	a0,a0,a5
   204d8:	00f2f2b3          	and	t0,t0,a5
   204dc:	02051513          	sll	a0,a0,0x20
   204e0:	00fff3b3          	and	t2,t6,a5
   204e4:	00d30333          	add	t1,t1,a3
   204e8:	00ff77b3          	and	a5,t5,a5
   204ec:	020f5693          	srl	a3,t5,0x20
   204f0:	00550533          	add	a0,a0,t0
   204f4:	020fd293          	srl	t0,t6,0x20
   204f8:	02778ab3          	mul	s5,a5,t2
   204fc:	02f287b3          	mul	a5,t0,a5
   20500:	020ada13          	srl	s4,s5,0x20
   20504:	02d282b3          	mul	t0,t0,a3
   20508:	027686b3          	mul	a3,a3,t2
   2050c:	00f686b3          	add	a3,a3,a5
   20510:	00da0a33          	add	s4,s4,a3
   20514:	00fa7863          	bgeu	s4,a5,20524 <__multf3+0x38c>
   20518:	00100793          	li	a5,1
   2051c:	02079793          	sll	a5,a5,0x20
   20520:	00f282b3          	add	t0,t0,a5
   20524:	fff00793          	li	a5,-1
   20528:	0207d793          	srl	a5,a5,0x20
   2052c:	020a5393          	srl	t2,s4,0x20
   20530:	00fa7a33          	and	s4,s4,a5
   20534:	00fafab3          	and	s5,s5,a5
   20538:	020a1a13          	sll	s4,s4,0x20
   2053c:	02045693          	srl	a3,s0,0x20
   20540:	015a0a33          	add	s4,s4,s5
   20544:	02095a93          	srl	s5,s2,0x20
   20548:	00f97933          	and	s2,s2,a5
   2054c:	00f477b3          	and	a5,s0,a5
   20550:	02f90b33          	mul	s6,s2,a5
   20554:	02fa87b3          	mul	a5,s5,a5
   20558:	020b5413          	srl	s0,s6,0x20
   2055c:	02da8ab3          	mul	s5,s5,a3
   20560:	032686b3          	mul	a3,a3,s2
   20564:	00f686b3          	add	a3,a3,a5
   20568:	00d40433          	add	s0,s0,a3
   2056c:	00f47863          	bgeu	s0,a5,2057c <__multf3+0x3e4>
   20570:	00100793          	li	a5,1
   20574:	02079793          	sll	a5,a5,0x20
   20578:	00fa8ab3          	add	s5,s5,a5
   2057c:	fff00913          	li	s2,-1
   20580:	02095913          	srl	s2,s2,0x20
   20584:	02045693          	srl	a3,s0,0x20
   20588:	012477b3          	and	a5,s0,s2
   2058c:	40e00733          	neg	a4,a4
   20590:	006a0433          	add	s0,s4,t1
   20594:	01f77733          	and	a4,a4,t6
   20598:	411008b3          	neg	a7,a7
   2059c:	01443fb3          	sltu	t6,s0,s4
   205a0:	01e8f8b3          	and	a7,a7,t5
   205a4:	01f38f33          	add	t5,t2,t6
   205a8:	005f0f33          	add	t5,t5,t0
   205ac:	01de7e33          	and	t3,t3,t4
   205b0:	01ff3fb3          	sltu	t6,t5,t6
   205b4:	00ef0733          	add	a4,t5,a4
   205b8:	01cf8fb3          	add	t6,t6,t3
   205bc:	01e73f33          	sltu	t5,a4,t5
   205c0:	00e88733          	add	a4,a7,a4
   205c4:	01ff0f33          	add	t5,t5,t6
   205c8:	011738b3          	sltu	a7,a4,a7
   205cc:	40a40eb3          	sub	t4,s0,a0
   205d0:	40670e33          	sub	t3,a4,t1
   205d4:	02079793          	sll	a5,a5,0x20
   205d8:	012b7b33          	and	s6,s6,s2
   205dc:	01e888b3          	add	a7,a7,t5
   205e0:	01d43f33          	sltu	t5,s0,t4
   205e4:	01c73fb3          	sltu	t6,a4,t3
   205e8:	015686b3          	add	a3,a3,s5
   205ec:	41ee0e33          	sub	t3,t3,t5
   205f0:	016787b3          	add	a5,a5,s6
   205f4:	00000f13          	li	t5,0
   205f8:	01d47663          	bgeu	s0,t4,20604 <__multf3+0x46c>
   205fc:	40e30333          	sub	t1,t1,a4
   20600:	00133f13          	seqz	t5,t1
   20604:	01ff6f33          	or	t5,t5,t6
   20608:	40fe8fb3          	sub	t6,t4,a5
   2060c:	00d888b3          	add	a7,a7,a3
   20610:	01feb733          	sltu	a4,t4,t6
   20614:	40de06b3          	sub	a3,t3,a3
   20618:	00de3e33          	sltu	t3,t3,a3
   2061c:	40e78733          	sub	a4,a5,a4
   20620:	00000313          	li	t1,0
   20624:	01fef463          	bgeu	t4,t6,2062c <__multf3+0x494>
   20628:	0016b313          	seqz	t1,a3
   2062c:	00e686b3          	add	a3,a3,a4
   20630:	00f6b733          	sltu	a4,a3,a5
   20634:	01170733          	add	a4,a4,a7
   20638:	41e70733          	sub	a4,a4,t5
   2063c:	01c36333          	or	t1,t1,t3
   20640:	40670733          	sub	a4,a4,t1
   20644:	00df9793          	sll	a5,t6,0xd
   20648:	00d71713          	sll	a4,a4,0xd
   2064c:	0336d413          	srl	s0,a3,0x33
   20650:	00a7e7b3          	or	a5,a5,a0
   20654:	00876433          	or	s0,a4,s0
   20658:	00f037b3          	snez	a5,a5
   2065c:	033fd513          	srl	a0,t6,0x33
   20660:	03475713          	srl	a4,a4,0x34
   20664:	00a7e7b3          	or	a5,a5,a0
   20668:	00d69693          	sll	a3,a3,0xd
   2066c:	00177713          	and	a4,a4,1
   20670:	00d7e7b3          	or	a5,a5,a3
   20674:	08070a63          	beqz	a4,20708 <__multf3+0x570>
   20678:	0017d713          	srl	a4,a5,0x1
   2067c:	0017f793          	and	a5,a5,1
   20680:	00f76733          	or	a4,a4,a5
   20684:	03f41793          	sll	a5,s0,0x3f
   20688:	00f767b3          	or	a5,a4,a5
   2068c:	00145413          	srl	s0,s0,0x1
   20690:	000046b7          	lui	a3,0x4
   20694:	fff68693          	add	a3,a3,-1 # 3fff <exit-0xc0e9>
   20698:	00d586b3          	add	a3,a1,a3
   2069c:	14d05c63          	blez	a3,207f4 <__multf3+0x65c>
   206a0:	0077f713          	and	a4,a5,7
   206a4:	06070e63          	beqz	a4,20720 <__multf3+0x588>
   206a8:	00200713          	li	a4,2
   206ac:	0014e493          	or	s1,s1,1
   206b0:	06e98663          	beq	s3,a4,2071c <__multf3+0x584>
   206b4:	00300713          	li	a4,3
   206b8:	04e98c63          	beq	s3,a4,20710 <__multf3+0x578>
   206bc:	06099263          	bnez	s3,20720 <__multf3+0x588>
   206c0:	00f7f713          	and	a4,a5,15
   206c4:	00400513          	li	a0,4
   206c8:	04a70c63          	beq	a4,a0,20720 <__multf3+0x588>
   206cc:	00478713          	add	a4,a5,4
   206d0:	00f73533          	sltu	a0,a4,a5
   206d4:	00a40433          	add	s0,s0,a0
   206d8:	00070793          	mv	a5,a4
   206dc:	0440006f          	j	20720 <__multf3+0x588>
   206e0:	00f00713          	li	a4,15
   206e4:	30e68e63          	beq	a3,a4,20a00 <__multf3+0x868>
   206e8:	00b00713          	li	a4,11
   206ec:	000a8613          	mv	a2,s5
   206f0:	00e69663          	bne	a3,a4,206fc <__multf3+0x564>
   206f4:	000a0613          	mv	a2,s4
   206f8:	c5dff06f          	j	20354 <__multf3+0x1bc>
   206fc:	00090413          	mv	s0,s2
   20700:	000b0793          	mv	a5,s6
   20704:	c55ff06f          	j	20358 <__multf3+0x1c0>
   20708:	00080593          	mv	a1,a6
   2070c:	f85ff06f          	j	20690 <__multf3+0x4f8>
   20710:	00061863          	bnez	a2,20720 <__multf3+0x588>
   20714:	00878713          	add	a4,a5,8
   20718:	fb9ff06f          	j	206d0 <__multf3+0x538>
   2071c:	fe061ce3          	bnez	a2,20714 <__multf3+0x57c>
   20720:	03445713          	srl	a4,s0,0x34
   20724:	00177713          	and	a4,a4,1
   20728:	00070e63          	beqz	a4,20744 <__multf3+0x5ac>
   2072c:	fff00713          	li	a4,-1
   20730:	03471713          	sll	a4,a4,0x34
   20734:	fff70713          	add	a4,a4,-1
   20738:	000046b7          	lui	a3,0x4
   2073c:	00e47433          	and	s0,s0,a4
   20740:	00d586b3          	add	a3,a1,a3
   20744:	000085b7          	lui	a1,0x8
   20748:	ffe58713          	add	a4,a1,-2 # 7ffe <exit-0x80ea>
   2074c:	06d74463          	blt	a4,a3,207b4 <__multf3+0x61c>
   20750:	0037d793          	srl	a5,a5,0x3
   20754:	03d41513          	sll	a0,s0,0x3d
   20758:	00f56533          	or	a0,a0,a5
   2075c:	00345713          	srl	a4,s0,0x3
   20760:	00f6161b          	sllw	a2,a2,0xf
   20764:	01071593          	sll	a1,a4,0x10
   20768:	00c6e6b3          	or	a3,a3,a2
   2076c:	03069693          	sll	a3,a3,0x30
   20770:	0105d593          	srl	a1,a1,0x10
   20774:	00d5e5b3          	or	a1,a1,a3
   20778:	00048463          	beqz	s1,20780 <__multf3+0x5e8>
   2077c:	0014a073          	csrs	fflags,s1
   20780:	05813083          	ld	ra,88(sp)
   20784:	05013403          	ld	s0,80(sp)
   20788:	04813483          	ld	s1,72(sp)
   2078c:	04013903          	ld	s2,64(sp)
   20790:	03813983          	ld	s3,56(sp)
   20794:	03013a03          	ld	s4,48(sp)
   20798:	02813a83          	ld	s5,40(sp)
   2079c:	02013b03          	ld	s6,32(sp)
   207a0:	01813b83          	ld	s7,24(sp)
   207a4:	01013c03          	ld	s8,16(sp)
   207a8:	00813c83          	ld	s9,8(sp)
   207ac:	06010113          	add	sp,sp,96
   207b0:	00008067          	ret
   207b4:	00200793          	li	a5,2
   207b8:	02f98a63          	beq	s3,a5,207ec <__multf3+0x654>
   207bc:	00300793          	li	a5,3
   207c0:	00f98a63          	beq	s3,a5,207d4 <__multf3+0x63c>
   207c4:	00098a63          	beqz	s3,207d8 <__multf3+0x640>
   207c8:	fff00513          	li	a0,-1
   207cc:	00070693          	mv	a3,a4
   207d0:	0100006f          	j	207e0 <__multf3+0x648>
   207d4:	fe061ae3          	bnez	a2,207c8 <__multf3+0x630>
   207d8:	00000513          	li	a0,0
   207dc:	fff58693          	add	a3,a1,-1
   207e0:	0054e493          	or	s1,s1,5
   207e4:	00050713          	mv	a4,a0
   207e8:	f79ff06f          	j	20760 <__multf3+0x5c8>
   207ec:	fc060ee3          	beqz	a2,207c8 <__multf3+0x630>
   207f0:	fe9ff06f          	j	207d8 <__multf3+0x640>
   207f4:	0c069863          	bnez	a3,208c4 <__multf3+0x72c>
   207f8:	0077f693          	and	a3,a5,7
   207fc:	00040713          	mv	a4,s0
   20800:	04068863          	beqz	a3,20850 <__multf3+0x6b8>
   20804:	00200693          	li	a3,2
   20808:	0014e493          	or	s1,s1,1
   2080c:	04d98063          	beq	s3,a3,2084c <__multf3+0x6b4>
   20810:	00300693          	li	a3,3
   20814:	02d98663          	beq	s3,a3,20840 <__multf3+0x6a8>
   20818:	02099c63          	bnez	s3,20850 <__multf3+0x6b8>
   2081c:	00f7f693          	and	a3,a5,15
   20820:	00400593          	li	a1,4
   20824:	02b68663          	beq	a3,a1,20850 <__multf3+0x6b8>
   20828:	ffc7b713          	sltiu	a4,a5,-4
   2082c:	00174713          	xor	a4,a4,1
   20830:	02071713          	sll	a4,a4,0x20
   20834:	02075713          	srl	a4,a4,0x20
   20838:	00870733          	add	a4,a4,s0
   2083c:	0140006f          	j	20850 <__multf3+0x6b8>
   20840:	00061863          	bnez	a2,20850 <__multf3+0x6b8>
   20844:	ff87b713          	sltiu	a4,a5,-8
   20848:	fe5ff06f          	j	2082c <__multf3+0x694>
   2084c:	fe061ce3          	bnez	a2,20844 <__multf3+0x6ac>
   20850:	03475713          	srl	a4,a4,0x34
   20854:	00174713          	xor	a4,a4,1
   20858:	00177593          	and	a1,a4,1
   2085c:	00100713          	li	a4,1
   20860:	04000693          	li	a3,64
   20864:	40e686bb          	subw	a3,a3,a4
   20868:	00d41533          	sll	a0,s0,a3
   2086c:	00e7d833          	srl	a6,a5,a4
   20870:	00d796b3          	sll	a3,a5,a3
   20874:	01056533          	or	a0,a0,a6
   20878:	00d036b3          	snez	a3,a3
   2087c:	00d56533          	or	a0,a0,a3
   20880:	00e45733          	srl	a4,s0,a4
   20884:	00757793          	and	a5,a0,7
   20888:	0a078463          	beqz	a5,20930 <__multf3+0x798>
   2088c:	00200793          	li	a5,2
   20890:	0014e493          	or	s1,s1,1
   20894:	08f98c63          	beq	s3,a5,2092c <__multf3+0x794>
   20898:	00300793          	li	a5,3
   2089c:	08f98263          	beq	s3,a5,20920 <__multf3+0x788>
   208a0:	08099863          	bnez	s3,20930 <__multf3+0x798>
   208a4:	00f57793          	and	a5,a0,15
   208a8:	00400693          	li	a3,4
   208ac:	08d78263          	beq	a5,a3,20930 <__multf3+0x798>
   208b0:	00450793          	add	a5,a0,4
   208b4:	00a7b6b3          	sltu	a3,a5,a0
   208b8:	00d70733          	add	a4,a4,a3
   208bc:	00078513          	mv	a0,a5
   208c0:	0700006f          	j	20930 <__multf3+0x798>
   208c4:	00100713          	li	a4,1
   208c8:	40d70733          	sub	a4,a4,a3
   208cc:	07400693          	li	a3,116
   208d0:	0ae6c663          	blt	a3,a4,2097c <__multf3+0x7e4>
   208d4:	03f00693          	li	a3,63
   208d8:	0007059b          	sext.w	a1,a4
   208dc:	00e6c663          	blt	a3,a4,208e8 <__multf3+0x750>
   208e0:	00100593          	li	a1,1
   208e4:	f7dff06f          	j	20860 <__multf3+0x6c8>
   208e8:	fc05851b          	addw	a0,a1,-64
   208ec:	04000813          	li	a6,64
   208f0:	00a45533          	srl	a0,s0,a0
   208f4:	00000693          	li	a3,0
   208f8:	01070863          	beq	a4,a6,20908 <__multf3+0x770>
   208fc:	08000693          	li	a3,128
   20900:	40b686bb          	subw	a3,a3,a1
   20904:	00d416b3          	sll	a3,s0,a3
   20908:	00f6e6b3          	or	a3,a3,a5
   2090c:	00d036b3          	snez	a3,a3
   20910:	00d56533          	or	a0,a0,a3
   20914:	00100593          	li	a1,1
   20918:	00000713          	li	a4,0
   2091c:	f69ff06f          	j	20884 <__multf3+0x6ec>
   20920:	00061863          	bnez	a2,20930 <__multf3+0x798>
   20924:	00850793          	add	a5,a0,8
   20928:	f8dff06f          	j	208b4 <__multf3+0x71c>
   2092c:	fe061ce3          	bnez	a2,20924 <__multf3+0x78c>
   20930:	03375793          	srl	a5,a4,0x33
   20934:	0017f793          	and	a5,a5,1
   20938:	02078063          	beqz	a5,20958 <__multf3+0x7c0>
   2093c:	0014e493          	or	s1,s1,1
   20940:	00000713          	li	a4,0
   20944:	00000513          	li	a0,0
   20948:	00100693          	li	a3,1
   2094c:	e0058ae3          	beqz	a1,20760 <__multf3+0x5c8>
   20950:	0024e493          	or	s1,s1,2
   20954:	e0dff06f          	j	20760 <__multf3+0x5c8>
   20958:	03d71793          	sll	a5,a4,0x3d
   2095c:	00355513          	srl	a0,a0,0x3
   20960:	00a7e533          	or	a0,a5,a0
   20964:	00375713          	srl	a4,a4,0x3
   20968:	00000693          	li	a3,0
   2096c:	de058ae3          	beqz	a1,20760 <__multf3+0x5c8>
   20970:	0014f793          	and	a5,s1,1
   20974:	de0786e3          	beqz	a5,20760 <__multf3+0x5c8>
   20978:	fd9ff06f          	j	20950 <__multf3+0x7b8>
   2097c:	0087e533          	or	a0,a5,s0
   20980:	02050463          	beqz	a0,209a8 <__multf3+0x810>
   20984:	00200793          	li	a5,2
   20988:	0014e493          	or	s1,s1,1
   2098c:	02f98e63          	beq	s3,a5,209c8 <__multf3+0x830>
   20990:	00300793          	li	a5,3
   20994:	02f98263          	beq	s3,a5,209b8 <__multf3+0x820>
   20998:	00500513          	li	a0,5
   2099c:	00098463          	beqz	s3,209a4 <__multf3+0x80c>
   209a0:	00100513          	li	a0,1
   209a4:	00355513          	srl	a0,a0,0x3
   209a8:	0024e493          	or	s1,s1,2
   209ac:	00000713          	li	a4,0
   209b0:	00000693          	li	a3,0
   209b4:	dadff06f          	j	20760 <__multf3+0x5c8>
   209b8:	00100513          	li	a0,1
   209bc:	fe0614e3          	bnez	a2,209a4 <__multf3+0x80c>
   209c0:	00900513          	li	a0,9
   209c4:	fe1ff06f          	j	209a4 <__multf3+0x80c>
   209c8:	00100513          	li	a0,1
   209cc:	fc060ce3          	beqz	a2,209a4 <__multf3+0x80c>
   209d0:	ff1ff06f          	j	209c0 <__multf3+0x828>
   209d4:	000086b7          	lui	a3,0x8
   209d8:	02f71713          	sll	a4,a4,0x2f
   209dc:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   209e0:	00000613          	li	a2,0
   209e4:	01000493          	li	s1,16
   209e8:	d79ff06f          	j	20760 <__multf3+0x5c8>
   209ec:	000086b7          	lui	a3,0x8
   209f0:	00000713          	li	a4,0
   209f4:	00000513          	li	a0,0
   209f8:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   209fc:	d65ff06f          	j	20760 <__multf3+0x5c8>
   20a00:	00100713          	li	a4,1
   20a04:	000086b7          	lui	a3,0x8
   20a08:	02f71713          	sll	a4,a4,0x2f
   20a0c:	00000513          	li	a0,0
   20a10:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   20a14:	00000613          	li	a2,0
   20a18:	d49ff06f          	j	20760 <__multf3+0x5c8>

0000000000020a1c <__subtf3>:
   20a1c:	fd010113          	add	sp,sp,-48
   20a20:	02113423          	sd	ra,40(sp)
   20a24:	02813023          	sd	s0,32(sp)
   20a28:	00913c23          	sd	s1,24(sp)
   20a2c:	01213823          	sd	s2,16(sp)
   20a30:	01313423          	sd	s3,8(sp)
   20a34:	01413023          	sd	s4,0(sp)
   20a38:	00202973          	frrm	s2
   20a3c:	fff00313          	li	t1,-1
   20a40:	01035313          	srl	t1,t1,0x10
   20a44:	0305d413          	srl	s0,a1,0x30
   20a48:	000088b7          	lui	a7,0x8
   20a4c:	03f5d493          	srl	s1,a1,0x3f
   20a50:	0065f5b3          	and	a1,a1,t1
   20a54:	00359793          	sll	a5,a1,0x3
   20a58:	fff88893          	add	a7,a7,-1 # 7fff <exit-0x80e9>
   20a5c:	03d55593          	srl	a1,a0,0x3d
   20a60:	0306d713          	srl	a4,a3,0x30
   20a64:	03f6d813          	srl	a6,a3,0x3f
   20a68:	0066f6b3          	and	a3,a3,t1
   20a6c:	00f5e5b3          	or	a1,a1,a5
   20a70:	01177733          	and	a4,a4,a7
   20a74:	00369793          	sll	a5,a3,0x3
   20a78:	03d65693          	srl	a3,a2,0x3d
   20a7c:	0009091b          	sext.w	s2,s2
   20a80:	01147433          	and	s0,s0,a7
   20a84:	00351513          	sll	a0,a0,0x3
   20a88:	00f6e6b3          	or	a3,a3,a5
   20a8c:	00361613          	sll	a2,a2,0x3
   20a90:	07171463          	bne	a4,a7,20af8 <__subtf3+0xdc>
   20a94:	ffff87b7          	lui	a5,0xffff8
   20a98:	0017879b          	addw	a5,a5,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd31e1>
   20a9c:	00c6e8b3          	or	a7,a3,a2
   20aa0:	008787bb          	addw	a5,a5,s0
   20aa4:	02088c63          	beqz	a7,20adc <__subtf3+0xc0>
   20aa8:	00080313          	mv	t1,a6
   20aac:	63049663          	bne	s1,a6,210d8 <__subtf3+0x6bc>
   20ab0:	30078a63          	beqz	a5,20dc4 <__subtf3+0x3a8>
   20ab4:	62041863          	bnez	s0,210e4 <__subtf3+0x6c8>
   20ab8:	00a5e833          	or	a6,a1,a0
   20abc:	28081663          	bnez	a6,20d48 <__subtf3+0x32c>
   20ac0:	000085b7          	lui	a1,0x8
   20ac4:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   20ac8:	00000793          	li	a5,0
   20acc:	0eb71463          	bne	a4,a1,20bb4 <__subtf3+0x198>
   20ad0:	00c6e833          	or	a6,a3,a2
   20ad4:	3a080663          	beqz	a6,20e80 <__subtf3+0x464>
   20ad8:	60c0006f          	j	210e4 <__subtf3+0x6c8>
   20adc:	00184313          	xor	t1,a6,1
   20ae0:	60649c63          	bne	s1,t1,210f8 <__subtf3+0x6dc>
   20ae4:	2e078063          	beqz	a5,20dc4 <__subtf3+0x3a8>
   20ae8:	fc0408e3          	beqz	s0,20ab8 <__subtf3+0x9c>
   20aec:	00000813          	li	a6,0
   20af0:	00000593          	li	a1,0
   20af4:	7400006f          	j	21234 <__subtf3+0x818>
   20af8:	00184313          	xor	t1,a6,1
   20afc:	40e407bb          	subw	a5,s0,a4
   20b00:	00078813          	mv	a6,a5
   20b04:	4e649063          	bne	s1,t1,20fe4 <__subtf3+0x5c8>
   20b08:	1ef05063          	blez	a5,20ce8 <__subtf3+0x2cc>
   20b0c:	12071e63          	bnez	a4,20c48 <__subtf3+0x22c>
   20b10:	00c6e7b3          	or	a5,a3,a2
   20b14:	00079a63          	bnez	a5,20b28 <__subtf3+0x10c>
   20b18:	07140c63          	beq	s0,a7,20b90 <__subtf3+0x174>
   20b1c:	00058693          	mv	a3,a1
   20b20:	00050613          	mv	a2,a0
   20b24:	3140006f          	j	20e38 <__subtf3+0x41c>
   20b28:	fff8079b          	addw	a5,a6,-1
   20b2c:	06079063          	bnez	a5,20b8c <__subtf3+0x170>
   20b30:	00c50633          	add	a2,a0,a2
   20b34:	00d586b3          	add	a3,a1,a3
   20b38:	00a63533          	sltu	a0,a2,a0
   20b3c:	00a686b3          	add	a3,a3,a0
   20b40:	00040713          	mv	a4,s0
   20b44:	0336d793          	srl	a5,a3,0x33
   20b48:	0017f793          	and	a5,a5,1
   20b4c:	2c078c63          	beqz	a5,20e24 <__subtf3+0x408>
   20b50:	000087b7          	lui	a5,0x8
   20b54:	00170713          	add	a4,a4,1
   20b58:	fff78593          	add	a1,a5,-1 # 7fff <exit-0x80e9>
   20b5c:	44b70463          	beq	a4,a1,20fa4 <__subtf3+0x588>
   20b60:	fff00793          	li	a5,-1
   20b64:	03379793          	sll	a5,a5,0x33
   20b68:	fff78793          	add	a5,a5,-1
   20b6c:	00f6f7b3          	and	a5,a3,a5
   20b70:	00165693          	srl	a3,a2,0x1
   20b74:	00167613          	and	a2,a2,1
   20b78:	00c6e6b3          	or	a3,a3,a2
   20b7c:	03f79613          	sll	a2,a5,0x3f
   20b80:	00d66633          	or	a2,a2,a3
   20b84:	0017d693          	srl	a3,a5,0x1
   20b88:	29c0006f          	j	20e24 <__subtf3+0x408>
   20b8c:	11141a63          	bne	s0,a7,20ca0 <__subtf3+0x284>
   20b90:	00a5e833          	or	a6,a1,a0
   20b94:	2a080ce3          	beqz	a6,2164c <__subtf3+0xc30>
   20b98:	0325d793          	srl	a5,a1,0x32
   20b9c:	0017c793          	xor	a5,a5,1
   20ba0:	0017f793          	and	a5,a5,1
   20ba4:	00479793          	sll	a5,a5,0x4
   20ba8:	00058693          	mv	a3,a1
   20bac:	00050613          	mv	a2,a0
   20bb0:	00040713          	mv	a4,s0
   20bb4:	00767593          	and	a1,a2,7
   20bb8:	20059ae3          	bnez	a1,215cc <__subtf3+0xbb0>
   20bbc:	00068593          	mv	a1,a3
   20bc0:	00060513          	mv	a0,a2
   20bc4:	0335d693          	srl	a3,a1,0x33
   20bc8:	0016f693          	and	a3,a3,1
   20bcc:	280686e3          	beqz	a3,21658 <__subtf3+0xc3c>
   20bd0:	000086b7          	lui	a3,0x8
   20bd4:	00170713          	add	a4,a4,1
   20bd8:	fff68613          	add	a2,a3,-1 # 7fff <exit-0x80e9>
   20bdc:	22c702e3          	beq	a4,a2,21600 <__subtf3+0xbe4>
   20be0:	fff00693          	li	a3,-1
   20be4:	03369693          	sll	a3,a3,0x33
   20be8:	fff68693          	add	a3,a3,-1
   20bec:	00d5f5b3          	and	a1,a1,a3
   20bf0:	00355693          	srl	a3,a0,0x3
   20bf4:	03d59513          	sll	a0,a1,0x3d
   20bf8:	00d56533          	or	a0,a0,a3
   20bfc:	0035d593          	srl	a1,a1,0x3
   20c00:	03171713          	sll	a4,a4,0x31
   20c04:	00f4949b          	sllw	s1,s1,0xf
   20c08:	03175713          	srl	a4,a4,0x31
   20c0c:	01059593          	sll	a1,a1,0x10
   20c10:	00976733          	or	a4,a4,s1
   20c14:	03071713          	sll	a4,a4,0x30
   20c18:	0105d593          	srl	a1,a1,0x10
   20c1c:	00e5e5b3          	or	a1,a1,a4
   20c20:	00078463          	beqz	a5,20c28 <__subtf3+0x20c>
   20c24:	0017a073          	csrs	fflags,a5
   20c28:	02813083          	ld	ra,40(sp)
   20c2c:	02013403          	ld	s0,32(sp)
   20c30:	01813483          	ld	s1,24(sp)
   20c34:	01013903          	ld	s2,16(sp)
   20c38:	00813983          	ld	s3,8(sp)
   20c3c:	00013a03          	ld	s4,0(sp)
   20c40:	03010113          	add	sp,sp,48
   20c44:	00008067          	ret
   20c48:	f51404e3          	beq	s0,a7,20b90 <__subtf3+0x174>
   20c4c:	07400713          	li	a4,116
   20c50:	04f74c63          	blt	a4,a5,20ca8 <__subtf3+0x28c>
   20c54:	00100713          	li	a4,1
   20c58:	03371713          	sll	a4,a4,0x33
   20c5c:	00e6e6b3          	or	a3,a3,a4
   20c60:	03f00713          	li	a4,63
   20c64:	04f74863          	blt	a4,a5,20cb4 <__subtf3+0x298>
   20c68:	04000813          	li	a6,64
   20c6c:	40f8083b          	subw	a6,a6,a5
   20c70:	01069733          	sll	a4,a3,a6
   20c74:	00f658b3          	srl	a7,a2,a5
   20c78:	01061833          	sll	a6,a2,a6
   20c7c:	01176733          	or	a4,a4,a7
   20c80:	01003833          	snez	a6,a6
   20c84:	01076733          	or	a4,a4,a6
   20c88:	00f6d7b3          	srl	a5,a3,a5
   20c8c:	00a70633          	add	a2,a4,a0
   20c90:	00b787b3          	add	a5,a5,a1
   20c94:	00e63733          	sltu	a4,a2,a4
   20c98:	00e786b3          	add	a3,a5,a4
   20c9c:	ea5ff06f          	j	20b40 <__subtf3+0x124>
   20ca0:	07400713          	li	a4,116
   20ca4:	faf75ee3          	bge	a4,a5,20c60 <__subtf3+0x244>
   20ca8:	00000793          	li	a5,0
   20cac:	00100713          	li	a4,1
   20cb0:	fddff06f          	j	20c8c <__subtf3+0x270>
   20cb4:	fc07871b          	addw	a4,a5,-64
   20cb8:	04000893          	li	a7,64
   20cbc:	00e6d733          	srl	a4,a3,a4
   20cc0:	00000813          	li	a6,0
   20cc4:	01178863          	beq	a5,a7,20cd4 <__subtf3+0x2b8>
   20cc8:	08000813          	li	a6,128
   20ccc:	40f8083b          	subw	a6,a6,a5
   20cd0:	01069833          	sll	a6,a3,a6
   20cd4:	00c86833          	or	a6,a6,a2
   20cd8:	01003833          	snez	a6,a6
   20cdc:	01076733          	or	a4,a4,a6
   20ce0:	00000793          	li	a5,0
   20ce4:	fa9ff06f          	j	20c8c <__subtf3+0x270>
   20ce8:	0c078e63          	beqz	a5,20dc4 <__subtf3+0x3a8>
   20cec:	dc0406e3          	beqz	s0,20ab8 <__subtf3+0x9c>
   20cf0:	f8c00893          	li	a7,-116
   20cf4:	0917c863          	blt	a5,a7,20d84 <__subtf3+0x368>
   20cf8:	00100813          	li	a6,1
   20cfc:	03381813          	sll	a6,a6,0x33
   20d00:	40f007bb          	negw	a5,a5
   20d04:	0105e5b3          	or	a1,a1,a6
   20d08:	03f00813          	li	a6,63
   20d0c:	08f84263          	blt	a6,a5,20d90 <__subtf3+0x374>
   20d10:	04000893          	li	a7,64
   20d14:	40f888bb          	subw	a7,a7,a5
   20d18:	00f55333          	srl	t1,a0,a5
   20d1c:	01159833          	sll	a6,a1,a7
   20d20:	011518b3          	sll	a7,a0,a7
   20d24:	00686833          	or	a6,a6,t1
   20d28:	011038b3          	snez	a7,a7
   20d2c:	01186533          	or	a0,a6,a7
   20d30:	00f5d7b3          	srl	a5,a1,a5
   20d34:	00c50633          	add	a2,a0,a2
   20d38:	00d787b3          	add	a5,a5,a3
   20d3c:	00a63533          	sltu	a0,a2,a0
   20d40:	00a786b3          	add	a3,a5,a0
   20d44:	e01ff06f          	j	20b44 <__subtf3+0x128>
   20d48:	fff7c793          	not	a5,a5
   20d4c:	00079c63          	bnez	a5,20d64 <__subtf3+0x348>
   20d50:	00c50633          	add	a2,a0,a2
   20d54:	00d586b3          	add	a3,a1,a3
   20d58:	00a63533          	sltu	a0,a2,a0
   20d5c:	00a686b3          	add	a3,a3,a0
   20d60:	de5ff06f          	j	20b44 <__subtf3+0x128>
   20d64:	00008837          	lui	a6,0x8
   20d68:	fff80813          	add	a6,a6,-1 # 7fff <exit-0x80e9>
   20d6c:	01071863          	bne	a4,a6,20d7c <__subtf3+0x360>
   20d70:	00c6e833          	or	a6,a3,a2
   20d74:	d6080ee3          	beqz	a6,20af0 <__subtf3+0xd4>
   20d78:	36c0006f          	j	210e4 <__subtf3+0x6c8>
   20d7c:	07400813          	li	a6,116
   20d80:	f8f854e3          	bge	a6,a5,20d08 <__subtf3+0x2ec>
   20d84:	00000793          	li	a5,0
   20d88:	00100513          	li	a0,1
   20d8c:	fa9ff06f          	j	20d34 <__subtf3+0x318>
   20d90:	fc07881b          	addw	a6,a5,-64
   20d94:	04000313          	li	t1,64
   20d98:	0105d833          	srl	a6,a1,a6
   20d9c:	00000893          	li	a7,0
   20da0:	00678863          	beq	a5,t1,20db0 <__subtf3+0x394>
   20da4:	08000893          	li	a7,128
   20da8:	40f888bb          	subw	a7,a7,a5
   20dac:	011598b3          	sll	a7,a1,a7
   20db0:	00a8e8b3          	or	a7,a7,a0
   20db4:	011038b3          	snez	a7,a7
   20db8:	01186533          	or	a0,a6,a7
   20dbc:	00000793          	li	a5,0
   20dc0:	f75ff06f          	j	20d34 <__subtf3+0x318>
   20dc4:	000088b7          	lui	a7,0x8
   20dc8:	ffe88813          	add	a6,a7,-2 # 7ffe <exit-0x80ea>
   20dcc:	00140793          	add	a5,s0,1
   20dd0:	0107f333          	and	t1,a5,a6
   20dd4:	fff88893          	add	a7,a7,-1
   20dd8:	12031863          	bnez	t1,20f08 <__subtf3+0x4ec>
   20ddc:	00a5e833          	or	a6,a1,a0
   20de0:	04041663          	bnez	s0,20e2c <__subtf3+0x410>
   20de4:	6e080a63          	beqz	a6,214d8 <__subtf3+0xabc>
   20de8:	00c6e7b3          	or	a5,a3,a2
   20dec:	5e078863          	beqz	a5,213dc <__subtf3+0x9c0>
   20df0:	00c50633          	add	a2,a0,a2
   20df4:	00a637b3          	sltu	a5,a2,a0
   20df8:	00d586b3          	add	a3,a1,a3
   20dfc:	00f685b3          	add	a1,a3,a5
   20e00:	0335d793          	srl	a5,a1,0x33
   20e04:	0017f793          	and	a5,a5,1
   20e08:	00060513          	mv	a0,a2
   20e0c:	5c078863          	beqz	a5,213dc <__subtf3+0x9c0>
   20e10:	fff00693          	li	a3,-1
   20e14:	03369693          	sll	a3,a3,0x33
   20e18:	fff68693          	add	a3,a3,-1
   20e1c:	00d5f6b3          	and	a3,a1,a3
   20e20:	00100713          	li	a4,1
   20e24:	00000793          	li	a5,0
   20e28:	d8dff06f          	j	20bb4 <__subtf3+0x198>
   20e2c:	05141063          	bne	s0,a7,20e6c <__subtf3+0x450>
   20e30:	00081863          	bnez	a6,20e40 <__subtf3+0x424>
   20e34:	f2870ee3          	beq	a4,s0,20d70 <__subtf3+0x354>
   20e38:	00040713          	mv	a4,s0
   20e3c:	fe9ff06f          	j	20e24 <__subtf3+0x408>
   20e40:	00100893          	li	a7,1
   20e44:	03289893          	sll	a7,a7,0x32
   20e48:	0115f7b3          	and	a5,a1,a7
   20e4c:	00c6e333          	or	t1,a3,a2
   20e50:	000788e3          	beqz	a5,21660 <__subtf3+0xc44>
   20e54:	00000793          	li	a5,0
   20e58:	08871a63          	bne	a4,s0,20eec <__subtf3+0x4d0>
   20e5c:	02031663          	bnez	t1,20e88 <__subtf3+0x46c>
   20e60:	00058693          	mv	a3,a1
   20e64:	00050613          	mv	a2,a0
   20e68:	d4dff06f          	j	20bb4 <__subtf3+0x198>
   20e6c:	00000793          	li	a5,0
   20e70:	07171c63          	bne	a4,a7,20ee8 <__subtf3+0x4cc>
   20e74:	00c6e8b3          	or	a7,a3,a2
   20e78:	7e089a63          	bnez	a7,2166c <__subtf3+0xc50>
   20e7c:	fe0812e3          	bnez	a6,20e60 <__subtf3+0x444>
   20e80:	00000593          	li	a1,0
   20e84:	0240006f          	j	20ea8 <__subtf3+0x48c>
   20e88:	0116f8b3          	and	a7,a3,a7
   20e8c:	06088a63          	beqz	a7,20f00 <__subtf3+0x4e4>
   20e90:	00100593          	li	a1,1
   20e94:	00008737          	lui	a4,0x8
   20e98:	00000493          	li	s1,0
   20e9c:	03259593          	sll	a1,a1,0x32
   20ea0:	00000813          	li	a6,0
   20ea4:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   20ea8:	000086b7          	lui	a3,0x8
   20eac:	03d59513          	sll	a0,a1,0x3d
   20eb0:	00385813          	srl	a6,a6,0x3
   20eb4:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   20eb8:	01056533          	or	a0,a0,a6
   20ebc:	0035d593          	srl	a1,a1,0x3
   20ec0:	d4d710e3          	bne	a4,a3,20c00 <__subtf3+0x1e4>
   20ec4:	00b56533          	or	a0,a0,a1
   20ec8:	00000593          	li	a1,0
   20ecc:	d2050ae3          	beqz	a0,20c00 <__subtf3+0x1e4>
   20ed0:	00100593          	li	a1,1
   20ed4:	02f59593          	sll	a1,a1,0x2f
   20ed8:	00000513          	li	a0,0
   20edc:	00000493          	li	s1,0
   20ee0:	d21ff06f          	j	20c00 <__subtf3+0x1e4>
   20ee4:	01000793          	li	a5,16
   20ee8:	78080a63          	beqz	a6,2167c <__subtf3+0xc60>
   20eec:	00c6e6b3          	or	a3,a3,a2
   20ef0:	fa0690e3          	bnez	a3,20e90 <__subtf3+0x474>
   20ef4:	00058693          	mv	a3,a1
   20ef8:	00050613          	mv	a2,a0
   20efc:	7800006f          	j	2167c <__subtf3+0xc60>
   20f00:	01000793          	li	a5,16
   20f04:	fe9ff06f          	j	20eec <__subtf3+0x4d0>
   20f08:	03178663          	beq	a5,a7,20f34 <__subtf3+0x518>
   20f0c:	00c50633          	add	a2,a0,a2
   20f10:	00a63533          	sltu	a0,a2,a0
   20f14:	00d586b3          	add	a3,a1,a3
   20f18:	00a686b3          	add	a3,a3,a0
   20f1c:	03f69713          	sll	a4,a3,0x3f
   20f20:	00165613          	srl	a2,a2,0x1
   20f24:	00c76633          	or	a2,a4,a2
   20f28:	0016d693          	srl	a3,a3,0x1
   20f2c:	00078713          	mv	a4,a5
   20f30:	ef5ff06f          	j	20e24 <__subtf3+0x408>
   20f34:	70090263          	beqz	s2,21638 <__subtf3+0xc1c>
   20f38:	00300713          	li	a4,3
   20f3c:	04e91463          	bne	s2,a4,20f84 <__subtf3+0x568>
   20f40:	6e048c63          	beqz	s1,21638 <__subtf3+0xc1c>
   20f44:	00000693          	li	a3,0
   20f48:	fff00593          	li	a1,-1
   20f4c:	fff00513          	li	a0,-1
   20f50:	00080713          	mv	a4,a6
   20f54:	00500793          	li	a5,5
   20f58:	00300613          	li	a2,3
   20f5c:	68c90463          	beq	s2,a2,215e4 <__subtf3+0xbc8>
   20f60:	68091463          	bnez	s2,215e8 <__subtf3+0xbcc>
   20f64:	00f57613          	and	a2,a0,15
   20f68:	00400813          	li	a6,4
   20f6c:	67060e63          	beq	a2,a6,215e8 <__subtf3+0xbcc>
   20f70:	00450613          	add	a2,a0,4
   20f74:	00a63833          	sltu	a6,a2,a0
   20f78:	010585b3          	add	a1,a1,a6
   20f7c:	00060513          	mv	a0,a2
   20f80:	6680006f          	j	215e8 <__subtf3+0xbcc>
   20f84:	00200713          	li	a4,2
   20f88:	00e91463          	bne	s2,a4,20f90 <__subtf3+0x574>
   20f8c:	6a049663          	bnez	s1,21638 <__subtf3+0xc1c>
   20f90:	fff00593          	li	a1,-1
   20f94:	fff00513          	li	a0,-1
   20f98:	00080713          	mv	a4,a6
   20f9c:	00500793          	li	a5,5
   20fa0:	c25ff06f          	j	20bc4 <__subtf3+0x1a8>
   20fa4:	68090c63          	beqz	s2,2163c <__subtf3+0xc20>
   20fa8:	00300693          	li	a3,3
   20fac:	00d91e63          	bne	s2,a3,20fc8 <__subtf3+0x5ac>
   20fb0:	68048663          	beqz	s1,2163c <__subtf3+0xc20>
   20fb4:	00000693          	li	a3,0
   20fb8:	fff00593          	li	a1,-1
   20fbc:	fff00513          	li	a0,-1
   20fc0:	ffe78713          	add	a4,a5,-2
   20fc4:	f91ff06f          	j	20f54 <__subtf3+0x538>
   20fc8:	00200693          	li	a3,2
   20fcc:	00d91463          	bne	s2,a3,20fd4 <__subtf3+0x5b8>
   20fd0:	66049663          	bnez	s1,2163c <__subtf3+0xc20>
   20fd4:	fff00593          	li	a1,-1
   20fd8:	fff00513          	li	a0,-1
   20fdc:	ffe78713          	add	a4,a5,-2
   20fe0:	fbdff06f          	j	20f9c <__subtf3+0x580>
   20fe4:	14f05463          	blez	a5,2112c <__subtf3+0x710>
   20fe8:	06071063          	bnez	a4,21048 <__subtf3+0x62c>
   20fec:	00c6e7b3          	or	a5,a3,a2
   20ff0:	b20784e3          	beqz	a5,20b18 <__subtf3+0xfc>
   20ff4:	fff8079b          	addw	a5,a6,-1
   20ff8:	02079c63          	bnez	a5,21030 <__subtf3+0x614>
   20ffc:	40c50633          	sub	a2,a0,a2
   21000:	40d586b3          	sub	a3,a1,a3
   21004:	00c53533          	sltu	a0,a0,a2
   21008:	40a686b3          	sub	a3,a3,a0
   2100c:	00040713          	mv	a4,s0
   21010:	0336d793          	srl	a5,a3,0x33
   21014:	0017f793          	and	a5,a5,1
   21018:	e00786e3          	beqz	a5,20e24 <__subtf3+0x408>
   2101c:	00d69993          	sll	s3,a3,0xd
   21020:	00d9d993          	srl	s3,s3,0xd
   21024:	00060a13          	mv	s4,a2
   21028:	00070413          	mv	s0,a4
   2102c:	3580006f          	j	21384 <__subtf3+0x968>
   21030:	b71400e3          	beq	s0,a7,20b90 <__subtf3+0x174>
   21034:	07400713          	li	a4,116
   21038:	02f75463          	bge	a4,a5,21060 <__subtf3+0x644>
   2103c:	00000793          	li	a5,0
   21040:	00100713          	li	a4,1
   21044:	0480006f          	j	2108c <__subtf3+0x670>
   21048:	b51404e3          	beq	s0,a7,20b90 <__subtf3+0x174>
   2104c:	07400713          	li	a4,116
   21050:	fef746e3          	blt	a4,a5,2103c <__subtf3+0x620>
   21054:	00100713          	li	a4,1
   21058:	03371713          	sll	a4,a4,0x33
   2105c:	00e6e6b3          	or	a3,a3,a4
   21060:	03f00713          	li	a4,63
   21064:	04f74063          	blt	a4,a5,210a4 <__subtf3+0x688>
   21068:	04000813          	li	a6,64
   2106c:	40f8083b          	subw	a6,a6,a5
   21070:	01069733          	sll	a4,a3,a6
   21074:	00f658b3          	srl	a7,a2,a5
   21078:	01061833          	sll	a6,a2,a6
   2107c:	01176733          	or	a4,a4,a7
   21080:	01003833          	snez	a6,a6
   21084:	01076733          	or	a4,a4,a6
   21088:	00f6d7b3          	srl	a5,a3,a5
   2108c:	40e50733          	sub	a4,a0,a4
   21090:	40f587b3          	sub	a5,a1,a5
   21094:	00e536b3          	sltu	a3,a0,a4
   21098:	00070613          	mv	a2,a4
   2109c:	40d786b3          	sub	a3,a5,a3
   210a0:	f6dff06f          	j	2100c <__subtf3+0x5f0>
   210a4:	fc07871b          	addw	a4,a5,-64
   210a8:	04000893          	li	a7,64
   210ac:	00e6d733          	srl	a4,a3,a4
   210b0:	00000813          	li	a6,0
   210b4:	01178863          	beq	a5,a7,210c4 <__subtf3+0x6a8>
   210b8:	08000813          	li	a6,128
   210bc:	40f8083b          	subw	a6,a6,a5
   210c0:	01069833          	sll	a6,a3,a6
   210c4:	00c86833          	or	a6,a6,a2
   210c8:	01003833          	snez	a6,a6
   210cc:	01076733          	or	a4,a4,a6
   210d0:	00000793          	li	a5,0
   210d4:	fb9ff06f          	j	2108c <__subtf3+0x670>
   210d8:	12078063          	beqz	a5,211f8 <__subtf3+0x7dc>
   210dc:	00080493          	mv	s1,a6
   210e0:	02040263          	beqz	s0,21104 <__subtf3+0x6e8>
   210e4:	0326d793          	srl	a5,a3,0x32
   210e8:	0017c793          	xor	a5,a5,1
   210ec:	0017f793          	and	a5,a5,1
   210f0:	00479793          	sll	a5,a5,0x4
   210f4:	ac1ff06f          	j	20bb4 <__subtf3+0x198>
   210f8:	10078063          	beqz	a5,211f8 <__subtf3+0x7dc>
   210fc:	00030493          	mv	s1,t1
   21100:	9e0416e3          	bnez	s0,20aec <__subtf3+0xd0>
   21104:	00a5e833          	or	a6,a1,a0
   21108:	9a080ce3          	beqz	a6,20ac0 <__subtf3+0xa4>
   2110c:	fff7c793          	not	a5,a5
   21110:	02079663          	bnez	a5,2113c <__subtf3+0x720>
   21114:	40a60533          	sub	a0,a2,a0
   21118:	00a637b3          	sltu	a5,a2,a0
   2111c:	40b686b3          	sub	a3,a3,a1
   21120:	00050613          	mv	a2,a0
   21124:	40f686b3          	sub	a3,a3,a5
   21128:	ee9ff06f          	j	21010 <__subtf3+0x5f4>
   2112c:	0c078663          	beqz	a5,211f8 <__subtf3+0x7dc>
   21130:	02041663          	bnez	s0,2115c <__subtf3+0x740>
   21134:	00030493          	mv	s1,t1
   21138:	fcdff06f          	j	21104 <__subtf3+0x6e8>
   2113c:	00008837          	lui	a6,0x8
   21140:	fff80813          	add	a6,a6,-1 # 7fff <exit-0x80e9>
   21144:	c30706e3          	beq	a4,a6,20d70 <__subtf3+0x354>
   21148:	07400813          	li	a6,116
   2114c:	02f85663          	bge	a6,a5,21178 <__subtf3+0x75c>
   21150:	00000793          	li	a5,0
   21154:	00100513          	li	a0,1
   21158:	04c0006f          	j	211a4 <__subtf3+0x788>
   2115c:	f8c00893          	li	a7,-116
   21160:	0917c863          	blt	a5,a7,211f0 <__subtf3+0x7d4>
   21164:	00100813          	li	a6,1
   21168:	03381813          	sll	a6,a6,0x33
   2116c:	40f007bb          	negw	a5,a5
   21170:	0105e5b3          	or	a1,a1,a6
   21174:	00030493          	mv	s1,t1
   21178:	03f00813          	li	a6,63
   2117c:	04f84063          	blt	a6,a5,211bc <__subtf3+0x7a0>
   21180:	04000893          	li	a7,64
   21184:	40f888bb          	subw	a7,a7,a5
   21188:	00f55333          	srl	t1,a0,a5
   2118c:	01159833          	sll	a6,a1,a7
   21190:	011518b3          	sll	a7,a0,a7
   21194:	00686833          	or	a6,a6,t1
   21198:	011038b3          	snez	a7,a7
   2119c:	01186533          	or	a0,a6,a7
   211a0:	00f5d7b3          	srl	a5,a1,a5
   211a4:	40a60533          	sub	a0,a2,a0
   211a8:	00a635b3          	sltu	a1,a2,a0
   211ac:	40f687b3          	sub	a5,a3,a5
   211b0:	00050613          	mv	a2,a0
   211b4:	40b786b3          	sub	a3,a5,a1
   211b8:	e59ff06f          	j	21010 <__subtf3+0x5f4>
   211bc:	fc07881b          	addw	a6,a5,-64
   211c0:	04000313          	li	t1,64
   211c4:	0105d833          	srl	a6,a1,a6
   211c8:	00000893          	li	a7,0
   211cc:	00678863          	beq	a5,t1,211dc <__subtf3+0x7c0>
   211d0:	08000893          	li	a7,128
   211d4:	40f888bb          	subw	a7,a7,a5
   211d8:	011598b3          	sll	a7,a1,a7
   211dc:	00a8e8b3          	or	a7,a7,a0
   211e0:	011038b3          	snez	a7,a7
   211e4:	01186533          	or	a0,a6,a7
   211e8:	00000793          	li	a5,0
   211ec:	fb9ff06f          	j	211a4 <__subtf3+0x788>
   211f0:	00030493          	mv	s1,t1
   211f4:	f5dff06f          	j	21150 <__subtf3+0x734>
   211f8:	00008e37          	lui	t3,0x8
   211fc:	00140793          	add	a5,s0,1
   21200:	ffee0813          	add	a6,t3,-2 # 7ffe <exit-0x80ea>
   21204:	0107f7b3          	and	a5,a5,a6
   21208:	14079463          	bnez	a5,21350 <__subtf3+0x934>
   2120c:	00c6e833          	or	a6,a3,a2
   21210:	00a5e8b3          	or	a7,a1,a0
   21214:	06041a63          	bnez	s0,21288 <__subtf3+0x86c>
   21218:	02089263          	bnez	a7,2123c <__subtf3+0x820>
   2121c:	2c081463          	bnez	a6,214e4 <__subtf3+0xac8>
   21220:	ffe90493          	add	s1,s2,-2
   21224:	0014b493          	seqz	s1,s1
   21228:	00000593          	li	a1,0
   2122c:	00000813          	li	a6,0
   21230:	00000713          	li	a4,0
   21234:	00000793          	li	a5,0
   21238:	c71ff06f          	j	20ea8 <__subtf3+0x48c>
   2123c:	1a080063          	beqz	a6,213dc <__subtf3+0x9c0>
   21240:	40c50733          	sub	a4,a0,a2
   21244:	00e53833          	sltu	a6,a0,a4
   21248:	40d587b3          	sub	a5,a1,a3
   2124c:	410787b3          	sub	a5,a5,a6
   21250:	0337d813          	srl	a6,a5,0x33
   21254:	00187813          	and	a6,a6,1
   21258:	00080e63          	beqz	a6,21274 <__subtf3+0x858>
   2125c:	40a60533          	sub	a0,a2,a0
   21260:	40b686b3          	sub	a3,a3,a1
   21264:	00a63633          	sltu	a2,a2,a0
   21268:	40c685b3          	sub	a1,a3,a2
   2126c:	00030493          	mv	s1,t1
   21270:	16c0006f          	j	213dc <__subtf3+0x9c0>
   21274:	00f766b3          	or	a3,a4,a5
   21278:	fa0684e3          	beqz	a3,21220 <__subtf3+0x804>
   2127c:	00078593          	mv	a1,a5
   21280:	00070513          	mv	a0,a4
   21284:	1580006f          	j	213dc <__subtf3+0x9c0>
   21288:	fffe0e13          	add	t3,t3,-1
   2128c:	05c41e63          	bne	s0,t3,212e8 <__subtf3+0x8cc>
   21290:	02089663          	bnez	a7,212bc <__subtf3+0x8a0>
   21294:	00000793          	li	a5,0
   21298:	08871863          	bne	a4,s0,21328 <__subtf3+0x90c>
   2129c:	00100593          	li	a1,1
   212a0:	03259593          	sll	a1,a1,0x32
   212a4:	00000493          	li	s1,0
   212a8:	04080e63          	beqz	a6,21304 <__subtf3+0x8e8>
   212ac:	00b6f5b3          	and	a1,a3,a1
   212b0:	08058c63          	beqz	a1,21348 <__subtf3+0x92c>
   212b4:	00030493          	mv	s1,t1
   212b8:	8fdff06f          	j	20bb4 <__subtf3+0x198>
   212bc:	00100613          	li	a2,1
   212c0:	03261613          	sll	a2,a2,0x32
   212c4:	00c5f7b3          	and	a5,a1,a2
   212c8:	3c078063          	beqz	a5,21688 <__subtf3+0xc6c>
   212cc:	00000793          	li	a5,0
   212d0:	3c871663          	bne	a4,s0,2169c <__subtf3+0xc80>
   212d4:	c20800e3          	beqz	a6,20ef4 <__subtf3+0x4d8>
   212d8:	00c6f633          	and	a2,a3,a2
   212dc:	ba061ae3          	bnez	a2,20e90 <__subtf3+0x474>
   212e0:	01000793          	li	a5,16
   212e4:	3b80006f          	j	2169c <__subtf3+0xc80>
   212e8:	00000793          	li	a5,0
   212ec:	03c71c63          	bne	a4,t3,21324 <__subtf3+0x908>
   212f0:	00081e63          	bnez	a6,2130c <__subtf3+0x8f0>
   212f4:	c00890e3          	bnez	a7,20ef4 <__subtf3+0x4d8>
   212f8:	00100593          	li	a1,1
   212fc:	00000493          	li	s1,0
   21300:	03259593          	sll	a1,a1,0x32
   21304:	01000793          	li	a5,16
   21308:	ba1ff06f          	j	20ea8 <__subtf3+0x48c>
   2130c:	0326de13          	srl	t3,a3,0x32
   21310:	001e7e13          	and	t3,t3,1
   21314:	000e0663          	beqz	t3,21320 <__subtf3+0x904>
   21318:	b6089ce3          	bnez	a7,20e90 <__subtf3+0x474>
   2131c:	f99ff06f          	j	212b4 <__subtf3+0x898>
   21320:	01000793          	li	a5,16
   21324:	36089c63          	bnez	a7,2169c <__subtf3+0xc80>
   21328:	00030493          	mv	s1,t1
   2132c:	34081863          	bnez	a6,2167c <__subtf3+0xc60>
   21330:	00100593          	li	a1,1
   21334:	00008737          	lui	a4,0x8
   21338:	00000493          	li	s1,0
   2133c:	03259593          	sll	a1,a1,0x32
   21340:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   21344:	fc1ff06f          	j	21304 <__subtf3+0x8e8>
   21348:	01000793          	li	a5,16
   2134c:	fddff06f          	j	21328 <__subtf3+0x90c>
   21350:	40c507b3          	sub	a5,a0,a2
   21354:	00f53733          	sltu	a4,a0,a5
   21358:	40d589b3          	sub	s3,a1,a3
   2135c:	40e989b3          	sub	s3,s3,a4
   21360:	0339d713          	srl	a4,s3,0x33
   21364:	00177713          	and	a4,a4,1
   21368:	00078a13          	mv	s4,a5
   2136c:	0e070463          	beqz	a4,21454 <__subtf3+0xa38>
   21370:	40a60a33          	sub	s4,a2,a0
   21374:	40b689b3          	sub	s3,a3,a1
   21378:	01463633          	sltu	a2,a2,s4
   2137c:	40c989b3          	sub	s3,s3,a2
   21380:	00030493          	mv	s1,t1
   21384:	0c098e63          	beqz	s3,21460 <__subtf3+0xa44>
   21388:	00098513          	mv	a0,s3
   2138c:	125000ef          	jal	21cb0 <__clzdi2>
   21390:	ff45071b          	addw	a4,a0,-12
   21394:	04000693          	li	a3,64
   21398:	40e686bb          	subw	a3,a3,a4
   2139c:	00e999b3          	sll	s3,s3,a4
   213a0:	00da56b3          	srl	a3,s4,a3
   213a4:	0136e6b3          	or	a3,a3,s3
   213a8:	00ea19b3          	sll	s3,s4,a4
   213ac:	10874863          	blt	a4,s0,214bc <__subtf3+0xaa0>
   213b0:	4087073b          	subw	a4,a4,s0
   213b4:	0017071b          	addw	a4,a4,1
   213b8:	04000793          	li	a5,64
   213bc:	40e787bb          	subw	a5,a5,a4
   213c0:	00f69533          	sll	a0,a3,a5
   213c4:	00e9d633          	srl	a2,s3,a4
   213c8:	00f997b3          	sll	a5,s3,a5
   213cc:	00c56533          	or	a0,a0,a2
   213d0:	00f037b3          	snez	a5,a5
   213d4:	00f56533          	or	a0,a0,a5
   213d8:	00e6d5b3          	srl	a1,a3,a4
   213dc:	00b567b3          	or	a5,a0,a1
   213e0:	e40784e3          	beqz	a5,21228 <__subtf3+0x80c>
   213e4:	03f55793          	srl	a5,a0,0x3f
   213e8:	00159713          	sll	a4,a1,0x1
   213ec:	00f70733          	add	a4,a4,a5
   213f0:	00151793          	sll	a5,a0,0x1
   213f4:	0077f613          	and	a2,a5,7
   213f8:	00757693          	and	a3,a0,7
   213fc:	16060e63          	beqz	a2,21578 <__subtf3+0xb5c>
   21400:	00200613          	li	a2,2
   21404:	12c90663          	beq	s2,a2,21530 <__subtf3+0xb14>
   21408:	00100613          	li	a2,1
   2140c:	00300813          	li	a6,3
   21410:	03461613          	sll	a2,a2,0x34
   21414:	0d090e63          	beq	s2,a6,214f0 <__subtf3+0xad4>
   21418:	0c091e63          	bnez	s2,214f4 <__subtf3+0xad8>
   2141c:	00f7f813          	and	a6,a5,15
   21420:	00400893          	li	a7,4
   21424:	0d180863          	beq	a6,a7,214f4 <__subtf3+0xad8>
   21428:	ffc7b793          	sltiu	a5,a5,-4
   2142c:	0017c793          	xor	a5,a5,1
   21430:	02079793          	sll	a5,a5,0x20
   21434:	0207d793          	srl	a5,a5,0x20
   21438:	00e787b3          	add	a5,a5,a4
   2143c:	00c7f7b3          	and	a5,a5,a2
   21440:	14079e63          	bnez	a5,2159c <__subtf3+0xb80>
   21444:	12068663          	beqz	a3,21570 <__subtf3+0xb54>
   21448:	00100693          	li	a3,1
   2144c:	00000713          	li	a4,0
   21450:	18c0006f          	j	215dc <__subtf3+0xbc0>
   21454:	0137e7b3          	or	a5,a5,s3
   21458:	f20796e3          	bnez	a5,21384 <__subtf3+0x968>
   2145c:	dc5ff06f          	j	21220 <__subtf3+0x804>
   21460:	000a0513          	mv	a0,s4
   21464:	04d000ef          	jal	21cb0 <__clzdi2>
   21468:	0345071b          	addw	a4,a0,52
   2146c:	03f00593          	li	a1,63
   21470:	f2e5d2e3          	bge	a1,a4,21394 <__subtf3+0x978>
   21474:	ff45069b          	addw	a3,a0,-12
   21478:	00da16b3          	sll	a3,s4,a3
   2147c:	04874063          	blt	a4,s0,214bc <__subtf3+0xaa0>
   21480:	408707bb          	subw	a5,a4,s0
   21484:	0017871b          	addw	a4,a5,1
   21488:	f2e5d8e3          	bge	a1,a4,213b8 <__subtf3+0x99c>
   2148c:	fc17879b          	addw	a5,a5,-63
   21490:	04000593          	li	a1,64
   21494:	00f6d7b3          	srl	a5,a3,a5
   21498:	00000513          	li	a0,0
   2149c:	00b70863          	beq	a4,a1,214ac <__subtf3+0xa90>
   214a0:	08000513          	li	a0,128
   214a4:	40e5053b          	subw	a0,a0,a4
   214a8:	00a69533          	sll	a0,a3,a0
   214ac:	00a03533          	snez	a0,a0
   214b0:	00f56533          	or	a0,a0,a5
   214b4:	00000593          	li	a1,0
   214b8:	f25ff06f          	j	213dc <__subtf3+0x9c0>
   214bc:	fff00793          	li	a5,-1
   214c0:	03379793          	sll	a5,a5,0x33
   214c4:	fff78793          	add	a5,a5,-1
   214c8:	40e40733          	sub	a4,s0,a4
   214cc:	00f6f6b3          	and	a3,a3,a5
   214d0:	00098613          	mv	a2,s3
   214d4:	951ff06f          	j	20e24 <__subtf3+0x408>
   214d8:	00068593          	mv	a1,a3
   214dc:	00060513          	mv	a0,a2
   214e0:	efdff06f          	j	213dc <__subtf3+0x9c0>
   214e4:	00068593          	mv	a1,a3
   214e8:	00060513          	mv	a0,a2
   214ec:	d81ff06f          	j	2126c <__subtf3+0x850>
   214f0:	00048a63          	beqz	s1,21504 <__subtf3+0xae8>
   214f4:	00c77733          	and	a4,a4,a2
   214f8:	0a071263          	bnez	a4,2159c <__subtf3+0xb80>
   214fc:	f40696e3          	bnez	a3,21448 <__subtf3+0xa2c>
   21500:	0280006f          	j	21528 <__subtf3+0xb0c>
   21504:	ff87b793          	sltiu	a5,a5,-8
   21508:	0017c793          	xor	a5,a5,1
   2150c:	02079793          	sll	a5,a5,0x20
   21510:	0207d793          	srl	a5,a5,0x20
   21514:	00e787b3          	add	a5,a5,a4
   21518:	00c7f7b3          	and	a5,a5,a2
   2151c:	08079063          	bnez	a5,2159c <__subtf3+0xb80>
   21520:	00000713          	li	a4,0
   21524:	0a069a63          	bnez	a3,215d8 <__subtf3+0xbbc>
   21528:	00100793          	li	a5,1
   2152c:	0180006f          	j	21544 <__subtf3+0xb28>
   21530:	00049e63          	bnez	s1,2154c <__subtf3+0xb30>
   21534:	03475713          	srl	a4,a4,0x34
   21538:	00177713          	and	a4,a4,1
   2153c:	00100793          	li	a5,1
   21540:	06071063          	bnez	a4,215a0 <__subtf3+0xb84>
   21544:	0027e793          	or	a5,a5,2
   21548:	e7cff06f          	j	20bc4 <__subtf3+0x1a8>
   2154c:	ff87b793          	sltiu	a5,a5,-8
   21550:	0017c793          	xor	a5,a5,1
   21554:	02079793          	sll	a5,a5,0x20
   21558:	0207d793          	srl	a5,a5,0x20
   2155c:	00e787b3          	add	a5,a5,a4
   21560:	0347d793          	srl	a5,a5,0x34
   21564:	0017f793          	and	a5,a5,1
   21568:	02079a63          	bnez	a5,2159c <__subtf3+0xb80>
   2156c:	08069263          	bnez	a3,215f0 <__subtf3+0xbd4>
   21570:	00000713          	li	a4,0
   21574:	fb5ff06f          	j	21528 <__subtf3+0xb0c>
   21578:	03475713          	srl	a4,a4,0x34
   2157c:	00177713          	and	a4,a4,1
   21580:	04071263          	bnez	a4,215c4 <__subtf3+0xba8>
   21584:	00000793          	li	a5,0
   21588:	e2068e63          	beqz	a3,20bc4 <__subtf3+0x1a8>
   2158c:	00100693          	li	a3,1
   21590:	00000713          	li	a4,0
   21594:	00000793          	li	a5,0
   21598:	0140006f          	j	215ac <__subtf3+0xb90>
   2159c:	00100793          	li	a5,1
   215a0:	00000713          	li	a4,0
   215a4:	e2068063          	beqz	a3,20bc4 <__subtf3+0x1a8>
   215a8:	00000693          	li	a3,0
   215ac:	00200613          	li	a2,2
   215b0:	0017e793          	or	a5,a5,1
   215b4:	9ac912e3          	bne	s2,a2,20f58 <__subtf3+0x53c>
   215b8:	02048863          	beqz	s1,215e8 <__subtf3+0xbcc>
   215bc:	00850613          	add	a2,a0,8
   215c0:	9b5ff06f          	j	20f74 <__subtf3+0x558>
   215c4:	00000793          	li	a5,0
   215c8:	fd9ff06f          	j	215a0 <__subtf3+0xb84>
   215cc:	00068593          	mv	a1,a3
   215d0:	00060513          	mv	a0,a2
   215d4:	fd5ff06f          	j	215a8 <__subtf3+0xb8c>
   215d8:	00100693          	li	a3,1
   215dc:	00100793          	li	a5,1
   215e0:	979ff06f          	j	20f58 <__subtf3+0x53c>
   215e4:	fc048ce3          	beqz	s1,215bc <__subtf3+0xba0>
   215e8:	f4069ee3          	bnez	a3,21544 <__subtf3+0xb28>
   215ec:	dd8ff06f          	j	20bc4 <__subtf3+0x1a8>
   215f0:	00100693          	li	a3,1
   215f4:	00000713          	li	a4,0
   215f8:	00100793          	li	a5,1
   215fc:	fbdff06f          	j	215b8 <__subtf3+0xb9c>
   21600:	00000813          	li	a6,0
   21604:	00090863          	beqz	s2,21614 <__subtf3+0xbf8>
   21608:	00300613          	li	a2,3
   2160c:	00c91a63          	bne	s2,a2,21620 <__subtf3+0xc04>
   21610:	00049e63          	bnez	s1,2162c <__subtf3+0xc10>
   21614:	0057e793          	or	a5,a5,5
   21618:	00080593          	mv	a1,a6
   2161c:	88dff06f          	j	20ea8 <__subtf3+0x48c>
   21620:	00200613          	li	a2,2
   21624:	00c91463          	bne	s2,a2,2162c <__subtf3+0xc10>
   21628:	fe0496e3          	bnez	s1,21614 <__subtf3+0xbf8>
   2162c:	fff00813          	li	a6,-1
   21630:	ffe68713          	add	a4,a3,-2
   21634:	fe1ff06f          	j	21614 <__subtf3+0xbf8>
   21638:	00078713          	mv	a4,a5
   2163c:	00000593          	li	a1,0
   21640:	00000813          	li	a6,0
   21644:	00500793          	li	a5,5
   21648:	861ff06f          	j	20ea8 <__subtf3+0x48c>
   2164c:	00000593          	li	a1,0
   21650:	00040713          	mv	a4,s0
   21654:	be1ff06f          	j	21234 <__subtf3+0x818>
   21658:	00050813          	mv	a6,a0
   2165c:	84dff06f          	j	20ea8 <__subtf3+0x48c>
   21660:	01000793          	li	a5,16
   21664:	888714e3          	bne	a4,s0,20eec <__subtf3+0x4d0>
   21668:	fe030c63          	beqz	t1,20e60 <__subtf3+0x444>
   2166c:	0326d713          	srl	a4,a3,0x32
   21670:	00177713          	and	a4,a4,1
   21674:	860708e3          	beqz	a4,20ee4 <__subtf3+0x4c8>
   21678:	80081ce3          	bnez	a6,20e90 <__subtf3+0x474>
   2167c:	00008737          	lui	a4,0x8
   21680:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   21684:	d30ff06f          	j	20bb4 <__subtf3+0x198>
   21688:	01000793          	li	a5,16
   2168c:	00871863          	bne	a4,s0,2169c <__subtf3+0xc80>
   21690:	860802e3          	beqz	a6,20ef4 <__subtf3+0x4d8>
   21694:	00c6f633          	and	a2,a3,a2
   21698:	fe061c63          	bnez	a2,20e90 <__subtf3+0x474>
   2169c:	fe081a63          	bnez	a6,20e90 <__subtf3+0x474>
   216a0:	855ff06f          	j	20ef4 <__subtf3+0x4d8>

00000000000216a4 <__fixtfsi>:
   216a4:	00050613          	mv	a2,a0
   216a8:	002027f3          	frrm	a5
   216ac:	00004837          	lui	a6,0x4
   216b0:	00159693          	sll	a3,a1,0x1
   216b4:	01059793          	sll	a5,a1,0x10
   216b8:	0316d693          	srl	a3,a3,0x31
   216bc:	ffe80713          	add	a4,a6,-2 # 3ffe <exit-0xc0ea>
   216c0:	0107d793          	srl	a5,a5,0x10
   216c4:	03f5d593          	srl	a1,a1,0x3f
   216c8:	00d74c63          	blt	a4,a3,216e0 <__fixtfsi+0x3c>
   216cc:	08069c63          	bnez	a3,21764 <__fixtfsi+0xc0>
   216d0:	00a7e7b3          	or	a5,a5,a0
   216d4:	00000513          	li	a0,0
   216d8:	08079263          	bnez	a5,2175c <__fixtfsi+0xb8>
   216dc:	00008067          	ret
   216e0:	01d80713          	add	a4,a6,29
   216e4:	02d75c63          	bge	a4,a3,2171c <__fixtfsi+0x78>
   216e8:	80000737          	lui	a4,0x80000
   216ec:	fff74713          	not	a4,a4
   216f0:	00b7053b          	addw	a0,a4,a1
   216f4:	06058c63          	beqz	a1,2176c <__fixtfsi+0xc8>
   216f8:	01e80813          	add	a6,a6,30
   216fc:	01000713          	li	a4,16
   21700:	07069863          	bne	a3,a6,21770 <__fixtfsi+0xcc>
   21704:	0117d693          	srl	a3,a5,0x11
   21708:	06069463          	bnez	a3,21770 <__fixtfsi+0xcc>
   2170c:	02f79793          	sll	a5,a5,0x2f
   21710:	00c7e7b3          	or	a5,a5,a2
   21714:	04079463          	bnez	a5,2175c <__fixtfsi+0xb8>
   21718:	00008067          	ret
   2171c:	00100713          	li	a4,1
   21720:	03071713          	sll	a4,a4,0x30
   21724:	00e7e7b3          	or	a5,a5,a4
   21728:	00004637          	lui	a2,0x4
   2172c:	ffffc737          	lui	a4,0xffffc
   21730:	0117071b          	addw	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd71f1>
   21734:	02f6061b          	addw	a2,a2,47 # 402f <exit-0xc0b9>
   21738:	00d7073b          	addw	a4,a4,a3
   2173c:	40d606bb          	subw	a3,a2,a3
   21740:	00e79733          	sll	a4,a5,a4
   21744:	00d7d7b3          	srl	a5,a5,a3
   21748:	00a76733          	or	a4,a4,a0
   2174c:	0007851b          	sext.w	a0,a5
   21750:	00058463          	beqz	a1,21758 <__fixtfsi+0xb4>
   21754:	40a0053b          	negw	a0,a0
   21758:	00070e63          	beqz	a4,21774 <__fixtfsi+0xd0>
   2175c:	00100713          	li	a4,1
   21760:	0100006f          	j	21770 <__fixtfsi+0xcc>
   21764:	00000513          	li	a0,0
   21768:	ff5ff06f          	j	2175c <__fixtfsi+0xb8>
   2176c:	01000713          	li	a4,16
   21770:	00172073          	csrs	fflags,a4
   21774:	00008067          	ret

0000000000021778 <__floatsitf>:
   21778:	fe010113          	add	sp,sp,-32
   2177c:	00113c23          	sd	ra,24(sp)
   21780:	00813823          	sd	s0,16(sp)
   21784:	00913423          	sd	s1,8(sp)
   21788:	06050463          	beqz	a0,217f0 <__floatsitf+0x78>
   2178c:	0005079b          	sext.w	a5,a0
   21790:	03f55493          	srl	s1,a0,0x3f
   21794:	00055463          	bgez	a0,2179c <__floatsitf+0x24>
   21798:	40f007bb          	negw	a5,a5
   2179c:	02079413          	sll	s0,a5,0x20
   217a0:	02045413          	srl	s0,s0,0x20
   217a4:	00040513          	mv	a0,s0
   217a8:	508000ef          	jal	21cb0 <__clzdi2>
   217ac:	000045b7          	lui	a1,0x4
   217b0:	03e5859b          	addw	a1,a1,62 # 403e <exit-0xc0aa>
   217b4:	40a585bb          	subw	a1,a1,a0
   217b8:	ff15051b          	addw	a0,a0,-15
   217bc:	00a417b3          	sll	a5,s0,a0
   217c0:	01813083          	ld	ra,24(sp)
   217c4:	01013403          	ld	s0,16(sp)
   217c8:	00f4949b          	sllw	s1,s1,0xf
   217cc:	0095e5b3          	or	a1,a1,s1
   217d0:	01079793          	sll	a5,a5,0x10
   217d4:	03059593          	sll	a1,a1,0x30
   217d8:	0107d793          	srl	a5,a5,0x10
   217dc:	00813483          	ld	s1,8(sp)
   217e0:	00000513          	li	a0,0
   217e4:	00b7e5b3          	or	a1,a5,a1
   217e8:	02010113          	add	sp,sp,32
   217ec:	00008067          	ret
   217f0:	00000793          	li	a5,0
   217f4:	00000593          	li	a1,0
   217f8:	00000493          	li	s1,0
   217fc:	fc5ff06f          	j	217c0 <__floatsitf+0x48>

0000000000021800 <__extenddftf2>:
   21800:	fe010113          	add	sp,sp,-32
   21804:	e20507d3          	fmv.x.d	a5,fa0
   21808:	00113c23          	sd	ra,24(sp)
   2180c:	00813823          	sd	s0,16(sp)
   21810:	00913423          	sd	s1,8(sp)
   21814:	00202773          	frrm	a4
   21818:	0347d513          	srl	a0,a5,0x34
   2181c:	7ff57513          	and	a0,a0,2047
   21820:	00c79413          	sll	s0,a5,0xc
   21824:	03f7d493          	srl	s1,a5,0x3f
   21828:	00150793          	add	a5,a0,1
   2182c:	7fe7f793          	and	a5,a5,2046
   21830:	00c45413          	srl	s0,s0,0xc
   21834:	02078063          	beqz	a5,21854 <__extenddftf2+0x54>
   21838:	000047b7          	lui	a5,0x4
   2183c:	c0078793          	add	a5,a5,-1024 # 3c00 <exit-0xc4e8>
   21840:	00f50533          	add	a0,a0,a5
   21844:	00445793          	srl	a5,s0,0x4
   21848:	03c41413          	sll	s0,s0,0x3c
   2184c:	00000713          	li	a4,0
   21850:	0840006f          	j	218d4 <__extenddftf2+0xd4>
   21854:	04051a63          	bnez	a0,218a8 <__extenddftf2+0xa8>
   21858:	00000793          	li	a5,0
   2185c:	fe0408e3          	beqz	s0,2184c <__extenddftf2+0x4c>
   21860:	00040513          	mv	a0,s0
   21864:	44c000ef          	jal	21cb0 <__clzdi2>
   21868:	0005071b          	sext.w	a4,a0
   2186c:	00e00793          	li	a5,14
   21870:	02e7c463          	blt	a5,a4,21898 <__extenddftf2+0x98>
   21874:	00f00793          	li	a5,15
   21878:	40a787bb          	subw	a5,a5,a0
   2187c:	0315071b          	addw	a4,a0,49
   21880:	00f457b3          	srl	a5,s0,a5
   21884:	00e41433          	sll	s0,s0,a4
   21888:	00004737          	lui	a4,0x4
   2188c:	c0c7071b          	addw	a4,a4,-1012 # 3c0c <exit-0xc4dc>
   21890:	40a7053b          	subw	a0,a4,a0
   21894:	fb9ff06f          	j	2184c <__extenddftf2+0x4c>
   21898:	ff15079b          	addw	a5,a0,-15
   2189c:	00f417b3          	sll	a5,s0,a5
   218a0:	00000413          	li	s0,0
   218a4:	fe5ff06f          	j	21888 <__extenddftf2+0x88>
   218a8:	06040263          	beqz	s0,2190c <__extenddftf2+0x10c>
   218ac:	00100693          	li	a3,1
   218b0:	03369713          	sll	a4,a3,0x33
   218b4:	00e43733          	sltu	a4,s0,a4
   218b8:	00445793          	srl	a5,s0,0x4
   218bc:	02f69693          	sll	a3,a3,0x2f
   218c0:	00008537          	lui	a0,0x8
   218c4:	0047171b          	sllw	a4,a4,0x4
   218c8:	00d7e7b3          	or	a5,a5,a3
   218cc:	03c41413          	sll	s0,s0,0x3c
   218d0:	fff50513          	add	a0,a0,-1 # 7fff <exit-0x80e9>
   218d4:	01079593          	sll	a1,a5,0x10
   218d8:	00f4979b          	sllw	a5,s1,0xf
   218dc:	00f56533          	or	a0,a0,a5
   218e0:	03051513          	sll	a0,a0,0x30
   218e4:	0105d593          	srl	a1,a1,0x10
   218e8:	00a5e5b3          	or	a1,a1,a0
   218ec:	00070463          	beqz	a4,218f4 <__extenddftf2+0xf4>
   218f0:	00186073          	csrs	fflags,16
   218f4:	01813083          	ld	ra,24(sp)
   218f8:	00040513          	mv	a0,s0
   218fc:	01013403          	ld	s0,16(sp)
   21900:	00813483          	ld	s1,8(sp)
   21904:	02010113          	add	sp,sp,32
   21908:	00008067          	ret
   2190c:	00008537          	lui	a0,0x8
   21910:	00000793          	li	a5,0
   21914:	fff50513          	add	a0,a0,-1 # 7fff <exit-0x80e9>
   21918:	f35ff06f          	j	2184c <__extenddftf2+0x4c>

000000000002191c <__trunctfdf2>:
   2191c:	00202873          	frrm	a6
   21920:	000088b7          	lui	a7,0x8
   21924:	0305d713          	srl	a4,a1,0x30
   21928:	fff88e13          	add	t3,a7,-1 # 7fff <exit-0x80e9>
   2192c:	fff00793          	li	a5,-1
   21930:	0107d693          	srl	a3,a5,0x10
   21934:	01c77733          	and	a4,a4,t3
   21938:	03f5d613          	srl	a2,a1,0x3f
   2193c:	00170313          	add	t1,a4,1
   21940:	00d5f5b3          	and	a1,a1,a3
   21944:	ffe88893          	add	a7,a7,-2
   21948:	00359593          	sll	a1,a1,0x3
   2194c:	03d55693          	srl	a3,a0,0x3d
   21950:	011378b3          	and	a7,t1,a7
   21954:	00b6e6b3          	or	a3,a3,a1
   21958:	0008081b          	sext.w	a6,a6
   2195c:	00351593          	sll	a1,a0,0x3
   21960:	16088063          	beqz	a7,21ac0 <__trunctfdf2+0x1a4>
   21964:	ffffc8b7          	lui	a7,0xffffc
   21968:	40088893          	add	a7,a7,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd75e0>
   2196c:	01170733          	add	a4,a4,a7
   21970:	7fe00893          	li	a7,2046
   21974:	02e8da63          	bge	a7,a4,219a8 <__trunctfdf2+0x8c>
   21978:	30080063          	beqz	a6,21c78 <__trunctfdf2+0x35c>
   2197c:	00300713          	li	a4,3
   21980:	00e81a63          	bne	a6,a4,21994 <__trunctfdf2+0x78>
   21984:	32060063          	beqz	a2,21ca4 <__trunctfdf2+0x388>
   21988:	7fe00713          	li	a4,2046
   2198c:	00500513          	li	a0,5
   21990:	2400006f          	j	21bd0 <__trunctfdf2+0x2b4>
   21994:	00200713          	li	a4,2
   21998:	00e81463          	bne	a6,a4,219a0 <__trunctfdf2+0x84>
   2199c:	30061663          	bnez	a2,21ca8 <__trunctfdf2+0x38c>
   219a0:	fff00793          	li	a5,-1
   219a4:	fe5ff06f          	j	21988 <__trunctfdf2+0x6c>
   219a8:	0ee04463          	bgtz	a4,21a90 <__trunctfdf2+0x174>
   219ac:	fcc00793          	li	a5,-52
   219b0:	12f74063          	blt	a4,a5,21ad0 <__trunctfdf2+0x1b4>
   219b4:	00100793          	li	a5,1
   219b8:	03379793          	sll	a5,a5,0x33
   219bc:	03d00893          	li	a7,61
   219c0:	00f6e6b3          	or	a3,a3,a5
   219c4:	40e888b3          	sub	a7,a7,a4
   219c8:	03f00793          	li	a5,63
   219cc:	0007071b          	sext.w	a4,a4
   219d0:	0917c863          	blt	a5,a7,21a60 <__trunctfdf2+0x144>
   219d4:	03d00793          	li	a5,61
   219d8:	0037051b          	addw	a0,a4,3
   219dc:	40e787bb          	subw	a5,a5,a4
   219e0:	00f5d7b3          	srl	a5,a1,a5
   219e4:	00a595b3          	sll	a1,a1,a0
   219e8:	00b035b3          	snez	a1,a1
   219ec:	00b7e7b3          	or	a5,a5,a1
   219f0:	00a696b3          	sll	a3,a3,a0
   219f4:	00f6e7b3          	or	a5,a3,a5
   219f8:	00179713          	sll	a4,a5,0x1
   219fc:	00777693          	and	a3,a4,7
   21a00:	0c069c63          	bnez	a3,21ad8 <__trunctfdf2+0x1bc>
   21a04:	0077f593          	and	a1,a5,7
   21a08:	00000713          	li	a4,0
   21a0c:	00100693          	li	a3,1
   21a10:	00000513          	li	a0,0
   21a14:	02058663          	beqz	a1,21a40 <__trunctfdf2+0x124>
   21a18:	00200593          	li	a1,2
   21a1c:	1eb80263          	beq	a6,a1,21c00 <__trunctfdf2+0x2e4>
   21a20:	00300593          	li	a1,3
   21a24:	1ab80063          	beq	a6,a1,21bc4 <__trunctfdf2+0x2a8>
   21a28:	1e081263          	bnez	a6,21c0c <__trunctfdf2+0x2f0>
   21a2c:	00f7f593          	and	a1,a5,15
   21a30:	00400513          	li	a0,4
   21a34:	16a59e63          	bne	a1,a0,21bb0 <__trunctfdf2+0x294>
   21a38:	00100513          	li	a0,1
   21a3c:	12069863          	bnez	a3,21b6c <__trunctfdf2+0x250>
   21a40:	7ff00693          	li	a3,2047
   21a44:	0037d793          	srl	a5,a5,0x3
   21a48:	0ed71063          	bne	a4,a3,21b28 <__trunctfdf2+0x20c>
   21a4c:	0c078e63          	beqz	a5,21b28 <__trunctfdf2+0x20c>
   21a50:	00100793          	li	a5,1
   21a54:	03379793          	sll	a5,a5,0x33
   21a58:	00000613          	li	a2,0
   21a5c:	0cc0006f          	j	21b28 <__trunctfdf2+0x20c>
   21a60:	ffd00513          	li	a0,-3
   21a64:	40e5053b          	subw	a0,a0,a4
   21a68:	04000313          	li	t1,64
   21a6c:	00a6d533          	srl	a0,a3,a0
   21a70:	00000793          	li	a5,0
   21a74:	00688663          	beq	a7,t1,21a80 <__trunctfdf2+0x164>
   21a78:	0437071b          	addw	a4,a4,67
   21a7c:	00e697b3          	sll	a5,a3,a4
   21a80:	00b7e7b3          	or	a5,a5,a1
   21a84:	00f037b3          	snez	a5,a5
   21a88:	00f567b3          	or	a5,a0,a5
   21a8c:	f6dff06f          	j	219f8 <__trunctfdf2+0xdc>
   21a90:	00751513          	sll	a0,a0,0x7
   21a94:	00a03533          	snez	a0,a0
   21a98:	03c5d593          	srl	a1,a1,0x3c
   21a9c:	00b56533          	or	a0,a0,a1
   21aa0:	00469793          	sll	a5,a3,0x4
   21aa4:	00a7e7b3          	or	a5,a5,a0
   21aa8:	00757513          	and	a0,a0,7
   21aac:	00000693          	li	a3,0
   21ab0:	f60514e3          	bnez	a0,21a18 <__trunctfdf2+0xfc>
   21ab4:	0037d793          	srl	a5,a5,0x3
   21ab8:	00000513          	li	a0,0
   21abc:	06c0006f          	j	21b28 <__trunctfdf2+0x20c>
   21ac0:	00b6e5b3          	or	a1,a3,a1
   21ac4:	02071e63          	bnez	a4,21b00 <__trunctfdf2+0x1e4>
   21ac8:	03f61793          	sll	a5,a2,0x3f
   21acc:	06058e63          	beqz	a1,21b48 <__trunctfdf2+0x22c>
   21ad0:	00100793          	li	a5,1
   21ad4:	00200713          	li	a4,2
   21ad8:	00200693          	li	a3,2
   21adc:	0077f513          	and	a0,a5,7
   21ae0:	0cd80463          	beq	a6,a3,21ba8 <__trunctfdf2+0x28c>
   21ae4:	00300693          	li	a3,3
   21ae8:	08d80663          	beq	a6,a3,21b74 <__trunctfdf2+0x258>
   21aec:	06080263          	beqz	a6,21b50 <__trunctfdf2+0x234>
   21af0:	00000713          	li	a4,0
   21af4:	00100693          	li	a3,1
   21af8:	f20510e3          	bnez	a0,21a18 <__trunctfdf2+0xfc>
   21afc:	0700006f          	j	21b6c <__trunctfdf2+0x250>
   21b00:	18058863          	beqz	a1,21c90 <__trunctfdf2+0x374>
   21b04:	00000513          	li	a0,0
   21b08:	01c71863          	bne	a4,t3,21b18 <__trunctfdf2+0x1fc>
   21b0c:	0326d693          	srl	a3,a3,0x32
   21b10:	0016c693          	xor	a3,a3,1
   21b14:	00469513          	sll	a0,a3,0x4
   21b18:	00100793          	li	a5,1
   21b1c:	00000613          	li	a2,0
   21b20:	7ff00713          	li	a4,2047
   21b24:	03379793          	sll	a5,a5,0x33
   21b28:	7ff77713          	and	a4,a4,2047
   21b2c:	00c79793          	sll	a5,a5,0xc
   21b30:	00c7d793          	srl	a5,a5,0xc
   21b34:	03471713          	sll	a4,a4,0x34
   21b38:	00f76733          	or	a4,a4,a5
   21b3c:	03f61793          	sll	a5,a2,0x3f
   21b40:	00f767b3          	or	a5,a4,a5
   21b44:	10051c63          	bnez	a0,21c5c <__trunctfdf2+0x340>
   21b48:	f2078553          	fmv.d.x	fa0,a5
   21b4c:	00008067          	ret
   21b50:	00f77593          	and	a1,a4,15
   21b54:	00400693          	li	a3,4
   21b58:	00470713          	add	a4,a4,4
   21b5c:	02d59063          	bne	a1,a3,21b7c <__trunctfdf2+0x260>
   21b60:	00100693          	li	a3,1
   21b64:	00000713          	li	a4,0
   21b68:	ea051ce3          	bnez	a0,21a20 <__trunctfdf2+0x104>
   21b6c:	00300513          	li	a0,3
   21b70:	ed1ff06f          	j	21a40 <__trunctfdf2+0x124>
   21b74:	f6061ee3          	bnez	a2,21af0 <__trunctfdf2+0x1d4>
   21b78:	00870713          	add	a4,a4,8
   21b7c:	00100693          	li	a3,1
   21b80:	03869693          	sll	a3,a3,0x38
   21b84:	00d775b3          	and	a1,a4,a3
   21b88:	0015b693          	seqz	a3,a1
   21b8c:	00000713          	li	a4,0
   21b90:	e80514e3          	bnez	a0,21a18 <__trunctfdf2+0xfc>
   21b94:	00300513          	li	a0,3
   21b98:	ea0584e3          	beqz	a1,21a40 <__trunctfdf2+0x124>
   21b9c:	0037d793          	srl	a5,a5,0x3
   21ba0:	00100513          	li	a0,1
   21ba4:	f85ff06f          	j	21b28 <__trunctfdf2+0x20c>
   21ba8:	fc0618e3          	bnez	a2,21b78 <__trunctfdf2+0x25c>
   21bac:	f45ff06f          	j	21af0 <__trunctfdf2+0x1d4>
   21bb0:	00478793          	add	a5,a5,4
   21bb4:	00100513          	li	a0,1
   21bb8:	00068c63          	beqz	a3,21bd0 <__trunctfdf2+0x2b4>
   21bbc:	0026e513          	or	a0,a3,2
   21bc0:	0100006f          	j	21bd0 <__trunctfdf2+0x2b4>
   21bc4:	04060063          	beqz	a2,21c04 <__trunctfdf2+0x2e8>
   21bc8:	00100513          	li	a0,1
   21bcc:	04069663          	bnez	a3,21c18 <__trunctfdf2+0x2fc>
   21bd0:	0377d693          	srl	a3,a5,0x37
   21bd4:	0016f693          	and	a3,a3,1
   21bd8:	e60684e3          	beqz	a3,21a40 <__trunctfdf2+0x124>
   21bdc:	00170713          	add	a4,a4,1
   21be0:	7ff00693          	li	a3,2047
   21be4:	02d70e63          	beq	a4,a3,21c20 <__trunctfdf2+0x304>
   21be8:	1ff00693          	li	a3,511
   21bec:	03469693          	sll	a3,a3,0x34
   21bf0:	0037d793          	srl	a5,a5,0x3
   21bf4:	fff68693          	add	a3,a3,-1
   21bf8:	00d7f7b3          	and	a5,a5,a3
   21bfc:	f2dff06f          	j	21b28 <__trunctfdf2+0x20c>
   21c00:	fa060ae3          	beqz	a2,21bb4 <__trunctfdf2+0x298>
   21c04:	00878793          	add	a5,a5,8
   21c08:	fadff06f          	j	21bb4 <__trunctfdf2+0x298>
   21c0c:	00100513          	li	a0,1
   21c10:	fa0696e3          	bnez	a3,21bbc <__trunctfdf2+0x2a0>
   21c14:	fbdff06f          	j	21bd0 <__trunctfdf2+0x2b4>
   21c18:	00100693          	li	a3,1
   21c1c:	fa1ff06f          	j	21bbc <__trunctfdf2+0x2a0>
   21c20:	00556513          	or	a0,a0,5
   21c24:	04080063          	beqz	a6,21c64 <__trunctfdf2+0x348>
   21c28:	00300793          	li	a5,3
   21c2c:	00f81e63          	bne	a6,a5,21c48 <__trunctfdf2+0x32c>
   21c30:	02060a63          	beqz	a2,21c64 <__trunctfdf2+0x348>
   21c34:	7ff00713          	li	a4,2047
   21c38:	03471713          	sll	a4,a4,0x34
   21c3c:	03f61793          	sll	a5,a2,0x3f
   21c40:	fff70713          	add	a4,a4,-1
   21c44:	02c0006f          	j	21c70 <__trunctfdf2+0x354>
   21c48:	00200793          	li	a5,2
   21c4c:	fef814e3          	bne	a6,a5,21c34 <__trunctfdf2+0x318>
   21c50:	00061a63          	bnez	a2,21c64 <__trunctfdf2+0x348>
   21c54:	00003797          	auipc	a5,0x3
   21c58:	10c7b783          	ld	a5,268(a5) # 24d60 <mask+0x8>
   21c5c:	00152073          	csrs	fflags,a0
   21c60:	ee9ff06f          	j	21b48 <__trunctfdf2+0x22c>
   21c64:	7ff00713          	li	a4,2047
   21c68:	03f61793          	sll	a5,a2,0x3f
   21c6c:	03471713          	sll	a4,a4,0x34
   21c70:	00e7e7b3          	or	a5,a5,a4
   21c74:	fe9ff06f          	j	21c5c <__trunctfdf2+0x340>
   21c78:	7ff00713          	li	a4,2047
   21c7c:	03f61793          	sll	a5,a2,0x3f
   21c80:	03471713          	sll	a4,a4,0x34
   21c84:	00e7e7b3          	or	a5,a5,a4
   21c88:	00500513          	li	a0,5
   21c8c:	fd1ff06f          	j	21c5c <__trunctfdf2+0x340>
   21c90:	7ff00793          	li	a5,2047
   21c94:	03f61713          	sll	a4,a2,0x3f
   21c98:	03479793          	sll	a5,a5,0x34
   21c9c:	00f767b3          	or	a5,a4,a5
   21ca0:	ea9ff06f          	j	21b48 <__trunctfdf2+0x22c>
   21ca4:	7ff00793          	li	a5,2047
   21ca8:	03479793          	sll	a5,a5,0x34
   21cac:	fddff06f          	j	21c88 <__trunctfdf2+0x36c>

0000000000021cb0 <__clzdi2>:
   21cb0:	03855793          	srl	a5,a0,0x38
   21cb4:	04079063          	bnez	a5,21cf4 <__clzdi2+0x44>
   21cb8:	03800793          	li	a5,56
   21cbc:	ff878793          	add	a5,a5,-8
   21cc0:	00078863          	beqz	a5,21cd0 <__clzdi2+0x20>
   21cc4:	00f55733          	srl	a4,a0,a5
   21cc8:	0ff77713          	zext.b	a4,a4
   21ccc:	fe0708e3          	beqz	a4,21cbc <__clzdi2+0xc>
   21cd0:	04000713          	li	a4,64
   21cd4:	40f70733          	sub	a4,a4,a5
   21cd8:	00f55533          	srl	a0,a0,a5
   21cdc:	00001797          	auipc	a5,0x1
   21ce0:	e3478793          	add	a5,a5,-460 # 22b10 <__clz_tab>
   21ce4:	00a787b3          	add	a5,a5,a0
   21ce8:	0007c503          	lbu	a0,0(a5)
   21cec:	40a7053b          	subw	a0,a4,a0
   21cf0:	00008067          	ret
   21cf4:	03800793          	li	a5,56
   21cf8:	fd9ff06f          	j	21cd0 <__clzdi2+0x20>
