AIZ1_Header:
	sHeaderInit						; Z80 offset is $8000
	sHeaderPatch	AIZ1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $25
	sHeaderDAC	AIZ1_DAC
	sHeaderFM	AIZ1_FM1, $18, $12
	sHeaderFM	AIZ1_FM2, $0C, $19
	sHeaderFM	AIZ1_FM3, $0C, $19
	sHeaderFM	AIZ1_FM4, $0C, $19
	sHeaderFM	AIZ1_FM5, $0C, $19
	sHeaderPSG	AIZ1_PSG1, $F4, $04, $00, v0C
	sHeaderPSG	AIZ1_PSG2, $F4, $04, $00, v0C
	sHeaderPSG	AIZ1_PSG3, $00, $04, $00, v0C
	dc.b $F2, $80, $7F, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $66, $F2	; Unused

AIZ1_DAC:
	dc.b dKick, $0C, dHighMetalHit, $06, dLowTom, dKick, $0C, dMidTom
	dc.b $06, dLowMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick
	dc.b $0C, dHighTom, $06, dMetalHit, dKick, $0C, dHighMetalHit, $06
	dc.b dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick, $0C
	dc.b dHighMetalHit, $06, dLowTom, dKick, $0C, dHighTom, $06, dMetalHit
	dc.b dKick, $0C, dHighMetalHit, $06, dLowTom, dKick, $0C, dMidTom
	dc.b $06, dLowMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick
	dc.b $0C, dHighTom, $06, dMetalHit, dKick, $0C, dHighMetalHit, $06
	dc.b dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick, $0C
	dc.b dHighMetalHit, $06, dLowTom, dKick, $0C, dSnare, dKick, dHighMetalHit
	dc.b $06, dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick
	dc.b $0C, dHighMetalHit, $06, dLowTom, dKick, $0C, dHighTom, $06
	dc.b dMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick, $0C
	dc.b dMidTom, $06, dLowMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom
	dc.b dKick, $0C, dHighTom, $06, dMetalHit, dKick, $0C, dHighMetalHit
	dc.b $06, dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick
	dc.b $0C, dHighMetalHit, $06, dLowTom, dKick, $0C, dHighTom, $06
	dc.b dMetalHit, dSnare, dSnare, dSnare, dSnare, dKick, dHighTom, dMidTom
	dc.b dLowTom, dKick, dHigherMetalHit, $09, dHigherMetalHit, $02, dHigherMetalHit, $01
	dc.b dHigherMetalHit, $06, dHigherMetalHit, dHigherMetalHit, $12, dKick, $0C, dHighMetalHit
	dc.b $06, dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick
	dc.b $0C, dHighMetalHit, $06, dLowTom, dKick, $0C, dHighTom, $06
	dc.b dMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick, $0C
	dc.b dMidTom, $06, dLowMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom
	dc.b dKick, $0C, dHighTom, $06, dMetalHit, dKick, $0C, dHighMetalHit
	dc.b $06, dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick
	dc.b $0C, dHighMetalHit, $06, dLowTom, dKick, $0C, dHighTom, $06
	dc.b dMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick, $0C
	dc.b dMidTom, $06, dLowMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom
	dc.b dKick, $0C, dHighTom, $06, dMetalHit, dKick, $0C, dHighMetalHit
	dc.b $06, dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick
	dc.b $0C, dHighMetalHit, $06, dLowTom, dKick, $0C, dHighTom, $06
	dc.b dMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick, $0C
	dc.b dMidTom, $06, dLowMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom
	dc.b dKick, $0C, dHighTom, $06, dMetalHit, dKick, $0C, dHighMetalHit
	dc.b $06, dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick
	dc.b $0C, dHighMetalHit, $06, dLowTom, dKick, $0C, dHighTom, $06
	dc.b dMetalHit, dKick, $18, dKick, $17, dSnare, $01, dSnare
	dc.b $06, dSnare, $0C, dSnare, dSnare, $06, dSnare, $0C
	dc.b dKick, dHighMetalHit, $06, dLowTom, dKick, $0C, dMidTom, $06
	dc.b dLowMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick, $0C
	dc.b dHighTom, $06, dMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom
	dc.b dKick, $0C, dMidTom, $06, dLowMetalHit, dKick, $0C, dHighMetalHit
	dc.b $06, dLowTom, dKick, $0C, dSnare, dKick, dHighMetalHit, $06
	dc.b dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick, $0C
	dc.b dHighMetalHit, $06, dLowTom, dKick, $0C, dHighTom, $06, dMetalHit
	dc.b dKick, $0C, dHighMetalHit, $06, dLowTom, dKick, $0C, dMidTom
	dc.b $06, dLowMetalHit, dKick, dHigherMetalHit, dHighMetalHit, dLowTom, dKick, $0C
	dc.b dSnare, $06, dSnare, dKick, $0C, dHighMetalHit, $06, dLowTom
	dc.b dKick, $0C, dMidTom, $06, dLowMetalHit, dKick, $0C, dHighMetalHit
	dc.b $06, dLowTom, dKick, $0C, dHighTom, $06, dMetalHit, dKick
	dc.b $0C, dHighMetalHit, $06, dLowTom, dKick, $0C, dMidTom, $06
	dc.b dLowMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick, $0C
	dc.b dSnare, dKick, dHighMetalHit, $06, dLowTom, dKick, $0C, dMidTom
	dc.b $06, dLowMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick
	dc.b $0C, dHighTom, $06, dMetalHit, dKick, $0C, dHighMetalHit, $06
	dc.b dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dSnare, dSnare
	dc.b dSnare, $0C, dSnare, $06, dSnare, dSnare, $0C, dKick
	dc.b dHighMetalHit, $06, dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit
	dc.b dKick, $0C, dHighMetalHit, $06, dLowTom, dSnare, $0C, dHighTom
	dc.b $06, dMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick
	dc.b $0C, dMidTom, $06, dLowMetalHit, dKick, $0C, dHighMetalHit, $06
	dc.b dLowTom, dSnare, $0C, dHighTom, $06, dMetalHit, dKick, $0C
	dc.b dHighMetalHit, $06, dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit
	dc.b dKick, $0C, dHighMetalHit, $06, dLowTom, dSnare, $0C, dHighTom
	dc.b $06, dMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick
	dc.b $0C, dMidTom, $06, dLowMetalHit, dKick, dSnare, dHighMetalHit, dSnare
	dc.b dSnare, $0C, dSnare, $06, dMetalHit, dKick, $0C, dHighMetalHit
	dc.b $06, dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick
	dc.b $0C, dHighMetalHit, $06, dLowTom, dSnare, $0C, dHighTom, $06
	dc.b dMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick, $0C
	dc.b dMidTom, $06, dLowMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom
	dc.b dSnare, $0C, dHighTom, $06, dMetalHit, dKick, $0C, dHighMetalHit
	dc.b $06, dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick
	dc.b $0C, dHighMetalHit, $06, dLowTom, dSnare, $0C, dHighTom, $06
	dc.b dMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick, $0C
	dc.b dMidTom, $06, dLowMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom
	dc.b dSnare, $0C, dSnare, $06, dMetalHit, dKick, $0C, dHighMetalHit
	dc.b $06, dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick
	dc.b $0C, dHighMetalHit, $06, dLowTom, dSnare, $0C, dHighTom, $06
	dc.b dMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom, dKick, $0C
	dc.b dMidTom, $06, dLowMetalHit, dKick, $0C, dHighMetalHit, $06, dLowTom
	dc.b dSnare, $0C, dHighTom, $06, dMetalHit, dKick, $0C, dHighMetalHit
	dc.b $06, dLowTom, dKick, $0C, dMidTom, $06, dLowMetalHit, dKick
	dc.b $0C, dHighMetalHit, $06, dLowTom, dSnare, $0C, dHighTom, $06
	dc.b dMetalHit, $03, dMidMetalHit, $02, dMidMetalHit, $01, dHigherMetalHit, $06
	dc.b dHigherMetalHit, $0C, dHigherMetalHit, dLowTom, $06, dSnare, dKick, $0C
	dc.b dKick, dKick, $03, dKick, dSnare, $06, nRst, $12
	sJump		AIZ1_DAC
	dc.b $F2	; Unused

