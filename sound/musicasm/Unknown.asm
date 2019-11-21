Unknown_Header:
	sHeaderInit						; Z80 offset is $DEAA
	sHeaderPatch	Unknown_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $00
	sHeaderDAC	Unknown_DAC
	sHeaderFM	Unknown_FM1, $00, $0D
	sHeaderFM	Unknown_FM2, $0C, $09
	sHeaderFM	Unknown_FM3, $00, $11
	sHeaderFM	Unknown_FM4, $00, $11
	sHeaderFM	Unknown_FM5, $00, $11
	sHeaderPSG	Unknown_PSG1, $00, $02, $00, v00
	sHeaderPSG	Unknown_PSG2, $00, $02, $00, v00
	sHeaderPSG	Unknown_PSG3, $00, $02, $00, v00

Unknown_FM1:
	sPatFM		$00
	ssModZ80	$11, $01, $09, $08

Unknown_Jump1:
	dc.b nAb4, $24, nRst, $18, nFs4, $0C, nAb4, $06
	dc.b nRst, nA4, $0C, nRst, nAb4, $14, nRst, $04
	dc.b nE4, $14, nRst, $04, nFs4, $24, nAb4, nRst
	dc.b $18, nFs4, $0C, nAb4, $06, nRst, nA4, $0C
	dc.b nRst, nAb4, $14, nRst, $04, nE4, $14, nRst
	dc.b $04, nFs4, $24, nG4, $30, sHold, $18, nB4
	dc.b nA4, $30, nFs4, nAb4, sHold, $30, sHold, $60
	dc.b nC4, $24, nRst, nE4, $0C, nD4, nRst, nA3
	dc.b $18, nFs3, nA3, $24, nRst, $30, nEb4, $12
	dc.b nE4, nFs4, $0C, $18, nG4, $0C, nE4, $30
	dc.b nRst, $0C, nCs4, $30, nEb4, nE4, $14, nRst
	dc.b $04, nE4, $14, nRst, $04, nE4, $12, nFs4
	dc.b nAb4, $0C, nB4, $30, sHold, $30, sHold, $60
	dc.b nA5, $24, nAb5, nE5, $18, sHold, $30, sHold
	dc.b $18, nAb5, nA5, $10, nRst, $08, nA5, $0C
	dc.b nAb5, $18, nA5, $0C, nAb5, nE5, sHold, $30
	dc.b sHold, $18, nFs5, $10, nRst, $08, nG5, $24
	dc.b nFs5, nE5, $18, nA5, nG5, nFs5, nE5, nAb5
	dc.b $30, sHold, $30, sHold, $60, nA5, $24, nAb5
	dc.b nE5, $18, nRst, $30, nRst, nA5, $10, nRst
	dc.b $08, nA5, $0C, nAb5, $14, nRst, $04, nA5
	dc.b $0C, nAb5, nE5, nRst, $30, nE5, $10, nRst
	dc.b $08, nFs5, $10, nRst, $08, nG5, $24, nFs5
	dc.b nE5, $18, nA5, nFs5, nA5, nD6, nE6, $30
	dc.b sHold, $30, sHold, $60, sHold, $60, sHold, $30
	dc.b nRst, $30
	sJump		Unknown_Jump1

Unknown_FM2:
	sPatFM		$01
	sPan		spCenter

