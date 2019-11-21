MVZ1_Header:
	sHeaderInit						; Z80 offset is $A52A
	sHeaderPatch	MVZ1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $39
	sHeaderDAC	MVZ1_DAC
	sHeaderFM	MVZ1_FM1, $00, $0F
	sHeaderFM	MVZ1_FM2, $00, $0C
	sHeaderFM	MVZ1_FM3, $00, $0E
	sHeaderFM	MVZ1_FM4, $00, $0F
	sHeaderFM	MVZ1_FM5, $00, $1A
	sHeaderPSG	MVZ1_PSG1, $E8, $02, $00, v00
	sHeaderPSG	MVZ1_PSG2, $E8, $02, $00, v00
	sHeaderPSG	MVZ1_PSG3, $E8, $02, $00, v00

MVZ1_FM1:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $60, nRst, nRst, nB5, $04, nBb5, nG5
	dc.b nA5, nFs5, nAb5, nF5, nG5, nE5, nFs5, nEb5
	dc.b nF5, nD5, nE5, nCs5, nEb5, nC5, nD5, nB4
	dc.b nCs5, nBb4, nC5, nA4, nB4

MVZ1_Loop1:
	sPatFM		$02
	dc.b nB4, $01, nC5, $3B, nD5, $06, nRst, nF5
	dc.b nRst, nG5, nRst, nE5, $01, nF5, $06, nRst
	dc.b $05, nCs5, $06, nRst, nC5, $08, nBb4, $06
	dc.b nRst, nG4, $34, nRst, $0C, nBb4, $18, nC5
	dc.b $08, nBb4, $03, nC5, $01, nCs5, $06, nRst
	dc.b nC5, nRst, nEb5, $08, nD5, $06, nRst, nBb4
	dc.b $04, nRst, $60
	sLoop		$00, $02, MVZ1_Loop1
	dc.b nRst, $0C, nBb4, $18, nC5, $08, nBb4, $04
	dc.b nCs5, $06, nRst, nC5, nRst, nBb4, $08, nC5
	dc.b $06, nRst, nBb4, $04, nRst, $60, nRst, $0C
	dc.b nBb4, $18, nC5, $08, nBb4, $03, nCs5, $01
	dc.b nD5, nEb5, $06, nRst, $05, nD5, $06, nRst
	dc.b nC5, $08, nD5, $06, nRst, nBb4, $04, nRst
	dc.b $60, nD5, $01, nEb5, $3B, nF5, $06, nRst
	dc.b $05, nF5, $02, nG5, $06, nRst, $05, nEb5
	dc.b $06, nRst, nF5, $12, nRst, $06, nCs5, $14
	dc.b nBb4, $34, nRst, $0B, nA4, $01, nBb4, $18
	dc.b nC5, $08, nBb4, $03, nB4, $01, nC5, nCs5
	dc.b $06, nRst, $05, nC5, $06, nRst, nBb4, $08
	dc.b nC5, $06, nRst, nBb4, $04, nRst, $60
	sJump		MVZ1_FM1
	dc.b $F2	; Unused

MVZ1_FM2:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter

MVZ1_Loop2:
	dc.b nG2, $08, nA2, $04, nD3, $08, nF3, $06
	dc.b nRst, nE3, nRst, nD3, nRst, nC3, nRst, nC3
	dc.b $04, nD3, $08, nD3, $01, nRst, $03, nE3
	dc.b $0C, nC3, $08, nBb2, $06, nRst, nBb2, $04
	dc.b nBb2, $08, nBb2, $04, nC3, $08, nBb2, $06
	dc.b nRst, nBb2, nRst, nBb2, $04, nC3, $0C, nBb2
	sLoop		$00, $06, MVZ1_Loop2

