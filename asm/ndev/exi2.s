.text

.include "macros.inc"

.global __EXI2Imm
__EXI2Imm:
/* 8052CAE4 00528024  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052CAE8 00528028  7C 08 02 A6 */	mflr r0
/* 8052CAEC 0052802C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052CAF0 00528030  39 61 00 20 */	addi r11, r1, 0x20
/* 8052CAF4 00528034  4B FE AA 39 */	bl _savegpr_26
/* 8052CAF8 00528038  2C 05 00 00 */	cmpwi r5, 0
/* 8052CAFC 0052803C  41 82 01 5C */	beq lbl_8052CC58
/* 8052CB00 00528040  2C 84 00 00 */	cmpwi cr1, r4, 0
/* 8052CB04 00528044  38 00 00 00 */	li r0, 0
/* 8052CB08 00528048  38 E0 00 00 */	li r7, 0
/* 8052CB0C 0052804C  40 85 01 44 */	ble cr1, lbl_8052CC50
/* 8052CB10 00528050  2C 04 00 08 */	cmpwi r4, 8
/* 8052CB14 00528054  39 24 FF F8 */	addi r9, r4, -8
/* 8052CB18 00528058  40 81 01 04 */	ble lbl_8052CC1C
/* 8052CB1C 0052805C  39 00 00 00 */	li r8, 0
/* 8052CB20 00528060  41 84 00 18 */	blt cr1, lbl_8052CB38
/* 8052CB24 00528064  3C C0 80 00 */	lis r6, 0x7FFFFFFE@ha
/* 8052CB28 00528068  38 C6 FF FE */	addi r6, r6, 0x7FFFFFFE@l
/* 8052CB2C 0052806C  7C 04 30 00 */	cmpw r4, r6
/* 8052CB30 00528070  41 81 00 08 */	bgt lbl_8052CB38
/* 8052CB34 00528074  39 00 00 01 */	li r8, 1
lbl_8052CB38:
/* 8052CB38 00528078  2C 08 00 00 */	cmpwi r8, 0
/* 8052CB3C 0052807C  41 82 00 E0 */	beq lbl_8052CC1C
/* 8052CB40 00528080  39 09 00 07 */	addi r8, r9, 7
/* 8052CB44 00528084  7C 66 1B 78 */	mr r6, r3
/* 8052CB48 00528088  55 08 E8 FE */	srwi r8, r8, 3
/* 8052CB4C 0052808C  7D 09 03 A6 */	mtctr r8
/* 8052CB50 00528090  2C 09 00 00 */	cmpwi r9, 0
/* 8052CB54 00528094  40 81 00 C8 */	ble lbl_8052CC1C
lbl_8052CB58:
/* 8052CB58 00528098  21 27 00 03 */	subfic r9, r7, 3
/* 8052CB5C 0052809C  39 07 00 01 */	addi r8, r7, 1
/* 8052CB60 005280A0  23 88 00 03 */	subfic r28, r8, 3
/* 8052CB64 005280A4  89 46 00 00 */	lbz r10, 0(r6)
/* 8052CB68 005280A8  39 07 00 02 */	addi r8, r7, 2
/* 8052CB6C 005280AC  8B 66 00 01 */	lbz r27, 1(r6)
/* 8052CB70 005280B0  23 A8 00 03 */	subfic r29, r8, 3
/* 8052CB74 005280B4  57 9C 18 38 */	slwi r28, r28, 3
/* 8052CB78 005280B8  55 28 18 38 */	slwi r8, r9, 3
/* 8052CB7C 005280BC  7D 87 00 D0 */	neg r12, r7
/* 8052CB80 005280C0  7D 5A 40 30 */	slw r26, r10, r8
/* 8052CB84 005280C4  57 BE 18 38 */	slwi r30, r29, 3
/* 8052CB88 005280C8  8B E6 00 02 */	lbz r31, 2(r6)
/* 8052CB8C 005280CC  39 07 00 04 */	addi r8, r7, 4
/* 8052CB90 005280D0  21 68 00 03 */	subfic r11, r8, 3
/* 8052CB94 005280D4  7C 00 D3 78 */	or r0, r0, r26
/* 8052CB98 005280D8  7F 7C E0 30 */	slw r28, r27, r28
/* 8052CB9C 005280DC  39 07 00 05 */	addi r8, r7, 5
/* 8052CBA0 005280E0  7F FF F0 30 */	slw r31, r31, r30
/* 8052CBA4 005280E4  8B A6 00 03 */	lbz r29, 3(r6)
/* 8052CBA8 005280E8  55 8C 18 38 */	slwi r12, r12, 3
/* 8052CBAC 005280EC  7C 00 E3 78 */	or r0, r0, r28
/* 8052CBB0 005280F0  21 48 00 03 */	subfic r10, r8, 3
/* 8052CBB4 005280F4  39 07 00 06 */	addi r8, r7, 6
/* 8052CBB8 005280F8  7F BD 60 30 */	slw r29, r29, r12
/* 8052CBBC 005280FC  7C 00 FB 78 */	or r0, r0, r31
/* 8052CBC0 00528100  21 28 00 03 */	subfic r9, r8, 3
/* 8052CBC4 00528104  39 07 00 07 */	addi r8, r7, 7
/* 8052CBC8 00528108  55 4C 18 38 */	slwi r12, r10, 3
/* 8052CBCC 0052810C  8B E6 00 05 */	lbz r31, 5(r6)
/* 8052CBD0 00528110  21 08 00 03 */	subfic r8, r8, 3
/* 8052CBD4 00528114  55 2A 18 38 */	slwi r10, r9, 3
/* 8052CBD8 00528118  8B C6 00 04 */	lbz r30, 4(r6)
/* 8052CBDC 0052811C  55 6B 18 38 */	slwi r11, r11, 3
/* 8052CBE0 00528120  7C 00 EB 78 */	or r0, r0, r29
/* 8052CBE4 00528124  89 26 00 07 */	lbz r9, 7(r6)
/* 8052CBE8 00528128  7F DE 58 30 */	slw r30, r30, r11
/* 8052CBEC 0052812C  89 66 00 06 */	lbz r11, 6(r6)
/* 8052CBF0 00528130  55 08 18 38 */	slwi r8, r8, 3
/* 8052CBF4 00528134  7F EC 60 30 */	slw r12, r31, r12
/* 8052CBF8 00528138  7C 00 F3 78 */	or r0, r0, r30
/* 8052CBFC 0052813C  7D 6A 50 30 */	slw r10, r11, r10
/* 8052CC00 00528140  7C 00 63 78 */	or r0, r0, r12
/* 8052CC04 00528144  7D 28 40 30 */	slw r8, r9, r8
/* 8052CC08 00528148  7C 00 53 78 */	or r0, r0, r10
/* 8052CC0C 0052814C  38 E7 00 08 */	addi r7, r7, 8
/* 8052CC10 00528150  7C 00 43 78 */	or r0, r0, r8
/* 8052CC14 00528154  38 C6 00 08 */	addi r6, r6, 8
/* 8052CC18 00528158  42 00 FF 40 */	bdnz lbl_8052CB58
lbl_8052CC1C:
/* 8052CC1C 0052815C  7C C7 20 50 */	subf r6, r7, r4
/* 8052CC20 00528160  7D 23 3A 14 */	add r9, r3, r7
/* 8052CC24 00528164  7C C9 03 A6 */	mtctr r6
/* 8052CC28 00528168  7C 07 20 00 */	cmpw r7, r4
/* 8052CC2C 0052816C  40 80 00 24 */	bge lbl_8052CC50
lbl_8052CC30:
/* 8052CC30 00528170  20 C7 00 03 */	subfic r6, r7, 3
/* 8052CC34 00528174  89 09 00 00 */	lbz r8, 0(r9)
/* 8052CC38 00528178  54 C6 18 38 */	slwi r6, r6, 3
/* 8052CC3C 0052817C  39 29 00 01 */	addi r9, r9, 1
/* 8052CC40 00528180  7D 06 30 30 */	slw r6, r8, r6
/* 8052CC44 00528184  38 E7 00 01 */	addi r7, r7, 1
/* 8052CC48 00528188  7C 00 33 78 */	or r0, r0, r6
/* 8052CC4C 0052818C  42 00 FF E4 */	bdnz lbl_8052CC30
lbl_8052CC50:
/* 8052CC50 00528190  3C C0 CD 00 */	lis r6, 0xCD006838@ha
/* 8052CC54 00528194  90 06 68 38 */	stw r0, 0xCD006838@l(r6)
lbl_8052CC58:
/* 8052CC58 00528198  54 A6 10 3A */	slwi r6, r5, 2
/* 8052CC5C 0052819C  38 04 FF FF */	addi r0, r4, -1
/* 8052CC60 005281A0  60 C7 00 01 */	ori r7, r6, 1
/* 8052CC64 005281A4  54 00 20 36 */	slwi r0, r0, 4
/* 8052CC68 005281A8  3C C0 CD 00 */	lis r6, 0xCD006834@ha
/* 8052CC6C 005281AC  7C E0 03 78 */	or r0, r7, r0
/* 8052CC70 005281B0  90 06 68 34 */	stw r0, 0xCD006834@l(r6)
lbl_8052CC74:
/* 8052CC74 005281B4  80 06 68 34 */	lwz r0, 0x6834(r6)
/* 8052CC78 005281B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8052CC7C 005281BC  40 82 FF F8 */	bne lbl_8052CC74
/* 8052CC80 005281C0  2C 05 00 00 */	cmpwi r5, 0
/* 8052CC84 005281C4  40 82 01 2C */	bne lbl_8052CDB0
/* 8052CC88 005281C8  3C A0 CD 00 */	lis r5, 0xCD006838@ha
/* 8052CC8C 005281CC  2C 84 00 00 */	cmpwi cr1, r4, 0
/* 8052CC90 005281D0  80 05 68 38 */	lwz r0, 0xCD006838@l(r5)
/* 8052CC94 005281D4  38 A0 00 00 */	li r5, 0
/* 8052CC98 005281D8  40 85 01 18 */	ble cr1, lbl_8052CDB0
/* 8052CC9C 005281DC  2C 04 00 08 */	cmpwi r4, 8
/* 8052CCA0 005281E0  38 E4 FF F8 */	addi r7, r4, -8
/* 8052CCA4 005281E4  40 81 00 E0 */	ble lbl_8052CD84
/* 8052CCA8 005281E8  39 00 00 00 */	li r8, 0
/* 8052CCAC 005281EC  41 84 00 18 */	blt cr1, lbl_8052CCC4
/* 8052CCB0 005281F0  3C C0 80 00 */	lis r6, 0x7FFFFFFE@ha
/* 8052CCB4 005281F4  38 C6 FF FE */	addi r6, r6, 0x7FFFFFFE@l
/* 8052CCB8 005281F8  7C 04 30 00 */	cmpw r4, r6
/* 8052CCBC 005281FC  41 81 00 08 */	bgt lbl_8052CCC4
/* 8052CCC0 00528200  39 00 00 01 */	li r8, 1
lbl_8052CCC4:
/* 8052CCC4 00528204  2C 08 00 00 */	cmpwi r8, 0
/* 8052CCC8 00528208  41 82 00 BC */	beq lbl_8052CD84
/* 8052CCCC 0052820C  38 C7 00 07 */	addi r6, r7, 7
/* 8052CCD0 00528210  54 C6 E8 FE */	srwi r6, r6, 3
/* 8052CCD4 00528214  7C C9 03 A6 */	mtctr r6
/* 8052CCD8 00528218  2C 07 00 00 */	cmpwi r7, 0
/* 8052CCDC 0052821C  40 81 00 A8 */	ble lbl_8052CD84
lbl_8052CCE0:
/* 8052CCE0 00528220  20 C5 00 03 */	subfic r6, r5, 3
/* 8052CCE4 00528224  38 E5 00 01 */	addi r7, r5, 1
/* 8052CCE8 00528228  54 C8 18 38 */	slwi r8, r6, 3
/* 8052CCEC 0052822C  7C 09 44 30 */	srw r9, r0, r8
/* 8052CCF0 00528230  20 E7 00 03 */	subfic r7, r7, 3
/* 8052CCF4 00528234  54 E8 18 38 */	slwi r8, r7, 3
/* 8052CCF8 00528238  99 23 00 00 */	stb r9, 0(r3)
/* 8052CCFC 0052823C  38 E5 00 02 */	addi r7, r5, 2
/* 8052CD00 00528240  7C C5 00 D0 */	neg r6, r5
/* 8052CD04 00528244  7C 09 44 30 */	srw r9, r0, r8
/* 8052CD08 00528248  54 C8 18 38 */	slwi r8, r6, 3
/* 8052CD0C 0052824C  20 E7 00 03 */	subfic r7, r7, 3
/* 8052CD10 00528250  54 E6 18 38 */	slwi r6, r7, 3
/* 8052CD14 00528254  99 23 00 01 */	stb r9, 1(r3)
/* 8052CD18 00528258  7C 09 34 30 */	srw r9, r0, r6
/* 8052CD1C 0052825C  7C 08 44 30 */	srw r8, r0, r8
/* 8052CD20 00528260  38 C5 00 04 */	addi r6, r5, 4
/* 8052CD24 00528264  99 23 00 02 */	stb r9, 2(r3)
/* 8052CD28 00528268  20 E6 00 03 */	subfic r7, r6, 3
/* 8052CD2C 0052826C  38 C5 00 05 */	addi r6, r5, 5
/* 8052CD30 00528270  99 03 00 03 */	stb r8, 3(r3)
/* 8052CD34 00528274  54 E7 18 38 */	slwi r7, r7, 3
/* 8052CD38 00528278  7C 09 3C 30 */	srw r9, r0, r7
/* 8052CD3C 0052827C  20 C6 00 03 */	subfic r6, r6, 3
/* 8052CD40 00528280  54 C8 18 38 */	slwi r8, r6, 3
/* 8052CD44 00528284  99 23 00 04 */	stb r9, 4(r3)
/* 8052CD48 00528288  38 C5 00 06 */	addi r6, r5, 6
/* 8052CD4C 0052828C  20 E6 00 03 */	subfic r7, r6, 3
/* 8052CD50 00528290  7C 08 44 30 */	srw r8, r0, r8
/* 8052CD54 00528294  38 C5 00 07 */	addi r6, r5, 7
/* 8052CD58 00528298  99 03 00 05 */	stb r8, 5(r3)
/* 8052CD5C 0052829C  54 E7 18 38 */	slwi r7, r7, 3
/* 8052CD60 005282A0  38 A5 00 08 */	addi r5, r5, 8
/* 8052CD64 005282A4  20 C6 00 03 */	subfic r6, r6, 3
/* 8052CD68 005282A8  7C 07 3C 30 */	srw r7, r0, r7
/* 8052CD6C 005282AC  54 C6 18 38 */	slwi r6, r6, 3
/* 8052CD70 005282B0  98 E3 00 06 */	stb r7, 6(r3)
/* 8052CD74 005282B4  7C 06 34 30 */	srw r6, r0, r6
/* 8052CD78 005282B8  98 C3 00 07 */	stb r6, 7(r3)
/* 8052CD7C 005282BC  38 63 00 08 */	addi r3, r3, 8
/* 8052CD80 005282C0  42 00 FF 60 */	bdnz lbl_8052CCE0
lbl_8052CD84:
/* 8052CD84 005282C4  7C C5 20 50 */	subf r6, r5, r4
/* 8052CD88 005282C8  7C C9 03 A6 */	mtctr r6
/* 8052CD8C 005282CC  7C 05 20 00 */	cmpw r5, r4
/* 8052CD90 005282D0  40 80 00 20 */	bge lbl_8052CDB0
lbl_8052CD94:
/* 8052CD94 005282D4  20 85 00 03 */	subfic r4, r5, 3
/* 8052CD98 005282D8  38 A5 00 01 */	addi r5, r5, 1
/* 8052CD9C 005282DC  54 84 18 38 */	slwi r4, r4, 3
/* 8052CDA0 005282E0  7C 04 24 30 */	srw r4, r0, r4
/* 8052CDA4 005282E4  98 83 00 00 */	stb r4, 0(r3)
/* 8052CDA8 005282E8  38 63 00 01 */	addi r3, r3, 1
/* 8052CDAC 005282EC  42 00 FF E8 */	bdnz lbl_8052CD94
lbl_8052CDB0:
/* 8052CDB0 005282F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8052CDB4 005282F4  38 60 00 01 */	li r3, 1
/* 8052CDB8 005282F8  4B FE A7 C1 */	bl _restgpr_26
/* 8052CDBC 005282FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052CDC0 00528300  7C 08 03 A6 */	mtlr r0
/* 8052CDC4 00528304  38 21 00 20 */	addi r1, r1, 0x20
/* 8052CDC8 00528308  4E 80 00 20 */	blr 

