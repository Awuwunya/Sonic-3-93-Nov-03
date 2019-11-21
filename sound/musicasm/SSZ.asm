SSZ_Header:
	sHeaderInit						; Z80 offset is $E642
	sHeaderPatch	SSZ_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $15
	sHeaderDAC	SSZ_DAC
	sHeaderFM	SSZ_FM1, $0C, $12
	sHeaderFM	SSZ_FM2, $18, $17
	sHeaderFM	SSZ_FM3, $0C, $12
	sHeaderFM	SSZ_FM4, $00, $14
	sHeaderFM	SSZ_FM5, $00, $14
	sHeaderPSG	SSZ_PSG1, $00, $06, $00, v0C
	sHeaderPSG	SSZ_PSG2, $00, $06, $00, v0C
	sHeaderPSG	SSZ_PSG3, $00, $02, $00, v0C
	dc.b $F2, $F2	; Unused

SSZ_DAC:
	dc.b nRst, $32, nRst, $4D, nRst, $32, nRst, $4D
	dc.b nRst, $46, dKick, $18, dKick, dSnare, $06, dSnare
	dc.b $0C, dSnare, $06, dSnare, $18, dKick, $04, dKick
	dc.b $02, dKick, $06, dKick, $0C, dKick, $18, dSnare
	dc.b $06, dSnare, dSnare, dSnare, dSnare, $18, dKick, $06
	dc.b dKick, dKick, $0C, dKick, $24, dSnare, $06, dSnare
	dc.b dSnare, $24, dKick, $0C, dKick, $24, dSnare, $06
	dc.b dSnare, dSnare, $18, dKick, $06, dKick, dSnare, dFloorTom
	dc.b dFloorTom, dFloorTom, dFloorTom, dLowTom, dMidTom, $0C, dSnare, $06
	dc.b dSnare, dSnare, $18, dKick, $04, dKick, $02, dKick
	dc.b $06, dKick, $0C, dKick, $18, dSnare, $06, dSnare
	dc.b dSnare, dSnare, dSnare, $18, dKick, $06, dKick, dKick
	dc.b $0C, dKick, $24, dSnare, $06, dSnare, dSnare, $24
	dc.b dKick, $0C, dKick, $24, dSnare, $06, dSnare, dSnare
	dc.b $18, dKick, $06, dKick, dSnare, dFloorTom, dFloorTom, dFloorTom
	dc.b dFloorTom, dLowTom, dMidTom, $0C, dSnare, $06, dSnare, dSnare
	dc.b $18, dKick, $04, dKick, $02, dKick, $06, dKick
	dc.b $0C, dKick, $18, dSnare, $06, dSnare, dSnare, dSnare
	dc.b dSnare, $18, dKick, $06, dKick, dKick, $0C, dKick
	dc.b $24, dSnare, $06, dSnare, dSnare, $24, dKick, $0C
	dc.b dKick, $24, dSnare, $06, dSnare, dSnare, $18, dKick
	dc.b $06, dKick, dSnare, dFloorTom, dFloorTom, dFloorTom, dFloorTom, dLowTom
	dc.b dMidTom, $0C, dSnare, $06, dSnare, dSnare, $18, dKick
	dc.b $04, dKick, $02, dKick, $06, dKick, $0C, dKick
	dc.b $18, dSnare, $06, dSnare, dSnare, dSnare, dSnare, $18
	dc.b dKick, $06, dKick, dKick, $0C, dKick, $24, dSnare
	dc.b $06, dSnare, dSnare, $24, dKick, $0C, dKick, $24
	dc.b dSnare, $06, dSnare, dSnare, $18, dKick, $06, dKick
	dc.b dSnare, dFloorTom, dFloorTom, dFloorTom, dFloorTom, dLowTom, dMidTom, $0C
	dc.b dSnare, $06, dSnare, dSnare, $18, dKick, $04, dKick
	dc.b $02, dKick, $06, dKick, $0C, dKick, $18, dSnare
	dc.b $06, dSnare, dSnare, dSnare, dSnare, $18, dKick, $06
	dc.b dKick, dKick, $0C, dKick, $24, dSnare, $06, dSnare
	dc.b dSnare, $24, dKick, $0C, dKick, $24, dSnare, $06
	dc.b dSnare, dSnare, $18, dKick, $06, dKick, dSnare, dFloorTom
	dc.b dFloorTom, dFloorTom, dFloorTom, dLowTom, dMidTom, $0C, dSnare, $06
	dc.b dSnare, dSnare, $18, dKick, $04, dKick, $02, dKick
	dc.b $06, dKick, $0C, dKick, $18, dSnare, $06, dSnare
	dc.b dSnare, dSnare, dSnare, $18, dKick, $06, dKick, dKick
	dc.b $0C, dKick, $24, dSnare, $06, dSnare, dSnare, $24
	dc.b dKick, $0C, dKick, $24, dSnare, $06, dSnare, dSnare
	dc.b $18, dKick, $06, dKick, dSnare, dFloorTom, dFloorTom, dFloorTom
	dc.b dFloorTom, dLowTom, dMidTom, $0C, dSnare, $06, dSnare, dSnare
	dc.b $18, dKick, $04, dKick, $02, dKick, $06, dKick
	dc.b $0C, dKick, $18, dSnare, $06, dSnare, dSnare, dSnare
	dc.b dSnare, $18, dKick, $06, dKick, dKick, $0C, dKick
	dc.b $24, dSnare, $06, dSnare, dSnare, $24, dKick, $0C
	dc.b dKick, $24, dSnare, $06, dSnare, dSnare, $18, dKick
	dc.b $06, dKick, dSnare, dFloorTom, dFloorTom, dFloorTom, dFloorTom, dLowTom
	dc.b dMidTom, $0C, dSnare, $06, dSnare, dSnare, $18, dKick
	dc.b $04, dKick, $02, dKick, $06, dKick, $0C, dKick
	dc.b $18, dSnare, $06, dSnare, dSnare, dSnare, dSnare, $18
	dc.b dKick, $06, dKick, dKick, $0C, dKick, $24, dSnare
	dc.b $06, dSnare, dSnare, $24, dKick, $0C, dKick, $24
	dc.b dSnare, $06, dSnare, dSnare, $18, dKick, $06, dKick
	dc.b dSnare, dFloorTom, dFloorTom, dFloorTom, dFloorTom, dLowTom, dMidTom, $0C
	sJump		SSZ_DAC
	dc.b $F2	; Unused

