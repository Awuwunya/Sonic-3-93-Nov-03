FBZ2_Header:
	sHeaderInit						; Z80 offset is $BF36
	sHeaderPatch	FBZ2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $00
	sHeaderDAC	FBZ2_DAC
	sHeaderFM	FBZ2_FM1, $00, $0C
	sHeaderFM	FBZ2_FM2, $00, $0C
	sHeaderFM	FBZ2_FM3, $00, $0E
	sHeaderFM	FBZ2_FM4, $00, $0E
	sHeaderFM	FBZ2_FM5, $00, $15
	sHeaderPSG	FBZ2_PSG1, $E8, $02, $00, v00
	sHeaderPSG	FBZ2_PSG2, $E8, $02, $00, v00
	sHeaderPSG	FBZ2_PSG3, $E8, $02, $00, v00

FBZ2_FM1:
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $60

FBZ2_Loop1:
	sPatFM		$00
	dc.b nRst, $0C, nB4, $04, nRst, $08, nC5, $04
	dc.b nRst, $08, nB4, $24, nE5, $04, nRst, $14
	dc.b nEb5, $02, nE5, $16, nC5, $04, nRst, $08
	dc.b nA4, $18, nE4, $24, nRst, $60
	sPatFM		$02
	dc.b nRst, $36, nD5, $06, nE5, nG5, nB4, nC5
	dc.b nA4, $0C
	sLoop		$00, $02, FBZ2_Loop1
	sPatFM		$05
	dc.b nE4, $48, nE4, $06, nA4, nRst, nE4, $42
	dc.b nD4, $06, nRst, nC4, nRst, nB3, nRst, nC4
	dc.b $12, nA3, $06, nRst, $48, nRst, $60, nE4
	dc.b $48, nE4, $06, nA4, $04, nRst, $08, nE4
	dc.b $42, nD4, $06, nRst, nC4, nRst, nB3, nRst
	dc.b nC4, $12, nE4, $06, nRst, $48, nRst, $3C
	dc.b nE5, $0C, nD5, nC5, nC5, $12, nA4, nE5
	dc.b $30, nD5, $06, nC5, nD5, $0B, nRst, $07
	dc.b nB4, $0B, nRst, $07, nG4, $24, nB4, $0C
	dc.b nA4, nAb4, $12, nB4, $06, nRst, $0C, nD5
	dc.b $18, nF5, $06, nRst, nE5, nRst, nD5, nRst
	dc.b nE5, $10, nRst, $08, nD5, $10, nRst, $08
	dc.b nC5, $10, nRst, $08, nB4, $10, nRst, $08
	dc.b nC5, $12, nA4, nE5, $2D, nRst, $03, nD5
	dc.b $06, nC5, nD5, $0B, nRst, $07, nB4, $0B
	dc.b nRst, $07, nG4, $24, nB4, $0C, nA4, nAb4
	dc.b $12, nB4, $06, nRst, $0C, nD5, $18, nF5
	dc.b $06, nRst, nE5, nRst, nD5, nRst, nE5, nD5
	dc.b nE5, $7F, sHold, nE5, $05, nRst, $30
	sJump		FBZ2_Loop1
	dc.b $F2	; Unused

FBZ2_FM2:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nD5, $06, nE5, nA4, $02, nRst, $04, nA4
	dc.b $02, nRst, $04, nD4, $06, nE4, nA3, $02
	dc.b nRst, $04, nA3, $02, nRst, $04, nD3, $06
	dc.b nE3, nA2, $02, nRst, $04, nA2, $02, nRst
	dc.b $04, nD2, $06, nE2, nA1, $02, nRst, $04
	dc.b nA1, $02, nRst, $04

