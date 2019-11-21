FinalBoss_Header:
	sHeaderInit						; Z80 offset is $8000
	sHeaderPatch	FinalBoss_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $57
	sHeaderDAC	FinalBoss_DAC
	sHeaderFM	FinalBoss_FM1, $00, $10
	sHeaderFM	FinalBoss_FM2, $00, $0E
	sHeaderFM	FinalBoss_FM3, $00, $10
	sHeaderFM	FinalBoss_FM4, $00, $10
	sHeaderFM	FinalBoss_FM5, $00, $14
	sHeaderPSG	FinalBoss_PSG1, $E8, $02, $00, v00
	sHeaderPSG	FinalBoss_PSG2, $E8, $03, $00, v00
	sHeaderPSG	FinalBoss_PSG3, $E8, $02, $00, v00

FinalBoss_FM1:
	ssModZ80	$0D, $01, $02, $06
	dc.b nRst, $30, nRst, $18, nRst, $30, nRst, $18
	dc.b nRst, $30, nRst, $18
	sPatFM		$00
	dc.b nE4, $03, nF4, nG4, nA4, nF4, nG4, nA4
	dc.b nB4, nG4, nA4, nB4, nC5, nA4, nB4, nC5
	dc.b nD5, nB4, nC5, nD5, nE5, nC5, nD5, nE5
	dc.b nF5, nG5, $48, nRst, $30, nRst, $18, nRst
	dc.b $30, nRst, $18, nE4, $03, nF4, nG4, nA4
	dc.b nF4, nG4, nA4, nB4, nG4, nA4, nB4, nC5
	dc.b nA4, nB4, nC5, nD5, nB4, nC5, nD5, nE5
	dc.b nC5, nD5, nE5, nF5, nG5, $3C

FinalBoss_Loop1:
	sPatFM		$00
	dc.b nE5, $0C, nB4, nG5, nD5, nFs5, nCs5, nF4
	dc.b nF5
	sLoop		$00, $08, FinalBoss_Loop1
	dc.b nRst, $30, nRst

FinalBoss_Loop2:
	dc.b nE3, $02, nF3, nG3, nA3, nB3, nC4, nE4
	dc.b $0C, nE3, $02, nF3, nG3, nA3, nB3, nC4
	dc.b nE4, $0C, nRst, nD5, $03, nRst, nD5, nRst
	sLoop		$00, $03, FinalBoss_Loop2
	dc.b nE3, $02, nF3, nG3, nA3, nB3, nC4, nE4
	dc.b $0C, nE3, $02, nF3, nG3, nA3, nB3, nC4
	dc.b nE4, $0C, nRst, nRst, nRst, $24
	sPatFM		$03
	dc.b nE4, $12, nB4, nA4, $0C, nD5, $12, nC5
	dc.b nB4, $0C, nC5, $12, nD5, nE5, $0C, nD5
	dc.b $12, nA4, $1E, nE4, $12, nB4, nA4, $0C
	dc.b nD5, $12, nE5, nFs5, $0C, nG5, $12, nA5
	dc.b nB5, $0C, nD6, $12, nA5, $1E, nRst, $30
	dc.b nRst
	sJump		FinalBoss_Loop1
	dc.b $F2	; Unused

FinalBoss_FM2:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06

FinalBoss_Loop3:
	sPan		spCenter
	dc.b nE2, $63, nE2, $2D
	sLoop		$00, $04, FinalBoss_Loop3
	dc.b nE2, $3C

FinalBoss_Loop4:
	dc.b nE2, $06, nE2, nB2, nE2, nE2, nD3, nE2
	dc.b nE2, nCs3, nE2, nB2, nE2, nA2, nE2, nE2
	dc.b nA2, nE2, nE2, nA2, nE2, nE2, nB2, nE2
	dc.b nE2, nD3, nE2, nE3, nE2, nD3, nE2, nCs3
	dc.b nE2, nE2, nE2, $03, nE2, nA2, $06, nE2
	dc.b nE2, nB2, nE2, nE2, nD3, nE2, nCs3, nE2
	dc.b nB2, nE2, nA2, nE2, nE2, nE2, nA2, nE2
	dc.b nE2, nB2, nE2, nE2, nD3, nE2, nE2, nCs3
	dc.b nE2, nE2, nB2, nD3
	sLoop		$00, $02, FinalBoss_Loop4
	dc.b nE2, $06, nA2, nB2, nE2, nE3, nA2, nB2
	dc.b nE3, nD2, nG2, nA2, nD2, nD3, nG2, nA2
	dc.b nD3

