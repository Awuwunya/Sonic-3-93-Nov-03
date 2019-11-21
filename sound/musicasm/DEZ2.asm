DEZ2_Header:
	sHeaderInit						; Z80 offset is $8000
	sHeaderPatch	DEZ2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $00
	sHeaderDAC	DEZ2_DAC
	sHeaderFM	DEZ2_FM1, $00, $0F
	sHeaderFM	DEZ2_FM2, $00, $0C
	sHeaderFM	DEZ2_FM3, $00, $0F
	sHeaderFM	DEZ2_FM4, $00, $0F
	sHeaderFM	DEZ2_FM5, $00, $16
	sHeaderPSG	DEZ2_PSG1, $E8, $02, $00, v00
	sHeaderPSG	DEZ2_PSG2, $E8, $02, $00, v00
	sHeaderPSG	DEZ2_PSG3, $E8, $02, $00, v00

DEZ2_FM1:
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter

DEZ2_Loop1:
	sPatFM		$00
	dc.b nRst, $18, nG4, $0B, nRst, $0D, nF4, $0B
	dc.b nRst, $25, nE4, $0C, nF4, nRst, nG4, nRst
	dc.b nF4, $24, nRst, $18, nG4, $0B, nRst, $0D
	dc.b nF4, $0B, nRst, $25, nE4, $0C, nF4, nRst
	dc.b nG4, nRst, nF4, nRst, nF4, $7F, sHold, nF4
	dc.b $29, nE4, $0B, nRst, $0D, nF4, $6C, nA4
	dc.b $06, nBb4, nA4, nRst, nG4, nA4, nG4, nRst
	dc.b nF4, nG4, nF4, nRst, nE4, nF4, nE4, nRst
	sLoop		$00, $02, DEZ2_Loop1
	sPatFM		$03

DEZ2_Loop2:
	dc.b nAb3, $06, nBb3, nC4, nEb4
	sLoop		$00, $04, DEZ2_Loop2

DEZ2_Loop3:
	dc.b nBb3, $06, nC4, nD4, nF4
	sLoop		$00, $04, DEZ2_Loop3
	dc.b nRst, $60, nRst, $06, nBb4, $12, nA4, $06
	dc.b nRst, nG4, nRst, nBb4, nRst, nG4, nA4, nRst
	dc.b nBb4, $12

DEZ2_Loop4:
	dc.b nAb3, $06, nBb3, nC4, nEb4
	sLoop		$00, $04, DEZ2_Loop4

DEZ2_Loop5:
	dc.b nBb3, $06, nC4, nD4, nF4
	sLoop		$00, $04, DEZ2_Loop5
	dc.b nRst, $60, nRst, $06, nBb4, $12, nA4, $06
	dc.b nRst, nG4, nRst, nBb4, nG4, nRst, nC5, nRst
	dc.b nBb4, nRst, nG4
	sJump		DEZ2_FM1
	dc.b $F2	; Unused

DEZ2_FM2:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter

DEZ2_Loop6:
	dc.b nG1, $0C, nG1, nG1, nF2, $06, nG2, nG1
	dc.b $0C, nG1, nG1, $06, nD2, nG1, $0C, nG1
	dc.b nG1, nG1, nF2, $06, nG2, nG1, $0C, nG1
	dc.b nC2, $06, nD2, nG1, $0C, nG1, nG1, nG1
	dc.b nF2, $06, nG2, nG1, $0C, nG1, nC2, $06
	dc.b nD2, nG1, $0C, nG1, nG1, nG1, nF2, $06
	dc.b nG2, nG1, $0C, nG1, nC2, $06, nD2, nG1
	dc.b $0C, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1
	dc.b nAb1, $06, nBb1, nBb1, $0C, nBb1, nBb1, nBb1
	dc.b nBb1, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1
	dc.b nBb1, nBb1, nBb1, nAb1, $06, nBb1, nBb1, $0C
	dc.b nBb1, nBb1, nBb1, nBb1, nBb1, nBb1, nBb1
	sLoop		$00, $02, DEZ2_Loop6

