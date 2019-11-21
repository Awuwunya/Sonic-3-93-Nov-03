DataSelect_Header:
	sHeaderInit						; Z80 offset is $E95E
	sHeaderPatch	DataSelect_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $40
	sHeaderDAC	DataSelect_DAC
	sHeaderFM	DataSelect_FM1, $0C, $12
	sHeaderFM	DataSelect_FM2, $0C, $19
	sHeaderFM	DataSelect_FM3, $0C, $19
	sHeaderFM	DataSelect_FM4, $0C, $19
	sHeaderFM	DataSelect_FM5, $0C, $19
	sHeaderPSG	DataSelect_PSG1, $00, $06, $00, v0C
	sHeaderPSG	DataSelect_PSG2, $00, $06, $00, v0C
	sHeaderPSG	DataSelect_PSG3, $00, $04, $00, v0C
	dc.b $F2, $F2	; Unused

DataSelect_DAC:
	dc.b nRst, $2A

DataSelect_Jump9:
	dc.b dKick, $12, dKick, $06, dKick, dElectricHighTom, $0C, dKick
	dc.b $06, dKick, $12, dKick, $06, dKick, dElectricMidTom, dElectricLowTom
	dc.b $0C, dKick, $12, dKick, $06, dKick, dElectricHighTom, $0C
	dc.b dKick, $06, dKick, $12, dKick, $06, dKick, dElectricMidTom
	dc.b dElectricLowTom, $0C, dKick, $12, dKick, $06, dKick, dElectricHighTom
	dc.b $0C, dKick, $06, dKick, $12, dKick, $06, dKick
	dc.b dElectricMidTom, dElectricLowTom, $0C, dKick, $12, dKick, $06, dKick
	dc.b dElectricHighTom, $0C, dKick, $06, dKick, $02, dHigherMetalHit, $03
	dc.b dHigherMetalHit, $01, dHigherMetalHit, $0C, dHigherMetalHit, $06, dHigherMetalHit, $08
	dc.b dHigherMetalHit, dMidMetalHit, dKick, $12, dKick, $06, dKick, dElectricHighTom
	dc.b $0C, dKick, $06, dKick, $12, dKick, $06, dKick
	dc.b dElectricMidTom, dElectricLowTom, $0C, dKick, $12, dKick, $06, dKick
	dc.b dElectricHighTom, $0C, dKick, $06, dKick, $12, dKick, $06
	dc.b dKick, dElectricMidTom, dElectricLowTom, $0C, dKick, $12, dKick, $06
	dc.b dKick, dElectricHighTom, $0C, dKick, $06, dKick, $12, dKick
	dc.b $06, dKick, dElectricMidTom, dElectricLowTom, $0C, dElectricLowTom, $06, dElectricLowTom
	dc.b dElectricLowTom, $12, dElectricLowTom, $06, dElectricLowTom, dElectricLowTom, $1E, dElectricMidTom
	dc.b $18, dKick, $12, dKick, $06, dKick, dElectricHighTom, $0C
	dc.b dKick, $06, dKick, $12, dKick, $06, dKick, dElectricMidTom
	dc.b dElectricLowTom, $0C, dKick, $12, dKick, $06, dKick, dElectricHighTom
	dc.b $0C, dKick, $06, dKick, $12, dKick, $06, dKick
	dc.b dElectricMidTom, dElectricLowTom, $0C, dKick, $12, dKick, $06, dKick
	dc.b dElectricHighTom, $0C, dKick, $06, dKick, $12, dKick, $06
	dc.b dKick, dElectricMidTom, dElectricLowTom, $0C, dKick, $12, dKick, $06
	dc.b dKick, dElectricHighTom, $0C, dKick, $06, dKick, $12, dKick
	dc.b $06, dKick, dElectricMidTom, dElectricLowTom, $0C, dKick, $12, dKick
	dc.b $06, dKick, dElectricHighTom, $0C, dKick, $06, dKick, $12
	dc.b dKick, $06, dKick, dElectricMidTom, dElectricLowTom, $0C, dKick, $12
	dc.b dKick, $06, dKick, dElectricHighTom, $0C, dKick, $06, dKick
	dc.b $12, dKick, $06, dKick, dElectricMidTom, dElectricLowTom, $0C, dKick
	dc.b $12, dKick, $06, dKick, dElectricHighTom, $0C, dKick, $06
	dc.b dKick, $12, dKick, $06, dKick, dElectricMidTom, dElectricLowTom, $0C
	dc.b dKick, $12, dKick, $06, dKick, dElectricHighTom, $0C, dKick
	dc.b $06, dKick, dHigherMetalHit, $0C, dHigherMetalHit, $06, dHigherMetalHit, $0C
	dc.b dElectricLowTom, dKick, $12, dKick, $06, dKick, dElectricHighTom, $0C
	dc.b dKick, $06, dKick, $12, dKick, $06, dKick, dElectricMidTom
	dc.b dElectricLowTom, $0C, dKick, $12, dKick, $06, dKick, dElectricHighTom
	dc.b $0C, dKick, $06, dKick, $12, dKick, $06, dKick
	dc.b dElectricMidTom, dElectricLowTom, $0C, dKick, $12, dKick, $06, dKick
	dc.b dElectricHighTom, $0C, dKick, $06, dKick, $12, dKick, $06
	dc.b dKick, dElectricMidTom, dElectricLowTom, $0C, dElectricLowTom, $06, dElectricLowTom, dElectricLowTom
	dc.b $12, dElectricLowTom, $06, dElectricLowTom, dElectricLowTom, $1E, dElectricMidTom, $18
	dc.b dKick, $12, dKick, $06, dKick, dElectricHighTom, $0C, dKick
	dc.b $06, dKick, $12, dKick, $06, dKick, dElectricMidTom, dElectricLowTom
	dc.b $0C, dKick, $12, dKick, $06, dKick, dElectricHighTom, $0C
	dc.b dKick, $06, dKick, $12, dKick, $06, dKick, dElectricMidTom
	dc.b dElectricLowTom, $0C, dKick, $12, dKick, $06, dKick, dElectricHighTom
	dc.b $0C, dKick, $06, dKick, $12, dKick, $06, dKick
	dc.b dElectricMidTom, dElectricLowTom, $0C, dKick, $12, dKick, $06, dKick
	dc.b dElectricHighTom, $0C, dElectricLowTom, $06, dKick, $0C, dElectricLowTom, $06
	dc.b dKick, dElectricLowTom, dElectricLowTom, dElectricMidTom, $0C, dKick, $12, dKick
	dc.b $06, dKick, dElectricHighTom, $0C, dKick, $06, dKick, $12
	dc.b dKick, $06, dKick, dElectricMidTom, dElectricLowTom, $0C, dKick, $12
	dc.b dKick, $06, dKick, dElectricHighTom, $0C, dKick, $06, dKick
	dc.b $12, dKick, $06, dKick, dElectricMidTom, dElectricLowTom, $0C, dKick
	dc.b $12, dKick, $06, dKick, dElectricHighTom, $0C, dKick, $06
	dc.b dKick, $12, dKick, $06, dKick, dElectricMidTom, dElectricLowTom, $0C
	dc.b dElectricLowTom, dKick, $06, dElectricLowTom, $0C, dKick, $06, dElectricLowTom
	dc.b nRst, $36
	sJump		DataSelect_Jump9
	dc.b $F2	; Unused

