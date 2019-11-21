MGZ1_Header:
	sHeaderInit						; Z80 offset is $EE51
	sHeaderPatch	MGZ1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $40
	sHeaderDAC	MGZ1_DAC
	sHeaderFM	MGZ1_FM1, $00, $0F
	sHeaderFM	MGZ1_FM2, $00, $10
	sHeaderFM	MGZ1_FM3, $00, $10
	sHeaderFM	MGZ1_FM4, $00, $10
	sHeaderFM	MGZ1_FM5, $00, $15
	sHeaderPSG	MGZ1_PSG1, $E8, $02, $00, v00
	sHeaderPSG	MGZ1_PSG2, $E8, $02, $00, v00
	sHeaderPSG	MGZ1_PSG3, $E8, $02, $00, v00

MGZ1_FM1:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter

MGZ1_Loop1:
	dc.b nCs2, $08, nCs3, $04, nB2, $08, nRst, $04
	dc.b nB2, $08, nRst, $04, nBb2, $08, nB2, $06
	dc.b nRst, $2E, nFs2, $08, nFs3, $04, nE3, $08
	dc.b nRst, $04, nE3, $08, nRst, $04, nEb3, $08
	dc.b nE3, $06, nRst, $16, nFs2, $18
	sLoop		$00, $0A, MGZ1_Loop1

MGZ1_Loop2:
	dc.b nB2, $08, nB3, $04, nB3, $08, nRst, $04
	dc.b nB2, $08, nRst, $04, nB3, $08, nB2, $06
	dc.b nRst, $2E, nB2, $08, nB3, $04, nB3, $08
	dc.b nRst, $04, nB2, $08, nRst, $04, nB3, $08
	dc.b nB2, $06, nRst, $16, nFs2, $18
	sLoop		$00, $03, MGZ1_Loop2
	dc.b nB2, $08, nB3, $04, nB3, $08, nRst, $04
	dc.b nB2, $08, nRst, $04, nB3, $08, nB2, $06
	dc.b nRst, $2E, nB2, $08, nB3, $04, nB3, $08
	dc.b nRst, $04, nB2, $08, nRst, $04, nB3, $08
	dc.b nB2, $06, nRst, $18, nC3, $16
	sJump		MGZ1_FM1
	dc.b $F2	; Unused

MGZ1_FM2:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $60, nRst, nRst, nRst, nRst, $0C, nCs4
	dc.b nCs4, $06, nRst, nB3, $08, nCs4, $06, nRst
	dc.b $2E, nRst, $0C, nFs4, nFs4, $04, nRst, $08
	dc.b nFs4, nE4, $0B, nRst, $05, nEb4, $0C, nCs4
	dc.b $06, nRst, nB3, nRst, nB3, $11, nRst, $03
	dc.b nCs4, $06, nRst, $0A, nCs4, $06, nRst, $36
	dc.b nRst, $60, nRst, $0C, nCs4, nCs4, $06, nRst
	dc.b nB3, $08, nCs4, $06, nRst, $2E, nRst, $08
	dc.b nFs4, $0C, nFs4, $04, nFs4, $06, nRst, nE4
	dc.b $08, nE4, $09, nRst, $07, nEb4, $06, nRst
	dc.b nCs4, $0C, nB3, $06, nRst, nCs4, $48, nRst
	dc.b $18, nRst, $60, nRst, $18, nCs5, $06, nRst
	dc.b $12, nB4, $06, nRst, $12, nBb4, $06, nRst
	dc.b $12, nAb4, $3C, nBb4, $1E, nAb4, $02, nFs4
	dc.b nF4, nE4, $60
	sPatFM		$06
	dc.b nRst, $38, nCs5, $04, nEb5, $08, nE5, $04
	dc.b nEb5, $08, nCs5, $06, nRst, nCs5, $04
	sPatFM		$00
	dc.b nRst, $18, nCs5, $06, nRst, $12, nB4, $06
	dc.b nRst, $12, nBb4, $06, nRst, $12, nAb4, $48
	dc.b nBb4, $18, nE4, $30, nEb4, $06, nRst, nE4
	dc.b $24, nCs4, $60
	sPatFM		$07
	dc.b nRst, $18, nB4, $06, nRst, $12, nEb5, $0C
	dc.b nE5, $06, nRst, $12, nEb5, $06, nRst, nRst
	dc.b $0C, nFs5, $06, nRst, $12, nB4, $3C, nB5
	dc.b $24, nFs5, $06, nG5, nG5, $0C, nFs5, nE5
	dc.b nFs5, $06, nRst, nRst, $0C, nEb5, $06, nRst
	dc.b $12, nB4, $3C, nRst, $18, nB4, $06, nRst
	dc.b $12, nEb5, $0C, nE5, $06, nRst, nEb5, $04
	dc.b nRst, nEb5, nE5, $0C, nFs5, nEb5, $06, nRst
	dc.b $12, nB4, $3C, nB5, $24, nFs5, $06, nG5
	dc.b nFs5, $0C, nE5, nEb5, nCs5, $06, nRst, nRst
	dc.b $0C, nEb5, $06, nRst, $12, nB4, $24, nRst
	dc.b $18
	sJump		MGZ1_FM2
	dc.b $F2	; Unused

