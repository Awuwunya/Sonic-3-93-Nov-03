EMZ_Header:
	sHeaderInit						; Z80 offset is $A24B
	sHeaderPatch	EMZ_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $1C
	sHeaderDAC	EMZ_DAC
	sHeaderFM	EMZ_FM1, $00, $10
	sHeaderFM	EMZ_FM2, $00, $0F
	sHeaderFM	EMZ_FM3, $00, $0E
	sHeaderFM	EMZ_FM4, $00, $0E
	sHeaderFM	EMZ_FM5, $00, $1D
	sHeaderPSG	EMZ_PSG1, $E8, $05, $00, v00
	sHeaderPSG	EMZ_PSG2, $E8, $02, $00, v00
	sHeaderPSG	EMZ_PSG3, $E8, $02, $00, v00

EMZ_FM1:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nG5, $06, nG5, nG5, nRst, $4E

EMZ_Jump1:
	dc.b nRst, $60, nRst, nRst, nRst
	sPatFM		$06
	dc.b nG5, nC5, nF5, nG5
	sPatFM		$03
	dc.b nRst, $0C, nC5, nB4, nC5, nG5, $12, nC5
	dc.b nB4, $0C, nB4, $12, nC5, nA4, $2F, nRst
	dc.b $0D, nG5, $12, nF5, nE5, $0C, nF5, $12
	dc.b nE5, nD5, $0C, nC5, $12, nB4, nG4, $24
	dc.b nRst, $18, nRst, $0C, nC5, nB4, nC5, nG5
	dc.b $12, nC5, nB4, $0C, nB4, $12, nC5, nA4
	dc.b $30, nRst, $0C, nG5, $12, nF5, nE5, $0C
	dc.b nF5, $12, nG5, nA5, $0C, nC6, $12, nB5
	dc.b nC6, $0C, nD6, $24, nRst, $0C
	sPatFM		$05
	dc.b nC5, $4E, nE4, $06, nA4, nC5, nD5, $30
	dc.b nG4, nA4, nA4, $06, nD4, nE4, nG4, nAb4
	dc.b nA4, nC5, nE5, nD5, $24, nA4, $3C
	sPatFM		$04
	dc.b nF4, $06, nC4, nG4, nC4, nA4, nC4, nF4
	dc.b nC4, nG4, nC4, nA4, nC4, nB4, nC4, nA4
	dc.b nC4, nG4, nD4, nA4, nD4, nB4, nD4, nG4
	dc.b nD4, nA4, nD4, nB4, nD4, nD5, nD4, nC5
	dc.b $0C
	sPatFM		$07
	dc.b nE5, $06, nRst, nA4, $0C, nC5, nD5, nE5
	dc.b $12, nD5, nC5, $0C, nAb4, $12, nC5, nE5
	dc.b $30, nD5, $06, nC5, nG4, $12, nC5, nE5
	dc.b $18, nE5, $0C, nD5, nC5, nD5, $12, nA4
	dc.b nFs4, $3C
	sPatFM		$05
	dc.b nF4, nC4, $0C, nF4, nA4, nG4, $24, nA4
	dc.b $0C, nB4, $30, nA4, $7F, sHold, nA4, $1D
	dc.b nA4, $0C, nB4, nC5, nD5, $60, nD5, $06
	dc.b nD5, nRst, $54
	sJump		EMZ_Jump1
	dc.b $F2	; Unused

EMZ_FM2:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nB1, $06, nB1, nG1, nRst, $2A, nG1, $0C
	dc.b nB1, nG1

EMZ_Loop1:
	dc.b nC2, $12, nG2, $06, nG2, $12, nC2, $06
	dc.b nC2, $12, nG2, $06, nG2, $0C, nC2, nA1
	dc.b $12, nE2, $06, nE2, $12, nA1, $06, nA1
	dc.b $12, nE2, $06, nE2, $0C, nA1, nF1, $12
	dc.b nC2, $06, nC2, $12, nF1, $06, nF1, $12
	dc.b nC2, $06, nC2, $0C, nF1, nG1, $12, nD2
	dc.b $06, nD2, $12, nG1, $06, nG1, $12, nD2
	dc.b $06, nD2, $0C, nG1
	sLoop		$00, $04, EMZ_Loop1
	dc.b nF1, $12, nC2, $06, nC2, $12, nF1, $06
	dc.b nF1, $12, nC2, $06, nC2, $0C, nF1, nG1
	dc.b $12, nD2, $06, nD2, $12, nG1, $06, nG1
	dc.b $12, nD2, $06, nD2, $0C, nG1, nA1, $12
	dc.b nE2, $06, nE2, $12, nA1, $06, nA1, $12
	dc.b nE2, $06, nE2, $0C, nA1, nD2, $12, nA1
	dc.b $06, nA1, $12, nD2, $06, nD2, $12, nA1
	dc.b $06, nA1, $0C, nD2, nF1, $12, nC2, $06
	dc.b nC2, $12, nF1, $06, nF1, $12, nC2, $06
	dc.b nC2, $0C, nF1, nG1, $12, nD2, $06, nD2
	dc.b $12, nG1, $06, nG1, $12, nD2, $06, nD2
	dc.b $0C, nG1