DataSelect_FM1:
	dc.b nRst, $2A

DataSelect_Jump1:
	sPatFM		$00
	dc.b nC1, $12, nG1, nC2, $0C, nF1, $12, nC2
	dc.b nF2, $0C, nBb0, $12, nF1, nBb1, $0C, nG0
	dc.b $12, nD1, nG1, $0C, nC1, $12, nG1, nC2
	dc.b $0C, nF1, $12, nC2, nF2, $0C, nBb0, $12
	dc.b nC1, nD1, $0C, nRst, $30, nC1, $12, nG1
	dc.b nC2, $0C, nF1, $12, nC2, nF2, $0C, nBb0
	dc.b $12, nF1, nBb1, $0C, nG1, $12, nD2, nG2
	dc.b $0C, nC1, $12, nG1, nC2, $0C, nF1, $12
	dc.b nC2, nF2, $0C, nBb0, $06, nBb0, nBb0, nRst
	dc.b $0C, nBb0, $06, nBb0, nBb0, nRst, $30, nF1
	dc.b $12, nC2, nF2, $0C, nBb0, $12, nF1, nBb1
	dc.b $0C, nEb1, $12, nBb1, nEb2, $0C, nEb1, $12
	dc.b nBb1, nEb2, $0C, nF1, $12, nC2, nF2, $0C
	dc.b nBb0, $12, nF1, nBb1, $0C, nEb1, $12, nBb1
	dc.b nEb2, $0C, nEb1, $12, nF1, nFs1, $0C, nG1
	dc.b $12, nD2, nG2, $0C, nC1, $12, nG1, nC2
	dc.b $0C, nF1, $12, nC2, nF2, $0C, nD1, $12
	dc.b nA1, nD2, $0C, nG1, $12, nD2, nG2, $0C
	dc.b nC1, $12, nG1, nC2, $0C, nF1, $12, nC1
	dc.b nF0, $0C, nRst, $30, nC1, $12, nG1, nC2
	dc.b $0C, nF1, $12, nC2, nF2, $0C, nBb0, $12
	dc.b nF1, nBb1, $0C, nG1, $12, nD2, nG2, $0C
	dc.b nC1, $12, nG1, nC2, $0C, nF1, $12, nC2
	dc.b nF2, $0C, nBb0, $06, nBb0, nBb0, nRst, $0C
	dc.b nBb0, $06, nBb0, nBb0, nRst, $30, nF1, $12
	dc.b nC2, nF2, $0C, nF1, $12, nC2, nF2, $0C
	dc.b nF1, $12, nC2, nF2, $0C, nG1, $18, nFs1
	dc.b nF1, $12, nC2, nF2, $0C, nF1, $12, nC2
	dc.b nF2, $0C, nBb1, $12, nBb1, $06, nRst, nF1
	dc.b nFs1, nG1, $0C, nG1, $06, nD2, $0C, nG2
	dc.b $06, nD2, nG1, $0C, nF1, $12, nC2, nF2
	dc.b $0C, nF1, $12, nC2, nF2, $0C, nF1, $12
	dc.b nC2, nF2, $0C, nG1, $18, nFs1, nF1, $12
	dc.b nC2, nF2, $0C, nF1, $12, nC2, nF2, $0C
	dc.b nBb0, $12, nC1, nD1, $0C, nRst, $30
	sJump		DataSelect_Jump1
	dc.b $F2	; Unused

DataSelect_FM2:
	sPatFM		$12
	ssDetune	$00
	ssModZ80	$03, $01, $FC, $05
	sPan		spCenter
	dc.b nBb3, $0C, nBb3, $06, nBb3, $08, nA3, nBb3