FinalBoss_Loop5:
	dc.b nC2, $06, nC3, nRst, $0C
	sLoop		$00, $0A, FinalBoss_Loop5
	dc.b nC2, $06, nC3, nRst, nD3, $42, nE2, $06
	dc.b nE2, nB2, nE2, nD3, nE2, nB2, nD3, nD2
	dc.b nD2, nA2, nD2, nD3, nC3, nB2, nA2, nC3
	dc.b nC3, nG2, nC3, nE3, nG2, nC3, nD3, nD2
	dc.b nD2, nA2, nD2, nD3, nA2, nG2, nD2, nE2
	dc.b nE2, nB2, nE2, nE3, nE2, nB2, nE2, nFs2
	dc.b nFs2, nFs3, nFs2, nCs3, nFs2, nFs3, nFs2, nG2
	dc.b nG2, nG3, nG2, nD3, nG2, nG3, nG2, nA2
	dc.b nA2, nE3, nA2, nA3, nE3, nA2, nA3, nRst
	dc.b $0C, nBb2, $48, nRst, $0C
	sJump		FinalBoss_Loop4
	dc.b $F2	; Unused

FinalBoss_FM3:
	sPatFM		$02
	ssModZ80	$0D, $01, $02, $06
	sPan		spRight

FinalBoss_Loop6:
	dc.b nG4, $48, nBb4, $1B, nA4, $2D
	sLoop		$00, $04, FinalBoss_Loop6
	dc.b nG4, $3C

FinalBoss_Loop7:
	sPatFM		$02
	dc.b nG4, $30, nBb4, $12, nA4, nA4, $0C
	sLoop		$00, $08, FinalBoss_Loop7
	dc.b nG4, $30, nFs4, $12, nD4, nFs4, $0C

FinalBoss_Loop8:
	dc.b nRst, $0C, nE4, nRst, nE4, nRst, nFs4, $03
	dc.b nRst, nFs4, nRst
	sLoop		$00, $03, FinalBoss_Loop8
	dc.b nRst, $0C, nE4, nRst, nE4, $06, nFs4, $2A
	dc.b nRst, $18
	sPatFM		$04
	dc.b nG4, $30, nFs4, nE4, nFs4, nB4, nD5, nD5
	dc.b nFs5, nRst, $0C, nD5, $48, nRst, $0C
	sJump		FinalBoss_Loop7
	dc.b $F2	; Unused

FinalBoss_FM4:
	sPatFM		$02
	ssModZ80	$0D, $01, $02, $06
	sPan		spLeft

FinalBoss_Loop9:
	dc.b nD4, $48, nFs4, $1B, nF4, $2D
	sLoop		$00, $04, FinalBoss_Loop9
	dc.b nD4, $3C

FinalBoss_Loop10:
	sPatFM		$02
	dc.b nD4, $30, nFs4, $12, nF4, nF4, $0C
	sLoop		$00, $08, FinalBoss_Loop10
	dc.b nE4, $30, nD4, $12, nA3, nD4, $0C

FinalBoss_Loop11:
	dc.b nRst, $0C, nC4, nRst, nC4, nRst, nD4, $03
	dc.b nRst, nD4, nRst
	sLoop		$00, $03, FinalBoss_Loop11
	dc.b nRst, $0C, nC4, nRst, nC4, $03, nRst, nD4
	dc.b $2A, nRst, $18
	sPatFM		$04
	dc.b nB4, $30, nA4, nG4, nA4, nE5, nFs5, nG5
	dc.b nA5, nRst, $0C, nE5, $48, nRst, $0C
	sJump		FinalBoss_Loop10
	dc.b $F2	; Unused

FinalBoss_FM5:
	dc.b nRst, $09
	ssModZ80	$0D, $01, $02, $06
	dc.b nRst, $30, nRst, $18, nRst, $30, nRst, $18
	dc.b nRst, $30, nRst, $18
	sPatFM		$00
	dc.b nE4, $03, nF4, nG4, nA4, nF4, nG4, nA4
	dc.b nB4, nG4, nA4, nB4, nC5, nA4, nB4, nC5
	dc.b nD5, nB4, nC5, nD5, nE5, nC5, nD5, nE5
	dc.b nF5, nG5, $48, nRst, $30, nRst, $18, nRst
	dc.b $30, nRst, $18, nE4, $03, nF4, nG4, nA4
	dc.b nF4, nG4, nA4, nB4, nG4, nA4, nB4, nC5
	dc.b nA4, nB4, nC5, nD5, nB4, nC5, nD5, nE5
	dc.b nC5, nD5, nE5, nF5, nG5, $3C

FinalBoss_Loop12:
	sPatFM		$00
	dc.b nE5, $0C, nB4, nG5, nD5, nFs5, nCs5, nF4
	dc.b nF5
	sLoop		$00, $08, FinalBoss_Loop12
	dc.b nRst, $30, nRst

