Boss_Header:
	sHeaderInit						; Z80 offset is $8742
	sHeaderPatch	Boss_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $00
	sHeaderDAC	Boss_DAC
	sHeaderFM	Boss_FM1, $00, $0F
	sHeaderFM	Boss_FM2, $00, $0F
	sHeaderFM	Boss_FM3, $00, $0F
	sHeaderFM	Boss_FM4, $00, $0F
	sHeaderFM	Boss_FM5, $00, $16
	sHeaderPSG	Boss_PSG1, $E8, $04, $00, v00
	sHeaderPSG	Boss_PSG2, $E8, $02, $00, v00
	sHeaderPSG	Boss_PSG3, $E8, $02, $00, v00

Boss_FM1:
	ssModZ80	$0D, $01, $02, $06

Boss_Loop1:
	sPan		spCenter
	sPatFM		$02
	dc.b nB5, $06, nRst, nB5, nRst, nB5, nRst, nB5
	dc.b nRst, nB5, nRst, nB5, nRst, nB5, nRst, nB5
	dc.b nRst, nB5, nRst
	sPatFM		$07
	dc.b nE3, $24, nFs3, $30
	sLoop		$00, $02, Boss_Loop1
	sPatFM		$00
	dc.b nE4, $3C, nFs4, $0C, nG4, nA4, nB4, $18
	dc.b nA4, nG4, nFs4, nG4, $0C, nE4, $06, nRst
	dc.b nE4, nRst, nE4, $0C, nB3, $06, nRst, nB3
	dc.b nRst, nE4, $0C, nFs4, $06, nRst, nA4, $0C
	dc.b nG4, nFs4, nA4, $3C, nE4, nFs4, $0C, nG4
	dc.b nA4, nB4, $18, nA4, nG4, nFs4, nG4, $0C
	dc.b nE4, $06, nRst, nE4, nRst, nE4, $0C, nB3
	dc.b $06, nRst, nB3, nRst, nE4, $0C, nFs4, $06
	dc.b nRst, nA4, $0C, nG4, nFs4, nA4, $18, nA4
	dc.b $0C, nB4, nA4, nG4, nE4, $06, nRst, nC4
	dc.b nRst, nG4, $0C, nE4, $06, nRst, nC4, nRst
	dc.b nG4, $0C, nE4, $06, nRst, nA4, $0C, nFs4
	dc.b $06, nRst, nD4, nRst, nA4, $0C, nFs4, $06
	dc.b nRst, nD4, nRst, nA4, $0C, nFs4, $06, nRst
	dc.b nB4, $0C, nG4, $06, nRst, nE4, nRst, nB4
	dc.b $0C, nG4, $06, nRst, nE4, nRst, nD5, $0C
	dc.b nC5, $06, nRst, nB4, $0C, nC5, $06, nRst
	dc.b nB4, nRst, nG4, $3C, nG4, $0C, nE4, $06
	dc.b nRst, nC4, nRst, nG4, $0C, nE4, $06, nRst
	dc.b nC4, nRst, nG4, $0C, nE4, $06, nRst, nA4
	dc.b $0C, nFs4, $06, nRst, nD4, nRst, nA4, $0C
	dc.b nFs4, $06, nRst, nD4, nRst, nA4, $0C, nFs4
	dc.b $06, nRst, nB4, $0C, nG4, $06, nRst, nE4
	dc.b nRst, nB4, $0C, nG4, $06, nRst, nE4, nRst
	dc.b nD5, $0C, nC5, $06, nRst, nB4, $0C, nA4
	dc.b $06, nRst, nB4, nRst, nE5, $3C
	sJump		Boss_FM1
	dc.b $F2	; Unused

Boss_FM2:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter

Boss_Loop2:
	dc.b nE3, $0C, nE3, $06, nRst, nE3, nRst, nE3
	dc.b $0C, nE3, $06, nRst, nE3, nRst, nE3, $0C
	dc.b nE3, nRst, nC3, $24, nD3, $30
	sLoop		$00, $02, Boss_Loop2