DataSelect_Jump2:
	dc.b nA3, $03, nBb3, nA3, $0C, nG3, $26, nA3
	dc.b $08, nBb3, nC4, nA3, nG3, nG3, $03, nA3
	dc.b nG3, $0C, nF3, $21, nCs3, $03, nD3, $0C
	dc.b nEb3, $06, nF3, $08, nG3, nD3, nF3, $12
	dc.b nEb3, $0F, nA3, $03, nBb3, $0C, nA3, $12
	dc.b nG3, nA3, $0C, nG3, $03, nA3, nG3, $0C
	dc.b nF3, $24, nBb3, $0C, nBb3, $06, nBb3, $08
	dc.b nA3, nBb3, nA3, $03, nBb3, nA3, $0C, nG3
	dc.b $26, nA3, $08, nBb3, nC4, nA3, nG3, nG3
	dc.b $03, nA3, nG3, $0C, nF3, $22, nFs3, $04
	dc.b nG3, $08, nA3, nB3, nC4, nD4, nEb4, $12
	dc.b nG3, nBb3, $0C, nA3, $12, nG3, nA3, $0C
	dc.b nBb3, $06, nBb3, nBb3, $12, nBb3, $06, nBb3
	dc.b nBb3, $2A
	sPatFM		$0F
	ssDetune	$04
	ssModZ80	$0F, $01, $06, $05
	dc.b nC5, $03, nRst, nD5, nRst, nEb5, $12, nAb4
	dc.b nEb5, $0C, nD5, $18, nRst, $0C, nBb4, $03
	dc.b nRst, nC5, nRst, nD5, $12, nG5, nD5, $0C
	dc.b nC5, $18, nRst, $0C, nC5, $03, nRst, nD5
	dc.b nRst, nEb5, $12, nAb4, nEb5, $0C, nD5, $12
	dc.b nF5, nD5, $0C, nC5, $03, nD5, nC5, $0C
	dc.b nBb4, $36, nRst, $0C, nD5, $03, nRst, nE5
	dc.b nRst, nF5, $12, nBb4, nF5, $0C, nE5, $18
	dc.b nRst, $0C, nC5, $03, nRst, nD5, nRst, nE5
	dc.b $12, nA5, nE5, $0C, nD5, $18, nRst, $0C
	dc.b nA4, $06, nBb4, nC5, $03, nRst, $09, nD5
	dc.b $03, nRst, nBb4, nRst, $09, nC5, $03, nRst
	dc.b $09, nA4, $03, nRst, $09, nBb4, $03, nRst
	dc.b $09, nG4, $03, nRst, $09, nA4, $0C, nAb4
	dc.b $02, nG4, nFs4, nF4, $06, nRst, $30
	sPatFM		$12
	ssDetune	$00
	ssModZ80	$03, $01, $FC, $05
	sPan		spCenter
	dc.b nBb3, $0C, nBb3, $06, nBb3, $08, nA3, nBb3
	dc.b nA3, $03, nBb3, nA3, $0C, nG3, $26, nA3
	dc.b $08, nBb3, nC4, nA3, nG3, nG3, $03, nA3
	dc.b nG3, $0C, nF3, $22, nFs3, $04, nG3, $08
	dc.b nA3, nB3, nC4, nD4, nEb4, $12, nG3, nBb3
	dc.b $0C, nA3, $12, nG3, nA3, $0C, nBb3, $06
	dc.b nBb3, nBb3, $12, nBb3, $06, nBb3, nBb3, $3C
	sPatFM		$0D
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft
	dc.b nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4
	dc.b nRst, $09, nC4, $03, nRst, nD4, nRst, $09
	dc.b nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	dc.b nD3, $03, nRst, nF3, nRst, nA3, nRst, nC4
	dc.b nRst, $09, nBb3, $03, nRst, nC4, nRst, $09
	dc.b nBb3, $03, nRst, nC4, nRst, nBb3, $0C
	sPatFM		$0B
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft
	dc.b nG3, $03, nRst, nA3, $06, nBb3, $0C
	sPatFM		$0D
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft
	dc.b nEb3, $06, nG3, $03, nRst, nBb3, nRst, nD4
	dc.b nRst, $09, nC4, $03, nRst, nD4, nRst, $09
	dc.b nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	sPatFM		$0F
	ssDetune	$04
	ssModZ80	$0F, $01, $06, $05
	dc.b nBb4, $06, nA4, nF4, nD4, nBb3, nA3, nG3
	dc.b $0C, nRst, $30
	sPatFM		$0D
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft
	dc.b nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4
	dc.b nRst, $09, nC4, $03, nRst, nD4, nRst, $09
	dc.b nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	dc.b nD3, $03, nRst, nF3, nRst, nA3, nRst, nC4
	dc.b nRst, $09, nBb3, $03, nRst, nC4, nRst, $09
	dc.b nBb3, $03, nRst, nC4, nRst, nBb3, $0C
	sPatFM		$0B
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft
	dc.b nG3, $03, nRst, nA3, $06, nBb3, $0C
	sPatFM		$0D
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft
	dc.b nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4
	dc.b nRst, $09, nC4, $03, nRst, nD4, nRst, $09
	dc.b nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	sPatFM		$0F
	ssDetune	$04
	ssModZ80	$0F, $01, $06, $05
	dc.b nBb4, $06, nA4, nF4, nD4, nBb3, nA3, nG3
	dc.b $0C
	sPatFM		$12
	ssDetune	$00
	ssModZ80	$03, $01, $FC, $05
	sPan		spCenter
	dc.b nBb3, $0C, nBb3, $06, nBb3, $08, nA3, nBb3
	sJump		DataSelect_Jump2
	dc.b $F2	; Unused

DataSelect_FM3:
	sPatFM		$12
	ssDetune	$FD
	ssModZ80	$03, $01, $04, $05
	sPan		spCenter
	dc.b nBb2, $0C, nBb2, $06, nBb2, $08, nA2, nBb2