MVZ1_Loop3:
	dc.b nFs2, $08, nFs3, $04, nFs2, $06, nRst, nFs2
	dc.b nRst, nFs2, nRst, nAb2, nRst, nAb2, nRst, nAb2
	dc.b nRst, nAb2, $08, nAb2, $04, nRst, $08, nBb2
	dc.b $10, nBb2, $06, nRst, $12, nBb2, $08, nAb2
	dc.b $04, nA2, $08, nBb2, $06, nRst, $16
	sLoop		$00, $02, MVZ1_Loop3
	dc.b nC3, $06, nRst, nC3, nRst, nC3, nRst, nC3
	dc.b $08, nC3, $04, nC3, $06, nRst, nC3, nRst
	dc.b nC3, nRst, nC3, $08, nC3, $04, nBb2, $06
	dc.b nRst, nBb2, nRst, nBb2, nRst, nBb2, $08, nBb2
	dc.b $04, nBb2, $06, nRst, nBb2, nRst, nBb2, nRst
	dc.b nBb2, $08, nBb2, $04, nFs2, $08, nFs3, $04
	dc.b nFs2, $06, nRst, nFs2, nRst, nFs2, nRst, nAb2
	dc.b nRst, nAb2, nRst, nAb2, nRst, nAb2, $08, nAb2
	dc.b $04, nRst, $08, nBb2, $10, nBb2, $06, nRst
	dc.b $12, nBb2, $08, nAb2, $04, nA2, $08, nBb2
	dc.b $06, nRst, $16
	sJump		MVZ1_FM2
	dc.b $F2	; Unused

MVZ1_FM3:
	sPatFM		$03
	ssModZ80	$0D, $01, $02, $06
	sPan		spLeft

MVZ1_Loop4:
	dc.b nRst, $0C, nG4, $08, nG4, $04, nG4, $08
	dc.b nG4, $06, nRst, $0A, nG4, $08, nG4, $04
	dc.b nG4, $08, nG4, $06, nRst, $0A, nG4, $08
	dc.b nG4, $04, nRst, $60
	sLoop		$00, $02, MVZ1_Loop4

MVZ1_Loop5:
	dc.b nRst, $0C, nE4, $08, nE4, $04, nE4, $08
	dc.b nE4, $06, nRst, $0A, nE4, $08, nE4, $04
	dc.b nE4, $08, nE4, $06, nRst, $0A, nE4, $08
	dc.b nE4, $04, nRst, $60, nRst, $0C, nFs4, $08
	dc.b nFs4, $04, nFs4, $08, nFs4, $06, nRst, $0A
	dc.b nF4, $08, nF4, $04, nF4, $08, nF4, $06
	dc.b nRst, $0A, nF4, $08, nF4, $04, nRst, $60
	sLoop		$00, $02, MVZ1_Loop5
	dc.b nRst, $08, nFs5, $10, nFs5, $06, nRst, nFs5
	dc.b nRst, nAb5, $08, nG5, $04, nAb5, $08, nC6
	dc.b $06, nRst, $16, nRst, $08, nF4, $10, nF4
	dc.b $06, nRst, $12, nF4, $08, nEb4, $04, nE4
	dc.b $08, nF4, $06, nRst, nBb4, $0C, nC5, $04
	dc.b nRst, $08, nFs5, $10, nFs5, $06, nRst, nFs5
	dc.b nRst, nAb5, $08, nG5, $04, nAb5, $08, nC6
	dc.b $06, nRst, $16, nRst, $08, nF4, $10, nF4
	dc.b $06, nRst, $12, nF4, $08, nEb4, $04, nE4
	dc.b $08, nF4, $04, nE4, $08, nEb4, $04, nD4
	dc.b $08, nCs4, $04, nC4, $30, nC4, $06, nRst
	dc.b nEb4, nRst, nF4, $08, nG4, $06, nRst, nEb4
	dc.b $04, nRst, $08, nF4, $10, nF4, $06, nRst
	dc.b nF4, nRst, nF4, $08, nCs4, $06, nRst, nEb4
	dc.b nRst, nF4, $10, nRst, $0C, nFs4, $18, nAb4
	dc.b $08, nFs4, $04, nBb4, $06, nRst, nAb4, nRst
	dc.b nFs4, $08, nAb4, $06, nRst, nF4, $04, nRst
	dc.b $60
	sJump		MVZ1_FM3
	dc.b $F2	; Unused

MVZ1_FM4:
	sPatFM		$03
	ssModZ80	$0D, $01, $02, $06
	sPan		spRight

MVZ1_Loop6:
	dc.b nRst, $0C, nE4, $08, nE4, $04, nE4, $08
	dc.b nE4, $06, nRst, $0A, nE4, $08, nE4, $04
	dc.b nE4, $08, nE4, $06, nRst, $0A, nE4, $08
	dc.b nE4, $04, nRst, $60
	sLoop		$00, $02, MVZ1_Loop6

