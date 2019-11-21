CNZ2_Header:
	sHeaderInit						; Z80 offset is $9BBB
	sHeaderPatch	CNZ2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $25
	sHeaderDAC	CNZ2_DAC
	sHeaderFM	CNZ2_FM1, $0C, $13
	sHeaderFM	CNZ2_FM2, $0C, $13
	sHeaderFM	CNZ2_FM3, $18, $18
	sHeaderFM	CNZ2_FM4, $18, $0C
	sHeaderFM	CNZ2_FM5, $0C, $18
	sHeaderPSG	CNZ2_PSG1, $F4, $05, $00, v0C
	sHeaderPSG	CNZ2_PSG2, $F4, $05, $00, v0C
	sHeaderPSG	CNZ2_PSG3, $00, $03, $00, v0C
	dc.b $F2, $F2	; Unused

CNZ2_DAC:
	dc.b dSnare, $0C, dClap, dSnare, $06, dClap, $0C, dClap
	dc.b $06, dSnare, dClap, dClap, $0C, dSnare, dClap, dSnare
	dc.b dClap, dSnare, $06, dClap, $0C, dSnare
	sPan		spLeft
	dc.b dHighTom, $02, dHighTom, dHighTom
	sPan		spCenter
	dc.b dHighTom, $06, dHighTom, dMidTom, dMidTom
	sPan		spRight
	dc.b dLowTom, dFloorTom
	sPan		spCenter
	dc.b dSnare, $0C, dClap, dSnare, $06, dClap, $0C, dClap
	dc.b $06, dSnare, dClap, dClap, $0C, dSnare, dClap, dSnare
	dc.b dClap, dSnare, $06, dClap, $0C, dSnare, $1E, dSnare
	dc.b $06, dSnare, dSnare, dSnare, dKick, $18, dSnare, $12
	dc.b dKick, $0C, dKick, dKick, $06, dSnare, $18, dKick
	dc.b dSnare, $12, dKick, $0C, dKick, dKick, $06, dSnare
	dc.b $18, dKick, dSnare, $12, dKick, $0C, dKick, dKick
	dc.b $06, dSnare, $18, dKick, $12, dSnare, $0C, dSnare
	dc.b dSnare, $06, dSnare
	sPan		spLeft
	dc.b dHighTom, $02, dHighTom, $04, dHighTom, $06
	sPan		spCenter
	dc.b dMidTom, dMidTom
	sPan		spRight
	dc.b dLowTom, $0C, dFloorTom, $06
	sPan		spCenter
	dc.b dKick, $18, dSnare, $12, dKick, $0C, dKick, dKick
	dc.b $06, dSnare, $18, dKick, dSnare, $12, dKick, $0C
	dc.b dKick, dKick, $06, dSnare, $18, dKick, dSnare, $12
	dc.b dKick, $0C, dKick, dKick, $06, dSnare, $18, dKick
	dc.b $12, dSnare, $0C, dSnare, dSnare, $06, dSnare, dMidMetalHit
	dc.b dMidMetalHit, dMidMetalHit, dHigherMetalHit, dHigherMetalHit, $0C, dHigherMetalHit, $06, dKick
	dc.b dMetalHit, dMetalHit, dLowMetalHit, dSnare, dMetalHit, dLowMetalHit, dKick, $0C
	dc.b dMetalHit, $06, dMetalHit, dLowMetalHit, dSnare, dMetalHit, dLowMetalHit, dLowMetalHit
	dc.b dKick, dMetalHit, dMetalHit, dLowMetalHit, dSnare, dMetalHit, dLowMetalHit, dKick
	dc.b $0C, dMetalHit, $06, dMetalHit, dLowMetalHit, dSnare, dMetalHit, dLowMetalHit
	dc.b dLowMetalHit, dKick, dMetalHit, dMetalHit, dLowMetalHit, dSnare, dMetalHit, dLowMetalHit
	dc.b dKick, $0C, dMetalHit, $06, dMetalHit, dLowMetalHit, dSnare, dMetalHit
	dc.b dLowMetalHit, dLowMetalHit, dKick, dMetalHit, dMetalHit, dLowMetalHit, dSnare, dMetalHit
	dc.b dLowMetalHit, dKick, $0C, dSnare, $12
	sPan		spLeft
	dc.b dHighTom, $04, dHighTom, dHighTom
	sPan		spCenter
	dc.b dMidTom, $06
	sPan		spRight
	dc.b dLowTom
	sPan		spCenter
	dc.b dKick, dMetalHit, dMetalHit, dLowMetalHit, dSnare, dMetalHit, dLowMetalHit, dKick
	dc.b $0C, dMetalHit, $06, dMetalHit, dLowMetalHit, dSnare, dMetalHit, dLowMetalHit
	dc.b dLowMetalHit, dKick, dMetalHit, dMetalHit, dLowMetalHit, dSnare, dMetalHit, dLowMetalHit
	dc.b dKick, $0C, dMetalHit, $06, dMetalHit, dLowMetalHit, dSnare, dMetalHit
	dc.b dLowMetalHit, dLowMetalHit, dKick, dMetalHit, dMetalHit, dLowMetalHit, dSnare, dMetalHit
	dc.b dLowMetalHit, dKick, $0C, dMetalHit, $06, dMetalHit, dLowMetalHit, dSnare
	dc.b dMetalHit, dLowMetalHit, dLowMetalHit, dKick, $12, dSnare, dSnare, $06
	dc.b dSnare, $0C, dSnare, $12, dSnare, $06, dSnare, dSnare
	dc.b dSnare, dKick, $18, dSnare, $12, dKick, $0C, dKick
	dc.b dKick, $06, dSnare, $18, dKick, dSnare, $12, dKick
	dc.b $0C, dKick, dKick, $06, dSnare, $18, dKick, dSnare
	dc.b $12, dKick, $0C, dKick, dKick, $06, dSnare, $18
	dc.b dKick, dSnare, $12, dKick, $0C, dKick, dKick, $06
	dc.b dSnare, dSnare, $0C, dSnare, $06, dKick, $18, dSnare
	dc.b $12, dKick, $0C, dKick, dKick, $06, dSnare, $18
	dc.b dKick, dSnare, $12, dKick, $0C, dKick, dKick, $06
	dc.b dSnare, $18, dKick, dSnare, $12, dKick, $0C, dKick
	dc.b dKick, $06, dSnare, $18, dSnare, $06, dSnare, $0C
	dc.b dSnare, $06, dSnare, $0C, dSnare, $06, dSnare, $0C
	dc.b dSnare, $06, dSnare, $12, dSnare, $06, dSnare, dSnare
	dc.b $04, nRst, $02
	sJump		CNZ2_DAC
	dc.b $F2	; Unused