AIZ1_FM1:
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nC1, $0B, nRst, $01
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nRst, nC2, $04, nRst, $07, nBb1, $0B, nRst
	dc.b $01, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b $07, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b $07, nBb1, $05, nRst, $07, nC2, $0B, nRst
	dc.b $01
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nC1, $0B, nRst, $01
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb1, nC2, $04, nRst, $07, nBb1, $0B, nRst
	dc.b $01, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b $07
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $05, nRst, $07, nBb0, $05, nRst, $07
	dc.b nBb0, $05, nRst, $01, nB0, $0B, nRst, $01
	dc.b nC1, $0B, nRst, $01
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nB1, nC2, $04, nRst, $07, nBb1, $0B, nRst
	dc.b $01, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b $07, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b $07, nBb1, $05, nRst, $08, nC2, $0A, nRst
	dc.b $01
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nC1, $0B, nRst, $01
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nC2, $05, nRst, $07, nBb1, $0B, nRst, $01
	dc.b nA1, $05, nRst, $01, nBb1, $05, nRst, $07
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $05, nRst, $07, nBb0, $05, nRst, $07
	dc.b nBb0, $05, nRst, $01, nB0, $0B, nRst, $01
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nC1, $0B, nRst, $01
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nRst, nC2, $04, nRst, $07, nBb1, $0B, nRst
	dc.b $01, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b $07, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b $07, nBb1, $05, nRst, $07, nC2, $0B, nRst
	dc.b $01
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nC1, $0B, nRst, $01
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb1, nC2, $04, nRst, $07, nBb1, $0B, nRst
	dc.b $01, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b $07
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $05, nRst, $07, nBb0, $05, nRst, $07
	dc.b nBb0, $05, nRst, $01, nB0, $0B, nRst, $01
	dc.b nC1, $0B, nRst, $01
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nB1, nC2, $04, nRst, $07, nBb1, $0B, nRst
	dc.b $01, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b $07, nA1, $05, nRst, $01, nBb1, $05, nRst
	dc.b $07, nBb1, $05, nRst, $08, nC2, $0A, nRst
	dc.b $01
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nG0, $05, nRst, $01, nG0, $05, nRst, $01
	dc.b nG0, $05, nRst, $01, nG0, $05, nRst, $1F
	dc.b nF0, $05, nRst, $01, nA0, $0B, nRst, $01
	dc.b nBb0, $0B, nRst, $01, nB0, $0B, nRst, $01
	dc.b nC1, $16, nRst, $02, nC1, $10, nRst, $02
	dc.b nC1, $10, nRst, $02, nG0, $0A, nRst, $02
	dc.b nC1, $0A, nRst, $02, nG0, $0A, nRst, $02
	dc.b nF0, $16, nRst, $02, nF0, $10, nRst, $02
	dc.b nF0, $0A, nRst, $02, nF0, $04, nRst, $02
	dc.b nA0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b nB0, $0A, nRst, $02, nC1, $16, nRst, $02
	dc.b nC1, $10, nRst, $02, nC1, $10, nRst, $02
	dc.b nG0, $0A, nRst, $02, nC1, $0A, nRst, $02
	dc.b nG0, $0A, nRst, $02, nF0, $16, nRst, $02
	dc.b nF0, $10, nRst, $02, nF0, $0A, nRst, $02
	dc.b nF0, $04, nRst, $02, nA0, $0A, nRst, $02
	dc.b nBb0, $0A, nRst, $02, nB0, $0A, nRst, $02
	dc.b nC1, $16, nRst, $02, nC1, $10, nRst, $02
	dc.b nC1, $10, nRst, $02, nG0, $0A, nRst, $02
	dc.b nC1, $0A, nRst, $02, nG0, $0A, nRst, $02
	dc.b nF0, $16, nRst, $02, nF0, $10, nRst, $02
	dc.b nF0, $0A, nRst, $02, nF0, $04, nRst, $02
	dc.b nA0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b nB0, $0A, nRst, $02, nC1, $16, nRst, $02
	dc.b nC1, $10, nRst, $02, nC1, $10, nRst, $02
	dc.b nG0, $0A, nRst, $02, nC1, $0A, nRst, $02
	dc.b nG0, $0A, nRst, $02, nF0, $16, nRst, $02
	dc.b nF0, $10, nRst, $02, nF0, $0A, nRst, $02
	dc.b nF0, $04, nRst, $02, nA0, $0A, nRst, $02
	dc.b nBb0, $0A, nRst, $02, nB0, $0A, nRst, $02
	dc.b nC1, $16, nRst, $02, nC1, $10, nRst, $02
	dc.b nC1, $10, nRst, $02, nG0, $0A, nRst, $02
	dc.b nC1, $0A, nRst, $02, nG0, $0A, nRst, $02
	dc.b nF0, $16, nRst, $02, nF0, $10, nRst, $02
	dc.b nF0, $0A, nRst, $02, nF0, $04, nRst, $02
	dc.b nA0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b nB0, $0A, nRst, $02, nC1, $16, nRst, $02
	dc.b nC1, $10, nRst, $02, nC1, $10, nRst, $02
	dc.b nG0, $0A, nRst, $02, nC1, $0A, nRst, $02
	dc.b nG0, $0A, nRst, $02, nF0, $16, nRst, $02
	dc.b nF0, $10, nRst, $02, nF0, $0A, nRst, $02
	dc.b nF0, $04, nRst, $02, nA0, $0A, nRst, $02
	dc.b nBb0, $0A, nRst, $02, nB0, $0A, nRst, $02
	dc.b nC1, $16, nRst, $02, nC1, $10, nRst, $02
	dc.b nC1, $10, nRst, $02, nG0, $0A, nRst, $02
	dc.b nC1, $0A, nRst, $02, nG0, $0A, nRst, $02
	dc.b nF0, $16, nRst, $02, nF0, $10, nRst, $02
	dc.b nF0, $0A, nRst, $02, nF0, $04, nRst, $02
	dc.b nA0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b nB0, $0A, nRst, $02, nC1, $16, nRst, $02
	dc.b nC1, $10, nRst, $02, nC1, $10, nRst, $02
	dc.b nG0, $0A, nRst, $02, nC1, $0A, nRst, $02
	dc.b nG0, $0A, nRst, $02, nF0, $16, nRst, $02
	dc.b nF0, $10, nRst, $02, nF0, $0A, nRst, $02
	dc.b nF0, $04, nRst, $02, nC1, $04, nRst, $02
	dc.b nF1, $04, nRst, $02, nF1, $04, nRst, $02
	dc.b nC1, $04, nRst, $02, nF0, $0A, nRst, $02
	dc.b nE0, $16, nRst, $02, nE0, $10, nRst, $02
	dc.b nA0, $10, nRst, $02, nA0, $0A, nRst, $02
	dc.b nE1, $0A, nRst, $02, nA0, $0A, nRst, $02
	dc.b nD1, $16, nRst, $02, nD1, $10, nRst, $02
	dc.b nG0, $0A, nRst, $02, nG0, $04, nRst, $02
	dc.b nG1, $0A, nRst, $02, nG1, $0A, nRst, $02
	dc.b nF1, $0A, nRst, $02, nE1, $16, nRst, $02
	dc.b nE1, $10, nRst, $02, nA0, $10, nRst, $02
	dc.b nA0, $0A, nRst, $02, nE1, $0A, nRst, $02
	dc.b nA0, $0A, nRst, $02, nD1, $16, nRst, $02
	dc.b nD1, $10, nRst, $02, nG0, $0A, nRst, $02
	dc.b nG0, $04, nRst, $02, nG1, $0A, nRst, $02
	dc.b nG1, $0A, nRst, $02, nF1, $0A, nRst, $02
	dc.b nE1, $16, nRst, $02, nE1, $10, nRst, $02
	dc.b nA0, $10, nRst, $02, nA0, $0A, nRst, $02
	dc.b nE1, $0A, nRst, $02, nA0, $0A, nRst, $02
	dc.b nD1, $16, nRst, $02, nD1, $10, nRst, $02
	dc.b nG0, $0A, nRst, $02, nG0, $04, nRst, $02
	dc.b nG1, $0A, nRst, $02, nG1, $0A, nRst, $02
	dc.b nF1, $0A, nRst, $02, nE1, $16, nRst, $02
	dc.b nE1, $10, nRst, $02, nA0, $10, nRst, $02
	dc.b nA0, $0A, nRst, $02, nE1, $0A, nRst, $02
	dc.b nA0, $0A, nRst, $02, nD1, $16, nRst, $02
	dc.b nD1, $10, nRst, $02, nG0, $0A, nRst, $02
	dc.b nG0, $04, nRst, $02, nG1, $0A, nRst, $02
	dc.b nFs1, $0A, nRst, $02, nFs1, $0A, nRst, $02
	dc.b nF1, $16, nRst, $02, nF1, $10, nRst, $02
	dc.b nC1, $10, nRst, $02, nC1, $0A, nRst, $02
	dc.b nF1, $0A, nRst, $02, nF1, $0A, nRst, $02
	dc.b nD1, $16, nRst, $02, nD1, $10, nRst, $02
	dc.b nA0, $10, nRst, $02, nA0, $0A, nRst, $02
	dc.b nD1, $0A, nRst, $02, nD1, $0A, nRst, $02
	dc.b nBb0, $16, nRst, $02, nBb0, $10, nRst, $02
	dc.b nF0, $10, nRst, $02, nF0, $0A, nRst, $02
	dc.b nBb0, $0A, nRst, $02, nBb0, $0A, nRst, $02
	dc.b nG0, $16, nRst, $02, nG0, $10, nRst, $02
	dc.b nB0, $10, nRst, $02, nB0, $0A, nRst, $02
	dc.b nC1, $0A, nRst, $02, nD1, $0A, nRst, $02
	sJump		AIZ1_FM1
	dc.b $F2	; Unused