Unknown_Jump2:
	dc.b nE2, $0C, nD2, nE2, nRst, $06, nE2, nRst
	dc.b nE2, nD2, $0C, nE2, $12, nE3, $04, nRst
	dc.b $02, nE2, $0C, nD2, nE2, nRst, $06, nE2
	dc.b nRst, nE2, nD2, $0C, nE2, $12, nE3, $04
	dc.b nRst, $02, nE2, $0C, nD2, nE2, nRst, $06
	dc.b nE2, nRst, nE2, nD2, $0C, nE2, $12, nE3
	dc.b $04, nRst, $02, nE2, $0C, nD2, nE2, nRst
	dc.b $06, nE2, $0C, nE3, $04, nRst, $02, nE2
	dc.b $0C, nD2, $06, nD3, $04, nRst, $02, nD2
	dc.b $0C, nC2, nB1, nC2, nRst, $06, nC2, nRst
	dc.b nC2, nB1, $0C, nC2, $12, nC3, $04, nRst
	dc.b $02, nD2, $0C, nCs2, nD2, nRst, $06, nD2
	dc.b $0C, nD3, $04, nRst, $02, nD2, $0C, nEb2
	dc.b $06, nEb3, nEb2, $0C, nE2, $0F, nRst, $03
	dc.b nE2, $0F, nRst, $03, nAb2, $0F, nRst, $03
	dc.b nA2, $12, nB2, $0C, nD3, nE2, $0F, nRst
	dc.b $03, nE2, $0F, nRst, $03, nAb2, $0F, nRst
	dc.b $03, nA2, $12, nB2, $0C, nD3, nC2, $12
	dc.b nB1, nC2, $18, nRst, $24, nD2, $12, nCs2
	dc.b nD2, $18, nRst, $24, nEb2, $12, nD2, nEb2
	dc.b $18, nRst, $24, nE2, $12, nEb2, nE2, $18
	dc.b nRst, $24, nA1, $12, nAb1, nA1, nAb1, nA1
	dc.b $06, nRst, nA1, $0C, $12, nAb1, nA1, nAb1
	dc.b nA1, $06, nRst, nA1, $0C, nB1, nB2, nAb1
	dc.b nAb2, nA1, nA2, nBb1, nBb2, nB1, nB2, nCs2
	dc.b nCs3, nD2, nD3, nEb2, nEb3, nE2, nD2, nE2
	dc.b nRst, $06, nE2, nRst, nE2, nD2, $0C, nE2
	dc.b $12, nE3, $04, nRst, $02, nE2, $0C, nD2
	dc.b nE2, nRst, $06, nE2, nRst, nE2, nD2, $0C
	dc.b nE2, $12, nE3, $04, nRst, $02, nE2, $0C
	dc.b nD2, nE2, nRst, $06, nE2, nRst, nE2, nD2
	dc.b $0C, nE2, $12, nE3, $04, nRst, $02, nE2
	dc.b $0C, nD2, nE2, nRst, $06, nE2, $0C, nE3
	dc.b $04, nRst, $02, nE2, $0C, nD2, $06, nD3
	dc.b $04, nRst, $02, nD2, $0C, nC2, nB1, nC2
	dc.b nRst, $06, nC2, nRst, nC2, nB1, $0C, nC2
	dc.b $12, nC3, $06, nD2, $0C, nCs2, nD2, nRst
	dc.b $06, nD2, $0C, nD3, $04, nRst, $02, nD2
	dc.b $0C, nEb2, $06, nEb3, nEb2, $0C, nE2, $0F
	dc.b nRst, $03, nE2, $0F, nRst, $03, nAb2, $0F
	dc.b nRst, $03, nA2, $12, nB2, $0C, nD3, nE2
	dc.b $0F, nRst, $03, nE2, $0F, nRst, $03, nAb2
	dc.b $0F, nRst, $03, nA2, $12, nB2, $0C, nD3
	dc.b nE2, nD2, nE2, nRst, $06, nE2, nRst, nE2
	dc.b nD2, $0C, nE2, $12, nE3, $04, nRst, $02
	dc.b nE2, $0C, nD2, nE2, nRst, $06, nE2, nRst
	dc.b nE2, nD2, $0C, nE2, $12, nE3, $04, nRst
	dc.b $02, nE2, $0C, nD2, nE2, nRst, $06, nE2
	dc.b nRst, nE2, nD2, $0C, nE2, $12, nE3, $04
	dc.b nRst, $02, nE2, $0C, nD2, nE2, nRst, $06
	dc.b nE2, $0C, nE3, $06, nE2, $0C, nD2, $06
	dc.b nD3, nD2, $0C, nC2, nB1, nC2, nRst, $06
	dc.b nC2, nRst, nC2, nB1, $0C, nC2, $12, nC3
	dc.b $06, nD2, $0C, nCs2, nD2, nRst, $06, nD2
	dc.b $04, nRst, $08, nD2, $06, nCs2, $0C, nD2
	dc.b $12, nD3, $06, nE2, $0F, nRst, $03, nE2
	dc.b $0F, nRst, $03, nAb2, $0F, nRst, $03, nA2
	dc.b $0F, nRst, $03, nB2, $0A, nRst, $02, nD3
	dc.b $0A, nRst, $02, nE2, $0F, nRst, $03, nE2
	dc.b $0F, nRst, $03, nAb2, $0F, nRst, $03, nA2
	dc.b $0F, nRst, $03, nB2, $0A, nRst, $02, nD3
	dc.b $0A, nRst, $02, nE2, $0F, nRst, $03, nE2
	dc.b $0F, nRst, $03, nAb2, $0F, nRst, $03, nA2
	dc.b $0F, nRst, $03, nB2, $0A, nRst, $02, nD3
	dc.b $0A, nRst, $02, nE2, $0F, nRst, $03, nE2
	dc.b $0F, nRst, $03, nAb2, $0F, nRst, $03, nA2
	dc.b $0F, nRst, $03, nB2, $0A, nRst, $02, nD3
	dc.b $0A, nRst, $02
	sJump		Unknown_Jump2