CNZ2_FM1:
	sPan		spCenter
	sPatFM		$06
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	dc.b nCs4, $04, nRst, $08, nCs4, $04, nRst, $08
	dc.b nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nC4, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nA3, $04, nRst, $02, nA3, $0A, nRst, $02
	dc.b nCs4, $04, nRst, $08, nCs4, $04, nRst, $08
	dc.b nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nC3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nA3, $04, nRst, $08, nA3, $04, nRst, $02
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b nG4, $10, nRst, $02, nA4, $04, nRst, $08
	dc.b nA4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b nFs4, $04, nRst, $02, nFs4, $0A, nRst, $02
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b nG4, $10, nRst, $02, nA4, $04, nRst, $08
	dc.b nA2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nFs4, $04, nRst, $02
	dc.b nA4, $04, nRst, $02, nC4, $10, nRst, $02
	dc.b nC4, $04, nRst, $02, nE4, $10, nRst, $02
	dc.b nC4, $04, nRst, $26, nC4, $0A, nRst, $02
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $08
	dc.b nA3, $04, nRst, $14, nBb3, $0A, nRst, $02
	dc.b nC4, $10, nRst, $02, nC4, $04, nRst, $02
	dc.b nE4, $10, nRst, $02, nC4, $04, nRst, $26
	dc.b nC4, $0A, nRst, $02, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $08, nA3, $04, nRst, $14
	dc.b nBb3, $0A, nRst, $02, nC4, $10, nRst, $02
	dc.b nC4, $04, nRst, $02, nE4, $10, nRst, $02
	dc.b nC4, $04, nRst, $26, nC4, $0A, nRst, $02
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nBb3, $04, nRst, $08
	dc.b nA3, $04, nRst, $14, nBb3, $0A, nRst, $02
	dc.b nC4, $10, nRst, $02, nC4, $04, nRst, $02
	dc.b nE4, $10, nRst, $02, nC4, $04, nRst, $26
	dc.b nC4, $0A, nRst, $02, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $02
	dc.b nBb3, $04, nRst, $2C
	sPatFM		$20
	ssDetune	$00
	ssModZ80	$0A, $01, $00, $06
	sPan		spLeft
	dc.b nC3, $16, nRst, $02, nD3, $10, nRst, $02
	dc.b nEb3, $04, nRst, $08, nEb3, $04, nRst, $02
	dc.b nD3, $0A, nRst, $02, nEb3, $0A, nRst, $02
	dc.b nC3, $0A, nRst, $02, nBb2, $28, nRst, $02
	dc.b nD3, $04, nRst, $08, nBb2, $04, nRst, $02
	dc.b nD3, $0A, nRst, $02, nG3, $0A, nRst, $02
	dc.b nBb3, $0A, nRst, $02, nC3, $16, nRst, $02
	dc.b nD3, $10, nRst, $02, nEb3, $04, nRst, $08
	dc.b nEb3, $04, nRst, $02, nD3, $0A, nRst, $02
	dc.b nEb3, $0A, nRst, $02, nC3, $0A, nRst, $02
	dc.b nBb2, $16, nRst, $02, nC3, $10, nRst, $02
	dc.b nD3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b nBb2, $0A, nRst, $02, nD3, $0A, nRst, $02
	dc.b nF3, $0A, nRst, $02, nC3, $16, nRst, $02
	dc.b nD3, $10, nRst, $02, nEb3, $04, nRst, $08
	dc.b nEb3, $04, nRst, $02, nD3, $0A, nRst, $02
	dc.b nEb3, $0A, nRst, $02, nC3, $0A, nRst, $02
	dc.b nBb2, $16, nRst, $02, nC3, $10, nRst, $02
	dc.b nD3, $04, nRst, $08, nBb2, $04, nRst, $02
	dc.b nD3, $0A, nRst, $02, nG3, $0A, nRst, $02
	dc.b nBb3, $0A, nRst, $02, nC3, $16, nRst, $02
	dc.b nD3, $10, nRst, $02, nEb3, $04, nRst, $08
	dc.b nEb3, $04, nRst, $02, nD3, $0A, nRst, $02
	dc.b nEb3, $0A, nRst, $02, nF3, $0A, nRst, $02
	dc.b nG3, $0A, nRst, $02, nF3, $04, nRst, $02
	dc.b nG3, $04, nRst, $20, nFs3, $02, nG3, nRst
	dc.b $08, nF3, $04, nRst, $02, nG3, $0A, nRst
	dc.b $02, nF3, $0A, nRst, $02
	sPatFM		$06
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	sPan		spCenter
	dc.b nBb3, $06, nBb3, nBb3, nBb3, nRst, $0C, nD4
	dc.b $12, nEb4, $06, nRst, nEb4, nD4, nRst, $12
	dc.b nC4, $06, nC4, nC4, nC4, nRst, $0C, nBb3
	dc.b $06, nC4, nRst, nD4, $12, nBb3, $06, nRst
	dc.b nAb3, nRst, nG3, nG3, nG3, nG3, nRst, $0C
	dc.b nD4, $12, nEb4, $06, nRst, nEb4, nD4, nRst
	dc.b $12
	sPatFM		$21
	ssDetune	$01
	ssModZ80	$0A, $01, $06, $06
	dc.b nAb4, $18, nAb4, $12, nG4, $06, nRst
	sPatFM		$06
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	dc.b nAb3, nRst, nF3, nAb3, nRst, nC4, nRst, nBb3
	dc.b nBb3, nBb3, nBb3, nRst, $0C, nD4, $12, nEb4
	dc.b $06, nRst, nEb4, nD4, nRst, $12, nC4, $06
	dc.b nC4, nC4, nC4, nRst, $0C, nBb3, $06, nC4
	dc.b nRst, nD4, $12, nBb3, $06, nRst, nAb3, nRst
	dc.b nG3, nG3, nG3, nG3, nRst, $0C, nD4, $12
	dc.b nEb4, $06, nRst, nEb4, nD4, nRst, $12
	sPatFM		$21
	ssDetune	$01
	ssModZ80	$0A, $01, $06, $06
	dc.b nA3, $06, nA3, nRst, nA3, nA3, nRst, nA3
	dc.b nA3, nRst, nA3, nA3, $0C, nG3, $02, nF3
	dc.b nEb3, nD3, nC3, nBb2, nA2, nRst, $0A
	sJump		CNZ2_FM1
	dc.b $F2	; Unused