.global __DBEXIInit
__DBEXIInit:
/* 8052CDCC 0052830C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052CDD0 00528310  7C 08 02 A6 */	mflr r0
/* 8052CDD4 00528314  3C 60 00 02 */	lis r3, 0x00018000@ha
/* 8052CDD8 00528318  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052CDDC 0052831C  38 63 80 00 */	addi r3, r3, 0x00018000@l
/* 8052CDE0 00528320  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052CDE4 00528324  4B F7 B6 95 */	bl __OSMaskInterrupts
/* 8052CDE8 00528328  3C 60 CD 00 */	lis r3, 0xCD006834@ha
lbl_8052CDEC:
/* 8052CDEC 0052832C  80 03 68 34 */	lwz r0, 0xCD006834@l(r3)
/* 8052CDF0 00528330  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8052CDF4 00528334  28 00 00 01 */	cmplwi r0, 1
/* 8052CDF8 00528338  41 82 FF F4 */	beq lbl_8052CDEC
/* 8052CDFC 0052833C  3F E0 CD 00 */	lis r31, 0xCD006828@ha
/* 8052CE00 00528340  38 00 00 00 */	li r0, 0
/* 8052CE04 00528344  90 1F 68 28 */	stw r0, 0xCD006828@l(r31)
/* 8052CE08 00528348  3C 60 B4 00 */	lis r3, 0xb400
/* 8052CE0C 0052834C  3C 00 D4 00 */	lis r0, 0xd400
/* 8052CE10 00528350  38 80 00 04 */	li r4, 4
/* 8052CE14 00528354  90 61 00 0C */	stw r3, 0xc(r1)
/* 8052CE18 00528358  38 61 00 0C */	addi r3, r1, 0xc
/* 8052CE1C 0052835C  38 A0 00 01 */	li r5, 1
/* 8052CE20 00528360  90 01 00 08 */	stw r0, 8(r1)
/* 8052CE24 00528364  80 1F 68 28 */	lwz r0, 0x6828(r31)
/* 8052CE28 00528368  70 00 04 05 */	andi. r0, r0, 0x405
/* 8052CE2C 0052836C  60 00 00 C0 */	ori r0, r0, 0xc0
/* 8052CE30 00528370  90 1F 68 28 */	stw r0, 0x6828(r31)
/* 8052CE34 00528374  4B FF FC B1 */	bl __EXI2Imm
lbl_8052CE38:
/* 8052CE38 00528378  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 8052CE3C 0052837C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8052CE40 00528380  40 82 FF F8 */	bne lbl_8052CE38
/* 8052CE44 00528384  38 61 00 08 */	addi r3, r1, 8
/* 8052CE48 00528388  38 80 00 04 */	li r4, 4
/* 8052CE4C 0052838C  38 A0 00 01 */	li r5, 1
/* 8052CE50 00528390  4B FF FC 95 */	bl __EXI2Imm
/* 8052CE54 00528394  3C 60 CD 00 */	lis r3, 0xCD006834@ha
lbl_8052CE58:
/* 8052CE58 00528398  80 03 68 34 */	lwz r0, 0xCD006834@l(r3)
/* 8052CE5C 0052839C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8052CE60 005283A0  40 82 FF F8 */	bne lbl_8052CE58
/* 8052CE64 005283A4  3C 60 CD 00 */	lis r3, 0xCD006828@ha
/* 8052CE68 005283A8  80 03 68 28 */	lwz r0, 0xCD006828@l(r3)
/* 8052CE6C 005283AC  70 00 04 05 */	andi. r0, r0, 0x405
/* 8052CE70 005283B0  90 03 68 28 */	stw r0, 0x6828(r3)
/* 8052CE74 005283B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052CE78 005283B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052CE7C 005283BC  7C 08 03 A6 */	mtlr r0
/* 8052CE80 005283C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8052CE84 005283C4  4E 80 00 20 */	blr 