DEZ2_Loop7:
	dc.b nAb1, $0C, nAb1, nAb1, $03, nRst, nAb2, nRst
	dc.b nAb1, nRst, nAb2, nRst, nAb1, $0C, nAb1, nAb1
	dc.b $03, nRst, nAb2, nRst, nAb1, nRst, nAb2, nRst
	dc.b nBb1, $0C, nBb1, nBb1, $03, nRst, nBb2, nRst
	dc.b nBb1, nRst, nBb2, nRst, nBb1, $0C, nBb1, nBb1
	dc.b $03, nRst, nBb2, nRst, nBb1, nRst, nBb2, nRst
	dc.b nC2, $06, nC2, $03, nRst, nBb2, $06, nC3
	dc.b $03, nRst, nF2, $06, nG2, $03, nRst, nC2
	dc.b nRst, nBb1, nRst, nC2, $06, nBb1, nC2, $03
	dc.b nRst, nC2, $06, nRst, nC2, nRst, nC2, nC2
	dc.b $0C, nC2, nRst, $48
	sLoop		$00, $02, DEZ2_Loop7
	sJump		DEZ2_FM2
	dc.b $F2	; Unused

DEZ2_FM3:
	sPatFM		$02
	ssModZ80	$0D, $01, $02, $06
	sPan		spRight

DEZ2_Loop8:
	sPan		spRight
	dc.b nG2, $06, nBb2, nG2, nE2, nRst, $30
	sPan		spLeft
	dc.b nBb3, $06, nC4, nE4, nC4, nRst, $18
	sPan		spRight
	dc.b nEb3, $06, nG3, nF3, nBb3, nRst, $30
	sPan		spLeft
	dc.b nG2, $06, nBb2, nG2, nE2, nRst, $30
	sPan		spRight
	dc.b nBb3, $06, nC4, nE4, nC4, nRst, $18
	sPan		spLeft
	dc.b nEb3, $06, nG3, nF3, nBb3, nRst, $30, nRst
	dc.b $18
	sPan		spRight
	dc.b nBb4, $06, nA4, nBb4, nBb4, nBb5, nA5, nBb5
	dc.b nBb5, nBb4, nA4, nBb4, nBb4, nRst, $18
	sPan		spLeft
	dc.b nBb3, $06, nF3, nFs3, nD3, nEb3, nE3, nBb2
	dc.b nB2, nG2, nAb2, nE2, nFs2, nRst, $18
	sPan		spRight
	dc.b nBb4, $06, nA4, nBb4, nBb4, nBb5, nA5, nBb5
	dc.b nBb5, nBb4, nA4, nBb4, nBb4, nRst, $18
	sPan		spLeft
	dc.b nBb3, $06, nF3, nFs3, nD3, nEb3, nE3, nBb2
	dc.b nB2, nG2, nAb2, nE2, nFs2
	sLoop		$00, $02, DEZ2_Loop8

DEZ2_Loop9:
	dc.b nRst, $60
	sLoop		$00, $08, DEZ2_Loop9
	sJump		DEZ2_FM3
	dc.b $F2	; Unused

DEZ2_FM4:
	ssModZ80	$0D, $01, $02, $06
	sPan		spLeft
	sPatFM		$00

DEZ2_Loop10:
	dc.b nRst, $18, nE4, $0B, nRst, $0D, nD4, $0B
	dc.b nRst, $25, nC4, $0C, nD4, $0B, nRst, $0D
	dc.b nE4, $0B, nRst, $0D, nD4, $24, nRst, $18
	dc.b nE4, $0B, nRst, $0D, nD4, $0B, nRst, $25
	dc.b nC4, $0C, nD4, $0B, nRst, $0D, nE4, $0B
	dc.b nRst, $0D, nD4, $0B, nRst, $0D, nD4, $7F
	dc.b sHold, nD4, $29, nC4, $0B, nRst, $0D, nD4
	dc.b $6C, nA3, $06, nBb3, nA3, nRst, nG3, nA3
	dc.b nG3, nRst, nF3, nG3, nF3, nRst, nE3, nF3
	dc.b nE3, nRst
	sLoop		$00, $02, DEZ2_Loop10
	sPatFM		$03

DEZ2_Loop11:
	dc.b nAb2, $06, nBb2, nC3, nEb3
	sLoop		$00, $04, DEZ2_Loop11

DEZ2_Loop12:
	dc.b nBb2, $06, nC3, nD3, nF3
	sLoop		$00, $04, DEZ2_Loop12
	dc.b nRst, $60, nRst, $06, nG4, $12, nF4, $06
	dc.b nRst, nE4, nRst, nG4, nRst, nE4, nF4, $05
	dc.b nRst, $07, nG4, $12

DEZ2_Loop13:
	dc.b nAb2, $06, nBb2, nC3, nEb3
	sLoop		$00, $04, DEZ2_Loop13

DEZ2_Loop14:
	dc.b nBb2, $06, nC3, nD3, nF3
	sLoop		$00, $04, DEZ2_Loop14
	dc.b nRst, $60, nRst, $06, nG4, $12, nF4, $06
	dc.b nRst, nE4, nRst, nG4, nE4, nRst, nA4, nRst
	dc.b nG4, nRst, nE4
	sJump		DEZ2_FM4
	dc.b $F2	; Unused

