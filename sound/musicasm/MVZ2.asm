MVZ2_Header:
	sHeaderInit						; Z80 offset is $AA9C
	sHeaderPatch	MVZ2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $30
	sHeaderDAC	MVZ2_DAC
	sHeaderFM	MVZ2_FM1, $00, $10
	sHeaderFM	MVZ2_FM2, $00, $0E
	sHeaderFM	MVZ2_FM3, $00, $10
	sHeaderFM	MVZ2_FM4, $00, $10
	sHeaderFM	MVZ2_FM5, $00, $19
	sHeaderPSG	MVZ2_PSG1, $E8, $02, $00, v00
	sHeaderPSG	MVZ2_PSG2, $E8, $02, $00, v00
	sHeaderPSG	MVZ2_PSG3, $E8, $02, $00, v00

MVZ2_FM1:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $60, nRst, nRst
	sPatFM		$00
	dc.b nB5, $04, nBb5, nG5, nA5, nFs5, nAb5, nF5
	dc.b nG5, nE5, nFs5, nEb5, nF5, nD5, nE5, nCs5
	dc.b nEb5, nC5, nD5, nB4, nCs5, nBb4, nC5, nA4
	dc.b nB4

MVZ2_Loop1:
	sPatFM		$02
	dc.b nB4, $01, nC5, $3B, nD5, $06, nRst, nF5
	dc.b nRst, nG5, nRst, nE5, $01, nF5, $06, nRst
	dc.b $05, nCs5, $06, nRst, nC5, nBb4, nRst, nG4
	dc.b $36, nRst, $0C, nBb4, $18, nC5, $06, nBb4
	dc.b $05, nC5, $01, nCs5, $06, nRst, nC5, nRst
	dc.b nEb5, nD5, nRst, nBb4, nRst, $60
	sLoop		$00, $02, MVZ2_Loop1
	dc.b nRst, $0C, nBb4, $18, nC5, $06, nBb4, nCs5
	dc.b nRst, nC5, nRst, nBb4, nC5, nRst, nBb4, nRst
	dc.b $60, nRst, $0C, nBb4, $18, nC5, $06, nBb4
	dc.b $05, nCs5, $01, nD5, nEb5, $06, nRst, $05
	dc.b nD5, $06, nRst, nC5, nD5, nRst, nBb4, nRst
	dc.b $60, nD5, $01, nEb5, $3B, nF5, $06, nRst
	dc.b $05, nF5, $02, nG5, $06, nRst, $05, nEb5
	dc.b $06, nRst, nF5, $12, nRst, $06, nCs5, $12
	dc.b nBb4, $36, nRst, $0B, nA4, $01, nBb4, $18
	dc.b nC5, $06, nBb4, $05, nB4, $01, nC5, nCs5
	dc.b $06, nRst, $05, nC5, $06, nRst, nBb4, nC5
	dc.b nRst, nBb4, nRst, $60
	sJump		MVZ2_FM1
	dc.b $F2	; Unused

MVZ2_FM2:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter

MVZ2_Loop2:
	dc.b nG2, $06, nA2, nD3, nF3, nRst, nE3, nRst
	dc.b nD3, nRst, nC3, nRst, nC3, nD3, nD3, $01
	dc.b nRst, $05, nE3, $0C, nC3, $06, nBb2, nRst
	dc.b nBb2, nBb2, $02, nRst, $04, nBb2, $02, nRst
	dc.b $04, nC3, $06, nBb2, nRst, nBb2, nRst, nBb2
	dc.b $02, nRst, $04, nC3, $0C, nBb2
	sLoop		$00, $06, MVZ2_Loop2

