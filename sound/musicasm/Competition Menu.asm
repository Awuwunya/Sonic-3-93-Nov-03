CompetitionMenu_Header:
	sHeaderInit						; Z80 offset is $CCB8
	sHeaderPatch	CompetitionMenu_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $25
	sHeaderDAC	CompetitionMenu_DAC
	sHeaderFM	CompetitionMenu_FM1, $18, $12
	sHeaderFM	CompetitionMenu_FM2, $0C, $19
	sHeaderFM	CompetitionMenu_FM3, $0C, $19
	sHeaderFM	CompetitionMenu_FM4, $0C, $19
	sHeaderFM	CompetitionMenu_FM5, $0C, $19
	sHeaderPSG	CompetitionMenu_PSG1, $F4, $04, $00, v0C
	sHeaderPSG	CompetitionMenu_PSG2, $F4, $04, $00, v0C
	sHeaderPSG	CompetitionMenu_PSG3, $00, $04, $00, v0C
	dc.b $F2, $F2	; Unused

CompetitionMenu_DAC:
	dc.b nRst, $30, dSnare, $02, dSnare, dSnare, dSnare, $06
	dc.b dSnare, dSnare, dSnare, dSnare, dSnare, dSnare

CompetitionMenu_Jump7:
	dc.b dKick, $18, dSnare, $06, dSnare, $0C, dSnare, $12
	dc.b dKick, $0C, dSnare, $06, dKick, $12, dKick, $18
	dc.b dSnare, $06, dSnare, $0C, dSnare, $12, dKick, $0C
	dc.b dSnare, $06, dKick, $12, dKick, $18, dSnare, $06
	dc.b dSnare, $0C, dSnare, $12, dKick, $0C, dSnare, $06
	dc.b dKick, $12, dKick, $18, dSnare, $06, dSnare, $0C
	dc.b dSnare, $12, dKick, $0C, dSnare, $06, dKick, dSnare
	dc.b dSnare, dKick, $18, dSnare, $24, dKick, $0C, dSnare
	dc.b $06, dKick, $12, dKick, $18, dSnare, $24, dKick
	dc.b $0C, dSnare, $06, dKick, $12, dKick, $18, dSnare
	dc.b $24, dKick, $0C, dSnare, $06, dKick, $12, dKick
	dc.b $18, dSnare, $24, dKick, $0C, dSnare, $06, dKick
	dc.b dSnare, $0C, dKick, $18, dSnare, $24, dKick, $0C
	dc.b dSnare, $06, dKick, $12, dKick, $18, dSnare, $24
	dc.b dKick, $0C, dSnare, $06, dKick, $12, dKick, $18
	dc.b dSnare, $24, dKick, $0C, dSnare, $06, dKick, $12
	dc.b dKick, $18, dSnare, $1E, dSnare, $06, dKick, dSnare
	dc.b dSnare, dKick, dSnare, dSnare, dKick, $18, dSnare, $24
	dc.b dKick, $0C, dSnare, $06, dKick, $12, dKick, $18
	dc.b dSnare, $24, dKick, $0C, dSnare, $06, dKick, $12
	dc.b dKick, $18, dSnare, $24, dKick, $0C, dSnare, $06
	dc.b dKick, $12, dKick, $18, dSnare, $24, dKick, $06
	dc.b dSnare, dSnare, dSnare, dSnare, dSnare, dKick, dKick, dKick
	dc.b dKick, dSnare, $24, dKick, $06, dKick, dSnare, dKick
	dc.b $12, dKick, $06, dKick, dKick, dKick, dSnare, $24
	dc.b dKick, $06, dKick, dSnare, dKick, dSnare, $0C, dKick
	dc.b $06, dKick, dKick, dKick, dSnare, $24, dKick, $06
	dc.b dKick, dSnare, dKick, $12, dKick, $06, dKick, dKick
	dc.b dKick, dSnare, $24, dKick, $06, dKick, dSnare, dKick
	dc.b dSnare, $0C, dKick, $06, dKick, dKick, dKick, dSnare
	dc.b $24, dKick, $06, dKick, dSnare, dKick, $12, dKick
	dc.b $06, dKick, dKick, dKick, dSnare, $24, dKick, $06
	dc.b dKick, dSnare, dKick, dSnare, $0C, dKick, $06, dKick
	dc.b dKick, dKick, dSnare, $24, dKick, $06, dKick, dSnare
	dc.b dKick, $12, dSnare, $06, dSnare, dSnare, dSnare, $26
	dc.b dSnare, $02, dSnare, dSnare, $06, dSnare, dSnare, dSnare
	dc.b dSnare, dSnare
	sJump		CompetitionMenu_Jump7
	dc.b $F2	; Unused

