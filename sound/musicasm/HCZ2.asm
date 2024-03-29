HCZ2_Header:
	sHeaderInit						; Z80 offset is $D492
	sHeaderPatch	HCZ2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $25
	sHeaderDAC	HCZ2_DAC
	sHeaderFM	HCZ2_FM1, $0C, $12
	sHeaderFM	HCZ2_FM2, $0C, $12
	sHeaderFM	HCZ2_FM3, $18, $18
	sHeaderFM	HCZ2_FM4, $18, $0D
	sHeaderFM	HCZ2_FM5, $18, $18
	sHeaderPSG	HCZ2_PSG1, $F4, $05, $00, v0C
	sHeaderPSG	HCZ2_PSG2, $F4, $05, $00, v0C
	sHeaderPSG	HCZ2_PSG3, $00, $03, $00, v0C
	dc.b $F2, $F2	; Unused

HCZ2_DAC:
	dc.b dKick, $06
	sPan		spLeft
	dc.b dHighTom, $02, dHighTom, $04, dHighTom, $06, dHighTom, dHighTom
	dc.b dHighTom
	sPan		spCenter
	dc.b dMidTom, dMidTom, dMidTom, dMidTom, dMidTom, dLowTom
	sPan		spRight
	dc.b dLowTom, $02, dLowTom, $04, dLowTom, $06, dFloorTom, dFloorTom
	sPan		spCenter
	dc.b dKick, $0C, dSnare, $1E, dKick, $0C, dKick, $12
	dc.b dKick, $0C, dSnare, dKick, $06
	sPan		spLeft
	dc.b dHighTom, $02, dHighTom, $04, dHighTom, $06, dHighTom, dHighTom
	dc.b dHighTom
	sPan		spCenter
	dc.b dMidTom, dMidTom, dMidTom, dMidTom, dMidTom, dLowTom
	sPan		spRight
	dc.b dLowTom, $02, dLowTom, $04, dLowTom, $06, dFloorTom, dFloorTom
	sPan		spCenter
	dc.b dKick, $0C, dSnare, $1E, dKick, $0C, dKick, $12
	dc.b dKick, $0C, dSnare, dKick, $18, dSnare, $06, dKick
	dc.b $0C, dKick, dKick, $12, dSnare, $0C, dKick, dKick
	dc.b $18, dSnare, $06, dKick, $0C, dKick, dKick, $12
	dc.b dSnare, $0C, dKick, dKick, $18, dSnare, $06, dKick
	dc.b $0C, dKick, dKick, $12, dSnare, $0C, dKick, dKick
	dc.b $24, dSnare, $06, dKick, $0C, dKick, $12, dKick
	dc.b $0C, dSnare, dKick, $18, dSnare, $06, dKick, $0C
	dc.b dKick, dKick, $12, dSnare, $0C, dKick, dKick, $18
	dc.b dSnare, $06, dKick, $0C, dKick, dKick, $12, dSnare
	dc.b $0C, dKick, dKick, $18, dSnare, $06, dKick, $0C
	dc.b dKick, dKick, $12, dSnare, $0C, dKick, $06, dSnare
	dc.b $0C, dKick, dKick, $06, dHighTom, dMidTom, dLowTom, dSnare
	dc.b $18, dSnare, $0C, dSnare, $02, dSnare, $04, dSnare
	dc.b $06, dSnare, dKick, $18, dSnare, $06, dKick, $0C
	dc.b dKick, $1E, dSnare, $0C, dKick, dKick, $18, dSnare
	dc.b $06, dKick, $0C, dKick, $1E, dSnare, $0C, dKick
	dc.b dKick, $18, dSnare, $06, dKick, $0C, dKick, $1E
	dc.b dSnare, $0C, dKick, $12, dSnare, dSnare, $0C, dSnare
	dc.b $06, dSnare, $0C, dSnare, $12, dSnare, $06, dSnare
	dc.b dSnare, dSnare, dKick, $18, dSnare, $06, dKick, $0C
	dc.b dKick, $1E, dSnare, $0C, dKick, dKick, $18, dSnare
	dc.b $06, dKick, $0C, dKick, $1E, dSnare, $0C, dKick
	dc.b dKick, $18, dSnare, $06, dKick, $0C, dKick, $1E
	dc.b dSnare, $0C, dKick, $06, dKick, $0C, dKick, dKick
	dc.b $06, dSnare, dKick, dKick, dSnare, dKick, dKick, $0C
	dc.b dSnare, dSnare, $06, dSnare, dSnare, dKick, $12, dKick
	dc.b $06, dSnare, $1E, dKick, $06, dKick, $0C, dSnare
	dc.b $18, dKick, $12, dKick, $06, dSnare, $1E, dKick
	dc.b $06, dKick, $0C, dSnare, $18, dKick, $12, dKick
	dc.b $06, dSnare, $1E, dKick, $06, dKick, $0C, dSnare
	dc.b $18, dKick, $0C, dSnare, dKick, $06, dSnare, $0C
	dc.b dSnare, $06, dKick, dSnare, $12, dSnare, $04, dSnare
	dc.b dSnare, dSnare, $06, dSnare, dKick, $12, dKick, $06
	dc.b dSnare, $1E, dKick, $06, dKick, $0C, dSnare, $18
	dc.b dKick, $12, dKick, $06, dSnare, $1E, dKick, $06
	dc.b dKick, $0C, dSnare, $18, dKick, $12, dKick, $06
	dc.b dSnare, $1E, dKick, $06, dKick, $0C, dSnare, $1E
	dc.b dSnare, $0C, dSnare, dSnare, $06, dSnare, $0C, dSnare
	dc.b $18, dSnare, $02, dSnare, dSnare, dSnare, $06, dSnare
	dc.b dSnare
	sJump		HCZ2_DAC
	dc.b $F2	; Unused