CNZ2_FM2:
	sPan		spCenter
	sPatFM		$06
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nG3, $10, nRst, $02, nA3, $04, nRst, $08
	dc.b nA3, $04, nRst, $08, nA3, $04, nRst, $08
	dc.b nFs3, $04, nRst, $02, nFs3, $0A, nRst, $02
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nG3, $10, nRst, $02, nA3, $04, nRst, $08
	dc.b nA2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nF3, $04, nRst, $02, nFs3, $04, nRst, $02
	dc.b nFs3, $04, nRst, $08, nFs3, $04, nRst, $02
	dc.b nFs4, $04, nRst, $08, nFs4, $04, nRst, $08
	dc.b nEb4, $10, nRst, $02, nF4, $04, nRst, $08
	dc.b nF4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b nD4, $04, nRst, $02, nD4, $0A, nRst, $02
	dc.b nFs4, $04, nRst, $08, nFs4, $04, nRst, $08
	dc.b nEb4, $10, nRst, $02, nF4, $04, nRst, $08
	dc.b nF2, $04, nRst, $02, nA2, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nFs3, $04, nRst, $02
	dc.b nA3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nFs4, $04, nRst, $02, nE3, $10, nRst, $02
	dc.b nE3, $04, nRst, $02, nG3, $10, nRst, $02
	dc.b nE3, $04, nRst, $08
	sPatFM		$06
	ssDetune	$01
	ssModZ80	$08, $01, $0A, $03
	dc.b nC4, $04, nRst, $02, nC5, $10, nRst, $08
	sPatFM		$06
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	dc.b nE3, $0A, nRst, $02, nD3, $04, nRst, $02
	dc.b nD3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b nD3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b nD3, $04, nRst, $08, nC3, $04, nRst, $14
	dc.b nD3, $0A, nRst, $02, nE3, $10, nRst, $02
	dc.b nE3, $04, nRst, $02, nG3, $10, nRst, $02
	dc.b nE3, $04, nRst, $08
	sPatFM		$06
	ssDetune	$01
	ssModZ80	$08, $01, $0A, $03
	dc.b nC4, $04, nRst, $02, nC5, $10, nRst, $08
	sPatFM		$06
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	dc.b nE3, $0A, nRst, $02, nD3, $04, nRst, $02
	dc.b nD3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b nD3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b nD3, $04, nRst, $08, nC3, $04, nRst, $14
	dc.b nD3, $0A, nRst, $02, nE3, $10, nRst, $02
	dc.b nE3, $04, nRst, $02, nG3, $10, nRst, $02
	dc.b nE3, $04, nRst, $08
	sPatFM		$06
	ssDetune	$01
	ssModZ80	$08, $01, $0A, $03
	dc.b nC4, $04, nRst, $02, nC5, $10, nRst, $08
	sPatFM		$06
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	dc.b nE3, $0A, nRst, $02, nD3, $04, nRst, $02
	dc.b nD3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b nD3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b nD3, $04, nRst, $08, nC3, $04, nRst, $14
	dc.b nD3, $0A, nRst, $02, nE3, $10, nRst, $02
	dc.b nE3, $04, nRst, $02, nG3, $10, nRst, $02
	dc.b nE3, $04, nRst, $08
	sPatFM		$06
	ssDetune	$01
	ssModZ80	$08, $01, $0A, $03
	dc.b nC4, $04, nRst, $02, nC5, $10, nRst, $08
	sPatFM		$06
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	dc.b nE3, $0A, nRst, $02, nD3, $04, nRst, $02
	dc.b nD3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b nD3, $04, nRst, $08, nD3, $04, nRst, $02
	dc.b nD3, $04, nRst, $1A, nA2, $04, nRst, $02
	dc.b nBb2, $04, nRst, $02, nC3, $04, nRst, $02
	sPatFM		$20
	ssDetune	$00
	ssModZ80	$0A, $01, $00, $06
	sPan		spRight
	dc.b nAb2, $16, nRst, $02, nBb2, $10, nRst, $02
	dc.b nC3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nBb2, $0A, nRst, $02, nC3, $0A, nRst, $02
	dc.b nAb2, $0A, nRst, $02, nG2, $28, nRst, $02
	dc.b nBb2, $04, nRst, $08, nG2, $04, nRst, $02
	dc.b nBb2, $0A, nRst, $02, nD3, $0A, nRst, $02
	dc.b nG3, $0A, nRst, $02, nAb2, $16, nRst, $02
	dc.b nBb2, $10, nRst, $02, nC3, $04, nRst, $08
	dc.b nC3, $04, nRst, $02, nBb2, $0A, nRst, $02
	dc.b nC3, $0A, nRst, $02, nAb2, $0A, nRst, $02
	dc.b nG2, $16, nRst, $02, nAb2, $10, nRst, $02
	dc.b nBb2, $04, nRst, $08, nBb2, $04, nRst, $02
	dc.b nG2, $0A, nRst, $02, nBb2, $0A, nRst, $02
	dc.b nD3, $0A, nRst, $02, nAb2, $16, nRst, $02
	dc.b nBb2, $10, nRst, $02, nC3, $04, nRst, $08
	dc.b nC3, $04, nRst, $02, nBb2, $0A, nRst, $02
	dc.b nC3, $0A, nRst, $02, nAb2, $0A, nRst, $02
	dc.b nG2, $16, nRst, $02, nAb2, $10, nRst, $02
	dc.b nBb2, $04, nRst, $08, nG2, $04, nRst, $02
	dc.b nBb2, $0A, nRst, $02, nD3, $0A, nRst, $02
	dc.b nG3, $0A, nRst, $02, nAb2, $16, nRst, $02
	dc.b nBb2, $10, nRst, $02, nC3, $04, nRst, $08
	dc.b nC3, $04, nRst, $02, nBb2, $0A, nRst, $02
	dc.b nC3, $0A, nRst, $02, nD3, $0A, nRst, $02
	dc.b nAb2, $0A, nRst, $02, nAb2, $04, nRst, $02
	dc.b nAb2, $04, nRst, $20, nD3, $04, nRst, $08
	dc.b nD3, $04, nRst, $02, nD3, $0A, nRst, $02
	dc.b nD3, $0A, nRst, $02
	sPatFM		$06
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	sPan		spCenter
	dc.b nG3, $06, nG3, nG3, nG3, nRst, $0C, nF3
	dc.b $12, nG3, $06, nRst, nG3, nF3, nRst, $12
	dc.b nAb3, $06, nAb3, nAb3, nAb3, nRst, $0C, nF3
	dc.b $06, nAb3, nRst, nBb3, $12, nF3, $06, nRst
	dc.b nEb3, nRst, nEb3, nEb3, nEb3, nEb3, nRst, $0C
	dc.b nF3, $12, nG3, $06, nRst, nG3, nF3, nRst
	dc.b $12
	sPatFM		$21
	ssDetune	$FF
	ssModZ80	$0A, $01, $06, $06
	dc.b nC4, $18, nC4, $12, nBb3, $06, nRst
	sPatFM		$06
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	dc.b nF3, nRst, nCs3, nF3, nRst, nAb3, nRst, nG3
	dc.b nG3, nG3, nG3, nRst, $0C, nF3, $12, nG3
	dc.b $06, nRst, nG3, nF3, nRst, $12, nAb3, $06
	dc.b nAb3, nAb3, nAb3, nRst, $0C, nF3, $06, nAb3
	dc.b nRst, nBb3, $12, nF3, $06, nRst, nEb3, nRst
	dc.b nEb3, nEb3, nEb3, nEb3, nRst, $0C, nF3, $12
	dc.b nG3, $06, nRst, nG3, nF3, nRst, $12
	sPatFM		$21
	ssDetune	$FF
	ssModZ80	$0A, $01, $06, $06
	dc.b nEb3, $06, nEb3, nRst, nEb3, nEb3, nRst, nEb3
	dc.b nEb3, nRst, nEb3, nEb3, $0C, nD3, $02, nC3
	dc.b nBb2, nA2, nG2, nF2, nEb2, nRst, $0A
	sJump		CNZ2_FM2
	dc.b $F2	; Unused