.global __DBEXIReadReg
__DBEXIReadReg:
/* 8052CE88 005283C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052CE8C 005283CC  7C 08 02 A6 */	mflr r0
/* 8052CE90 005283D0  38 C0 00 00 */	li r6, 0
/* 8052CE94 005283D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052CE98 005283D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052CE9C 005283DC  7C BF 2B 78 */	mr r31, r5
/* 8052CEA0 005283E0  38 A0 00 01 */	li r5, 1
/* 8052CEA4 005283E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8052CEA8 005283E8  7C 9E 23 78 */	mr r30, r4
/* 8052CEAC 005283EC  38 80 00 04 */	li r4, 4
/* 8052CEB0 005283F0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8052CEB4 005283F4  93 81 00 10 */	stw r28, 0x10(r1)
/* 8052CEB8 005283F8  3F 80 CD 00 */	lis r28, 0xCD006828@ha
/* 8052CEBC 005283FC  90 61 00 08 */	stw r3, 8(r1)
/* 8052CEC0 00528400  38 61 00 08 */	addi r3, r1, 8
/* 8052CEC4 00528404  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8052CEC8 00528408  80 1C 68 28 */	lwz r0, 0xCD006828@l(r28)
/* 8052CECC 0052840C  70 00 04 05 */	andi. r0, r0, 0x405
/* 8052CED0 00528410  60 00 00 C0 */	ori r0, r0, 0xc0
/* 8052CED4 00528414  90 1C 68 28 */	stw r0, 0x6828(r28)
/* 8052CED8 00528418  4B FF FC 0D */	bl __EXI2Imm
/* 8052CEDC 0052841C  7C 60 00 34 */	cntlzw r0, r3
/* 8052CEE0 00528420  54 1D D9 7E */	srwi r29, r0, 5
lbl_8052CEE4:
/* 8052CEE4 00528424  80 1C 68 34 */	lwz r0, 0x6834(r28)
/* 8052CEE8 00528428  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8052CEEC 0052842C  40 82 FF F8 */	bne lbl_8052CEE4
/* 8052CEF0 00528430  38 61 00 0C */	addi r3, r1, 0xc
/* 8052CEF4 00528434  38 80 00 04 */	li r4, 4
/* 8052CEF8 00528438  38 A0 00 00 */	li r5, 0
/* 8052CEFC 0052843C  4B FF FB E9 */	bl __EXI2Imm
/* 8052CF00 00528440  7C 60 00 34 */	cntlzw r0, r3
/* 8052CF04 00528444  3C 60 CD 00 */	lis r3, 0xCD006834@ha
/* 8052CF08 00528448  54 00 D9 7E */	srwi r0, r0, 5
/* 8052CF0C 0052844C  7F A6 03 78 */	or r6, r29, r0
lbl_8052CF10:
/* 8052CF10 00528450  80 03 68 34 */	lwz r0, 0xCD006834@l(r3)
/* 8052CF14 00528454  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8052CF18 00528458  40 82 FF F8 */	bne lbl_8052CF10
/* 8052CF1C 0052845C  3C 60 CD 00 */	lis r3, 0xCD006828@ha
/* 8052CF20 00528460  2C 9F 00 02 */	cmpwi cr1, r31, 2
/* 8052CF24 00528464  80 03 68 28 */	lwz r0, 0xCD006828@l(r3)
/* 8052CF28 00528468  70 00 04 05 */	andi. r0, r0, 0x405
/* 8052CF2C 0052846C  90 03 68 28 */	stw r0, 0x6828(r3)
/* 8052CF30 00528470  41 86 00 24 */	beq cr1, lbl_8052CF54
/* 8052CF34 00528474  40 84 00 34 */	bge cr1, lbl_8052CF68
/* 8052CF38 00528478  2C 1F 00 01 */	cmpwi r31, 1
/* 8052CF3C 0052847C  40 80 00 08 */	bge lbl_8052CF44
/* 8052CF40 00528480  48 00 00 28 */	b lbl_8052CF68
lbl_8052CF44:
/* 8052CF44 00528484  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8052CF48 00528488  54 00 46 3E */	srwi r0, r0, 0x18
/* 8052CF4C 0052848C  98 1E 00 00 */	stb r0, 0(r30)
/* 8052CF50 00528490  48 00 00 34 */	b lbl_8052CF84
lbl_8052CF54:
/* 8052CF54 00528494  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8052CF58 00528498  54 60 C4 2E */	rlwinm r0, r3, 0x18, 0x10, 0x17
/* 8052CF5C 0052849C  50 60 46 3E */	rlwimi r0, r3, 8, 0x18, 0x1f
/* 8052CF60 005284A0  B0 1E 00 00 */	sth r0, 0(r30)
/* 8052CF64 005284A4  48 00 00 20 */	b lbl_8052CF84
lbl_8052CF68:
/* 8052CF68 005284A8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8052CF6C 005284AC  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 8052CF70 005284B0  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 8052CF74 005284B4  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 8052CF78 005284B8  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 8052CF7C 005284BC  7C 60 03 78 */	or r0, r3, r0
/* 8052CF80 005284C0  90 1E 00 00 */	stw r0, 0(r30)
lbl_8052CF84:
/* 8052CF84 005284C4  7C C0 00 34 */	cntlzw r0, r6
/* 8052CF88 005284C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052CF8C 005284CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052CF90 005284D0  54 03 D9 7E */	srwi r3, r0, 5
/* 8052CF94 005284D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8052CF98 005284D8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8052CF9C 005284DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052CFA0 005284E0  7C 08 03 A6 */	mtlr r0
/* 8052CFA4 005284E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8052CFA8 005284E8  4E 80 00 20 */	blr 