FinalBoss_Loop13:
	dc.b nE3, $02, nF3, nG3, nA3, nB3, nC4, nE4
	dc.b $0C, nE3, $02, nF3, nG3, nA3, nB3, nC4
	dc.b nE4, $0C, nRst, nD5, $03, nRst, nD5, nRst
	sLoop		$00, $03, FinalBoss_Loop13
	dc.b nE3, $02, nF3, nG3, nA3, nB3, nC4, nE4
	dc.b $0C, nE3, $02, nF3, nG3, nA3, nB3, nC4
	dc.b nE4, $0C, nRst, $0D, nRst, $0C, nRst, $24
	sPatFM		$03
	dc.b nE4, $12, nB4, nA4, $0C, nD5, $12, nC5
	dc.b nB4, $0C, nC5, $12, nD5, nE5, $0C, nD5
	dc.b $12, nA4, $1E, nE4, $12, nB4, nA4, $0C
	dc.b nD5, $12, nE5, nFs5, $0C, nG5, $12, nA5
	dc.b nB5, $0C, nD6, $12, nA5, $1E, nRst, $30
	dc.b nRst
	sJump		FinalBoss_Loop12
	dc.b $F2	; Unused

FinalBoss_DAC:
	dc.b nRst, $30, nRst, $18
	sLoop		$00, $04, FinalBoss_DAC

FinalBoss_Loop23:
	dc.b dKick, $24, dSnare, $1B, dKick, $09
	sLoop		$00, $03, FinalBoss_Loop23
	dc.b dKick, $1B, dKick, $09, dSnare, dKick, dSnare, dSnare
	dc.b nRst, $24, dSnare, $03, dSnare, dSnare, dSnare, dKick
	dc.b $06, dSnare

FinalBoss_Loop24:
	dc.b dKick, $0C, dSnare, dKick, $06, dKick, dSnare, $0C
	dc.b dKick, dSnare, $06, dKick, $0C, dKick, $06, dSnare
	dc.b $0C
	sLoop		$00, $08, FinalBoss_Loop24
	dc.b dKick, $0C, dSnare, $06, dKick, dKick, dSnare, dKick
	dc.b dSnare, dKick, dKick, dSnare, dKick, dKick, dSnare, dSnare
	dc.b dSnare, $03, dSnare

FinalBoss_Loop25:
	dc.b dKick, $06, dKick, dSnare, $0C, dKick, $06, dKick
	dc.b dSnare, $0C, dKick, $06, dKick, dSnare, dSnare
	sLoop		$00, $03, FinalBoss_Loop25
	dc.b dKick, $06, dKick, dSnare, $0C, dKick, $06, dKick
	dc.b dSnare, $0C, dKick, $06, dKick, dKick, dSnare, nRst
	dc.b $0C, nRst, $06, dKick, dSnare, $0C

FinalBoss_Loop26:
	dc.b dKick, $0C, dSnare, dKick, $06, dKick, dSnare, $0C
	dc.b dKick, dSnare, $06, dKick, $0C, dKick, $06, dSnare
	dc.b $0C
	sLoop		$00, $04, FinalBoss_Loop26
	dc.b dKick, $06, dKick, dSnare, $24, nRst, dSnare, $0C
	sJump		FinalBoss_Loop24
	dc.b $F2	; Unused

FinalBoss_PSG1:
	ssModZ80	$0D, $01, $02, $06

FinalBoss_Loop14:
	dc.b nB3, $48, nCs4, $1B, nC4, $2D
	sLoop		$00, $04, FinalBoss_Loop14
	dc.b nB3, $3C

FinalBoss_Loop15:
	dc.b nB3, $30, nCs4, $12, nC4, nC4, $0C
	sLoop		$00, $08, FinalBoss_Loop15
	dc.b nC4, $30

FinalBoss_Loop16:
	dc.b nRst, $30
	sLoop		$00, $07, FinalBoss_Loop16
	dc.b nRst, $24, nRst, $0C, nE5, $03, nRst, $09
	dc.b nD5, $03, nRst, nE5, nRst, $09, nD5, $03
	dc.b nRst, nRst, $06, nA4, $03, nRst, $27, nRst
	dc.b $0C, nE5, $03, nRst, $09, nD5, $03, nRst
	dc.b nE5, nRst, $09, nFs5, $03, nRst, nRst, $06
	dc.b nA4, $03, nRst, $27

FinalBoss_Loop17:
	dc.b nRst, $30
	sLoop		$00, $06, FinalBoss_Loop17
	sJump		FinalBoss_Loop15
	dc.b $F2	; Unused

FinalBoss_PSG2:
	ssModZ80	$0D, $01, $02, $06

