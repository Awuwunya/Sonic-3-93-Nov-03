LBZ1_Header:
	sHeaderInit						; Z80 offset is $D04B
	sHeaderPatch	LBZ1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $10
	sHeaderDAC	LBZ1_DAC
	sHeaderFM	LBZ1_FM1, $18, $12
	sHeaderFM	LBZ1_FM2, $00, $16
	sHeaderFM	LBZ1_FM3, $00, $17
	sHeaderFM	LBZ1_FM4, $00, $19
	sHeaderFM	LBZ1_FM5, $00, $19
	sHeaderPSG	LBZ1_PSG1, $00, $05, $00, v0C
	sHeaderPSG	LBZ1_PSG2, $00, $05, $00, v0C
	sHeaderPSG	LBZ1_PSG3, $00, $03, $00, v0C
	dc.b $F2, $F2	; Unused

LBZ1_DAC:
	dc.b dSnare, $18, dSnare, $30, dSnare, $08, dSnare, $08
	dc.b dSnare, $08, dSnare, $10, dSnare, $08, dSnare, $30
	dc.b dSnare, $08, dSnare, $08, dSnare, $08, dSnare, $10
	dc.b dSnare, $08, dSnare, $30, dSnare, $08, dSnare, $08
	dc.b dSnare, $08, dSnare, $10, dSnare, $08, dSnare, $48

LBZ1_Jump8:
	dc.b dKick, $18, dKick, dKick, dKick, dKick, dKick, dKick
	dc.b dKick, dKick, dKick, dKick, dKick, dKick, dKick, dKick
	dc.b dSnare, dKick, dKick, dKick, dKick, dKick, dKick, dKick
	dc.b dKick, dKick, dKick, dKick, dKick, dKick, dKick, dKick
	dc.b dSnare, dKick, dKick, dKick, dKick, dKick, dKick, dKick
	dc.b dKick, dKick, dKick, dKick, dKick, dKick, dKick, dKick
	dc.b dSnare, dKick, dKick, dKick, dKick, dKick, dKick, dKick
	dc.b dKick, dKick, dKick, dKick, dKick, dKick, dKick, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b $0C, dSnare, dSnare, dSnare, dKick, $18, dSnare, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, $0C, dSnare
	sJump		LBZ1_Jump8
	dc.b $F2	; Unused

LBZ1_FM1:
	sPatFM		$0A
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $06
	sCall		LBZ1_Call1

LBZ1_Jump1:
	sPatFM		$00
	sCall		LBZ1_Call2
	sJump		LBZ1_Jump1
	dc.b $F2	; Unused

LBZ1_Call1:
	dc.b nBb0, $05, nRst, $13, nBb0, $2D, nRst, $03
	dc.b nBb0, $05, nRst, $03, nBb0, $05, nRst, $03
	dc.b nBb0, $05, nRst, $03, nBb0, $05, nRst, $0B
	dc.b nBb0, $05, nRst, $03, nBb0, $2D, nRst, $03
	dc.b nBb0, $05, nRst, $03, nBb0, $05, nRst, $03
	dc.b nBb0, $05, nRst, $03, nBb0, $05, nRst, $0B
	dc.b nBb0, $05, nRst, $03, nBb0, $2D, nRst, $03
	dc.b nBb0, $05, nRst, $03, nBb0, $05, nRst, $03
	dc.b nBb0, $05, nRst, $03, nF1, $05, nRst, $0B
	dc.b nF1, $05, nRst, $03, nF1, $45, nRst, $03
	sRet

LBZ1_Call2:
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nBb0, $03, nRst, $09, nBb0, $03, nRst, $09
	dc.b nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b nG0, $03, nRst, $09, nG0, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nCs1, $03, nRst, $09, nCs1, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nEb1, $03, nRst, $09, nEb1, $03, nRst, $09
	dc.b nAb1, $03, nRst, $09, nAb1, $03, nRst, $09
	dc.b nAb1, $03, nRst, $09, nAb1, $03, nRst, $09
	dc.b nFs1, $03, nRst, $09, nFs1, $03, nRst, $09
	dc.b nFs1, $03, nRst, $09, nFs1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nF1, $03, nRst, $09, nF1, $03, nRst, $09
	dc.b nE1, $03, nRst, $09, nE1, $03, nRst, $09
	dc.b nE1, $03, nRst, $09, nE1, $03, nRst, $09
	dc.b nEb1, $08, nRst, $04, nD1, $14, nRst, $04
	dc.b nF1, $08, nRst, $04, nE1, $14, nRst, $04
	dc.b nAb1, $08, nRst, $04, nG1, $14, nRst, $04
	dc.b nBb1, $08, nRst, $04, nA1, $14, nRst, $04
	dc.b nB1, $14, nRst, $04, nBb1, $14, nRst, $04
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	dc.b nAb0, $03, nRst, $09, nAb0, $03, nRst, $09
	sRet
	dc.b $F2	; Unused

