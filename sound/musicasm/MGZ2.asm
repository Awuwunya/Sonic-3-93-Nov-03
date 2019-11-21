MGZ2_Header:
	sHeaderInit						; Z80 offset is $F468
	sHeaderPatch	MGZ2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $3D
	sHeaderDAC	MGZ2_DAC
	sHeaderFM	MGZ2_FM1, $00, $0C
	sHeaderFM	MGZ2_FM2, $00, $0F
	sHeaderFM	MGZ2_FM3, $00, $10
	sHeaderFM	MGZ2_FM4, $00, $10
	sHeaderFM	MGZ2_FM5, $00, $20
	sHeaderPSG	MGZ2_PSG1, $E8, $02, $00, v00
	sHeaderPSG	MGZ2_PSG2, $E8, $02, $00, v00
	sHeaderPSG	MGZ2_PSG3, $E8, $02, $00, v00

MGZ2_FM1:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter

MGZ2_Loop1:
	dc.b nCs1, $08, nCs2, $04, nB1, $08, nRst, $04
	dc.b nB1, $08, nRst, $04, nBb1, $08, nB1, $10
	dc.b nBb1, $06, nRst, nAb1, nRst, nFs1, nRst, nFs1
	dc.b $08, nFs2, $04, nE2, $0C, nE2, $06, nRst
	dc.b $02, nEb2, $06, nRst, $06, nE2, $04, nRst
	dc.b $30
	sLoop		$00, $0A, MGZ2_Loop1

MGZ2_Loop2:
	dc.b nB1, $18, nEb2, $14, nE2, $10, nFs2, $06
	dc.b nRst, nA2, nRst, nB2, nRst, nB1, $08, nB1
	dc.b $04, nB1, $0C, nFs1, $02, nRst, $06, nFs1
	dc.b $0C, nG1, $10, nG1, $0C, nA1, nBb1
	sLoop		$00, $03, MGZ2_Loop2
	dc.b nB1, $18, nD2, $14, nE2, $10, nF2, $06
	dc.b nRst, nA2, nRst, nB2, nRst, nB1, $08, nB1
	dc.b $04, nB1, $0C, nFs1, $02, nRst, $06, nA1
	dc.b $0C, nB1, $06, nRst, $16, nC2, $18
	sJump		MGZ2_FM1
	dc.b $F2	; Unused

MGZ2_FM2:
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
	dc.b nF4, nE4, $60, nRst, $38
	sPatFM		$05
	dc.b nCs5, $04, nEb5, $08, nE5, $04, nEb5, $08
	dc.b nCs5, $06, nRst, nCs5, $04
	sPatFM		$00
	dc.b nRst, $18, nCs5, $06, nRst, $12, nB4, $06
	dc.b nRst, $12, nBb4, $06, nRst, $12, nAb4, $48
	dc.b nBb4, $18, nE4, $30, nEb4, $06, nRst, nE4
	dc.b $24, nCs4, $60
	sPatFM		$04
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
	sJump		MGZ2_FM2
	dc.b $F2	; Unused

MGZ2_FM3:
	sPatFM		$02
	ssModZ80	$0D, $01, $02, $06
	dc.b nRst, $18, nB3, $14, nB3, $06, nRst, $2E
	dc.b nRst, $18, nCs4, $14, nCs4, $06, nRst, nB3
	dc.b $23, nRst, $05, nB3, $48, nRst, $18, nAb3
	dc.b $48, nRst, $18
	sLoop		$00, $05, MGZ2_FM3
	sPatFM		$03
	dc.b nE3, $60, nEb3, $48, nEb3, $18, nE3, $60
	dc.b nEb3, nE3, nEb3, $48, nEb3, $18, nD3, $60
	dc.b nEb3, $48, nRst, $18
	sJump		MGZ2_FM3
	dc.b $F2	; Unused

MGZ2_FM4:
	sPatFM		$02
	ssModZ80	$0D, $01, $02, $06
	dc.b nRst, $18, nE4, $14, nE4, $06, nRst, $2E
	dc.b nRst, $18, nFs4, $14, nFs4, $06, nRst, nE4
	dc.b $28, nE4, $48, nRst, $18, nCs4, $48, nRst
	dc.b $18
	sLoop		$00, $05, MGZ2_FM4
	sPatFM		$03
	dc.b nG3, $60, nFs3, $48, nFs3, $18, nG3, $60
	dc.b nFs3, nG3, nFs3, $48, nFs3, $18, nF3, $60
	dc.b nFs3, $48, nRst, $18
	sJump		MGZ2_FM4
	dc.b $F2	; Unused

