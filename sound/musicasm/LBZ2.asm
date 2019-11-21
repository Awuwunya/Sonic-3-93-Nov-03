LBZ2_Header:
	sHeaderInit						; Z80 offset is $8000
	sHeaderPatch	LBZ2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $25
	sHeaderDAC	LBZ2_DAC
	sHeaderFM	LBZ2_FM1, $0C, $1F
	sHeaderFM	LBZ2_FM2, $0C, $1F
	sHeaderFM	LBZ2_FM3, $18, $16
	sHeaderFM	LBZ2_FM4, $18, $0E
	sHeaderFM	LBZ2_FM5, $0C, $1A
	sHeaderPSG	LBZ2_PSG1, $F4, $04, $00, v0C
	sHeaderPSG	LBZ2_PSG2, $F4, $04, $00, v0C
	sHeaderPSG	LBZ2_PSG3, $00, $04, $00, v0C
	dc.b $F2, $F2	; Unused

LBZ2_DAC:
	dc.b dKick, $18, dSnare, $12, dSnare, $06, dKick, dSnare
	dc.b $12, dSnare, $18, dKick, dSnare, dKick, dSnare, $0C
	dc.b dSnare, $06, dSnare, dKick, $18, dSnare, $12, dSnare
	dc.b $06, dKick, dSnare, $12, dSnare, $0C, dMidTom, $06
	dc.b dMidTom, dKick, $18, dSnare, $0C, dLowTom, $06, dLowTom
	dc.b dKick, $18, dSnare, $06, dSnare, dSnare, dSnare, dKick
	dc.b $18, dSnare, $12, dSnare, $06, dKick, dSnare, $12
	dc.b dSnare, $18, dKick, dSnare, dKick, dSnare, $0C, dSnare
	dc.b $06, dSnare, dKick, $18, dSnare, $12, dSnare, $06
	dc.b dKick, dSnare, $12, dSnare, $0C, dMidTom, $06, dMidTom
	dc.b dKick, $18, dSnare, $0C, dLowTom, $06, dLowTom, dKick
	dc.b $18, dSnare, $06, dSnare, dSnare, dSnare, dKick, $18
	dc.b dSnare, $12, dSnare, $06, dKick, dSnare, $12, dSnare
	dc.b $18, dKick, dSnare, dKick, dSnare, $0C, dSnare, $06
	dc.b dSnare, dKick, $18, dSnare, $12, dSnare, $06, dKick
	dc.b dSnare, $12, dSnare, $0C, dMidTom, $06, dMidTom, dKick
	dc.b $18, dSnare, $0C, dLowTom, $06, dLowTom, dKick, $18
	dc.b dSnare, $06, dSnare, dSnare, dSnare, dKick, $18, dSnare
	dc.b $12, dSnare, $06, dKick, dSnare, $12, dSnare, $18
	dc.b dKick, dSnare, dKick, dSnare, $0C, dSnare, $06, dSnare
	dc.b dKick, $18, dSnare, $12, dSnare, $06, dKick, dSnare
	dc.b $12, dSnare, $0C, dMidTom, $06, dMidTom, dKick, $18
	dc.b dSnare, $0C, dLowTom, $06, dLowTom, dKick, $18, dSnare
	dc.b $06, dSnare, dSnare, dSnare, dKick, $18, dSnare, $12
	dc.b dSnare, $06, dKick, dSnare, $12, dSnare, $18, dKick
	dc.b dSnare, dKick, dSnare, $0C, dSnare, $06, dSnare, dKick
	dc.b $18, dSnare, $12, dSnare, $06, dKick, dSnare, $12
	dc.b dSnare, $18, dKick, dSnare, dKick, dSnare, $06, dSnare
	dc.b dSnare, dSnare, dKick, $18, dSnare, $12, dSnare, $06
	dc.b dKick, dSnare, $12, dSnare, $18, dKick, dSnare, dKick
	dc.b dSnare, $0C, dSnare, $06, dSnare, dKick, $18, dSnare
	dc.b $12, dSnare, $06, dKick, dSnare, $12, dSnare, $18
	dc.b dKick, dSnare, dKick, dSnare, $06, dSnare, dSnare, dSnare
	dc.b dKick, $18, dSnare, $12, dSnare, $06, dKick, dSnare
	dc.b $12, dSnare, $18, dKick, dSnare, dKick, dSnare, $0C
	dc.b dSnare, $06, dSnare, dKick, $18, dSnare, $12, dSnare
	dc.b $06, dKick, dSnare, $12, dSnare, $18, dKick, dSnare
	dc.b dKick, dSnare, $0C, dSnare, $06, dSnare, dKick, $18
	dc.b dSnare, $12, dSnare, $06, dKick, dSnare, $12, dSnare
	dc.b $18, dKick, dSnare, dKick, dSnare, $0C, dSnare, $06
	dc.b dSnare, dSnare, $0C, dSnare, dSnare, dKick, dSnare, dSnare
	dc.b dSnare, $18, dKick, dSnare, $12, dSnare, $06, dKick
	dc.b dSnare, $12, dSnare, $06, dSnare, dSnare, dSnare, dKick
	dc.b $18, dSnare, $12, dSnare, $06, dKick, dSnare, $12
	dc.b dSnare, $18, dKick, dSnare, dKick, dSnare, $0C, dSnare
	dc.b $06, dSnare, dKick, $18, dSnare, $12, dSnare, $06
	dc.b dKick, dSnare, $12, dSnare, $18, dKick, dSnare, dKick
	dc.b $0C, dSnare, $06, dSnare, dSnare, dSnare, dSnare, dSnare
	dc.b $08
	sJump		LBZ2_DAC
	dc.b $F2	; Unused

LBZ2_FM1:
	sPatFM		$04
	ssDetune	$01
	ssModZ80	$0A, $01, $00, $06
	sPan		spRight