DataSelect_Jump3:
	sPatFM		$12
	ssDetune	$FD
	ssModZ80	$03, $01, $04, $05
	sPan		spCenter
	dc.b nA2, $03, nBb2, nA2, $0C, nG2, $26, nA2
	dc.b $08, nBb2, nC3, nA2, nG2, nG2, $03, nA2
	dc.b nG2, $0C, nF2, $21, nCs2, $03, nD2, $0C
	dc.b nEb2, $06, nF2, $08, nG2, nD2, nF2, $12
	dc.b nEb2, $0F, nA2, $03, nBb2, $0C, nA2, $12
	dc.b nG2, nA2, $0C, nG2, $03, nA2, nG2, $0C
	dc.b nF2, $24, nBb2, $0C, nBb2, $06, nBb2, $08
	dc.b nA2, nBb2, nA2, $03, nBb2, nA2, $0C, nG2
	dc.b $26, nA2, $08, nBb2, nC3, nA2, nG2, nG2
	dc.b $03, nA2, nG2, $0C, nF2, $22, nFs2, $04
	dc.b nG2, $08, nA2, nB2, nC3, nD3, nEb3, $12
	dc.b nG2, nBb2, $0C, nA2, $12, nG2, nA2, $0C
	dc.b nBb2, $06, nBb2, nBb2, $12, nBb2, $06, nBb2
	dc.b nBb2, $30
	sPatFM		$0F
	ssDetune	$04
	ssModZ80	$0F, $01, $06, $05
	saVolFM		$14
	dc.b nC5, $03, nRst, nD5, nRst, nEb5, $12, nAb4
	dc.b nEb5, $0C, nD5, $18, nRst, $0C, nBb4, $03
	dc.b nRst, nC5, nRst, nD5, $12, nG5, nD5, $0C
	dc.b nC5, $18, nRst, $0C, nC5, $03, nRst, nD5
	dc.b nRst, nEb5, $12, nAb4, nEb5, $0C, nD5, $12
	dc.b nF5, nD5, $0C, nC5, $03, nD5, nC5, $0C
	dc.b nBb4, $36, nRst, $0C, nD5, $03, nRst, nE5
	dc.b nRst, nF5, $12, nBb4, nF5, $0C, nE5, $18
	dc.b nRst, $0C, nC5, $03, nRst, nD5, nRst, nE5
	dc.b $12, nA5, nE5, $0C, nD5, $18, nRst, $0C
	dc.b nA4, $06, nBb4, nC5, $03, nRst, $09, nD5
	dc.b $03, nRst, nBb4, nRst, $09, nC5, $03, nRst
	dc.b $09, nA4, $03, nRst, $09, nBb4, $03, nRst
	dc.b $09, nG4, $03, nRst, $09, nA4, $0C, nAb4
	dc.b $02, nG4, nFs4, nF4, $06, nRst, $2A
	saVolFM		$EC
	sPatFM		$12
	ssDetune	$FD
	ssModZ80	$03, $01, $04, $05
	sPan		spCenter
	dc.b nBb2, $0C, nBb2, $06, nBb2, $08, nA2, nBb2
	dc.b nA2, $03, nBb2, nA2, $0C, nG2, $26, nA2
	dc.b $08, nBb2, nC3, nA2, nG2, nG2, $03, nA2
	dc.b nG2, $0C, nF2, $22, nFs2, $04, nG2, $08
	dc.b nA2, nB2, nC3, nD3, nEb3, $12, nG2, nBb2
	dc.b $0C, nA2, $12, nG2, nA2, $0C, nBb2, $06
	dc.b nBb2, nBb2, $12, nBb2, $06, nBb2, nBb2, $3C
	sPatFM		$0D
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3
	dc.b nRst, $09, nA3, $03, nRst, nBb3, nRst, $09
	dc.b nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	dc.b nBb2, $03, nRst, nD3, nRst, nF3, nRst, nA3
	dc.b nRst, $09, nG3, $03, nRst, nA3, nRst, $09
	dc.b nG3, $03, nRst, nA3, nRst, nG3, $0C
	sPatFM		$0B
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nEb3, $03, nRst, nF3, $06, nG3, $0C
	sPatFM		$0D
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nC3, $06, nEb3, $03, nRst, nG3, nRst, nBb3
	dc.b nRst, $09, nA3, $03, nRst, nBb3, nRst, $09
	dc.b nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	sPatFM		$0F
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	dc.b nG4, $06, nF4, nD4, nBb3, nG3, nF3, nD3
	dc.b $0C, nRst, $30
	sPatFM		$0D
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3
	dc.b nRst, $09, nA3, $03, nRst, nBb3, nRst, $09
	dc.b nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	dc.b nBb2, $03, nRst, nD3, nRst, nF3, nRst, nA3
	dc.b nRst, $09, nG3, $03, nRst, nA3, nRst, $09
	dc.b nG3, $03, nRst, nA3, nRst, nG3, $0C
	sPatFM		$0B
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nEb3, $03, nRst, nF3, $06, nG3, $0C
	sPatFM		$0D
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3
	dc.b nRst, $09, nA3, $03, nRst, nBb3, nRst, $09
	dc.b nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	sPatFM		$0F
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	dc.b nG4, $06, nF4, nD4, nBb3, nG3, nF3, nD3
	dc.b $0C
	sPatFM		$12
	ssDetune	$FD
	ssModZ80	$03, $01, $04, $05
	sPan		spCenter
	dc.b nBb2, $08, nRst, $04, nBb2, $06, nBb2, $08
	dc.b nA2, nBb2
	sJump		DataSelect_Jump3
	dc.b $F2	; Unused

DataSelect_FM4:
	dc.b nRst, $2A
	sPatFM		$0B
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft

DataSelect_Jump4:
	dc.b nEb3, $06, nRst, nBb3, nG3, nRst, nD4, nRst
	dc.b nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	dc.b nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3
	dc.b nRst, nEb3, nRst, nBb3, nG3, nRst, nD4, nRst
	dc.b nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b nRst, nD3, nRst, $0C, nEb3, $06, nRst, $0C
	dc.b nF3, $06, nRst, $0C
	sPatFM		$10
	dc.b nG4, $06, nG5, nG4, nRst, $18
	sPatFM		$0B
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft
	dc.b nEb3, $06, nRst, nBb3, nG3, nRst, nD4, nRst
	dc.b nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	dc.b nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3
	dc.b nRst, nEb3, nRst, nBb3, nG3, nRst, nD4, nRst
	dc.b nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b nRst, nF3, nF3, nF3, nRst, $0C, nF3, $06
	dc.b nF3, nF3, nRst, $3C
	sPatFM		$08
	ssDetune	$03
	ssModZ80	$03, $01, $FD, $05
	sPan		spLeft
	dc.b nEb3, $03, nRst, $0F, nEb3, $03, nRst, $0F
	dc.b nD3, $0C, nRst, $06, nD3, $03, nRst, $0F
	dc.b nD3, $0C, nRst, nD3, $03, nRst, $0F, nD3
	dc.b $03, nRst, $0F, nC3, $0C, nRst, $06, nD3
	dc.b $0C, nRst, $06, nEb3, $0C, nRst, nEb3, $03
	dc.b nRst, $0F, nEb3, $03, nRst, $0F, nD3, $0C
	dc.b nRst, $06, nD3, $03, nRst, $0F, nD3, $0C
	dc.b nRst, $06, nG3, $03, nRst, nAb3, nRst, nBb3
	dc.b nRst, nEb4, nRst, nD4, nRst, nBb3, nRst, nG3
	dc.b $12, nRst, $30
	sPatFM		$08
	ssDetune	$03
	ssModZ80	$03, $01, $FD, $05
	sPan		spLeft
	dc.b nF3, $03, nRst, $0F, nF3, $03, nRst, $0F
	dc.b nE3, $0C, nRst, $06, nE3, $03, nRst, $0F
	dc.b nE3, $0C, nRst, nE3, $03, nRst, $0F, nE3
	dc.b $03, nRst, $0F, nD3, $0C, nRst, $06, nE3
	dc.b $0C, nRst, $06, nF3, $0C, nRst, nF3, $03
	dc.b nRst, $0F, nF3, $03, nRst, $0F, nE3, $0C
	dc.b nRst, $06, nE3, $03, nRst, $0F, nE3, $0C
	dc.b nF3, nRst, $06, nF3, $0C, nRst, $06, nF3
	dc.b nRst, $36
	sPatFM		$0B
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft
	dc.b nEb3, $06, nRst, nBb3, nG3, nRst, nD4, nRst
	dc.b nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	dc.b nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3
	dc.b nRst, nEb3, nRst, nBb3, nG3, nRst, nD4, nRst
	dc.b nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b nRst, nF3, nF3, nF3, nRst, $0C, nF3, $06
	dc.b nF3, nF3, nRst, $36
	sPatFM		$08
	ssDetune	$03
	ssModZ80	$03, $01, $FD, $05
	sPan		spLeft
	dc.b nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4
	dc.b nRst, $09, nC4, $03, nRst, nD4, nRst, $09
	dc.b nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	dc.b nD3, $03, nRst, nF3, nRst, nA3, nRst, nC4
	dc.b nRst, $09, nBb3, $03, nRst, nC4, nRst, $09
	dc.b nBb3, $03, nRst, nC4, nRst, nBb3, $0C
	sPatFM		$0B
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft
	dc.b nG3, $03, nRst, nA3, nRst, nBb3, nRst, $09
	sPatFM		$08
	ssDetune	$03
	ssModZ80	$03, $01, $FD, $05
	sPan		spLeft
	dc.b nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4
	dc.b nRst, $09, nC4, $03, nRst, nD4, nRst, $09
	dc.b nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	dc.b $0C
	sPatFM		$0B
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft
	dc.b nD3, $06, nRst, $0C, nEb3, $06, nRst, $0C
	dc.b nF3, $06, nRst, $3C
	sPatFM		$08
	ssDetune	$03
	ssModZ80	$03, $01, $FD, $05
	sPan		spLeft
	dc.b nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4
	dc.b nRst, $09, nC4, $03, nRst, nD4, nRst, $09
	dc.b nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	dc.b nD3, $03, nRst, nF3, nRst, nA3, nRst, nC4
	dc.b nRst, $09, nBb3, $03, nRst, nC4, nRst, $09
	dc.b nBb3, $03, nRst, nC4, nRst, nBb3, $0C
	sPatFM		$0B
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft
	dc.b nG3, $03, nRst, nA3, nRst, nBb3, nRst, $09
	sPatFM		$08
	ssDetune	$03
	ssModZ80	$03, $01, $FD, $05
	sPan		spLeft
	dc.b nEb3, $03, nRst, nG3, nRst, nBb3, nRst, nD4
	dc.b nRst, $09, nC4, $03, nRst, nD4, nRst, $09
	dc.b nC4, $03, nRst, nD4, nRst, nC4, $12, nRst
	dc.b $0C
	sPatFM		$0B
	ssDetune	$04
	ssModZ80	$0F, $01, $FA, $05
	sPan		spLeft
	dc.b nD3, $06, nRst, $0C, nEb3, $06, nRst, $0C
	dc.b nF3, $06, nRst, $36
	sJump		DataSelect_Jump4
	dc.b $F2	; Unused

DataSelect_FM5:
	dc.b nRst, $2A

