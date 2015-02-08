;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.3 #9178 (Feb  8 2015) (Linux)
; This file was generated Sun Feb  8 13:13:06 2015
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ;reset
	int 0x0000 ;trap
	int 0x0000 ;int0
	int 0x0000 ;int1
	int 0x0000 ;int2
	int 0x0000 ;int3
	int 0x0000 ;int4
	int 0x0000 ;int5
	int 0x0000 ;int6
	int 0x0000 ;int7
	int 0x0000 ;int8
	int 0x0000 ;int9
	int 0x0000 ;int10
	int 0x0000 ;int11
	int 0x0000 ;int12
	int 0x0000 ;int13
	int 0x0000 ;int14
	int 0x0000 ;int15
	int 0x0000 ;int16
	int 0x0000 ;int17
	int 0x0000 ;int18
	int 0x0000 ;int19
	int 0x0000 ;int20
	int 0x0000 ;int21
	int 0x0000 ;int22
	int 0x0000 ;int23
	int 0x0000 ;int24
	int 0x0000 ;int25
	int 0x0000 ;int26
	int 0x0000 ;int27
	int 0x0000 ;int28
	int 0x0000 ;int29
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	main.c: 4: static void delay(uint32_t t) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	sub	sp, #8
;	main.c: 5: while(t--);
	ldw	y, (0x0b, sp)
	ldw	(0x05, sp), y
	ldw	y, (0x0d, sp)
00101$:
	ldw	x, (0x05, sp)
	ldw	(0x01, sp), x
	ldw	x, y
	subw	y, #0x0001
	ld	a, (0x06, sp)
	sbc	a, #0x00
	ld	(0x06, sp), a
	ld	a, (0x05, sp)
	sbc	a, #0x00
	ld	(0x05, sp), a
	tnzw	x
	jrne	00101$
	ldw	x, (0x01, sp)
	jrne	00101$
	addw	sp, #8
	ret
;	main.c: 8: int main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c: 10: GPIOD->DDR |= GPIO_PIN_0;
	bset	0x5011, #0
;	main.c: 11: GPIOD->CR1 |= GPIO_PIN_0;
	bset	0x5012, #0
;	main.c: 12: GPIOD->ODR |= GPIO_PIN_0;
	bset	0x500f, #0
00102$:
;	main.c: 16: GPIOD->ODR ^= GPIO_PIN_0;
	ldw	x, #0x500f
	ld	a, (x)
	xor	a, #0x01
	ld	(x), a
;	main.c: 17: delay(30000);
	push	#0x30
	push	#0x75
	clrw	x
	pushw	x
	call	_delay
	addw	sp, #4
	jra	00102$
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