LBZ2_Jump1:
	dc.b nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nF4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b nA4, $10, nRst, $02, nF4, $04, nRst, $08
	dc.b nD4, $04, nRst, $08, nE3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nE4, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nE4, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nF3, $04, nRst, $08, nA4, $10, nRst, $02
	dc.b nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nF4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b nA4, $10, nRst, $02, nF4, $04, nRst, $08
	dc.b nD4, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b nD4, $04, nRst, $08, nB4, $10, nRst, $02
	dc.b nG4, $04, nRst, $14, nD3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $08, nG4, $10, nRst, $02
	dc.b nEb4, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nEb4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nEb3, $04, nRst, $08
	dc.b nG4, $10, nRst, $02, nEb4, $04, nRst, $08
	dc.b nC4, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $08, nG4, $10, nRst, $02
	dc.b nEb4, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nBb2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nF4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nF4, $04, nRst, $02, nC4, $04, nRst, $08
	dc.b nA4, $10, nRst, $02, nF4, $04, nRst, $14
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nBb3, $04, nRst, $14
	dc.b nF4, $0A, nRst, $02, nD4, $10, nRst, $02
	dc.b nF3, $16, nRst, $02, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $14, nG4, $0A, nRst, $02
	dc.b nEb4, $10, nRst, $02, nBb3, $16, nRst, $02
	dc.b nA3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nA3, $04, nRst, $14
	dc.b nF4, $0A, nRst, $02, nD4, $10, nRst, $02
	dc.b nF3, $0A, nRst, $02, nG3, $10, nRst, $02
	dc.b nG3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b nG3, $04, nRst, $08, nG2, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nE4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nBb3, $04, nRst, $14
	dc.b nF4, $0A, nRst, $02, nD4, $10, nRst, $02
	dc.b nF3, $16, nRst, $02, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $14, nF4, $0A, nRst, $02
	dc.b nD4, $10, nRst, $02, nF3, $0A, nRst, $02
	dc.b nBb3, $0A, nRst, $02, nF3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nF3, $04, nRst, $14, nC4, $0A, nRst, $02
	dc.b nG3, $10, nRst, $02, nE3, $0A, nRst, $02
	dc.b nC4, $0A, nRst, $02, nB3, $04, nRst, $02
	dc.b nB3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nB3, $04, nRst, $08, nB3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b nD3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $0E, nBb4, $10, nRst, $02
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $0E
	dc.b nBb4, $10, nRst, $02, nBb4, $04, nRst, $08
	dc.b nBb4, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $0E, nBb4, $10, nRst, $02
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nF3, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nF3, $04, nRst, $0E
	dc.b nBb4, $10, nRst, $02, nBb4, $04, nRst, $08
	dc.b nBb4, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $0E, nF4, $10, nRst, $02
	dc.b nAb4, $04, nRst, $08, nAb4, $04, nRst, $08
	dc.b nAb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nEb3, $04, nRst, $0E
	dc.b nFs4, $10, nRst, $02, nB4, $04, nRst, $08
	dc.b nB4, $04, nRst, $08, nEb4, $06, nEb4, nD4
	dc.b nRst, nBb3, nBb3, nF4, nF4, nE4, nRst, nC4
	dc.b nC4, nG4, nG4, nFs4, nRst, nD4, nD4, nAb4
	dc.b nAb4, nG4, nRst, nEb4, nEb4, nFs4, $12, nRst
	dc.b $06, nF4, $12, nRst, $06, nBb3, $04, nRst
	dc.b $02, nBb3, $04, nRst, $02, nG3, $04, nRst
	dc.b $08, nBb3, $04, nRst, $02, nBb3, $04, nRst
	dc.b $02, nG3, $04, nRst, $0E, nBb4, $10, nRst
	dc.b $02, nBb4, $04, nRst, $08, nBb4, $04, nRst
	dc.b $08, nC4, $04, nRst, $02, nC4, $04, nRst
	dc.b $02, nAb3, $04, nRst, $08, nC4, $04, nRst
	dc.b $02, nC4, $04, nRst, $02, nAb3, $04, nRst
	dc.b $0E, nC5, $10, nRst, $02, nC5, $04, nRst
	dc.b $08, nC5, $04, nRst, $08, nBb3, $04, nRst
	dc.b $02, nBb3, $04, nRst, $02, nG3, $04, nRst
	dc.b $08, nBb3, $04, nRst, $02, nBb3, $04, nRst
	dc.b $02, nG3, $04, nRst, $0E, nBb4, $10, nRst
	dc.b $02, nBb4, $04, nRst, $08, nBb4, $04, nRst
	dc.b $08, nC4, $04, nRst, $02, nC4, $04, nRst
	dc.b $02, nAb3, $04, nRst, $08, nC4, $04, nRst
	dc.b $02, nC4, $04, nRst, $02, nAb3, $04, nRst
	dc.b $0E, nC5, $10, nRst, $02, nC5, $04, nRst
	dc.b $08, nC5, $04, nRst, $0A
	sJump		LBZ2_Jump1
	dc.b $F2	; Unused

LBZ2_FM2:
	sPatFM		$04
	ssDetune	$FF
	ssModZ80	$0A, $01, $00, $06
	sPan		spLeft