FBZ2_Loop2:
	dc.b nA1, $06, nA1, nA2, $0C, nA1, $06, nA1
	dc.b nA1, $03, nRst, nA1, nRst, nAb1, $0C, nAb2
	dc.b $04, nRst, $08, nAb1, $0C, nAb1, $06, nAb1
	dc.b nG1, nG1, nG2, $0C, nG1, $06, nG1, nG1
	dc.b $03, nRst, nG1, nRst, nAb1, $0C, nAb2, $04
	dc.b nRst, $08, nAb1, $0C, nAb1, $06, nAb1, nA1
	dc.b $0C, nA1, nA1, nG2, $06, nA2, nA1, $0C
	dc.b nA1, nA1, nG2, $06, nA2, nG2, nA2, $03
	dc.b nRst, nA1, $0C, nA1, nG2, $06, nA2, $03
	dc.b nRst, nA1, $0C, nA1, nG2, $06, nA2, $03
	dc.b nRst, nA1, $0C
	sLoop		$00, $04, FBZ2_Loop2
	dc.b nF1, $06, nF1, nF2, $0C, nF1, $06, nF1
	dc.b nF2, $0C, nF1, $06, nF1, nF2, $0C, nF1
	dc.b $06, nF1, nF2, $0C, nG1, $06, nG1, nG2
	dc.b $0C, nG1, $06, nG1, nG2, $0C, nG1, $06
	dc.b nG1, nG2, $0C, nG1, $06, nG1, nG2, $0C
	dc.b nAb1, $06, nAb1, nAb2, $0C, nAb1, $06, nAb1
	dc.b nAb2, $0C, nAb1, $06, nAb1, nAb2, $0C, nAb1
	dc.b $06, nAb1, nAb2, $0C, nA1, $06, nA1, nA2
	dc.b $0C, nA1, $06, nA1, nA2, $0C, nG1, $06
	dc.b nG1, nG2, $0C, nG1, $06, nG1, nG2, $0C
	dc.b nF1, $06, nF1, nF2, $0C, nF1, $06, nF1
	dc.b nF2, $0C, nF1, $06, nF1, nF2, $0C, nF1
	dc.b $06, nF1, nF2, $0C, nG1, $06, nG1, nG2
	dc.b $0C, nG1, $06, nG1, nG2, $0C, nG1, $06
	dc.b nG1, nG2, $0C, nG1, $06, nG1, nG2, $0C
	dc.b nAb1, $06, nAb1, nAb2, $0C, nAb1, $06, nAb1
	dc.b nAb2, $0C, nAb1, $06, nAb1, nAb2, $0C, nAb1
	dc.b $06, nAb1, nAb2, $0C, nA1, $06, nA1, nA2
	dc.b $0C, nA1, $06, nA1, nA2, $0C, nA1, $06
	dc.b nA1, nA2, $0C, nA1, $06, nA1, nA2, $0C
	dc.b nA1, $06, nRst, nA1, nRst, nA1, nRst, nA1
	dc.b nA1, nA1, nA2, $02, nRst, $04, nG2, $06
	dc.b nA2, nD2, nE2, nA1, $02, nRst, $04, nA1
	dc.b $02, nRst, $04
	sJump		FBZ2_Loop2
	dc.b $F2	; Unused

FBZ2_FM3:
	ssModZ80	$0D, $01, $02, $06
	sPan		spRight
	dc.b nRst, $60

FBZ2_Loop3:
	sPatFM		$03
	dc.b nA4, $10, nRst, $08, nG4, $10, nRst, $08
	dc.b nE4, $0F, nRst, $03, nC4, $0F, nRst, $03
	dc.b nA3, $06, nRst, nRst, nC4, $12, nD4, $06
	dc.b nRst, nE4, nRst, nD4, $12, nC4, $06, nRst
	dc.b $18
	sPatFM		$04
	dc.b nE4, $30, nF4, nFs4, nF4
	sLoop		$00, $04, FBZ2_Loop3
	sPatFM		$06
	dc.b nF4, $30, nC4, $18, nA4, nG4, $48, nD4
	dc.b $18, nD4, $48, nF4, $0C
	sPatFM		$07
	dc.b nAb4, $03, nA4, nBb4, nB4, nC5, $18, nA4
	dc.b nA4, nE4
	sPatFM		$06
	dc.b nF4, $30, nC4, $18, nA4, nG4, $48, nD4
	dc.b $18, nD4, $48, nF4, $18, nE4, $7F, sHold
	dc.b nE4, $11, nRst, $30
	sJump		FBZ2_Loop3
	dc.b $F2	; Unused

FBZ2_FM4:
	ssModZ80	$0D, $01, $02, $06
	sPan		spLeft
	dc.b nRst, $60