LBZ1_FM2:
	sPatFM		$0A
	ssDetune	$04
	ssModZ80	$0F, $01, $06, $06
	sCall		LBZ1_Call3
	sPatFM		$0A
	ssDetune	$04
	ssModZ80	$0F, $01, $06, $06

LBZ1_Jump2:
	sPatFM		$0A
	ssDetune	$04
	ssModZ80	$0F, $01, $06, $06
	sCall		LBZ1_Call4
	sJump		LBZ1_Jump2

LBZ1_Call3:
	dc.b nD4, $04, nRst, $14, nD4, $2F, nRst, $01
	dc.b nEb4, $08, nD4, $07, nRst, $01, nC4, $08
	dc.b nBb3, $03, nRst, $0D, nD4, $03, nRst, $05
	dc.b nD4, $30, nEb4, $07, nRst, $01, nD4, $08
	dc.b nC4, $05, nRst, $03, nBb3, $05, nRst, $0B
	dc.b nD4, $03, nRst, $05, nD4, $30, nC4, $06
	dc.b nRst, $02, nD4, $06, nRst, $02, nEb4, $07
	dc.b nRst, $01, nD4, $02, nRst, $0E, nA3, $03
	dc.b nRst, $05, nA3, $3A, nRst, $0E
	sRet

LBZ1_Call4:
	dc.b nEb3, $38, nRst, $04, nBb3, $08, nRst, $04
	dc.b nEb4, $08, nRst, $04, nBb3, $08, nRst, $04
	dc.b nCs4, $14, nRst, $04, nC4, $14, nRst, $04
	dc.b nAb3, $14, nRst, $04, nAb3, $08, nRst, $04
	dc.b nC4, $08, nRst, $04, nBb3, $20, nRst, $04
	dc.b nEb3, $60, $38, nRst, $04, nEb3, $38, nRst
	dc.b $04, nBb3, $08, nRst, $04, nEb4, $08, nRst
	dc.b $04, nBb3, $08, nRst, $04, nCs4, $14, nRst
	dc.b $04, nC4, $14, nRst, $04, nAb3, $14, nRst
	dc.b $04, nAb3, $08, nRst, $04, nC4, $08, nRst
	dc.b $04, nBb3, $60, $5C, nRst, $04, nEb3, $38
	dc.b nRst, $04, nBb3, $08, nRst, $04, nEb4, $08
	dc.b nRst, $04, nBb3, $08, nRst, $04, nCs4, $14
	dc.b nRst, $04, nC4, $14, nRst, $04, nAb3, $14
	dc.b nRst, $04, nAb3, $08, nRst, $04, nC4, $08
	dc.b nRst, $04, nBb3, $20, nRst, $04, nEb3, $60
	dc.b $38, nRst, $04, nEb3, $38, nRst, $04, nBb3
	dc.b $08, nRst, $04, nEb4, $08, nRst, $04, nBb3
	dc.b $08, nRst, $04, nCs4, $14, nRst, $04, nC4
	dc.b $14, nRst, $04, nAb3, $14, nRst, $04, nAb3
	dc.b $08, nRst, $04, nC4, $08, nRst, $04, nBb3
	dc.b $60, $5C, nRst, $04, nBb3, $2C, nRst, $04
	dc.b nG3, $08, nRst, $04, nBb3, $08, nRst, $04
	dc.b nD4, $08, nRst, $04, nBb3, $08, nRst, $04
	dc.b nEb4, $08, nRst, $04, nD4, $08, nRst, $04
	dc.b nC4, $08, nRst, $04, nBb3, $20, nRst, $04
	dc.b nBb3, $08, nRst, $04, nC4, $08, nRst, $04
	dc.b nD4, $08, nRst, $04, nBb3, $08, nRst, $04
	dc.b nG3, $08, nRst, $04, nBb3, $14, nRst, $04
	dc.b nG3, $08, nRst, $04, nBb3, $08, nRst, $04
	dc.b nC4, $60, $08, nRst, $04, nBb3, $2C, nRst
	dc.b $04, nBb3, $08, nRst, $04, nC4, $08, nRst
	dc.b $04, nD4, $08, nRst, $04, nBb3, $08, nRst
	dc.b $04, nG4, $08, nRst, $04, nF4, $08, nRst
	dc.b $04, nEb4, $08, nRst, $04, nBb3, $08, nRst
	dc.b $04, nC4, $08, nRst, $04, nD4, $08, nRst
	dc.b $04, nEb4, $08, nRst, $04, nF4, $08, nRst
	dc.b $04, nD4, $20, nRst, $04, nC4, $08, nRst
	dc.b $04, nC4, $60, $2C, nRst, $04, nAb4, $08
	dc.b nRst, $04, nAb4, $08, nRst, $04, nAb4, $08
	dc.b nRst, $04, nAb4, $08, nRst, $04, nAb4, $08
	dc.b nRst, $04, nAb4, $08, nRst, $04, nAb4, $08
	dc.b nRst, $04, nAb4, $08, nRst, $04, nAb4, $08
	dc.b nRst, $04, nBb4, $08, nRst, $04, nC5, $08
	dc.b nRst, $04, nAb4, $20, nRst, $04, nF4, $14
	dc.b nRst, $04, nAb4, $08, nRst, $04, nBb4, $08
	dc.b nRst, $04, nC5, $08, nRst, $04, nAb4, $14
	dc.b nRst, $04, nAb4, $08, nRst, $04, nBb4, $08
	dc.b nRst, $04, nC5, $08, nRst, $04, nC5, $08
	dc.b nRst, $04, nBb4, $08, nRst, $04, nG4, $08
	dc.b nRst, $04, nEb4, $38, nRst, $04, nAb4, $08
	dc.b nRst, $04, nAb4, $08, nRst, $04, nAb4, $08
	dc.b nRst, $04, nAb4, $08, nRst, $04, nAb4, $08
	dc.b nRst, $04, nAb4, $08, nRst, $04, nAb4, $08
	dc.b nRst, $04, nAb4, $08, nRst, $04, nAb4, $08
	dc.b nRst, $04, nBb4, $08, nRst, $04, nC5, $08
	dc.b nRst, $04, nAb4, $20, nRst, $1C, nAb4, $08
	dc.b nRst, $04, nG4, $08, nRst, $10, nBb4, $08
	dc.b nRst, $04, nA4, $08, nRst, $10, nC5, $08
	dc.b nRst, $04, nB4, $08, nRst, $10, nCs5, $08
	dc.b nRst, $04, nC5, $08, nRst, $10, nE5, $14
	dc.b nRst, $04, nEb5, $14, nRst, $04, nAb4, $60
	dc.b $38, nRst, $04, nAb4, $03, nRst, nBb4, nRst
	dc.b nC5, nRst, nBb4, nRst, nAb4, nRst, nG4, nRst
	dc.b nAb4, $20, nRst, $04, nEb4, $08, nRst, $04
	dc.b nEb4, $2C, nRst, $04, nF4, $08, nRst, $04
	dc.b nF4, $08, nRst, $04, nG4, $08, nRst, $04
	dc.b nAb4, $08, nRst, $10, nBb4, $20, nRst, $04
	sRet
	dc.b $F2	; Unused