LBZ2_Jump2:
	dc.b nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nF4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b nF4, $10, nRst, $02, nD4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nE3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nE4, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nE4, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nF3, $04, nRst, $08, nF4, $10, nRst, $02
	dc.b nD4, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nE4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nF4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b nF4, $10, nRst, $02, nD4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b nD4, $04, nRst, $08, nG4, $10, nRst, $02
	dc.b nD4, $04, nRst, $14, nD3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $08, nEb4, $10, nRst, $02
	dc.b nC4, $04, nRst, $08, nAb3, $04, nRst, $08
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nEb4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nEb3, $04, nRst, $08
	dc.b nEb4, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nAb3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $08, nEb4, $10, nRst, $02
	dc.b nC4, $04, nRst, $08, nAb3, $04, nRst, $08
	dc.b nBb2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nF4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nF4, $04, nRst, $02, nC4, $04, nRst, $08
	dc.b nF4, $10, nRst, $02, nC4, $04, nRst, $14
	dc.b nF3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $14
	dc.b nD4, $0A, nRst, $02, nF3, $10, nRst, $02
	dc.b nD3, $16, nRst, $02, nG3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $14, nEb4, $0A, nRst, $02
	dc.b nBb3, $10, nRst, $02, nG3, $16, nRst, $02
	dc.b nF3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $14
	dc.b nD4, $0A, nRst, $02, nF3, $10, nRst, $02
	dc.b nD3, $0A, nRst, $02, nE3, $10, nRst, $02
	dc.b nE3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nE3, $04, nRst, $08, nE2, $04, nRst, $02
	dc.b nG2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nE3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nE3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nE4, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $14
	dc.b nD4, $0A, nRst, $02, nF3, $10, nRst, $02
	dc.b nD3, $16, nRst, $02, nF3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nF3, $04, nRst, $14, nD4, $0A, nRst, $02
	dc.b nF3, $10, nRst, $02, nD3, $0A, nRst, $02
	dc.b nG3, $0A, nRst, $02, nC3, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nA2, $04, nRst, $02
	dc.b nC3, $04, nRst, $14, nE3, $0A, nRst, $02
	dc.b nC3, $10, nRst, $02, nG2, $0A, nRst, $02
	dc.b nE3, $0A, nRst, $02, nG3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nG3, $04, nRst, $08, nG3, $04, nRst, $02
	dc.b nB3, $04, nRst, $02, nB3, $04, nRst, $08
	dc.b nB2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nEb3, $04, nRst, $08
	dc.b nG3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $0E, nG4, $10, nRst, $02
	dc.b nG4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b nG3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $08, nG3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nEb3, $04, nRst, $0E
	dc.b nG4, $10, nRst, $02, nG4, $04, nRst, $08
	dc.b nG4, $04, nRst, $08, nG3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nEb3, $04, nRst, $08
	dc.b nG3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $0E, nG4, $10, nRst, $02
	dc.b nG4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b nF3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nD3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nD3, $04, nRst, $0E
	dc.b nF4, $10, nRst, $02, nF4, $04, nRst, $08
	dc.b nF4, $04, nRst, $08, nG3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nEb3, $04, nRst, $08
	dc.b nG3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $0E, nCs4, $10, nRst, $02
	dc.b nF4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b nEb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nC3, $04, nRst, $08, nEb3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nC3, $04, nRst, $0E
	dc.b nEb4, $10, nRst, $02, nFs4, $04, nRst, $08
	dc.b nFs4, $04, nRst, $08, nBb3, $06, nBb3, nA3
	dc.b nRst, nF3, nF3, nC4, nC4, nB3, nRst, nG3
	dc.b nG3, nD4, nD4, nCs4, nRst, nA3, nA3, nEb4
	dc.b nEb4, nD4, nRst, nBb3, nBb3, nEb4, $12, nRst
	dc.b $06, nD4, $12, nRst, $06, nG3, $04, nRst
	dc.b $02, nG3, $04, nRst, $02, nEb3, $04, nRst
	dc.b $08, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b $02, nEb3, $04, nRst, $0E, nG4, $10, nRst
	dc.b $02, nG4, $04, nRst, $08, nG4, $04, nRst
	dc.b $08, nAb3, $04, nRst, $02, nAb3, $04, nRst
	dc.b $02, nEb3, $04, nRst, $08, nAb3, $04, nRst
	dc.b $02, nAb3, $04, nRst, $02, nEb3, $04, nRst
	dc.b $0E, nAb4, $10, nRst, $02, nAb4, $04, nRst
	dc.b $08, nAb4, $04, nRst, $08, nG3, $04, nRst
	dc.b $02, nG3, $04, nRst, $02, nEb3, $04, nRst
	dc.b $08, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b $02, nEb3, $04, nRst, $0E, nG4, $10, nRst
	dc.b $02, nG4, $04, nRst, $08, nG4, $04, nRst
	dc.b $08, nAb3, $04, nRst, $02, nAb3, $04, nRst
	dc.b $02, nEb3, $04, nRst, $08, nAb3, $04, nRst
	dc.b $02, nAb3, $04, nRst, $02, nEb3, $04, nRst
	dc.b $0E, nAb4, $10, nRst, $02, nAb4, $04, nRst
	dc.b $08, nAb4, $04, nRst, $0A
	sJump		LBZ2_Jump2
	dc.b $F2	; Unused

LBZ2_FM3:
	sPatFM		$03
	ssDetune	$FE
	ssModZ80	$0F, $01, $06, $06
	dc.b nC3, $16, nRst, $02, nG3, $10, nRst, $02
	dc.b nC4, $04, nRst, $08, nG3, $10, nRst, $02
	dc.b nC4, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b nBb3, $16, nRst, $02, nA3, $10, nRst, $02
	dc.b nF3, $04, nRst, $26, nA3, $0A, nRst, $02
	dc.b nG3, $04, nRst, $14, nG3, $10, nRst, $02
	dc.b nC3, $04, nRst, $7A, nBb2, $0A, nRst, $02
	dc.b nD3, $0A, nRst, $02, nC3, $16, nRst, $02
	dc.b nG3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nG3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nG3, $04, nRst, $08, nBb3, $16, nRst, $02
	dc.b nA3, $10, nRst, $02, nF3, $04, nRst, $26
	dc.b nA3, $0A, nRst, $02, nG3, $52, nRst, $02
	dc.b nG3, $06, nC3, nD3, $48, nRst, $0C, nG2
	dc.b $06, nA2, nBb2, $16, nRst, $02, nF3, $10
	dc.b nRst, $02, nBb3, $04, nRst, $08, nF3, $10
	dc.b nRst, $02, nBb3, $04, nRst, $08, nF3, $04
	dc.b nRst, $08, nAb3, $16, nRst, $02, nG3, $10
	dc.b nRst, $02, nEb3, $04, nRst, $26, nG3, $0A
	dc.b nRst, $02, nF3, $04, nRst, $14, nF3, $10
	dc.b nRst, $02, nBb2, $04, nRst, $7A, nG2, $0A
	dc.b nRst, $02, nAb2, $0A, nRst, $02, nBb2, $16
	dc.b nRst, $02, nF3, $10, nRst, $02, nBb3, $04
	dc.b nRst, $08, nF3, $10, nRst, $02, nBb3, $04
	dc.b nRst, $08, nF3, $04, nRst, $08, nAb3, $16
	dc.b nRst, $02, nG3, $10, nRst, $02, nEb3, $04
	dc.b nRst, $26, nG3, $0A, nRst, $02, nF3, $52
	dc.b nRst, $02, nF3, $06, nBb2, nC3, $52, nRst
	dc.b $0E
	sPatFM		$03
	ssDetune	$FE
	ssModZ80	$0F, $01, $06, $06
	dc.b nF4, $16, nRst, $02, nBb4, $10, nRst, $02
	dc.b nF4, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b nF4, $0A, nRst, $02, nA4, $0A, nRst, $02
	dc.b nF4, $0A, nRst, $02, nBb4, $16, nRst, $02
	dc.b nA4, $10, nRst, $02, nG4, $04, nRst, $08
	dc.b nF4, $10, nRst, $02, nF4, $0A, nRst, $02
	dc.b nG4, $0A, nRst, $02, nA4, $04, nRst, $08
	dc.b nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b nF4, $14, nRst, $04, nD4, nRst, $08, nF4
	dc.b $04, nRst, $08, nG4, $64, nRst, $08, nF4
	dc.b $16, nRst, $02, nBb4, $10, nRst, $02, nF4
	dc.b $04, nRst, $08, nF4, $04, nRst, $02, nG4
	dc.b $0A, nRst, $02, nA4, $0A, nRst, $02, nF4
	dc.b $0A, nRst, $02, nD5, $16, nRst, $02, nC5
	dc.b $10, nRst, $02, nBb4, $04, nRst, $08, nF4
	dc.b $04, nRst, $02, nG4, $04, nRst, $02, nA4
	dc.b $04, nRst, $02, nBb4, $0A, nRst, $02, nC5
	dc.b $0A, nRst, $02, nA4, $22, nRst, $02, nG4
	dc.b $08, nRst, $04, nG4, $64, nRst, $02
	sPatFM		$03
	ssDetune	$FE
	ssModZ80	$0F, $01, $06, $06
	dc.b nD3, $06, nE3, nF3, nG3, nA3, nB3, nD4
	dc.b nEb4, $0A, nRst, $0E, nEb4, $10, nRst, $02
	dc.b nEb4, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02
	dc.b nEb4, $0A, nRst, $02, nEb4, $08, nRst, $04
	dc.b nF4, $08, nRst, $04, nG4, $08, nRst, $04
	dc.b nEb4, $20, nRst, $04, nC4, $14, nRst, $04
	dc.b nEb4, $0A, nRst, $0E, nEb4, $10, nRst, $02
	dc.b nEb4, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02
	dc.b nF4, $0A, nRst, $02, nG4, $08, nRst, $04
	dc.b nF4, $08, nRst, $04, nD4, $08, nRst, $04
	dc.b nBb3, $38, nRst, $04, nEb4, $0A, nRst, $0E
	dc.b nEb4, $10, nRst, $02, nEb4, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb4, $0A, nRst, $02
	dc.b nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02
	dc.b nEb4, $08, nRst, $04, nF4, $08, nRst, $04
	dc.b nG4, $08, nRst, $04, nEb4, $20, nRst, $1C
	dc.b nEb4, $06, nEb4, nD4, $08, nRst, $10, nF4
	dc.b $06, nF4, nE4, $08, nRst, $10, nG4, $06
	dc.b nG4, nFs4, $08, nRst, $10, nAb4, $06, nAb4
	dc.b nG4, $08, nRst, $10, nB4, $14, nRst, $04
	dc.b nBb4, $14, nRst, $04, nEb4, $7F, sHold, $19
	dc.b nRst, $04, nEb4, nRst, $02, nF4, $04, nRst
	dc.b $02, nG4, $04, nRst, $02, nF4, $04, nRst
	dc.b $02, nEb4, $04, nRst, $02, nD4, $04, nRst
	dc.b $02, nEb4, $20, nRst, $04, nBb3, $08, nRst
	dc.b $04, nBb3, $2C, nRst, $04, nC4, $08, nRst
	dc.b $04, nC4, $08, nRst, $04, nD4, $08, nRst
	dc.b $04, nEb4, $08, nRst, $10, nF4, $18, nRst
	dc.b $0E
	sJump		LBZ2_FM3
	dc.b $F2	; Unused