CNZ2_FM3:
	sPan		spLeft

CNZ2_Jump1:
	sPatFM		$0D
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $04
	dc.b nFs3, $04, nRst, $08, nFs3, $04, nRst, $08
	dc.b nEb3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b nD3, $04, nRst, $02, nD3, $0A, nRst, $02
	dc.b nFs3, $04, nRst, $08, nFs3, $04, nRst, $08
	dc.b nEb3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b nF2, $04, nRst, $02, nA2, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nA3, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b nCs4, $04, nRst, $08, nCs4, $04, nRst, $08
	dc.b nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nC4, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nA3, $04, nRst, $02, nA3, $0A, nRst, $02
	dc.b nCs4, $04, nRst, $08, nCs4, $04, nRst, $08
	dc.b nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nC2, $04, nRst, $02, nF2, $04, nRst, $02
	dc.b nA2, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nFs3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02
	sPatFM		$03
	ssDetune	$FE
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb4, nE4, nRst, $08, nF4, $04, nRst, $08
	dc.b nG4, $16, nRst, $14, nE4, $04, nRst, $02
	dc.b nF4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b nBb4, $04, nRst, $02, nBb4, $04, nRst, $08
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b nBb4, $04, nRst, $02, nBb4, $04, nRst, $08
	dc.b nA4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b nF4, $04, nRst, $08, nEb4, $02, nE4, nRst
	dc.b $08, nF4, $04, nRst, $08, nG4, $16, nRst
	dc.b $14, nEb5, $02, nE5, $04, nD5, nRst, $08
	dc.b nC5, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b nBb4, $08, nA4, $02, nG4, nF4, nE4, nD4
	dc.b nC4, nBb3, nRst, nG4, $04, nRst, $08, nF4
	dc.b $04, nRst, $08, nEb4, $02, nE4, nRst, $08
	dc.b nF4, $04, nRst, $08, nG4, $16, nRst, $14
	dc.b nE4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b nG4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b nG4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b nEb4, $02, nE4, nRst, $08, nF4, $04, nRst
	dc.b $08, nG4, $16, nRst, $14, nEb5, $02, nE5
	dc.b $04, nD5, nRst, $08, nC5, $04, nRst, $08
	dc.b nC5, $04, nRst, $02, nF5, $04, nRst, $08
	dc.b nC5, $04, nRst, $08, nF5, $04, nRst, $08
	dc.b nC5, $04, nRst, $02, nF5, $08, nE5, $02
	dc.b nD5, nC5, nBb4, nA4, nG4, nF4, nRst, $08
	sPatFM		$21
	ssDetune	$01
	ssModZ80	$0A, $01, $06, $06
	sPan		spCenter
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nF4, $04, nRst, $02, nEb4, $06, nD4, nEb4
	dc.b nF4, nRst, nD4, nRst, nBb3, $2A, nEb4, $0C
	dc.b nD4, $06, nD4, nRst, nD4, nRst, nBb3, nRst
	dc.b nF3, $0C, nF3, $06, nG3, $0C, nBb3, nD4
	dc.b nEb4, $06, nD4, nEb4, nF4, nRst, nD4, nRst
	dc.b nBb3, $2A, nEb4, $0C, nD4, $06, nC4, nD4
	dc.b nEb4, $0C, nD4, $06, nEb4, nF4, $0C, nEb4
	dc.b $06, nF4, nG4, $0C, nF4, $06, nG4, $0C
	dc.b nEb4, $06, nD4, nEb4, nF4, nRst, nD4, nRst
	dc.b nBb3, $2A, nEb4, $0C, nD4, $06, nD4, nRst
	dc.b nD4, nRst, nBb3, nRst, nF3, $0C, nF3, $06
	dc.b nG3, $0C, nBb3, nD4, nEb4, $06, nEb4, nRst
	dc.b nEb4, nRst, nD4, nRst, nBb3, $36, nD4, $0C
	dc.b nC4, $06, nD4, nRst, nEb4, nF4, nC5, $18
	dc.b nBb4, $06, nRst
	sPatFM		$08
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	sPan		spLeft
	dc.b nF4, nG4, nAb4, nBb4, nRst, nC5, nRst, nEb5
	dc.b $0C, nD5, $06, nBb4, $36, nBb4, $06, nRst
	dc.b nC5, nRst, nEb5, $0C, nD5, $06, nEb5, nRst
	dc.b nF5, $12, nD5, $06, nRst, nC5, nRst, nBb4
	dc.b nRst, nC5, nRst, nEb5, $0C, nD5, $06, nBb4
	dc.b $1E, nRst, $06, nC4, nEb4, nFs4, nAb4, nFs4
	dc.b nAb4, nAb4, nAb4, nFs4, nRst, nG4, nRst, nC5
	dc.b nRst, nAb4, nC5, nRst, nF5, nRst, nBb4, nRst
	dc.b nC5, nRst, nEb5, $0C, nD5, $06, nBb4, $36
	dc.b nBb4, $06, nRst, nC5, nRst, nEb5, $0C, nD5
	dc.b $06, nEb5, nRst, nF5, $12, nD5, $06, nRst
	dc.b nC5, nRst, nBb4, nRst, nC5, nRst, nEb5, $0C
	dc.b nD5, $06, nBb4, $1E, nRst, $06, nC4, nEb4
	dc.b nFs4, nF5, nF5, nRst, nF5, nF5, nRst, nF5
	dc.b nF5, nRst, nF5, nF5, nRst, $0C
	sPatFM		$0D
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $04
	dc.b nEb3, $06, nF3, $0C
	sJump		CNZ2_Jump1
	dc.b $F2	; Unused