SSZ_FM3:
	sPatFM		$15
	ssDetune	$04
	ssModZ80	$0F, $01, $FD, $07
	sPan		spLeft
	sJump		SSZ_Jump1

SSZ_FM1:
	sPatFM		$15
	ssDetune	$FC
	ssModZ80	$0F, $01, $00, $07
	sPan		spCenter

SSZ_Jump1:
	dc.b nG1, $04, nRst, $08, nG1, $06, nRst, nG1
	dc.b $24, nG2, nG1, $1C, nRst, $08, nG1, $0E
	dc.b nRst, $0A, nC2, $18, nB1, $0A, nRst, $02
	dc.b nG1, $04, nRst, $08, nG1, $06, nRst, nG1
	dc.b $24, nG2, nG1, $1C, nRst, $08, nG1, $0A
	dc.b nRst, $0E, nG1, $0A, nRst, $1A, nC2, $06
	dc.b nRst, nC2, $52, nRst, $02, nC3, $22, nRst
	dc.b $02, nC2, $1E, nRst, $06, nC2, $14, nRst
	dc.b $04, nBb1, $08, nRst, $04, nBb1, $52, nRst
	dc.b $02, nBb2, $24, nBb1, nBb2, $16, nRst, $02
	dc.b nA1, $06, nRst, nA1, $48, nG2, $06, nAb2
	dc.b $04, nRst, $02, nA2, $22, nRst, $02, nA1
	dc.b $24, nA2, $18, nAb1, $08, nRst, $04, nAb1
	dc.b $52, nRst, $02, nAb2, $24, nAb1, nAb2, $16
	dc.b nRst, $02, nC2, $08, nRst, $04, nC2, $52
	dc.b nRst, $02, nC3, $24, nC2, nC3, $18, nBb1
	dc.b $06, nRst, nBb1, $42, nRst, $06, nG2, nA2
	dc.b nBb2, $22, nRst, $02, nA2, $24, nF2, $16
	dc.b nRst, $02, nA1, $06, nRst, nA1, $48, nG2
	dc.b $06, nAb2, $04, nRst, $02, nA2, $22, nRst
	dc.b $02, nA1, $24, nA2, $18, nAb1, $06, nRst
	dc.b nAb1, $4E, nRst, $06, nBb1, nRst, nBb1, $4E
	dc.b nRst, $06, nG1, $48, nG2, $06, nRst, nG2
	dc.b $46, nRst, $02, nG1, $18, nG2, $0C, nAb1
	dc.b $46, nRst, $02, nAb2, $08, nRst, $04, nAb2
	dc.b $46, nRst, $02, nAb1, $0C, nAb2, nAb1, $0A
	dc.b nRst, $02, nG1, $68, nRst, $04, nG2, $18
	dc.b nG1, $24, nG2, $18, nAb1, $3C, nAb2, $22
	dc.b nRst, $02, nBb1, $3C, nBb2, $24, nC2, $5A
	dc.b nRst, $06, nC3, $24, nC2, nC3, $18, nBb1
	dc.b $06, nRst, nBb1, $42, nRst, $06, nG2, nA2
	dc.b nBb2, $22, nRst, $02, nA2, $24, nF2, $16
	dc.b nRst, $02, nA1, $06, nRst, nA1, $48, nG2
	dc.b $06, nAb2, $04, nRst, $02, nA2, $22, nRst
	dc.b $02, nA1, $24, nA2, $18, nAb1, $06, nRst
	dc.b nAb1, $4E, nRst, $06, nBb1, nRst, nBb1, $4E
	dc.b nRst, $06
	sJump		SSZ_Jump1
	dc.b $F2	; Unused