LBZ2_FM4:
	sPatFM		$15

LBZ2_Jump3:
	dc.b nA0, $0A, nRst, $0E, nA0, $0A, nRst, $14
	dc.b nA0, $04, nRst, $02, nA0, $0A, nRst, $02
	dc.b nA0, $04, nRst, $14, nBb0, $0A, nRst, $0E
	dc.b nBb0, $0A, nRst, $14, nBb0, $04, nRst, $02
	dc.b nBb0, $0A, nRst, $02, nBb0, $04, nRst, $14
	dc.b nA0, $0A, nRst, $0E, nA0, $0A, nRst, $14
	dc.b nA0, $04, nRst, $02, nA0, $0A, nRst, $02
	dc.b nA0, $04, nRst, $14, nBb0, $0A, nRst, $0E
	dc.b nBb0, $0A, nRst, $14, nBb0, $04, nRst, $02
	dc.b nBb0, $0A, nRst, $02, nBb0, $04, nRst, $14
	dc.b nA0, $0A, nRst, $0E, nA0, $0A, nRst, $14
	dc.b nA0, $04, nRst, $02, nA0, $0A, nRst, $02
	dc.b nA0, $04, nRst, $14, nBb0, $0A, nRst, $0E
	dc.b nBb0, $0A, nRst, $14, nBb0, $04, nRst, $02
	dc.b nBb0, $0A, nRst, $02, nBb0, $04, nRst, $14
	dc.b nG0, $0A, nRst, $0E, nG0, $0A, nRst, $14
	dc.b nG0, $04, nRst, $02, nG0, $0A, nRst, $02
	dc.b nG0, $04, nRst, $14, nG0, $0A, nRst, $0E
	dc.b nG0, $0A, nRst, $14, nG0, $04, nRst, $02
	dc.b nG0, $0A, nRst, $02, nG0, $04, nRst, $14
	dc.b nG0, $0A, nRst, $0E, nG0, $0A, nRst, $14
	dc.b nG0, $04, nRst, $02, nG0, $0A, nRst, $02
	dc.b nG0, $04, nRst, $14, nAb0, $0A, nRst, $0E
	dc.b nAb0, $0A, nRst, $14, nAb0, $04, nRst, $02
	dc.b nAb0, $0A, nRst, $02, nAb0, $04, nRst, $14
	dc.b nG0, $0A, nRst, $0E, nG0, $0A, nRst, $14
	dc.b nG0, $04, nRst, $02, nG0, $0A, nRst, $02
	dc.b nG0, $04, nRst, $14, nAb0, $0A, nRst, $0E
	dc.b nAb0, $0A, nRst, $14, nAb0, $04, nRst, $02
	dc.b nAb0, $0A, nRst, $02, nAb0, $04, nRst, $14
	dc.b nG0, $0A, nRst, $0E, nG0, $0A, nRst, $14
	dc.b nG0, $04, nRst, $02, nG0, $0A, nRst, $02
	dc.b nG0, $04, nRst, $14, nAb0, $0A, nRst, $0E
	dc.b nAb0, $0A, nRst, $14, nAb0, $04, nRst, $02
	dc.b nAb0, $0A, nRst, $02, nAb0, $04, nRst, $14
	dc.b nF0, $0A, nRst, $0E, nF0, $0A, nRst, $14
	dc.b nF0, $04, nRst, $02, nF0, $0A, nRst, $02
	dc.b nF0, $04, nRst, $14, nF0, $0A, nRst, $0E
	dc.b nF0, $0A, nRst, $14, nF0, $04, nRst, $02
	dc.b nF0, $0A, nRst, $02, nF0, $04, nRst, $14
	dc.b nD0, $0A, nRst, $0E, nD0, $0A, nRst, $14
	dc.b nD0, $04, nRst, $02, nD0, $0A, nRst, $02
	dc.b nD0, $04, nRst, $14, nEb0, $0A, nRst, $0E
	dc.b nEb0, $0A, nRst, $14, nEb0, $04, nRst, $02
	dc.b nEb0, $0A, nRst, $02, nEb0, $04, nRst, $14
	dc.b nBb0, $0A, nRst, $0E, nBb0, $0A, nRst, $14
	dc.b nBb0, $04, nRst, $02, nBb0, $0A, nRst, $02
	dc.b nBb0, $04, nRst, $14, nC1, $0A, nRst, $0E
	dc.b nC1, $0A, nRst, $14, nC1, $04, nRst, $02
	dc.b nC1, $0A, nRst, $02, nC1, $04, nRst, $14
	dc.b nD0, $0A, nRst, $0E, nD0, $0A, nRst, $14
	dc.b nD0, $04, nRst, $02, nD0, $0A, nRst, $02
	dc.b nD0, $04, nRst, $14, nBb0, $0A, nRst, $0E
	dc.b nBb0, $0A, nRst, $14, nBb0, $04, nRst, $02
	dc.b nBb0, $0A, nRst, $02, nBb0, $04, nRst, $14
	dc.b nC1, $0A, nRst, $0E, nC1, $0A, nRst, $14
	dc.b nC1, $04, nRst, $02, nC1, $0A, nRst, $02
	dc.b nC1, $04, nRst, $14, nC1, $0A, nRst, $0E
	dc.b nC1, $0A, nRst, $14, nC1, $04, nRst, $02
	dc.b nC1, $0A, nRst, $02, nC1, $04, nRst, $14
	dc.b nEb0, $0A, nRst, $0E, nEb0, $0A, nRst, $14
	dc.b nEb0, $04, nRst, $02, nEb0, $0A, nRst, $02
	dc.b nEb0, $04, nRst, $14, nAb0, $0A, nRst, $0E
	dc.b nAb0, $0A, nRst, $14, nAb0, $04, nRst, $02
	dc.b nAb0, $0A, nRst, $02, nAb0, $04, nRst, $14
	dc.b nEb0, $0A, nRst, $0E, nEb0, $0A, nRst, $14
	dc.b nEb0, $04, nRst, $02, nEb0, $0A, nRst, $02
	dc.b nEb0, $04, nRst, $14, nBb0, $0A, nRst, $0E
	dc.b nBb0, $0A, nRst, $14, nBb0, $04, nRst, $02
	dc.b nBb0, $0A, nRst, $02, nBb0, $04, nRst, $14
	dc.b nEb1, $0A, nRst, $0E, nEb1, $0A, nRst, $14
	dc.b nCs1, $04, nRst, $02, nCs1, $0A, nRst, $02
	dc.b nCs1, $04, nRst, $14, nC1, $0A, nRst, $0E
	dc.b nC1, $0A, nRst, $14, nB0, $04, nRst, $02
	dc.b nB0, $0A, nRst, $02, nB0, $04, nRst, $14
	dc.b nBb0, $08, nRst, $04, nA0, $14, nRst, $04
	dc.b nC1, $08, nRst, $04, nB0, $14, nRst, $04
	dc.b nEb1, $08, nRst, $04, nD1, $14, nRst, $04
	dc.b nF1, $08, nRst, $04, nE1, $14, nRst, $04
	dc.b nFs1, $14, nRst, $04, nF1, $14, nRst, $04
	dc.b nEb0, $0A, nRst, $0E, nEb0, $0A, nRst, $14
	dc.b nEb0, $04, nRst, $02, nEb0, $0A, nRst, $02
	dc.b nEb0, $04, nRst, $14, nEb0, $0A, nRst, $0E
	dc.b nEb0, $0A, nRst, $14, nEb0, $04, nRst, $02
	dc.b nEb0, $0A, nRst, $02, nEb0, $04, nRst, $14
	dc.b nEb0, $0A, nRst, $0E, nEb0, $0A, nRst, $14
	dc.b nEb0, $04, nRst, $02, nEb0, $0A, nRst, $02
	dc.b nEb0, $04, nRst, $14, nEb0, $0A, nRst, $0E
	dc.b nEb0, $0A, nRst, $14, nEb0, $04, nRst, $02
	dc.b nEb0, $0A, nRst, $02, nEb0, $0A, nRst, $02
	dc.b nBb0, $0A, nRst, $04
	sJump		LBZ2_Jump3
	dc.b $F2	; Unused