MGZ1_FM3:
	sPatFM		$02
	ssModZ80	$0D, $01, $02, $06
	sPan		spLeft
	dc.b nRst, $08, nB4, $04
	sPatFM		$08
	dc.b nB2, $03, nRst, $05, nB2, $04
	sPatFM		$02
	dc.b nB4, nRst, $14, nB4, nB4, $04, nRst, $0C
	sPatFM		$08
	dc.b nB2, $03, nRst, $05, nB2, $04
	sPatFM		$03
	dc.b nRst, $42, nBb4, $02, nB4, nC5, nCs5, $18
	sPatFM		$02
	dc.b nRst, $08, nB4, $04
	sPatFM		$08
	dc.b nB2, $03, nRst, $05, nB2, $04
	sPatFM		$02
	dc.b nB4, nRst, $14, nB4, nB4, $04, nRst, $0C
	sPatFM		$08
	dc.b nB2, $03, nRst, $05, nB2, $04
	sPatFM		$04
	dc.b nAb4, $60

MGZ1_Loop3:
	sPatFM		$02
	dc.b nRst, $08, nB4, $04
	sPatFM		$08
	dc.b nB2, $03, nRst, $05, nB2, $04
	sPatFM		$02
	dc.b nB4, nRst, $14, nB4, nB4, $04, nRst, $0C
	sPatFM		$08
	dc.b nB2, $03, nRst, $05, nB2, $04
	sPatFM		$03
	dc.b nRst, $42, nBb4, $02, nB4, nC5, nCs5, $18
	sPatFM		$02
	dc.b nRst, $08, nB4, $04
	sPatFM		$08
	dc.b nB2, $03, nRst, $05, nB2, $04
	sPatFM		$02
	dc.b nB4, nRst, $14, nB4, nB4, $04, nRst, $0C
	sPatFM		$08
	dc.b nB2, $03, nRst, $05, nB2, $04
	sPatFM		$04
	dc.b nAb4, $3C
	sPatFM		$09
	dc.b nFs5, $24
	sLoop		$00, $04, MGZ1_Loop3

MGZ1_Loop4:
	sPatFM		$05
	dc.b nE4, $08, nE4, $04, nB3, $06, nRst, nE4
	dc.b nRst, nG4, $08, nE4, $06, nRst, nB3, $28
	dc.b nEb4, $08, nEb4, $04, nB3, $06, nRst, nEb4
	dc.b nRst, nFs4, $08, nEb4, $06, nRst, nRst, $28
	sLoop		$00, $03, MGZ1_Loop4
	dc.b nE4, $08, nE4, $04, nB3, $06, nRst, nE4
	dc.b nRst, nG4, $08, nE4, $06, nRst, nB3, $28
	dc.b nEb4, $08, nEb4, $04, nB3, $06, nRst, nEb4
	dc.b nRst, nFs4, $08, nEb4, $06, nRst, nRst, $10
	dc.b nE4, $18
	sJump		MGZ1_FM3
	dc.b $F2	; Unused