CNZ2_FM4:
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nFs1, $04, nRst, $08, nFs1, $04, nRst, $08
	dc.b nEb1, $10, nRst, $02, nF1, $04, nRst, $08
	dc.b nF1, $04, nRst, $08, nF1, $04, nRst, $08
	dc.b nD1, $04, nRst, $02, nD1, $0A, nRst, $02
	dc.b nFs1, $04, nRst, $08, nFs1, $04, nRst, $08
	dc.b nEb1, $10, nRst, $02, nF1, $04, nRst, $08
	dc.b nF1, $04, nRst, $02, nF1, $04, nRst, $02
	dc.b nF1, $04, nRst, $02, nD1, $16, nRst, $02
	dc.b nFs1, $04, nRst, $08, nFs1, $04, nRst, $08
	dc.b nEb1, $10, nRst, $02, nF1, $04, nRst, $08
	dc.b nF1, $04, nRst, $08, nF1, $04, nRst, $08
	dc.b nD1, $04, nRst, $02, nD1, $0A, nRst, $02
	dc.b nFs1, $04, nRst, $08, nFs1, $04, nRst, $08
	dc.b nEb1, $10, nRst, $02, nF1, $04, nRst, $32
	dc.b nC1, $10, nRst, $02, nG0, $16, nRst, $02
	dc.b nC1, $04, nRst, $08, nC1, $04, nRst, $08
	dc.b nC1, $04, nRst, $02, nG0, $0A, nRst, $02
	dc.b nC1, $0A, nRst, $02, nBb0, $10, nRst, $02
	dc.b nF0, $16, nRst, $02, nBb0, $04, nRst, $02
	dc.b nBb0, $04, nRst, $08, nBb0, $04, nRst, $08
	dc.b nF0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b nC1, $10, nRst, $02, nG0, $16, nRst, $02
	dc.b nC1, $04, nRst, $08, nC1, $04, nRst, $08
	dc.b nC1, $04, nRst, $02, nG0, $0A, nRst, $02
	dc.b nC1, $0A, nRst, $02, nBb0, $10, nRst, $02
	dc.b nF0, $16, nRst, $02, nBb0, $04, nRst, $02
	dc.b nBb0, $04, nRst, $0E, nBb0, $04, nRst, $02
	dc.b nF0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b nC1, $10, nRst, $02, nG0, $16, nRst, $02
	dc.b nC1, $04, nRst, $08, nC1, $04, nRst, $08
	dc.b nC1, $04, nRst, $02, nG0, $0A, nRst, $02
	dc.b nC1, $0A, nRst, $02, nBb0, $10, nRst, $02
	dc.b nF0, $16, nRst, $02, nBb0, $04, nRst, $02
	dc.b nBb0, $04, nRst, $08, nBb0, $04, nRst, $08
	dc.b nF0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b nC1, $10, nRst, $02, nG0, $16, nRst, $02
	dc.b nC1, $04, nRst, $08, nC1, $04, nRst, $08
	dc.b nC1, $04, nRst, $02, nG0, $0A, nRst, $02
	dc.b nC1, $0A, nRst, $02, nBb0, $10, nRst, $02
	dc.b nF0, $16, nRst, $02, nBb0, $04, nRst, $02
	dc.b nBb0, $04, nRst, $08, nBb0, $04, nRst, $08
	dc.b nBb0, $0A, nRst, $02, nF1, $0A, nRst, $02
	dc.b nAb1, $16, nRst, $02, nEb1, $10, nRst, $02
	dc.b nAb0, $1C, nRst, $02, nEb1, $0A, nRst, $02
	dc.b nAb1, $0A, nRst, $02, nEb1, $16, nRst, $02
	dc.b nBb0, $10, nRst, $02, nEb0, $1C, nRst, $02
	dc.b nBb0, $0A, nRst, $02, nEb1, $0A, nRst, $02
	dc.b nAb1, $16, nRst, $02, nEb1, $10, nRst, $02
	dc.b nAb0, $1C, nRst, $02, nEb1, $0A, nRst, $02
	dc.b nAb1, $0A, nRst, $02, nC1, $16, nRst, $02
	dc.b nG0, $10, nRst, $02, nC1, $1C, nRst, $02
	dc.b nG0, $0A, nRst, $02, nC1, $0A, nRst, $02
	dc.b nAb1, $16, nRst, $02, nEb1, $10, nRst, $02
	dc.b nAb0, $1C, nRst, $02, nEb1, $0A, nRst, $02
	dc.b nAb1, $0A, nRst, $02, nEb1, $16, nRst, $02
	dc.b nBb0, $10, nRst, $02, nEb0, $1C, nRst, $02
	dc.b nBb0, $0A, nRst, $02, nEb1, $0A, nRst, $02
	dc.b nAb1, $16, nRst, $02, nEb1, $10, nRst, $02
	dc.b nAb0, $1C, nRst, $02, nEb1, $0A, nRst, $02
	dc.b nAb1, $0A, nRst, $02, nBb0, $10, nRst, $02
	dc.b nBb0, $04, nRst, $0E, nAb0, $04, nRst, $02
	dc.b nBb0, $04, nRst, $08, nBb0, $10, nRst, $02
	dc.b nBb0, $0A, nRst, $02, nF1, $0A, nRst, $02
	dc.b nEb1, $10, nRst, $02, nBb0, $10, nRst, $02
	dc.b nEb1, $10, nRst, $02, nEb1, $04, nRst, $08
	dc.b nEb1, $04, nRst, $02, nEb1, $0A, nRst, $02
	dc.b nBb1, $0A, nRst, $02, nAb1, $10, nRst, $02
	dc.b nEb1, $10, nRst, $02, nAb1, $10, nRst, $02
	dc.b nAb1, $04, nRst, $08, nAb1, $04, nRst, $02
	dc.b nAb1, $0A, nRst, $02, nBb1, $0A, nRst, $02
	dc.b nEb1, $10, nRst, $02, nBb0, $10, nRst, $02
	dc.b nEb1, $10, nRst, $02, nEb1, $04, nRst, $08
	dc.b nEb1, $04, nRst, $02, nBb0, $0A, nRst, $02
	dc.b nEb1, $0A, nRst, $02, nEb1, $12, nEb1, $06
	dc.b nRst, nEb1, nFs1, nEb1, nRst, nEb1, nCs1, $0C
	dc.b nAb1, nCs1, nEb1, $10, nRst, $02, nBb0, $10
	dc.b nRst, $02, nEb1, $10, nRst, $02, nEb1, $04
	dc.b nRst, $08, nEb1, $04, nRst, $02, nEb1, $0A
	dc.b nRst, $02, nBb1, $0A, nRst, $02, nAb1, $10
	dc.b nRst, $02, nEb1, $10, nRst, $02, nAb1, $10
	dc.b nRst, $02, nAb1, $04, nRst, $08, nAb1, $04
	dc.b nRst, $02, nAb1, $0A, nRst, $02, nBb1, $0A
	dc.b nRst, $02, nEb1, $10, nRst, $02, nBb0, $16
	dc.b nRst, $02, nEb1, $04, nRst, $08, nEb1, $04
	dc.b nRst, $08, nEb1, $04, nRst, $02, nBb0, $0A
	dc.b nRst, $02, nEb1, $0A, nRst, $02, nB1, $12
	dc.b nA1, nB1, nA1, $06, nB1, nRst, $1E
	sJump		CNZ2_FM4
	dc.b $F2	; Unused