Unknown_FM3:
	sPatFM		$02

Unknown_Jump3:
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, $24
	sPatFM		$02
	dc.b nRst, $0C
	ssModZ80	$07, $01, $04, $03
	sPan		spCenter
	dc.b nE5, $30, nRst, nFs5, nRst, nFs5, nRst, nG5
	dc.b nRst, nA5, $60, sHold, $60, nB5, $60, nB2
	dc.b $04, nCs3, nEb3, nE3, nEb3, nE3, nFs3, nAb3
	dc.b nFs3, nAb3, nA3, nB3, nA3, nB3, nCs4, nEb4
	dc.b nB3, nCs4, nEb4, nE4, nEb4, nE4, nFs4, nAb4
	dc.b nB5, $1E, nRst, $06, nB5, $1E, nRst, $06
	dc.b nB5, $18, nA5, $24, nAb5, nE5, $18, nB5
	dc.b $1E, nRst, $06, nB5, $1E, nRst, $06, nB5
	dc.b $18, nA5, $10, nRst, $08, nA5, $0C, nAb5
	dc.b $18, nA5, $0C, nAb5, nE5, nE6, $24, nD6
	dc.b nC6, $12, nRst, $06, nC6, $18, nB5, nA5
	dc.b nB5, $14, nRst, $04, nB5, $30, sHold, $30
	dc.b nRst, $30, nRst, nB5, $1E, nRst, $06, nB5
	dc.b $1E, nRst, $06, nB5, $14, nRst, $04, nA5
	dc.b $24, nAb5, nE5, $18, nB5, $1E, nRst, $06
	dc.b nB5, $1E, nRst, $06, nB5, $14, nRst, $04
	dc.b nA5, $10, nRst, $08, nA5, $0C, nAb5, $18
	dc.b nA5, $0C, nAb5, nE5, nE6, $24, nD6, nC6
	dc.b $14, nRst, $04, nC6, $18, nB5, nA5, nD6
	dc.b nAb6, $30, sHold, $30, nRst, $30, nRst, nRst
	dc.b nRst, nRst, nRst
	sJump		Unknown_Jump3

Unknown_FM4:
	sPatFM		$03
	sPan		spLeft
	ssModZ80	$05, $01, $07, $03

Unknown_Jump4:
	dc.b nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E
	dc.b nA4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E
	dc.b nA4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nG4, $0F, nRst, $03, nG4, $04, nRst, $0E
	dc.b nFs4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nA4, $0F, nRst, $03, nA4, $04, nRst, $0E
	dc.b nG4, $0F, nRst, $03, nFs4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nB4, $0F, nRst, $03, nA4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b nB4, $0F, nRst, $03, nA4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	sPatFM		$02
	ssModZ80	$07, $01, $04, $02
	dc.b nC4, $30, nRst, nD4, nRst, nEb4, nRst, nE4
	dc.b nRst, nE4, $60, sHold, $60, nFs4, $60, sHold
	dc.b $60
	sPatFM		$03
	ssModZ80	$05, $01, $07, $03
	dc.b nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E
	dc.b nA4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E
	dc.b nA4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nG4, $0F, nRst, $03, nG4, $04, nRst, $0E
	dc.b nFs4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nA4, $0F, nRst, $03, nA4, $04, nRst, $0E
	dc.b nG4, $0F, nRst, $03, nFs4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nB4, $0F, nRst, $03, nA4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b nB4, $0F, nRst, $03, nA4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E
	dc.b nA4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nAb4, $0F, nRst, $03, nAb4, $04, nRst, $0E
	dc.b nA4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nG4, $0F, nRst, $03, nG4, $04, nRst, $0E
	dc.b nFs4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nA4, $0F, nRst, $03, nA4, $04, nRst, $0E
	dc.b nG4, $0F, nRst, $03, nFs4, $0F, nRst, $03
	dc.b nFs4, $0A, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nB4, $0F, nRst, $03, nA4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b nB4, $0F, nRst, $03, nA4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b nB4, $0F, nRst, $03, nA4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b nB4, $0F, nRst, $03, nA4, $04, nRst, $0E
	dc.b nAb4, $0F, nRst, $03, nAb4, $0F, nRst, $03
	dc.b nA4, $0A, nRst, $02, nAb4, $0A, nRst, $02
	sJump		Unknown_Jump4