.global __DBEXIWriteReg
__DBEXIWriteReg:
/* 8052CFAC 005284EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052CFB0 005284F0  7C 08 02 A6 */	mflr r0
/* 8052CFB4 005284F4  2C 05 00 02 */	cmpwi r5, 2
/* 8052CFB8 005284F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052CFBC 005284FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052CFC0 00528500  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8052CFC4 00528504  90 61 00 08 */	stw r3, 8(r1)
/* 8052CFC8 00528508  41 82 00 24 */	beq lbl_8052CFEC
/* 8052CFCC 0052850C  40 80 00 34 */	bge lbl_8052D000
/* 8052CFD0 00528510  2C 05 00 01 */	cmpwi r5, 1
/* 8052CFD4 00528514  40 80 00 08 */	bge lbl_8052CFDC
/* 8052CFD8 00528518  48 00 00 28 */	b lbl_8052D000
lbl_8052CFDC:
/* 8052CFDC 0052851C  88 04 00 00 */	lbz r0, 0(r4)
/* 8052CFE0 00528520  54 00 C0 0E */	slwi r0, r0, 0x18
/* 8052CFE4 00528524  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052CFE8 00528528  48 00 00 34 */	b lbl_8052D01C
lbl_8052CFEC:
/* 8052CFEC 0052852C  A0 64 00 00 */	lhz r3, 0(r4)
/* 8052CFF0 00528530  54 60 42 1E */	rlwinm r0, r3, 8, 8, 0xf
/* 8052CFF4 00528534  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 8052CFF8 00528538  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052CFFC 0052853C  48 00 00 20 */	b lbl_8052D01C
lbl_8052D000:
/* 8052D000 00528540  80 84 00 00 */	lwz r4, 0(r4)
/* 8052D004 00528544  54 83 42 1E */	rlwinm r3, r4, 8, 8, 0xf
/* 8052D008 00528548  54 80 C4 2E */	rlwinm r0, r4, 0x18, 0x10, 0x17
/* 8052D00C 0052854C  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 8052D010 00528550  50 80 46 3E */	rlwimi r0, r4, 8, 0x18, 0x1f
/* 8052D014 00528554  7C 60 03 78 */	or r0, r3, r0
/* 8052D018 00528558  90 01 00 0C */	stw r0, 0xc(r1)
lbl_8052D01C:
/* 8052D01C 0052855C  3F C0 CD 00 */	lis r30, 0xCD006828@ha
/* 8052D020 00528560  38 61 00 08 */	addi r3, r1, 8
/* 8052D024 00528564  80 1E 68 28 */	lwz r0, 0xCD006828@l(r30)
/* 8052D028 00528568  38 80 00 04 */	li r4, 4
/* 8052D02C 0052856C  38 A0 00 01 */	li r5, 1
/* 8052D030 00528570  70 00 04 05 */	andi. r0, r0, 0x405
/* 8052D034 00528574  60 00 00 C0 */	ori r0, r0, 0xc0
/* 8052D038 00528578  90 1E 68 28 */	stw r0, 0x6828(r30)
/* 8052D03C 0052857C  4B FF FA A9 */	bl __EXI2Imm
/* 8052D040 00528580  7C 60 00 34 */	cntlzw r0, r3
/* 8052D044 00528584  54 1F D9 7E */	srwi r31, r0, 5
lbl_8052D048:
/* 8052D048 00528588  80 1E 68 34 */	lwz r0, 0x6834(r30)
/* 8052D04C 0052858C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8052D050 00528590  40 82 FF F8 */	bne lbl_8052D048
/* 8052D054 00528594  38 61 00 0C */	addi r3, r1, 0xc
/* 8052D058 00528598  38 80 00 04 */	li r4, 4
/* 8052D05C 0052859C  38 A0 00 01 */	li r5, 1
/* 8052D060 005285A0  4B FF FA 85 */	bl __EXI2Imm
/* 8052D064 005285A4  7C 60 00 34 */	cntlzw r0, r3
/* 8052D068 005285A8  3C 60 CD 00 */	lis r3, 0xCD006834@ha
/* 8052D06C 005285AC  54 00 D9 7E */	srwi r0, r0, 5
/* 8052D070 005285B0  7F E5 03 78 */	or r5, r31, r0
lbl_8052D074:
/* 8052D074 005285B4  80 03 68 34 */	lwz r0, 0xCD006834@l(r3)
/* 8052D078 005285B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8052D07C 005285BC  40 82 FF F8 */	bne lbl_8052D074
/* 8052D080 005285C0  3C 80 CD 00 */	lis r4, 0xCD006828@ha
/* 8052D084 005285C4  7C A0 00 34 */	cntlzw r0, r5
/* 8052D088 005285C8  80 A4 68 28 */	lwz r5, 0xCD006828@l(r4)
/* 8052D08C 005285CC  54 03 D9 7E */	srwi r3, r0, 5
/* 8052D090 005285D0  70 A0 04 05 */	andi. r0, r5, 0x405
/* 8052D094 005285D4  90 04 68 28 */	stw r0, 0x6828(r4)
/* 8052D098 005285D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052D09C 005285DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052D0A0 005285E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052D0A4 005285E4  7C 08 03 A6 */	mtlr r0
/* 8052D0A8 005285E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8052D0AC 005285EC  4E 80 00 20 */	blr 