DataSelect_Jump5:
	sPatFM		$0B
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nEb2, $06, nRst, nBb2, nG2, nRst, nD3, nRst
	dc.b nEb2, nRst, nA2, nRst, nG2, nRst, nD3, nEb2
	dc.b nRst, nD2, nRst, nA2, nF2, nRst, nC3, nRst
	dc.b nD2, nRst, nA2, nRst, nG2, nRst, nD3, nD2
	dc.b nRst, nEb2, nRst, nBb2, nG2, nRst, nD3, nRst
	dc.b nEb2, nRst, nA2, nRst, nG2, nRst, nD3, nEb2
	dc.b nRst, nBb2, nRst, $0C, nC3, $06, nRst, $0C
	dc.b nD3, $06, nRst, $0C
	sPatFM		$10
	dc.b nG4, $06, nG5, nG4, nRst, $18
	sPatFM		$0B
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nEb2, $06, nRst, nBb2, nG2, nRst, nD3, nRst
	dc.b nEb2, nRst, nA2, nRst, nG2, nRst, nD3, nEb2
	dc.b nRst, nD2, nRst, nA2, nF2, nRst, nC3, nRst
	dc.b nD2, nRst, nA2, nRst, nG2, nRst, nD3, nD2
	dc.b nRst, nEb2, nRst, nBb2, nG2, nRst, nD3, nRst
	dc.b nEb2, nRst, nA2, nRst, nG2, nRst, nD3, nEb2
	dc.b nRst, nD3, nD3, nD3, nRst, $0C, nD3, $06
	dc.b nD3, nD3, nRst, $3C
	sPatFM		$08
	ssDetune	$FD
	ssModZ80	$03, $01, $03, $05
	sPan		spRight
	dc.b nAb2, $03, nRst, $0F, nAb2, $03, nRst, $0F
	dc.b nAb2, $0C, nRst, $06, nAb2, $03, nRst, $0F
	dc.b nAb2, $0C, nRst, nG2, $03, nRst, $0F, nG2
	dc.b $03, nRst, $0F, nG2, $0C, nRst, $06, nF2
	dc.b $0C, nRst, $06, nG2, $0C, nRst, nAb2, $03
	dc.b nRst, $0F, nAb2, $03, nRst, $0F, nAb2, $0C
	dc.b nRst, $06, nAb2, $03, nRst, $0F, nAb2, $0C
	dc.b nRst, $06, nBb2, $03, nRst, nC3, nRst, nD3
	dc.b nRst, nG3, nRst, nF3, nRst, nD3, nRst, nBb2
	dc.b $12, nRst, $30
	sPatFM		$08
	ssDetune	$FD
	ssModZ80	$03, $01, $03, $05
	sPan		spRight
	dc.b nBb2, $03, nRst, $0F, nBb2, $03, nRst, $0F
	dc.b nBb2, $0C, nRst, $06, nBb2, $03, nRst, $0F
	dc.b nBb2, $0C, nRst, nA2, $03, nRst, $0F, nA2
	dc.b $03, nRst, $0F, nA2, $0C, nRst, $06, nG2
	dc.b $0C, nRst, $06, nA2, $0C, nRst, nBb2, $03
	dc.b nRst, $0F, nBb2, $03, nRst, $0F, nBb2, $0C
	dc.b nRst, $06, nBb2, $03, nRst, $0F, nBb2, $0C
	dc.b nA2, nRst, $06, nA2, $0C, nRst, $06, nA2
	dc.b nRst, $36
	sPatFM		$0B
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nEb2, $06, nRst, nBb2, nG2, nRst, nD3, nRst
	dc.b nEb2, nRst, nA2, nRst, nG2, nRst, nD3, nEb2
	dc.b nRst, nD2, nRst, nA2, nF2, nRst, nC3, nRst
	dc.b nD2, nRst, nA2, nRst, nG2, nRst, nD3, nD2
	dc.b nRst, nEb2, nRst, nBb2, nG2, nRst, nD3, nRst
	dc.b nEb2, nRst, nA2, nRst, nG2, nRst, nD3, nEb2
	dc.b nRst, nD3, nD3, nD3, nRst, $0C, nD3, $06
	dc.b nD3, nD3, nRst, $36
	sPatFM		$08
	ssDetune	$FD
	ssModZ80	$03, $01, $03, $05
	sPan		spRight
	dc.b nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3
	dc.b nRst, $09, nA3, $03, nRst, nBb3, nRst, $09
	dc.b nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	dc.b nBb2, $03, nRst, nD3, nRst, nF3, nRst, nA3
	dc.b nRst, $09, nG3, $03, nRst, nA3, nRst, $09
	dc.b nG3, $03, nRst, nA3, nRst, nG3, $0C
	sPatFM		$0B
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nEb3, $03, nRst, nF3, nRst, nG3, nRst, $09
	sPatFM		$08
	ssDetune	$FD
	ssModZ80	$03, $01, $03, $05
	sPan		spRight
	dc.b nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3
	dc.b nRst, $09, nA3, $03, nRst, nBb3, nRst, $09
	dc.b nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	dc.b $0C
	sPatFM		$0B
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nBb2, $06, nRst, $0C, nC3, $06, nRst, $0C
	dc.b nD3, $06, nRst, $3C
	sPatFM		$08
	ssDetune	$FD
	ssModZ80	$03, $01, $03, $05
	sPan		spRight
	dc.b nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3
	dc.b nRst, $09, nA3, $03, nRst, nBb3, nRst, $09
	dc.b nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	dc.b nBb2, $03, nRst, nD3, nRst, nF3, nRst, nA3
	dc.b nRst, $09, nG3, $03, nRst, nA3, nRst, $09
	dc.b nG3, $03, nRst, nA3, nRst, nG3, $0C
	sPatFM		$0B
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nEb3, $03, nRst, nF3, nRst, nG3, nRst, $09
	sPatFM		$08
	ssDetune	$FD
	ssModZ80	$03, $01, $03, $05
	sPan		spRight
	dc.b nC3, $03, nRst, nEb3, nRst, nG3, nRst, nBb3
	dc.b nRst, $09, nA3, $03, nRst, nBb3, nRst, $09
	dc.b nA3, $03, nRst, nBb3, nRst, nA3, $12, nRst
	dc.b $0C
	sPatFM		$0B
	ssDetune	$FC
	ssModZ80	$0F, $01, $06, $05
	sPan		spRight
	dc.b nBb2, $06, nRst, $0C, nC3, $06, nRst, $0C
	dc.b nD3, $06, nRst, $36
	sJump		DataSelect_Jump5
	dc.b $F2	; Unused

DataSelect_PSG1:
	sVolEnvPSG	v04
	ssDetune	$00
	dc.b nRst, $2A