FinalBoss_Loop18:
	dc.b nRst, $30, nRst, $18
	sLoop		$00, $08, FinalBoss_Loop18
	dc.b nRst, $3C

FinalBoss_Loop19:
	dc.b nRst, $30
	sLoop		$00, $08, FinalBoss_Loop19

FinalBoss_Loop20:
	dc.b nE4, $06, nB4, nE5, nG4, nG5, nFs5, nD5
	dc.b nB4, nRst, $30
	sLoop		$00, $02, FinalBoss_Loop20

FinalBoss_Loop21:
	dc.b nE4, $06, nB4, nE5, nG4, nG5, nFs5, nD5
	dc.b nB4, nE4, nCs5, nFs5, nCs5, nE4, nC5, nF5
	dc.b nC5
	sLoop		$00, $02, FinalBoss_Loop21
	dc.b nE4, $06, nB4, nE5, nG4, nG5, nFs5, nD5
	dc.b nB4, nD4, nA4, nD5, nFs4, nFs5, nE5, nD5
	dc.b nA4

FinalBoss_Loop22:
	dc.b nC4, $06, nG4, nE5, nD5, nG5, nFs5, nD5
	dc.b nG4, nC4, nG4, nE5, nD5
	sLoop		$00, $03, FinalBoss_Loop22
	dc.b nC4, $06, nG4, nE5, nD5, nG5, nFs5, nD5
	dc.b nA5, nG5, nFs5, nD5, nA4, nG4, nFs4, nD4
	dc.b nRst, $12, nRst, $0C, nG5, $06, nRst, nFs5
	dc.b nG5, nRst, nFs5, nRst, nD5, nRst, nE4, nE5
	dc.b nD5, nB4, nD5, nRst, $0C, nG5, $06, nRst
	dc.b nFs5, nG5, nRst, nA5, nRst, nD5, nRst, nE4
	dc.b nD5, nB4, nA4, nG4, nB4, $03, nRst, nD5
	dc.b nRst, nG5, nRst, nD5, nRst, $09, nB4, $03
	dc.b nRst, $09, nD5, $03, nRst, nA4, nRst, nD5
	dc.b nRst, nFs5, nRst, nD5, nRst, $09, nA4, $03
	dc.b nRst, $09, nD5, $03, nRst, nG5, nRst, nD5
	dc.b nRst, nC5, nRst, nG5, nRst, $09, nA5, $03
	dc.b nRst, $09, nG5, $03, nRst, nA4, nRst, nD5
	dc.b nRst, nFs5, nRst, nG5, nRst, nFs5, nRst, nE5
	dc.b nRst, nD5, nRst, nA4, nRst, nRst, $30, nRst
	sJump		FinalBoss_Loop19
	dc.b $F2, $F2	; Unused

FinalBoss_PSG3:
	sStop

FinalBoss_Patches:

	; Patch $00
	; $2A
	; $44, $42, $74, $41,	$0F, $14, $53, $14
	; $04, $06, $06, $03,	$00, $0F, $00, $00
	; $1F, $3F, $5F, $1F,	$16, $10, $26, $86
	spAlgorithm	$02
	spFeedback	$05
	spDetune	$04, $07, $04, $04
	spMultiple	$04, $04, $02, $01
	spRateScale	$00, $01, $00, $00
	spAttackRt	$0F, $13, $14, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $06, $06, $03
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$16, $26, $10, $06

	; Patch $01
	; $2D
	; $71, $00, $42, $22,	$18, $1F, $18, $1A
	; $03, $0D, $01, $01,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$10, $84, $87, $87
	spAlgorithm	$05
	spFeedback	$05
	spDetune	$07, $04, $00, $02
	spMultiple	$01, $02, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$18, $18, $1F, $1A
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$03, $01, $0D, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$10, $07, $04, $07

	; Patch $02
	; $35
	; $71, $24, $10, $71,	$1E, $1F, $1F, $1F
	; $08, $05, $08, $09,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$10, $8A, $85, $86
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$07, $01, $02, $07
	spMultiple	$01, $00, $04, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $08, $05, $09
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$10, $05, $0A, $06

	; Patch $03
	; $2C
	; $43, $01, $21, $71,	$0E, $11, $12, $17
	; $00, $00, $00, $00,	$08, $00, $09, $00
	; $89, $F8, $F9, $F8,	$17, $8C, $0C, $87
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
	spTotalLv	$17, $0C, $0C, $07

	; Patch $04
	; $3D
	; $31, $50, $21, $41,	$0D, $13, $13, $14
	; $03, $01, $06, $05,	$05, $01, $05, $01
	; $FF, $FF, $FF, $FF,	$1D, $87, $85, $84
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
	spTotalLv	$1D, $05, $07, $04