AIZ1_FM2:
	sPatFM		$16
	ssDetune	$FB
	ssModZ80	$03, $01, $02, $05
	sPan		spRight
	dc.b nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	dc.b nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	dc.b nF3, $05, nRst, $0D, nF3, $05, nRst, $07
	sPatFM		$0D
	ssDetune	$FE
	ssModZ80	$0C, $01, $06, $05
	sPan		spLeft
	dc.b nD3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b nF3, $04, nRst, $08
	sPatFM		$16
	ssDetune	$FB
	ssModZ80	$03, $01, $02, $05
	sPan		spRight
	dc.b nF3, $05, nRst, $07, nF3, $05, nRst, $07
	dc.b nF3, $05, nRst, $01, nFs3, $05, nRst, $07
	dc.b nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	dc.b nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	dc.b nF3, $05, nRst, $0D, nF3, $05, nRst, $19
	sPatFM		$0D
	ssDetune	$FE
	ssModZ80	$0C, $01, $06, $05
	sPan		spLeft
	dc.b nF3, $02, nRst, $04, nBb3, $02, nRst, $04
	dc.b nF4, $02, nRst, $04, nE4, $1D, nRst, $01
	sPatFM		$16
	ssDetune	$FB
	ssModZ80	$03, $01, $02, $05
	sPan		spRight
	dc.b nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	dc.b nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	dc.b nF3, $05, nRst, $0D, nF3, $05, nRst, $07
	sPatFM		$0D
	ssDetune	$FE
	ssModZ80	$0C, $01, $06, $05
	sPan		spLeft
	dc.b nD3, $04, nRst, $02, nE3, $04, nRst, $02
	dc.b nF3, $04, nRst, $08
	sPatFM		$16
	ssDetune	$FB
	ssModZ80	$03, $01, $02, $05
	sPan		spRight
	dc.b nF3, $05, nRst, $07, nF3, $05, nRst, $07
	dc.b nF3, $05, nRst, $01, nFs3, $05, nRst, $07
	dc.b nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	dc.b nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	sPatFM		$0D
	ssDetune	$FE
	ssModZ80	$0C, $01, $06, $05
	sPan		spLeft
	dc.b nC4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b nC4, $05, nRst, $01, nC4, $05, nRst, $55
	sPatFM		$17
	ssDetune	$FB
	ssModZ80	$0F, $01, $03, $05
	sPan		spLeft
	dc.b nD3, $02, nRst, $0A, nE3, $02, nRst, $16
	dc.b nD3, $11, nRst, $01, nE3, $02, nRst, $28
	dc.b nA4, $05, nRst, $01, nBb4, $05, nRst, $07
	dc.b nBb4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b nBb4, $02, nRst, $04, nBb4, $02, nRst, $0A
	dc.b nA4, $23, nRst, $0D, nD3, $02, nRst, $0A
	dc.b nE3, $02, nRst, $16, nD3, $11, nRst, $01
	dc.b nE3, $02, nRst, $28, nA4, $05, nRst, $01
	dc.b nBb4, $05, nRst, $07, nBb4, $02, nRst, $04
	dc.b nBb4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b nBb4, $02, nRst, $0A, nC5, $05, nRst, $01
	dc.b nBb4, $1D, nRst, $0D, nD3, $02, nRst, $0A
	dc.b nE3, $02, nRst, $16, nD3, $11, nRst, $01
	dc.b nE3, $02, nRst, $28, nA4, $05, nRst, $01
	dc.b nBb4, $05, nRst, $07, nBb4, $02, nRst, $04
	dc.b nBb4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b nBb4, $02, nRst, $0A, nA4, $23, nRst, $0D
	dc.b nD3, $02, nRst, $0A, nE3, $02, nRst, $16
	dc.b nD3, $11, nRst, $01, nE3, $02, nRst, $28
	dc.b nA4, $05, nRst, $01, nBb4, $05, nRst, $07
	dc.b nBb4, $02, nRst, $04, nBb4, $02, nRst, $04
	dc.b nBb4, $02, nRst, $04, nBb4, $02, nRst, $0A
	dc.b nC5, $05, nRst, $01, nBb4, $1D, nRst, $0D
	sPatFM		$16
	ssDetune	$FB
	ssModZ80	$03, $01, $02, $05
	sPan		spRight
	dc.b nE3, $0B, nRst, $01, nE3, $0B, nRst, $0D
	dc.b nD3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b nC2, $05, nRst, $01, nG2, $05, nRst, $01
	dc.b nC3, $05, nRst, $01, nBb2, $05, nRst, $07
	dc.b nBb2, $05, nRst, $07, nA2, $05, nRst, $07
	dc.b nA2, $05, nRst, $07, nF2, $05, nRst, $01
	dc.b nC2, $05, nRst, $1F, nE3, $0B, nRst, $01
	dc.b nE3, $0B, nRst, $0D, nD3, $05, nRst, $0D
	dc.b nE3, $05, nRst, $19, nC2, $05, nRst, $01
	dc.b nG2, $05, nRst, $01, nC3, $05, nRst, $01
	dc.b nBb2, $05, nRst, $07, nBb2, $05, nRst, $07
	dc.b nA2, $05, nRst, $07, nA2, $05, nRst, $07
	dc.b nBb2, $05, nRst, $01, nC3, $05, nRst, $1F
	dc.b nE3, $0B, nRst, $01, nE3, $0B, nRst, $0D
	dc.b nD3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b nC2, $05, nRst, $01, nG2, $05, nRst, $01
	dc.b nC3, $05, nRst, $01, nBb2, $05, nRst, $07
	dc.b nBb2, $05, nRst, $07, nA2, $05, nRst, $07
	dc.b nA2, $05, nRst, $07, nF2, $05, nRst, $01
	dc.b nC2, $05, nRst, $1F, nE3, $0B, nRst, $01
	dc.b nE3, $0B, nRst, $0D, nD3, $05, nRst, $0D
	dc.b nE3, $05, nRst, $19, nC2, $05, nRst, $01
	dc.b nG2, $05, nRst, $01, nC3, $05, nRst, $01
	dc.b nBb2, $05, nRst, $07, nBb2, $05, nRst, $07
	dc.b nA2, $05, nRst, $07
	sPatFM		$0D
	ssDetune	$FE
	ssModZ80	$0C, $01, $06, $05
	sPan		spLeft
	dc.b nA3, $02, nRst, $04, nBb3, $02, nRst, $04
	dc.b nC4, $02, nRst, $04, nEb4, $02, nRst, $04
	dc.b nD4, $02, nRst, $04, nBb3, $02, nRst, $04
	dc.b nC4, $02, nRst, $10
	sPatFM		$18
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spLeft
	dc.b nG3, $0B, nRst, $01, nC4, $0B, nRst, $01
	dc.b nG4, $0B, nRst, $01, nF4, $05, nRst, $0D
	dc.b nE4, $05, nRst, $0D, nC4, $05, nRst, $07
	dc.b nA3, $03, nRst, $01
	saVolFM		$02
	dc.b nA3, $03, nRst, $01, nA3, $03, nRst, $01
	saVolFM		$02
	dc.b nA3, $03, nRst, $01, nA3, $03, nRst, $01
	saVolFM		$02
	dc.b nA3, $03, nRst, $01, nA3, $03, nRst, $01
	saVolFM		$02
	dc.b nA3, $03, nRst, $01, nA3, $03, nRst, $01
	saVolFM		$F8
	dc.b nC4, $05, nRst, $07, nB3, $05, nRst, $0D
	dc.b nC4, $05, nRst, $0D, nD4, $05, nRst, $07
	dc.b nE4, $03, nRst, $01
	saVolFM		$02
	dc.b nE4, $03, nRst, $01, nE4, $03, nRst, $01
	saVolFM		$02
	dc.b nE4, $03, nRst, $01, nE4, $03, nRst, $01
	saVolFM		$02
	dc.b nE4, $03, nRst, $01, nE4, $03, nRst, $01
	saVolFM		$02
	dc.b nE4, $03, nRst, $01, nE4, $03, nRst, $01
	saVolFM		$02
	dc.b nE4, $03, nRst, $01, nE4, $03, nRst, $01
	saVolFM		$02
	dc.b nE4, $03, nRst, $01
	saVolFM		$F4
	dc.b nA3, $03, nRst, $01
	saVolFM		$02
	dc.b nA3, $03, nRst, $01, nA3, $03, nRst, $01
	saVolFM		$02
	dc.b nA3, $03, nRst, $01, nA3, $03, nRst, $01
	saVolFM		$02
	dc.b nA3, $03, nRst, $01, nA3, $03, nRst, $01
	saVolFM		$02
	dc.b nA3, $03, nRst, $01, nA3, $03, nRst, $01
	saVolFM		$F8
	dc.b nA3, $03, nRst, $09, nF4, $05, nRst, $0D
	dc.b nE4, $05, nRst, $0D, nD4, $05, nRst, $07
	dc.b nB3, $05, nRst, $0D, nA3, $05, nRst, $0D
	dc.b nG3, $05, nRst, $13, nG3, $0B, nRst, $01
	dc.b nC4, $0B, nRst, $01, nG4, $0B, nRst, $01
	dc.b nF4, $05, nRst, $0D, nE4, $05, nRst, $0D
	dc.b nC4, $05, nRst, $07, nA3, $03, nRst, $01
	saVolFM		$02
	dc.b nA3, $03, nRst, $01, nA3, $03, nRst, $01
	saVolFM		$02
	dc.b nA3, $03, nRst, $01, nA3, $03, nRst, $01
	saVolFM		$02
	dc.b nA3, $03, nRst, $01, nA3, $03, nRst, $01
	saVolFM		$02
	dc.b nA3, $03, nRst, $01, nA3, $03, nRst, $01
	saVolFM		$F8
	dc.b nC4, $05, nRst, $07, nB3, $05, nRst, $0D
	dc.b nC4, $05, nRst, $0D, nD4, $05, nRst, $07
	dc.b nG4, $03, nRst, $01
	saVolFM		$02
	dc.b nG4, $03, nRst, $01, nG4, $03, nRst, $01
	saVolFM		$02
	dc.b nG4, $03, nRst, $01, nG4, $03, nRst, $01
	saVolFM		$02
	dc.b nG4, $03, nRst, $01, nG4, $03, nRst, $01
	saVolFM		$02
	dc.b nG4, $03, nRst, $01, nG4, $03, nRst, $01
	saVolFM		$02
	dc.b nG4, $03, nRst, $01, nG4, $03, nRst, $01
	saVolFM		$02
	dc.b nG4, $03, nRst, $01
	saVolFM		$F4
	dc.b nE4, $03, nRst, $01
	saVolFM		$02
	dc.b nE4, $03, nRst, $01, nE4, $03, nRst, $01
	saVolFM		$02
	dc.b nE4, $03, nRst, $01, nE4, $03, nRst, $01
	saVolFM		$02
	dc.b nE4, $03, nRst, $01, nE4, $03, nRst, $01
	saVolFM		$02
	dc.b nE4, $03, nRst, $01, nE4, $03, nRst, $01
	saVolFM		$F8
	dc.b nA3, $03, nRst, $09, nF4, $05, nRst, $0D
	dc.b nE4, $05, nRst, $0D, nD4, $05, nRst, $07
	dc.b nB3, $05, nRst, $0D, nA3, $05, nRst, $0D
	dc.b nG3, $05, nRst, $07
	saVolFM		$F8
	sPatFM		$17
	ssDetune	$FB
	ssModZ80	$0F, $01, $03, $05
	sPan		spLeft
	dc.b nE4, $0B, nRst, $07, nE4, $03, nRst, $0F
	sPatFM		$16
	ssDetune	$FB
	ssModZ80	$03, $01, $02, $05
	sPan		spRight
	dc.b nF3, $05, nRst, $01, nG3, $05, nRst, $01
	dc.b nA3, $05, nRst, $0D, nB3, $05, nRst, $0D
	dc.b nC4, $05, nRst, $07
	sPatFM		$17
	ssDetune	$FB
	ssModZ80	$0F, $01, $03, $05
	sPan		spLeft
	dc.b nE4, $0B, nRst, $07, nE4, $03, nRst, $0F
	sPatFM		$16
	ssDetune	$FB
	ssModZ80	$03, $01, $02, $05
	sPan		spRight
	dc.b nF3, $05, nRst, $01, nG3, $05, nRst, $01
	dc.b nA3, $05, nRst, $0D, nB3, $05, nRst, $0D
	dc.b nC4, $05, nRst, $07, nF2, $05, nRst, $01
	dc.b nA2, $05, nRst, $01, nD3, $05, nRst, $01
	dc.b nF3, $05, nRst, $01, nD3, $05, nRst, $01
	dc.b nF3, $05, nRst, $01, nA3, $05, nRst, $01
	dc.b nD4, $05, nRst, $01, nA3, $05, nRst, $01
	dc.b nD4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b nA4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b nA4, $05, nRst, $01, nD5, $05, nRst, $01
	dc.b nF5, $05, nRst, $01
	sPatFM		$11
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $06
	sPan		spRight
	dc.b nC4, $17, nRst, $01, nB3, $17, nRst, $01
	dc.b nC4, $17, nRst, $01, nD4, $17, nRst, $01
	saVolFM		$08
	sJump		AIZ1_FM2
	dc.b $F2	; Unused