Boss_Loop3:
	dc.b nE2, $0C, nE3, nE2, nE3, nE2, nE3, nE2
	dc.b nE3, nE2, nE3, nE2, nE3, nE2, nE3, nE2
	dc.b nE3, nE2, nE3, nE2, nE3, nE2, nE3, nE2
	dc.b nE3, nD3, nD4, nD3, nD4, nD3, nD4, nD3
	dc.b nD4
	sLoop		$00, $02, Boss_Loop3
	dc.b nC3, $0C, nC3, nC4, nC4, nG3, nG3, nC4
	dc.b nC4, nD3, nD3, nD4, nD4, nA3, nA3, nD4
	dc.b nD4, nE2, nE2, nE3, nE3, nB2, nB2, nE2
	dc.b nE2, nE3, nD3, nE3, nE2, nE2, nB2, nE3
	dc.b nB3, nC3, nC3, nC4, nC4, nG3, nG3, nC4
	dc.b nC4, nD3, nD3, nD4, nD4, nA3, nA3, nD4
	dc.b nD4, nE2, nE3, nE3, nE2, nE3, nE3, nD3
	dc.b nE3, nA3, nB3, nD3, nE3, nA2, nB2, nE2
	dc.b $18
	sJump		Boss_FM2
	dc.b $F2	; Unused

Boss_FM3:
	sPatFM		$03
	ssModZ80	$0D, $01, $02, $06

Boss_Loop4:
	sPan		spRight
	dc.b nE5, $0C, nB4, $06, nRst, nB4, nRst, nB4
	dc.b $0C, nG4, $06, nRst, nG4, nRst, nG4, $0C
	dc.b nE4, $06, nRst, nE4, nRst, nG4, $24, nA4
	dc.b $30
	sLoop		$00, $02, Boss_Loop4
	sPatFM		$04
	dc.b nB3, $0C, nRst, $54, nG3, $0C, nRst, $54
	dc.b nB3, $0C, nRst, $54
	sPatFM		$05
	dc.b nC5, $0C, nB4, nA4, nA4, $3C
	sPatFM		$04
	dc.b nB3, $0C, nRst, $54, nG3, $0C, nRst, $54
	dc.b nB3, $0C, nRst, $54
	sPatFM		$05
	dc.b nC5, $0C, nB4, nA4, nD5, $3C

Boss_Loop5:
	sPatFM		$06
	dc.b nG3, $30, nC4, nA3, nD4, nG3, nB3, nE4
	dc.b $18, nB3, nG3, nE3
	sLoop		$00, $02, Boss_Loop5
	sJump		Boss_FM3
	dc.b $F2	; Unused

Boss_FM4:
	sPatFM		$03
	ssModZ80	$0D, $01, $02, $06

Boss_Loop6:
	sPan		spLeft
	dc.b nB4, $0C, nG4, $06, nRst, nG4, nRst, nG4
	dc.b $0C, nE4, $06, nRst, nE4, nRst, nE4, $0C
	dc.b nB3, $06, nRst, nB3, nRst, nE4, $24, nFs4
	dc.b $30
	sLoop		$00, $02, Boss_Loop6
	sPatFM		$04
	dc.b nG3, $0C, nRst, $54, nE3, $0C, nRst, $54
	dc.b nG3, $0C, nRst, $54
	sPatFM		$05
	dc.b nD4, $0C, nD4, nD4, nFs4, $3C
	sPatFM		$04
	dc.b nG3, $0C, nRst, $54, nE3, $0C, nRst, $54
	dc.b nG3, $0C, nRst, $54
	sPatFM		$05
	dc.b nD4, $0C, nD4, nD4, nFs4, $3C

Boss_Loop7:
	sPatFM		$06
	dc.b nE3, $30, nG3, nFs3, nA3, nE3, nG3, nB3
	dc.b $18, nG3, nE3, nB2
	sLoop		$00, $02, Boss_Loop7
	sJump		Boss_FM4
	dc.b $F2	; Unused

Boss_FM5:
	dc.b nRst, $1D

Boss_Jump1:
	ssModZ80	$0D, $01, $02, $06