HCZ2_FM1:
	sPatFM		$06
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	dc.b nF3, $04, nRst, $08, nF3, $04, nRst, $0E
	dc.b nF3, $04, nRst, $02, nF3, nRst, $04, nF3
	dc.b $0A, nRst, $02, nF3, $0A, nRst, $02, nBb2
	dc.b $04, nRst, $02, nF3, $04, nRst, $08, nF3
	dc.b $04, nRst, $08, nEb3, $04, nRst, $08, nEb3
	dc.b $04, nRst, $0E, nEb3, $04, nRst, $02, nEb3
	dc.b nRst, $04, nE3, nRst, $08, nE3, $10, nRst
	dc.b $02, nE3, $04, nRst, $08, nE3, $04, nRst
	dc.b $08, nF3, $04, nRst, $08, nF3, $04, nRst
	dc.b $0E, nF3, $04, nRst, $02, nF3, nRst, $04
	dc.b nF3, $0A, nRst, $02, nF3, $0A, nRst, $02
	dc.b nBb2, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nEb3, $04, nRst, $08
	dc.b nEb3, $04, nRst, $0E, nEb3, $04, nRst, $02
	dc.b nEb3, nRst, $04, nE3, nRst, $08, nE3, $10
	dc.b nRst, $02, nE3, $04, nRst, $08, nE3, $04
	dc.b nRst, $08, nF3, $04, nRst, $08, nF3, $04
	dc.b nRst, $0E, nF3, $04, nRst, $02, nF3, nRst
	dc.b $04, nF3, $0A, nRst, $02, nF3, $0A, nRst
	dc.b $02, nBb2, $04, nRst, $02, nF3, $04, nRst
	dc.b $08, nF3, $04, nRst, $08, nEb3, $04, nRst
	dc.b $08, nEb3, $04, nRst, $0E, nEb3, $04, nRst
	dc.b $02, nEb3, nRst, $04, nE3, nRst, $08, nE3
	dc.b $10, nRst, $02, nE3, $04, nRst, $08, nE3
	dc.b $04, nRst, $08, nF3, $04, nRst, $08, nF3
	dc.b $04, nRst, $0E, nF3, $04, nRst, $02, nF3
	dc.b nRst, $04, nF3, $0A, nRst, $02, nF3, $0A
	dc.b nRst, $02, nBb2, $04, nRst, $02, nF3, $04
	dc.b nRst, $08, nF3, $04, nRst, $08, nEb3, $04
	dc.b nRst, $08, nEb3, $04, nRst, $0E, nEb3, $04
	dc.b nRst, $02, nEb3, nRst, $04, nE3, nRst, $08
	dc.b nE3, $10, nRst, $02, nE3, $04, nRst, $08
	dc.b nE3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b nF3, $04, nRst, $0E, nF3, $04, nRst, $02
	dc.b nF3, nRst, $04, nF3, $0A, nRst, $02, nF3
	dc.b $0A, nRst, $02, nBb2, $04, nRst, $02, nF3
	dc.b $04, nRst, $08, nF3, $04, nRst, $08, nEb3
	dc.b $04, nRst, $08, nEb3, $04, nRst, $0E, nEb3
	dc.b $04, nRst, $02, nEb3, nRst, $04, nE3, nRst
	dc.b $08, nE3, $10, nRst, $02, nE3, $04, nRst
	dc.b $08, nE3, $04, nRst, $08, nF3, $04, nRst
	dc.b $08, nF3, $04, nRst, $0E, nF3, $04, nRst
	dc.b $02, nF3, nRst, $04, nF3, $0A, nRst, $02
	dc.b nF3, $0A, nRst, $02, nBb2, $04, nRst, $02
	dc.b nF3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $08, nC4, $06, nBb3, nG3
	dc.b nF3, $04, nFs3, nF3, nEb3, $06, nC3, nRst
	dc.b $12, nF3, $1E, nEb3, $0A, nRst, $02, nD3
	dc.b $04, nRst, $02, nEb3, $0A, nRst, $02, nD3
	dc.b $0A, nRst, $02, nEb3, $04, nRst, $0E, nC4
	dc.b $04, nRst, $02, nC4, $04, nRst, $08, nD4
	dc.b $02, nRst, $04, nEb4, $0A, nRst, $02, nD3
	dc.b $0A, nRst, $02, nF3, $04, nRst, $02, nD3
	dc.b $0A, nRst, $02, nF3, $0A, nRst, $02, nD3
	dc.b $04, nRst, $0E, nBb3, $04, nRst, $02, nBb3
	dc.b $04, nRst, $08, nC4, $02, nRst, $04, nD4
	dc.b $0A, nRst, $02, nD3, $0A, nRst, $02, nC3
	dc.b $04, nRst, $02, nD3, $0A, nRst, $02, nC3
	dc.b $0A, nRst, $02, nD3, $04, nRst, $0E, nD4
	dc.b $04, nRst, $02, nD4, $04, nRst, $08, nEb4
	dc.b $02, nRst, $04, nF4, $0A, nRst, $08, nBb3
	dc.b $04, nRst, $0E, nBb3, $0A, nRst, $02, nBb3
	dc.b $04, nRst, $02, nBb3, $04, nRst, $08, nBb3
	dc.b $10, nRst, $02, nEb3, $0A, nRst, $02, nF3
	dc.b $0A, nRst, $02, nEb3, $0A, nRst, $02, nD3
	dc.b $04, nRst, $02, nEb3, $0A, nRst, $02, nD3
	dc.b $0A, nRst, $02, nEb3, $04, nRst, $0E, nC4
	dc.b $04, nRst, $02, nC4, $04, nRst, $08, nD4
	dc.b $02, nRst, $04, nEb4, $0A, nRst, $02, nD3
	dc.b $0A, nRst, $02, nF3, $04, nRst, $02, nD3
	dc.b $0A, nRst, $02, nF3, $0A, nRst, $02, nBb2
	dc.b $04, nRst, $0E, nBb3, $04, nRst, $02, nBb3
	dc.b $04, nRst, $08, nEb4, $02, nRst, $04, nG4
	dc.b $0A, nRst, $02, nEb3, $0A, nRst, $02, nBb2
	dc.b $04, nRst, $02, nEb3, $0A, nRst, $02, nBb2
	dc.b $0A, nRst, $02, nC3, $04, nRst, $0E, nA3
	dc.b $04, nRst, $02, nA3, $04, nRst, $08, nC4
	dc.b $02, nRst, $04, nEb4, $0A, nRst, $08, nEb4
	dc.b $04, nRst, $08, nEb4, $04, nRst, $08, nEb4
	dc.b $04, nRst, $02, nEb4, $0A, nRst, $02, nB3
	dc.b $04, nRst, $02, nB3, $04, nRst, $08, nB3
	dc.b $04, nRst, $0E, nEb3, $04, nRst, $02, nF3
	dc.b $04, nRst, $08, nG3, $04, nRst, $02, nF3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $08, nD3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nC3
	dc.b $04, nRst, $08, nBb3, $10, nRst, $02, nG3
	dc.b $04, nRst, $08, nF3, $04, nRst, $0E, nD4
	dc.b $04, nRst, $02, nBb3, $04, nRst, $02, nG3
	dc.b $04, nRst, $02, nEb3, $10, nRst, $02, nD3
	dc.b $34, nRst, $08, nG3, $04, nRst, $02, nF3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $08, nD3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nC3
	dc.b $04, nRst, $08, nB3, $10, nRst, $02, nG3
	dc.b $04, nRst, $08, nF3, $04, nRst, $08, nG3
	dc.b $16, nRst, $02, nBb3, $10, nRst, $02, nBb3
	dc.b $04, nRst, $08, nAb3, $10, nRst, $02, nG3
	dc.b $16, nRst, $08, nG3, $04, nRst, $02, nF3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $08, nD3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nC3
	dc.b $04, nRst, $08, nBb3, $10, nRst, $02, nG3
	dc.b $04, nRst, $08, nF3, $04, nRst, $0E, nD4
	dc.b $04, nRst, $02, nBb3, $04, nRst, $02, nG3
	dc.b $04, nRst, $02, nEb3, $10, nRst, $02, nD3
	dc.b $34, nRst, $08, nG3, $04, nRst, $02, nF3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $08, nD3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nC3
	dc.b $04, nRst, $08, nEb2, $04, nRst, $02, nAb2
	dc.b $04, nRst, $02, nEb2, $04, nRst, $02, nEb3
	dc.b $0A, nRst, $02, nAb3, $0A, nRst, $08, nG3
	dc.b $04, nRst, $08, nG3, $04, nRst, $08, nG3
	dc.b $04, nRst, $02, nG3, $0A, nRst, $02, nG3
	dc.b $04, nRst, $2C
	sJump		HCZ2_FM1
	dc.b $F2	; Unused