CNZ2_FM5:
	sPan		spRight
	dc.b nRst, $01
	ssDetune	$01

CNZ2_Jump2:
	sPatFM		$0D
	ssDetune	$FF
	ssModZ80	$0F, $01, $06, $04
	dc.b nFs3, $04, nRst, $08, nFs3, $04, nRst, $08
	dc.b nEb3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b nD3, $04, nRst, $02, nD3, $0A, nRst, $02
	dc.b nFs3, $04, nRst, $08, nFs3, $04, nRst, $08
	dc.b nEb3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b nF2, $04, nRst, $02, nA2, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nA3, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b nCs4, $04, nRst, $08, nCs4, $04, nRst, $08
	dc.b nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nC4, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nA3, $04, nRst, $02, nA3, $0A, nRst, $02
	dc.b nCs4, $04, nRst, $08, nCs4, $04, nRst, $08
	dc.b nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nC2, $04, nRst, $02, nF2, $04, nRst, $02
	dc.b nA2, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nFs3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02
	sPatFM		$03
	ssDetune	$02
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb4, nE4, nRst, $08, nF4, $04, nRst, $08
	dc.b nG4, $16, nRst, $14, nE4, $04, nRst, $02
	dc.b nF4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b nBb4, $04, nRst, $02, nBb4, $04, nRst, $08
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b nBb4, $04, nRst, $02, nBb4, $04, nRst, $08
	dc.b nA4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b nF4, $04, nRst, $08, nEb4, $02, nE4, nRst
	dc.b $08, nF4, $04, nRst, $08, nG4, $16, nRst
	dc.b $14, nEb5, $02, nE5, $04, nD5, nRst, $08
	dc.b nC5, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b nBb4, $08, nA4, $02, nG4, nF4, nE4, nD4
	dc.b nC4, nBb3, nRst, nG4, $04, nRst, $08, nF4
	dc.b $04, nRst, $08, nEb4, $02, nE4, nRst, $08
	dc.b nF4, $04, nRst, $08, nG4, $16, nRst, $14
	dc.b nE4, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b nG4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $08
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $08, nA4, $04, nRst, $08
	dc.b nG4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b nEb4, $02, nE4, nRst, $08, nF4, $04, nRst
	dc.b $08, nG4, $16, nRst, $14, nEb5, $02, nE5
	dc.b $04, nD5, nRst, $08, nC5, $04, nRst, $08
	dc.b nC5, $04, nRst, $02, nF5, $04, nRst, $08
	dc.b nC5, $04, nRst, $08, nF5, $04, nRst, $08
	dc.b nC5, $04, nRst, $02, nF5, $08, nE5, $02
	dc.b nD5, nC5, nBb4, nA4, nG4, nF4, nRst, $08
	sPatFM		$21
	ssDetune	$FF
	ssModZ80	$0A, $01, $06, $06
	sPan		spCenter
	dc.b nRst, $04
	saVolFM		$03
	dc.b nC4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b nF4, $04, nRst, $02, nEb4, $06, nD4, nEb4
	dc.b nF4, nRst, nD4, nRst, nBb3, $2A, nEb4, $0C
	dc.b nD4, $06, nD4, nRst, nD4, nRst, nBb3, nRst
	dc.b nF3, $0C, nF3, $06, nG3, $0C, nBb3, nD4
	dc.b nEb4, $06, nD4, nEb4, nF4, nRst, nD4, nRst
	dc.b nBb3, $2A, nEb4, $0C, nD4, $06, nC4, nD4
	dc.b nEb4, $0C, nD4, $06, nEb4, nF4, $0C, nEb4
	dc.b $06, nF4, nG4, $0C, nF4, $06, nG4, $0C
	dc.b nEb4, $06, nD4, nEb4, nF4, nRst, nD4, nRst
	dc.b nBb3, $2A, nEb4, $0C, nD4, $06, nD4, nRst
	dc.b nD4, nRst, nBb3, nRst, nF3, $0C, nF3, $06
	dc.b nG3, $0C, nBb3, nD4, nEb4, $06, nEb4, nRst
	dc.b nEb4, nRst, nD4, nRst, nBb3, $36, nD4, $0C
	dc.b nC4, $06, nD4, nRst, nEb4, nF4, nC5, $18
	dc.b nBb4, $06, nRst, $02
	sPatFM		$08
	ssDetune	$FF
	ssModZ80	$0F, $01, $06, $06
	sPan		spRight
	saVolFM		$FB
	dc.b nF4, $06, nG4, nAb4, nBb4, nRst, nC5, nRst
	dc.b nEb5, $0C, nD5, $06, nBb4, $36, nBb4, $06
	dc.b nRst, nC5, nRst, nEb5, $0C, nD5, $06, nEb5
	dc.b nRst, nF5, $12, nD5, $06, nRst, nC5, nRst
	dc.b nBb4, nRst, nC5, nRst, nEb5, $0C, nD5, $06
	dc.b nBb4, $1E, nRst, $06, nC4, nEb4, nFs4, nAb4
	dc.b nFs4, nAb4, nAb4, nAb4, nFs4, nRst, nG4, nRst
	dc.b nC5, nRst, nAb4, nC5, nRst, nF5, nRst, nBb4
	dc.b nRst, nC5, nRst, nEb5, $0C, nD5, $06, nBb4
	dc.b $36, nBb4, $06, nRst, nC5, nRst, nEb5, $0C
	dc.b nD5, $06, nEb5, nRst, nF5, $12, nD5, $06
	dc.b nRst, nC5, nRst, nBb4, nRst, nC5, nRst, nEb5
	dc.b $0C, nD5, $06, nBb4, $1E, nRst, $06, nC4
	dc.b nEb4, nFs4, nF5, nF5, nRst, nF5, nF5, nRst
	dc.b nF5, nF5, nRst, nF5, nF5, nRst, $0C
	sPatFM		$0D
	ssDetune	$FF
	ssModZ80	$0F, $01, $06, $04
	saVolFM		$02
	dc.b nEb3, $06, nF3, $0C
	sJump		CNZ2_Jump2
	dc.b $F2	; Unused