Unknown_FM5:
	sPatFM		$03
	sPan		spRight
	ssModZ80	$05, $01, $07, $03

Unknown_Jump5:
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nC4, $0F, nRst, $03, nC4, $04, nRst, $0E
	dc.b nC4, $0F, nRst, $03, nC4, $0F, nRst, $03
	dc.b nC4, $0A, nRst, $02, nC4, $0A, nRst, $02
	dc.b nD4, $0F, nRst, $03, nD4, $04, nRst, $0E
	dc.b nD4, $0F, nRst, $03, nD4, $0F, nRst, $03
	dc.b nD4, $0A, nRst, $02, nD4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	sPatFM		$02
	ssModZ80	$07, $01, $04, $02
	dc.b nG3, $30, nRst, nA3, nRst, nA3, nRst, nB3
	dc.b nRst, nCs4, sHold, $30, nRst, $30, nRst, nEb4
	dc.b sHold, $30, nRst, $30, nRst
	sPatFM		$03
	ssModZ80	$05, $01, $07, $03
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $01, nRst, $0B
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nC4, $0F, nRst, $03, nC4, $04, nRst, $0E
	dc.b nC4, $0F, nRst, $03, nC4, $0F, nRst, $03
	dc.b nC4, $0A, nRst, $02, nC4, $0A, nRst, $02
	dc.b nD4, $0F, nRst, $03, nD4, $04, nRst, $0E
	dc.b nD4, $0F, nRst, $03, nD4, $0F, nRst, $03
	dc.b nD4, $0A, nRst, $02, nD4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nC4, $0F, nRst, $03, nC4, $04, nRst, $0E
	dc.b nC4, $0F, nRst, $03, nC4, $0F, nRst, $03
	dc.b nC4, $0A, nRst, $02, nC4, $0A, nRst, $02
	dc.b nD4, $0F, nRst, $03, nD4, $04, nRst, $0E
	dc.b nD4, $0F, nRst, $03, nD4, $0F, nRst, $03
	dc.b nD4, $0A, nRst, $02, nD4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	dc.b nE4, $0F, nRst, $03, nE4, $04, nRst, $0E
	dc.b nE4, $0F, nRst, $03, nE4, $0F, nRst, $03
	dc.b nE4, $0A, nRst, $02, nE4, $0A, nRst, $02
	sJump		Unknown_Jump5

Unknown_PSG1:
	sStop

Unknown_PSG2:
	sStop

Unknown_PSG3:
	sStop