LBZ1_FM3:
	dc.b nRst, $0C
	saVolFM		$06
	sPatFM		$0A
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $06
	sCall		LBZ1_Call3
	saVolFM		$02
	sPatFM		$0A
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $06

LBZ1_Jump3:
	sCall		LBZ1_Call4
	sJump		LBZ1_Jump3
	dc.b $F2	; Unused

LBZ1_FM4:
	sPatFM		$08
	ssDetune	$03
	ssModZ80	$03, $01, $FD, $05
	sPan		spLeft
	sCall		LBZ1_Call5

LBZ1_Jump4:
	sCall		LBZ1_Call6
	sJump		LBZ1_Jump4
	dc.b $F2	; Unused

LBZ1_FM5:
	sPatFM		$08
	ssDetune	$FD
	ssModZ80	$03, $01, $03, $05
	sPan		spRight
	sCall		LBZ1_Call5

LBZ1_Jump5:
	sCall		LBZ1_Call6
	sJump		LBZ1_Jump5
	dc.b $F2	; Unused

LBZ1_Call5:
	dc.b nF4, $05, nRst, $13, nF4, $2F, nRst, $01
	dc.b nG4, $08, nF4, $07, nRst, $01, nEb4, $08
	dc.b nD4, $04, nRst, $0C, nF4, $03, nRst, $05
	dc.b nF4, $30, nG4, $08, nF4, $07, nRst, $01
	dc.b nEb4, $08, nD4, $07, nRst, $09, nF4, $04
	dc.b nRst, nF4, $30, nEb4, $08, nF4, nG4, nF4
	dc.b $05, nRst, $0B, nC4, $04, nRst, nC4, $46
	dc.b nRst, $02
	sRet