AIZ1_FM3:
	sPatFM		$16
	ssDetune	$05
	ssModZ80	$03, $01, $02, $05
	sPan		spLeft
	dc.b nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b nD3, $05, nRst, $0D, nD3, $05, nRst, $07
	sPatFM		$11
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $06
	sPan		spRight
	dc.b nBb2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nD3, $04, nRst, $08
	sPatFM		$16
	ssDetune	$05
	ssModZ80	$03, $01, $02, $05
	sPan		spLeft
	dc.b nD3, $05, nRst, $07, nD3, $05, nRst, $07
	dc.b nD3, $05, nRst, $01, nEb3, $05, nRst, $07
	dc.b nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b nD3, $05, nRst, $0D, nD3, $05, nRst, $19
	sPatFM		$0D
	ssDetune	$02
	ssModZ80	$0C, $01, $FA, $05
	sPan		spRight
	dc.b nD3, $02, nRst, $04, nF3, $02, nRst, $04
	dc.b nD4, $02, nRst, $04, nC4, $18, nRst, $06
	sPatFM		$16
	ssDetune	$05
	ssModZ80	$03, $01, $02, $05
	sPan		spLeft
	dc.b nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b nD3, $05, nRst, $0D, nD3, $05, nRst, $07
	sPatFM		$11
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $06
	sPan		spRight
	dc.b nBb2, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b nD3, $04, nRst, $08
	sPatFM		$16
	ssDetune	$05
	ssModZ80	$03, $01, $02, $05
	sPan		spLeft
	dc.b nD3, $05, nRst, $07, nD3, $05, nRst, $07
	dc.b nD3, $05, nRst, $01, nEb3, $05, nRst, $07
	dc.b nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	sPatFM		$11
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $06
	sPan		spRight
	dc.b nA3, $05, nRst, $01, nA3, $05, nRst, $01
	dc.b nA3, $05, nRst, $01, nA3, $05, nRst, $28
	saVolFM		$04
	sPatFM		$0D
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01
	dc.b nF3, $0B, nRst, $01, nE3, $05, nRst, $0D
	dc.b nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	dc.b nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01
	dc.b nF3, $0B, nRst, $01, nE3, $05, nRst, $0D
	dc.b nC3, $05, nRst, $0D, nD3, $3B, nRst, $3D
	dc.b nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01
	dc.b nF3, $0B, nRst, $01, nE3, $05, nRst, $0D
	dc.b nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	dc.b nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01
	dc.b nF3, $0B, nRst, $01, nE3, $05, nRst, $0D
	dc.b nC3, $05, nRst, $0D, nD3, $3B, nRst, $5E
	saVolFM		$FC
	dc.b nRst, $0C
	sPatFM		$16
	ssDetune	$05
	ssModZ80	$03, $01, $02, $05
	sPan		spLeft
	dc.b nC3, $0B, nRst, $01, nC3, $0B, nRst, $0D
	dc.b nBb2, $05, nRst, $0D, nC3, $05, nRst, $19
	saVolFM		$08
	sPatFM		$10
	ssDetune	$05
	ssModZ80	$0F, $01, $FA, $06
	sPan		spLeft
	dc.b nC5, $0C, nA4, $06, nBb4, $0C, nG4, nC5
	dc.b nA4, $06, nBb4, $0C, nG4, $24
	saVolFM		$F8
	sPatFM		$16
	ssDetune	$05
	ssModZ80	$03, $01, $02, $05
	sPan		spLeft
	dc.b nC3, $0B, nRst, $01, nC3, $0B, nRst, $0D
	dc.b nBb2, $05, nRst, $0D, nC3, $05, nRst, $19
	saVolFM		$08
	sPatFM		$10
	ssDetune	$05
	ssModZ80	$0F, $01, $FA, $06
	sPan		spLeft
	dc.b nC5, $0C, nA4, $06, nBb4, $0C, nG4, nC5
	dc.b nA4, $06, nBb4, $0C, nG4, $24
	saVolFM		$F8
	sPatFM		$16
	ssDetune	$05
	ssModZ80	$03, $01, $02, $05
	sPan		spLeft
	dc.b nC3, $0B, nRst, $01, nC3, $0B, nRst, $0D
	dc.b nBb2, $05, nRst, $0D, nC3, $05, nRst, $19
	saVolFM		$08
	sPatFM		$10
	ssDetune	$05
	ssModZ80	$0F, $01, $FA, $06
	sPan		spLeft
	dc.b nC5, $0C, nA4, $06, nBb4, $0C, nG4, nC5
	dc.b nA4, $06, nBb4, $0C, nG4, $24
	saVolFM		$F8
	sPatFM		$16
	ssDetune	$05
	ssModZ80	$03, $01, $02, $05
	sPan		spLeft
	dc.b nC3, $0B, nRst, $01, nC3, $0B, nRst, $0D
	dc.b nBb2, $05, nRst, $0D, nC3, $05, nRst, $19
	saVolFM		$08
	sPatFM		$10
	ssDetune	$05
	ssModZ80	$0F, $01, $FA, $06
	sPan		spLeft
	dc.b nC5, $0C, nA4, $06, nBb4, $0C, nG4, nC5
	dc.b $05, nRst, $07
	saVolFM		$F8
	sPatFM		$11
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $06
	sPan		spRight
	dc.b nF3, $02, nRst, $04, nG3, $02, nRst, $04
	dc.b nA3, $02, nRst, $04, nC4, $02, nRst, $04
	dc.b nBb3, $02, nRst, $04, nG3, $02, nRst, $04
	dc.b nA3, $02, nRst, $04
	sPatFM		$10
	ssDetune	$05
	ssModZ80	$0F, $01, $FA, $06
	sPan		spLeft
	dc.b nRst, $0C, nG4, $0B, nRst, $01, nC5, $0B
	dc.b nRst, $01, nG5, $0B, nRst, $01, nF5, $11
	dc.b nRst, $01, nE5, $11, nRst, $01, nC5, $0B
	dc.b nRst, $01, nA4, $23, nRst, $01, nC5, $0B
	dc.b nRst, $01, nB4, $11, nRst, $01, nC5, $11
	dc.b nRst, $01, nD5, $0B, nRst, $01, nE5, $2F
	dc.b nRst, $01, nA4, $23, nRst, $01, nA4, $0B
	dc.b nRst, $01, nF5, $11, nRst, $01, nE5, $11
	dc.b nRst, $01, nD5, $0B, nRst, $01, nB4, $11
	dc.b nRst, $01, nA4, $11, nRst, $01, nG4, $17
	dc.b nRst, $01, nG4, $0B, nRst, $01, nC5, $0B
	dc.b nRst, $01, nG5, $0B, nRst, $01, nF5, $11
	dc.b nRst, $01, nE5, $11, nRst, $01, nC5, $0B
	dc.b nRst, $01, nA4, $23, nRst, $01, nC5, $0B
	dc.b nRst, $01, nB4, $11, nRst, $01, nC5, $11
	dc.b nRst, $01, nD5, $0B, nRst, $01, nG5, $2F
	dc.b nRst, $01, nE5, $23, nRst, $01, nA4, $0B
	dc.b nRst, $01, nF5, $11, nRst, $01, nE5, $11
	dc.b nRst, $01, nD5, $0B, nRst, $01, nB4, $11
	dc.b nRst, $01, nA4, $11, nRst, $01, nG4, $0B
	dc.b nRst, $01
	sPatFM		$17
	ssDetune	$05
	ssModZ80	$0F, $01, $03, $05
	sPan		spRight
	dc.b nC4, $0B, nRst, $07, nC4, $03, nRst, $0F
	sPatFM		$16
	ssDetune	$05
	ssModZ80	$03, $01, $02, $05
	sPan		spLeft
	dc.b nD3, $05, nRst, $01, nE3, $05, nRst, $01
	dc.b nF3, $05, nRst, $0D, nG3, $05, nRst, $0D
	dc.b nA3, $05, nRst, $07
	sPatFM		$17
	ssDetune	$05
	ssModZ80	$0F, $01, $03, $05
	sPan		spRight
	dc.b nC4, $0B, nRst, $07, nC4, $03, nRst, $0F
	sPatFM		$16
	ssDetune	$05
	ssModZ80	$03, $01, $02, $05
	sPan		spLeft
	dc.b nD3, $05, nRst, $01, nE3, $05, nRst, $01
	dc.b nF3, $05, nRst, $0D, nG3, $05, nRst, $0D
	dc.b nA3, $05, nRst, $07
	sPatFM		$10
	ssDetune	$05
	ssModZ80	$0F, $01, $FA, $06
	sPan		spLeft
	dc.b nD5, $24, nD5, $06, nE5, nF5, $12, nE5
	dc.b nD5, $0C, nG5, $60
	sJump		AIZ1_FM3
	dc.b $F2	; Unused