MVZ1_Loop7:
	dc.b nRst, $0C, nC4, $08, nC4, $04, nC4, $08
	dc.b nC4, $06, nRst, $0A, nC4, $08, nC4, $04
	dc.b nC4, $08, nC4, $06, nRst, $0A, nC4, $08
	dc.b nC4, $04, nRst, $60, nRst, $0C, nCs4, $08
	dc.b nCs4, $04, nCs4, $08, nCs4, $06, nRst, $0A
	dc.b nD4, $08, nD4, $04, nD4, $08, nD4, $06
	dc.b nRst, $0A, nD4, $08, nD4, $04, nRst, $60
	sLoop		$00, $02, MVZ1_Loop7
	dc.b nRst, $08, nFs4, $10, nFs4, $06, nRst, nFs4
	dc.b nRst, nAb4, $08, nG4, $04, nAb4, $08, nC5
	dc.b $06, nRst, $16, nRst, $08, nD4, $10, nD4
	dc.b $06, nRst, $12, nD4, $08, nC4, $04, nCs4
	dc.b $08, nD4, $06, nRst, nFs4, $0C, nAb4, $04
	dc.b nRst, $08, nFs4, $10, nFs4, $06, nRst, nFs4
	dc.b nRst, nAb4, $08, nG4, $04, nAb4, $08, nC5
	dc.b $03, nRst, $19, nRst, $08, nD4, $10, nD4
	dc.b $06, nRst, $12, nD4, $08, nC4, $04, nCs4
	dc.b $08, nD4, $04, nCs4, $08, nC4, $04, nB3
	dc.b $08, nBb3, $04, nG3, $30, nG3, $06, nRst
	dc.b nC4, nRst, nD4, $08, nEb4, $06, nRst, nC4
	dc.b $04, nRst, $08, nD4, $10, nD4, $06, nRst
	dc.b nD4, nRst, nD4, $08, nBb3, $06, nRst, nC4
	dc.b nRst, nD4, $10, nRst, $0C, nEb4, $18, nEb4
	dc.b $08, nEb4, $04, nF4, $06, nRst, nEb4, nRst
	dc.b nD4, $08, nEb4, $06, nRst, nD4, $04, nRst
	dc.b $60
	sJump		MVZ1_FM4
	dc.b $F2	; Unused

MVZ1_FM5:
	dc.b nRst, $07

MVZ1_Jump1:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $60, nRst, nRst, nB5, $04, nBb5, nG5
	dc.b nA5, nFs5, nAb5, nF5, nG5, nE5, nFs5, nEb5
	dc.b nF5, nD5, nE5, nCs5, nEb5, nC5, nD5, nB4
	dc.b nCs5, nBb4, nC5, nA4, nB4

MVZ1_Loop8:
	sPatFM		$02
	dc.b nB4, $01, nC5, $3B, nD5, $06, nRst, nF5
	dc.b nRst, nG5, nRst, nE5, $01, nF5, $06, nRst
	dc.b $05, nCs5, $06, nRst, nC5, $08, nBb4, $06
	dc.b nRst, nG4, $34, nRst, $0C, nBb4, $18, nC5
	dc.b $08, nBb4, $03, nC5, $01, nCs5, $06, nRst
	dc.b nC5, nRst, nEb5, $08, nD5, $06, nRst, nBb4
	dc.b $04, nRst, $60
	sLoop		$00, $02, MVZ1_Loop8
	dc.b nRst, $0C, nBb4, $18, nC5, $08, nBb4, $04
	dc.b nCs5, $06, nRst, nC5, nRst, nBb4, $08, nC5
	dc.b $06, nRst, nBb4, $04, nRst, $60, nRst, $0C
	dc.b nBb4, $18, nC5, $08, nBb4, $03, nCs5, $01
	dc.b nD5, nEb5, $06, nRst, $05, nD5, $06, nRst
	dc.b nC5, $08, nD5, $06, nRst, nBb4, $04, nRst
	dc.b $60, nD5, $01, nEb5, $3B, nF5, $06, nRst
	dc.b $05, nF5, $02, nG5, $06, nRst, $05, nEb5
	dc.b $06, nRst, nF5, $12, nRst, $06, nCs5, $14
	dc.b nBb4, $34, nRst, $0B, nA4, $01, nBb4, $18
	dc.b nC5, $08, nBb4, $03, nB4, $01, nC5, nCs5
	dc.b $06, nRst, $05, nC5, $06, nRst, nBb4, $08
	dc.b nC5, $06, nRst, nBb4, $04, nRst, $60
	sJump		MVZ1_Jump1
	dc.b $F2	; Unused