MGZ1_FM4:
	sPatFM		$02
	ssModZ80	$0D, $01, $02, $06
	sPan		spRight
	dc.b nRst, $08, nE5, $04
	sPatFM		$08
	dc.b nE3, $03, nRst, $05, nE3, $04
	sPatFM		$02
	dc.b nE5, nRst, $14, nE5, nE5, $04, nRst, $0C
	sPatFM		$08
	dc.b nE3, $03, nRst, $05, nE3, $04
	sPatFM		$03
	dc.b nRst, $42, nEb5, $02, nE5, nF5, nFs5, $18
	sPatFM		$02
	dc.b nRst, $08, nE5, $04
	sPatFM		$08
	dc.b nE3, $03, nRst, $05, nE3, $04
	sPatFM		$02
	dc.b nE5, nRst, $14, nE5, nE5, $04, nRst, $0C
	sPatFM		$08
	dc.b nE3, $03, nRst, $05, nE3, $04
	sPatFM		$04
	dc.b nCs5, $60

MGZ1_Loop5:
	sPatFM		$02
	dc.b nRst, $08, nE5, $04
	sPatFM		$08
	dc.b nE3, $03, nRst, $05, nE3, $04
	sPatFM		$02
	dc.b nE5, nRst, $14, nE5, nE5, $04, nRst, $0C
	sPatFM		$08
	dc.b nE3, $03, nRst, $05, nE3, $04
	sPatFM		$03
	dc.b nRst, $42, nEb5, $02, nE5, nF5, nFs5, $18
	sPatFM		$02
	dc.b nRst, $08, nE5, $04
	sPatFM		$08
	dc.b nE3, $03, nRst, $05, nE3, $04
	sPatFM		$02
	dc.b nE5, nRst, $14, nE5, nE5, $04, nRst, $0C
	sPatFM		$08
	dc.b nE3, $03, nRst, $05, nE3, $04
	sPatFM		$04
	dc.b nCs5, $3C
	sPatFM		$09
	dc.b nB4, $24
	sLoop		$00, $04, MGZ1_Loop5

MGZ1_Loop6:
	sPatFM		$05
	dc.b nG4, $08, nG4, $04, nE4, $06, nRst, nG4
	dc.b nRst, nB4, $08, nG4, $06, nRst, nE4, $28
	dc.b nFs4, $08, nFs4, $04, nEb4, $06, nRst, nFs4
	dc.b nRst, nB4, $08, nFs4, $06, nRst, nRst, $28
	sLoop		$00, $03, MGZ1_Loop6
	dc.b nG4, $08, nG4, $04, nE4, $06, nRst, nG4
	dc.b nRst, nB4, $08, nG4, $06, nRst, nE4, $28
	dc.b nFs4, $08, nFs4, $04, nEb4, $06, nRst, nFs4
	dc.b nRst, nB4, $08, nFs4, $06, nRst, nRst, $10
	dc.b nA4, $18
	sJump		MGZ1_FM4
	dc.b $F2	; Unused

MGZ1_FM5:
	dc.b nRst, $0B