HCZ2_FM2:
	sPatFM		$06
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	dc.b nBb2, $04, nRst, $08, nBb2, $04, nRst, $0E
	dc.b nBb2, $04, nRst, $02, nBb2, nRst, $04, nBb2
	dc.b $0A, nRst, $02, nBb2, $0A, nRst, $08, nBb2
	dc.b $04, nRst, $08, nBb2, $04, nRst, $08, nA2
	dc.b $04, nRst, $08, nA2, $04, nRst, $0E, nA2
	dc.b $04, nRst, $02, nA2, nRst, $04, nBb2, nRst
	dc.b $08, nBb2, $10, nRst, $02, nBb2, $04, nRst
	dc.b $08, nBb2, $04, nRst, $08, nBb2, $04, nRst
	dc.b $08, nBb2, $04, nRst, $0E, nBb2, $04, nRst
	dc.b $02, nBb2, nRst, $04, nBb2, $0A, nRst, $02
	dc.b nBb2, $0A, nRst, $08, nBb2, $04, nRst, $08
	dc.b nBb2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nA2, $04, nRst, $0E, nA2, $04, nRst, $02
	dc.b nA2, nRst, $04, nBb2, nRst, $08, nBb2, $10
	dc.b nRst, $02, nBb2, $04, nRst, $08, nBb2, $04
	dc.b nRst, $08, nBb2, $04, nRst, $08, nBb2, $04
	dc.b nRst, $0E, nBb2, $04, nRst, $02, nBb2, nRst
	dc.b $04, nBb2, $0A, nRst, $02, nBb2, $0A, nRst
	dc.b $08, nBb2, $04, nRst, $08, nBb2, $04, nRst
	dc.b $08, nA2, $04, nRst, $08, nA2, $04, nRst
	dc.b $0E, nA2, $04, nRst, $02, nA2, nRst, $04
	dc.b nBb2, nRst, $08, nBb2, $10, nRst, $02, nBb2
	dc.b $04, nRst, $08, nBb2, $04, nRst, $08, nBb2
	dc.b $04, nRst, $08, nBb2, $04, nRst, $0E, nBb2
	dc.b $04, nRst, $02, nBb2, nRst, $04, nBb2, $0A
	dc.b nRst, $02, nBb2, $0A, nRst, $08, nBb2, $04
	dc.b nRst, $08, nBb2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nA2, $04, nRst, $0E, nA2, $04
	dc.b nRst, $02, nA2, nRst, $04, nBb2, nRst, $08
	dc.b nBb2, $10, nRst, $02, nBb2, $04, nRst, $08
	dc.b nBb2, $04, nRst, $08, nBb2, $04, nRst, $08
	dc.b nBb2, $04, nRst, $0E, nBb2, $04, nRst, $02
	dc.b nBb2, nRst, $04, nBb2, $0A, nRst, $02, nBb2
	dc.b $0A, nRst, $08, nBb2, $04, nRst, $08, nBb2
	dc.b $04, nRst, $08, nA2, $04, nRst, $08, nA2
	dc.b $04, nRst, $0E, nA2, $04, nRst, $02, nA2
	dc.b nRst, $04, nBb2, nRst, $08, nBb2, $10, nRst
	dc.b $02, nBb2, $04, nRst, $08, nBb2, $04, nRst
	dc.b $08, nBb2, $04, nRst, $08, nBb2, $04, nRst
	dc.b $0E, nBb2, $04, nRst, $02, nBb2, nRst, $04
	dc.b nBb2, $0A, nRst, $02, nBb2, $0A, nRst, $08
	dc.b nBb2, $04, nRst, $08, nBb2, $04, nRst, $02
	dc.b nBb2, $04, nRst, $44, nB2, $1E, nC3, $0A
	dc.b nRst, $02, nBb2, $04, nRst, $02, nC3, $0A
	dc.b nRst, $02, nBb2, $0A, nRst, $02, nC3, $04
	dc.b nRst, $0E, nAb3, $04, nRst, $02, nAb3, $04
	dc.b nRst, $08, nBb3, $02, nRst, $04, nC4, $0A
	dc.b nRst, $02, nBb2, $0A, nRst, $02, nD3, $04
	dc.b nRst, $02, nBb2, $0A, nRst, $02, nD3, $0A
	dc.b nRst, $02, nBb2, $04, nRst, $0E, nG3, $04
	dc.b nRst, $02, nG3, $04, nRst, $08, nAb3, $02
	dc.b nRst, $04, nBb3, $0A, nRst, $02, nBb2, $0A
	dc.b nRst, $02, nAb2, $04, nRst, $02, nBb2, $0A
	dc.b nRst, $02, nAb2, $0A, nRst, $02, nBb2, $04
	dc.b nRst, $0E, nBb3, $04, nRst, $02, nBb3, $04
	dc.b nRst, $08, nC4, $02, nRst, $04, nD4, $0A
	dc.b nRst, $08, nG3, $04, nRst, $0E, nF3, $0A
	dc.b nRst, $02, nF3, $04, nRst, $02, nG3, $04
	dc.b nRst, $08, nD3, $10, nRst, $02, nC3, $0A
	dc.b nRst, $02, nD3, $0A, nRst, $02, nC3, $0A
	dc.b nRst, $02, nBb2, $04, nRst, $02, nC3, $0A
	dc.b nRst, $02, nBb2, $0A, nRst, $02, nC3, $04
	dc.b nRst, $0E, nAb3, $04, nRst, $02, nAb3, $04
	dc.b nRst, $08, nBb3, $02, nRst, $04, nC4, $0A
	dc.b nRst, $02, nBb2, $0A, nRst, $02, nD3, $04
	dc.b nRst, $02, nBb2, $0A, nRst, $02, nD3, $0A
	dc.b nRst, $02, nG2, $04, nRst, $0E, nG3, $04
	dc.b nRst, $02, nG3, $04, nRst, $08, nBb3, $02
	dc.b nRst, $04, nEb4, $0A, nRst, $02, nBb2, $0A
	dc.b nRst, $02, nG2, $04, nRst, $02, nBb2, $0A
	dc.b nRst, $02, nG2, $0A, nRst, $02, nA2, $04
	dc.b nRst, $0E, nF3, $04, nRst, $02, nF3, $04
	dc.b nRst, $08, nA3, $02, nRst, $04, nC4, $0A
	dc.b nRst, $08, nG3, $04, nRst, $08, nG3, $04
	dc.b nRst, $08, nG3, $04, nRst, $02, nG3, $0A
	dc.b nRst, $02, nF3, $04, nRst, $02, nF3, $04
	dc.b nRst, $08, nF3, $04, nRst, $0E, nC3, $04
	dc.b nRst, $02, nD3, $04, nRst, $08, nEb3, $04
	dc.b nRst, $02, nD3, $04, nRst, $02, nC3, $04
	dc.b nRst, $08, nBb2, $04, nRst, $02, nC3, $04
	dc.b nRst, $02, nAb2, $04, nRst, $08, nF3, $10
	dc.b nRst, $02, nEb3, $04, nRst, $08, nD3, $04
	dc.b nRst, $0E, nBb3, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nEb3, $04, nRst, $02, nC3, $10
	dc.b nRst, $02, nF2, $34, nRst, $08, nEb3, $04
	dc.b nRst, $02, nD3, $04, nRst, $02, nC3, $04
	dc.b nRst, $08, nBb2, $04, nRst, $02, nC3, $04
	dc.b nRst, $02, nAb2, $04, nRst, $08, nF3, $10
	dc.b nRst, $02, nEb3, $04, nRst, $08, nD3, $04
	dc.b nRst, $08, nEb3, $16, nRst, $02, nF3, $10
	dc.b nRst, $02, nF3, $04, nRst, $08, nEb3, $10
	dc.b nRst, $02, nD3, $16, nRst, $08, nEb3, $04
	dc.b nRst, $02, nD3, $04, nRst, $02, nC3, $04
	dc.b nRst, $08, nBb2, $04, nRst, $02, nC3, $04
	dc.b nRst, $02, nAb2, $04, nRst, $08, nF3, $10
	dc.b nRst, $02, nEb3, $04, nRst, $08, nD3, $04
	dc.b nRst, $0E, nBb3, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nEb3, $04, nRst, $02, nC3, $10
	dc.b nRst, $02, nF2, $34, nRst, $08, nEb3, $04
	dc.b nRst, $02, nD3, $04, nRst, $02, nC3, $04
	dc.b nRst, $08, nBb2, $04, nRst, $02, nC3, $04
	dc.b nRst, $02, nAb2, $04, nRst, $1A, nC3, $0A
	dc.b nRst, $02, nEb3, $0A, nRst, $08, nD3, $04
	dc.b nRst, $08, nD3, $04, nRst, $08, nD3, $04
	dc.b nRst, $02, nD3, $0A, nRst, $02, nD3, $04
	dc.b nRst, $2C
	sJump		HCZ2_FM2
	dc.b $F2	; Unused