EMZ_Loop2:
	dc.b nA1, $12, nE2, $06, nE2, $12, nA1, $06
	dc.b nA1, $12, nE2, $06, nE2, $0C, nA1
	sLoop		$00, $03, EMZ_Loop2
	dc.b nFs1, $12, nD2, $06, nD2, $0C, nFs1, nFs2
	dc.b $12, nFs1, $06, nD2, $0C, nFs1, nF1, $12
	dc.b nC2, $06, nC2, $12, nF1, $06, nF1, $12
	dc.b nC2, $06, nC2, $0C, nF1, nG1, $12, nD2
	dc.b $06, nD2, $12, nG1, $06, nG1, $12, nD2
	dc.b $06, nD2, $0C, nG1, nA1, $12, nF2, $06
	dc.b nF2, $12, nA1, $06, nA1, $12, nF2, $06
	dc.b nF2, $0C, nA1, nA1, $12, nF2, $06, nF2
	dc.b $12, nA1, $06, nA1, $12, nF2, $06, nF2
	dc.b $0C, nA1, nB1, $12, nG2, $06, nG2, $12
	dc.b nB1, $06, nB1, $12, nG2, $06, nG2, $0C
	dc.b nB1, nB1, $06, nB1, nRst, $30, nG1, $0C
	dc.b nB1, nG1
	sJump		EMZ_Loop1
	dc.b $F2	; Unused

EMZ_FM3:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spRight
	dc.b nD5, $06, nD5, nD5, nRst, $4E

EMZ_Loop3:
	sPatFM		$02
	dc.b nC3, $06, nC4, nE5, nC4, nD5, $12, nC5
	dc.b $06, nRst, nC5, nC4, $0C, nB4, nA4, nRst
	dc.b $06, nA3, nE5, nA3, nD5, $12, nC5, $06
	dc.b nRst, nD5, nA3, $0C, nA4, nB4, $06, nA4
	dc.b nA2, nA3, nA4, nA3, nB4, $12, nC5, $06
	dc.b nRst, nB4, nA3, $0C, nB4, nC5, nG2, $06
	dc.b nG3, nC5, nG3, nB4, $12, nA4, $06, nRst
	dc.b nD5, nG3, $0C, nB4, nC5, $06, nB4
	sLoop		$00, $04, EMZ_Loop3
	dc.b nF3, $06, nRst, nC5, nRst, nF3, nC5, nRst
	dc.b nF3, nF2, nRst, nA4, nF3, nC5, nRst, nF2
	dc.b nF3, nG3, nRst, nB4, nRst, nG3, nG4, nRst
	dc.b nG3, nG2, nRst, nB4, nG3, nC5, nRst, nG3
	dc.b nG2, nA2, nA3, nC5, nRst, nA3, nC5, nRst
	dc.b nA3, nA2, nRst, nA4, nA3, nC5, nRst, nA2
	dc.b nA3, nA3, nRst, nC5, nRst, nD3, nC5, nRst
	dc.b nD3, nD2, nRst, nFs4, nD3, nC5, nRst, nD3
	dc.b nE3, nF3, nRst, nA4, nRst, nF3, nA4, nRst
	dc.b nF3, nRst, $0C, nF3, $06, nF2, nA4, nRst
	dc.b nF3, nRst, nG3, nG2, nB4, nRst, nG3, nB4
	dc.b nRst, nG3, nRst, $0C, nG2, $06, nG3, nB4
	dc.b nRst, nG3, nRst, nA2, nA3, nC5, nA3, nC5
	dc.b $0C, nRst, $06, nC5, nRst, nC5, nA3, nA3
	dc.b nC5, $0C, nA4, nRst, $06, nA3, nC5, nA3
	dc.b nC5, $12, nC5, $06, nRst, nC5, nA3, $0C
	dc.b nC5, nC5, $06, nAb4, nA2, nA3, nC5, nA3
	dc.b nC5, $0C, nRst, $06, nC5, nRst, nC5, nA3
	dc.b nA3, nC5, $0C, nC5, nRst, $06, nFs3, nA4
	dc.b nFs3, nA4, $0C, nRst, $06, nA4, nRst, nA4
	dc.b nFs3, $0C, nA4, nA4, $06, nFs4, nF2, nF3
	dc.b nC5, nF3, nC5, $0C, nRst, $06, nC5, nRst
	dc.b nC5, nF3, nF3, nC5, $0C, nC5, nRst, $06
	dc.b nG3, nD5, nG3, nD5, $0C, nRst, $06, nD5
	dc.b nRst, nD5, nG3, $0C, nA4, nB4, $06, nA4
	dc.b nA2, nA3, nA4, nA3, nA4, $0C, nRst, $06
	dc.b nA4, nRst, nA4, nA3, nA3, nA4, $0C, nA4
	dc.b nRst, nA4, $06, nA3, nC5, $0C, nRst, $06
	dc.b nA4, nRst, nC5, nA2, nA3, nF5, $0C, nC5
	dc.b $06, nA4, nB3, nB3, nB4, nRst, nB3, nB4
	dc.b nB2, nF5, nRst, nB4, nB2, nB3, nB4, nB3
	dc.b nB3, nRst, nD5, nD5, nRst, $54
	sJump		EMZ_Loop3
	dc.b $F2	; Unused

