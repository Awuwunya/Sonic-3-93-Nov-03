GlowingSpheres_Header:
	sHeaderInit						; Z80 offset is $9521
	sHeaderPatch	GlowingSpheres_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $16
	sHeaderDAC	GlowingSpheres_DAC
	sHeaderFM	GlowingSpheres_FM1, $00, $0E
	sHeaderFM	GlowingSpheres_FM2, $00, $0A
	sHeaderFM	GlowingSpheres_FM3, $00, $0E
	sHeaderFM	GlowingSpheres_FM4, $00, $0E
	sHeaderFM	GlowingSpheres_FM5, $00, $17
	sHeaderPSG	GlowingSpheres_PSG1, $E8, $06, $00, v00
	sHeaderPSG	GlowingSpheres_PSG2, $E8, $02, $00, v00
	sHeaderPSG	GlowingSpheres_PSG3, $E8, $02, $00, v00

GlowingSpheres_FM1:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $60, nRst

GlowingSpheres_Jump1:
	sPatFM		$00
	dc.b nRst, $60, nRst

GlowingSpheres_Loop1:
	dc.b nRst, $0C, nD5, nCs5, $06, nRst, $12, nB4
	dc.b $0C, nA4, $06, nRst, $12, nAb4, $06, nRst
	dc.b nG4, $08, nAb4, $04, nG4, $08, nAb4, $04
	dc.b nE4, $08, nB3, $06, nRst, nD4, $34, nRst
	dc.b $0C, nE4, $08, nD4, $04, nE4, $06, nRst
	dc.b $12, nAb4, $08, nD4, $04, nFs4, $06, nRst
	dc.b nE4, nRst, nA4, nRst, nAb4, $24, nA4, $0C
	dc.b nB4, $30, nRst, $0C, nD5, nCs5, $06, nRst
	dc.b $12, nB4, $0C, nA4, $06, nRst, $12, nAb4
	dc.b $06, nRst, nG4, $08, nAb4, $04, nG4, $08
	dc.b nAb4, $04, nE4, $08, nB3, $06, nRst, nD4
	dc.b $34, nRst, $0C, nE4, $08, nD4, $04, nE4
	dc.b $06, nRst, $12, nAb4, $08, nE4, $04, nFs4
	dc.b $06, nRst, nE4, nRst, nA4, nRst, nAb4, $24
	dc.b nE4, $3C
	sLoop		$00, $02, GlowingSpheres_Loop1
	dc.b nRst, $60, nRst, nRst, $18, nG5, nFs5, nE5
	dc.b nAb4, $08, nA4, $04, nC5, $08, nCs5, $06
	dc.b nRst, nE5, nRst, nEb5, $34, nRst, $0C
	sPatFM		$03
	dc.b nCs5, $06, nRst, nB4, $08, nCs5, $06, nRst
	dc.b $2A, nE5, $10
	sPatFM		$00
	dc.b nBb4, $08, nB4, $04, nBb4, $08, nFs4, $06
	dc.b nRst, nCs4, nRst, nBb3, $23, nRst, $11, nRst
	dc.b $0C, nF4, $08, nFs4, $04, nAb4, $08, nA4
	dc.b $06, nRst, nB4, nRst, nCs5, nRst, nEb5, nRst
	dc.b nE5, $10, nEb5, $20, nRst, $04, nC5, $08
	dc.b nC5, $28
	sPatFM		$03
	dc.b nEb5, $08, nEb5, $04
	sPatFM		$00
	dc.b nRst, $0C, nA4, $08, nC5, $04, nCs5, $08
	dc.b nE5, $06, nRst, $0A, nG5, $06, nRst, nFs5
	dc.b nRst, nG5, $0C, nA5, $06, nRst
	sPatFM		$03
	dc.b nG4, $08, nG4, $04, nRst, $30, nFs4, $24
	sJump		GlowingSpheres_Jump1
	dc.b $F2	; Unused

GlowingSpheres_FM2:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nE2, $0C, nAb2, nA2, nB2, $08, nE2, $06
	dc.b nRst, nE2, $04, nAb2, $0C, nA2, nB2, nE2
	dc.b nAb2, nA2, nB2, $08, nE2, $06, nRst, nE2
	dc.b $04, nD3, $0C, nCs3, nB2

GlowingSpheres_Jump2:
	dc.b nE2, $0C, nAb2, nA2, nB2, $08, nE2, $06
	dc.b nRst, nE2, $04, nAb2, $0C, nA2, nB2, nE2
	dc.b nAb2, nA2, nB2, $08, nE2, $06, nRst, nE2
	dc.b $04, nCs3, $0C, nD3, nEb3