.global __DBEXIReadRam
__DBEXIReadRam:
/* 8052D0B0 005285F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052D0B4 005285F4  7C 08 02 A6 */	mflr r0
/* 8052D0B8 005285F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052D0BC 005285FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052D0C0 00528600  3F E0 CD 00 */	lis r31, 0xCD006828@ha
/* 8052D0C4 00528604  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8052D0C8 00528608  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8052D0CC 0052860C  7C 9D 23 78 */	mr r29, r4
/* 8052D0D0 00528610  38 80 00 04 */	li r4, 4
/* 8052D0D4 00528614  93 81 00 10 */	stw r28, 0x10(r1)
/* 8052D0D8 00528618  7C BC 2B 78 */	mr r28, r5
/* 8052D0DC 0052861C  38 A0 00 01 */	li r5, 1
/* 8052D0E0 00528620  90 61 00 08 */	stw r3, 8(r1)
/* 8052D0E4 00528624  38 61 00 08 */	addi r3, r1, 8
/* 8052D0E8 00528628  80 1F 68 28 */	lwz r0, 0xCD006828@l(r31)
/* 8052D0EC 0052862C  70 00 04 05 */	andi. r0, r0, 0x405
/* 8052D0F0 00528630  60 00 00 C0 */	ori r0, r0, 0xc0
/* 8052D0F4 00528634  90 1F 68 28 */	stw r0, 0x6828(r31)
/* 8052D0F8 00528638  4B FF F9 ED */	bl __EXI2Imm
/* 8052D0FC 0052863C  7C 60 00 34 */	cntlzw r0, r3
/* 8052D100 00528640  54 1E D9 7E */	srwi r30, r0, 5
lbl_8052D104:
/* 8052D104 00528644  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 8052D108 00528648  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8052D10C 0052864C  40 82 FF F8 */	bne lbl_8052D104
/* 8052D110 00528650  3F E0 CD 00 */	lis r31, 0xcd00
/* 8052D114 00528654  48 00 00 3C */	b lbl_8052D150
lbl_8052D118:
/* 8052D118 00528658  38 61 00 0C */	addi r3, r1, 0xc
/* 8052D11C 0052865C  38 80 00 04 */	li r4, 4
/* 8052D120 00528660  38 A0 00 00 */	li r5, 0
/* 8052D124 00528664  4B FF F9 C1 */	bl __EXI2Imm
/* 8052D128 00528668  7C 60 00 34 */	cntlzw r0, r3
/* 8052D12C 0052866C  54 00 D9 7E */	srwi r0, r0, 5
/* 8052D130 00528670  7F DE 03 78 */	or r30, r30, r0
lbl_8052D134:
/* 8052D134 00528674  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 8052D138 00528678  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8052D13C 0052867C  40 82 FF F8 */	bne lbl_8052D134
/* 8052D140 00528680  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8052D144 00528684  3B 9C FF FC */	addi r28, r28, -4
/* 8052D148 00528688  90 1D 00 00 */	stw r0, 0(r29)
/* 8052D14C 0052868C  3B BD 00 04 */	addi r29, r29, 4
lbl_8052D150:
/* 8052D150 00528690  2C 1C 00 00 */	cmpwi r28, 0
/* 8052D154 00528694  41 81 FF C4 */	bgt lbl_8052D118
/* 8052D158 00528698  3C 80 CD 00 */	lis r4, 0xCD006828@ha
/* 8052D15C 0052869C  7F C0 00 34 */	cntlzw r0, r30
/* 8052D160 005286A0  80 A4 68 28 */	lwz r5, 0xCD006828@l(r4)
/* 8052D164 005286A4  54 03 D9 7E */	srwi r3, r0, 5
/* 8052D168 005286A8  70 A0 04 05 */	andi. r0, r5, 0x405
/* 8052D16C 005286AC  90 04 68 28 */	stw r0, 0x6828(r4)
/* 8052D170 005286B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052D174 005286B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052D178 005286B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052D17C 005286BC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8052D180 005286C0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8052D184 005286C4  7C 08 03 A6 */	mtlr r0
/* 8052D188 005286C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8052D18C 005286CC  4E 80 00 20 */	blr 