SSZ_FM2:
	saVolFM		$08
	sPatFM		$08
	sJump		SSZ_Jump2

SSZ_Jump4:
	dc.b nG4, $06, nF4, $04, nRst, $02, nB3, $06
	dc.b nC4, $04, nRst, $02, nG4, $06, nF4, nB3
	dc.b $04, nRst, $02, nC4, $06, nG4, nF4, $04
	dc.b nRst, $02, nB3, $06, nC4, $04, nRst, $02
	dc.b nG4, $06, nF4, nB3, $04, nRst, $02, nC4
	dc.b $06, nG4, nF4, $04, nRst, $02, nB3, $06
	dc.b nC4, $04, nRst, $02, nG4, $06, nF4, nB3
	dc.b $04, nRst, $02, nC4, $06, nG4, nF4, $04
	dc.b nRst, $02, nB3, $06, nC4, $04, nRst, $02
	dc.b nG4, $06, nF4, nB3, $04, nRst, $02, nC4
	dc.b $06, nG4, nF4, $04, nRst, $02, nB3, $06
	dc.b nC4, $04, nRst, $02, nG4, $06, nF4, nB3
	dc.b $04, nRst, $02, nC4, $06, nG4, nF4, $04
	dc.b nRst, $02, nB3, $06, nC4, $04, nRst, $02
	dc.b nG4, $06, nF4, nB3, $04, nRst, $02, nC4
	dc.b $06, nG4, nF4, $04, nRst, $02, nB3, $06
	dc.b nC4, $04, nRst, $02, nG4, $06, nF4, nB3
	dc.b $02, nRst, $16, nB3, $02, nRst, $22, nC5
	dc.b $06, nC4, $04, nRst, $02, nC5, $06, nC4
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nC6, $04, nRst, $02
	dc.b nC4, $06, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC5, $04, nRst, $02
	dc.b nC4, $06, nC5, nC4, nC5, nC4, nC6, $04
	dc.b nRst, $02, nC4, $06, nC6, nC4, nC5, nC4
	dc.b nC5, nC4, nC5, nC4, $04, nRst, $02, nC5
	dc.b $06, nC4, nC5, nC4, nC5, nC4, nC6, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nC6, $04
	dc.b nRst, $02, nC4, $06, nC5, $04, nRst, $02
	dc.b nC4, $06, nC5, nC4, nC5, nC4, nC5, $04
	dc.b nRst, $02, nC4, $06, nC5, nC4, nC5, nC4
	dc.b nC6, $04, nRst, $02, nC4, $06, nC6, nC4
	dc.b nC5, nC4, nC5, nC4, nC5, nC4, $04, nRst
	dc.b $02, nC5, $06, nC4, nC5, nC4, nC5, nC4
	dc.b nC6, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nC6, $04, nRst, $02, nC4, $06, nC5, $04
	dc.b nRst, $02, nC4, $06, nC5, nC4, nC5, nC4
	dc.b nC5, $04, nRst, $02, nC4, $06, nC5, nC4
	dc.b nC5, nC4, nC6, $04, nRst, $02, nC4, $06
	dc.b nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4
	dc.b $04, nRst, $02, nC5, $06, nC4, nC5, nC4
	dc.b nC5, nC4, nC6, $04, nRst, $02, nC4, $04
	dc.b nRst, $02, nC6, $04, nRst, $02, nC4, $06
	dc.b nC5, $04, nRst, $02, nC4, $06, nC5, nC4
	dc.b nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	dc.b nC5, nC4, $04, nRst, $02, nC5, $06, nC4
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $04, nRst, $02, nC6, $04, nRst, $02
	dc.b nC4, $06, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC5, $04, nRst, $02
	dc.b nC4, $06, nC5, nC4, nC5, nC4, nC6, $04
	dc.b nRst, $02, nC4, $06, nC6, nC4, nC5, nC4
	dc.b nC5, nC4, nC5, nC4, $04, nRst, $02, nC5
	dc.b $06, nC4, nC5, nC4, nC5, nC4, nC6, $04
	dc.b nRst, $02, nC4, $04, nRst, $02, nC6, $04
	dc.b nRst, $02, nC4, $06, nC5, $04, nRst, $02
	dc.b nC4, $06, nC5, nC4, nC5, nC4, nC5, $04
	dc.b nRst, $02, nC4, $06, nC5, nC4, nC5, nC4
	dc.b nC6, $04, nRst, $02, nC4, $06, nC6, nC4
	dc.b nC5, nC4, nC5, nC4, nC5, nC4, $04, nRst
	dc.b $02, nC5, $06, nC4, nC5, nC4, nC5, nC4
	dc.b nC6, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b nC6, $04, nRst, $02, nC4, $06, nC5, $04
	dc.b nRst, $02, nC4, $06, nC5, nC4, nC5, nC4
	dc.b nC5, $04, nRst, $02, nC4, $06, nC5, nC4
	dc.b nC5, nC4, nC6, $04, nRst, $02, nC4, $06
	dc.b nC6, nC4, nC5, nC4, nC5, nC4, nC5, nC4
	dc.b $04, nRst, $02, nC5, $06, nC4, nC5, nC4
	dc.b nC5, nC4, nC6, $04, nRst, $02, nC4, $04
	dc.b nRst, $02, nC6, $04, nRst, $02, nC4, $06
	dc.b nC5, $04, nRst, $02, nC4, $06, nC5, nC4
	dc.b nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	dc.b nG5, nG4, nG5, $04, nRst, $02, nG4, $06
	dc.b nG5, nG4, nG5, nG4, nG6, $04, nRst, $02
	dc.b nG4, $06, nG6, nG4, nG5, nG4, nG5, nG4
	dc.b nG5, nG4, nG5, $04, nRst, $02, nG4, $06
	dc.b nG5, nG4, nG5, nG4, nG6, $04, nRst, $02
	dc.b nG4, $06, nG6, nG4, nG5, nG4, nG5, nG4
	dc.b nAb5, nAb4, nAb5, $04, nRst, $02, nAb4, $06
	dc.b nAb5, nAb4, nAb5, nAb4, nAb6, $04, nRst, $02
	dc.b nAb4, $06, nAb6, nAb4, nAb5, nAb4, nAb5, nAb4
	dc.b nAb5, nAb4, nAb5, $04, nRst, $02, nAb4, $06
	dc.b nAb5, nAb4, nAb5, nAb4, nAb6, $04, nRst, $02
	dc.b nAb4, $06, nAb6, nAb4, nAb5, nAb4, nAb5, nAb4
	dc.b nG5, nG4, nG5, $04, nRst, $02, nG4, $06
	dc.b nG5, nG4, nG5, nG4, nG6, $04, nRst, $02
	dc.b nG4, $06, nG6, nG4, nG5, nG4, nG5, nG4
	dc.b nG5, nG4, nG5, $04, nRst, $02, nG4, $06
	dc.b nG5, nG4, nG5, nG4, nG6, $04, nRst, $02
	dc.b nG4, $06, nG6, nG4, nG5, nG4, nG5, nG4
	dc.b nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	dc.b nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	dc.b nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	dc.b nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	dc.b nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	dc.b nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	dc.b nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	dc.b nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	dc.b nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	dc.b nC5, nC4, nC5, $04, nRst, $02, nC4, $06
	dc.b nC5, nC4, nC5, nC4, nC6, $04, nRst, $02
	dc.b nC4, $06, nC6, nC4, nC5, nC4, nC5, nC4
	sJump		SSZ_Jump4
	dc.b $F2	; Unused

