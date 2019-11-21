FBZ1_Header:
	sHeaderInit						; Z80 offset is $B99E
	sHeaderPatch	FBZ1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $00
	sHeaderDAC	FBZ1_DAC
	sHeaderFM	FBZ1_FM1, $00, $10
	sHeaderFM	FBZ1_FM2, $00, $0D
	sHeaderFM	FBZ1_FM3, $00, $10
	sHeaderFM	FBZ1_FM4, $00, $10
	sHeaderFM	FBZ1_FM5, $00, $16
	sHeaderPSG	FBZ1_PSG1, $E8, $02, $00, v00
	sHeaderPSG	FBZ1_PSG2, $E8, $02, $00, v00
	sHeaderPSG	FBZ1_PSG3, $E8, $02, $00, v00

FBZ1_FM1:
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $18

FBZ1_Jump1:
	sPatFM		$05
	dc.b nRst, $0C, nA6, $7F, sHold, nA6, $0B, nG6
	dc.b $06, nE6, nD6, nE6, nD6, nC6, nA5, nD6
	dc.b $02, nEb6, $0A, nA5, $0C, nRst, $48, nRst
	dc.b $30, nD6, $06, nEb6, nD6, nEb6, nG6, nA6
	dc.b nC7, nA6, nRst, $0C, nA6, $7F, sHold, nA6
	dc.b $0B, nG6, $06, nE6, nD6, nE6, nD6, nC6
	dc.b nA5, nD6, $02, nEb6, $0A, nA5, $0C, nRst
	dc.b $48, nE5, $06, nG5, nE5, nG5, nA5, nG5
	dc.b nA5, nC6, nEb6, nE6, nD6, nC6, nA6, nG6
	dc.b nE6, nC6
	sPatFM		$00
	dc.b nE4, $48, nE4, $06, nA4, $04, nRst, $08
	dc.b nE4, $42, nD4, $05, nRst, $07, nC4, $05
	dc.b nRst, $07, nB3, $05, nRst, $07, nC4, $12
	dc.b nA3, $06, nRst, $48, nRst, $60, nE4, $48
	dc.b nE4, $06, nA4, $04, nRst, $08, nE4, $42
	dc.b nD4, $05, nRst, $07, nC4, $05, nRst, $07
	dc.b nB3, $05, nRst, $07, nC4, $12, nE4, $06
	dc.b nRst, $48, nRst, $3C, nE5, $0C, nD5, nC5
	dc.b nC5, $12, nA4, nE5, $30, nD5, $06, nC5
	dc.b nD5, $0B, nRst, $07, nB4, $0B, nRst, $07
	dc.b nG4, $24, nB4, $0C, nA4, nAb4, $12, nB4
	dc.b $06, nRst, $0C, nD5, $18, nF5, $06, nRst
	dc.b nE5, nRst, nD5, nRst, nE5, $10, nRst, $08
	dc.b nD5, $10, nRst, $08, nC5, $10, nRst, $08
	dc.b nB4, $10, nRst, $08, nC5, $12, nA4, nE5
	dc.b $2D, nRst, $03, nD5, $06, nC5, nD5, $0B
	dc.b nRst, $07, nB4, $0B, nRst, $07, nG4, $24
	dc.b nB4, $0C, nA4, nAb4, $12, nB4, $06, nRst
	dc.b $0C, nD5, $18, nF5, $06, nRst, nE5, nRst
	dc.b nD5, nRst, nE5, nD5, nE5, $7F, sHold, nE5
	dc.b $05, nRst, $30
	sJump		FBZ1_Jump1
	dc.b $F2	; Unused

FBZ1_FM2:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nD3, $06, nE3, nA2, $03, nRst, nA2, nRst