MGZ1_Jump1:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $60, nRst, nRst, nRst, nRst, $0C, nCs4
	dc.b nCs4, $06, nRst, nB3, $08, nCs4, $06, nRst
	dc.b $2E, nRst, $0C, nFs4, nFs4, $04, nRst, $08
	dc.b nFs4, nE4, $0B, nRst, $05, nEb4, $0C, nCs4
	dc.b $06, nRst, nB3, nRst, nB3, $11, nRst, $03
	dc.b nCs4, $06, nRst, $0A, nCs4, $06, nRst, $36
	dc.b nRst, $60, nRst, $0C, nCs4, nCs4, $06, nRst
	dc.b nB3, $08, nCs4, $06, nRst, $2E, nRst, $08
	dc.b nFs4, $0C, nFs4, $04, nFs4, $06, nRst, nE4
	dc.b $08, nE4, $09, nRst, $07, nEb4, $06, nRst
	dc.b nCs4, $0C, nB3, $06, nRst, nCs4, $48, nRst
	dc.b $18, nRst, $60, nRst, $18, nCs5, $06, nRst
	dc.b $12, nB4, $06, nRst, $12, nBb4, $06, nRst
	dc.b $12, nAb4, $3C, nBb4, $1E, nAb4, $02, nFs4
	dc.b nF4, nE4, $60
	sPatFM		$06
	dc.b nRst, $38, nCs5, $04, nEb5, $08, nE5, $04
	dc.b nEb5, $08, nCs5, $06, nRst, nCs5, $04
	sPatFM		$00
	dc.b nRst, $18, nCs5, $06, nRst, $12, nB4, $06
	dc.b nRst, $12, nBb4, $06, nRst, $12, nAb4, $48
	dc.b nBb4, $18, nE4, $30, nEb4, $06, nRst, nE4
	dc.b $24, nCs4, $60
	sPatFM		$07
	dc.b nRst, $18, nB4, $06, nRst, $12, nEb5, $0C
	dc.b nE5, $06, nRst, $12, nEb5, $06, nRst, nRst
	dc.b $0C, nFs5, $06, nRst, $12, nB4, $3C, nB5
	dc.b $24, nFs5, $06, nG5, nG5, $0C, nFs5, nE5
	dc.b nFs5, $06, nRst, nRst, $0C, nEb5, $06, nRst
	dc.b $12, nB4, $3C, nRst, $18, nB4, $06, nRst
	dc.b $12, nEb5, $0C, nE5, $06, nRst, nEb5, $04
	dc.b nRst, nEb5, nE5, $0C, nFs5, nEb5, $06, nRst
	dc.b $12, nB4, $3C, nB5, $24, nFs5, $06, nG5
	dc.b nFs5, $0C, nE5, nEb5, nCs5, $06, nRst, nRst
	dc.b $0C, nEb5, $06, nRst, $12, nB4, $24, nRst
	dc.b $18
	sJump		MGZ1_Jump1
	dc.b $F2	; Unused

MGZ1_DAC:
	dc.b dKick, $0C, dKick, $08, dKick, $04, dSnare, $0C
	dc.b dKick, $08, dKick, $0C, dKick, $04, dKick, $08
	dc.b dKick, $04, dSnare, $18, dKick, $0C, dKick, $08
	dc.b dKick, $04, dSnare, $0C, dKick, $08, dKick, $10
	dc.b dKick, $08, dKick, $04, dSnare, $0C, dSnare, $08
	dc.b dSnare, $04, dKick, $0C, dKick, $08, dKick, $04
	dc.b dSnare, $0C, dKick, $08, dKick, $0C, dKick, $04
	dc.b dKick, $08, dKick, $04, dSnare, $18, dKick, $0C
	dc.b dKick, $08, dKick, $04, dSnare, $0C, dKick, $08
	dc.b dKick, $10, dKick, $04, dKick, dKick, dSnare, $0C
	dc.b dKick
	sLoop		$00, $07, MGZ1_DAC
	sJump		MGZ1_DAC
	dc.b $F2	; Unused

MGZ1_PSG1:
	sStop

MGZ1_PSG2:
	sStop
	dc.b $F2	; Unused

MGZ1_PSG3:
	sStop

MGZ1_Patches:

	; Patch $00
	; $38
	; $41, $31, $73, $41,	$1A, $15, $18, $18
	; $02, $0C, $05, $01,	$00, $0F, $00, $00
	; $1F, $3F, $5F, $1F,	$2D, $10, $23, $81
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$04, $07, $03, $04
	spMultiple	$01, $03, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1A, $18, $15, $18
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$02, $05, $0C, $01
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2D, $23, $10, $01

	; Patch $01
	; $3B
	; $4C, $41, $40, $40,	$18, $1F, $1F, $1F
	; $13, $10, $09, $09,	$00, $00, $00, $00
	; $EF, $EF, $EF, $EF,	$12, $1B, $0D, $81
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$04, $04, $04, $04
	spMultiple	$0C, $00, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$18, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$13, $09, $10, $09
	spSustainLv	$0E, $0E, $0E, $0E
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$12, $0D, $1B, $01

	; Patch $02
	; $3B
	; $71, $17, $13, $71,	$11, $10, $14, $1A
	; $0C, $09, $0A, $02,	$00, $06, $04, $07
	; $1F, $EF, $FF, $EF,	$18, $1E, $1A, $85
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$07, $01, $01, $07
	spMultiple	$01, $03, $07, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$11, $14, $10, $1A
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0A, $09, $02
	spSustainLv	$01, $0F, $0E, $0E
	spDecayRt	$00, $04, $06, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $1A, $1E, $05

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

	; Patch $04
	; $1B
	; $43, $50, $21, $41,	$08, $07, $06, $0E
	; $10, $00, $06, $05,	$05, $01, $05, $01
	; $CF, $0F, $DF, $CF,	$25, $16, $2D, $81
	spAlgorithm	$03
	spFeedback	$03
	spDetune	$04, $02, $05, $04
	spMultiple	$03, $01, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$08, $06, $07, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $06, $00, $05
	spSustainLv	$0C, $0D, $00, $0C
	spDecayRt	$05, $05, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$25, $2D, $16, $01

	; Patch $05
	; $34
	; $31, $30, $71, $31,	$16, $1B, $13, $1F
	; $13, $06, $08, $08,	$08, $0B, $0C, $0D
	; $9F, $8F, $9F, $8F,	$0F, $8C, $12, $83
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$03, $07, $03, $03
	spMultiple	$01, $01, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$16, $13, $1B, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$13, $08, $06, $08
	spSustainLv	$09, $09, $08, $08
	spDecayRt	$08, $0C, $0B, $0D
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0F, $12, $0C, $03

	; Patch $06
	; $07
	; $11, $74, $71, $71,	$9F, $9F, $1F, $1F
	; $0C, $0C, $0C, $0C,	$0E, $0E, $03, $02
	; $04, $04, $D8, $D8,	$81, $81, $81, $81
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$01, $07, $07, $07
	spMultiple	$01, $01, $04, $01
	spRateScale	$02, $00, $02, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0C, $0C, $0C
	spSustainLv	$00, $0D, $00, $0D
	spDecayRt	$0E, $03, $0E, $02
	spReleaseRt	$04, $08, $04, $08
	spTotalLv	$01, $01, $01, $01

	; Patch $07
	; $2C
	; $21, $11, $42, $51,	$16, $12, $10, $1E
	; $08, $11, $06, $09,	$00, $00, $00, $00
	; $5F, $5F, $5F, $5F,	$11, $81, $13, $88
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$02, $04, $01, $05
	spMultiple	$01, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$16, $10, $12, $1E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $06, $11, $09
	spSustainLv	$05, $05, $05, $05
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$11, $13, $01, $08

	; Patch $08
	; $2B
	; $05, $27, $64, $42,	$17, $1F, $1F, $1F
	; $18, $0A, $0B, $09,	$05, $08, $08, $00
	; $FF, $FF, $FF, $FF,	$0F, $17, $1B, $81
	spAlgorithm	$03
	spFeedback	$05
	spDetune	$00, $06, $02, $04
	spMultiple	$05, $04, $07, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$18, $0B, $0A, $09
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$05, $08, $08, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0F, $1B, $17, $01

	; Patch $09
	; $38
	; $4F, $47, $40, $40,	$1C, $0F, $10, $11
	; $12, $09, $05, $07,	$0D, $13, $01, $01
	; $2F, $FF, $1F, $1F,	$1B, $13, $17, $81
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$04, $04, $04, $04
	spMultiple	$0F, $00, $07, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1C, $10, $0F, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $05, $09, $07
	spSustainLv	$02, $01, $0F, $01
	spDecayRt	$0D, $01, $13, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $17, $13, $01