LBZ1_Call6:
	dc.b nRst, $60, nRst, nRst, $3C, nBb3, $0C, nEb4
	dc.b nBb3, $0B, nRst, $01, nCs4, $18, nC4, $17
	dc.b nRst, $01, nAb3, $13, nRst, $05, nAb3, $0A
	dc.b nRst, $02, nC4, $0C, nBb3, $24, nEb3, $60
	dc.b $3A, nRst, $32, nBb3, $0C, nC4, $0B, nRst
	dc.b $01, nD4, $0B, nRst, $01, nEb4, $0B, nRst
	dc.b $01, nF4, $0C, nBb4, $54, nRst, $60, nRst
	dc.b nRst, $3C, nBb3, $0B, nRst, $01, nEb4, $0B
	dc.b nRst, $01, nBb3, $0A, nRst, $02, nCs4, $17
	dc.b nRst, $01, nC4, $17, nRst, $01, nAb3, $15
	dc.b nRst, $03, nAb3, $0B, nRst, $01, nC4, $0C
	dc.b nBb3, $22, nRst, $02, nEb3, $60, $3B, nRst
	dc.b $31, nBb3, $0B, nRst, $01, nC4, $0C, nD4
	dc.b $0B, nRst, $01, nEb4, $0C, nF4, $0B, nRst
	dc.b $01, nBb4, $48, nA4, $0B, nRst, $01, nG4
	dc.b $5F, nRst, $01, nEb4, $5F, nRst, $01, nD4
	dc.b $24, nF4, $16, nRst, $02, nF3, $0B, nRst
	dc.b $01, nBb3, $0B, nRst, $01, nA3, $54, nRst
	dc.b $18, nG4, $60, nEb4, nD4, $24, nF4, $3A
	dc.b nRst, $02, nE4, $24, nG4, $39, nRst, $03
	dc.b nAb4, nRst, $09, nEb4, $02, nRst, $0A, nC4
	dc.b $03, nRst, $09, nAb4, $04, nRst, $08, nEb4
	dc.b $03, nRst, $09, nC4, $03, nRst, $09, nAb4
	dc.b $03, nRst, $09, nEb4, $04, nRst, $08, nF4
	dc.b $03, nRst, $09, nCs4, $03, nRst, $09, nAb3
	dc.b $03, nRst, $09, nF4, $04, nRst, $08, nCs4
	dc.b $03, nRst, $09, nAb3, $04, nRst, $08, nF4
	dc.b $04, nRst, $08, nCs4, $04, nRst, $08, nAb4
	dc.b $03, nRst, $09, nEb4, $03, nRst, $09, nC4
	dc.b $03, nRst, $09, nAb4, $04, nRst, $08, nEb4
	dc.b $05, nRst, $07, nC4, $05, nRst, $07, nAb4
	dc.b $04, nRst, $08, nEb4, $03, nRst, $09, nBb4
	dc.b $04, nRst, $08, nG4, $03, nRst, $09, nEb4
	dc.b $03, nRst, $09, nBb4, $05, nRst, $07, nG4
	dc.b $03, nRst, $09, nEb4, $04, nRst, $08, nBb4
	dc.b $04, nRst, $08, nG4, $02, nRst, $22, nAb4
	dc.b $18, nRst, nFs4, $17, nRst, $19, nF4, $17
	dc.b nRst, $19, nE4, $17, nRst, $01, nAb4, $03
	dc.b nRst, $09, nG4, $04, nRst, $08, nFs4, $04
	dc.b nRst, $08, nF4, $05, nRst, $07, nE4, $04
	dc.b nRst, $08, nEb4, $05, nRst, $07, nD4, $04
	dc.b nRst, $08, nCs4, $05, nRst, $07, nC4, $05
	dc.b nRst, $07, nB3, $04, nRst, $08, nBb3, $06
	dc.b nRst, nA3, $05, nRst, $07, nAb3, $14, nRst
	dc.b $04, nG3, $0E, nRst, $0A, nAb4, $04, nRst
	dc.b $08, nEb4, $03, nRst, $09, nC4, $04, nRst
	dc.b $08, nAb4, $05, nRst, $07, nEb4, $04, nRst
	dc.b $08, nC4, $05, nRst, $07, nAb4, $05, nRst
	dc.b $07, nEb4, $06, nRst, nF4, $04, nRst, $08
	dc.b nCs4, $04, nRst, $08, nAb3, $04, nRst, $08
	dc.b nF4, $05, nRst, $07, nCs4, $04, nRst, $08
	dc.b nAb3, $05, nRst, $07, nF4, $06, nRst, nCs4
	dc.b $05, nRst, $07, nAb4, $04, nRst, $08, nEb4
	dc.b $04, nRst, $08, nC4, $05, nRst, $07, nAb4
	dc.b $05, nRst, $07, nEb4, $04, nRst, $08, nC4
	dc.b $06, nRst, nAb4, $04, nRst, $08, nEb4, $05
	dc.b nRst, $07, nCs4, $16, nRst, $02, nEb4, $0C
	dc.b nF4, $07, nRst, $11, nG4, $24
	sJump		LBZ1_Call6
	dc.b $F2	; Unused

LBZ1_PSG3:
	sVolEnvPSG	v02
	sNoisePSG	$E7
	dc.b nBb6, $18, nBb6, $30, nBb6, $08, nBb6, $08
	dc.b nBb6, $08, nBb6, $10, nBb6, $08, nBb6, $30
	dc.b nBb6, $08, nBb6, $08, nBb6, $08, nBb6, $10
	dc.b nBb6, $08, nBb6, $30, nBb6, $08, nBb6, $08
	dc.b nBb6, $08, nBb6, $10, nBb6, $08, nBb6, $48