FBZ1_Loop1:
	dc.b nA2, $0C, nG3, $06, nA3, nA2, $04, nRst
	dc.b $08, nA2, $03, nRst, nA2, nRst, nAb2, $0C
	dc.b nG3, $06, nAb3, nAb2, $04, nRst, $08, nAb2
	dc.b $03, nRst, nAb2, nRst, nG2, $0C, nG2, $06
	dc.b nG3, nG2, $04, nRst, $08, nG2, $03, nRst
	dc.b nG2, nRst, nAb2, $0C, nAb3, $04, nRst, $08
	dc.b nAb2, $04, nRst, $08, nAb2, $03, nRst, nAb2
	dc.b nRst, nA2, $0C, nG3, $06, nA3, nD3, nE3
	dc.b nA2, $03, nRst, nA2, nRst, nA2, $0C, nA2
	dc.b $03, nRst, nA2, $0C, nA2, nA2, $03, nRst
	dc.b nA2, $06, nD3, nE3, nG3, nA3, nA2, $0C
	dc.b nA2, $03, nRst, nA2, nRst, nG3, $06, nA3
	dc.b nA2, nD3, nE3, nA2, $0C
	sLoop		$00, $04, FBZ1_Loop1
	dc.b nF2, $06, nF3, $0C, nF2, $03, nRst, nF2
	dc.b $06, nF3, $0C, nF2, $03, nRst, nF2, $0C
	dc.b nF3, $06, nRst, nF2, $0C, nF3, $06, nRst
	dc.b nG2, nG3, $0C, nG2, $03, nRst, nG2, $06
	dc.b nG3, $0C, nG2, $03, nRst, nG2, $0C, nG3
	dc.b $06, nRst, nG2, $0C, nG3, $06, nRst, nAb2
	dc.b nAb3, $0C, nAb2, $03, nRst, nAb2, $06, nAb3
	dc.b $0C, nAb2, $03, nRst, nAb2, $0C, nAb3, $06
	dc.b nRst, nAb2, $0C, nAb3, $06, nRst, nA2, nA3
	dc.b $0C, nA2, $03, nRst, nA2, $06, nA3, $0C
	dc.b nA2, $03, nRst, nG2, $0C, nG3, $06, nRst
	dc.b nG2, $0C, nG3, $06, nRst, nF2, nF3, $0C
	dc.b nF2, $03, nRst, nF2, $06, nF3, $0C, nF2
	dc.b $03, nRst, nF2, $0C, nF3, $06, nRst, nF2
	dc.b $0C, nF3, $06, nRst, nG2, nG3, $0C, nG2
	dc.b $03, nRst, nG2, $06, nG3, $0C, nG2, $03
	dc.b nRst, nG2, $0C, nG3, $06, nRst, nG2, $0C
	dc.b nG3, $06, nRst, nAb2, nAb3, $0C, nAb2, $03
	dc.b nRst, nAb2, $06, nAb3, $0C, nAb2, $03, nRst
	dc.b nAb2, $0C, nAb3, $06, nRst, nAb2, $0C, nAb3
	dc.b $06, nRst, nA2, nA3, $0C, nA2, $03, nRst
	dc.b nA2, $06, nA3, $0C, nA2, $03, nRst, nA2
	dc.b $0C, nA3, $06, nRst, nA2, $0C, nA3, $06
	dc.b nRst, nA2, nRst, nA2, nRst, nA2, nRst, nA2
	dc.b $03, nRst, nA2, nRst, nA2, nRst, nA3, nRst
	dc.b nG3, $06, nA3, nD3, nE3, nA2, $03, nRst
	dc.b nA2, nRst
	sJump		FBZ1_Loop1
	dc.b $F2	; Unused

FBZ1_FM3:
	ssModZ80	$0D, $01, $02, $06
	sPan		spLeft
	dc.b nRst, $18

FBZ1_Loop2:
	sPatFM		$02
	dc.b nA4, $10, nRst, $08, nG4, $10, nRst, $08
	dc.b nE4, $0F, nRst, $03, nD4, $0F, nRst, $03
	dc.b nC4, $06, nRst, nRst, nC4, $12, nD4, $06
	dc.b nRst, nE4, nRst, nD4, $12, nC4, $06, nRst
	dc.b $18
	sPatFM		$03
	dc.b nE4, $06, nRst, nE5, $24, nF4, $06, nRst
	dc.b nF5, $24, nFs4, $06, nRst, nFs5, $24, nF4
	dc.b $06, nRst, nF5, $24
	sLoop		$00, $04, FBZ1_Loop2

FBZ1_Loop3:
	sPatFM		$04
	dc.b nRst, $0C, nC5, $24, nRst, $0C, nC5, $06
	dc.b nRst, nB4, nC5, nRst, $0C, nRst, nD5, $23
	dc.b nRst, $0D, nD5, $06, nRst, nC5, nD5, nRst
	dc.b $0C, nRst, nD5, $23, nRst, $0D, nD5, $06
	dc.b nRst, nC5, nD5, nRst, $0C, nRst, nE5, nE5
	dc.b $06, nE5, nRst, nE5, nRst, nE5, nRst, nE5
	dc.b nE5, nRst, nE5, nRst
	sLoop		$00, $02, FBZ1_Loop3
	dc.b nRst, $0C, nE5, $06, nRst, nE5, nRst, nE5
	dc.b nRst, nE5, nRst, $2A
	sJump		FBZ1_Loop2
	dc.b $F2	; Unused