SSZ_PSG1:
	sVolEnvPSG	v02
	ssDetune	$00
	dc.b nRst, $01
	sJump		SSZ_Jump4

SSZ_PSG2:
	sVolEnvPSG	v02
	ssDetune	$FF
	sJump		SSZ_Jump4

SSZ_Jump2:
	dc.b nF4, $12, nE4, nC4, $0C, nC5, $12, nB4
	dc.b $10, nRst, $02, nG4, $0C, nF4, $12, nE4
	dc.b nC4, $0C, nC5, $12, nB4, $10, nRst, $02
	dc.b nG4, $0C, nF4, $12, nE4, nC4, $0C, nC5
	dc.b $12, nB4, $10, nRst, $02, nG4, $0C, nF4
	dc.b $12, nE4, nC4, $0A, nRst, $0E, nC4, $0A
	dc.b nRst, $1A, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, nRst, $04, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $04, nRst, $02, nE2
	dc.b $04, nRst, $02, nC2, $06, nF2, $04, nRst
	dc.b $02, nC2, $06, nE2, $04, nRst, $02, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $06, nE2
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, nRst, $04, nC2
	dc.b $06, nD2, $04, nRst, $02, nC2, $04, nRst
	dc.b $02, nE2, $04, nRst, $02, nC2, $06, nF2
	dc.b $04, nRst, $02, nC2, $06, nE2, $04, nRst
	dc.b $02, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $06, nE2, nC2, $04, nRst, $02, nC2, $04
	dc.b nRst, $02, nC2, $04, nRst, $02, nC2, nRst
	dc.b $04, nC2, $06, nD2, $04, nRst, $02, nC2
	dc.b $04, nRst, $02, nE2, $04, nRst, $02, nC2
	dc.b $06, nF2, $04, nRst, $02, nC2, $06, nE2
	dc.b $04, nRst, $02, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $06, nE2, nC2, $04, nRst, $02
	dc.b nC2, $04, nRst, $02, nC2, $04, nRst, $02
	dc.b nC2, nRst, $04, nC2, $06, nD2, $04, nRst
	dc.b $02, nC2, $04, nRst, $02, nE2, $04, nRst
	dc.b $02, nC2, $06, nF2, $04, nRst, $02, nC2
	dc.b $06, nE2, $04, nRst, $02, nC2, $06, nD2
	dc.b $04, nRst, $02, nC2, $06, nE2, nC2, $04
	dc.b nRst, $02
	sJump		SSZ_Jump2
	dc.b $80, $7F, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $08, $F2	; Unused