HCZ2_FM3:
	sPan		spLeft
	sPatFM		$03
	ssDetune	$FE
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $7F, nRst, nRst, $76, nG4, $06, nBb4
	dc.b nC5, nG4, nF4, $02, nEb4, nD4, nC4, nBb3
	dc.b nA3, nG3, nRst, $04, nBb3, $06, nC4, nG3
	dc.b nF3, $02, nFs3, $04, nF3, $06, nEb3, nC3
	dc.b nG3, $02, nA3, nBb3, $08, nBb3, $02, nBb3
	dc.b $04, nA3, $12, nG3, $02, nFs3, nF3, nEb3
	dc.b nD3, nC3, nBb2, nA2, nG2, nRst, $36, nBb3
	dc.b $06, nB3, nC4, nFs3, $02, nG3, $04, nF3
	dc.b $02, nEb3, nC3, nBb2, nA2, nG2, nF2, nEb2
	dc.b $04, nF3, $02, nFs3, $04, nF3, $06, nEb3
	dc.b nF3, nEb3, nC3, nBb2, nG3, $0C, nG3, $06
	dc.b nC4, $12, nA3, $02, nG3, nF3, nEb3, nD3
	dc.b nC3, nRst, $3C, nG4, $06, nBb4, nC5, nG4
	dc.b nF4, $02, nEb4, nD4, nC4, nBb3, nA3, nG3
	dc.b nRst, $04, nBb3, $06, nC4, nG3, nF3, $02
	dc.b nFs3, $04, nF3, $06, nEb3, nC3, nG3, $02
	dc.b nA3, nBb3, $08, nBb3, $02, nBb3, $04, nA3
	dc.b $12, nG3, $02, nF3, nEb3, nD3, nC3, nBb2
	dc.b nA2, nG2, nF2, nRst, $36, nBb3, $06, nB3
	dc.b nC4, nFs3, $02, nG3, $04, nF3, $02, nEb3
	dc.b nC3, nBb2, nA2, nG2, nF2, nEb2, $04, nF3
	dc.b $02, nFs3, $04, nF3, $06, nEb3, nF3, nEb3
	dc.b nC3, nBb2, nG3, $0C, nG3, $06, nEb3, $12
	dc.b nD3, $02, nC3, nBb2, nA2, nG2, nF2, nRst
	dc.b $1E
	sPatFM		$0E
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	saTranspose	$F4
	dc.b nF3, $06, nFs3, $02, nG3, $04, nBb3, $06
	dc.b nEb4, nF4, nG4, nBb4, nD5, $02, nEb5, $08
	dc.b nRst, $02, nF5, $04, nRst, $02, nFs5, nG5
	dc.b $08, nRst, $02, nC5, $0A, nRst, $02, nFs5
	dc.b nG5, $26, nRst, $02, nF5, $04, nRst, $02
	dc.b nEb5, $04, nRst, $02, nCs5, nD5, $26, nRst
	dc.b $02, nBb4, $34, nRst, $02, nCs5, nD5, $08
	dc.b nRst, $02, nEb5, $04, nRst, $02, nE5, nF5
	dc.b $08, nRst, $02, nBb4, $0A, nRst, $02, nF5
	dc.b nF5, $26, nRst, $02, nEb5, $04, nRst, $02
	dc.b nD5, $04, nRst, $02, nC5, $2E, nRst, $08
	dc.b nD5, $10, nRst, $02, nEb5, $0A, nRst, $02
	dc.b nF5, $0A, nRst, $02, nD5, nEb5, $08, nRst
	dc.b $02, nF5, $04, nRst, $02, nFs5, nG5, $08
	dc.b nRst, $02, nC5, $0A, nRst, $02, nG5, $28
	dc.b nRst, $02, nF5, $04, nRst, $02, nEb5, $04
	dc.b nRst, $02, nCs5, nD5, $26, nRst, $02, nEb5
	dc.b $1C, nRst, $0E, nEb5, $04, nRst, $02, nF5
	dc.b $04, nRst, $02, nFs5, nG5, $08, nRst, $02
	dc.b nEb5, $04, nRst, $02, nG5, $0A, nRst, $02
	dc.b nBb4, $0A, nRst, $02, nC5, $28, nRst, $02
	dc.b nEb5, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b nG5, $2E, nRst, $02, nF5, $12, nEb5, $02
	dc.b nD5, nC5, nBb4, nAb4, nG4, nF4, nEb4, nD4
	sPatFM		$03
	ssDetune	$FE
	ssModZ80	$0F, $01, $06, $06
	saTranspose	$0C
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nEb4, $0C, nD4, $02, nC4, nBb3, nAb3, nG3
	dc.b nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst
	dc.b $02, nE4, nF4, nRst, $08, nD4, $10, nRst
	dc.b $02, nC4, $04, nRst, $08, nBb3, $04, nRst
	dc.b $08, nFs3, $02, nG3, $14, nRst, $02, nFs3
	dc.b nG3, $08, nRst, $02, nF3, $04, nRst, $02
	dc.b nFs3, nG3, $28, nC4, $04, nRst, $02, nD4
	dc.b $04, nRst, $02, nEb4, $0C, nD4, $02, nC4
	dc.b nBb3, nAb3, nG3, nF3, nC4, $0A, nRst, $02
	dc.b nEb4, $04, nRst, $02, nE4, nF4, nRst, $08
	dc.b nD4, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nB3, $04, nRst, $08, nC4, $10, nRst, $02
	dc.b nC4, $04, nRst, $02, nD4, $0A, nRst, $02
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b nEb4, $10, nRst, $02, nF4, $0A, nRst, $02
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nEb4, $0C, nD4, $02, nC4, nBb3, nAb3, nG3
	dc.b nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst
	dc.b $02, nE4, nF4, nRst, $08, nD4, $10, nRst
	dc.b $02, nC4, $04, nRst, $08, nBb3, $04, nRst
	dc.b $08, nFs3, $02, nG3, $14, nRst, $02, nFs3
	dc.b nG3, $08, nRst, $02, nF3, $04, nRst, $02
	dc.b nFs3, nG3, $28, nC4, $04, nRst, $02, nD4
	dc.b $04, nRst, $02, nEb4, $10, nRst, $02, nEb4
	dc.b $04, nRst, $08, nD4, $04, nRst, $02, nEb4
	dc.b $10, nRst, $02, nEb4, $04, nRst, $02, nF4
	dc.b $0A, nRst, $02, nEb4, $04, nRst, $08, nAb4
	dc.b $04, nRst, $0E, nC5, $04, nRst, $08, nC5
	dc.b $04, nRst, $08, nC5, $04, nRst, $02, nC5
	dc.b $0A, nRst, $02, nB4, $04, nRst, $2C
	sJump		HCZ2_FM3
	dc.b $F2	; Unused