GlowingSpheres_Loop2:
	dc.b nE2, $0C, nAb2, nA2, nB2, $08, nE2, $06
	dc.b nRst, nE2, $04, nAb2, $0C, nA2, nB2, nE2
	dc.b nAb2, nA2, nB2, $08, nE2, $06, nRst, nE2
	dc.b $04, nD3, $0C, nCs3, nB2, nE2, nAb2, nA2
	dc.b nB2, $08, nE2, $06, nRst, nE2, $04, nAb2
	dc.b $0C, nA2, nB2, nE2, nAb2, nA2, nB2, $08
	dc.b nE2, $06, nRst, nE2, $04, nCs3, $0C, nD3
	dc.b nEb3
	sLoop		$00, $04, GlowingSpheres_Loop2
	dc.b nE2, $0C, nAb2, nA2, nB2, $08, nE3, $06
	dc.b nRst, nE3, $04, nEb3, $0C, nD3, nB2, nA2
	dc.b nAb2, nFs2, nF2, nE2, nEb2, nD2, nEb2, nA2
	dc.b nCs3, nD3, nEb3, $08, nE3, $06, nRst, nE3
	dc.b $04, nEb3, $0C, nB2, nE2, nAb2, $08, nAb2
	dc.b $04, nFs2, $0C, nG2, nAb2, nC3, nAb2, nEb3
	dc.b nC3, nCs3, $08, nCs3, $04, nAb2, $0C, nCs3
	dc.b nC3, nB2, nFs2, nB2, nFs3, nBb2, $08, nBb2
	dc.b $04, nFs2, $0C, nBb2, nFs3, nE3, nCs3, nBb2
	dc.b nE2, nFs2, nA2, nC3, nCs3, $08, nE3, $10
	dc.b nCs3, $0C, nFs2, nG2, nAb2, nCs3, nD3, nEb3
	dc.b $08, nFs3, $10, nAb2, $0C, nEb3, nFs3, nA2
	dc.b nC3, nD3, nEb3, $08, nE3, $10, nG3, $0C
	dc.b nA3, nE3, nB2, $08, nB2, $06, nRst, $0A
	dc.b nBb2, $08, nB2, $04, nD3, $08, nEb3, $06
	dc.b nRst, $0A, nB2, $1E, nRst, $06
	sJump		GlowingSpheres_Jump2
	dc.b $F2	; Unused

GlowingSpheres_FM3:
	sPatFM		$02
	ssModZ80	$0D, $01, $02, $06
	sPan		spLeft
	dc.b nRst, $60, nRst

GlowingSpheres_Loop3:
	sPatFM		$02
	dc.b nFs5, $04, nRst, $14, nFs5, $04, nRst, $14
	dc.b nAb5, $10, nRst, $04, nFs5, nRst, $18, nRst
	dc.b $08, nFs5, $04, nRst, $0C, nFs5, $04, nRst
	dc.b $14, nAb5, $10, nRst, $04, nFs5, nRst, $18
	sLoop		$00, $0A, GlowingSpheres_Loop3
	dc.b nRst, $60, nRst
	sPatFM		$03
	dc.b nRst, $0C, nE5, $06, nRst, nEb5, $08, nE5
	dc.b $06, nRst, $12, nB4, $04, nC5, $08, nCs5
	dc.b $06, nRst, nB5, $10, nCs5, $08, nEb5, $04
	dc.b nCs5, $08, nBb4, $06, nRst, nFs4, nRst, nCs4
	dc.b $34, nRst, $60, nRst, $54, nAb5, $08, nAb5
	dc.b $04, nRst, $0C, nC5, $08, nE5, $04, nFs5
	dc.b $08, nG5, $06, nRst, $0A, nB5, $06, nRst
	dc.b nA5, nRst, nB5, $0C, nC6, $06, nRst, nEb5
	dc.b $08, nEb5, $06, nRst, $2E, nEb5, $24
	sJump		GlowingSpheres_Loop3
	dc.b $F2	; Unused

GlowingSpheres_FM4:
	sPatFM		$02
	ssModZ80	$0D, $01, $02, $06
	sPan		spRight
	dc.b nRst, $60, nRst