CompetitionMenu_FM1:
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $60

CompetitionMenu_Jump1:
	dc.b nC1, $06, nRst, $12, nC2, nG1, $06, nRst
	dc.b nBb1, $04, nRst, $02, nC2, $04, nRst, $08
	dc.b nBb1, $06, nG1, $12, nF1, $06, nFs1, nG1
	dc.b nF1, nEb1, nC1, $0C, nEb1, $04, nRst, $08
	dc.b nFs1, $04, nRst, $02, nF1, $0C, nEb1, $06
	dc.b nBb0, $0E, nRst, $04, nC1, $06, nRst, $12
	dc.b nC2, nG1, $06, nRst, nBb1, $04, nRst, $02
	dc.b nC2, $04, nRst, $08, nBb1, $06, nG1, $12
	dc.b nF1, $06, nFs1, nG1, nF1, nEb1, nC1, $0C
	dc.b nEb1, $04, nRst, $08, nFs1, $04, nRst, $02
	dc.b nF1, $0C, nEb1, $06, nBb0, $0E, nRst, $04
	dc.b nC1, $06, nRst, $12, nC2, nG1, $06, nBb1
	dc.b $04, nRst, $08, nC2, $04, nRst, $08, nBb1
	dc.b $06, nG1, $12, nF1, $06, nFs1, nG1, nF1
	dc.b nEb1, nC1, $0C, nEb1, $06, nRst, $0C, nF1
	dc.b $04, nRst, $08, nEb1, $06, nBb0, $0E, nRst
	dc.b $04, nC1, $06, nRst, $12, nC2, nG1, $06
	dc.b nBb1, $04, nRst, $08, nC2, $04, nRst, $08
	dc.b nBb1, $06, nG1, $12, nF1, $06, nFs1, nG1
	dc.b nF1, nEb1, nC1, $0C, nEb1, $06, nRst, $0C
	dc.b nF1, $04, nRst, $08, nEb1, $06, nBb0, $0E
	dc.b nRst, $04, nF1, $06, nRst, $12, nF2, nC2
	dc.b $06, nEb2, $04, nRst, $08, nF2, $04, nRst
	dc.b $08, nEb2, $06, nC2, $12, nBb1, $06, nB1
	dc.b nC2, nBb1, nAb1, nF1, $0C, nAb1, $06, nRst
	dc.b $0C, nBb1, $04, nRst, $08, nAb1, $06, nF1
	dc.b $0E, nRst, $04, nC1, $06, nRst, $12, nC2
	dc.b nG1, $06, nBb1, $04, nRst, $08, nC2, $04
	dc.b nRst, $08, nBb1, $06, nG1, $12, nF1, $06
	dc.b nFs1, nG1, nF1, nEb1, nC1, $0C, nEb1, $06
	dc.b nRst, $0C, nF1, $04, nRst, $08, nEb1, $06
	dc.b nBb0, $0E, nRst, $04, nAb0, $06, nRst, $12
	dc.b nAb1, $0E, nRst, $04, nAb1, $06, nG1, $04
	dc.b nRst, $08, nF1, $04, nRst, $08, nEb1, $06
	dc.b nF1, $10, nRst, $02, nC1, $06, nRst, $12
	dc.b nC2, $10, nRst, $02, nC2, $04, nRst, $02
	dc.b nBb1, $04, nRst, $08, nG1, $04, nRst, $08
	dc.b nF1, $04, nRst, $02, nG1, $0E, nRst, $04
	dc.b nAb0, $06, nRst, $12, nAb1, $0E, nRst, $04
	dc.b nAb1, $06, nG1, $04, nRst, $08, nF1, $04
	dc.b nRst, $08, nEb1, $06, nF1, $10, nRst, $02
	dc.b nC1, $06, nRst, $12, nC2, $10, nRst, $02
	dc.b nC2, $04, nRst, $02, nBb1, $04, nRst, $08
	dc.b nG1, $04, nRst, $08, nF1, $04, nRst, $02
	dc.b nG1, $0E, nRst, $04, nAb0, $06, nRst, $12
	dc.b nAb1, $0E, nRst, $04, nAb1, $06, nG1, $04
	dc.b nRst, $08, nF1, $04, nRst, $08, nEb1, $06
	dc.b nF1, $10, nRst, $02, nC1, $06, nRst, $12
	dc.b nC2, $10, nRst, $02, nC2, $04, nRst, $02
	dc.b nBb1, $04, nRst, $08, nG1, $04, nRst, $08
	dc.b nF1, $04, nRst, $02, nG1, $0E, nRst, $04
	dc.b nAb0, $06, nRst, $12, nAb1, $0E, nRst, $04
	dc.b nAb1, $06, nG1, $04, nRst, $08, nF1, $04
	dc.b nRst, $08, nEb1, $06, nF1, $10, nRst, $02
	dc.b nC1, $06, nRst, $12, nC2, $10, nRst, $02
	dc.b nC2, $04, nRst, $02, nBb1, $04, nRst, $08
	dc.b nG1, $04, nRst, $08, nF1, $04, nRst, $02
	dc.b nG1, $0E, nRst, $04, nAb0, $06, nRst, $12
	dc.b nAb1, $0E, nRst, $04, nAb1, $06, nG1, $04
	dc.b nRst, $08, nF1, $04, nRst, $08, nEb1, $06
	dc.b nF1, $10, nRst, $02, nC1, $06, nRst, $12
	dc.b nC2, $10, nRst, $02, nC2, $04, nRst, $02
	dc.b nBb1, $04, nRst, $08, nG1, $04, nRst, $08
	dc.b nF1, $04, nRst, $02, nG1, $0E, nRst, $04
	dc.b nCs1, $06, nRst, $12, nCs2, $0E, nRst, $04
	dc.b nCs2, $06, nB1, $04, nRst, $08, nAb1, $04
	dc.b nRst, $08, nFs1, $06, nAb1, $10, nRst, $02
	dc.b nG1, $06, nRst, $12, nG2, $10, nRst, $02
	dc.b nG2, $04, nRst, $02, nF2, $04, nRst, $08
	dc.b nD2, $04, nRst, $08, nC2, $04, nRst, $02
	dc.b nD2, $0E, nRst, $04
	sJump		CompetitionMenu_Jump1
	dc.b $F2	; Unused