EMZ_FM4:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spLeft
	dc.b nA4, $06, nA4, nA4, nRst, $4E

EMZ_Loop4:
	sPatFM		$02
	dc.b nRst, $0C, nC5, $06, nRst, nB4, $0C, nC4
	dc.b $06, nA4, nRst, nA4, nRst, nC3, nG4, nC3
	dc.b nF4, $0C, nA2, nC5, $05, nRst, $07, nB4
	dc.b $0C, nA3, $06, nA4, nRst, nB4, nRst, nA2
	dc.b nF4, nA2, nG4, nF4, nRst, $0C, nF4, $06
	dc.b nRst, nG4, $0C, nA3, $06, nA4, nRst, nG4
	dc.b nRst, nA2, nG4, nA2, nA4, nRst, nRst, $0C
	dc.b nG4, $06, nRst, nG4, $0C, nG3, $06, nF4
	dc.b nRst, nB4, nRst, nG2, nG4, nA2, nG4, nG4
	sLoop		$00, $04, EMZ_Loop4
	dc.b nRst, $06, nF2, nA4, nRst, $0C, nA4, $06
	dc.b nRst, $18, nF4, $06, nRst, nA4, nRst, $12
	dc.b nRst, $06, nG2, nG4, nRst, $0C, nD4, $06
	dc.b nRst, $18, nG4, $06, nRst, nG4, nRst, $12
	dc.b nRst, $0C, nA4, $06, nRst, $0C, nA4, $06
	dc.b nRst, $18, nE4, $06, nRst, nA4, nRst, $12
	dc.b nD3, $06, nD2, nFs4, nRst, $0C, nFs4, $06
	dc.b nRst, $18, nD4, $06, nRst, nFs4, nRst, $12
	dc.b nRst, $06, nF2, nF4, nRst, $0C, nF4, $06
	dc.b nRst, $24, nF4, $06, nRst, $12, nRst, $0C
	dc.b nG4, $06, nRst, $0C, nG4, $06, nRst, $24
	dc.b nG4, $06, nRst, $12, nRst, $0C, nA4, $06
	dc.b nRst, nA4, $0C, nA3, $06, nA4, nRst, nA4
	dc.b nRst, $0C, nA4, $06, nA3, nE4, $0C, nA2
	dc.b nAb4, $06, nRst, nAb4, $0C, nA3, $06, nAb4
	dc.b nRst, nAb4, nRst, nA2, nAb4, nA2, nAb4, nE4
	dc.b nRst, $0C, nG4, $06, nRst, nG4, $0C, nA3
	dc.b $06, nG4, nRst, nG4, nRst, $0C, nG4, $06
	dc.b nA3, nG4, $0C, nFs2, nFs4, $06, nRst, nFs4
	dc.b $0C, nFs3, $06, nFs4, nRst, nFs4, nRst, nFs2
	dc.b nFs4, nFs3, nFs4, nD4, nRst, $0C, nA4, $06
	dc.b nRst, nA4, $0C, nF3, $06, nA4, nRst, nA4
	dc.b nRst, $0C, nA4, $06, nF3, nA4, $0C, nG2
	dc.b nB4, $06, nRst, nB4, nRst, nG3, nB4, nRst
	dc.b nB4, nRst, nG2, nF4, nG3, nG4, nF4, nRst
	dc.b $0C, nF4, $06, nRst, nF4, $0C, nA2, $06
	dc.b nF4, nRst, nF4, nRst, $0C, nF4, $06, nA3
	dc.b nF4, $0C, nA3, $06, nA2, nF4, nRst, nF4
	dc.b $0C, nA3, $06, nF4, nRst, nF4, nRst, $0C
	dc.b nC5, $06, nA3, nF4, nF4, nRst, $0C, nG4
	dc.b $06, nRst, $0C, nG4, $06, nRst, nD5, nRst
	dc.b nG4, nRst, $0C, nG4, $06, nRst, $12, nG4
	dc.b $06, nG4, nRst, $54
	sJump		EMZ_Loop4
	dc.b $F2	; Unused