HCZ2_FM4:
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nC1, $0A, nRst, $02, nEb1, nRst, $04, nC1
	dc.b $10, nRst, $02, nEb1, nRst, $04, nF1, nRst
	dc.b $08, nEb1, $10, nRst, $02, nF1, $16, nRst
	dc.b $02, nC1, $0A, nRst, $02, nA0, nRst, $04
	dc.b nC1, $12, nA0, $04, nRst, $02, nBb0, $04
	dc.b nRst, $08, nG0, $10, nRst, $02, nBb0, $16
	dc.b nRst, $02, nC1, $0A, nRst, $02, nEb1, nRst
	dc.b $04, nC1, $10, nRst, $02, nEb1, nRst, $04
	dc.b nF1, nRst, $08, nEb1, $10, nRst, $02, nF1
	dc.b $16, nRst, $02, nC1, $0A, nRst, $02, nA0
	dc.b nRst, $04, nC1, $12, nA0, $04, nRst, $02
	dc.b nBb0, $04, nRst, $08, nG0, $10, nRst, $02
	dc.b nBb0, $16, nRst, $02, nC1, $0A, nRst, $02
	dc.b nEb1, nRst, $04, nC1, $10, nRst, $02, nEb1
	dc.b nRst, $04, nF1, nRst, $08, nEb1, $10, nRst
	dc.b $02, nF1, $16, nRst, $02, nC1, $0A, nRst
	dc.b $02, nA0, nRst, $04, nC1, $12, nA0, $04
	dc.b nRst, $02, nBb0, $04, nRst, $08, nG0, $10
	dc.b nRst, $02, nBb0, $16, nRst, $02, nC1, $0A
	dc.b nRst, $02, nEb1, nRst, $04, nC1, $10, nRst
	dc.b $02, nEb1, nRst, $04, nF1, nRst, $08, nEb1
	dc.b $10, nRst, $02, nF1, $16, nRst, $02, nC1
	dc.b $0A, nRst, $02, nA0, nRst, $04, nC1, $12
	dc.b nA0, $04, nRst, $02, nBb0, $04, nRst, $08
	dc.b nG0, $10, nRst, $02, nBb0, $16, nRst, $02
	dc.b nC1, $0A, nRst, $02, nEb1, nRst, $04, nC1
	dc.b $10, nRst, $02, nEb1, $04, nRst, $02, nF1
	dc.b $04, nRst, $08, nEb1, $10, nRst, $02, nF1
	dc.b $16, nRst, $02, nC1, $0A, nRst, $02, nA0
	dc.b nRst, $04, nC1, $12, nA0, $04, nRst, $02
	dc.b nBb0, $04, nRst, $08, nG0, $10, nRst, $02
	dc.b nBb0, $16, nRst, $02, nC1, $0A, nRst, $02
	dc.b nEb1, nRst, $04, nC1, $10, nRst, $02, nEb1
	dc.b $04, nRst, $02, nF1, $04, nRst, $08, nEb1
	dc.b $10, nRst, $02, nF1, $10, nRst, $02, nEb1
	dc.b $04, nRst, $08, nC2, $04, nRst, $02, nBb1
	dc.b $04, nRst, $02, nG1, $04, nRst, $02, nF1
	dc.b $04, nFs1, nF1, nEb1, $06, nC1, $04, nRst
	dc.b $14, nG0, $1C, nRst, $02, nAb0, $0A, nRst
	dc.b $02, nAb0, nRst, $04, nAb1, nRst, $08, nAb0
	dc.b $04, nRst, $08, nAb0, $04, nRst, $08, nAb1
	dc.b $04, nRst, $02, nAb0, $16, nRst, $02, nAb0
	dc.b $04, nRst, $08, nG0, $0A, nRst, $02, nG0
	dc.b nRst, $04, nG1, nRst, $08, nG0, $04, nRst
	dc.b $08, nG0, $04, nRst, $08, nG1, $04, nRst
	dc.b $02, nG0, $16, nRst, $02, nG0, $04, nRst
	dc.b $08, nBb0, $0A, nRst, $02, nBb0, nRst, $04
	dc.b nBb1, nRst, $08, nBb0, $04, nRst, $08, nBb0
	dc.b $04, nRst, $08, nBb1, $04, nRst, $02, nBb0
	dc.b $10, nRst, $02, nBb0, nRst, $04, nBb0, nRst
	dc.b $0E, nC1, $04, nRst, $0E, nC1, $04, nRst
	dc.b $08, nC2, $04, nRst, $02, nC1, $04, nRst
	dc.b $08, nC2, $10, nRst, $02, nC1, $0A, nRst
	dc.b $02, nC2, $0A, nRst, $02, nAb0, $0A, nRst
	dc.b $02, nAb0, nRst, $04, nAb1, nRst, $08, nAb0
	dc.b $04, nRst, $08, nAb0, $04, nRst, $08, nAb1
	dc.b $04, nRst, $02, nAb0, $16, nRst, $02, nAb0
	dc.b $04, nRst, $08, nG0, $0A, nRst, $02, nG0
	dc.b nRst, $04, nG1, nRst, $08, nG0, $04, nRst
	dc.b $08, nG0, $04, nRst, $08, nG1, $04, nRst
	dc.b $02, nG0, $16, nRst, $02, nG0, $04, nRst
	dc.b $08, nF0, $0A, nRst, $02, nF0, nRst, $04
	dc.b nF1, nRst, $08, nF0, $04, nRst, $08, nF0
	dc.b $04, nRst, $08, nF1, $04, nRst, $02, nF0
	dc.b $16, nRst, $02, nF0, nRst, $04, nAb0, nRst
	dc.b $08, nAb0, $04, nRst, $08, nAb0, $04, nRst
	dc.b $08, nAb0, $04, nRst, $02, nAb0, $0A, nRst
	dc.b $02, nG0, $04, nRst, $02, nG0, $04, nRst
	dc.b $08, nG0, $04, nRst, $08, nG1, $04, nRst
	dc.b $02, nG0, $04, nRst, $02, nG0, $04, nRst
	dc.b $02, nF0, $10, nRst, $02, nF0, nRst, $22
	dc.b nG0, $02, nRst, $04, nG1, $0A, nRst, $02
	dc.b nG0, $16, nRst, $02, nAb0, $10, nRst, $02
	dc.b nAb0, nRst, $22, nBb0, $02, nRst, $04, nBb1
	dc.b $0A, nRst, $02, nBb0, $0A, nRst, $02, nBb1
	dc.b $0A, nRst, $02, nF0, $10, nRst, $02, nF0
	dc.b nRst, $22, nG0, $02, nRst, $04, nG1, $0A
	dc.b nRst, $02, nG0, $16, nRst, $02, nC1, $10
	dc.b nRst, $02, nC2, nRst, $04, nBb0, $10, nRst
	dc.b $02, nBb1, nRst, $0A, nAb0, $02, nRst, $04
	dc.b nAb1, $0A, nRst, $02, nG0, $0A, nRst, $02
	dc.b nG1, $0A, nRst, $02, nF0, $10, nRst, $02
	dc.b nF0, nRst, $22, nG0, $02, nRst, $04, nG1
	dc.b $0A, nRst, $02, nG0, $16, nRst, $02, nAb0
	dc.b $10, nRst, $02, nAb0, nRst, $22, nBb0, $02
	dc.b nRst, $04, nBb1, $0A, nRst, $02, nBb0, $0A
	dc.b nRst, $02, nBb1, $0A, nRst, $02, nAb0, $10
	dc.b nRst, $02, nAb0, nRst, $22, nF0, $02, nRst
	dc.b $04, nF0, $0A, nRst, $02, nEb0, $0A, nRst
	dc.b $02, nF0, $0A, nRst, $08, nG0, $04, nRst
	dc.b $08, nG0, $04, nRst, $08, nG0, $04, nRst
	dc.b $02, nG0, $0A, nRst, $02, nG0, $04, nRst
	dc.b $14, nF0, $04, nRst, $02, nFs0, $04, nRst
	dc.b $02, nG0, $04, nRst, $02, nBb0, $04, nRst
	dc.b $02
	sJump		HCZ2_FM4
	dc.b $F2	; Unused