FBZ2_Loop4:
	sPatFM		$03
	dc.b nE4, $10, nRst, $08, nE4, $10, nRst, $08
	dc.b nC4, $0F, nRst, $03, nA3, $0F, nRst, $03
	dc.b nE3, $06, nRst, nRst, nA3, $12, nB3, $06
	dc.b nRst, nC4, nRst, nB3, $12, nA3, $06, nRst
	dc.b $18
	sPatFM		$04
	dc.b nC4, $30, nC4, nC4, nC4
	sLoop		$00, $04, FBZ2_Loop4
	sPatFM		$06
	dc.b nA3, $30, nA3, nD4, $18, nC4, nB3, $30
	dc.b nB3, $18, nA3, nAb3, $24
	sPatFM		$07
	dc.b nF4, $03, nFs4, nG4, nAb4, nA4, $18, nE4
	dc.b nE4, nC4
	sPatFM		$06
	dc.b nA3, $30, nA3, nD4, $18, nC4, nB3, $30
	dc.b nB3, $18, nA3, nAb3, $30, nC4, $7F, sHold
	dc.b nC4, $11, nRst, $30
	sJump		FBZ2_Loop4
	dc.b $F2	; Unused

FBZ2_FM5:
	dc.b nRst, $10
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $60

FBZ2_Loop5:
	sPatFM		$00
	dc.b nRst, $0C, nB4, $04, nRst, $08, nC5, $04
	dc.b nRst, $08, nB4, $24, nE5, $04, nRst, $14
	dc.b nEb5, $02, nE5, $16, nC5, $04, nRst, $08
	dc.b nA4, $18, nE4, $24, nRst, $60
	sPatFM		$02
	dc.b nRst, $36, nD5, $06, nE5, nG5, nB4, nC5
	dc.b nA4, $0C
	sLoop		$00, $02, FBZ2_Loop5
	sPatFM		$05
	dc.b nE4, $48, nE4, $06, nA4, $04, nRst, $08
	dc.b nE4, $42, nD4, $06, nRst, nC4, nRst, nB3
	dc.b nRst, nC4, $12, nA3, $06, nRst, $48, nRst
	dc.b $60, nE4, $48, nE4, $06, nA4, $04, nRst
	dc.b $08, nE4, $42, nD4, $06, nRst, nC4, nRst
	dc.b nB3, nRst, nC4, $12, nE4, $06, nRst, $48
	dc.b nRst, $3C, nE5, $0C, nD5, nC5, nC5, $12
	dc.b nA4, nE5, $30, nD5, $06, nC5, nD5, $0B
	dc.b nRst, $07, nB4, $0B, nRst, $07, nG4, $24
	dc.b nB4, $0C, nA4, nAb4, $12, nB4, $06, nRst
	dc.b $0C, nD5, $18, nF5, $06, nRst, nE5, nRst
	dc.b nD5, nRst, nE5, $10, nRst, $08, nD5, $10
	dc.b nRst, $08, nC5, $10, nRst, $08, nB4, $10
	dc.b nRst, $08, nC5, $12, nA4, nE5, $2D, nRst
	dc.b $03, nD5, $06, nC5, nD5, $0B, nRst, $07
	dc.b nB4, $0B, nRst, $07, nG4, $24, nB4, $0C
	dc.b nA4, nAb4, $12, nB4, $06, nRst, $0C, nD5
	dc.b $18, nF5, $06, nRst, nE5, nRst, nD5, nRst
	dc.b nE5, nD5, nE5, $7F, sHold, nE5, $05, nRst
	dc.b $30
	sJump		FBZ2_Loop5
	dc.b $F2	; Unused

FBZ2_DAC:
	dc.b nRst, $48, dSnare, $06, dSnare, dSnare, dSnare

FBZ2_Loop6:
	dc.b dKick, $18, dSnare, $06, dKick, dKick, dKick, dKick
	dc.b $0C, dKick, dSnare, $18, dKick, dSnare, $06, dKick
	dc.b dKick, dKick, dKick, $0C, dKick, dSnare, $18, dKick
	dc.b dSnare, $06, dKick, dKick, dKick, dKick, $0C, dKick
	dc.b dSnare, $18, dSnare, $06, dSnare, dKick, $0C, dKick
	dc.b dSnare, $06, dSnare, dKick, $0C, dKick, dSnare, $06
	dc.b dSnare, dSnare, $0C
	sLoop		$00, $03, FBZ2_Loop6

FBZ2_Loop7:
	dc.b dKick, $18, dSnare, $06, dKick, dKick, dKick, dKick
	dc.b $0C, dKick, dSnare, $18
	sLoop		$00, $03, FBZ2_Loop7
	dc.b dSnare, $06, dSnare, dKick, $0C, dKick, dSnare, $06
	dc.b dSnare, dKick, $0C, dSnare, dSnare, $06, dSnare, dSnare
	dc.b dSnare