CompetitionMenu_FM5:
	dc.b nRst, $03
	sJump		CompetitionMenu_FM2
	dc.b $F2	; Unused

CompetitionMenu_FM2:
	sPatFM		$0D
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $60

CompetitionMenu_Jump2:
	dc.b nRst, $1E, nBb4, $0A, nRst, $02, nA4, $04
	dc.b nRst, $50, nA4, $0A, nRst, $02, nBb4, $04
	dc.b nRst, $50, nBb4, $0A, nRst, $02, nA4, $04
	dc.b nRst, $50, nA4, $0A, nRst, $02, nBb4, $04
	dc.b nRst, $32
	sPatFM		$17
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b nC4, $0C, nBb3, $06, nC4, $1C, nRst, $08
	dc.b nF3, $02, nFs3, nRst, nG3, $06, nBb3, nEb4
	dc.b $04, nRst, $08, nD4, $04, nRst, $08, nC4
	dc.b $06, nBb3, $12, nC4, $0C, nBb3, $06, nFs3
	dc.b $02, nG3, $06, nRst, $04, nF3, nRst, $02
	dc.b nG3, $06, nBb3, nEb4, $04, nRst, $08, nD4
	dc.b $04, nRst, $08, nC4, $0C, nBb3, $04, nRst
	dc.b $02, nC4, $20, nRst, $04, nF3, nRst, $02
	dc.b nG3, $06, nBb3, nEb4, $04, nRst, $08, nD4
	dc.b $04, nRst, $08, nC4, $06, nBb3, $12, nC4
	dc.b $0C, nBb3, $06, nG3, $08, nRst, $16, nF2
	dc.b $06, nF3, nEb3, $04, nRst, $02, nC3, $06
	dc.b nEb3, nF3, $04, nRst, $08, nFs3, $12, nF3
	dc.b $06, nC3, nEb3, nF3, nRst, nBb3, $12, nG3
	dc.b $06, nF3, $04, nRst, $02, nG3, $06, nF3
	dc.b nEb3, nC3, nEb3, $04, nRst, $08, nF3, $06
	dc.b nEb3, $08, nRst, $04, nF3, nRst, $02, nG3
	dc.b $06, nBb3, nEb4, $04, nRst, $08, nD4, $04
	dc.b nRst, $08, nC4, $0C, nBb3, $06, nC4, $0C
	dc.b nD4, $06, nC4, $20, nRst, $04, nF4, $0E
	dc.b nRst, $04, nF4, $12, nEb4, $2E, nRst, $0E
	dc.b nD4, nRst, $04, nD4, $12, nC4, $3C, nBb3
	dc.b $0C, nRst, $06, nBb3, $12, nG3, $38, nRst
	dc.b $04, nF3, $0E, nRst, $04, nF3, $12, nEb3
	dc.b $18, nF3, $0C, nG3, $08, nRst, $04, nBb3
	dc.b $0A, nRst, $02, nEb3, $12, nD3, $04, nRst
	dc.b $0E, nEb3, $18
	sPatFM		$0E
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nC3, $06, nEb3, nF3, nFs3, nG3, nBb3, nC4
	dc.b $0C, nBb3, $04, nRst, $02, nC4, $06, nEb4
	dc.b nF4, nRst, nF4, $02, nF4, nFs4, nF4, $0C
	dc.b nEb4, $06, nC4, nEb4, nF4, $10, nRst, $02
	dc.b nFs4, nG4, $0A, nBb4, $06, nG4, nBb4, nC5
	dc.b nRst, nD5, $02, nEb5, $0A, nD5, $04, nRst
	dc.b $02, nC5, $06, nBb4, nC5, $0C, nBb4, $02
	dc.b nG4, nF4, nEb4, nC4, nBb3
	sPatFM		$0E
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb5, $06, nF5, $0A, nRst, $02, nEb5, $06
	dc.b nFs5, $0C, nEb5, $06, nA5, $02, nBb5, $0A
	dc.b nF5, $06, nEb5, nC5, nEb5, nC5, nBb4, nC5
	dc.b nBb4, nG4, nBb4, nG4, nF4, nG4, nF4, nEb4
	dc.b nF4, nEb4, nC4, nEb4, $12, nC4, $02, nBb3
	dc.b nG3, nF3, nEb3, nC3
	sPatFM		$0E
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb4, $12, nFs4, nF4, $28, nRst, $14, nFs4
	dc.b $02, nG4, $10, nBb4, $12, nG4, $06, nBb4
	dc.b nA4, $12, nFs4, $02, nG4, $14, nRst, $08
	sPatFM		$0E
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nBb4, $12, nEb5, $1E, nB4, $12, nE5, $1E
	dc.b nF5, $08, nRst, $10, nF5, $30, nRst, $06
	dc.b nF3, nG3, nBb3
	sJump		CompetitionMenu_Jump2
	dc.b $F2	; Unused

