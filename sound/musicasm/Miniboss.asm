Miniboss_Header:
	sHeaderInit						; Z80 offset is $8412
	sHeaderPatch	Miniboss_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $00
	sHeaderDAC	Miniboss_DAC
	sHeaderFM	Miniboss_FM1, $00, $0F
	sHeaderFM	Miniboss_FM2, $00, $0F
	sHeaderFM	Miniboss_FM3, $00, $0F
	sHeaderFM	Miniboss_FM4, $00, $0F
	sHeaderFM	Miniboss_FM5, $00, $11
	sHeaderPSG	Miniboss_PSG1, $E8, $02, $00, v00
	sHeaderPSG	Miniboss_PSG2, $E8, $02, $00, v00
	sHeaderPSG	Miniboss_PSG3, $E8, $02, $00, v00

Miniboss_FM1:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nE5, $06, nE5, nE5, nRst, $12, nE5, $06
	dc.b nE5, nE5, nRst, $2A

Miniboss_Loop1:
	sPatFM		$00
	dc.b nE5, $54, nF5, $60, nFs5, nF5, $6C
	sLoop		$00, $02, Miniboss_Loop1
	sPatFM		$03
	dc.b nRst, $18, nA4, nG5, nF5, $0C, nE5, $24
	dc.b nD5, $18, nF5, nE5, $0C, nC5, $3C, nRst
	dc.b $0C, nD5, nC5, nE5, $6C, nRst, $18, nA4
	dc.b nG5, nF5, $0C, nE5, $24, nD5, $18, nF5
	dc.b nE5, $0C, nC5, $60, nA5, $54, nRst, $18
	sJump		Miniboss_Loop1
	dc.b $F2	; Unused

Miniboss_FM2:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	dc.b nE2, $06, nE2, nE2, $0C, nRst, nE2, $06
	dc.b nE2, nE2, $0C, nRst, $24

Miniboss_Loop2:
	sPatFM		$01
	dc.b nA2, $06, nA2, nA3, nA3, nA2, nA2, nA3
	dc.b nA3, nA2, nA2, nA3, nA3, nA2, nA2, nA3
	dc.b nA3
	sLoop		$00, $08, Miniboss_Loop2
	dc.b nF2, $06, nF2, nF3, nF3, nF2, nF2, nF3
	dc.b nF3, nF2, nF2, nF3, nF3, nF2, nF2, nF3
	dc.b nF3, nG2, nG2, nG3, nG3, nG2, nG2, nG3
	dc.b nG3, nG2, nG2, nG3, nG3, nG2, nG2, nG3
	dc.b nG3, nA2, nA2, nA3, nA3, nA2, nA2, nA3
	dc.b nA3, nA2, nA2, nA3, nA3, nA2, nA2, nA3
	dc.b nA3, nA2, nA2, nA3, nA3, nA2, nA2, nA3
	dc.b nA3, nG2, nG2, nG3, nG3, nG2, nG2, nG3
	dc.b nG3, nF2, nF2, nF3, nF3, nF2, nF2, nF3
	dc.b nF3, nF2, nF2, nF3, nF3, nF2, nF2, nF3
	dc.b nF3, nG2, nG2, nG3, nG3, nG2, nG2, nG3
	dc.b nG3, nG2, nG2, nG3, nG3, nG2, nG2, nG3
	dc.b nG3, nA2, nA2, nA3, nA3, nA2, nA2, nA3
	dc.b nA3, nA2, nA2, nA3, nA3, nA2, nA2, nA3
	dc.b nA3, nA2, nA2, nA2, $0C, nRst, nA2, $06
	dc.b nA2, nA2, $0C, nRst, $24
	sJump		Miniboss_Loop2
	dc.b $F2	; Unused

Miniboss_FM3:
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spRight
	dc.b nB4, $06, nB4, nB4, nRst, $12, nB4, $06
	dc.b nB4, nB4, nRst, $2A

Miniboss_Loop3:
	sPatFM		$00
	dc.b nC5, $54, nC5, $60, nC5, nC5, $6C
	sLoop		$00, $02, Miniboss_Loop3
	sPatFM		$04
	dc.b nC5, $54, nB4, $3C, nD5, $24, nE5, $7F
	dc.b sHold, nE5, $1D, nD5, $30, nC5, $54, nB4
	dc.b $3C, nD5, $24, nE5, $6C, nRst, $60
	sJump		Miniboss_Loop3
	dc.b $F2	; Unused

Miniboss_FM4:
	ssModZ80	$0D, $01, $02, $06
	sPan		spLeft
	dc.b nRst, $60

Miniboss_Loop4:
	sPatFM		$02
	dc.b nA4, $06, nC5, nE5, nC5
	sLoop		$00, $04, Miniboss_Loop4

Miniboss_Loop5:
	dc.b nA4, $06, nC5, nF5, nC5
	sLoop		$00, $04, Miniboss_Loop5

Miniboss_Loop6:
	dc.b nA4, $06, nC5, nFs5, nC5
	sLoop		$00, $04, Miniboss_Loop6

Miniboss_Loop7:
	dc.b nA4, $06, nC5, nF5, nC5
	sLoop		$00, $04, Miniboss_Loop7

Miniboss_Loop8:
	dc.b nA4, $06, nC5, nE5, nC5
	sLoop		$00, $04, Miniboss_Loop8

Miniboss_Loop9:
	dc.b nA4, $06, nC5, nF5, nC5
	sLoop		$00, $04, Miniboss_Loop9