EMZ_FM5:
	dc.b nRst, $08
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nG5, $06, nG5, nG5, nRst, $4E

EMZ_Jump2:
	dc.b nRst, $60, nRst, nRst, nRst
	sPatFM		$06
	dc.b nG5, nC5, nF5, nG5
	sPatFM		$03
	dc.b nRst, $0C, nC5, nB4, nC5, nG5, $12, nC5
	dc.b nB4, $0C, nB4, $12, nC5, nA4, $2F, nRst
	dc.b $0D, nG5, $12, nF5, nE5, $0C, nF5, $12
	dc.b nE5, nD5, $0C, nC5, $12, nB4, nG4, $24
	dc.b nRst, $18, nRst, $0C, nC5, nB4, nC5, nG5
	dc.b $12, nC5, nB4, $0C, nB4, $12, nC5, nA4
	dc.b $30, nRst, $0C, nG5, $12, nF5, nE5, $0C
	dc.b nF5, $12, nG5, nA5, $0C, nC6, $12, nB5
	dc.b nC6, $0C, nD6, $24, nRst, $0C
	sPatFM		$05
	dc.b nC5, $4E, nE4, $06, nA4, nC5, nD5, $30
	dc.b nG4, nA4, nA4, $06, nD4, nE4, nG4, nAb4
	dc.b nA4, nC5, nE5, nD5, $24, nA4, $3C
	sPatFM		$04
	dc.b nF4, $06, nC4, nG4, nC4, nA4, nC4, nF4
	dc.b nC4, nG4, nC4, nA4, nC4, nB4, nC4, nA4
	dc.b nC4, nG4, nD4, nA4, nD4, nB4, nD4, nG4
	dc.b nD4, nA4, nD4, nB4, nD4, nD5, nD4, nC5
	dc.b $0C
	sPatFM		$07
	dc.b nE5, $06, nRst, nA4, $0C, nC5, nD5, nE5
	dc.b $12, nD5, nC5, $0C, nAb4, $12, nC5, nE5
	dc.b $30, nD5, $06, nC5, nG4, $12, nC5, nE5
	dc.b $18, nE5, $0C, nD5, nC5, nD5, $12, nA4
	dc.b nFs4, $3C
	sPatFM		$05
	dc.b nF4, nC4, $0C, nF4, nA4, nG4, $24, nA4
	dc.b $0C, nB4, $30, nA4, $7F, sHold, nA4, $1D
	dc.b nA4, $0C, nB4, nC5, nD5, $60, nD5, $06
	dc.b nD5, nRst, $54
	sJump		EMZ_Jump2
	dc.b $F2	; Unused

EMZ_DAC:
	dc.b dKick, $06, dKick, dKick, $54

EMZ_Loop5:
	dc.b dKick, $18, dKick, dKick, dKick, $0C, dSnare, $06
	dc.b dSnare, dKick, $18, dKick, dKick, dKick, $0C, dSnare
	sLoop		$00, $0F, EMZ_Loop5
	dc.b dKick, $18, dKick, dKick, dKick, $0C, dSnare, $06
	dc.b dSnare, dSnare, dSnare, $12, dKick, $18, dKick, dKick
	sJump		EMZ_Loop5
	dc.b $F2	; Unused

EMZ_PSG1:
	ssModZ80	$0D, $01, $02, $06
	dc.b nD5, $06, nD5, nD5, nRst, $4E