.global __DBEXIWriteRam
__DBEXIWriteRam:
/* 8052D190 005286D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052D194 005286D4  7C 08 02 A6 */	mflr r0
/* 8052D198 005286D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052D19C 005286DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052D1A0 005286E0  3F E0 CD 00 */	lis r31, 0xCD006828@ha
/* 8052D1A4 005286E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8052D1A8 005286E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8052D1AC 005286EC  7C 9D 23 78 */	mr r29, r4
/* 8052D1B0 005286F0  38 80 00 04 */	li r4, 4
/* 8052D1B4 005286F4  93 81 00 10 */	stw r28, 0x10(r1)
/* 8052D1B8 005286F8  7C BC 2B 78 */	mr r28, r5
/* 8052D1BC 005286FC  38 A0 00 01 */	li r5, 1
/* 8052D1C0 00528700  90 61 00 08 */	stw r3, 8(r1)
/* 8052D1C4 00528704  38 61 00 08 */	addi r3, r1, 8
/* 8052D1C8 00528708  80 1F 68 28 */	lwz r0, 0xCD006828@l(r31)
/* 8052D1CC 0052870C  70 00 04 05 */	andi. r0, r0, 0x405
/* 8052D1D0 00528710  60 00 00 C0 */	ori r0, r0, 0xc0
/* 8052D1D4 00528714  90 1F 68 28 */	stw r0, 0x6828(r31)
/* 8052D1D8 00528718  4B FF F9 0D */	bl __EXI2Imm
/* 8052D1DC 0052871C  7C 60 00 34 */	cntlzw r0, r3
/* 8052D1E0 00528720  54 1E D9 7E */	srwi r30, r0, 5
lbl_8052D1E4:
/* 8052D1E4 00528724  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 8052D1E8 00528728  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8052D1EC 0052872C  40 82 FF F8 */	bne lbl_8052D1E4
/* 8052D1F0 00528730  3F E0 CD 00 */	lis r31, 0xcd00
/* 8052D1F4 00528734  48 00 00 3C */	b lbl_8052D230
lbl_8052D1F8:
/* 8052D1F8 00528738  80 1D 00 00 */	lwz r0, 0(r29)
/* 8052D1FC 0052873C  38 61 00 0C */	addi r3, r1, 0xc
/* 8052D200 00528740  38 80 00 04 */	li r4, 4
/* 8052D204 00528744  38 A0 00 01 */	li r5, 1
/* 8052D208 00528748  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052D20C 0052874C  3B BD 00 04 */	addi r29, r29, 4
/* 8052D210 00528750  4B FF F8 D5 */	bl __EXI2Imm
/* 8052D214 00528754  7C 60 00 34 */	cntlzw r0, r3
/* 8052D218 00528758  54 00 D9 7E */	srwi r0, r0, 5
/* 8052D21C 0052875C  7F DE 03 78 */	or r30, r30, r0
lbl_8052D220:
/* 8052D220 00528760  80 1F 68 34 */	lwz r0, 0x6834(r31)
/* 8052D224 00528764  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8052D228 00528768  40 82 FF F8 */	bne lbl_8052D220
/* 8052D22C 0052876C  3B 9C FF FC */	addi r28, r28, -4
lbl_8052D230:
/* 8052D230 00528770  2C 1C 00 00 */	cmpwi r28, 0
/* 8052D234 00528774  41 81 FF C4 */	bgt lbl_8052D1F8
/* 8052D238 00528778  3C 80 CD 00 */	lis r4, 0xCD006828@ha
/* 8052D23C 0052877C  7F C0 00 34 */	cntlzw r0, r30
/* 8052D240 00528780  80 A4 68 28 */	lwz r5, 0xCD006828@l(r4)
/* 8052D244 00528784  54 03 D9 7E */	srwi r3, r0, 5
/* 8052D248 00528788  70 A0 04 05 */	andi. r0, r5, 0x405
/* 8052D24C 0052878C  90 04 68 28 */	stw r0, 0x6828(r4)
/* 8052D250 00528790  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052D254 00528794  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052D258 00528798  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052D25C 0052879C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8052D260 005287A0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8052D264 005287A4  7C 08 03 A6 */	mtlr r0
/* 8052D268 005287A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8052D26C 005287AC  4E 80 00 20 */	blr 
/* 8052D270 005287B0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8052D274 005287B4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8052D278 005287B8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8052D27C 005287BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */