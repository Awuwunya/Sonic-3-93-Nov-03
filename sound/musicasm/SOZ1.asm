SOZ1_Header:
	sHeaderInit						; Z80 offset is $B005
	sHeaderPatch	SOZ1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $12
	sHeaderDAC	SOZ1_DAC
	sHeaderFM	SOZ1_FM1, $00, $0E
	sHeaderFM	SOZ1_FM2, $00, $0D
	sHeaderFM	SOZ1_FM3, $00, $0F
	sHeaderFM	SOZ1_FM4, $00, $0F
	sHeaderFM	SOZ1_FM5, $00, $17
	sHeaderPSG	SOZ1_PSG1, $E8, $05, $00, v00
	sHeaderPSG	SOZ1_PSG2, $E8, $02, $00, v00
	sHeaderPSG	SOZ1_PSG3, $E8, $02, $00, v00

SOZ1_FM1:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $24, nE4, $06, nF4, nAb4, $0C, nA4
	dc.b $0A, nRst, $0E, nB4, $08, nRst, $04, nRst
	dc.b $0C, nA4, nAb4, nF4, nE4, nF4, nAb4, nA4
	dc.b nB4, $06, nRst, nA4, nRst, $12, nB4, $18
	dc.b nA4, $0C, nB4, nC5, nD5, nB4, nC5, nD5
	dc.b nE5, nD5, nC5, nB4

SOZ1_Jump1:
	sPatFM		$03
	dc.b nA5, $30, nE5, nF5, $48, nAb5, $0C, nB5
	dc.b nA5, $30, nC6, nB5, nAb5, nA5, nE5, nF5
	dc.b $48, nAb5, $0C, nB5, nA5, $30, nC6, nB5
	dc.b nE6
	sPatFM		$00
	dc.b nRst, $0C, nD4, nD4, nC4, nC4, nB3, nB3
	dc.b nA3, nAb3, $18, nA3, $08, nRst, $04, nB3
	dc.b $08, nRst, $34, nRst, $0C, nAb4, $08, nRst
	dc.b $04, nA4, $08, nRst, $04, nB4, $08, nRst
	dc.b $04, nC5, $08, nRst, $04, nB4, $08, nRst
	dc.b $04, nA4, $08, nRst, $04, nB4, $08, nRst
	dc.b $04, nD5, $08, nRst, $04, nC5, $08, nRst
	dc.b $04, nB4, $08, nRst, $04, nA4, $08, nRst
	dc.b $04, nAb4, $08, nRst, $04, nF4, $08, nRst
	dc.b $04, nE4, $08, nRst, $04, nD4, $08, nRst
	dc.b $04, nE5, $08, nRst, $10, nD5, $08, nRst
	dc.b $40, nC5, $08, nRst, $10, nB4, $08, nRst
	dc.b $40, nE5, $08, nRst, $10, nD5, $08, nRst
	dc.b $40, nAb5, $08, nRst, $10, nF5, $08, nRst
	dc.b $10, nB5, $08, nRst, $04, nD6, $08, nRst
	dc.b $04
	sPatFM		$04
	dc.b nA4, $0C, nB4, nC5, $0B, nRst, $0D, nC5
	dc.b $18, nB4, $0B, nRst, $0D, nB4, $18, nAb4
	dc.b nA4, $0C, nB4, nRst, $30, nRst, $0C, nC5
	dc.b $0B, nRst, $19, nB4, $0B, nRst, $0D, nA4
	dc.b $0B, nRst, $0D, nAb4, $18, nA4, $0C, nE4
	dc.b $0A, nRst, $1A, nA4, $0C, nB4, nC5, $0B
	dc.b nRst, $0D, nC5, $18, nB4, $0B, nRst, $0D
	dc.b nB4, $18, nAb4, nA4, $0C, nB4, nRst, $30
	dc.b nRst, $0C, nC5, $0B, nRst, $19, nB4, $0B
	dc.b nRst, $0D, nC5, $0B, nRst, $0D, nD5, $0C
	dc.b nC5, $06, nRst, nD5, $07, nRst, $05, nE5
	dc.b $0C, nD5, $06, nRst, nE5, $07, nRst, $05
	dc.b nF5, $0C, nE5, $07, nRst, $05
	sJump		SOZ1_Jump1
	dc.b $F2	; Unused

SOZ1_FM2:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nA1, $06, nRst, nA1, nRst, nC2, $0C, nA1
	dc.b $06, nRst, $12, nAb1, $08, nRst, $10, nB1
	dc.b $06, nRst, nA1, nRst, nA1, nRst, nC2, $0C
	dc.b nA1, $06, nRst, $12, nD2, $08, nRst, $10
	dc.b nB1, $06, nRst, nA1, nRst, nA1, nRst, nC2
	dc.b $0C, nA1, $06, nRst, $12, nAb1, $08, nRst
	dc.b $10, nB1, $06, nRst, nA1, nRst, nA1, nRst
	dc.b nC2, $0C, nA1, $06, nRst, nD2, $0C, nB1
	dc.b nAb1, nB1

SOZ1_Loop1:
	dc.b nA1, $06, nRst, nA1, nRst, nC2, $0C, nA1
	dc.b $06, nRst, $12, nD2, $08, nRst, $10, nC2
	dc.b $06, nRst, nAb1, nRst, nAb1, nRst, nC2, $0C
	dc.b nAb1, $06, nRst, $12, nD2, $08, nRst, $10
	dc.b nC2, $06, nRst
	sLoop		$00, $04, SOZ1_Loop1

SOZ1_Loop2:
	dc.b nE1, $0C, nRst, $24, nE1, $0C, nE1, $0A
	dc.b nRst, $1A
	sLoop		$00, $07, SOZ1_Loop2
	dc.b nE1, $0C, nRst, $24, nE1, $0C, nE1, $0A
	dc.b nRst, $0E, nB1, $0C

SOZ1_Loop3:
	dc.b nA1, $0C, nA1, nC2, $0A, nRst, $0E, nA1
	dc.b $0C, nA1, nD2, $0A, nRst, $0E, nAb1, $0C
	dc.b nAb1, nE2, $0A, nRst, $0E, nE2, $0C, nD2
	dc.b nC2, nB1
	sLoop		$00, $04, SOZ1_Loop3
	sJump		SOZ1_Loop1
	dc.b $F2	; Unused

SOZ1_FM3:
	sPatFM		$02
	ssModZ80	$0D, $01, $02, $06
	sPan		spLeft
	dc.b nRst, $60, nRst, nB4, $06, nRst, nA4, nRst
	dc.b $42, nC5, $06, nRst, nD5, nRst, nB4, nRst
	dc.b $1E, nE5, $06, nRst, nD5, nRst, $1E

SOZ1_Jump2:
	sPatFM		$06
	dc.b nA4, $60, nAb4, $30, nD5, nC5, $60, nB4
	dc.b $30, nAb4, nA4, $60, nAb4, $30, nD5, nC5
	dc.b $60, nB4, $30, nAb4
	sPatFM		$05
	dc.b nRst, $0C, nD6, $08, nRst, $04, nAb6, $0A
	dc.b nRst, $0E, nAb6, $0C, nF6, $0A, nRst, $0E
	dc.b nD6, $08, nRst, $04, nRst, $0C, nB5, $08
	dc.b nRst, $10, nAb5, $08, nRst, $28, nB5, $06
	dc.b nC6, nB5, $08, nRst, $1C, nAb5, $08, nRst
	dc.b $1C, nF5, $08, nRst, $10, nRst, $0C, nE5
	dc.b $08, nRst, $1C, nE5, $08, nRst, $28, nRst
	dc.b $0C, nE5, nF5, nAb5, $08, nRst, $04, nAb5
	dc.b nA5, nAb5, $10, nF5, $0C, nE5, $08, nRst
	dc.b $04, nRst, $0C, nE5, nD5, nC5, nB4, $04
	dc.b nC5, nB4, $10, nAb4, $0C, nE4, nRst, nE5
	dc.b nF5, nAb5, $08, nRst, $04, nAb5, nA5, nAb5
	dc.b $10, nF5, $0C, nE5, $08, nRst, $04, nA5
	dc.b nB5, nA5, $10, nAb5, $0C, nA5, nB5, nD6
	dc.b nRst, $18
	sPatFM		$07
	dc.b nRst, $60, nRst, $3C, nD5, $08, nRst, $04
	dc.b nC5, $08, nRst, $04, nB4, $08, nRst, $04
	dc.b nRst, $60, nRst, $24, nB4, $04, nC5, nB4
	dc.b $34, nRst, $60, nRst, $3C, nD5, $08, nRst
	dc.b $04, nC5, $08, nRst, $04, nB4, $08, nRst
	dc.b $04, nRst, $60, nB4, $08, nRst, $10, nA4
	dc.b $08, nRst, $10, nAb4, $08, nRst, $10, nE4
	dc.b $08, nRst, $10
	sJump		SOZ1_Jump2
	dc.b $F2	; Unused

SOZ1_FM4:
	sPatFM		$02
	ssModZ80	$0D, $01, $02, $06
	sPan		spRight
	dc.b nRst, $60, nRst, nE4, $06, nRst, nE4, nRst
	dc.b $42, nE4, $06, nRst, nE4, nRst, nE4, nRst
	dc.b $1E, nAb4, $06, nRst, nAb4, nRst, $1E

SOZ1_Loop4:
	dc.b nRst, $60, nRst
	sPatFM		$07
	dc.b nRst, $18, nE5, nC5, nD5, nB4, nC5, nAb4
	dc.b nB4
	sLoop		$00, $02, SOZ1_Loop4
	dc.b nRst, $60, nRst, nRst, nRst
	sPatFM		$00
	dc.b nC5, $08, nRst, $10, nB4, $08, nRst, $40
	dc.b nA4, $08, nRst, $10, nAb4, $08, nRst, $40
	dc.b nC5, $08, nRst, $10, nB4, $08, nRst, $40
	dc.b nF5, $08, nRst, $10, nD5, $08, nRst, $10
	dc.b nAb5, $08, nRst, $04, nB5, $08, nRst, $10
	dc.b nB5, $08, nRst, $04
	sPatFM		$06
	dc.b nA4, $60, nB4, nC5, nB4, nA4, nB4, nC5
	dc.b nE5, $30, nAb5
	sJump		SOZ1_Loop4
	dc.b $F2	; Unused

SOZ1_FM5:
	dc.b nRst, $10
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $24, nE4, $06, nF4, nAb4, $0C, nA4
	dc.b $0A, nRst, $0E, nB4, $08, nRst, $04, nRst
	dc.b $0C, nA4, nAb4, nF4, nE4, nF4, nAb4, nA4
	dc.b nB4, $06, nRst, nA4, nRst, $12, nB4, $18
	dc.b nA4, $0C, nB4, nC5, nD5, nB4, nC5, nD5
	dc.b nE5, nD5, nC5, nB4

SOZ1_Jump3:
	sPatFM		$03
	dc.b nA5, $30, nE5, nF5, $48, nAb5, $0C, nB5
	dc.b nA5, $30, nC6, nB5, nAb5, nA5, nE5, nF5
	dc.b $48, nAb5, $0C, nB5, nA5, $30, nC6, nB5
	dc.b nE6
	sPatFM		$00
	dc.b nRst, $0C, nD4, nD4, nC4, nC4, nB3, nB3
	dc.b nA3, nAb3, $18, nA3, $08, nRst, $04, nB3
	dc.b $08, nRst, $34, nRst, $0C, nAb4, $08, nRst
	dc.b $04, nA4, $08, nRst, $04, nB4, $08, nRst
	dc.b $04, nC5, $08, nRst, $04, nB4, $08, nRst
	dc.b $04, nA4, $08, nRst, $04, nB4, $08, nRst
	dc.b $04, nD5, $08, nRst, $04, nC5, $08, nRst
	dc.b $04, nB4, $08, nRst, $04, nA4, $08, nRst
	dc.b $04, nAb4, $08, nRst, $04, nF4, $08, nRst
	dc.b $04, nE4, $08, nRst, $04, nD4, $08, nRst
	dc.b $04, nE5, $08, nRst, $10, nD5, $08, nRst
	dc.b $40, nC5, $08, nRst, $10, nB4, $08, nRst
	dc.b $40, nE5, $08, nRst, $10, nD5, $08, nRst
	dc.b $40, nAb5, $08, nRst, $10, nF5, $08, nRst
	dc.b $10, nB5, $08, nRst, $04, nD6, $08, nRst
	dc.b $04
	sPatFM		$04
	dc.b nA4, $0C, nB4, nC5, $0B, nRst, $0D, nC5
	dc.b $18, nB4, $0B, nRst, $0D, nB4, $18, nAb4
	dc.b nA4, $0C, nB4, nRst, $30, nRst, $0C, nC5
	dc.b $0B, nRst, $19, nB4, $0B, nRst, $0D, nA4
	dc.b $0B, nRst, $0D, nAb4, $18, nA4, $0C, nE4
	dc.b $0A, nRst, $1A, nA4, $0C, nB4, nC5, $0B
	dc.b nRst, $0D, nC5, $18, nB4, $0B, nRst, $0D
	dc.b nB4, $18, nAb4, nA4, $0C, nB4, nRst, $30
	dc.b nRst, $0C, nC5, $0B, nRst, $19, nB4, $0B
	dc.b nRst, $0D, nC5, $0B, nRst, $0D, nD5, $0C
	dc.b nC5, $06, nRst, nD5, $07, nRst, $05, nE5
	dc.b $0C, nD5, $06, nRst, nE5, $07, nRst, $05
	dc.b nF5, $0C, nE5, $07, nRst, $05
	sJump		SOZ1_Jump3
	dc.b $F2	; Unused

SOZ1_DAC:
	dc.b dKick, $0C, dKick, dKick, dSnare, $30, dKick, $0C
	sLoop		$00, $03, SOZ1_DAC
	dc.b dKick, $0C, dKick, dSnare, dKick, dSnare, dSnare, $06
	dc.b dSnare, dSnare, dSnare, dSnare, dSnare

SOZ1_Loop5:
	dc.b dKick, $0C, dKick, dSnare, dKick, $18, dKick, $0C
	dc.b dSnare, dKick
	sLoop		$00, $03, SOZ1_Loop5
	dc.b dKick, $0C, dKick, dSnare, dKick, $18, dKick, $0C
	dc.b dSnare, dSnare

SOZ1_Loop6:
	dc.b dKick, $0C, dKick, dSnare, dKick, $18, dKick, $0C
	dc.b dSnare, dKick
	sLoop		$00, $03, SOZ1_Loop6
	dc.b dKick, $0C, dKick, dSnare, dKick, dKick, dSnare, dSnare
	dc.b dSnare

SOZ1_Loop7:
	dc.b dKick, $18, dSnare, $0C, dKick, dKick, dKick, dSnare
	dc.b $18
	sLoop		$00, $03, SOZ1_Loop7
	dc.b dKick, $18, dSnare, $0C, dKick, dKick, dKick, dSnare
	dc.b dSnare, $06, dSnare

SOZ1_Loop8:
	dc.b dKick, $18, dSnare, $0C, dKick, dKick, dKick, dSnare
	dc.b $18
	sLoop		$00, $03, SOZ1_Loop8
	dc.b dKick, $18, dSnare, $0C, dKick, dKick, dSnare, $06
	dc.b dSnare, dSnare, dSnare, dSnare, dSnare, dKick, $18, dSnare
	dc.b dKick, $0C, dKick, dSnare, $18, dKick, dSnare, dKick
	dc.b $0C, dKick, dSnare, dKick, dKick, $18, dSnare, dKick
	dc.b $0C, dKick, dSnare, $18, dKick, dSnare, dKick, $0C
	dc.b dKick, dSnare, dSnare, dKick, $18, dSnare, dKick, $0C
	dc.b dKick, dSnare, $18, dKick, dSnare, dKick, $0C, dKick
	dc.b dSnare, dKick, dKick, $18, dSnare, dKick, $0C, dKick
	dc.b dSnare, $18, dKick, dSnare, dKick, $0C, dSnare, $06
	dc.b dSnare, dSnare, dSnare, dSnare, dSnare
	sJump		SOZ1_Loop5
	dc.b $F2	; Unused