MVZ2_Loop3:
	dc.b nFs2, $06, nFs3, nFs2, nRst, nFs2, nRst, nFs2
	dc.b nRst, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2
	dc.b nAb2, nRst, nBb2, $12, nBb2, $06, nRst, $12
	dc.b nBb2, $06, nAb2, nA2, nBb2, nRst, $18
	sLoop		$00, $02, MVZ2_Loop3
	dc.b nC3, $06, nRst, nC3, nRst, nC3, nRst, nC3
	dc.b nC3, nC3, nRst, nC3, nRst, nC3, nRst, nC3
	dc.b nC3, nBb2, nRst, nBb2, nRst, nBb2, nRst, nBb2
	dc.b nBb2, nBb2, nRst, nBb2, nRst, nBb2, nRst, nBb2
	dc.b nBb2, nFs2, nFs3, nFs2, nRst, nFs2, nRst, nFs2
	dc.b nRst, nAb2, nRst, nAb2, nRst, nAb2, nRst, nAb2
	dc.b nAb2, nRst, nBb2, $12, nBb2, $06, nRst, $12
	dc.b nBb2, $06, nAb2, nA2, nBb2, nRst, $18
	sJump		MVZ2_FM2
	dc.b $F2	; Unused

MVZ2_FM3:
	sPatFM		$03
	ssModZ80	$0D, $01, $02, $06
	sPan		spLeft

MVZ2_Loop4:
	dc.b nRst, $0C, nG4, $06, nG4, nG4, nG4, nRst
	dc.b $0C, nG4, $06, nG4, nG4, nG4, nRst, $0C
	dc.b nG4, $06, nG4, nRst, $60
	sLoop		$00, $02, MVZ2_Loop4

MVZ2_Loop5:
	dc.b nRst, $0C, nE4, $06, nE4, nE4, nE4, nRst
	dc.b $0C, nE4, $06, nE4, nE4, nE4, nRst, $0C
	dc.b nE4, $06, nE4, nRst, $60, nRst, $0C, nFs4
	dc.b $06, nFs4, nFs4, nFs4, nRst, $0C, nF4, $06
	dc.b nF4, nF4, nF4, nRst, $0C, nF4, $06, nF4
	dc.b nRst, $60
	sLoop		$00, $02, MVZ2_Loop5
	sPatFM		$04
	dc.b nRst, $06, nFs5, $12, nFs5, $06, nRst, nFs5
	dc.b nRst, nAb5, nG5, nAb5, nC6, nRst, $18
	sPatFM		$05
	dc.b nRst, $06, nF4, $12, nF4, $06, nRst, $12
	dc.b nF4, $06, nEb4, nE4, nF4, nRst
	sPatFM		$06
	dc.b nBb4, $0C, nC5, $06
	sPatFM		$04
	dc.b nRst, nFs5, $12, nFs5, $06, nRst, nFs5, nRst
	dc.b nAb5, nG5, nAb5, nC6, nRst, $18
	sPatFM		$05
	dc.b nRst, $06, nF4, $12, nF4, $06, nRst, $12
	dc.b nF4, $06, nEb4, nE4, nF4
	sPatFM		$06
	dc.b nE4, nEb4, nD4, nCs4, nC4, $30, nC4, $06
	dc.b nRst, nEb4, nRst, nF4, nG4, nRst, nEb4, nRst
	dc.b nF4, $12, nF4, $06, nRst, nF4, nRst, nF4
	dc.b nCs4, nRst, nEb4, nRst, nF4, $12
	sPatFM		$03
	dc.b nRst, $0C, nFs4, $18, nAb4, $06, nFs4, nBb4
	dc.b nRst, nAb4, nRst, nFs4, nAb4, nRst, nF4, nRst
	dc.b $60
	sJump		MVZ2_FM3
	dc.b $F2	; Unused

MVZ2_FM4:
	sPatFM		$03
	ssModZ80	$0D, $01, $02, $06
	sPan		spRight

MVZ2_Loop6:
	dc.b nRst, $0C, nE4, $06, nE4, nE4, nE4, nRst
	dc.b $0C, nE4, $06, nE4, nE4, nE4, nRst, $0C
	dc.b nE4, $06, nE4, nRst, $60
	sLoop		$00, $02, MVZ2_Loop6