MGZ2_FM5:
	dc.b nRst, $14

MGZ2_Jump1:
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
	dc.b nF4, nE4, $60, nRst, $38
	sPatFM		$05
	dc.b nCs5, $04, nEb5, $08, nE5, $04, nEb5, $08
	dc.b nCs5, $06, nRst, nCs5, $04
	sPatFM		$00
	dc.b nRst, $18, nCs5, $06, nRst, $12, nB4, $06
	dc.b nRst, $12, nBb4, $06, nRst, $12, nAb4, $48
	dc.b nBb4, $18, nE4, $30, nEb4, $06, nRst, nE4
	dc.b $24, nCs4, $60
	sPatFM		$04
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
	sJump		MGZ2_Jump1
	dc.b $F2	; Unused

MGZ2_DAC:
	dc.b dKick, $18, dSnare, $14, dKick, $10, dKick, $0C
	dc.b dSnare, dKick, dKick, $18, dSnare, $08, dKick, $0C
	dc.b dKick, $1C, dSnare, $18
	sLoop		$00, $09, MGZ2_DAC
	dc.b dKick, $18, dSnare, $14, dKick, $10, dKick, $0C
	dc.b dSnare, dKick, dKick, $18, dSnare, $08, dKick, $0C
	dc.b dKick, $10, dSnare, $0C, dSnare, $08, dSnare, $04
	dc.b dSnare, $0C

MGZ2_Loop3:
	dc.b dKick, $18, dSnare, $14, dKick, $10, dKick, $0C
	dc.b dSnare, dKick, dKick, $18, dSnare, $08, dKick, $0C
	dc.b dKick, $10, dSnare, $0C, dSnare, dSnare
	sLoop		$00, $04, MGZ2_Loop3
	sJump		MGZ2_DAC
	dc.b $F2	; Unused

MGZ2_PSG1:
	sStop

MGZ2_PSG2:
	sStop
	dc.b $F2	; Unused

MGZ2_PSG3:
	sStop

MGZ2_Patches:

	; Patch $00
	; $10
	; $46, $13, $76, $41,	$19, $55, $50, $11
	; $02, $06, $05, $01,	$00, $0F, $00, $00
	; $18, $38, $58, $18,	$2D, $1F, $1B, $81
	spAlgorithm	$00
	spFeedback	$02
	spDetune	$04, $07, $01, $04
	spMultiple	$06, $06, $03, $01
	spRateScale	$00, $01, $01, $00
	spAttackRt	$19, $10, $15, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$02, $05, $06, $01
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$2D, $1B, $1F, $01

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
	; $FF, $FF, $FF, $FF,	$07, $1F, $25, $8A
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
	spTotalLv	$07, $25, $1F, $0A

	; Patch $03
	; $3D
	; $41, $01, $21, $71,	$0D, $12, $52, $D2
	; $01, $01, $01, $01,	$08, $00, $09, $00
	; $89, $F8, $F9, $F8,	$1D, $8B, $8B, $8B
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
	spTotalLv	$1D, $0B, $0B, $0B

	; Patch $04
	; $03
	; $61, $51, $23, $41,	$10, $10, $0F, $15
	; $1C, $01, $06, $05,	$05, $01, $05, $01
	; $C9, $0C, $D9, $C9,	$18, $17, $17, $81
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
	spTotalLv	$18, $17, $17, $01

	; Patch $05
	; $3D
	; $7B, $57, $14, $31,	$9E, $DE, $1F, $1F
	; $0C, $01, $0D, $0B,	$0C, $13, $0C, $0B
	; $FF, $EF, $DF, $8F,	$30, $8C, $8F, $81
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$07, $01, $05, $03
	spMultiple	$0B, $04, $07, $01
	spRateScale	$02, $00, $03, $00
	spAttackRt	$1E, $1F, $1E, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0D, $01, $0B
	spSustainLv	$0F, $0D, $0E, $08
	spDecayRt	$0C, $0C, $13, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$30, $0F, $0C, $01