Miniboss_Loop10:
	dc.b nA4, $06, nC5, nFs5, nC5
	sLoop		$00, $04, Miniboss_Loop10

Miniboss_Loop11:
	dc.b nA4, $06, nC5, nF5, nC5
	sLoop		$00, $04, Miniboss_Loop11
	dc.b nF4, $0C, nA4, nC5, nF5, $3C, nG4, $0C
	dc.b nB4, nD5, nG5, $3C, nA4, $0C, nC5, nE5
	dc.b nA5, $3C, nA4, $0C, nC5, nE5, nA5, nG4
	dc.b nB4, nD5, nG5, nF4, nA4, nC5, nF5, $3C
	dc.b nG4, $0C, nB4, nD5, nG5, $3C, nA4, $0C
	dc.b nC5, nE5, nA5, $3C, nRst, $60
	sJump		Miniboss_Loop4
	dc.b $F2	; Unused

Miniboss_FM5:
	dc.b nRst, $10
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	sPan		spCenter
	saVolFM		$0C
	dc.b nE5, $06, nE5, nE5, nRst, $12, nE5, $06
	dc.b nE5, nE5, nRst, $2A
	saVolFM		$F4

Miniboss_Loop12:
	sPatFM		$00
	dc.b nE5, $54, nF5, $60, nFs5, nF5, $6C
	sLoop		$00, $02, Miniboss_Loop12
	sPatFM		$03
	dc.b nRst, $18, nA4, nG5, nF5, $0C, nE5, $24
	dc.b nD5, $18, nF5, nE5, $0C, nC5, $3C, nRst
	dc.b $0C, nD5, nC5, nE5, $6C, nRst, $18, nA4
	dc.b nG5, nF5, $0C, nE5, $24, nD5, $18, nF5
	dc.b nE5, $0C, nC5, $60, nA5, $54, nRst, $18
	sJump		Miniboss_Loop12
	dc.b $F2	; Unused

Miniboss_DAC:
	dc.b dSnare, $06, dSnare, dSnare, $18, dSnare, $06, dSnare
	dc.b dSnare, $18, dSnare, $06, dSnare, dSnare, dSnare

Miniboss_Loop13:
	dc.b dKick, $18, dKick, dKick, dKick
	sLoop		$00, $07, Miniboss_Loop13

Miniboss_Loop14:
	dc.b dKick, $18, dKick, dKick, $0C, dSnare, dSnare, $06
	dc.b dSnare, dSnare, $0C
	sLoop		$00, $03, Miniboss_Loop14

Miniboss_Loop15:
	dc.b dKick, $0C, dKick, dSnare, dKick, dKick, $06, dKick
	dc.b dKick, $0C, dSnare, dKick
	sLoop		$00, $04, Miniboss_Loop15
	dc.b dKick, $0C, dKick, dSnare, dKick, dKick, $06, dKick
	dc.b dKick, $0C, dSnare, $06, dSnare, dSnare, dSnare, dSnare
	dc.b dSnare, dSnare, $18, dSnare, $06, dSnare, dSnare, $18
	dc.b dSnare, $06, dSnare, dSnare, dSnare
	sJump		Miniboss_Loop13
	dc.b $F2	; Unused

Miniboss_PSG1:
	sStop

Miniboss_PSG2:
	sStop
	dc.b $F2	; Unused

Miniboss_PSG3:
	sStop

Miniboss_Patches:

	; Patch $00
	; $3D
	; $41, $10, $72, $61,	$0F, $14, $53, $14
	; $04, $06, $06, $03,	$00, $0F, $00, $00
	; $1F, $3F, $5F, $1F,	$1A, $8A, $8A, $8A
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$04, $07, $01, $06
	spMultiple	$01, $02, $00, $01
	spRateScale	$00, $01, $00, $00
	spAttackRt	$0F, $13, $14, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $06, $06, $03
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $0A, $0A, $0A

	; Patch $01
	; $08
	; $07, $70, $30, $00,	$9F, $9F, $9F, $9F
	; $12, $0E, $0A, $0A,	$00, $04, $04, $03
	; $28, $25, $25, $25,	$1F, $2B, $11, $81
	spAlgorithm	$00
	spFeedback	$01
	spDetune	$00, $03, $07, $00
	spMultiple	$07, $00, $00, $00
	spRateScale	$02, $02, $02, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $0A, $0E, $0A
	spSustainLv	$02, $02, $02, $02
	spDecayRt	$00, $04, $04, $03
	spReleaseRt	$08, $05, $05, $05
	spTotalLv	$1F, $11, $2B, $01

	; Patch $02
	; $04
	; $75, $11, $31, $71,	$1F, $1F, $1F, $1F
	; $08, $05, $0C, $09,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$1E, $86, $22, $8D
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$07, $03, $01, $07
	spMultiple	$05, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $0C, $05, $09
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $22, $06, $0D

	; Patch $03
	; $29
	; $20, $31, $51, $71,	$0E, $11, $12, $17
	; $00, $00, $00, $00,	$08, $00, $09, $00
	; $89, $F8, $F9, $F8,	$20, $20, $10, $88
	spAlgorithm	$01
	spFeedback	$05
	spDetune	$02, $05, $03, $07
	spMultiple	$00, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0E, $12, $11, $17
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$08, $0F, $0F, $0F
	spDecayRt	$08, $09, $00, $00
	spReleaseRt	$09, $09, $08, $08
	spTotalLv	$20, $10, $20, $08

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