MVZ2_Loop7:
	dc.b nRst, $0C, nC4, $06, nC4, nC4, nC4, nRst
	dc.b $0C, nC4, $06, nC4, nC4, nC4, nRst, $0C
	dc.b nC4, $06, nC4, nRst, $60, nRst, $0C, nCs4
	dc.b $06, nCs4, nCs4, nCs4, nRst, $0C, nD4, $06
	dc.b nD4, nD4, nD4, nRst, $0C, nD4, $06, nD4
	dc.b nRst, $60
	sLoop		$00, $02, MVZ2_Loop7
	sPatFM		$04
	dc.b nRst, $06, nFs4, $12, nFs4, $06, nRst, nFs4
	dc.b nRst, nAb4, nG4, nAb4, nC5, nRst, $18
	sPatFM		$05
	dc.b nRst, $06, nD4, $12, nD4, $06, nRst, $12
	dc.b nD4, $06, nC4, nCs4, nD4, nRst
	sPatFM		$06
	dc.b nFs4, $0C, nAb4, $06
	sPatFM		$04
	dc.b nRst, nFs4, $12, nFs4, $06, nRst, nFs4, nRst
	dc.b nAb4, nG4, nAb4, nC5, nRst, $18
	sPatFM		$05
	dc.b nRst, $06, nD4, $12, nD4, $06, nRst, $12
	dc.b nD4, $06, nC4, nCs4, nD4
	sPatFM		$06
	dc.b nCs4, nC4, nB3, nBb3, nG3, $30, nG3, $06
	dc.b nRst, nC4, nRst, nD4, nEb4, nRst, nC4, nRst
	dc.b nD4, $12, nD4, $06, nRst, nD4, nRst, nD4
	dc.b nBb3, nRst, nC4, nRst, nD4, $12
	sPatFM		$03
	dc.b nRst, $0C, nEb4, $18, nEb4, $06, nEb4, nF4
	dc.b nRst, nEb4, nRst, nD4, nEb4, nRst, nD4, nRst
	dc.b $60
	sJump		MVZ2_FM4
	dc.b $F2	; Unused

MVZ2_FM5:
	dc.b nRst, $0E

MVZ2_Jump1:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nRst, $60, nRst, nRst
	sPatFM		$00
	dc.b nB5, $04, nBb5, nG5, nA5, nFs5, nAb5, nF5
	dc.b nG5, nE5, nFs5, nEb5, nF5, nD5, nE5, nCs5
	dc.b nEb5, nC5, nD5, nB4, nCs5, nBb4, nC5, nA4
	dc.b nB4

MVZ2_Loop8:
	sPatFM		$02
	dc.b nB4, $01, nC5, $3B, nD5, $06, nRst, nF5
	dc.b nRst, nG5, nRst, nE5, $01, nF5, $06, nRst
	dc.b $05, nCs5, $06, nRst, nC5, nBb4, nRst, nG4
	dc.b $36, nRst, $0C, nBb4, $18, nC5, $06, nBb4
	dc.b $05, nC5, $01, nCs5, $06, nRst, nC5, nRst
	dc.b nEb5, nD5, nRst, nBb4, nRst, $60
	sLoop		$00, $02, MVZ2_Loop8
	dc.b nRst, $0C, nBb4, $18, nC5, $06, nBb4, nCs5
	dc.b nRst, nC5, nRst, nBb4, nC5, nRst, nBb4, nRst
	dc.b $60, nRst, $0C, nBb4, $18, nC5, $06, nBb4
	dc.b $05, nCs5, $01, nD5, nEb5, $06, nRst, $05
	dc.b nD5, $06, nRst, nC5, nD5, nRst, nBb4, nRst
	dc.b $60, nD5, $01, nEb5, $3B, nF5, $06, nRst
	dc.b $05, nF5, $02, nG5, $06, nRst, $05, nEb5
	dc.b $06, nRst, nF5, $12, nRst, $06, nCs5, $12
	dc.b nBb4, $36, nRst, $0B, nA4, $01, nBb4, $18
	dc.b nC5, $06, nBb4, $05, nB4, $01, nC5, nCs5
	dc.b $06, nRst, $05, nC5, $06, nRst, nBb4, nC5
	dc.b nRst, nBb4, nRst, $60
	sJump		MVZ2_Jump1
	dc.b $F2	; Unused