CompetitionMenu_FM3:
	sPatFM		$18
	dc.b nRst, $60

CompetitionMenu_Jump3:
	dc.b nF3, $04, nRst, $08, nEb3, $06, nF3, $04
	dc.b nRst, $26, nG3, $04, nRst, $08, nF3, $04
	dc.b nRst, $02, nG3, $12, nF3, $04, nRst, $08
	dc.b nEb3, $06, nF3, $04, nRst, $26, nBb3, $04
	dc.b nRst, $0E, nBb3, $0A, nRst, $08, nF3, $04
	dc.b nRst, $08, nEb3, $06, nF3, $04, nRst, $26
	dc.b nG3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b nG3, $12, nF3, $04, nRst, $08, nEb3, $06
	dc.b nF3, $04, nRst, $26, nBb3, $04, nRst, $0E
	dc.b nBb3, $0A, nRst, $08, nG3, $04, nRst, $14
	dc.b nA3, $10, nRst, $02, nG3, $04, nRst, $3E
	dc.b nBb4, $04, nRst, $0E, nBb4, $04, nRst, $0E
	dc.b nA4, $02, nBb4, $10, nA4, $04, nRst, $1A
	dc.b nG3, $04, nRst, $14, nA3, $10, nRst, $02
	dc.b nG3, $04, nRst, $3E, nBb4, $04, nRst, $0E
	dc.b nBb4, $04, nRst, $0E, nA4, $02, nBb4, $10
	dc.b nA4, $04, nRst, $1A, nEb3, $04, nRst, $14
	dc.b nFs3, $02, nG3, $0E, nRst, $02, nEb3, $04
	dc.b nRst, $3E, nEb4, $04, nRst, $0E, nEb4, $04
	dc.b nRst, $0E, nF4, $02, nFs4, $0E, nRst, $02
	dc.b nEb4, $04, nRst, $1A, nG3, $04, nRst, $14
	dc.b nA3, $10, nRst, $02, nG3, $04, nRst, $32
	dc.b nD4, $10, nRst, $02, nD4, $04, nRst, $0E
	dc.b nBb3, $10, nRst, $2C, nBb3, $10, nRst, $02
	dc.b nBb3, $04, nRst, $0E, nG3, $10, nRst, $02
	dc.b nEb4, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b nF4, $04, nRst, $02, nEb4, $0E, nRst, $04
	dc.b nG3, $10, nRst, $02, nG3, $04, nRst, $0E
	dc.b nEb3, $10, nRst, $02, nC4, $04, nRst, $02
	dc.b nEb4, $04, nRst, $08, nD4, $06, nC4, $12
	dc.b nD3, $10, nRst, $02, nD3, $04, nRst, $0E
	dc.b nC3, $10, nRst, $02, nF4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $08, nAb4, $04, nRst, $02
	dc.b nG4, $10, nRst, $02, nBb2, $10, nRst, $02
	dc.b nBb2, $04, nRst, $0E, nBb2, $10, nRst, $02
	dc.b nBb3, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nC4, $0C, nRst, $06
	dc.b nAb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nAb3, $04, nRst, $1A
	dc.b nBb4, $02, nC5, $0A, nAb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nAb3, $0A, nRst, $08, nC4, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nC4, $04, nRst, $1A, nEb5, $0C, nC4, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nBb3, $04
	dc.b nRst, $02, nC4, $0A, nRst, $08, nAb3, $04
	dc.b nRst, $02, nAb3, $04, nRst, $02, nEb3, $04
	dc.b nRst, $02, nAb3, $04, nRst, $1A, nF5, $02
	dc.b nFs5, $0A, nAb3, $04, nRst, $02, nAb3, $04
	dc.b nRst, $02, nEb3, $04, nRst, $02, nAb3, $0A
	dc.b nRst, $08, nC4, $04, nRst, $02, nC4, $04
	dc.b nRst, $02, nBb3, $04, nRst, $02, nC4, $04
	dc.b nRst, $1A, nEb5, $0C, nC4, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nC4, $0A, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $1A, nBb4, $02, nC5, $0A
	dc.b nAb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nAb3, $0A, nRst, $08
	dc.b nC4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nC4, $04, nRst, $1A
	dc.b nF5, $0C, nC4, $04, nRst, $02, nC4, $04
	dc.b nRst, $02, nBb3, $04, nRst, $02, nC4, $0A
	dc.b nRst, $08, nAb3, $04, nRst, $02, nAb3, $04
	dc.b nRst, $02, nEb3, $04, nRst, $02, nAb3, $04
	dc.b nRst, $1A, nEb5, $02, nF5, $0A, nAb3, $04
	dc.b nRst, $02, nAb3, $04, nRst, $02, nEb3, $04
	dc.b nRst, $02, nAb3, $0A, nRst, $08, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $26, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $0E
	sJump		CompetitionMenu_Jump3
	dc.b $F2	; Unused