GlowingSpheres_Loop4:
	dc.b nB5, $08, nE3, $06, nRst, nE4, $04, nB5
	dc.b $06, nRst, nE4, $08, nE5, $04, nCs6, $10
	dc.b nRst, $04, nB5, $06, nRst, $0A, nG4, $08
	dc.b nAb4, $04, nE4, $08, nB5, $04, nE4, $06
	dc.b nRst, nB5, nRst, nE4, $08, nE5, $04, nCs6
	dc.b $10, nRst, $04, nB5, $06, nRst, $0A, nG4
	dc.b $08, nAb4, $04
	sLoop		$00, $0A, GlowingSpheres_Loop4
	dc.b nE5, $0C, nA4, nCs5, nE5, nFs5, nE5, nCs5
	dc.b nA4, nEb5, nAb4, nC5, nEb5, nAb5, nAb4, nC5
	dc.b nEb5, nAb5, nCs5, nE5, nAb5, nFs5, nB4, nEb5
	dc.b nFs5, nRst, nBb4, nCs5, nFs5, nBb5, nFs5, nCs5
	dc.b nBb4, nCs5, nFs4, nA4, nCs5, nE5, nCs5, nA4
	dc.b nFs4, nEb5, nAb4, nB4, nEb5, nAb5, nAb4, nB4
	dc.b nEb5, nC5, nA4, nC5, nE5, nG5, nE5, nC5
	dc.b nE5, nRst, $60
	sJump		GlowingSpheres_Loop4
	dc.b $F2	; Unused

GlowingSpheres_FM5:
	dc.b nRst, $0C
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $60, nRst

GlowingSpheres_Jump3:
	sPatFM		$00
	dc.b nRst, $60, nRst

GlowingSpheres_Loop5:
	dc.b nRst, $0C, nD5, nCs5, $06, nRst, $12, nB4
	dc.b $0C, nA4, $06, nRst, $12, nAb4, $06, nRst
	dc.b nG4, $08, nAb4, $04, nG4, $08, nAb4, $04
	dc.b nE4, $08, nB3, $06, nRst, nD4, $34, nRst
	dc.b $0C, nE4, $08, nD4, $04, nE4, $06, nRst
	dc.b $12, nAb4, $08, nD4, $04, nFs4, $06, nRst
	dc.b nE4, nRst, nA4, nRst, nAb4, $24, nA4, $0C
	dc.b nB4, $30, nRst, $0C, nD5, nCs5, $06, nRst
	dc.b $12, nB4, $0C, nA4, $06, nRst, $12, nAb4
	dc.b $06, nRst, nG4, $08, nAb4, $04, nG4, $08
	dc.b nAb4, $04, nE4, $08, nB3, $06, nRst, nD4
	dc.b $34, nRst, $0C, nE4, $08, nD4, $04, nE4
	dc.b $06, nRst, $12, nAb4, $08, nE4, $04, nFs4
	dc.b $06, nRst, nE4, nRst, nA4, nRst, nAb4, $24
	dc.b nE4, $3C
	sLoop		$00, $02, GlowingSpheres_Loop5
	dc.b nRst, $60, nRst, nRst, $18, nG5, nFs5, nE5
	dc.b nAb4, $08, nA4, $04, nC5, $08, nCs5, $06
	dc.b nRst, nE5, nRst, nEb5, $34, nRst, $0C
	sPatFM		$03
	dc.b nCs5, $06, nRst, nB4, $08, nCs5, $06, nRst
	dc.b $2A, nE5, $10
	sPatFM		$00
	dc.b nBb4, $08, nB4, $04, nBb4, $08, nFs4, $06
	dc.b nRst, nCs4, nRst, nBb3, $23, nRst, $11, nRst
	dc.b $0C, nF4, $08, nFs4, $04, nAb4, $08, nA4
	dc.b $06, nRst, nB4, nRst, nCs5, nRst, nEb5, nRst
	dc.b nE5, $10, nEb5, $20, nRst, $04, nC5, $08
	dc.b nC5, $28
	sPatFM		$03
	dc.b nEb5, $08, nEb5, $04
	sPatFM		$00
	dc.b nRst, $0C, nA4, $08, nC5, $04, nCs5, $08
	dc.b nE5, $06, nRst, $0A, nG5, $06, nRst, nFs5
	dc.b nRst, nG5, $0C, nA5, $06, nRst
	sPatFM		$03
	dc.b nG4, $08, nG4, $04, nRst, $30, nFs4, $24
	sJump		GlowingSpheres_Jump3
	dc.b $F2	; Unused