HCZ2_FM5:
	dc.b nRst, $01
	sPan		spRight

HCZ2_Jump1:
	sPatFM		$03
	ssDetune	$02
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $7F, nRst, nRst, $76, nG4, $06, nBb4
	dc.b nC5, nG4, nF4, $02, nEb4, nD4, nC4, nBb3
	dc.b nA3, nG3, nRst, $04, nBb3, $06, nC4, nG3
	dc.b nF3, $02, nFs3, $04, nF3, $06, nEb3, nC3
	dc.b nG3, $02, nA3, nBb3, $08, nBb3, $02, nBb3
	dc.b $04, nA3, $12, nG3, $02, nFs3, nF3, nEb3
	dc.b nD3, nC3, nBb2, nA2, nG2, nRst, $36, nBb3
	dc.b $06, nB3, nC4, nFs3, $02, nG3, $04, nF3
	dc.b $02, nEb3, nC3, nBb2, nA2, nG2, nF2, nEb2
	dc.b $04, nF3, $02, nFs3, $04, nF3, $06, nEb3
	dc.b nF3, nEb3, nC3, nBb2, nG3, $0C, nG3, $06
	dc.b nC4, $12, nA3, $02, nG3, nF3, nEb3, nD3
	dc.b nC3, nRst, $3C, nG4, $06, nBb4, nC5, nG4
	dc.b nF4, $02, nEb4, nD4, nC4, nBb3, nA3, nG3
	dc.b nRst, $04, nBb3, $06, nC4, nG3, nF3, $02
	dc.b nFs3, $04, nF3, $06, nEb3, nC3, nG3, $02
	dc.b nA3, nBb3, $08, nBb3, $02, nBb3, $04, nA3
	dc.b $12, nG3, $02, nF3, nEb3, nD3, nC3, nBb2
	dc.b nA2, nG2, nF2, nRst, $36, nBb3, $06, nB3
	dc.b nC4, nFs3, $02, nG3, $04, nF3, $02, nEb3
	dc.b nC3, nBb2, nA2, nG2, nF2, nEb2, $04, nF3
	dc.b $02, nFs3, $04, nF3, $06, nEb3, nF3, nEb3
	dc.b nC3, nBb2, nG3, $0C, nG3, $06, nEb3, $12
	dc.b nD3, $02, nC3, nBb2, nA2, nG2, nF2, nRst
	dc.b $1E
	sPatFM		$0E
	ssDetune	$FF
	ssModZ80	$0F, $01, $06, $06
	saTranspose	$F4
	dc.b nF3, $06, nFs3, $02, nG3, $04, nBb3, $06
	dc.b nEb4, nF4, nG4, nBb4, nD5, $02, nEb5, $08
	dc.b nRst, $02, nF5, $04, nRst, $02, nFs5, nG5
	dc.b $08, nRst, $02, nC5, $0A, nRst, $02, nFs5
	dc.b nG5, $26, nRst, $02, nF5, $04, nRst, $02
	dc.b nEb5, $04, nRst, $02, nCs5, nD5, $26, nRst
	dc.b $02, nBb4, $34, nRst, $02, nCs5, nD5, $08
	dc.b nRst, $02, nEb5, $04, nRst, $02, nE5, nF5
	dc.b $08, nRst, $02, nBb4, $0A, nRst, $02, nF5
	dc.b nF5, $26, nRst, $02, nEb5, $04, nRst, $02
	dc.b nD5, $04, nRst, $02, nC5, $2E, nRst, $08
	dc.b nD5, $10, nRst, $02, nEb5, $0A, nRst, $02
	dc.b nF5, $0A, nRst, $02, nD5, nEb5, $08, nRst
	dc.b $02, nF5, $04, nRst, $02, nFs5, nG5, $08
	dc.b nRst, $02, nC5, $0A, nRst, $02, nG5, $28
	dc.b nRst, $02, nF5, $04, nRst, $02, nEb5, $04
	dc.b nRst, $02, nCs5, nD5, $26, nRst, $02, nEb5
	dc.b $1C, nRst, $0E, nEb5, $04, nRst, $02, nF5
	dc.b $04, nRst, $02, nFs5, nG5, $08, nRst, $02
	dc.b nEb5, $04, nRst, $02, nG5, $0A, nRst, $02
	dc.b nBb4, $0A, nRst, $02, nC5, $28, nRst, $02
	dc.b nEb5, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b nG5, $2E, nRst, $02, nF5, $12, nEb5, $02
	dc.b nD5, nC5, nBb4, nAb4, nG4, nF4, nEb4, nD4
	sPatFM		$03
	ssDetune	$02
	ssModZ80	$0F, $01, $06, $06
	saTranspose	$0C
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nEb4, $0C, nD4, $02, nC4, nBb3, nAb3, nG3
	dc.b nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst
	dc.b $02, nE4, nF4, nRst, $08, nD4, $10, nRst
	dc.b $02, nC4, $04, nRst, $08, nBb3, $04, nRst
	dc.b $08, nFs3, $02, nG3, $14, nRst, $02, nFs3
	dc.b nG3, $08, nRst, $02, nF3, $04, nRst, $02
	dc.b nFs3, nG3, $28, nC4, $04, nRst, $02, nD4
	dc.b $04, nRst, $02, nEb4, $0C, nD4, $02, nC4
	dc.b nBb3, nAb3, nG3, nF3, nC4, $0A, nRst, $02
	dc.b nEb4, $04, nRst, $02, nE4, nF4, nRst, $08
	dc.b nD4, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nB3, $04, nRst, $08, nC4, $10, nRst, $02
	dc.b nC4, $04, nRst, $02, nD4, $0A, nRst, $02
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b nEb4, $10, nRst, $02, nF4, $0A, nRst, $02
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nEb4, $0C, nD4, $02, nC4, nBb3, nAb3, nG3
	dc.b nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst
	dc.b $02, nE4, nF4, nRst, $08, nD4, $10, nRst
	dc.b $02, nC4, $04, nRst, $08, nBb3, $04, nRst
	dc.b $08, nFs3, $02, nG3, $14, nRst, $02, nFs3
	dc.b nG3, $08, nRst, $02, nF3, $04, nRst, $02
	dc.b nFs3, nG3, $28, nC4, $04, nRst, $02, nD4
	dc.b $04, nRst, $02, nEb4, $10, nRst, $02, nEb4
	dc.b $04, nRst, $08, nD4, $04, nRst, $02, nEb4
	dc.b $10, nRst, $02, nEb4, $04, nRst, $02, nF4
	dc.b $0A, nRst, $02, nEb4, $04, nRst, $08, nAb4
	dc.b $04, nRst, $0E, nC5, $04, nRst, $08, nC5
	dc.b $04, nRst, $08, nC5, $04, nRst, $02, nC5
	dc.b $0A, nRst, $02, nB4, $04, nRst, $2C
	sJump		HCZ2_Jump1
	dc.b $F2	; Unused