LBZ1_Jump7:
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6
	sJump		LBZ1_Jump7
	dc.b $F2	; Unused

LBZ1_PSG1:
	sVolEnvPSG	v0A
	ssDetune	$FF
	saTranspose	$F4
	sCall		LBZ1_Call7
	saTranspose	$0C
	sJump		LBZ1_Jump6

LBZ1_PSG2:
	sVolEnvPSG	v0A
	ssDetune	$00
	saTranspose	$F4
	sCall		LBZ1_Call7
	saTranspose	$0C
	sJump		LBZ1_Jump6

LBZ1_Call7:
	dc.b nF5, $05, nRst, $13, nF5, $2F, nRst, $01
	dc.b nG5, $08, nF5, $07, nRst, $01, nEb5, $08
	dc.b nD5, $04, nRst, $0C, nF5, $03, nRst, $05
	dc.b nF5, $30, nG5, $08, nF5, $07, nRst, $01
	dc.b nEb5, $08, nD5, $07, nRst, $09, nF5, $04
	dc.b nRst, nF5, $30, nEb5, $08, nF5, nG5, nF5
	dc.b $05, nRst, $0B, nC5, $04, nRst, nC5, $46
	dc.b nRst, $02
	sRet

LBZ1_Jump6:
	dc.b nRst, $60, nRst, nRst, $54, nBb1, $01, nRst
	dc.b $05, nBb1, $02, nRst, $04, nBb1, $02, nRst
	dc.b $22, nAb1, $01, nRst, $05, nAb1, $01, nRst
	dc.b $05, nAb1, $01, nRst, $60, nRst, nRst, nRst
	dc.b $23, nBb1, $01, nRst, $05, nBb1, $02, nRst
	dc.b $04, nBb1, $02, nRst, $22, nAb1, $01, nRst
	dc.b $05, nAb1, $01, nRst, $05, nAb1, $01, nRst
	dc.b $60, nRst, nRst, nRst, $23, nBb1, $01, nRst
	dc.b $05, nBb1, $02, nRst, $04, nBb1, $02, nRst
	dc.b $22, nAb1, $01, nRst, $05, nAb1, $01, nRst
	dc.b $05, nAb1, $01, nRst, $60, nRst, nRst, nRst
	dc.b $47, nAb1, $01, nRst, $05, nAb1, $01, nRst
	dc.b $05, nAb1, $01, nRst, $05, nAb1, $01, nRst
	dc.b $05, nAb1, $01, nRst, $0B, nEb1, $02, nRst
	dc.b $0A, nEb1, $02, nRst, $60, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, $16
	sJump		LBZ1_Jump6
	dc.b $F2	; Unused