EMZ_Jump3:
	dc.b nRst, $60, nRst, nRst, nRst, nC5, $0C, nRst
	dc.b $54, nA4, $0C, nRst, $54, nC5, $0C, nRst
	dc.b $54, nB4, $0C, nRst, $54, nRst, $60, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, $1E
	dc.b nA4, $06, nC5, nD5, nF5, nRst, nE5, nRst
	dc.b nD5, nA4, nRst, $0C, nRst, $60, nRst, nRst
	dc.b nRst, $18, nC6, nB5, nA5, nRst, nE5, nD5
	dc.b nG5, nA5, $60, nAb5, $48, nE6, $18, nG5
	dc.b $60, nFs5, $24, nD6, $3C, nA4, nF4, $0C
	dc.b nA4, nC5, nB4, $24, nC5, $0C, nD5, $30
	dc.b nC5, $48, nE5, $18, nD5, $24, nC5, $18
	dc.b nC5, $0C, nD5, nE5, nG5, $60, nG5, $06
	dc.b nG5, nRst, $54
	sJump		EMZ_Jump3
	dc.b $F2	; Unused

EMZ_PSG2:
	sStop
	dc.b $F2	; Unused

EMZ_PSG3:
	sStop

EMZ_Patches:

	; Patch $00
	; $2D
	; $41, $51, $61, $41,	$11, $1F, $5F, $1F
	; $04, $08, $08, $04,	$00, $0F, $00, $00
	; $18, $38, $58, $18,	$13, $8D, $8C, $8C
	spAlgorithm	$05
	spFeedback	$05
	spDetune	$04, $06, $05, $04
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $01, $00, $00
	spAttackRt	$11, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $08, $08, $04
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$13, $0C, $0D, $0C

	; Patch $01
	; $0C
	; $74, $11, $71, $11,	$1F, $5F, $1F, $1F
	; $10, $0D, $03, $04,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$17, $81, $15, $81
	spAlgorithm	$04
	spFeedback	$01
	spDetune	$07, $07, $01, $01
	spMultiple	$04, $01, $01, $01
	spRateScale	$00, $00, $01, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $03, $0D, $04
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $15, $01, $01

	; Patch $02
	; $03
	; $75, $53, $20, $11,	$1F, $1F, $1F, $1F
	; $0A, $08, $09, $0B,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$15, $23, $2B, $82
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$07, $02, $05, $01
	spMultiple	$05, $00, $03, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $09, $08, $0B
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$15, $2B, $23, $02

	; Patch $03
	; $3D
	; $42, $01, $01, $61,	$14, $19, $57, $D6
	; $06, $00, $00, $00,	$08, $00, $09, $00
	; $8F, $FF, $FF, $FF,	$23, $8C, $8C, $8C
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$04, $00, $00, $06
	spMultiple	$02, $01, $01, $01
	spRateScale	$00, $01, $00, $03
	spAttackRt	$14, $17, $19, $16
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $00, $00, $00
	spSustainLv	$08, $0F, $0F, $0F
	spDecayRt	$08, $09, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $0C, $0C, $0C

	; Patch $04
	; $03
	; $61, $51, $21, $41,	$10, $10, $0F, $15
	; $07, $01, $06, $05,	$05, $01, $05, $01
	; $CF, $0F, $DF, $CF,	$1D, $1E, $14, $81
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$06, $02, $05, $04
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $0F, $10, $15
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $06, $01, $05
	spSustainLv	$0C, $0D, $00, $0C
	spDecayRt	$05, $05, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1D, $14, $1E, $01

	; Patch $05
	; $02
	; $74, $51, $13, $31,	$90, $D9, $0F, $13
	; $06, $01, $01, $03,	$0C, $13, $0C, $0B
	; $FF, $EF, $DF, $8F,	$1B, $15, $17, $85
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$07, $01, $05, $03
	spMultiple	$04, $03, $01, $01
	spRateScale	$02, $00, $03, $00
	spAttackRt	$10, $0F, $19, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $01, $01, $03
	spSustainLv	$0F, $0D, $0E, $08
	spDecayRt	$0C, $0C, $13, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $17, $15, $05

	; Patch $06
	; $10
	; $45, $50, $64, $41,	$1F, $1F, $5F, $1F
	; $04, $08, $08, $04,	$00, $0F, $00, $00
	; $18, $38, $58, $18,	$20, $25, $1C, $88
	spAlgorithm	$00
	spFeedback	$02
	spDetune	$04, $06, $05, $04
	spMultiple	$05, $04, $00, $01
	spRateScale	$00, $01, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $08, $08, $04
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$20, $1C, $25, $08

	; Patch $07
	; $10
	; $45, $51, $64, $41,	$1F, $1F, $5F, $1F
	; $0C, $0A, $08, $04,	$00, $0F, $00, $00
	; $18, $38, $58, $18,	$20, $25, $1C, $86
	spAlgorithm	$00
	spFeedback	$02
	spDetune	$04, $06, $05, $04
	spMultiple	$05, $04, $01, $01
	spRateScale	$00, $01, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $08, $0A, $04
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$20, $1C, $25, $06