FBZ2_Loop8:
	dc.b dKick, $0C, dClap, dSnare, dClap, $06, dClap, dKick
	dc.b $0C, dClap, dSnare, dClap, $06, dClap, dKick, $0C
	dc.b dClap, dSnare, dClap, $06, dClap, dKick, dClap, dClap
	dc.b dClap, dSnare, $0C, dClap
	sLoop		$00, $04, FBZ2_Loop8
	dc.b dKick, $0C, dSnare, dSnare, dSnare, $06, dSnare, dSnare
	dc.b $30
	sJump		FBZ2_Loop6
	dc.b $F2	; Unused

FBZ2_PSG1:
	sStop

FBZ2_PSG2:
	sStop
	dc.b $F2	; Unused

FBZ2_PSG3:
	sStop

FBZ2_Patches:

	; Patch $00
	; $10
	; $47, $57, $6D, $41,	$1F, $1F, $5F, $1F
	; $04, $08, $08, $04,	$00, $0F, $00, $00
	; $18, $38, $58, $18,	$32, $25, $24, $88
	spAlgorithm	$00
	spFeedback	$02
	spDetune	$04, $06, $05, $04
	spMultiple	$07, $0D, $07, $01
	spRateScale	$00, $01, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $08, $08, $04
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$32, $24, $25, $08

	; Patch $01
	; $03
	; $74, $18, $71, $11,	$DF, $5F, $1F, $1F
	; $0C, $0F, $01, $01,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$0B, $1D, $10, $84
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$07, $07, $01, $01
	spMultiple	$04, $01, $08, $01
	spRateScale	$03, $00, $01, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $01, $0F, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0B, $10, $1D, $04

	; Patch $02
	; $02
	; $71, $52, $41, $11,	$17, $16, $15, $17
	; $0A, $03, $05, $03,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$07, $1F, $25, $87
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$07, $04, $05, $01
	spMultiple	$01, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $15, $16, $17
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $05, $03, $03
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$07, $25, $1F, $07

	; Patch $03
	; $3D
	; $41, $01, $21, $71,	$0D, $12, $52, $D2
	; $01, $01, $01, $01,	$08, $00, $09, $00
	; $89, $F8, $F9, $F8,	$1D, $87, $87, $87
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$04, $02, $00, $07
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $01, $00, $03
	spAttackRt	$0D, $12, $12, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $01, $01, $01
	spSustainLv	$08, $0F, $0F, $0F
	spDecayRt	$08, $09, $00, $00
	spReleaseRt	$09, $09, $08, $08
	spTotalLv	$1D, $07, $07, $07

	; Patch $04
	; $03
	; $61, $51, $23, $41,	$10, $10, $0F, $15
	; $1C, $01, $06, $05,	$05, $01, $05, $01
	; $C9, $0C, $D9, $C9,	$18, $17, $17, $83
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$06, $02, $05, $04
	spMultiple	$01, $03, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $0F, $10, $15
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1C, $06, $01, $05
	spSustainLv	$0C, $0D, $00, $0C
	spDecayRt	$05, $05, $01, $01
	spReleaseRt	$09, $09, $0C, $09
	spTotalLv	$18, $17, $17, $03

	; Patch $05
	; $02
	; $74, $51, $13, $31,	$93, $D3, $12, $13
	; $06, $01, $01, $03,	$0C, $13, $0C, $0B
	; $FF, $EF, $DF, $8F,	$33, $13, $16, $88
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$07, $01, $05, $03
	spMultiple	$04, $03, $01, $01
	spRateScale	$02, $00, $03, $00
	spAttackRt	$13, $12, $13, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $01, $01, $03
	spSustainLv	$0F, $0D, $0E, $08
	spDecayRt	$0C, $0C, $13, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$33, $16, $13, $08

	; Patch $06
	; $3D
	; $71, $73, $22, $31,	$10, $18, $14, $14
	; $01, $01, $00, $02,	$00, $06, $04, $07
	; $FF, $FC, $FF, $F8,	$1E, $8A, $87, $87
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$07, $02, $07, $03
	spMultiple	$01, $02, $03, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $14, $18, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $00, $01, $02
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $04, $06, $07
	spReleaseRt	$0F, $0F, $0C, $08
	spTotalLv	$1E, $07, $0A, $07

	; Patch $07
	; $14
	; $21, $12, $33, $44,	$1D, $1D, $1D, $1E
	; $00, $01, $01, $01,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$2D, $86, $2D, $87
	spAlgorithm	$04
	spFeedback	$02
	spDetune	$02, $03, $01, $04
	spMultiple	$01, $03, $02, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1D, $1D, $1D, $1E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $01, $01, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2D, $2D, $06, $07