DataSelect_Jump6:
	dc.b nEb3, $06, nRst, nBb3, nG3, nRst, nD4, nRst
	dc.b nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	dc.b nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3
	dc.b nRst, nEb3, nRst, nBb3, nG3, nRst, nD4, nRst
	dc.b nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b nRst, nD3, nRst, $0C, nEb3, $06, nRst, $0C
	dc.b nF3, $06, nRst, $0C, nG4, $06, nG5, nG4
	dc.b nRst, $18, nEb3, $06, nRst, nBb3, nG3, nRst
	dc.b nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst
	dc.b nD4, nEb3, nRst, nD3, nRst, nA3, nF3, nRst
	dc.b nC4, nRst, nD3, nRst, nA3, nRst, nG3, nRst
	dc.b nD4, nD3, nRst, nEb3, nRst, nBb3, nG3, nRst
	dc.b nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst
	dc.b nD4, nEb3, nRst, nF3, nF3, nF3, nRst, $0C
	dc.b nF3, $06, nF3, nF3, nRst, $3C, nEb3, $03
	dc.b nRst, $0F, nEb3, $03, nRst, $0F, nD3, $0C
	dc.b nRst, $06, nD3, $03, nRst, $0F, nD3, $0C
	dc.b nRst, nD3, $03, nRst, $0F, nD3, $03, nRst
	dc.b $0F, nC3, $0C, nRst, $06, nD3, $0C, nRst
	dc.b $06, nEb3, $0C, nRst, nEb3, $03, nRst, $0F
	dc.b nEb3, $03, nRst, $0F, nD3, $0C, nRst, $06
	dc.b nD3, $03, nRst, $0F, nD3, $0C, nRst, $06
	dc.b nG3, $03, nRst, nAb3, nRst, nBb3, nRst, nEb4
	dc.b nRst, nD4, nRst, nBb3, nRst, nG3, $12, nRst
	dc.b $30, nF3, $03, nRst, $0F, nF3, $03, nRst
	dc.b $0F, nE3, $0C, nRst, $06, nE3, $03, nRst
	dc.b $0F, nE3, $0C, nRst, nE3, $03, nRst, $0F
	dc.b nE3, $03, nRst, $0F, nD3, $0C, nRst, $06
	dc.b nE3, $0C, nRst, $06, nF3, $0C, nRst, nF3
	dc.b $03, nRst, $0F, nF3, $03, nRst, $0F, nE3
	dc.b $0C, nRst, $06, nE3, $03, nRst, $0F, nE3
	dc.b $0C, nF3, nRst, $06, nF3, $0C, nRst, $06
	dc.b nF3, nRst, $36, nEb3, $06, nRst, nBb3, nG3
	dc.b nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3
	dc.b nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3
	dc.b nRst, nC4, nRst, nD3, nRst, nA3, nRst, nG3
	dc.b nRst, nD4, nD3, nRst, nEb3, nRst, nBb3, nG3
	dc.b nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3
	dc.b nRst, nD4, nEb3, nRst, nF3, nF3, nF3, nRst
	dc.b $0C, nF3, $06, nF3, nF3, nRst, $36, nF4
	dc.b $01, nRst, $05, nF5, $06, nF4, $01, nRst
	dc.b $0B, nF4, $06, nF5, $06, nF4, $01, nRst
	dc.b $0B, nF4, $06, nF5, $06, nF4, $01, nRst
	dc.b $0B, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b $06, nF5, $06, nF4, $0C, nF4, $06, nF5
	dc.b $06, nF4, $0C, nF4, $06, nF5, $06, nF4
	dc.b $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b $06, nF5, $06, nF4, $0C, nF4, $06, nF5
	dc.b $06, nF4, $0C, nF4, $06, nF5, $06, nF4
	dc.b $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b $06, nF5, $06, nF4, $0C, nF4, $06, nF5
	dc.b $06, nF4, $0C, nF4, $06, nF5, $06, nF4
	dc.b $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b $06, nF5, $06, nF4, $0C, nF4, $06, nF5
	dc.b $06, nF4, $0C, nF4, $06, nF5, $06, nF4
	dc.b $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b $06, nF5, $06, nF4, $0C, nF4, $06, nF5
	dc.b $06, nF4, $0C, nF4, $06, nF5, $06, nF4
	dc.b $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b $06, nF5, $06, nF4, $0C, nF4, $06, nF5
	dc.b $06, nF4, $0C, nF4, $06, nF5, $06, nF4
	dc.b $0C, nF4, $06, nF5, $06, nF4, $0C, nF4
	dc.b $06, nF5, $06, nF4, $0C, nF4, $06, nF5
	dc.b $06, nF4, $36
	sJump		DataSelect_Jump6
	dc.b $F2	; Unused

DataSelect_PSG2:
	sVolEnvPSG	v04
	ssDetune	$FF
	dc.b nRst, $2A

DataSelect_Jump7:
	dc.b nEb3, $06, nRst, nBb3, nG3, nRst, nD4, nRst
	dc.b nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b nRst, nD3, nRst, nA3, nF3, nRst, nC4, nRst
	dc.b nD3, nRst, nA3, nRst, nG3, nRst, nD4, nD3
	dc.b nRst, nEb3, nRst, nBb3, nG3, nRst, nD4, nRst
	dc.b nEb3, nRst, nA3, nRst, nG3, nRst, nD4, nEb3
	dc.b nRst, nBb3, nRst, $0C, nC4, $06, nRst, $0C
	dc.b nD4, $06, nRst, $0C, nG5, $06, nG6, nG5
	dc.b nRst, $18, nEb3, $06, nRst, nBb3, nG3, nRst
	dc.b nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst
	dc.b nD4, nEb3, nRst, nD3, nRst, nA3, nF3, nRst
	dc.b nC4, nRst, nD3, nRst, nA3, nRst, nG3, nRst
	dc.b nD4, nD3, nRst, nEb3, nRst, nBb3, nG3, nRst
	dc.b nD4, nRst, nEb3, nRst, nA3, nRst, nG3, nRst
	dc.b nD4, nEb3, nRst, nD4, nD4, nD4, nRst, $0C
	dc.b nD4, $06, nD4, nD4, nRst, $3C, nAb2, $03
	dc.b nRst, $0F, nAb2, $03, nRst, $0F, nAb2, $0C
	dc.b nRst, $06, nAb2, $03, nRst, $0F, nAb2, $0C
	dc.b nRst, nG2, $03, nRst, $0F, nG2, $03, nRst
	dc.b $0F, nG2, $0C, nRst, $06, nF2, $0C, nRst
	dc.b $06, nG2, $0C, nRst, nAb2, $03, nRst, $0F
	dc.b nAb2, $03, nRst, $0F, nAb2, $0C, nRst, $06
	dc.b nAb2, $03, nRst, $0F, nAb2, $0C, nRst, $06
	dc.b nBb2, $03, nRst, nC3, nRst, nD3, nRst, nG3
	dc.b nRst, nF3, nRst, nD3, nRst, nBb2, $12, nRst
	dc.b $30, nBb2, $03, nRst, $0F, nBb2, $03, nRst
	dc.b $0F, nBb2, $0C, nRst, $06, nBb2, $03, nRst
	dc.b $0F, nBb2, $0C, nRst, nA2, $03, nRst, $0F
	dc.b nA2, $03, nRst, $0F, nA2, $0C, nRst, $06
	dc.b nG2, $0C, nRst, $06, nA2, $0C, nRst, nBb2
	dc.b $03, nRst, $0F, nBb2, $03, nRst, $0F, nBb2
	dc.b $0C, nRst, $06, nBb2, $03, nRst, $0F, nBb2
	dc.b $0C, nA2, nRst, $06, nA2, $0C, nRst, $06
	dc.b nA2, nRst, $36, nEb3, $06, nRst, nBb3, nG3
	dc.b nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3
	dc.b nRst, nD4, nEb3, nRst, nD3, nRst, nA3, nF3
	dc.b nRst, nC4, nRst, nD3, nRst, nA3, nRst, nG3
	dc.b nRst, nD4, nD3, nRst, nEb3, nRst, nBb3, nG3
	dc.b nRst, nD4, nRst, nEb3, nRst, nA3, nRst, nG3
	dc.b nRst, nD4, nEb3, nRst, nF3, nF3, nF3, nRst
	dc.b $0C, nF3, $06, nF3, nF3, nRst, $36, nF4
	dc.b $06, nF5, nF4, $0C, nF4, $06, nF5, nF4
	dc.b $0C, nF4, $06, nF5, nF4, $0C, nF4, $06
	dc.b nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C
	dc.b nF4, $06, nF5, nF4, $0C, nF4, $06, nF5
	dc.b nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4
	dc.b $06, nF5, nF4, $0C, nF4, $06, nF5, nF4
	dc.b $0C, nF4, $06, nF5, nF4, $0C, nF4, $06
	dc.b nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C
	dc.b nF4, $06, nF5, nF4, $0C, nF4, $06, nF5
	dc.b nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4
	dc.b $06, nF5, nF4, $0C, nF4, $06, nF5, nF4
	dc.b $0C, nF4, $06, nF5, nF4, $0C, nF4, $06
	dc.b nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C
	dc.b nF4, $06, nF5, nF4, $0C, nF4, $06, nF5
	dc.b nF4, $0C, nF4, $06, nF5, nF4, $0C, nF4
	dc.b $06, nF5, nF4, $0C, nF4, $06, nF5, nF4
	dc.b $0C, nF4, $06, nF5, nF4, $0C, nF4, $06
	dc.b nF5, nF4, $0C, nF4, $06, nF5, nF4, $0C
	dc.b nF4, $06, nF5, nF4, $36
	sJump		DataSelect_Jump7
	dc.b $F2	; Unused