CompetitionMenu_FM4:
	sPatFM		$19
	dc.b nRst, $60

CompetitionMenu_Jump4:
	dc.b nD3, $04, nRst, $08, nC3, $06, nD3, $04
	dc.b nRst, $08
	sPatFM		$0D
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb4, $0A, nRst, $02, nEb4, $04, nRst, $0E
	sPatFM		$19
	dc.b nEb3, $02, nRst, $0A, nD3, $04, nRst, $02
	dc.b nEb3, $12, nD3, $04, nRst, $08, nC3, $06
	dc.b nD3, $04, nRst, $08
	sPatFM		$0D
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb4, $0A, nRst, $02, nEb4, $04, nRst, $0E
	sPatFM		$19
	dc.b nG3, $02, nRst, $10, nG3, $0A, nRst, $08
	dc.b nD3, $04, nRst, $08, nC3, $06, nD3, $04
	dc.b nRst, $08
	sPatFM		$0D
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb4, $0A, nRst, $02, nEb4, $04, nRst, $0E
	sPatFM		$19
	dc.b nEb3, $02, nRst, $0A, nD3, $04, nRst, $02
	dc.b nEb3, $12, nD3, $04, nRst, $08, nC3, $06
	dc.b nD3, $04, nRst, $08
	sPatFM		$0D
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb4, $0A, nRst, $02, nEb4, $04, nRst, $0E
	sPatFM		$19
	dc.b nG3, $02, nRst, $10, nG3, $0A, nRst, $08
	dc.b nEb3, $04, nRst, $14, nF3, $10, nRst, $02
	dc.b nEb3, $04, nRst, $3E, nG4, $04, nRst, $0E
	dc.b nG4, $04, nRst, $0E, nG4, $10, nRst, $02
	dc.b nF4, $04, nRst, $1A, nEb3, $04, nRst, $14
	dc.b nF3, $10, nRst, $02, nEb3, $04, nRst, $3E
	dc.b nG4, $04, nRst, $0E, nG4, $04, nRst, $0E
	dc.b nG4, $10, nRst, $02, nF4, $04, nRst, $1A
	dc.b nC3, $04, nRst, $14, nEb3, $10, nRst, $02
	dc.b nC3, $04, nRst, $3E, nC4, $04, nRst, $0E
	dc.b nC4, $04, nRst, $0E, nEb4, $10, nRst, $02
	dc.b nC4, $04, nRst, $1A, nEb3, $04, nRst, $14
	dc.b nF3, $10, nRst, $02, nEb3, $04, nRst, $32
	dc.b nBb3, $10, nRst, $02, nBb3, $04, nRst, $0E
	dc.b nG3, $10, nRst, $02, nG4, $06, nBb4, nD5
	dc.b nBb4, nG4, nEb4, nBb3, nF3, $10, nRst, $02
	dc.b nF3, $04, nRst, $0E, nEb3, $10, nRst, $02
	dc.b nBb3, $04, nRst, $02, nEb4, $04, nRst, $08
	dc.b nD4, $04, nRst, $02, nC4, $0E, nRst, $04
	dc.b nEb3, $10, nRst, $02, nEb3, $04, nRst, $0E
	dc.b nBb2, $10, nRst, $02, nG3, $04, nRst, $02
	dc.b nC4, $04, nRst, $08, nBb3, $06, nEb3, $12
	dc.b nBb2, $10, nRst, $02, nBb2, $04, nRst, $0E
	dc.b nG2, $10, nRst, $02, nBb3, $04, nRst, $02
	dc.b nD4, $04, nRst, $08, nC4, $04, nRst, $02
	dc.b nEb4, $10, nRst, $02, nG2, $10, nRst, $02
	dc.b nF2, $04, nRst, $0E, nG2, $10, nRst, $02
	dc.b nG3, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b nC4, $04, nRst, $02, nEb3, $0C, nRst, $06
	dc.b nEb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nBb2, $04, nRst, $02, nEb3, $04, nRst, $1A
	dc.b nFs4, $0C, nEb3, $04, nRst, $02, nEb3, $04
	dc.b nRst, $02, nBb2, $04, nRst, $02, nEb3, $0A
	dc.b nFs3, $02, nF3, nEb3, nC3, nG3, $04, nRst
	dc.b $02, nG3, $04, nRst, $02, nF3, $04, nRst
	dc.b $02, nG3, $04, nRst, $1A, nBb4, $0C, nG3
	dc.b $04, nRst, $02, nG3, $04, nRst, $02, nF3
	dc.b $04, nRst, $02, nG3, $0A, nBb3, $02, nG3
	dc.b nF3, nEb3, nEb3, $04, nRst, $02, nEb3, $04
	dc.b nRst, $02, nBb2, $04, nRst, $02, nEb3, $04
	dc.b nRst, $1A, nC5, $0C, nEb3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nBb2, $04, nRst, $02
	dc.b nEb3, $0A, nFs3, $02, nF3, nEb3, nC3, nG3
	dc.b $04, nRst, $02, nG3, $04, nRst, $02, nF3
	dc.b $04, nRst, $02, nG3, $04, nRst, $1A, nBb4
	dc.b $0C, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b $02, nF3, $04, nRst, $02, nG3, $0A, nBb3
	dc.b $02, nG3, nF3, nEb3, nEb3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nBb2, $04, nRst, $02
	dc.b nEb3, $04, nRst, $1A, nFs4, $0C, nEb3, $04
	dc.b nRst, $02, nEb3, $04, nRst, $02, nBb2, $04
	dc.b nRst, $02, nEb3, $0A, nFs3, $02, nF3, nEb3
	dc.b nC3, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b $02, nF3, $04, nRst, $02, nG3, $04, nRst
	dc.b $1A, nC5, $0C, nG3, $04, nRst, $02, nG3
	dc.b $04, nRst, $02, nF3, $04, nRst, $02, nG3
	dc.b $0A, nBb3, $02, nG3, nF3, nEb3, nCs3, $04
	dc.b nRst, $02, nCs3, $04, nRst, $02, nBb2, $04
	dc.b nRst, $02, nCs3, $04, nRst, $1A, nB4, $0C
	dc.b nCs3, $04, nRst, $02, nCs3, $04, nRst, $02
	dc.b nBb2, $04, nRst, $02, nCs3, $0A, nFs3, $02
	dc.b nF3, nEb3, nC3, nG3, $04, nRst, $02, nG3
	dc.b $04, nRst, $02, nG3, $04, nRst, $02, nG3
	dc.b $04, nRst, $02, nB3, $24, nG3, $04, nRst
	dc.b $02, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b $02, nG3, $04, nRst, $0E
	sJump		CompetitionMenu_Jump4
	dc.b $F2	; Unused