AIZ1_FM4:
	sPatFM		$18
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spLeft
	dc.b nG3, $04, nE3
	saVolFM		$06
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3, nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3, nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$FA
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FC
	dc.b nA3, nF3
	saVolFM		$06
	dc.b nA3, nF3
	saVolFM		$02
	dc.b nA3, nF3
	saVolFM		$F8
	sPatFM		$18
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spLeft
	dc.b nBb3, nG3
	saVolFM		$04
	dc.b nBb3, nG3
	saVolFM		$02
	dc.b nBb3, nG3
	saVolFM		$02
	dc.b nBb3, nG3
	saVolFM		$02
	dc.b nBb3, nG3, nBb3, nG3
	saVolFM		$FE
	dc.b nBb3, nG3
	saVolFM		$FE
	dc.b nBb3
	saVolFM		$FE
	dc.b nG3
	saVolFM		$FE
	dc.b nBb3, nG3
	saVolFM		$FE
	dc.b nA3, nF3
	saVolFM		$04
	dc.b nA3, nF3
	saVolFM		$02
	dc.b nA3, nF3
	saVolFM		$FE
	dc.b nA3
	saVolFM		$FE
	dc.b nBb3
	saVolFM		$02
	dc.b nA3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3, nG3, nE3
	saVolFM		$FE
	dc.b nG3
	sPatFM		$17
	ssDetune	$FB
	ssModZ80	$0F, $01, $03, $05
	sPan		spLeft
	dc.b nC4, $06, nC4, nC5, nC4, nBb4, nC4, nBb4
	dc.b nC5
	sPatFM		$0D
	ssDetune	$FE
	ssModZ80	$0C, $01, $06, $05
	sPan		spLeft
	dc.b nF3, nBb3, nF4, nE4, $1E
	sPatFM		$18
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spLeft
	dc.b nG3, $04, nE3
	saVolFM		$06
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3, nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3, nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$FA
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FC
	dc.b nA3, nF3
	saVolFM		$06
	dc.b nA3, nF3
	saVolFM		$02
	dc.b nA3, nF3
	saVolFM		$F8
	dc.b nBb3, nG3
	saVolFM		$04
	dc.b nBb3, nG3
	saVolFM		$02
	dc.b nBb3, nG3
	saVolFM		$02
	dc.b nBb3, nG3
	saVolFM		$02
	dc.b nBb3, nG3, nBb3, nG3
	saVolFM		$FE
	dc.b nBb3, nG3
	saVolFM		$FE
	dc.b nBb3
	saVolFM		$FE
	dc.b nG3
	saVolFM		$FE
	dc.b nBb3, nG3
	saVolFM		$FE
	dc.b nA3, nF3
	saVolFM		$04
	dc.b nA3, nF3
	saVolFM		$02
	dc.b nA3, nF3
	saVolFM		$FE
	dc.b nA3
	saVolFM		$FE
	dc.b nBb3
	saVolFM		$02
	dc.b nA3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3, nG3, nE3
	saVolFM		$FE
	dc.b nG3, nC5, $06, nC5, nC5, nC5, nRst, $24
	saVolFM		$FA
	sPatFM		$0D
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01
	dc.b nF3, $0B, nRst, $01, nE3, $05, nRst, $0D
	dc.b nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	dc.b nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01
	dc.b nF3, $0B, nRst, $01, nE3, $05, nRst, $0D
	dc.b nC3, $05, nRst, $0D, nD3, $3B, nRst, $3D
	dc.b nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01
	dc.b nF3, $0B, nRst, $01, nE3, $05, nRst, $0D
	dc.b nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	dc.b nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01
	dc.b nF3, $0B, nRst, $01, nE3, $05, nRst, $0D
	dc.b nC3, $05, nRst, $0D, nD3, $3B, nRst, $49
	saVolFM		$06
	dc.b nRst, $0C
	sPatFM		$0F
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $06
	sPan		spRight
	dc.b nE4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b nBb4, $11, nRst, $07, nBb4, $05, nRst, $07
	dc.b nBb4, $05, nRst, $07, nG4, $05, nRst, $07
	dc.b nA4, $05, nRst, $0D, nF4, $05, nRst, $0D
	dc.b nC4, $29, nRst, $07, nE4, $05, nRst, $01
	dc.b nF4, $05, nRst, $01, nG4, $05, nRst, $0D
	dc.b nC4, $05, nRst, $0D, nBb4, $11, nRst, $07
	dc.b nBb4, $05, nRst, $07, nBb4, $05, nRst, $07
	dc.b nC5, $05, nRst, $07, nA4, $2F, nRst, $25
	dc.b nE4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b nBb4, $0B, nRst, $07, nBb4, $02, nRst, $04
	dc.b nBb4, $02, nRst, $0A, nBb4, $05, nRst, $07
	dc.b nG4, $05, nRst, $07, nA4, $05, nRst, $0D
	dc.b nF4, $05, nRst, $0D, nC4, $23, nRst, $0D
	dc.b nE4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b nBb4, $11, nRst, $07, nBb4, $05, nRst, $07
	dc.b nBb4, $05, nRst, $07, nC5, $05, nRst, $07
	dc.b nA4, $11, nRst, $01, nBb4, $11, nRst, $01
	dc.b nC5, $23, nRst, $19
	sPatFM		$0D
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nG2, $2F, nRst, $01, nE2, $2F, nRst, $01
	dc.b nA2, $0F, nRst, $01, nG2, $0F, nRst, $01
	dc.b nF2, $0F, nRst, $01, nE2, $0F, nRst, $01
	dc.b nF2, $0F, nRst, $01, nA2, $0F, nRst, $01
	sPatFM		$0D
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nG2, $5F, nRst, $07, nA3, $2F, nRst, $01
	dc.b nD4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b nB3, $05, nRst, $01, nG2, $2F, nRst, $01
	dc.b nE2, $2F, nRst, $01
	sPatFM		$0D
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nA2, $0F, nRst, $01, nG2, $0F, nRst, $01
	dc.b nF2, $0F, nRst, $01, nE2, $0F, nRst, $01
	dc.b nF2, $0F, nRst, $01, nA2, $0F, nRst, $01
	dc.b nG2, $5F, nRst, $01, nA3, $2F, nRst, $01
	dc.b nD4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b nB3, $05, nRst, $07
	sPatFM		$0F
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $06
	sPan		spRight
	dc.b nRst, $60, nF3, $1D, nRst, $07, nF3, $02
	dc.b nRst, $04, nG3, $02, nRst, $04, nA3, $11
	dc.b nRst, $01, nG3, $11, nRst, $01, nF3, $0B
	dc.b nRst, $01
	sPatFM		$11
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $06
	sPan		spRight
	dc.b nA3, $2F, nRst, $01, nF3, $2F, nRst, $01
	dc.b nA3, $17, nRst, $01, nG3, $17, nRst, $01
	dc.b nA3, $17, nRst, $01, nB3, $17, nRst, $01
	sJump		AIZ1_FM4
	dc.b $F2	; Unused