LBZ1_Patches:

	; Patch $00
	; $3C
	; $01, $00, $00, $00,	$1F, $1F, $15, $1F
	; $11, $0D, $12, $05,	$07, $04, $09, $02
	; $55, $3A, $25, $1A,	$1A, $80, $07, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $15, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$11, $12, $0D, $05
	spSustainLv	$05, $02, $03, $01
	spDecayRt	$07, $09, $04, $02
	spReleaseRt	$05, $05, $0A, $0A
	spTotalLv	$1A, $07, $00, $00

	; Patch $01
	; $3D
	; $01, $01, $01, $01,	$94, $19, $19, $19
	; $0F, $0D, $0D, $0D,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$15, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$02, $00, $00, $00
	spAttackRt	$14, $19, $19, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $0D, $0D, $0D
	spSustainLv	$02, $01, $01, $01
	spDecayRt	$07, $04, $04, $04
	spReleaseRt	$05, $0A, $0A, $0A
	spTotalLv	$15, $00, $00, $00

	; Patch $02
	; $03
	; $00, $D7, $33, $02,	$5F, $9F, $5F, $1F
	; $13, $0F, $0A, $0A,	$10, $0F, $02, $09
	; $35, $15, $25, $1A,	$13, $16, $15, $80
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$00, $03, $0D, $00
	spMultiple	$00, $03, $07, $02
	spRateScale	$01, $01, $02, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$13, $0A, $0F, $0A
	spSustainLv	$03, $02, $01, $01
	spDecayRt	$10, $02, $0F, $09
	spReleaseRt	$05, $05, $05, $0A
	spTotalLv	$13, $15, $16, $00

	; Patch $03
	; $34
	; $70, $72, $31, $31,	$1F, $1F, $1F, $1F
	; $10, $06, $06, $06,	$01, $06, $06, $06
	; $35, $1A, $15, $1A,	$10, $80, $18, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$07, $03, $07, $03
	spMultiple	$00, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $06, $06, $06
	spSustainLv	$03, $01, $01, $01
	spDecayRt	$01, $06, $06, $06
	spReleaseRt	$05, $05, $0A, $0A
	spTotalLv	$10, $18, $00, $00

	; Patch $04
	; $3E
	; $77, $71, $32, $31,	$1F, $1F, $1F, $1F
	; $0D, $06, $00, $00,	$08, $06, $00, $00
	; $15, $0A, $0A, $0A,	$1B, $80, $80, $80
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$07, $03, $07, $03
	spMultiple	$07, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $00, $06, $00
	spSustainLv	$01, $00, $00, $00
	spDecayRt	$08, $00, $06, $00
	spReleaseRt	$05, $0A, $0A, $0A
	spTotalLv	$1B, $00, $00, $00

	; Patch $05
	; $34
	; $33, $41, $7E, $74,	$5B, $9F, $5F, $1F
	; $04, $07, $07, $08,	$00, $00, $00, $00
	; $FF, $FF, $EF, $FF,	$23, $80, $29, $87
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$03, $07, $04, $07
	spMultiple	$03, $0E, $01, $04
	spRateScale	$01, $01, $02, $00
	spAttackRt	$1B, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $07, $07, $08
	spSustainLv	$0F, $0E, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $29, $00, $07

	; Patch $06
	; $3A
	; $01, $07, $01, $01,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $07
	; $1F, $FF, $1F, $0F,	$18, $28, $27, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spSustainLv	$01, $01, $0F, $00
	spDecayRt	$00, $00, $00, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $27, $28, $00

	; Patch $07
	; $3C
	; $32, $32, $71, $42,	$1F, $18, $1F, $1E
	; $07, $1F, $07, $1F,	$00, $00, $00, $00
	; $1F, $0F, $1F, $0F,	$1E, $80, $0C, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$03, $07, $03, $04
	spMultiple	$02, $01, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $18, $1E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $07, $1F, $1F
	spSustainLv	$01, $01, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $0C, $00, $00

	; Patch $08
	; $3C
	; $71, $72, $3F, $34,	$8D, $52, $9F, $1F
	; $09, $00, $00, $0D,	$00, $00, $00, $00
	; $23, $08, $02, $F7,	$15, $80, $1D, $87
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$07, $03, $07, $03
	spMultiple	$01, $0F, $02, $04
	spRateScale	$02, $02, $01, $00
	spAttackRt	$0D, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$09, $00, $00, $0D
	spSustainLv	$02, $00, $00, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$03, $02, $08, $07
	spTotalLv	$15, $1D, $00, $07

	; Patch $09
	; $3D
	; $01, $01, $00, $00,	$8E, $52, $14, $4C
	; $08, $08, $0E, $03,	$00, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$1B, $80, $80, $9B
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $00, $01, $00
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0E, $14, $12, $0C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $0E, $08, $03
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $00, $00, $1B

	; Patch $0A
	; $3A
	; $31, $53, $31, $41,	$8D, $4F, $15, $52
	; $06, $08, $07, $04,	$02, $00, $00, $00
	; $1F, $1F, $2F, $2F,	$19, $20, $2A, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $03, $05, $04
	spMultiple	$01, $01, $03, $01
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0D, $15, $0F, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $07, $08, $04
	spSustainLv	$01, $02, $01, $02
	spDecayRt	$02, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$19, $2A, $20, $00

	; Patch $0B
	; $3C
	; $36, $31, $76, $71,	$94, $9F, $96, $9F
	; $12, $00, $14, $0F,	$04, $0A, $04, $0D
	; $2F, $0F, $4F, $2F,	$33, $80, $1A, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$03, $07, $03, $07
	spMultiple	$06, $06, $01, $01
	spRateScale	$02, $02, $02, $02
	spAttackRt	$14, $16, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $14, $00, $0F
	spSustainLv	$02, $04, $00, $02
	spDecayRt	$04, $04, $0A, $0D
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$33, $1A, $00, $00

	; Patch $0C
	; $34
	; $33, $41, $7E, $74,	$5B, $9F, $5F, $1F
	; $04, $07, $07, $08,	$00, $00, $00, $00
	; $FF, $FF, $EF, $FF,	$23, $90, $29, $97
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$03, $07, $04, $07
	spMultiple	$03, $0E, $01, $04
	spRateScale	$01, $01, $02, $00
	spAttackRt	$1B, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $07, $07, $08
	spSustainLv	$0F, $0E, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $29, $10, $17

	; Patch $0D
	; $38
	; $63, $31, $31, $31,	$10, $13, $1A, $1B
	; $0E, $00, $00, $00,	$00, $00, $00, $00
	; $3F, $0F, $0F, $0F,	$1A, $19, $1A, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$06, $03, $03, $03
	spMultiple	$03, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $1A, $13, $1B
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $00, $00, $00
	spSustainLv	$03, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $1A, $19, $00

	; Patch $0E
	; $3A
	; $31, $25, $73, $41,	$5F, $1F, $1F, $9C
	; $08, $05, $04, $1E,	$03, $04, $02, $06
	; $2F, $2F, $1F, $0F,	$29, $27, $1F, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $07, $02, $04
	spMultiple	$01, $03, $05, $01
	spRateScale	$01, $00, $00, $02
	spAttackRt	$1F, $1F, $1F, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $04, $05, $1E
	spSustainLv	$02, $01, $02, $00
	spDecayRt	$03, $02, $04, $06
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$29, $1F, $27, $00

	; Patch $0F
	; $04
	; $71, $41, $31, $31,	$12, $12, $12, $12
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$23, $80, $23, $80
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$07, $03, $04, $03
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $12, $12, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $23, $00, $00

	; Patch $10
	; $14
	; $75, $72, $35, $32,	$9F, $9F, $9F, $9F
	; $05, $05, $00, $0A,	$05, $05, $07, $05
	; $2F, $FF, $0F, $2F,	$1E, $80, $14, $80
	spAlgorithm	$04
	spFeedback	$02
	spDetune	$07, $03, $07, $03
	spMultiple	$05, $05, $02, $02
	spRateScale	$02, $02, $02, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $00, $05, $0A
	spSustainLv	$02, $00, $0F, $02
	spDecayRt	$05, $07, $05, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $14, $00, $00

	; Patch $11
	; $3D
	; $01, $00, $01, $02,	$12, $1F, $1F, $14
	; $07, $02, $02, $0A,	$05, $05, $05, $05
	; $2F, $2F, $2F, $AF,	$1C, $80, $82, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $1F, $1F, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $02, $02, $0A
	spSustainLv	$02, $02, $02, $0A
	spDecayRt	$05, $05, $05, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1C, $02, $00, $00

	; Patch $12
	; $1C
	; $73, $72, $33, $32,	$94, $99, $94, $99
	; $08, $0A, $08, $0A,	$00, $05, $00, $05
	; $3F, $4F, $3F, $4F,	$1E, $80, $19, $80
	spAlgorithm	$04
	spFeedback	$03
	spDetune	$07, $03, $07, $03
	spMultiple	$03, $03, $02, $02
	spRateScale	$02, $02, $02, $02
	spAttackRt	$14, $14, $19, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $08, $0A, $0A
	spSustainLv	$03, $03, $04, $04
	spDecayRt	$00, $00, $05, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $19, $00, $00

	; Patch $13
	; $31
	; $33, $01, $00, $00,	$9F, $1F, $1F, $1F
	; $0D, $0A, $0A, $0A,	$0A, $07, $07, $07
	; $FF, $AF, $AF, $AF,	$1E, $1E, $1E, $80
	spAlgorithm	$01
	spFeedback	$06
	spDetune	$03, $00, $00, $00
	spMultiple	$03, $00, $01, $00
	spRateScale	$02, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $0A, $0A, $0A
	spSustainLv	$0F, $0A, $0A, $0A
	spDecayRt	$0A, $07, $07, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $1E, $1E, $00

	; Patch $14
	; $3A
	; $70, $76, $30, $71,	$1F, $95, $1F, $1F
	; $0E, $0F, $05, $0C,	$07, $06, $06, $07
	; $2F, $4F, $1F, $5F,	$21, $12, $28, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$07, $03, $07, $07
	spMultiple	$00, $00, $06, $01
	spRateScale	$00, $00, $02, $00
	spAttackRt	$1F, $1F, $15, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $05, $0F, $0C
	spSustainLv	$02, $01, $04, $05
	spDecayRt	$07, $06, $06, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $28, $12, $00

	; Patch $15
	; $28
	; $71, $00, $30, $01,	$1F, $1F, $1D, $1F
	; $13, $13, $06, $05,	$03, $03, $02, $05
	; $4F, $4F, $2F, $3F,	$0E, $14, $1E, $80
	spAlgorithm	$00
	spFeedback	$05
	spDetune	$07, $03, $00, $00
	spMultiple	$01, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1D, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$13, $06, $13, $05
	spSustainLv	$04, $02, $04, $03
	spDecayRt	$03, $02, $03, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $1E, $14, $00

	; Patch $16
	; $3E
	; $38, $01, $7A, $34,	$59, $D9, $5F, $9C
	; $0F, $04, $0F, $0A,	$02, $02, $05, $05
	; $AF, $AF, $66, $66,	$28, $80, $A3, $80
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$03, $07, $00, $03
	spMultiple	$08, $0A, $01, $04
	spRateScale	$01, $01, $03, $02
	spAttackRt	$19, $1F, $19, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $0F, $04, $0A
	spSustainLv	$0A, $06, $0A, $06
	spDecayRt	$02, $05, $02, $05
	spReleaseRt	$0F, $06, $0F, $06
	spTotalLv	$28, $23, $00, $00

	; Patch $17
	; $39
	; $32, $31, $72, $71,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$1B, $32, $28, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$03, $07, $03, $07
	spMultiple	$02, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $28, $32, $00

	; Patch $18
	; $07
	; $34, $74, $32, $71,	$1F, $1F, $1F, $1F
	; $0A, $0A, $05, $03,	$00, $00, $00, $00
	; $3F, $3F, $2F, $2F,	$8A, $8A, $80, $80
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$03, $03, $07, $07
	spMultiple	$04, $02, $04, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $05, $0A, $03
	spSustainLv	$03, $02, $03, $02
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0A, $00, $0A, $00

	; Patch $19
	; $3A
	; $31, $37, $31, $31,	$8D, $8D, $8E, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $00
	; $1F, $FF, $1F, $0F,	$17, $28, $26, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $03, $03, $03
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0D, $0E, $0D, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spSustainLv	$01, $01, $0F, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $26, $28, $00

	; Patch $1A
	; $3B
	; $3A, $31, $71, $74,	$DF, $1F, $1F, $DF
	; $00, $0A, $0A, $05,	$00, $05, $05, $03
	; $0F, $5F, $1F, $5F,	$32, $1E, $0F, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$03, $07, $03, $07
	spMultiple	$0A, $01, $01, $04
	spRateScale	$03, $00, $00, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $0A, $0A, $05
	spSustainLv	$00, $01, $05, $05
	spDecayRt	$00, $05, $05, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$32, $0F, $1E, $00

	; Patch $1B
	; $3A
	; $32, $56, $32, $42,	$8D, $4F, $15, $52
	; $06, $08, $07, $04,	$02, $00, $00, $00
	; $1F, $1F, $2F, $2F,	$19, $20, $2A, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $03, $05, $04
	spMultiple	$02, $02, $06, $02
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0D, $15, $0F, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $07, $08, $04
	spSustainLv	$01, $02, $01, $02
	spDecayRt	$02, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$19, $2A, $20, $00

	; Patch $1C
	; $2C
	; $71, $74, $32, $32,	$1F, $12, $1F, $12
	; $00, $0A, $00, $0A,	$00, $00, $00, $00
	; $0F, $1F, $0F, $1F,	$16, $80, $17, $80
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$07, $03, $07, $03
	spMultiple	$01, $02, $04, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $12, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $0A, $0A
	spSustainLv	$00, $00, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$16, $17, $00, $00

	; Patch $1D
	; $3A
	; $01, $07, $01, $01,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $07
	; $1F, $FF, $1F, $0F,	$18, $28, $27, $8F
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spSustainLv	$01, $01, $0F, $00
	spDecayRt	$00, $00, $00, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $27, $28, $0F

	; Patch $1E
	; $36
	; $7A, $32, $51, $11,	$1F, $1F, $59, $1C
	; $0A, $0D, $06, $0A,	$07, $00, $02, $02
	; $AF, $5F, $5F, $5F,	$1E, $8B, $81, $80
	spAlgorithm	$06
	spFeedback	$06
	spDetune	$07, $05, $03, $01
	spMultiple	$0A, $01, $02, $01
	spRateScale	$00, $01, $00, $00
	spAttackRt	$1F, $19, $1F, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $06, $0D, $0A
	spSustainLv	$0A, $05, $05, $05
	spDecayRt	$07, $02, $00, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $01, $0B, $00

	; Patch $1F
	; $3C
	; $71, $72, $3F, $34,	$8D, $52, $9F, $1F
	; $09, $00, $00, $0D,	$00, $00, $00, $00
	; $23, $08, $02, $F7,	$15, $85, $1D, $8A
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$07, $03, $07, $03
	spMultiple	$01, $0F, $02, $04
	spRateScale	$02, $02, $01, $00
	spAttackRt	$0D, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$09, $00, $00, $0D
	spSustainLv	$02, $00, $00, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$03, $02, $08, $07
	spTotalLv	$15, $1D, $05, $0A

	; Patch $20
	; $3E
	; $77, $71, $32, $31,	$1F, $1F, $1F, $1F
	; $0D, $06, $00, $00,	$08, $06, $00, $00
	; $15, $0A, $0A, $0A,	$1B, $8F, $8F, $8F
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$07, $03, $07, $03
	spMultiple	$07, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $00, $06, $00
	spSustainLv	$01, $00, $00, $00
	spDecayRt	$08, $00, $06, $00
	spReleaseRt	$05, $0A, $0A, $0A
	spTotalLv	$1B, $0F, $0F, $0F

	; Patch $21
	; $07
	; $34, $74, $32, $71,	$1F, $1F, $1F, $1F
	; $0A, $0A, $05, $03,	$00, $00, $00, $00
	; $3F, $3F, $2F, $2F,	$8A, $8A, $8A, $8A
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$03, $03, $07, $07
	spMultiple	$04, $02, $04, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $05, $0A, $03
	spSustainLv	$03, $02, $03, $02
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0A, $0A, $0A, $0A