DEZ2_FM5:
	dc.b nRst, $10

DEZ2_Jump1:
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter

DEZ2_Loop15:
	sPatFM		$00
	dc.b nRst, $18, nG4, $0B, nRst, $0D, nF4, $0B
	dc.b nRst, $25, nE4, $0C, nF4, nRst, nG4, nRst
	dc.b nF4, $24, nRst, $18, nG4, $0B, nRst, $0D
	dc.b nF4, $0B, nRst, $25, nE4, $0C, nF4, nRst
	dc.b nG4, nRst, nF4, nRst, nF4, $7F, sHold, nF4
	dc.b $29, nE4, $0B, nRst, $0D, nF4, $6C, nA4
	dc.b $06, nBb4, nA4, nRst, nG4, nA4, nG4, nRst
	dc.b nF4, nG4, nF4, nRst, nE4, nF4, nE4, nRst
	sLoop		$00, $02, DEZ2_Loop15
	sPatFM		$03

DEZ2_Loop16:
	dc.b nAb3, $06, nBb3, nC4, nEb4
	sLoop		$00, $04, DEZ2_Loop16

DEZ2_Loop17:
	dc.b nBb3, $06, nC4, nD4, nF4
	sLoop		$00, $04, DEZ2_Loop17
	dc.b nRst, $60, nRst, $06, nBb4, $12, nA4, $06
	dc.b nRst, nG4, nRst, nBb4, nRst, nG4, nA4, nRst
	dc.b nBb4, $12

DEZ2_Loop18:
	dc.b nAb3, $06, nBb3, nC4, nEb4
	sLoop		$00, $04, DEZ2_Loop18

DEZ2_Loop19:
	dc.b nBb3, $06, nC4, nD4, nF4
	sLoop		$00, $04, DEZ2_Loop19
	dc.b nRst, $60, nRst, $06, nBb4, $12, nA4, $06
	dc.b nRst, nG4, nRst, nBb4, nG4, nRst, nC5, nRst
	dc.b nBb4, nRst, nG4
	sJump		DEZ2_Jump1
	dc.b $F2	; Unused

DEZ2_DAC:
	dc.b dKick, $18, dSnare, dKick, dSnare
	sLoop		$00, $17, DEZ2_DAC
	dc.b dSnare, $0C, dSnare, nRst, $48
	sJump		DEZ2_DAC
	dc.b $F2	; Unused

DEZ2_PSG1:
	sStop

DEZ2_PSG2:
	sStop
	dc.b $F2	; Unused

DEZ2_PSG3:
	sStop

DEZ2_Patches:

	; Patch $00
	; $10
	; $42, $51, $66, $41,	$1F, $1F, $5F, $1F
	; $04, $08, $08, $04,	$00, $0F, $00, $00
	; $18, $38, $58, $18,	$2D, $1E, $19, $85
	spAlgorithm	$00
	spFeedback	$02
	spDetune	$04, $06, $05, $04
	spMultiple	$02, $06, $01, $01
	spRateScale	$00, $01, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $08, $08, $04
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$08, $08, $08, $08
	spTotalLv	$2D, $19, $1E, $05

	; Patch $01
	; $38
	; $75, $13, $71, $11,	$1F, $5F, $1F, $1F
	; $10, $0D, $03, $04,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$1F, $16, $1D, $81
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$07, $07, $01, $01
	spMultiple	$05, $01, $03, $01
	spRateScale	$00, $00, $01, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $03, $0D, $04
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1F, $1D, $16, $01

	; Patch $02
	; $02
	; $71, $52, $49, $11,	$17, $16, $15, $17
	; $0A, $07, $0C, $0C,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$11, $1D, $1D, $83
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$07, $04, $05, $01
	spMultiple	$01, $09, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $15, $16, $17
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $0C, $07, $0C
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$11, $1D, $1D, $03

	; Patch $03
	; $3D
	; $43, $05, $23, $71,	$11, $16, $55, $D5
	; $01, $01, $01, $01,	$08, $00, $09, $00
	; $89, $F8, $F9, $F8,	$1B, $88, $8A, $88
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$04, $02, $00, $07
	spMultiple	$03, $03, $05, $01
	spRateScale	$00, $01, $00, $03
	spAttackRt	$11, $15, $16, $15
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $01, $01, $01
	spSustainLv	$08, $0F, $0F, $0F
	spDecayRt	$08, $09, $00, $00
	spReleaseRt	$09, $09, $08, $08
	spTotalLv	$1B, $0A, $08, $08

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