AIZ1_FM5:
	sPatFM		$18
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nG3, $04, nE3
	saVolFM		$06
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3, nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3, nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$FA
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FC
	dc.b nA3, nF3
	saVolFM		$06
	dc.b nA3, nF3
	saVolFM		$02
	dc.b nA3, nF3
	saVolFM		$F8
	dc.b nBb3, nG3
	saVolFM		$04
	dc.b nBb3, nG3
	saVolFM		$02
	dc.b nBb3, nG3
	saVolFM		$02
	dc.b nBb3, nG3
	saVolFM		$02
	dc.b nBb3, nG3, nBb3, nG3
	saVolFM		$FE
	dc.b nBb3, nG3
	saVolFM		$FE
	dc.b nBb3
	saVolFM		$FE
	dc.b nG3
	saVolFM		$FE
	dc.b nBb3, nG3
	saVolFM		$FE
	dc.b nA3, nF3
	saVolFM		$04
	dc.b nA3, nF3
	saVolFM		$02
	dc.b nA3, nF3
	saVolFM		$FE
	dc.b nA3
	saVolFM		$FE
	dc.b nBb3
	saVolFM		$02
	dc.b nA3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3, nG3, nE3
	saVolFM		$FE
	dc.b nG3
	sPatFM		$17
	ssDetune	$05
	ssModZ80	$0F, $01, $03, $05
	sPan		spRight
	dc.b nC4, $06, nC4, nC5, nC4, nBb4, nC4, nBb4
	dc.b nC5
	sPatFM		$11
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $06
	sPan		spRight
	dc.b nD3, nF3, nD4, nC4, $1E
	sPatFM		$18
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nG3, $04, nE3
	saVolFM		$06
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3, nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3, nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$FA
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FC
	dc.b nA3, nF3
	saVolFM		$06
	dc.b nA3, nF3
	saVolFM		$02
	dc.b nA3, nF3
	saVolFM		$F8
	dc.b nBb3, nG3
	saVolFM		$04
	dc.b nBb3, nG3
	saVolFM		$02
	dc.b nBb3, nG3
	saVolFM		$02
	dc.b nBb3, nG3
	saVolFM		$02
	dc.b nBb3, nG3, nBb3, nG3
	saVolFM		$FE
	dc.b nBb3, nG3
	saVolFM		$FE
	dc.b nBb3
	saVolFM		$FE
	dc.b nG3
	saVolFM		$FE
	dc.b nBb3, nG3
	saVolFM		$FE
	dc.b nA3, nF3
	saVolFM		$04
	dc.b nA3, nF3
	saVolFM		$02
	dc.b nA3, nF3
	saVolFM		$FE
	dc.b nA3
	saVolFM		$FE
	dc.b nBb3
	saVolFM		$02
	dc.b nA3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$02
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3
	saVolFM		$FE
	dc.b nG3, nE3, nG3, nE3
	saVolFM		$FE
	dc.b nG3
	sPatFM		$11
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $06
	sPan		spRight
	dc.b nA3, $06, nA3, nA3, nA3, nRst, $24
	saVolFM		$FA
	sPatFM		$0D
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $05
	sPan		spLeft
	dc.b nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01
	dc.b nF3, $0B, nRst, $01, nE3, $05, nRst, $0D
	dc.b nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	sPatFM		$0D
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $05
	sPan		spLeft
	dc.b nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01
	dc.b nF3, $0B, nRst, $01, nE3, $05, nRst, $0D
	dc.b nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	sPatFM		$0D
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $05
	sPan		spLeft
	dc.b nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01
	dc.b nF3, $0B, nRst, $01, nE3, $05, nRst, $0D
	dc.b nC3, $05, nRst, $0D, nBb2, $3B, nRst, $3D
	sPatFM		$0D
	ssDetune	$FB
	ssModZ80	$0F, $01, $06, $05
	sPan		spLeft
	dc.b nF2, $0B, nRst, $01, nBb2, $0B, nRst, $01
	dc.b nF3, $0B, nRst, $01, nE3, $05, nRst, $0D
	dc.b nC3, $05, nRst, $0D, nD3, $3B, nRst, $49
	saVolFM		$06
	dc.b nRst, $0C
	saVolFM		$F8
	sPatFM		$0F
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nE4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b nBb4, $11, nRst, $07, nBb4, $05, nRst, $07
	dc.b nBb4, $05, nRst, $07, nG4, $05, nRst, $07
	dc.b nA4, $05, nRst, $0D, nF4, $05, nRst, $0D
	dc.b nC4, $29, nRst, $07, nE4, $05, nRst, $01
	dc.b nF4, $05, nRst, $01, nG4, $05, nRst, $0D
	dc.b nC4, $05, nRst, $0D, nBb4, $11, nRst, $07
	dc.b nBb4, $05, nRst, $07, nBb4, $05, nRst, $07
	dc.b nC5, $05, nRst, $07, nA4, $2F, nRst, $25
	dc.b nE4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b nBb4, $0B, nRst, $07, nBb4, $02, nRst, $04
	dc.b nBb4, $02, nRst, $0A, nBb4, $05, nRst, $07
	dc.b nG4, $05, nRst, $07, nA4, $05, nRst, $0D
	dc.b nF4, $05, nRst, $0D, nC4, $23, nRst, $0D
	dc.b nE4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b nBb4, $11, nRst, $07, nBb4, $05, nRst, $07
	dc.b nBb4, $05, nRst, $07, nC5, $05, nRst, $07
	dc.b nA4, $11, nRst, $01, nBb4, $11, nRst, $01
	dc.b nC5, $23, nRst, $1F
	saVolFM		$08
	sPatFM		$0D
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nG2, $2F, nRst, $01, nE2, $2F, nRst, $01
	dc.b nA2, $0F, nRst, $01, nG2, $0F, nRst, $01
	dc.b nF2, $0F, nRst, $01, nE2, $0F, nRst, $01
	dc.b nF2, $0F, nRst, $01, nA2, $0F, nRst, $07
	saVolFM		$FE
	sPatFM		$0F
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nG3, $0B, nRst, $01, nD4, $0B, nRst, $01
	dc.b nG4, $0B, nRst, $01
	sPatFM		$0F
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nF4, $05, nRst, $0D, nE4, $05, nRst, $0D
	dc.b nC4, $05, nRst, $07, nA3, $2F, nRst, $01
	dc.b nD4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b nB3, $05, nRst, $0D
	saVolFM		$02
	sPatFM		$0D
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nG2, $2F, nRst, $01, nE2, $2F, nRst, $01
	dc.b nA2, $0F, nRst, $01, nG2, $0F, nRst, $01
	dc.b nF2, $0F, nRst, $01, nE2, $0F, nRst, $01
	dc.b nF2, $0F, nRst, $01, nA2, $0F, nRst, $07
	saVolFM		$FE
	sPatFM		$0F
	ssDetune	$05
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nG3, $0B, nRst, $01, nD4, $0B, nRst, $01
	dc.b nG4, $0B, nRst, $01, nF4, $05, nRst, $0D
	dc.b nE4, $05, nRst, $0D, nC4, $05, nRst, $07
	dc.b nA3, $2F, nRst, $01, nD4, $05, nRst, $0D
	dc.b nC4, $05, nRst, $0D, nB3, $05, nRst, $07
	sPatFM		$0D
	ssDetune	$FE
	ssModZ80	$0C, $01, $06, $05
	sPan		spLeft
	dc.b nA3, $1D, nRst, $07, nA3, $02, nRst, $04
	dc.b nB3, $02, nRst, $04, nC4, $11, nRst, $01
	dc.b nB3, $11, nRst, $01, nA3, $0B, nRst, $01
	dc.b nC4, $1D, nRst, $07, nC4, $02, nRst, $04
	dc.b nD4, $02, nRst, $04, nE4, $11, nRst, $01
	dc.b nD4, $11, nRst, $01, nC4, $0B, nRst, $01
	dc.b nD4, $2F, nRst, $01, nA3, $2F, nRst, $01
	dc.b nC4, $17, nRst, $01, nB3, $17, nRst, $01
	dc.b nC4, $17, nRst, $01, nD4, $17, nRst, $01
	saVolFM		$02
	sJump		AIZ1_FM5
	dc.b $F2	; Unused