CompetitionMenu_PSG1:
	dc.b nRst, $60

CompetitionMenu_Jump5:
	dc.b nC4, $06, nRst, nC5, nC4, nRst, $1E, nC4
	dc.b $06, nRst, nC5, nC4, $0C, nC5, nC4, $06
	dc.b nRst, nC5, nC4, nRst, $1E, nC4, $06, nRst
	dc.b nC5, nC4, $0C, nC5, nC4, $06, nRst, nC5
	dc.b nC4, nRst, $1E, nC4, $06, nRst, nC5, nC4
	dc.b $0C, nC5, nC4, $06, nRst, nC5, nC4, nRst
	dc.b $1E, nC4, $06, nRst, nC5, nC4, $0C, nC5
	dc.b nC5, $04, nRst, $08, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b nEb5, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b nD5, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $0E, nEb5, $04, nRst, $02
	dc.b nD5, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nD5, $04, nRst, $08
	dc.b nC5, $04, nRst, $08, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b nEb5, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b nD5, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $0E, nEb5, $04, nRst, $02
	dc.b nD5, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nD5, $04, nRst, $08
	dc.b nC5, $04, nRst, $08, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b nEb5, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b nD5, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $0E, nEb5, $04, nRst, $02
	dc.b nD5, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nD5, $04, nRst, $08
	dc.b nC5, $04, nRst, $08, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b nEb5, $04, nRst, $08, nC5, $04, nRst, $02
	dc.b nD5, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b nD5, $04, nRst, $3E, nG4, $06, nBb4, nD5
	dc.b nBb4, nG4, nEb4, nBb3, nBb4, $10, nRst, $02
	dc.b nBb4, $04, nRst, $0E, nG4, $10, nRst, $02
	dc.b nEb5, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b nF5, $04, nRst, $02, nEb5, $0E, nRst, $04
	dc.b nG4, $10, nRst, $02, nG4, $04, nRst, $0E
	dc.b nEb4, $10, nRst, $02, nC5, $04, nRst, $02
	dc.b nEb5, $04, nRst, $08, nD5, $06, nC5, $12
	dc.b nD4, $10, nRst, $02, nD4, $04, nRst, $0E
	dc.b nC4, $10, nRst, $02, nF5, $04, nRst, $02
	dc.b nBb5, $04, nRst, $08, nAb5, $04, nRst, $02
	dc.b nG5, $10, nRst, $02, nBb3, $10, nRst, $02
	dc.b nBb3, $04, nRst, $0E, nBb3, $10, nRst, $02
	dc.b nBb4, $04, nRst, $02, nF5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $02, nC5, $0C, nRst, $06
	dc.b nEb4, $04, nRst, $08, nEb4, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nEb5, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b nG4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG4, $04, nRst, $02, nG5, $04, nRst, $02
	dc.b nEb4, $04, nRst, $08, nEb4, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nEb5, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b nG4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG4, $04, nRst, $02, nG5, $04, nRst, $02
	dc.b nEb4, $04, nRst, $08, nEb4, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nEb5, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b nG4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG4, $04, nRst, $02, nG5, $04, nRst, $02
	dc.b nF4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b nF4, $04, nRst, $02, nF5, $04, nRst, $08
	dc.b nF4, $04, nRst, $02, nF5, $04, nRst, $08
	dc.b nF4, $04, nRst, $02, nF5, $04, nRst, $08
	dc.b nF4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b nF5, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b nG4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b nG4, $04, nRst, $02, nG5, $04, nRst, $02
	sJump		CompetitionMenu_Jump5
	dc.b $F2	; Unused