MVZ2_DAC:
	dc.b dKick, $18, dKick, dKick, dKick, $0C, dSnare, $06
	dc.b dKick, dSnare, dKick, $0C, dKick, $12, dSnare, $06
	dc.b dKick, $0C, dKick, dKick, $06, dSnare, $0C, dKick
	dc.b dKick, $18, dKick, dKick, dKick, $0C, dSnare, $06
	dc.b dKick, dSnare, dKick, $0C, dKick, $12, dSnare, $06
	dc.b dKick, dSnare, $0C, dSnare, dSnare, $06, dSnare, dSnare
	dc.b $0C

MVZ2_Loop9:
	dc.b dKick, $0C, dSnare, dSnare, dKick, dKick, dKick, dSnare
	dc.b $18, dSnare, $06, dKick, $0C, dKick, $12, dSnare
	dc.b $06, dKick, $0C, dKick, dKick, $06, dSnare, $0C
	dc.b dKick
	sLoop		$00, $03, MVZ2_Loop9
	dc.b dKick, $0C, dSnare, dSnare, dKick, dKick, dKick, dSnare
	dc.b $18, dSnare, $06, dKick, $0C, dKick, $12, dSnare
	dc.b $06, dKick, $0C, dKick, dKick, $06, dSnare, dSnare
	dc.b dSnare, dSnare, dKick, $0C, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dSnare, dSnare, dKick, $06, dSnare, $12, dSnare
	dc.b $18, dSnare, $06, dKick, dKick, dSnare, $0C, dSnare
	dc.b dSnare, $06, dKick, $0C, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dSnare, dSnare, dKick, $06, dSnare, $12, dSnare
	dc.b $18, dSnare, $06, dKick, dKick, dKick, dSnare, dSnare
	dc.b dSnare, dSnare, dKick, $0C, dKick, dSnare, dKick, dKick
	dc.b dKick, dSnare, dKick, dKick, dSnare, dSnare, dKick, dSnare
	dc.b dKick, $06, dSnare, $0C, dSnare, dSnare, $06, dKick
	dc.b $0C, dSnare, dKick, dSnare, dKick, dSnare, dSnare, dSnare
	dc.b dKick, $06, dSnare, $12, dSnare, $18, dSnare, $0C
	dc.b dKick, $04, dKick, dKick, dSnare, $18
	sJump		MVZ2_DAC
	dc.b $F2	; Unused

MVZ2_PSG1:
	sStop

MVZ2_PSG2:
	sStop
	dc.b $F2	; Unused

MVZ2_PSG3:
	sStop

MVZ2_Patches:

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
	; $1C
	; $40, $41, $46, $41,	$1F, $1F, $1F, $1F
	; $0C, $0C, $12, $09,	$00, $00, $00, $00
	; $EF, $EF, $EF, $EF,	$06, $81, $17, $81
	spAlgorithm	$04
	spFeedback	$03
	spDetune	$04, $04, $04, $04
	spMultiple	$00, $06, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $12, $0C, $09
	spSustainLv	$0E, $0E, $0E, $0E
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$06, $17, $01, $01

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

	; Patch $04
	; $1B
	; $63, $50, $21, $41,	$15, $0F, $16, $13
	; $10, $01, $06, $05,	$05, $01, $05, $01
	; $CF, $0F, $DF, $CF,	$21, $12, $2A, $81
	spAlgorithm	$03
	spFeedback	$03
	spDetune	$06, $02, $05, $04
	spMultiple	$03, $01, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$15, $16, $0F, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $06, $01, $05
	spSustainLv	$0C, $0D, $00, $0C
	spDecayRt	$05, $05, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $2A, $12, $01

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
	; $14, $76, $72, $71,	$9F, $9F, $1F, $1F
	; $0C, $0C, $0C, $0C,	$0E, $0E, $03, $02
	; $0F, $0F, $DF, $DF,	$81, $81, $81, $81
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$01, $07, $07, $07
	spMultiple	$04, $02, $06, $01
	spRateScale	$02, $00, $02, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0C, $0C, $0C
	spSustainLv	$00, $0D, $00, $0D
	spDecayRt	$0E, $03, $0E, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$01, $01, $01, $01