AIZ1_PSG1:
	dc.b nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	dc.b nG3, $05, nRst, $0D, nG3, $05, nRst, $19
	dc.b nF3, $05, nRst, $0D, nF3, $05, nRst, $07
	dc.b nD3, $02, nRst, $04, nE3, $02, nRst, $04
	dc.b nF3, $02, nRst, $0A, nF3, $05, nRst, $07
	dc.b nF3, $05, nRst, $07, nF3, $05, nRst, $01
	dc.b nFs3, $05, nRst, $07, nG3, $05, nRst, $0D
	dc.b nG3, $05, nRst, $19, nG3, $05, nRst, $0D
	dc.b nG3, $05, nRst, $19, nC4, $03, nRst, nC4
	dc.b nRst, nC5, nRst, nC4, nRst, nBb4, nRst, nC4
	dc.b nRst, nBb4, nRst, nC5, nRst, nF4, $02, nRst
	dc.b $04, nBb4, $02, nRst, $04, nF5, $02, nRst
	dc.b $04, nE5, $1D, nRst, $01, nG3, $05, nRst
	dc.b $0D, nG3, $05, nRst, $19, nG3, $05, nRst
	dc.b $0D, nG3, $05, nRst, $19, nF3, $05, nRst
	dc.b $0D, nF3, $05, nRst, $07, nD3, $02, nRst
	dc.b $04, nE3, $02, nRst, $04, nF3, $02, nRst
	dc.b $0A, nF3, $05, nRst, $07, nF3, $05, nRst
	dc.b $07, nF3, $05, nRst, $01, nFs3, $05, nRst
	dc.b $07, nG3, $05, nRst, $0D, nG3, $05, nRst
	dc.b $19, nG3, $05, nRst, $0D, nG3, $05, nRst
	dc.b $19, nC6, $05, nRst, $01, nC6, $05, nRst
	dc.b $01, nC6, $05, nRst, $01, nC6, $05, nRst
	dc.b $55, nD3, $02, nRst, $0A, nE3, $02, nRst
	dc.b $16, nD3, $11, nRst, $01, nE3, $02, nRst
	dc.b $28, nA4, $05, nRst, $01, nBb4, $05, nRst
	dc.b $07, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b $04, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b $0A, nA4, $23, nRst, $0D, nD3, $02, nRst
	dc.b $0A, nE3, $02, nRst, $16, nD3, $11, nRst
	dc.b $01, nE3, $02, nRst, $28, nA4, $05, nRst
	dc.b $01, nBb4, $05, nRst, $07, nBb4, $02, nRst
	dc.b $04, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b $04, nBb4, $02, nRst, $0A, nC5, $05, nRst
	dc.b $01, nBb4, $1D, nRst, $0D, nD3, $02, nRst
	dc.b $0A, nE3, $02, nRst, $16, nD3, $11, nRst
	dc.b $01, nE3, $02, nRst, $28, nA4, $05, nRst
	dc.b $01, nBb4, $05, nRst, $07, nBb4, $02, nRst
	dc.b $04, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b $04, nBb4, $02, nRst, $0A, nA4, $23, nRst
	dc.b $0D, nD3, $02, nRst, $0A, nE3, $02, nRst
	dc.b $16, nD3, $11, nRst, $01, nE3, $02, nRst
	dc.b $28, nA4, $05, nRst, $01, nBb4, $05, nRst
	dc.b $07, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b $04, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b $0A, nC5, $05, nRst, $01, nBb4, $1D, nRst
	dc.b $0D, nC3, $0B, nRst, $01, nC3, $0B, nRst
	dc.b $0D, nBb2, $05, nRst, $0D, nC3, $05, nRst
	dc.b $19, nC5, $0C, nA4, $06, nBb4, $0C, nG4
	dc.b nC5, nA4, $06, nBb4, $0C, nG4, $24, nC3
	dc.b $0B, nRst, $01, nC3, $0B, nRst, $0D, nBb2
	dc.b $05, nRst, $0D, nC3, $05, nRst, $19, nC5
	dc.b $0C, nA4, $06, nBb4, $0C, nG4, nC5, nA4
	dc.b $06, nBb4, $0C, nG4, $24, nC3, $0B, nRst
	dc.b $01, nC3, $0B, nRst, $0D, nBb2, $05, nRst
	dc.b $0D, nC3, $05, nRst, $19, nC5, $0C, nA4
	dc.b $06, nBb4, $0C, nG4, nC5, nA4, $06, nBb4
	dc.b $0C, nG4, $24, nC3, $0B, nRst, $01, nC3
	dc.b $0B, nRst, $0D, nBb2, $05, nRst, $0D, nC3
	dc.b $05, nRst, $19, nC5, $0C, nA4, $06, nBb4
	dc.b $0C, nG4, nC5, nF3, $02, nRst, $04, nG3
	dc.b $02, nRst, $04, nA3, $02, nRst, $04, nC4
	dc.b $02, nRst, $04, nBb3, $02, nRst, $04, nG3
	dc.b $02, nRst, $04, nA3, $02, nRst, $04, nD5
	dc.b $03, nRst, nB4, nRst, nG4, nRst, nE4, nRst
	dc.b nD4, nRst, nB3, nRst, nG3, nRst, nE3, nRst
	dc.b nC5, nRst, nB4, nRst, nG4, nRst, nE4, nRst
	dc.b nC4, nRst, nB3, nRst, nG3, nRst, nE3, nRst
	dc.b nC5, nRst, nA4, nRst, nF4, nRst, nD4, nRst
	dc.b nC4, nRst, nA3, nRst, nF3, nRst, nD3, nRst
	dc.b nB4, nRst, nA4, nRst, nF4, nRst, nD4, nRst
	dc.b nB3, nRst, nA3, nRst, nF3, nRst, nD3, nRst
	dc.b $0F, nG3, $0B, nRst, $01, nD4, $0B, nRst
	dc.b $01, nG4, $0B, nRst, $01, nF4, $05, nRst
	dc.b $0D, nE4, $05, nRst, $0D, nC4, $05, nRst
	dc.b $07, nA3, $2F, nRst, $01, nD4, $05, nRst
	dc.b $0D, nC4, $05, nRst, $0D, nB3, $05, nRst
	dc.b $07, nD5, $03, nRst, nB4, nRst, nG4, nRst
	dc.b nE4, nRst, nD4, nRst, nB3, nRst, nG3, nRst
	dc.b nE3, nRst, nC5, nRst, nB4, nRst, nG4, nRst
	dc.b nE4, nRst, nC4, nRst, nB3, nRst, nG3, nRst
	dc.b nE3, nRst, nC5, nRst, nA4, nRst, nF4, nRst
	dc.b nD4, nRst, nC4, nRst, nA3, nRst, nF3, nRst
	dc.b nD3, nRst, nB4, nRst, nA4, nRst, nF4, nRst
	dc.b nD4, nRst, nB3, nRst, nA3, nRst, nF3, nRst
	dc.b nD3, nRst, nG4, $2F, nRst, $01, nE4, $23
	dc.b nRst, $01, nA3, $0B, nRst, $01, nF4, $11
	dc.b nRst, $01, nE4, $11, nRst, $01, nD4, $0B
	dc.b nRst, $01, nB3, $11, nRst, $01, nA3, $11
	dc.b nRst, $01, nG3, $0B, nRst, $01, nE4, $0B
	dc.b nRst, $07, nE4, $03, nRst, $0F, nA3, $02
	dc.b nRst, $04, nB3, $02, nRst, $04, nC4, $11
	dc.b nRst, $01, nB3, $11, nRst, $01, nA3, $0B
	dc.b nRst, $01, nE4, $0B, nRst, $07, nE4, $03
	dc.b nRst, $0F, nF3, $02, nRst, $04, nG3, $02
	dc.b nRst, $04, nA3, $11, nRst, $01, nG3, $11
	dc.b nRst, $01, nF3, $0B, nRst, $01, nF2, $05
	dc.b nRst, $01, nA2, $05, nRst, $01, nD3, $05
	dc.b nRst, $01, nF3, $05, nRst, $01, nD3, $05
	dc.b nRst, $01, nF3, $05, nRst, $01, nA3, $05
	dc.b nRst, $01, nD4, $05, nRst, $01, nA3, $05
	dc.b nRst, $01, nD4, $05, nRst, $01, nF4, $05
	dc.b nRst, $01, nA4, $05, nRst, $01, nF4, $05
	dc.b nRst, $01, nA4, $05, nRst, $01, nD5, $05
	dc.b nRst, $01, nF5, $05, nRst, $01, nC4, $17
	dc.b nRst, $01, nB3, $17, nRst, $01, nC4, $17
	dc.b nRst, $01, nD4, $17, nRst, $01
	sJump		AIZ1_PSG1
	dc.b $F2	; Unused

