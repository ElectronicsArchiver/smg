.section .text # 0x805298B0 - 0x8052AEDC

.include "macros.inc"

.global TRKDoNotifyStopped
TRKDoNotifyStopped:
/* 805298B0 00524DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805298B4 00524DF4  7C 08 02 A6 */	mflr r0
/* 805298B8 00524DF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805298BC 00524DFC  38 81 00 08 */	addi r4, r1, 8
/* 805298C0 00524E00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805298C4 00524E04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805298C8 00524E08  7C 7E 1B 78 */	mr r30, r3
/* 805298CC 00524E0C  38 61 00 0C */	addi r3, r1, 0xc
/* 805298D0 00524E10  4B FF E3 7D */	bl TRKGetFreeBuffer
/* 805298D4 00524E14  7C 7F 1B 79 */	or. r31, r3, r3
/* 805298D8 00524E18  40 82 00 54 */	bne lbl_8052992C
/* 805298DC 00524E1C  40 82 00 20 */	bne lbl_805298FC
/* 805298E0 00524E20  2C 1E 00 90 */	cmpwi r30, 0x90
/* 805298E4 00524E24  40 82 00 10 */	bne lbl_805298F4
/* 805298E8 00524E28  80 61 00 08 */	lwz r3, 8(r1)
/* 805298EC 00524E2C  48 00 09 09 */	bl TRKTargetAddStopInfo
/* 805298F0 00524E30  48 00 00 0C */	b lbl_805298FC
lbl_805298F4:
/* 805298F4 00524E34  80 61 00 08 */	lwz r3, 8(r1)
/* 805298F8 00524E38  48 00 08 79 */	bl TRKTargetAddExceptionInfo
lbl_805298FC:
/* 805298FC 00524E3C  80 61 00 08 */	lwz r3, 8(r1)
/* 80529900 00524E40  38 81 00 10 */	addi r4, r1, 0x10
/* 80529904 00524E44  38 A0 00 02 */	li r5, 2
/* 80529908 00524E48  38 C0 00 03 */	li r6, 3
/* 8052990C 00524E4C  38 E0 00 01 */	li r7, 1
/* 80529910 00524E50  4B FF FB E9 */	bl TRKRequestSend
/* 80529914 00524E54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80529918 00524E58  40 82 00 0C */	bne lbl_80529924
/* 8052991C 00524E5C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80529920 00524E60  4B FF E2 9D */	bl TRKReleaseBuffer
lbl_80529924:
/* 80529924 00524E64  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80529928 00524E68  4B FF E2 95 */	bl TRKReleaseBuffer
lbl_8052992C:
/* 8052992C 00524E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80529930 00524E70  7F E3 FB 78 */	mr r3, r31
/* 80529934 00524E74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80529938 00524E78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052993C 00524E7C  7C 08 03 A6 */	mtlr r0
/* 80529940 00524E80  38 21 00 20 */	addi r1, r1, 0x20
/* 80529944 00524E84  4E 80 00 20 */	blr