CNZ2_PSG1:
	sVolEnvPSG	v0A

CNZ2_Jump3:
	dc.b nFs3, $04, nRst, $08, nFs3, $04, nRst, $08
	dc.b nEb3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b nD3, $04, nRst, $02, nD3, $0A, nRst, $02
	dc.b nFs3, $04, nRst, $08, nFs3, $04, nRst, $08
	dc.b nEb3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b nF2, $04, nRst, $02, nA2, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nA3, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b nCs4, $04, nRst, $08, nCs4, $04, nRst, $08
	dc.b nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nC4, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nA3, $04, nRst, $02, nA3, $0A, nRst, $02
	dc.b nCs4, $04, nRst, $08, nCs4, $04, nRst, $08
	dc.b nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nC2, $04, nRst, $02, nF2, $04, nRst, $02
	dc.b nA2, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nFs3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nC3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b nC4, $04, nRst, $02, nE3, $04, nRst, $08
	dc.b nG3, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nD3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nC3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b nC4, $04, nRst, $02, nE3, $04, nRst, $08
	dc.b nG3, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b nA3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nC3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b nC4, $04, nRst, $02, nE3, $04, nRst, $08
	dc.b nG3, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nD3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nC3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b nC4, $04, nRst, $02, nE3, $04, nRst, $08
	dc.b nG3, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b nA3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nAb4, $04, nRst, $02
	dc.b nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b nEb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nEb4, $04, nRst, $02, nEb3, $04, nRst, $08
	dc.b nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b nD5, $04, nRst, $08, nG5, $04, nRst, $08
	dc.b nBb5, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nAb4, $04, nRst, $02
	dc.b nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nC5, $04, nRst, $1A
	dc.b nG4, $0A, nRst, $02, nBb4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $02, nBb4, $0A, nRst, $02
	dc.b nC5, $04, nRst, $02, nC5, $04, nRst, $02
	dc.b nC5, $0A, nRst, $02, nD5, $04, nRst, $02
	dc.b nD5, $0A, nRst, $02, nAb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nAb4, $04, nRst, $02
	dc.b nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b nEb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nEb4, $04, nRst, $02, nEb3, $04, nRst, $08
	dc.b nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b nD5, $04, nRst, $08, nG5, $04, nRst, $08
	dc.b nBb5, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nAb4, $04, nRst, $02
	dc.b nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nF5, $04, nRst, $08
	dc.b nG5, $0A, nRst, $02, nF5, $04, nRst, $02
	dc.b nG5, $04, nRst, $20, nFs5, $02, nG5, nRst
	dc.b $08, nF5, $04, nRst, $02, nG5, $0A, nRst
	dc.b $02, nF5, $0A, nRst, $02, nEb3, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b $02, nEb3, $04, nRst, $08, nEb4, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nEb3, $04, nRst
	dc.b $02, nEb4, $04, nRst, $02, nEb3, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b $08, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nAb3, $04, nRst
	dc.b $02, nAb3, $04, nRst, $02, nAb4, $04, nRst
	dc.b $02, nAb3, $04, nRst, $08, nAb4, $04, nRst
	dc.b $02, nAb3, $04, nRst, $02, nAb3, $04, nRst
	dc.b $02, nAb4, $04, nRst, $02, nAb3, $04, nRst
	dc.b $02, nAb3, $04, nRst, $02, nAb4, $04, nRst
	dc.b $08, nAb3, $04, nRst, $02, nAb4, $04, nRst
	dc.b $02, nAb3, $04, nRst, $02, nEb3, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b $02, nEb3, $04, nRst, $08, nEb4, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nEb3, $04, nRst
	dc.b $02, nEb4, $04, nRst, $02, nEb3, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b $08, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nAb5, $18, nAb5
	dc.b $12, nG5, $06, nRst, nAb4, nRst, nF4, nAb4
	dc.b nRst, nC5, nRst, nEb3, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nEb4, $04, nRst, $02, nEb3
	dc.b $04, nRst, $08, nEb4, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nEb4
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nEb4, $04, nRst, $08, nEb3
	dc.b $04, nRst, $02, nEb4, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nAb3, $04, nRst, $02, nAb3
	dc.b $04, nRst, $02, nAb4, $04, nRst, $02, nAb3
	dc.b $04, nRst, $08, nAb4, $04, nRst, $02, nAb3
	dc.b $04, nRst, $02, nAb3, $04, nRst, $02, nAb4
	dc.b $04, nRst, $02, nAb3, $04, nRst, $02, nAb3
	dc.b $04, nRst, $02, nAb4, $04, nRst, $08, nAb3
	dc.b $04, nRst, $02, nAb4, $04, nRst, $02, nAb3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nEb4, $04, nRst, $02, nEb3
	dc.b $04, nRst, $08, nEb4, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nEb4
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nEb4, $04, nRst, $08, nEb3
	dc.b $04, nRst, $02, nEb4, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nB3, $04, nRst, $02, nB3
	dc.b $04, nRst, $02, nB4, $04, nRst, $02, nB3
	dc.b $04, nRst, $02, nB3, $04, nRst, $02, nB4
	dc.b $04, nRst, $02, nB3, $04, nRst, $02, nB3
	dc.b $04, nRst, $02, nB4, $04, nRst, $02, nB3
	dc.b $04, nRst, $02, nB4, $04, nRst, $20
	sJump		CNZ2_Jump3
	dc.b $F2	; Unused

CNZ2_PSG2:
	sVolEnvPSG	v0A
	ssDetune	$01