AIZ1_PSG2:
	dc.b nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b nE3, $05, nRst, $0D, nE3, $05, nRst, $19
	dc.b nD3, $05, nRst, $0D, nD3, $05, nRst, $07
	dc.b nBb2, $02, nRst, $04, nC3, $02, nRst, $04
	dc.b nD3, $02, nRst, $0A, nD3, $05, nRst, $07
	dc.b nD3, $05, nRst, $07, nD3, $05, nRst, $01
	dc.b nEb3, $05, nRst, $07, nE3, $05, nRst, $0D
	dc.b nE3, $05, nRst, $19, nE3, $05, nRst, $0D
	dc.b nE3, $05, nRst, $19, nC4, $03, nRst, nC4
	dc.b nRst, nC5, nRst, nC4, nRst, nBb4, nRst, nC4
	dc.b nRst, nBb4, nRst, nC5, nRst, nF4, $02, nRst
	dc.b $04, nBb4, $02, nRst, $04, nF5, $02, nRst
	dc.b $04, nE5, $1D, nRst, $01, nE3, $05, nRst
	dc.b $0D, nE3, $05, nRst, $19, nE3, $05, nRst
	dc.b $0D, nE3, $05, nRst, $19, nD3, $05, nRst
	dc.b $0D, nD3, $05, nRst, $07, nBb2, $02, nRst
	dc.b $04, nC3, $02, nRst, $04, nD3, $02, nRst
	dc.b $0A, nD3, $05, nRst, $07, nD3, $05, nRst
	dc.b $07, nD3, $05, nRst, $01, nEb3, $05, nRst
	dc.b $07, nE3, $05, nRst, $0D, nE3, $05, nRst
	dc.b $19, nE3, $05, nRst, $0D, nE3, $05, nRst
	dc.b $19, nA4, $05, nRst, $01, nA4, $05, nRst
	dc.b $01, nA4, $05, nRst, $01, nA4, $05, nRst
	dc.b $55, nBb2, $02, nRst, $0A, nC3, $02, nRst
	dc.b $16, nBb2, $11, nRst, $01, nC3, $02, nRst
	dc.b $28, nFs4, $05, nRst, $01, nG4, $05, nRst
	dc.b $07, nG4, $02, nRst, $04, nG4, $02, nRst
	dc.b $04, nG4, $02, nRst, $04, nG4, $02, nRst
	dc.b $0A, nF4, $23, nRst, $0D, nBb2, $02, nRst
	dc.b $0A, nC3, $02, nRst, $16, nBb2, $11, nRst
	dc.b $01, nC3, $02, nRst, $28, nFs4, $05, nRst
	dc.b $01, nG4, $05, nRst, $07, nG4, $02, nRst
	dc.b $04, nG4, $02, nRst, $04, nG4, $02, nRst
	dc.b $04, nG4, $02, nRst, $0A, nA4, $05, nRst
	dc.b $01, nG4, $1D, nRst, $0D, nBb2, $02, nRst
	dc.b $0A, nC3, $02, nRst, $16, nBb2, $11, nRst
	dc.b $01, nC3, $02, nRst, $28, nFs4, $05, nRst
	dc.b $01, nG4, $05, nRst, $07, nG4, $02, nRst
	dc.b $04, nG4, $02, nRst, $04, nG4, $02, nRst
	dc.b $04, nG4, $02, nRst, $0A, nF4, $23, nRst
	dc.b $0D, nBb2, $02, nRst, $0A, nC3, $02, nRst
	dc.b $16, nBb2, $11, nRst, $01, nC3, $02, nRst
	dc.b $28, nFs4, $05, nRst, $01, nG4, $05, nRst
	dc.b $07, nG4, $02, nRst, $04, nG4, $02, nRst
	dc.b $04, nG4, $02, nRst, $04, nG4, $02, nRst
	dc.b $0A, nA4, $05, nRst, $01, nG4, $1D, nRst
	dc.b $0D, nC3, $0B, nRst, $01, nC3, $0B, nRst
	dc.b $0D, nBb2, $05, nRst, $0D, nC3, $05, nRst
	dc.b $19, nC5, $0C, nA4, $06, nBb4, $0C, nG4
	dc.b nC5, nA4, $06, nBb4, $0C, nG4, $24, nC3
	dc.b $0B, nRst, $01, nC3, $0B, nRst, $0D, nBb2
	dc.b $05, nRst, $0D, nC3, $05, nRst, $19, nC5
	dc.b $0C, nA4, $06, nBb4, $0C, nG4, nC5, nA4
	dc.b $06, nBb4, $0C, nG4, $24, nC3, $0B, nRst
	dc.b $01, nC3, $0B, nRst, $0D, nBb2, $05, nRst
	dc.b $0D, nC3, $05, nRst, $19, nC5, $0C, nA4
	dc.b $06, nBb4, $0C, nG4, nC5, nA4, $06, nBb4
	dc.b $0C, nG4, $24, nC3, $0B, nRst, $01, nC3
	dc.b $0B, nRst, $0D, nBb2, $05, nRst, $0D, nC3
	dc.b $05, nRst, $19, nC5, $0C, nA4, $06, nBb4
	dc.b $0C, nG4, nC5, nF3, $02, nRst, $04, nG3
	dc.b $02, nRst, $04, nA3, $02, nRst, $04, nC4
	dc.b $02, nRst, $04, nBb3, $02, nRst, $04, nG3
	dc.b $02, nRst, $04, nA3, $02, nRst, $04, nD5
	dc.b $03, nRst, nB4, nRst, nG4, nRst, nE4, nRst
	dc.b nD4, nRst, nB3, nRst, nG3, nRst, nE3, nRst
	dc.b nC5, nRst, nB4, nRst, nG4, nRst, nE4, nRst
	dc.b nC4, nRst, nB3, nRst, nG3, nRst, nE3, nRst
	dc.b nC5, nRst, nA4, nRst, nF4, nRst, nD4, nRst
	dc.b nC4, nRst, nA3, nRst, nF3, nRst, nD3, nRst
	dc.b nB4, nRst, nA4, nRst, nF4, nRst, nD4, nRst
	dc.b nB3, nRst, nA3, nRst, nF3, nRst, nD3, nRst
	dc.b $15
	saVolFMP	$0A, $AC
	dc.b $0B, nRst, $01, nD4, $0B, nRst, $01, nG4
	dc.b $0B, nRst, $01, nF4, $05, nRst, $0D, nE4
	dc.b $05, nRst, $0D, nC4, $05, nRst, $07, nA3
	dc.b $2F, nRst, $01, nD4, $05, nRst, $0D, nC4
	dc.b $05, nRst, $0D, nB3, $05, nRst, $01
	saVolFMP	$F6, $BF
	dc.b $03, nRst, nB4, nRst, nG4, nRst, nE4, nRst
	dc.b nD4, nRst, nB3, nRst, nG3, nRst, nE3, nRst
	dc.b nC5, nRst, nB4, nRst, nG4, nRst, nE4, nRst
	dc.b nC4, nRst, nB3, nRst, nG3, nRst, nE3, nRst
	dc.b nC5, nRst, nA4, nRst, nF4, nRst, nD4, nRst
	dc.b nC4, nRst, nA3, nRst, nF3, nRst, nD3, nRst
	dc.b nB4, nRst, nA4, nRst, nF4, nRst, nD4, nRst
	dc.b nB3, nRst, nA3, nRst, nF3, nRst, nD3, nRst
	dc.b $09, nG4, $2F, nRst, $01, nE4, $23, nRst
	dc.b $01, nA3, $0B, nRst, $01, nF4, $11, nRst
	dc.b $01, nE4, $11, nRst, $01, nD4, $0B, nRst
	dc.b $01, nB3, $11, nRst, $01, nA3, $11, nRst
	dc.b $01, nG3, $06, nC4, $0B, nRst, $07, nC4
	dc.b $03, nRst, $0F, nA3, $02, nRst, $04, nB3
	dc.b $02, nRst, $04, nC4, $11, nRst, $01, nB3
	dc.b $11, nRst, $01, nA3, $0B, nRst, $01, nC4
	dc.b $0B, nRst, $07, nC4, $03, nRst, $0F, nF3
	dc.b $02, nRst, $04, nG3, $02, nRst, $04, nA3
	dc.b $11, nRst, $01, nG3, $11, nRst, $01, nF3
	dc.b $0B, nRst, $01, nF2, $05, nRst, $01, nA2
	dc.b $05, nRst, $01, nD3, $05, nRst, $01, nF3
	dc.b $05, nRst, $01, nD3, $05, nRst, $01, nF3
	dc.b $05, nRst, $01, nA3, $05, nRst, $01, nD4
	dc.b $05, nRst, $01, nA3, $05, nRst, $01, nD4
	dc.b $05, nRst, $01, nF4, $05, nRst, $01, nA4
	dc.b $05, nRst, $01, nF4, $05, nRst, $01, nA4
	dc.b $05, nRst, $01, nD5, $05, nRst, $01, nF5
	dc.b $05, nRst, $01, nC4, $17, nRst, $01, nB3
	dc.b $17, nRst, $01, nC4, $17, nRst, $01, nD4
	dc.b $17, nRst, $01
	sJump		AIZ1_PSG2
	dc.b $F2	; Unused

AIZ1_PSG3:
	sVolEnvPSG	v02
	sNoisePSG	$E7
	dc.b nBb6, $06, nBb6
	sVolEnvPSG	v04
	dc.b nBb6, $0C
	sVolEnvPSG	v01

AIZ1_Loop1:
	dc.b nBb6, $06, nBb6
	sVolEnvPSG	v04
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	sLoop		$01, $1A, AIZ1_Loop1
	dc.b nBb6, $06, nBb6, nA6, $6C

AIZ1_Loop2:
	dc.b nBb6, $06, nBb6
	sVolEnvPSG	v04
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	sLoop		$01, $1B, AIZ1_Loop2
	dc.b nBb6, $06, nBb6, nA6, $6C

AIZ1_Loop3:
	dc.b nBb6, $06, nBb6
	sVolEnvPSG	v04
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	sLoop		$01, $4C, AIZ1_Loop3
	dc.b nRst, $60
	sJump		AIZ1_PSG3

AIZ1_Patches:

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
