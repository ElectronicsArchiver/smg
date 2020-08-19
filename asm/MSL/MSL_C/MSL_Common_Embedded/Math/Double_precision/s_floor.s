.text

.include "macros.inc"

.global floor
floor:
/* 8052698C 00521ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526990 00521ED0  D8 21 00 08 */	stfd f1, 8(r1)
/* 80526994 00521ED4  80 A1 00 08 */	lwz r5, 8(r1)
/* 80526998 00521ED8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8052699C 00521EDC  54 A3 65 7E */	rlwinm r3, r5, 0xc, 0x15, 0x1f
/* 805269A0 00521EE0  38 E3 FC 01 */	addi r7, r3, -1023
/* 805269A4 00521EE4  2C 87 00 14 */	cmpwi cr1, r7, 0x14
/* 805269A8 00521EE8  40 84 00 98 */	bge cr1, lbl_80526A40
/* 805269AC 00521EEC  2C 07 00 00 */	cmpwi r7, 0
/* 805269B0 00521EF0  40 80 00 44 */	bge lbl_805269F4
/* 805269B4 00521EF4  C8 42 2C 70 */	lfd f2, lbl_806ADEF0-_SDA2_BASE_(r2)
/* 805269B8 00521EF8  C8 02 2C 78 */	lfd f0, lbl_806ADEF8-_SDA2_BASE_(r2)
/* 805269BC 00521EFC  FC 22 08 2A */	fadd f1, f2, f1
/* 805269C0 00521F00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805269C4 00521F04  40 81 00 F8 */	ble lbl_80526ABC
/* 805269C8 00521F08  2C 05 00 00 */	cmpwi r5, 0
/* 805269CC 00521F0C  41 80 00 10 */	blt lbl_805269DC
/* 805269D0 00521F10  38 C0 00 00 */	li r6, 0
/* 805269D4 00521F14  38 A0 00 00 */	li r5, 0
/* 805269D8 00521F18  48 00 00 E4 */	b lbl_80526ABC
lbl_805269DC:
/* 805269DC 00521F1C  54 A0 00 7E */	clrlwi r0, r5, 1
/* 805269E0 00521F20  7C 00 33 79 */	or. r0, r0, r6
/* 805269E4 00521F24  41 82 00 D8 */	beq lbl_80526ABC
/* 805269E8 00521F28  3C A0 BF F0 */	lis r5, 0xbff0
/* 805269EC 00521F2C  38 C0 00 00 */	li r6, 0
/* 805269F0 00521F30  48 00 00 CC */	b lbl_80526ABC
lbl_805269F4:
/* 805269F4 00521F34  3C 60 00 10 */	lis r3, 0x000FFFFF@ha
/* 805269F8 00521F38  38 03 FF FF */	addi r0, r3, 0x000FFFFF@l
/* 805269FC 00521F3C  7C 04 3E 30 */	sraw r4, r0, r7
/* 80526A00 00521F40  7C A0 20 38 */	and r0, r5, r4
/* 80526A04 00521F44  7C C0 03 79 */	or. r0, r6, r0
/* 80526A08 00521F48  40 82 00 08 */	bne lbl_80526A10
/* 80526A0C 00521F4C  48 00 00 BC */	b lbl_80526AC8
lbl_80526A10:
/* 80526A10 00521F50  C8 42 2C 70 */	lfd f2, lbl_806ADEF0-_SDA2_BASE_(r2)
/* 80526A14 00521F54  C8 02 2C 78 */	lfd f0, lbl_806ADEF8-_SDA2_BASE_(r2)
/* 80526A18 00521F58  FC 22 08 2A */	fadd f1, f2, f1
/* 80526A1C 00521F5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80526A20 00521F60  40 81 00 9C */	ble lbl_80526ABC
/* 80526A24 00521F64  2C 05 00 00 */	cmpwi r5, 0
/* 80526A28 00521F68  40 80 00 0C */	bge lbl_80526A34
/* 80526A2C 00521F6C  7C 60 3E 30 */	sraw r0, r3, r7
/* 80526A30 00521F70  7C A5 02 14 */	add r5, r5, r0
lbl_80526A34:
/* 80526A34 00521F74  7C A5 20 78 */	andc r5, r5, r4
/* 80526A38 00521F78  38 C0 00 00 */	li r6, 0
/* 80526A3C 00521F7C  48 00 00 80 */	b lbl_80526ABC
lbl_80526A40:
/* 80526A40 00521F80  2C 07 00 33 */	cmpwi r7, 0x33
/* 80526A44 00521F84  40 81 00 14 */	ble lbl_80526A58
/* 80526A48 00521F88  2C 07 04 00 */	cmpwi r7, 0x400
/* 80526A4C 00521F8C  40 82 00 7C */	bne lbl_80526AC8
/* 80526A50 00521F90  FC 21 08 2A */	fadd f1, f1, f1
/* 80526A54 00521F94  48 00 00 74 */	b lbl_80526AC8
lbl_80526A58:
/* 80526A58 00521F98  38 07 FF EC */	addi r0, r7, -20
/* 80526A5C 00521F9C  38 60 FF FF */	li r3, -1
/* 80526A60 00521FA0  7C 64 04 30 */	srw r4, r3, r0
/* 80526A64 00521FA4  7C C0 20 39 */	and. r0, r6, r4
/* 80526A68 00521FA8  40 82 00 08 */	bne lbl_80526A70
/* 80526A6C 00521FAC  48 00 00 5C */	b lbl_80526AC8
lbl_80526A70:
/* 80526A70 00521FB0  C8 42 2C 70 */	lfd f2, lbl_806ADEF0-_SDA2_BASE_(r2)
/* 80526A74 00521FB4  C8 02 2C 78 */	lfd f0, lbl_806ADEF8-_SDA2_BASE_(r2)
/* 80526A78 00521FB8  FC 22 08 2A */	fadd f1, f2, f1
/* 80526A7C 00521FBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80526A80 00521FC0  40 81 00 3C */	ble lbl_80526ABC
/* 80526A84 00521FC4  2C 05 00 00 */	cmpwi r5, 0
/* 80526A88 00521FC8  40 80 00 30 */	bge lbl_80526AB8
/* 80526A8C 00521FCC  40 86 00 0C */	bne cr1, lbl_80526A98
/* 80526A90 00521FD0  38 A5 00 01 */	addi r5, r5, 1
/* 80526A94 00521FD4  48 00 00 24 */	b lbl_80526AB8
lbl_80526A98:
/* 80526A98 00521FD8  20 07 00 34 */	subfic r0, r7, 0x34
/* 80526A9C 00521FDC  38 60 00 01 */	li r3, 1
/* 80526AA0 00521FE0  7C 60 00 30 */	slw r0, r3, r0
/* 80526AA4 00521FE4  7C 06 02 14 */	add r0, r6, r0
/* 80526AA8 00521FE8  7C 00 30 40 */	cmplw r0, r6
/* 80526AAC 00521FEC  40 80 00 08 */	bge lbl_80526AB4
/* 80526AB0 00521FF0  38 A5 00 01 */	addi r5, r5, 1
lbl_80526AB4:
/* 80526AB4 00521FF4  7C 06 03 78 */	mr r6, r0
lbl_80526AB8:
/* 80526AB8 00521FF8  7C C6 20 78 */	andc r6, r6, r4
lbl_80526ABC:
/* 80526ABC 00521FFC  90 A1 00 08 */	stw r5, 8(r1)
/* 80526AC0 00522000  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80526AC4 00522004  C8 21 00 08 */	lfd f1, 8(r1)
lbl_80526AC8:
/* 80526AC8 00522008  38 21 00 10 */	addi r1, r1, 0x10
/* 80526ACC 0052200C  4E 80 00 20 */	blr 