SOZ1_PSG1:
	ssModZ80	$0D, $01, $02, $06
	dc.b nRst, $60, nRst, nRst, nRst

SOZ1_Jump4:
	dc.b nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nC5, nD5, nE5, nD5, nC5, nD5, nE5
	dc.b nAb5, $30, nB5
	sJump		SOZ1_Jump4
	dc.b $F2	; Unused

SOZ1_PSG2:
	sStop
	dc.b $F2	; Unused

SOZ1_PSG3:
	sStop

SOZ1_Patches:

	; Patch $00
	; $10
	; $57, $4B, $76, $41,	$19, $12, $5F, $1F
	; $02, $06, $05, $01,	$00, $0F, $00, $00
	; $18, $38, $58, $18,	$26, $1F, $1C, $87
	spAlgorithm	$00
	spFeedback	$02
	spDetune	$05, $07, $04, $04
	spMultiple	$07, $06, $0B, $01
	spRateScale	$00, $01, $00, $00
	spAttackRt	$19, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$02, $05, $06, $01
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$26, $1C, $1F, $07

	; Patch $01
	; $38
	; $75, $13, $71, $11,	$DF, $5F, $1F, $1F
	; $0C, $0D, $01, $01,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$1E, $1E, $1E, $81
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$07, $07, $01, $01
	spMultiple	$05, $01, $03, $01
	spRateScale	$03, $00, $01, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $01, $0D, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $1E, $1E, $01

	; Patch $02
	; $02
	; $71, $52, $41, $11,	$17, $16, $15, $17
	; $0A, $03, $05, $03,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$07, $1F, $25, $85
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
	spTotalLv	$07, $25, $1F, $05

	; Patch $03
	; $3D
	; $41, $01, $21, $71,	$0D, $12, $52, $D2
	; $01, $01, $01, $01,	$08, $00, $09, $00
	; $89, $F8, $F9, $F8,	$1D, $89, $89, $89
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
	spTotalLv	$1D, $09, $09, $09

	; Patch $04
	; $03
	; $61, $51, $23, $41,	$10, $10, $0F, $15
	; $1C, $01, $06, $05,	$05, $01, $05, $01
	; $C9, $0C, $D9, $C9,	$18, $17, $17, $88
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
	spTotalLv	$18, $17, $17, $08

	; Patch $05
	; $02
	; $74, $50, $13, $31,	$95, $D5, $15, $16
	; $06, $01, $01, $03,	$0C, $13, $0C, $0B
	; $FF, $EF, $DF, $8F,	$3D, $1D, $22, $81
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$07, $01, $05, $03
	spMultiple	$04, $03, $00, $01
	spRateScale	$02, $00, $03, $00
	spAttackRt	$15, $15, $15, $16
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $01, $01, $03
	spSustainLv	$0F, $0D, $0E, $08
	spDecayRt	$0C, $0C, $13, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$3D, $22, $1D, $01

	; Patch $06
	; $38
	; $70, $20, $41, $40,	$0B, $11, $0F, $10
	; $02, $03, $02, $02,	$00, $06, $04, $07
	; $1F, $EC, $FF, $E8,	$2C, $11, $1A, $85
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$07, $04, $02, $04
	spMultiple	$00, $01, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0B, $0F, $11, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$02, $02, $03, $02
	spSustainLv	$01, $0F, $0E, $0E
	spDecayRt	$00, $04, $06, $07
	spReleaseRt	$0F, $0F, $0C, $08
	spTotalLv	$2C, $1A, $11, $05

	; Patch $07
	; $24
	; $44, $72, $17, $63,	$1D, $1D, $1D, $1E
	; $0A, $08, $11, $0B,	$00, $00, $00, $00
	; $57, $58, $57, $58,	$14, $89, $30, $87
	spAlgorithm	$04
	spFeedback	$04
	spDetune	$04, $01, $07, $06
	spMultiple	$04, $07, $02, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1D, $1D, $1D, $1E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $11, $08, $0B
	spSustainLv	$05, $05, $05, $05
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$07, $07, $08, $08
	spTotalLv	$14, $30, $09, $07