Unknown_DAC:
	dc.b dKick, $18, dSnare, $12, $06, dKick, $18, dSnare
	dc.b dKick, dSnare, $12, $06, dKick, $18, dSnare, dKick
	dc.b dSnare, $12, $06, dKick, $18, dSnare, dKick, dSnare
	dc.b $12, $06, dKick, $18, dSnare, dKick, dSnare, $12
	dc.b $06, dKick, $18, dSnare, dKick, dSnare, $12, $06
	dc.b dKick, $18, dSnare, dKick, dSnare, $12, $06, dKick
	dc.b $18, dSnare, dKick, dSnare, $12, $06, dKick, dSnare
	dc.b dSnare, $0C, dSnare, dSnare, $06, dSnare, dKick, $18
	dc.b dKick, dKick, dSnare, dKick, dKick, dKick, dSnare, $12
	dc.b $06, dKick, $18, dKick, dKick, dSnare, dKick, dKick
	dc.b dKick, dSnare, $0C, $06, dSnare, dKick, $18, dSnare
	dc.b dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare
	dc.b dKick, dSnare, dKick, $0C, dSnare, dKick, $06, dSnare
	dc.b dSnare, $0C, dSnare, dSnare, dSnare, $06, dSnare, dSnare
	dc.b $0C, dKick, $18, dSnare, $12, $06, dKick, dSnare
	dc.b $12, $18, dKick, dSnare, $12, $06, dKick, dSnare
	dc.b $12, $18, dKick, dSnare, $12, $06, dKick, dSnare
	dc.b $12, $18, dKick, dSnare, $12, $06, dKick, dSnare
	dc.b $12, $0C, $06, dSnare, dKick, $18, dSnare, $12
	dc.b $06, dKick, dSnare, $12, $18, dKick, dSnare, $12
	dc.b $06, dKick, dSnare, $12, $18, dKick, dSnare, $12
	dc.b $06, dKick, dSnare, $12, $18, dKick, dSnare, $12
	dc.b $06, dKick, dSnare, $12, $0C, $06, dSnare, dKick
	dc.b $18, dSnare, $12, $06, dKick, dSnare, $12, dSnare
	dc.b dSnare, $06, dKick, $18, dSnare, $12, $06, dKick
	dc.b dSnare, $12, dSnare, dSnare, $06, dKick, $18, dSnare
	dc.b $12, $06, dKick, dSnare, $12, dSnare, dSnare, $06
	dc.b dKick, $18, dSnare, $12, $06, dKick, dSnare, $12
	dc.b dSnare, dSnare, $06, dKick, $18, dSnare, $12, $06
	dc.b dKick, dSnare, $12, dSnare, dSnare, $06, dKick, $18
	dc.b dSnare, $12, $06, dKick, dSnare, $12, dSnare, dSnare
	dc.b $06, dKick, $18, dSnare, $12, $06, dKick, dSnare
	dc.b $12, dSnare, dSnare, $06, dKick, $18, dSnare, $12
	dc.b $06, dKick, dSnare, $12, dSnare, dSnare, $06, dKick
	dc.b $18, dSnare, $12, $06, dKick, dSnare, $12, dSnare
	dc.b dSnare, $06, dKick, $18, dSnare, $12, $06, dKick
	dc.b dSnare, $12, dSnare, dSnare, $06
	sJump		Unknown_DAC

Unknown_Patches:

	; Patch $00
	; $3A
	; $11, $12, $51, $31,	$1E, $19, $14, $14
	; $08, $0A, $0A, $05,	$08, $08, $05, $05
	; $3F, $4F, $3F, $5F,	$19, $1E, $28, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$01, $05, $01, $03
	spMultiple	$01, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $14, $19, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $0A, $0A, $05
	spSustainLv	$03, $03, $04, $05
	spDecayRt	$08, $05, $08, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$19, $28, $1E, $00

	; Patch $01
	; $18
	; $37, $30, $30, $31,	$9E, $DC, $1C, $9C
	; $0D, $06, $01, $01,	$08, $0A, $03, $05
	; $BF, $BF, $3F, $2F,	$2C, $22, $14, $82
	spAlgorithm	$00
	spFeedback	$03
	spDetune	$03, $03, $03, $03
	spMultiple	$07, $00, $00, $01
	spRateScale	$02, $00, $03, $02
	spAttackRt	$1E, $1C, $1C, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $01, $06, $01
	spSustainLv	$0B, $03, $0B, $02
	spDecayRt	$08, $03, $0A, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2C, $14, $22, $02

	; Patch $02
	; $2C
	; $72, $78, $34, $34,	$1F, $12, $1F, $12
	; $00, $0A, $00, $0A,	$00, $00, $00, $00
	; $0F, $1F, $0F, $1F,	$16, $90, $17, $89
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$07, $03, $07, $03
	spMultiple	$02, $04, $08, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $12, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $0A, $0A
	spSustainLv	$00, $00, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$16, $17, $10, $09

	; Patch $03
	; $3A
	; $22, $07, $0E, $13,	$5F, $1F, $19, $19
	; $03, $03, $03, $03,	$02, $02, $02, $02
	; $1F, $1F, $1F, $1F,	$1E, $19, $2E, $84
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $00, $00, $01
	spMultiple	$02, $0E, $07, $03
	spRateScale	$01, $00, $00, $00
	spAttackRt	$1F, $19, $1F, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$03, $03, $03, $03
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$02, $02, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $2E, $19, $04