Boss_Loop8:
	sPan		spCenter
	sPatFM		$02
	dc.b nB5, $06, nRst, nB5, nRst, nB5, nRst, nB5
	dc.b nRst, nB5, nRst, nB5, nRst, nB5, nRst, nB5
	dc.b nRst, nB5, nRst
	sPatFM		$07
	dc.b nE3, $24, nFs3, $30
	sLoop		$00, $02, Boss_Loop8
	sPatFM		$00
	dc.b nE4, $3C, nFs4, $0C, nG4, nA4, nB4, $18
	dc.b nA4, nG4, nFs4, nG4, $0C, nE4, $06, nRst
	dc.b nE4, nRst, nE4, $0C, nB3, $06, nRst, nB3
	dc.b nRst, nE4, $0C, nFs4, $06, nRst, nA4, $0C
	dc.b nG4, nFs4, nA4, $3C, nE4, nFs4, $0C, nG4
	dc.b nA4, nB4, $18, nA4, nG4, nFs4, nG4, $0C
	dc.b nE4, $06, nRst, nE4, nRst, nE4, $0C, nB3
	dc.b $06, nRst, nB3, nRst, nE4, $0C, nFs4, $06
	dc.b nRst, nA4, $0C, nG4, nFs4, nA4, $18, nA4
	dc.b $0C, nB4, nA4, nG4, nE4, $06, nRst, nC4
	dc.b nRst, nG4, $0C, nE4, $06, nRst, nC4, nRst
	dc.b nG4, $0C, nE4, $06, nRst, nA4, $0C, nFs4
	dc.b $06, nRst, nD4, nRst, nA4, $0C, nFs4, $06
	dc.b nRst, nD4, nRst, nA4, $0C, nFs4, $06, nRst
	dc.b nB4, $0C, nG4, $06, nRst, nE4, nRst, nB4
	dc.b $0C, nG4, $06, nRst, nE4, nRst, nD5, $0C
	dc.b nC5, $06, nRst, nB4, $0C, nC5, $06, nRst
	dc.b nB4, nRst, nG4, $3C, nG4, $0C, nE4, $06
	dc.b nRst, nC4, nRst, nG4, $0C, nE4, $06, nRst
	dc.b nC4, nRst, nG4, $0C, nE4, $06, nRst, nA4
	dc.b $0C, nFs4, $06, nRst, nD4, nRst, nA4, $0C
	dc.b nFs4, $06, nRst, nD4, nRst, nA4, $0C, nFs4
	dc.b $06, nRst, nB4, $0C, nG4, $06, nRst, nE4
	dc.b nRst, nB4, $0C, nG4, $06, nRst, nE4, nRst
	dc.b nD5, $0C, nC5, $06, nRst, nB4, $0C, nA4
	dc.b $06, nRst, nB4, nRst, nE5, $3C
	sJump		Boss_Jump1
	dc.b $F2	; Unused

Boss_DAC:
	dc.b dSnare, $0C, dKick, dKick, dSnare, dKick, dKick, dSnare
	dc.b dKick, dSnare, dKick, $24, dKick, $18, dSnare, $0C
	dc.b dSnare, dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare
	dc.b dKick, dSnare, dKick, $24, dKick, $0C, dSnare, dSnare
	dc.b dSnare

Boss_Loop9:
	dc.b dKick, $0C, dSnare, dSnare, dSnare, $06, dSnare, dKick
	dc.b $0C, dSnare, dKick, dSnare
	sLoop		$00, $0F, Boss_Loop9
	dc.b dKick, $0C, dSnare, dSnare, dSnare, $06, dSnare, dKick
	dc.b $0C, dSnare, dSnare, dSnare
	sJump		Boss_DAC
	dc.b $F2	; Unused

Boss_PSG1:
	ssModZ80	$0D, $01, $02, $06
	dc.b nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nD5, $0C, nE5, $06, nRst, nD5, nRst, nB4
	dc.b $3C, nB4, $0C, nG4, $06, nRst, nE4, nRst
	dc.b nB4, $0C, nG4, $06, nRst, nE4, nRst, nB4
	dc.b $0C, nG4, $06, nRst, nC5, $0C, nA4, $06
	dc.b nRst, nFs4, nRst, nC5, $0C, nA4, $06, nRst
	dc.b nFs4, nRst, nC5, $0C, nA4, $06, nRst, nD5
	dc.b $0C, nB4, $06, nRst, nG4, nRst, nD5, $0C
	dc.b nB4, $06, nRst, nG4, nRst, nFs5, $0C, nE5
	dc.b $06, nRst, nD5, $0C, nC5, $06, nRst, nD5
	dc.b nRst, nG5, $3C
	sJump		Boss_PSG1
	dc.b $F2	; Unused