GlowingSpheres_DAC:
	dc.b nRst, $60, nRst, $30, dSnare, $0C, dSnare, dSnare
	dc.b dSnare, $08, dSnare, $04

GlowingSpheres_Loop8:
	dc.b dKick, $0C, dKick, dSnare, dKick, $08, dSnare, $0C
	dc.b dSnare, $04, dKick, $0C, dSnare, dKick, $08, dSnare
	dc.b $04, dKick, $0C, dKick, dSnare, dKick, $08, dSnare
	dc.b $0C, dSnare, $04, dKick, $0C, dSnare, $08, dSnare
	dc.b $04, dKick, $08, dSnare, $04
	sLoop		$00, $09, GlowingSpheres_Loop8
	dc.b nRst, $60, nRst, $30, dSnare, $08, dSnare, $04
	dc.b dSnare, $08, dSnare, $04, dSnare, $08, dSnare, $04
	dc.b dSnare, $08, dSnare, $04

GlowingSpheres_Loop9:
	dc.b dKick, $0C, dSnare, dKick, dSnare, $08, dSnare, $04
	dc.b dKick, $0C, dSnare, $08, dKick, $0C, dKick, $04
	dc.b dSnare, $08, dSnare, $04
	sLoop		$00, $07, GlowingSpheres_Loop9
	dc.b dKick, $14, dKick, $04, dSnare, $08, dKick, $0C
	dc.b dSnare, $04, dKick, $08, dSnare, $0C, dKick, $04
	dc.b dSnare, dSnare, dSnare, dSnare, dSnare, dSnare
	sJump		GlowingSpheres_Loop8
	dc.b $F2	; Unused

GlowingSpheres_PSG1:
	ssModZ80	$0D, $01, $01, $06
	dc.b nRst, $60, nRst

GlowingSpheres_Loop6:
	dc.b nRst, $60
	ssModZ80	$0D, $01, $02, $06
	sLoop		$00, $0A, GlowingSpheres_Loop6
	dc.b nRst, $18, nD6, nCs6, nA5, nAb5, $30, nE5
	dc.b $18, nA5, nAb5, $60, nB5, nB5, $18, nD6
	dc.b nCs6, nA5, nAb5, $30, nE5, $18, nA5, nAb5
	dc.b $48, nE6, $18, nD6, $60

GlowingSpheres_Loop7:
	dc.b nRst, $60
	sLoop		$00, $0A, GlowingSpheres_Loop7
	sJump		GlowingSpheres_Loop6
	dc.b $F2	; Unused

GlowingSpheres_PSG2:
	sStop
	dc.b $F2	; Unused

GlowingSpheres_PSG3:
	sStop

GlowingSpheres_Patches:

	; Patch $00
	; $38
	; $41, $11, $71, $41,	$16, $13, $0F, $17
	; $02, $0C, $05, $01,	$00, $0F, $00, $00
	; $1F, $3F, $5F, $1F,	$2A, $12, $24, $81
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$04, $07, $01, $04
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$16, $0F, $13, $17
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$02, $05, $0C, $01
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2A, $24, $12, $01

	; Patch $01
	; $33
	; $54, $50, $11, $11,	$DF, $5F, $1F, $1F
	; $0C, $0D, $01, $01,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$22, $17, $22, $81
	spAlgorithm	$03
	spFeedback	$06
	spDetune	$05, $01, $05, $01
	spMultiple	$04, $01, $00, $01
	spRateScale	$03, $00, $01, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $01, $0D, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$22, $22, $17, $01

	; Patch $02
	; $3B
	; $73, $11, $10, $71,	$1F, $1F, $1F, $1F
	; $0C, $09, $0A, $02,	$00, $06, $04, $07
	; $1F, $EF, $FF, $EF,	$21, $26, $13, $83
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$07, $01, $01, $07
	spMultiple	$03, $00, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0A, $09, $02
	spSustainLv	$01, $0F, $0E, $0E
	spDecayRt	$00, $04, $06, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $13, $26, $03

	; Patch $03
	; $35
	; $61, $01, $61, $71,	$10, $11, $50, $D1
	; $06, $01, $01, $01,	$08, $00, $09, $00
	; $8F, $FF, $FF, $FF,	$17, $88, $88, $8A
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$06, $06, $00, $07
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $01, $00, $03
	spAttackRt	$10, $10, $11, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $01, $01, $01
	spSustainLv	$08, $0F, $0F, $0F
	spDecayRt	$08, $09, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $08, $08, $0A