HCZ2_PSG1:
	sVolEnvPSG	v0A

HCZ2_Jump2:
	dc.b nC4, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $08
	dc.b nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $60, nRst, $1A, nC4, $04
	dc.b nRst, $02, nG3, $04, nRst, $02, nBb3, $04
	dc.b nRst, $02, nG3, $04, nRst, $08, nG3, $04
	dc.b nRst, $02, nBb3, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nG3, $04
	dc.b nRst, $02, nBb3, $04, nRst, $02, nG3, $04
	dc.b nRst, $60, nRst, nRst, $38, nF4, $06, nFs4
	dc.b nG4, nBb5, nRst, nC5, nFs5, $02, nG5, $12
	dc.b nRst, $70, nC4, $04, nRst, $02, nA4, $04
	dc.b nRst, $02, nG4, $04, nRst, $08, nF4, $04
	dc.b nRst, $02, nFs4, nG4, $04, nE4, nRst, $7F
	dc.b nRst, $31, nF4, $06, nFs4, nG4, nBb5, nRst
	dc.b nC5, nFs5, $02, nG5, $12, nRst, $70, nC5
	dc.b $06, nBb4, nG4, nF4, $04, nFs4, nF4, nEb4
	dc.b $06, nC4, nRst, $12, nBb3, $1E, nRst, $3C
	dc.b nC4, $04, nRst, $02, nC4, $04, nRst, $08
	dc.b nD4, $02, nRst, $04, nEb4, $0A, nRst, $3E
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $08
	dc.b nC4, $02, nRst, $04, nD4, $0A, nRst, $3E
	dc.b nD4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b nEb4, $02, nRst, $04, nF4, $0A, nRst, $08
	dc.b nEb5, $04, nRst, $0E, nD5, $0A, nRst, $02
	dc.b nD5, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nD5, $10, nRst, $02, nEb5, $0A, nRst, $02
	dc.b nF5, $0A, nRst, $3E, nC4, $04, nRst, $02
	dc.b nC4, $04, nRst, $08, nD4, $02, nRst, $04
	dc.b nEb4, $0A, nRst, $3E, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $08, nEb4, $02, nRst, $04
	dc.b nG4, $0A, nRst, $3E, nA3, $04, nRst, $02
	dc.b nA3, $04, nRst, $08, nC4, $02, nRst, $04
	dc.b nEb4, $0A, nRst, $08, nEb4, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nEb4, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b nD4, $04, nRst, $50, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nBb3, $04, nRst, $38
	dc.b nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $38, nB3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nB3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nB3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nG3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nG3, $04, nRst, $38
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $38, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nF4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nBb3, $04, nRst, $02, nG3, $04, nRst, $38
	dc.b nEb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nEb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b nEb4, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nEb5, $04, nRst, $02
	dc.b nEb5, $0A, nRst, $02, nD5, $04, nRst, $2C
	sJump		HCZ2_Jump2
	dc.b $F2	; Unused