DataSelect_PSG3:
	sVolEnvPSG	v02
	sNoisePSG	$E7
	dc.b nRst, $2A

DataSelect_Jump8:
	saVolFMP	$FD, $D3
	dc.b $06
	saVolFMP	$03, $D3
	dc.b $03, nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6
	saVolFMP	$FD, $D3
	dc.b $06
	saVolFMP	$03, $D3
	dc.b $03, nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6
	saVolFMP	$FD, $D3
	dc.b $06
	saVolFMP	$03, $D3
	dc.b $03, nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6
	saVolFMP	$FD, $D3
	dc.b $06
	saVolFMP	$03, $D3
	dc.b $03, nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, $0C
	saVolFMP	$FD, $D3
	dc.b $0C, nBb6, $06, nBb6, $08, nBb6, nBb6, $02
	saVolFMP	$03, $80
	dc.b $06
	saVolFMP	$FD, $D3
	dc.b $06
	saVolFMP	$03, $D3
	dc.b $03, nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6
	saVolFMP	$FD, $D3
	dc.b $06
	saVolFMP	$03, $D3
	dc.b $03, nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6
	saVolFMP	$FD, $D3
	dc.b $06
	saVolFMP	$03, $D3
	dc.b $03, nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, $32, nBb6, $34, nBb6, $06, nBb6, $03
	dc.b nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, $03, nBb6, nBb6, $06, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, $03, nBb6, nBb6
	dc.b $06, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b $03, nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, $03, nBb6, nBb6, $06, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, $03, nBb6
	dc.b nBb6, $06, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, $03, nBb6, nBb6, $06, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, $03, nBb6, nBb6, $06
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, $36
	saVolFMP	$FD, $D3
	dc.b $06
	saVolFMP	$03, $D3
	dc.b $03, nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6
	saVolFMP	$FD, $D3
	saVolFMP	$03, $D3
	dc.b $03, nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6
	saVolFMP	$FD, $D3
	saVolFMP	$03, $D3
	dc.b $03, nBb6, nBb6, $06, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, $32, nBb6, $34, nBb6, $06, nBb6, $03
	dc.b nBb6, nBb6, $06
	saVolFMP	$FD, $D3
	saVolFMP	$03, $D3
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, $03, nBb6, nBb6
	dc.b $06
	saVolFMP	$FD, $D3
	saVolFMP	$03, $D3
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, $03, nBb6, nBb6
	dc.b $06
	saVolFMP	$FD, $D3
	saVolFMP	$03, $D3
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, $03, nBb6, nBb6
	dc.b $06
	saVolFMP	$FD, $D3
	saVolFMP	$03, $D3
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, $03, nBb6, nBb6
	dc.b $06
	saVolFMP	$FD, $D3
	saVolFMP	$03, $D3
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, $03, nBb6, nBb6
	dc.b $06
	saVolFMP	$FD, $D3
	saVolFMP	$03, $D3
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, $03, nBb6, nBb6
	dc.b $06
	saVolFMP	$FD, $D3
	saVolFMP	$03, $D3
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, $03, nBb6, nBb6
	dc.b $06
	saVolFMP	$FD, $D3
	saVolFMP	$03, $D3
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, $03, nBb6, nBb6
	dc.b $06
	saVolFMP	$FD, $D3
	saVolFMP	$03, $D3
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6, nBb6
	dc.b nBb6, nBb6, nBb6, nBb6, nBb6, $03, nBb6, nBb6
	dc.b $06
	saVolFMP	$FD, $D3
	dc.b nBb6
	sJump		DataSelect_Jump8
	dc.b $D3, $D3, $03, $D3, $D3, $06, $E5, $FD	; Unused
	dc.b $D3, $E5, $03, $D3, $D3, $D3, $D3, $36	; Unused
	dc.b $F2	; Unused

DataSelect_Patches:

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