LBZ2_FM5:
	dc.b nRst, $02
	saVolFM		$08

LBZ2_Jump4:
	sPatFM		$03
	ssDetune	$02
	ssModZ80	$0F, $01, $06, $06
	dc.b nC3, $16, nRst, $02, nG3, $10, nRst, $02
	dc.b nC4, $04, nRst, $08, nG3, $10, nRst, $02
	dc.b nC4, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b nBb3, $16, nRst, $02, nA3, $10, nRst, $02
	dc.b nF3, $04, nRst, $26, nA3, $0A, nRst, $02
	dc.b nG3, $04, nRst, $14, nG3, $10, nRst, $02
	dc.b nC3, $04, nRst, $7A, nBb2, $0A, nRst, $02
	dc.b nD3, $0A, nRst, $02, nC3, $16, nRst, $02
	dc.b nG3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nG3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nG3, $04, nRst, $08, nBb3, $16, nRst, $02
	dc.b nA3, $10, nRst, $02, nF3, $04, nRst, $26
	dc.b nA3, $0A, nRst, $02, nG3, $52, nRst, $02
	dc.b nG3, $06, nC3, nD3, $48, nRst, $0C, nG2
	dc.b $06, nA2, nBb2, $16, nRst, $02, nF3, $10
	dc.b nRst, $02, nBb3, $04, nRst, $08, nF3, $10
	dc.b nRst, $02, nBb3, $04, nRst, $08, nF3, $04
	dc.b nRst, $08, nAb3, $16, nRst, $02, nG3, $10
	dc.b nRst, $02, nEb3, $04, nRst, $26, nG3, $0A
	dc.b nRst, $02, nF3, $04, nRst, $14, nF3, $10
	dc.b nRst, $02, nBb2, $04, nRst, $7A, nG2, $0A
	dc.b nRst, $02, nAb2, $0A, nRst, $02, nBb2, $16
	dc.b nRst, $02, nF3, $10, nRst, $02, nBb3, $04
	dc.b nRst, $08, nF3, $10, nRst, $02, nBb3, $04
	dc.b nRst, $08, nF3, $04, nRst, $08, nAb3, $16
	dc.b nRst, $02, nG3, $10, nRst, $02, nEb3, $04
	dc.b nRst, $26, nG3, $0A, nRst, $02, nF3, $52
	dc.b nRst, $02, nF3, $06, nBb2, nC3, $52, nRst
	dc.b $0E
	sPatFM		$03
	ssDetune	$02
	ssModZ80	$0F, $01, $06, $06
	dc.b nF4, $16, nRst, $02, nBb4, $10, nRst, $02
	dc.b nF4, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b nF4, $0A, nRst, $02, nA4, $0A, nRst, $02
	dc.b nF4, $0A, nRst, $02, nBb4, $16, nRst, $02
	dc.b nA4, $10, nRst, $02, nG4, $04, nRst, $08
	dc.b nF4, $10, nRst, $02, nF4, $0A, nRst, $02
	dc.b nG4, $0A, nRst, $02, nA4, $04, nRst, $08
	dc.b nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b nF4, $14, nRst, $04, nD4, nRst, $08, nF4
	dc.b $04, nRst, $08, nG4, $64, nRst, $08, nF4
	dc.b $16, nRst, $02, nBb4, $10, nRst, $02, nF4
	dc.b $04, nRst, $08, nF4, $04, nRst, $02, nG4
	dc.b $0A, nRst, $02, nA4, $0A, nRst, $02, nF4
	dc.b $0A, nRst, $02, nD5, $16, nRst, $02, nC5
	dc.b $10, nRst, $02, nBb4, $04, nRst, $08, nF4
	dc.b $04, nRst, $02, nG4, $04, nRst, $02, nA4
	dc.b $04, nRst, $02, nBb4, $0A, nRst, $02, nC5
	dc.b $0A, nRst, $02, nA4, $22, nRst, $02, nG4
	dc.b $08, nRst, $04, nG4, $64, nRst, $02
	sPatFM		$03
	ssDetune	$02
	ssModZ80	$0F, $01, $06, $06
	dc.b nD3, $06, nE3, nF3, nG3, nA3, nB3, nD4
	dc.b nEb4, $0A, nRst, $0E, nEb4, $10, nRst, $02
	dc.b nEb4, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02
	dc.b nEb4, $0A, nRst, $02, nEb4, $08, nRst, $04
	dc.b nF4, $08, nRst, $04, nG4, $08, nRst, $04
	dc.b nEb4, $20, nRst, $04, nC4, $14, nRst, $04
	dc.b nEb4, $0A, nRst, $0E, nEb4, $10, nRst, $02
	dc.b nEb4, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02
	dc.b nF4, $0A, nRst, $02, nG4, $08, nRst, $04
	dc.b nF4, $08, nRst, $04, nD4, $08, nRst, $04
	dc.b nBb3, $38, nRst, $04, nEb4, $0A, nRst, $0E
	dc.b nEb4, $10, nRst, $02, nEb4, $04, nRst, $08
	dc.b nEb4, $04, nRst, $02, nEb4, $0A, nRst, $02
	dc.b nEb4, $0A, nRst, $02, nEb4, $0A, nRst, $02
	dc.b nEb4, $08, nRst, $04, nF4, $08, nRst, $04
	dc.b nG4, $08, nRst, $04, nEb4, $20, nRst, $1C
	dc.b nEb4, $06, nEb4, nD4, $08, nRst, $10, nF4
	dc.b $06, nF4, nE4, $08, nRst, $10, nG4, $06
	dc.b nG4, nFs4, $08, nRst, $10, nAb4, $06, nAb4
	dc.b nG4, $08, nRst, $10, nB4, $14, nRst, $04
	dc.b nBb4, $14, nRst, $04, nEb4, $7F, sHold, $19
	dc.b nRst, $04, nEb4, nRst, $02, nF4, $04, nRst
	dc.b $02, nG4, $04, nRst, $02, nF4, $04, nRst
	dc.b $02, nEb4, $04, nRst, $02, nD4, $04, nRst
	dc.b $02, nEb4, $20, nRst, $04, nBb3, $08, nRst
	dc.b $04, nBb3, $2C, nRst, $04, nC4, $08, nRst
	dc.b $04, nC4, $08, nRst, $04, nD4, $08, nRst
	dc.b $04, nEb4, $08, nRst, $10, nF4, $18, nRst
	dc.b $0E
	sJump		LBZ2_Jump4
	dc.b $F2	; Unused