FBZ1_FM4:
	ssModZ80	$0D, $01, $02, $06
	sPan		spRight
	dc.b nRst, $18

FBZ1_Loop4:
	sPatFM		$02
	dc.b nE4, $10, nRst, $08, nE4, $10, nRst, $08
	dc.b nC4, $0F, nRst, $03, nA3, $0F, nRst, $03
	dc.b nE3, $06, nRst, nRst, nA3, $12, nB3, $06
	dc.b nRst, nC4, nRst, nB3, $12, nA3, $06, nRst
	dc.b $18
	sPatFM		$03
	dc.b nC4, $06, nRst, nC5, $24, nC4, $06, nRst
	dc.b nC5, $24, nC4, $06, nRst, nC5, $24, nC4
	dc.b $06, nRst, nC5, $24
	sLoop		$00, $04, FBZ1_Loop4

FBZ1_Loop5:
	sPatFM		$04
	dc.b nRst, $0C, nA4, $24, nRst, $0C, nA4, $06
	dc.b nRst, nG4, nA4, nRst, $0C, nRst, nB4, $23
	dc.b nRst, $0D, nB4, $06, nRst, nA4, nB4, nRst
	dc.b $0C, nRst, nB4, $23, nRst, $0D, nB4, $06
	dc.b nRst, nA4, nB4, nRst, $0C, nRst, nC5, nC5
	dc.b $06, nC5, nRst, nC5, nRst, nC5, nRst, nC5
	dc.b nC5, nRst, nC5, nRst
	sLoop		$00, $02, FBZ1_Loop5
	dc.b nRst, $0C, nC5, $06, nRst, nC5, nRst, nC5
	dc.b nRst, nC5, nRst, $2A
	sJump		FBZ1_Loop4
	dc.b $F2	; Unused

FBZ1_FM5:
	dc.b nRst, $10
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $18

FBZ1_Jump2:
	sPatFM		$05
	dc.b nRst, $0C, nA6, $7F, sHold, nA6, $0B, nG6
	dc.b $06, nE6, nD6, nE6, nD6, nC6, nA5, nD6
	dc.b $02, nEb6, $0A, nA5, $0C, nRst, $48, nRst
	dc.b $30, nD6, $06, nEb6, nD6, nEb6, nG6, nA6
	dc.b nC7, nA6, nRst, $0C, nA6, nA0, $7F, sHold
	dc.b nA6, $0B, nG6, $06, nE6, nD6, nE6, nD6
	dc.b nC6, nA5, nD6, $02, nEb6, $0A, nA5, $0C
	dc.b nRst, $48, nE5, $06, nG5, nE5, nG5, nA5
	dc.b nG5, nA5, nC6, nEb6, nE6, nD6, nC6, nA6
	dc.b nG6, nE6, nC6
	sPatFM		$00
	dc.b nE4, $48, nE4, $06, nA4, $04, nRst, $08
	dc.b nE4, $42, nD4, $05, nRst, $07, nC4, $05
	dc.b nRst, $07, nB3, $05, nRst, $07, nC4, $12
	dc.b nA3, $06, nRst, $48, nRst, $60, nE4, $48
	dc.b nE4, $06, nA4, $04, nRst, $08, nE4, $42
	dc.b nD4, $05, nRst, $07, nC4, $05, nRst, $07
	dc.b nB3, $05, nRst, $07, nC4, $12, nE4, $06
	dc.b nRst, $48, nRst, $3C, nE5, $0C, nD5, nC5
	dc.b nC5, $12, nA4, nE5, $30, nD5, $06, nC5
	dc.b nD5, $0B, nRst, $07, nB4, $0B, nRst, $07
	dc.b nG4, $24, nB4, $0C, nA4, nAb4, $12, nB4
	dc.b $06, nRst, $0C, nD5, $18, nF5, $06, nRst
	dc.b nE5, nRst, nD5, nRst, nE5, $10, nRst, $08
	dc.b nD5, $10, nRst, $08, nC5, $10, nRst, $08
	dc.b nB4, $10, nRst, $08, nC5, $12, nA4, nE5
	dc.b $2D, nRst, $03, nD5, $06, nC5, nD5, $0B
	dc.b nRst, $07, nB4, $0B, nRst, $07, nG4, $24
	dc.b nB4, $0C, nA4, nAb4, $12, nB4, $06, nRst
	dc.b $0C, nD5, $18, nF5, $06, nRst, nE5, nRst
	dc.b nD5, nRst, nE5, nD5, nE5, $7F, sHold, nE5
	dc.b $05, nRst, $30
	sJump		FBZ1_Jump2
	dc.b $F2	; Unused