Boss_PSG2:
	sStop
	dc.b $F2	; Unused

Boss_PSG3:
	sStop

Boss_Patches:

	; Patch $00
	; $3A
	; $48, $56, $54, $41,	$0F, $14, $53, $14
	; $04, $06, $06, $03,	$00, $0F, $00, $00
	; $1F, $3F, $5F, $1F,	$22, $13, $26, $84
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$04, $05, $05, $04
	spMultiple	$08, $04, $06, $01
	spRateScale	$00, $01, $00, $00
	spAttackRt	$0F, $13, $14, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $06, $06, $03
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$22, $26, $13, $04

	; Patch $01
	; $00
	; $71, $10, $70, $10,	$18, $58, $18, $1A
	; $09, $08, $01, $01,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$1A, $17, $1C, $83
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$07, $07, $01, $01
	spMultiple	$01, $00, $00, $00
	spRateScale	$00, $00, $01, $00
	spAttackRt	$18, $18, $18, $1A
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$09, $01, $08, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $1C, $17, $03

	; Patch $02
	; $34
	; $74, $21, $16, $71,	$11, $1F, $1F, $1F
	; $08, $05, $08, $09,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$17, $88, $10, $88
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$07, $01, $02, $07
	spMultiple	$04, $06, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$11, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $08, $05, $09
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $10, $08, $08

	; Patch $03
	; $2C
	; $43, $01, $21, $71,	$0E, $11, $12, $17
	; $00, $00, $00, $00,	$08, $00, $09, $00
	; $89, $F8, $F9, $F8,	$17, $8F, $0C, $89
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$04, $02, $00, $07
	spMultiple	$03, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0E, $12, $11, $17
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$08, $0F, $0F, $0F
	spDecayRt	$08, $09, $00, $00
	spReleaseRt	$09, $09, $08, $08
	spTotalLv	$17, $0C, $0F, $09

	; Patch $04
	; $3D
	; $31, $50, $21, $41,	$0D, $13, $13, $14
	; $03, $01, $06, $05,	$05, $01, $05, $01
	; $FF, $FF, $FF, $FF,	$1D, $8A, $88, $87
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$03, $02, $05, $04
	spMultiple	$01, $01, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0D, $13, $13, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$03, $06, $01, $05
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$05, $05, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1D, $08, $0A, $07

	; Patch $05
	; $07
	; $75, $53, $12, $31,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$0C, $13, $0C, $0B
	; $FF, $FF, $FF, $FF,	$8E, $86, $85, $89
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$07, $01, $05, $03
	spMultiple	$05, $02, $03, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$0C, $0C, $13, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $05, $06, $09

	; Patch $06
	; $3D
	; $71, $23, $41, $41,	$10, $18, $14, $14
	; $01, $04, $02, $03,	$00, $06, $04, $07
	; $FF, $FC, $FF, $F8,	$1D, $88, $86, $86
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$07, $04, $02, $04
	spMultiple	$01, $01, $03, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $14, $18, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $02, $04, $03
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $04, $06, $07
	spReleaseRt	$0F, $0F, $0C, $08
	spTotalLv	$1D, $06, $08, $06

	; Patch $07
	; $10
	; $21, $13, $38, $44,	$1D, $1D, $1D, $1E
	; $04, $07, $04, $07,	$00, $00, $00, $00
	; $5F, $5F, $5F, $5F,	$25, $0A, $1F, $8B
	spAlgorithm	$00
	spFeedback	$02
	spDetune	$02, $03, $01, $04
	spMultiple	$01, $08, $03, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1D, $1D, $1D, $1E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $04, $07, $07
	spSustainLv	$05, $05, $05, $05
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$25, $1F, $0A, $0B