CompetitionMenu_PSG2:
	dc.b nRst, $7F, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, $72
	sJump		CompetitionMenu_Jump5
	dc.b $F2	; Unused

CompetitionMenu_PSG3:
	sVolEnvPSG	v02
	sNoisePSG	$E7
	dc.b nRst, $60

CompetitionMenu_Jump6:
	dc.b nBb6, $06, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, $04, nBb6, nBb6, nBb6, $06, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, $04, nBb6, nBb6
	dc.b nBb6, $06, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b $04, nBb6, nBb6, nBb6, $06, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, $04, nBb6, nBb6, nBb6, $06
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, $04, nBb6
	dc.b nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, $04, nBb6, nBb6, nBb6, $06, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nRst, $60
	sJump		CompetitionMenu_Jump6
	dc.b $F2	; Unused

CompetitionMenu_Patches:

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
	; $20
	; $36, $35, $30, $31,	$DF, $DF, $9F, $9F
	; $07, $06, $09, $06,	$07, $06, $06, $08
	; $20, $10, $10, $F8,	$19, $37, $13, $80
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$03, $03, $03, $03
	spMultiple	$06, $00, $05, $01
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $09, $06, $06
	spSustainLv	$02, $01, $01, $0F
	spDecayRt	$07, $06, $06, $08
	spReleaseRt	$00, $00, $00, $08
	spTotalLv	$19, $13, $37, $00

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
	; $01, $01, $01, $02,	$8D, $07, $07, $52
	; $09, $00, $00, $03,	$01, $02, $02, $00
	; $52, $02, $02, $28,	$18, $22, $18, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $02
	spRateScale	$02, $00, $00, $01
	spAttackRt	$0D, $07, $07, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$09, $00, $00, $03
	spSustainLv	$05, $00, $00, $02
	spDecayRt	$01, $02, $02, $00
	spReleaseRt	$02, $02, $02, $08
	spTotalLv	$18, $18, $22, $00

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
	; $1C
	; $7C, $37, $3E, $37,	$94, $99, $94, $99
	; $08, $0A, $08, $0A,	$00, $05, $00, $05
	; $3F, $4F, $3F, $4F,	$2B, $80, $1B, $80
	spAlgorithm	$04
	spFeedback	$03
	spDetune	$07, $03, $03, $03
	spMultiple	$0C, $0E, $07, $07
	spRateScale	$02, $02, $02, $02
	spAttackRt	$14, $14, $19, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $08, $0A, $0A
	spSustainLv	$03, $03, $04, $04
	spDecayRt	$00, $00, $05, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2B, $1B, $00, $00

	; Patch $0D
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
	; $14
	; $71, $72, $31, $31,	$0F, $0F, $0F, $0F
	; $00, $0F, $00, $00,	$00, $00, $00, $00
	; $0F, $AF, $0F, $0F,	$32, $80, $28, $80
	spAlgorithm	$04
	spFeedback	$02
	spDetune	$07, $03, $07, $03
	spMultiple	$01, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $0F, $0F, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $0F, $00
	spSustainLv	$00, $00, $0A, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$32, $28, $00, $00

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
	; $06, $06, $06, $05,	$05, $05, $02, $05
	; $4F, $4F, $2F, $3F,	$1E, $28, $1E, $80
	spAlgorithm	$00
	spFeedback	$05
	spDetune	$07, $03, $00, $00
	spMultiple	$01, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1D, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $06, $06, $05
	spSustainLv	$04, $02, $04, $03
	spDecayRt	$05, $02, $05, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $1E, $28, $00

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