CNZ2_Jump4:
	dc.b nFs3, $04, nRst, $08, nFs3, $04, nRst, $08
	dc.b nEb3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b nD3, $04, nRst, $02, nD3, $0A, nRst, $02
	dc.b nFs3, $04, nRst, $08, nFs3, $04, nRst, $08
	dc.b nEb3, $10, nRst, $02, nF3, $04, nRst, $08
	dc.b nF2, $04, nRst, $02, nA2, $04, nRst, $02
	dc.b nC3, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nA3, $04, nRst, $08, nD4, $04, nRst, $02
	dc.b nCs4, $04, nRst, $08, nCs4, $04, nRst, $08
	dc.b nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nC4, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nA3, $04, nRst, $02, nA3, $0A, nRst, $02
	dc.b nCs4, $04, nRst, $08, nCs4, $04, nRst, $08
	dc.b nBb3, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b nC2, $04, nRst, $02, nF2, $04, nRst, $02
	dc.b nA2, $04, nRst, $02, nD3, $04, nRst, $02
	dc.b nFs3, $04, nRst, $02, nA3, $04, nRst, $02
	dc.b nD4, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nC3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b nC4, $04, nRst, $02, nE3, $04, nRst, $08
	dc.b nG3, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nD3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nC3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b nC4, $04, nRst, $02, nE3, $04, nRst, $08
	dc.b nG3, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b nA3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nC3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b nC4, $04, nRst, $02, nE3, $04, nRst, $08
	dc.b nG3, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nD3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b nF4, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nC3, $04, nRst, $08, nC3, $04, nRst, $02
	dc.b nE3, $10, nRst, $02, nG3, $04, nRst, $08
	dc.b nC4, $04, nRst, $02, nE3, $04, nRst, $08
	dc.b nG3, $04, nRst, $08, nC4, $04, nRst, $08
	dc.b nBb3, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nD3, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b nA3, $04, nRst, $08, nG3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nAb4, $04, nRst, $02
	dc.b nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b nEb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nEb4, $04, nRst, $02, nEb3, $04, nRst, $08
	dc.b nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b nD5, $04, nRst, $08, nG5, $04, nRst, $08
	dc.b nBb5, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nAb4, $04, nRst, $02
	dc.b nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nC5, $04, nRst, $1A
	dc.b nG4, $0A, nRst, $02, nBb4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $02, nBb4, $0A, nRst, $02
	dc.b nC5, $04, nRst, $02, nC5, $04, nRst, $02
	dc.b nC5, $0A, nRst, $02, nD5, $04, nRst, $02
	dc.b nD5, $0A, nRst, $02, nAb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nAb4, $04, nRst, $02
	dc.b nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b nEb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b nEb4, $04, nRst, $02, nEb3, $04, nRst, $08
	dc.b nEb3, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b nBb4, $04, nRst, $08, nBb4, $04, nRst, $02
	dc.b nD5, $04, nRst, $08, nG5, $04, nRst, $08
	dc.b nBb5, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb3, $04, nRst, $02, nAb4, $04, nRst, $02
	dc.b nAb3, $04, nRst, $08, nAb3, $04, nRst, $02
	dc.b nAb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b nEb5, $04, nRst, $08, nF5, $04, nRst, $08
	dc.b nG5, $0A, nRst, $02, nF5, $04, nRst, $02
	dc.b nG5, $04, nRst, $20, nFs5, $02, nG5, nRst
	dc.b $08, nF5, $04, nRst, $02, nG5, $0A, nRst
	dc.b $02, nF5, $0A, nRst, $02, nEb3, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b $02, nEb3, $04, nRst, $08, nEb4, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nEb3, $04, nRst
	dc.b $02, nEb4, $04, nRst, $02, nEb3, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b $08, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nAb3, $04, nRst
	dc.b $02, nAb3, $04, nRst, $02, nAb4, $04, nRst
	dc.b $02, nAb3, $04, nRst, $08, nAb4, $04, nRst
	dc.b $02, nAb3, $04, nRst, $02, nAb3, $04, nRst
	dc.b $02, nAb4, $04, nRst, $02, nAb3, $04, nRst
	dc.b $02, nAb3, $04, nRst, $02, nAb4, $04, nRst
	dc.b $08, nAb3, $04, nRst, $02, nAb4, $04, nRst
	dc.b $02, nAb3, $04, nRst, $02, nEb3, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b $02, nEb3, $04, nRst, $08, nEb4, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nEb3, $04, nRst
	dc.b $02, nEb4, $04, nRst, $02, nEb3, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b $08, nEb3, $04, nRst, $02, nEb4, $04, nRst
	dc.b $02, nEb3, $04, nRst, $02, nC5, $18, nC5
	dc.b $12, nBb4, $06, nRst, nF4, nRst, nCs4, nF4
	dc.b nRst, nAb4, nRst, nEb3, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nEb4, $04, nRst, $02, nEb3
	dc.b $04, nRst, $08, nEb4, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nEb4
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nEb4, $04, nRst, $08, nEb3
	dc.b $04, nRst, $02, nEb4, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nAb3, $04, nRst, $02, nAb3
	dc.b $04, nRst, $02, nAb4, $04, nRst, $02, nAb3
	dc.b $04, nRst, $08, nAb4, $04, nRst, $02, nAb3
	dc.b $04, nRst, $02, nAb3, $04, nRst, $02, nAb4
	dc.b $04, nRst, $02, nAb3, $04, nRst, $02, nAb3
	dc.b $04, nRst, $02, nAb4, $04, nRst, $08, nAb3
	dc.b $04, nRst, $02, nAb4, $04, nRst, $02, nAb3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nEb4, $04, nRst, $02, nEb3
	dc.b $04, nRst, $08, nEb4, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nEb4
	dc.b $04, nRst, $02, nEb3, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nEb4, $04, nRst, $08, nEb3
	dc.b $04, nRst, $02, nEb4, $04, nRst, $02, nEb3
	dc.b $04, nRst, $02, nB3, $04, nRst, $02, nB3
	dc.b $04, nRst, $02, nB4, $04, nRst, $02, nB3
	dc.b $04, nRst, $02, nB3, $04, nRst, $02, nB4
	dc.b $04, nRst, $02, nB3, $04, nRst, $02, nB3
	dc.b $04, nRst, $02, nB4, $04, nRst, $02, nB3
	dc.b $04, nRst, $02, nB4, $04, nRst, $20
	sJump		CNZ2_Jump4
	dc.b $F2	; Unused

CNZ2_PSG3:
	sVolEnvPSG	v02
	sNoisePSG	$E7
	dc.b nRst, $60, nRst, $60, nRst, $60, nRst, $60

CNZ2_Loop1:
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sLoop		$01, $0D, CNZ2_Loop1
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $36

CNZ2_Loop2:
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sLoop		$01, $0D, CNZ2_Loop2
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $36

CNZ2_Loop3:
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
	sLoop		$01, $08, CNZ2_Loop3

CNZ2_Loop4:
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sLoop		$01, $06, CNZ2_Loop4
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v01
	dc.b nBb6, $06
	sVolEnvPSG	v08
	dc.b nBb6, $60, $0C
	sJump		CNZ2_PSG3
	dc.b $F2	; Unused

CNZ2_Patches:

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