MVZ1_DAC:
	dc.b nRst, $60, dSnare, $08, dKick, $0C, dKick, $10
	dc.b dSnare, $08, dKick, $0C, dKick, dKick, $04, dSnare
	dc.b $0C, dKick, nRst, $60, dSnare, $08, dKick, $0C
	dc.b dKick, $10, dSnare, $08, dKick, $04, dSnare, $0C
	dc.b dSnare, dSnare, $08, dSnare, $04, dSnare, $0C

MVZ1_Loop9:
	dc.b dKick, $08, dMidTom, $04, dMidTom, $0C, dSnare, dMidTom
	dc.b dLowTom, $14, dLowTom, $04, dSnare, $18
	sLoop		$00, $08, MVZ1_Loop9

MVZ1_Loop10:
	dc.b dKick, $18, dSnare, dLowTom, $08, dLowTom, $0C, dLowTom
	dc.b $04, dSnare, $18, nRst, $08, dKick, $10, dSnare
	dc.b $18, dLowTom, $08, dLowTom, $04, dLowTom, $08, dSnare
	dc.b $10, dKick, $0C
	sLoop		$00, $02, MVZ1_Loop10
	dc.b dKick, $08, dMidTom, $0C, dMidTom, $04, dSnare, $18
	dc.b dLowTom, $0C, dLowTom, dSnare, dLowTom, $08, dLowTom, $04
	dc.b dKick, $08, dMidTom, $0C, dMidTom, $04, dSnare, $18
	dc.b dLowTom, $0C, dLowTom, dSnare, dLowTom, $08, dLowTom, $04
	dc.b dKick, $18, dSnare, dLowTom, $08, dLowTom, $0C, dLowTom
	dc.b $04, dSnare, $18, nRst, $08, dKick, $10, dSnare
	dc.b $18, dLowTom, $08, dLowTom, $04, dLowTom, $08, dSnare
	dc.b $10, dKick, $0C
	sJump		MVZ1_DAC
	dc.b $F2	; Unused

MVZ1_PSG1:
	sStop

MVZ1_PSG2:
	sStop
	dc.b $F2	; Unused

MVZ1_PSG3:
	sStop

MVZ1_Patches:

	; Patch $00
	; $38
	; $4C, $33, $74, $41,	$1F, $1F, $1F, $1F
	; $11, $0F, $0D, $0D,	$00, $0F, $00, $00
	; $FF, $FF, $FF, $FF,	$21, $16, $26, $81
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$04, $07, $03, $04
	spMultiple	$0C, $04, $03, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$11, $0D, $0F, $0D
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $26, $16, $01

	; Patch $01
	; $3B
	; $47, $40, $41, $40,	$1F, $1F, $1F, $1F
	; $06, $0F, $0F, $07,	$00, $00, $00, $00
	; $EF, $EF, $EF, $EF,	$2C, $13, $1F, $81
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$04, $04, $04, $04
	spMultiple	$07, $01, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $0F, $0F, $07
	spSustainLv	$0E, $0E, $0E, $0E
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2C, $1F, $13, $01

	; Patch $02
	; $3B
	; $71, $12, $13, $71,	$11, $10, $14, $1A
	; $0C, $09, $0A, $02,	$00, $06, $04, $07
	; $1F, $EF, $FF, $EF,	$1B, $24, $24, $81
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$07, $01, $01, $07
	spMultiple	$01, $03, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$11, $14, $10, $1A
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0A, $09, $02
	spSustainLv	$01, $0F, $0E, $0E
	spDecayRt	$00, $04, $06, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $24, $24, $01

	; Patch $03
	; $34
	; $61, $03, $00, $61,	$1F, $1E, $51, $D0
	; $0C, $08, $01, $01,	$08, $00, $09, $00
	; $8F, $FF, $FF, $FF,	$11, $85, $19, $86
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$06, $00, $00, $06
	spMultiple	$01, $00, $03, $01
	spRateScale	$00, $01, $00, $03
	spAttackRt	$1F, $11, $1E, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $01, $08, $01
	spSustainLv	$08, $0F, $0F, $0F
	spDecayRt	$08, $09, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$11, $19, $05, $06