HCZ2_PSG2:
	sVolEnvPSG	v08
	dc.b nRst, $01
	ssDetune	$01
	sJump		HCZ2_Jump2
	dc.b $F6, $BB, $E7, $F2	; Unused

HCZ2_PSG3:
	sVolEnvPSG	v02
	sNoisePSG	$E7

HCZ2_Jump3:
	dc.b nRst, $18, nRst, $18, nRst, $18, nRst, $18
	dc.b nRst, $18
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, sHold, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $0C, sHold, $18, sHold, $18, sHold, $18
	dc.b sHold, $18, sHold, $18, sHold, $18
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, sHold, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $0C, sHold, $18

HCZ2_Loop1:
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sLoop		$01, $03, HCZ2_Loop1
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, sHold, $18, sHold, $18, sHold, $18
	dc.b sHold, $18

HCZ2_Loop2:
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sLoop		$01, $03, HCZ2_Loop2
	dc.b sHold, $18, sHold, $18, sHold, $18, sHold, $18

HCZ2_Loop3:
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sLoop		$01, $03, HCZ2_Loop3
	dc.b sHold, $18, sHold, $18, sHold, $18, sHold, $18
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, sHold, $18
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06, sHold, $18, sHold, $18, sHold, $18
	dc.b sHold, $18
	sJump		HCZ2_Jump3
	dc.b $F2	; Unused

HCZ2_Patches:

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