FBZ1_DAC:
	dc.b dKick, $06, dKick, dKick, dKick

FBZ1_Loop6:
	dc.b dKick, $18, dSnare
	sLoop		$00, $07, FBZ1_Loop6
	dc.b dKick, $18, dSnare, $0C, dSnare

FBZ1_Loop7:
	dc.b dKick, $18, dSnare
	sLoop		$00, $07, FBZ1_Loop7
	dc.b dKick, $18, dSnare, $0C, dSnare

FBZ1_Loop8:
	dc.b dKick, $18, dSnare
	sLoop		$00, $0F, FBZ1_Loop8
	dc.b dKick, $0C, dSnare, dSnare, dSnare

FBZ1_Loop9:
	dc.b dKick, $0C, dClap, dSnare, dClap, $06, dClap, dKick
	dc.b $0C, dClap, dSnare, dClap, $06, dClap, dKick, $0C
	dc.b dClap, dSnare, dClap, $06, dClap, dKick, dClap, dClap
	dc.b dClap, dSnare, $0C, dClap
	sLoop		$00, $04, FBZ1_Loop9
	dc.b dKick, $0C, dSnare, dSnare, dSnare, $06, dSnare, dSnare
	dc.b $30
	sJump		FBZ1_Loop6
	dc.b $F2	; Unused

FBZ1_PSG1:
	sStop

FBZ1_PSG2:
	sStop
	dc.b $F2	; Unused

FBZ1_PSG3:
	sStop

FBZ1_Patches:

	; Patch $00
	; $38
	; $47, $31, $73, $41,	$17, $11, $14, $18
	; $02, $0C, $05, $01,	$00, $0F, $00, $00
	; $1F, $3F, $5F, $1F,	$28, $13, $23, $81
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$04, $07, $03, $04
	spMultiple	$07, $03, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $14, $11, $18
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$02, $05, $0C, $01
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$28, $23, $13, $01

	; Patch $01
	; $3B
	; $47, $40, $41, $40,	$9F, $1F, $1F, $1F
	; $0F, $0E, $09, $09,	$00, $00, $00, $00
	; $EF, $EF, $EF, $EF,	$24, $12, $15, $81
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$04, $04, $04, $04
	spMultiple	$07, $01, $00, $00
	spRateScale	$02, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $09, $0E, $09
	spSustainLv	$0E, $0E, $0E, $0E
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $15, $12, $01

	; Patch $02
	; $3B
	; $7C, $19, $11, $71,	$13, $1C, $1C, $1B
	; $0C, $09, $0A, $02,	$00, $06, $04, $07
	; $1F, $EF, $FF, $EF,	$23, $29, $10, $81
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$07, $01, $01, $07
	spMultiple	$0C, $01, $09, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$13, $1C, $1C, $1B
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0A, $09, $02
	spSustainLv	$01, $0F, $0E, $0E
	spDecayRt	$00, $04, $06, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $10, $29, $01

	; Patch $03
	; $34
	; $61, $01, $01, $61,	$10, $11, $50, $D1
	; $06, $01, $01, $01,	$08, $00, $09, $00
	; $8F, $FF, $FF, $FF,	$19, $85, $17, $86
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$06, $00, $00, $06
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $01, $00, $03
	spAttackRt	$10, $10, $11, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $01, $01, $01
	spSustainLv	$08, $0F, $0F, $0F
	spDecayRt	$08, $09, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$19, $17, $05, $06

	; Patch $04
	; $1B
	; $65, $50, $20, $41,	$1C, $18, $1A, $18
	; $0F, $0C, $0B, $07,	$05, $01, $05, $01
	; $CF, $0F, $DF, $CF,	$21, $19, $26, $81
	spAlgorithm	$03
	spFeedback	$03
	spDetune	$06, $02, $05, $04
	spMultiple	$05, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1C, $1A, $18, $18
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $0B, $0C, $07
	spSustainLv	$0C, $0D, $00, $0C
	spDecayRt	$05, $05, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $26, $19, $01

	; Patch $05
	; $38
	; $7B, $5B, $13, $31,	$16, $15, $14, $12
	; $0E, $01, $05, $04,	$0C, $13, $0C, $0B
	; $FF, $EF, $DF, $8F,	$2F, $2F, $1D, $85
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$07, $01, $05, $03
	spMultiple	$0B, $03, $0B, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$16, $14, $15, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $05, $01, $04
	spSustainLv	$0F, $0D, $0E, $08
	spDecayRt	$0C, $0C, $13, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2F, $1D, $2F, $05