LBZ2_PSG1:
	dc.b nRst, $0C, nE4, $02, nRst, $04, nE4, $02
	dc.b nRst, $10, nE4, $02, nRst, $04, nE4, $02
	dc.b nRst, $0A, nE4, $02, nRst, $0A, nE4, $02
	dc.b nRst, $04, nE4, $02, nRst, $0A, nE4, $02
	dc.b nRst, $16, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $10, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $0A, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $04, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $16, nE4, $02, nRst, $04, nE4, $02
	dc.b nRst, $10, nE4, $02, nRst, $04, nE4, $02
	dc.b nRst, $0A, nE4, $02, nRst, $0A, nE4, $02
	dc.b nRst, $04, nE4, $02, nRst, $0A, nE4, $02
	dc.b nRst, $16, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $10, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $0A, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $04, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $16, nE4, $02, nRst, $04, nE4, $02
	dc.b nRst, $10, nE4, $02, nRst, $04, nE4, $02
	dc.b nRst, $0A, nE4, $02, nRst, $0A, nE4, $02
	dc.b nRst, $04, nE4, $02, nRst, $0A, nE4, $02
	dc.b nRst, $16, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $10, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $0A, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $04, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $16, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $10, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $0A, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $04, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $16, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $10, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $0A, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $04, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $16, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $10, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $0A, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $04, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $16, nC4, $02, nRst, $04, nC4, $02
	dc.b nRst, $10, nC4, $02, nRst, $04, nC4, $02
	dc.b nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, $04, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, $16, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $10, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $0A, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $04, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $16, nC4, $02, nRst, $04, nC4, $02
	dc.b nRst, $10, nC4, $02, nRst, $04, nC4, $02
	dc.b nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, $04, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, $16, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $10, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $0A, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $04, nD4, $02, nRst, $0A, nD4, $02
	dc.b nRst, $16, nC4, $02, nRst, $04, nC4, $02
	dc.b nRst, $10, nC4, $02, nRst, $04, nC4, $02
	dc.b nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, $04, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, $16, nC4, $02, nRst, $04, nC4, $02
	dc.b nRst, $10, nC4, $02, nRst, $04, nC4, $02
	dc.b nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, $04, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, $16, nC4, $02, nRst, $04, nC4, $02
	dc.b nRst, $10, nC4, $02, nRst, $04, nC4, $02
	dc.b nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, $04, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, $0A, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $08, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nEb4, $04
	dc.b nRst, $02, nEb4, $04, nRst, $02, nEb5, $04
	dc.b nRst, $02, nEb4, $04, nRst, $02, nEb5, $04
	dc.b nRst, $02, nEb4, $04, nRst, $02, nEb4, $04
	dc.b nRst, $02, nEb5, $04, nRst, $08, nEb4, $04
	dc.b nRst, $02, nEb5, $04, nRst, $02, nEb4, $04
	dc.b nRst, $02, nEb4, $04, nRst, $02, nEb4, $04
	dc.b nRst, $02, nEb5, $04, nRst, $02, nEb4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $08, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nE4, $04
	dc.b nRst, $02, nE4, $04, nRst, $02, nE5, $04
	dc.b nRst, $02, nE4, $04, nRst, $02, nE5, $04
	dc.b nRst, $02, nE4, $04, nRst, $02, nE4, $04
	dc.b nRst, $02, nE5, $04, nRst, $08, nE4, $04
	dc.b nRst, $02, nE5, $04, nRst, $02, nE4, $04
	dc.b nRst, $02, nE4, $04, nRst, $02, nE4, $04
	dc.b nRst, $02, nE5, $04, nRst, $02, nE4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $08, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nF4, $04
	dc.b nRst, $02, nF4, $04, nRst, $02, nF5, $04
	dc.b nRst, $02, nF4, $04, nRst, $02, nF5, $04
	dc.b nRst, $02, nF4, $04, nRst, $02, nF4, $04
	dc.b nRst, $02, nF5, $04, nRst, $08, nF4, $04
	dc.b nRst, $02, nF5, $04, nRst, $02, nF4, $04
	dc.b nRst, $02, nF4, $04, nRst, $02, nF4, $04
	dc.b nRst, $02, nF5, $04, nRst, $02, nF4, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nC4, $04
	dc.b nRst, $02, nC5, $04, nRst, $02, nC4, $04
	dc.b nRst, $02, nC5, $04, nRst, $02, nC4, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nC5, $04
	dc.b nRst, $08, nC4, $04, nRst, $02, nC5, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nC4, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nC5, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nG3, $04, nRst, $02, nG4, $04
	dc.b nRst, $02, nG3, $04, nRst, $02, nG4, $04
	dc.b nRst, $02, nG3, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nG4, $04, nRst, $08, nG3, $04
	dc.b nRst, $02, nG4, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nG3, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nG4, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nEb2, $06, nF2, nBb2, nEb3, nF3
	dc.b nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3, nF3
	dc.b nEb3, nBb2, nF2, nEb2, nG2, nBb2, nEb3, nG3
	dc.b nBb3, nEb4, nG4, nBb4, nG4, nEb4, nBb3, nG3
	dc.b nEb3, nBb2, nG2, nEb2, nF2, nBb2, nEb3, nF3
	dc.b nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3, nF3
	dc.b nEb3, nBb2, nF2, nD2, nF2, nBb2, nD3, nF3
	dc.b nBb3, nD4, nF4, nBb4, nF4, nD4, nBb3, nF3
	dc.b nD3, nBb2, nF2, nEb2, nF2, nBb2, nEb3, nF3
	dc.b nBb3, nEb4, nF4, nRst, nCs2, nEb2, nF2, nAb2
	dc.b nCs3, nEb3, nF3, nC2, nEb2, nAb2, nBb2, nC3
	dc.b nEb3, nAb3, nC4, nRst, nB1, nEb2, nFs2, nB2
	dc.b nEb3, nFs3, nB3, nEb4, nRst, nD4, nRst, nBb3
	dc.b nRst, nC4, nRst, nB3, nRst, nG3, nRst, nG4
	dc.b nRst, nFs4, nRst, nD4, nRst, nEb4, nRst, nD4
	dc.b nRst, nBb3, nRst, nAb4, $14, nRst, $04, nG4
	dc.b $14, nRst, $04, nEb2, $06, nF2, nBb2, nEb3
	dc.b nF3, nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3
	dc.b nF3, nEb3, nBb2, nF2, nEb2, nAb2, nBb2, nEb3
	dc.b nAb3, nBb3, nEb4, nG4, nBb4, nG4, nEb4, nBb3
	dc.b nG3, nEb3, nBb2, nG2, nEb2, nF2, nBb2, nEb3
	dc.b nF3, nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3
	dc.b nF3, nEb3, nBb2, nF2, nEb2, nAb2, nBb2, nEb3
	dc.b nAb3, nBb3, nEb4, nG4, nBb4, nG4, nEb4, nBb3
	dc.b nG3, nEb3, nBb2, nG2, nRst, $02
	sJump		LBZ2_PSG1
	dc.b $F2	; Unused