SSZ_FM4:
	sPatFM		$0A
	ssDetune	$04
	ssModZ80	$19, $01, $F9, $06
	sPan		spLeft

SSZ_Jump3:
	dc.b nC4, $12, nB3, nG3, $0C, nG4, $12, nF4
	dc.b nE4, $0C, nC4, $10, nRst, $02, nB3, $12
	dc.b nG3, $0C, nG4, $12, nF4, nE4, $0C, nC4
	dc.b $10, nRst, $02, nB3, $12, nG3, $0C, nG4
	dc.b $12, nF4, nE4, $0C, nC4, $12, nB3, $10
	dc.b nRst, $02, nG3, $0E, nRst, $0A, nG3, $0E
	dc.b nRst, $16, nC5, $54, nC4, $06, nE4, nF4
	dc.b $22, nRst, $02, nE4, $18, nC4, $12, nRst
	dc.b $06, nC4, $08, nRst, $04, nC5, $48, nRst
	dc.b $0C, nC4, $06, nE4, nF4, $24, nE4, $16
	dc.b nRst, $02, nC4, $1C, nRst, $20, nA3, $0E
	dc.b nRst, $16, nC4, $0C, nRst, $18, nF3, $0C
	dc.b nRst, $18, nA3, $1C, nRst, $08, nA3, $12
	dc.b nRst, $2A, nAb3, $0C, nC4, nBb3, nAb3, nEb4
	dc.b $18, nC4, $0C, nD4, nEb4, $16, nRst, $02
	dc.b nD4, $0C, nC4, $18, nC5, $50, nRst, $04
	dc.b nC4, $06, nE4, nF4, $22, nRst, $02, nE4
	dc.b $14, nRst, $04, nC4, $14, nRst, $04, nC4
	dc.b nRst, $02, nC4, $04, nRst, $02, nC5, $4E
	dc.b nRst, $06, nC4, nE4, nF4, $24, nE4, $16
	dc.b nRst, $02, nC4, $14, nRst, $04, nC4, $0E
	dc.b nRst, $16, nA3, $0C, nRst, $18, nC4, $08
	dc.b nRst, $1C, nF3, $08, nRst, $1C, nA3, $20
	dc.b nRst, $04, nA3, $12, nRst, $2A, nAb3, $0C
	dc.b nC4, nBb3, $0A, nRst, $02, nAb3, $0C, nEb4
	dc.b $18, nD4, $0C, nC4, nF4, $18, nEb4, $0A
	dc.b nRst, $02, nF4, $12, nRst, $06, nG4, $24
	dc.b nEb5, $22, nRst, $02, nD5, $24, nG4, $54
	dc.b nAb4, $24, nEb5, $22, nRst, $02, nC5, $24
	dc.b nF5, nEb5, $18, nD5, $14, nRst, $04, nAb4
	dc.b $24, nEb5, $1C, nRst, $08, nD5, $22, nRst
	dc.b $02, nG4, $54, nAb4, $24, nC5, nEb5, $16
	dc.b nRst, $02, nG5, $18, nF5, $0C, nEb5, $18
	dc.b nF5, $1E, nRst, $06, nC5, $4E, nRst, $06
	dc.b nC4, nE4, $04, nRst, $02, nF4, $24, nE4
	dc.b $16, nRst, $02, nC4, $12, nRst, $06, nC4
	dc.b $02, nRst, $04, nC4, $02, nRst, $04, nC5
	dc.b $48, nRst, $0C, nC5, $04, nRst, $02, nE5
	dc.b $04, nRst, $02, nF5, $1E, nRst, $06, nE5
	dc.b $16, nRst, $02, nC5, $10, nRst, $08, nC5
	dc.b $0A, nRst, $02, nG5, $0C, nC5, $10, nRst
	dc.b $20, nC5, $08, nRst, $04, nG5, $0C, nC5
	dc.b $08, nRst, $10, nC5, $0C, nRst, nC5, $08
	dc.b nRst, $04, nG5, $0C, nC5, nRst, nC5, $06
	dc.b nRst, nBb5, $24, nAb5, $22, nRst, $02, nG5
	dc.b $20, nRst, $04, nF5, $24, nEb5, $12, nRst
	dc.b $06, nF5, $08, nRst, $04, nG5, $0C
	sJump		SSZ_Jump3
	dc.b $80, $7F, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $27, $F2	; Unused

SSZ_FM5:
	dc.b nRst, $03
	saVolFM		$04
	sPatFM		$0A
	ssDetune	$FC
	ssModZ80	$19, $01, $07, $06
	sPan		spRight
	sJump		SSZ_Jump3
	dc.b $F2	; Unused

SSZ_PSG3:
	sNoisePSG	$E7

SSZ_Jump5:
	sVolEnvPSG	v01
	dc.b nB6, $06
	sVolEnvPSG	v01
	dc.b nB6, $06
	sVolEnvPSG	v04
	dc.b nB6, $0C
	sVolEnvPSG	v01
	dc.b nB6, $06
	sVolEnvPSG	v01
	dc.b nB6, $06
	sVolEnvPSG	v04
	dc.b nB6, $0C
	sJump		SSZ_Jump5
	dc.b $F2	; Unused

SSZ_Patches:

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