LBZ2_PSG2:
	dc.b nRst, $0C, nG3, $02, nRst, $04, nG3, $02
	dc.b nRst, $10, nG3, $02, nRst, $04, nG3, $02
	dc.b nRst, $0A, nG3, $02, nRst, $0A, nG3, $02
	dc.b nRst, $04, nG3, $02, nRst, $0A, nG3, $02
	dc.b nRst, $16, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $10, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $16, nG3, $02, nRst, $04, nG3, $02
	dc.b nRst, $10, nG3, $02, nRst, $04, nG3, $02
	dc.b nRst, $0A, nG3, $02, nRst, $0A, nG3, $02
	dc.b nRst, $04, nG3, $02, nRst, $0A, nG3, $02
	dc.b nRst, $16, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $10, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $16, nG3, $02, nRst, $04, nG3, $02
	dc.b nRst, $10, nG3, $02, nRst, $04, nG3, $02
	dc.b nRst, $0A, nG3, $02, nRst, $0A, nG3, $02
	dc.b nRst, $04, nG3, $02, nRst, $0A, nG3, $02
	dc.b nRst, $16, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $10, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $16, nG3, $02, nRst, $04, nG3, $02
	dc.b nRst, $10, nG3, $02, nRst, $04, nG3, $02
	dc.b nRst, $0A, nG3, $02, nRst, $0A, nG3, $02
	dc.b nRst, $04, nG3, $02, nRst, $0A, nG3, $02
	dc.b nRst, $16, nG3, $02, nRst, $04, nG3, $02
	dc.b nRst, $10, nG3, $02, nRst, $04, nG3, $02
	dc.b nRst, $0A, nG3, $02, nRst, $0A, nG3, $02
	dc.b nRst, $04, nG3, $02, nRst, $0A, nG3, $02
	dc.b nRst, $16, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $10, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $16, nEb3, $02, nRst, $04, nEb3, $02
	dc.b nRst, $10, nEb3, $02, nRst, $04, nEb3, $02
	dc.b nRst, $0A, nEb3, $02, nRst, $0A, nEb3, $02
	dc.b nRst, $04, nEb3, $02, nRst, $0A, nEb3, $02
	dc.b nRst, $16, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $10, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $16, nEb3, $02, nRst, $04, nEb3, $02
	dc.b nRst, $10, nEb3, $02, nRst, $04, nEb3, $02
	dc.b nRst, $0A, nEb3, $02, nRst, $0A, nEb3, $02
	dc.b nRst, $04, nEb3, $02, nRst, $0A, nEb3, $02
	dc.b nRst, $16, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $10, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $16, nEb3, $02, nRst, $04, nEb3, $02
	dc.b nRst, $10, nEb3, $02, nRst, $04, nEb3, $02
	dc.b nRst, $0A, nEb3, $02, nRst, $0A, nEb3, $02
	dc.b nRst, $04, nEb3, $02, nRst, $0A, nEb3, $02
	dc.b nRst, $16, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $10, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $16, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $10, nF3, $02, nRst, $04, nF3, $02
	dc.b nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $04, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, $0A, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $08, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nEb4, $04
	dc.b nRst, $02, nEb4, $04, nRst, $02, nEb5, $04
	dc.b nRst, $02, nEb4, $04, nRst, $02, nEb5, $04
	dc.b nRst, $02, nEb4, $04, nRst, $02, nEb4, $04
	dc.b nRst, $02, nEb5, $04, nRst, $08, nEb4, $04
	dc.b nRst, $02, nEb5, $04, nRst, $02, nEb4, $04
	dc.b nRst, $02, nEb4, $04, nRst, $02, nEb4, $04
	dc.b nRst, $02, nEb5, $04, nRst, $02, nEb4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $08, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nE4, $04
	dc.b nRst, $02, nE4, $04, nRst, $02, nE5, $04
	dc.b nRst, $02, nE4, $04, nRst, $02, nE5, $04
	dc.b nRst, $02, nE4, $04, nRst, $02, nE4, $04
	dc.b nRst, $02, nE5, $04, nRst, $08, nE4, $04
	dc.b nRst, $02, nE5, $04, nRst, $02, nE4, $04
	dc.b nRst, $02, nE4, $04, nRst, $02, nE4, $04
	dc.b nRst, $02, nE5, $04, nRst, $02, nE4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD5, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $08, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nD5, $04
	dc.b nRst, $02, nD4, $04, nRst, $02, nF4, $04
	dc.b nRst, $02, nF4, $04, nRst, $02, nF5, $04
	dc.b nRst, $02, nF4, $04, nRst, $02, nF5, $04
	dc.b nRst, $02, nF4, $04, nRst, $02, nF4, $04
	dc.b nRst, $02, nF5, $04, nRst, $08, nF4, $04
	dc.b nRst, $02, nF5, $04, nRst, $02, nF4, $04
	dc.b nRst, $02, nF4, $04, nRst, $02, nF4, $04
	dc.b nRst, $02, nF5, $04, nRst, $02, nF4, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nC4, $04
	dc.b nRst, $02, nC5, $04, nRst, $02, nC4, $04
	dc.b nRst, $02, nC5, $04, nRst, $02, nC4, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nC5, $04
	dc.b nRst, $08, nC4, $04, nRst, $02, nC5, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nC4, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nC5, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nG3, $04, nRst, $02, nG4, $04
	dc.b nRst, $02, nG3, $04, nRst, $02, nG4, $04
	dc.b nRst, $02, nG3, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nG4, $04, nRst, $08, nG3, $04
	dc.b nRst, $02, nG4, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nG3, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nG4, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nEb2, $06, nF2, nBb2, nEb3, nF3
	dc.b nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3, nF3
	dc.b nEb3, nBb2, nF2, nEb2, nG2, nBb2, nEb3, nG3
	dc.b nBb3, nEb4, nG4, nBb4, nG4, nEb4, nBb3, nG3
	dc.b nEb3, nBb2, nG2, nEb2, nF2, nBb2, nEb3, nF3
	dc.b nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3, nF3
	dc.b nEb3, nBb2, nF2, nD2, nF2, nBb2, nD3, nF3
	dc.b nBb3, nD4, nF4, nBb4, nF4, nD4, nBb3, nF3
	dc.b nD3, nBb2, nF2, nEb2, nF2, nBb2, nEb3, nF3
	dc.b nBb3, nEb4, nF4, nRst, nCs2, nEb2, nF2, nAb2
	dc.b nCs3, nEb3, nF3, nC2, nEb2, nAb2, nBb2, nC3
	dc.b nEb3, nAb3, nC4, nRst, nB1, nEb2, nFs2, nB2
	dc.b nEb3, nFs3, nB3, nEb4, nRst, nD4, nRst, nBb3
	dc.b nRst, nC4, nRst, nB3, nRst, nG3, nRst, nG4
	dc.b nRst, nFs4, nRst, nD4, nRst, nEb4, nRst, nD4
	dc.b nRst, nBb3, nRst, nAb4, $14, nRst, $04, nG4
	dc.b $14, nRst, $04, nEb2, $06, nF2, nBb2, nEb3
	dc.b nF3, nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3
	dc.b nF3, nEb3, nBb2, nF2, nEb2, nAb2, nBb2, nEb3
	dc.b nAb3, nBb3, nEb4, nG4, nBb4, nG4, nEb4, nBb3
	dc.b nG3, nEb3, nBb2, nG2, nEb2, nF2, nBb2, nEb3
	dc.b nF3, nBb3, nEb4, nF4, nBb4, nF4, nEb4, nBb3
	dc.b nF3, nEb3, nBb2, nF2, nEb2, nAb2, nBb2, nEb3
	dc.b nAb3, nBb3, nEb4, nG4, nBb4, nG4, nEb4, nBb3
	dc.b nG3, nEb3, nBb2, nG2, nRst, $02
	sJump		LBZ2_PSG2
	dc.b $F2	; Unused

LBZ2_PSG3:
	sVolEnvPSG	v02
	sNoisePSG	$E7

LBZ2_Jump5:
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, nBb6, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, nBb6, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b nBb6, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, nBb6, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, nBb6, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, nBb6, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b nBb6, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, nBb6, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, nBb6, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, nBb6
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, nBb6, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C
	dc.b nBb6, nBb6, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, $02, nRst, $06
	sJump		LBZ2_Jump5
	dc.b $F2	; Unused

LBZ2_Patches:

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