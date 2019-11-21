Invincibility_Header:
	sHeaderInit						; Z80 offset is $CA38
	sHeaderPatch	Invincibility_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $2C
	sHeaderDAC	Invincibility_DAC
	sHeaderFM	Invincibility_FM1, $18, $14
	sHeaderFM	Invincibility_FM2, $00, $0B
	sHeaderFM	Invincibility_FM3, $18, $1E
	sHeaderFM	Invincibility_FM4, $00, $1E
	sHeaderFM	Invincibility_FM5, $00, $1E
	sHeaderPSG	Invincibility_PSG1, $F4, $06, $00, v00
	sHeaderPSG	Invincibility_PSG2, $F4, $06, $00, v00
	sHeaderPSG	Invincibility_PSG3, $3B, $02, $00, v00

Invincibility_FM1:
	sPatFM		$00
	ssModZ80	$14, $01, $06, $06
	dc.b nB3, $04, nRst, nB3, $08, nC4, $04, nRst
	dc.b nC4, $08, nD4, $08, nRst, nD4, $04, nRst
	dc.b nBb3, $04, sHold, nB3, $08, nRst, $04, nB3
	dc.b $08, nC4, $04, nRst, nD4, $0C, nRst, $04
	dc.b nD4, nRst, nD4, $0C, nRst, $04, nF4, $0C
	dc.b nRst, $04, nF4, $0C, nRst, $04, nF4, $0C
	dc.b nRst, $04, nF4, $0C, nRst, $04
	saVolFM		$FE

Invincibility_Loop1:
	dc.b nF4, $03, nRst, $05
	sLoop		$00, $08, Invincibility_Loop1
	saVolFM		$02
	dc.b nB3, $04, nRst, nB3, $08, nC4, $04, nRst
	dc.b nC4, $08, nD4, $08, nRst, nD4, $04, nRst
	dc.b nBb3, $04, sHold, nB3, $08, nRst, $04, nB3
	dc.b $08, nC4, $04, nRst, nD4, $0C, nRst, $04
	dc.b nD4, nRst, nD4, $0C, nRst, $04, nF4, $0C
	dc.b nRst, $04, nF4, $0C, nRst, $04, nF4, $0C
	dc.b nRst, $04, nF4, $0C, nRst, $04
	saVolFM		$FE

Invincibility_Loop2:
	dc.b nA4, $03, nRst, $05
	sLoop		$00, $08, Invincibility_Loop2
	saVolFM		$02
	sJump		Invincibility_FM1
	dc.b $F2	; Unused

Invincibility_FM2:
	sPatFM		$01
	dc.b nG2, $04, nRst, nG2, nRst, nG2, nRst, nG2
	dc.b nRst, nD2, $0C, nRst, $04, nD2, nRst, nG2
	dc.b $08, nRst, $08, nG2, $04, nRst, nG2, nRst
	dc.b nD2, $08, nRst, nD2, $04, nRst, nD2, $0C
	dc.b nRst, $04

Invincibility_Loop3:
	dc.b nF2, $03, nRst, $05
	sLoop		$00, $10, Invincibility_Loop3
	dc.b nG2, $04, nRst, nG2, nRst, nG2, nRst, nG2
	dc.b nRst, nD2, $0C, nRst, $04, nD2, nRst, nG2
	dc.b $08, nRst, $08, nG2, $04, nRst, nG2, nRst
	dc.b nD2, $08, nRst, nD2, $04, nRst, nD2, $0C
	dc.b nRst, $04

Invincibility_Loop4:
	dc.b nF2, $03, nRst, $05
	sLoop		$00, $08, Invincibility_Loop4

Invincibility_Loop5:
	dc.b nA2, $03, nRst, $05
	sLoop		$00, $08, Invincibility_Loop5
	sJump		Invincibility_FM2
	dc.b $F2	; Unused

Invincibility_FM3:
	sPatFM		$00
	ssModZ80	$15, $01, $06, $06
	dc.b nRst, $03
	ssDetune	$03

Invincibility_Jump1:
	dc.b nG3, $04, nRst, nG3, $08, nA3, $04, nRst
	dc.b nA3, $08, nB3, $08, nRst, nB3, $04, nRst
	dc.b nFs3, $04, sHold, nG3, $08, nRst, $04, nG3
	dc.b $08, nA3, $04, nRst, nB3, $0C, nRst, $04
	dc.b nB3, nRst, nB3, $0C, nRst, $04, nC4, $0C
	dc.b nRst, $04, nC4, $0C, nRst, $04, nC4, $0C
	dc.b nRst, $04, nC4, $0C, nRst, $04
	saVolFM		$FE

Invincibility_Loop6:
	dc.b nC4, $03, nRst, $05
	sLoop		$00, $08, Invincibility_Loop6
	saVolFM		$02
	dc.b nG3, $04, nRst, nG3, $08, nA3, $04, nRst
	dc.b nA3, $08, nB3, $08, nRst, nB3, $04, nRst
	dc.b nFs3, $04, sHold, nG3, $08, nRst, $04, nG3
	dc.b $08, nA3, $04, nRst, nB3, $0C, nRst, $04
	dc.b nB3, nRst, nB3, $0C, nRst, $04, nC4, $0C
	dc.b nRst, $04, nC4, $0C, nRst, $04, nC4, $0C
	dc.b nRst, $04, nC4, $0C, nRst, $04
	saVolFM		$FE

Invincibility_Loop7:
	dc.b nA4, $03, nRst, $05
	sLoop		$00, $08, Invincibility_Loop7
	saVolFM		$02
	sJump		Invincibility_Jump1
	dc.b $F2	; Unused

Invincibility_FM4:
	sPatFM		$02
	sPan		spRight

Invincibility_Loop8:
	dc.b nG5, $04, nD5
	sLoop		$00, $10, Invincibility_Loop8

Invincibility_Loop9:
	dc.b nA5, $04, nF5
	sLoop		$00, $10, Invincibility_Loop9

Invincibility_Loop10:
	dc.b nG5, $04, nD5
	sLoop		$00, $10, Invincibility_Loop10

Invincibility_Loop11:
	dc.b nA5, $04, nF5
	sLoop		$00, $08, Invincibility_Loop11

Invincibility_Loop12:
	dc.b nC6, $04, nF5
	sLoop		$00, $08, Invincibility_Loop12
	sJump		Invincibility_Loop8
	dc.b $F2	; Unused

Invincibility_FM5:
	sPatFM		$02
	sPan		spLeft

Invincibility_Loop13:
	dc.b nB4, $04, nG4
	sLoop		$00, $10, Invincibility_Loop13

Invincibility_Loop14:
	dc.b nC5, $04, nA4
	sLoop		$00, $10, Invincibility_Loop14

Invincibility_Loop15:
	dc.b nB4, $04, nG4
	sLoop		$00, $10, Invincibility_Loop15

Invincibility_Loop16:
	dc.b nC5, $04, nA4
	sLoop		$00, $08, Invincibility_Loop16

Invincibility_Loop17:
	dc.b nF5, $04, nA4
	sLoop		$00, $08, Invincibility_Loop17
	sJump		Invincibility_Loop13
	dc.b $F2	; Unused

Invincibility_DAC:
	dc.b dKick, $10, dKick, dKick, dKick
	sJump		Invincibility_DAC
	dc.b $F2	; Unused

Invincibility_PSG1:
	sVolEnvPSG	v0A
	dc.b nRst, $02
	sJump		Invincibility_Loop8
	dc.b $F2	; Unused

Invincibility_PSG2:
	sVolEnvPSG	v0A
	dc.b nRst, $02
	sJump		Invincibility_Loop13
	dc.b $F2	; Unused

Invincibility_PSG3:
	sStop

Invincibility_Patches:

	; Patch $00
	; $3D
	; $01, $00, $04, $03,	$1F, $1F, $1F, $1F
	; $10, $06, $06, $06,	$01, $06, $06, $06
	; $35, $1A, $18, $1A,	$12, $82, $82, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $04, $00, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $06, $06, $06
	spSustainLv	$03, $01, $01, $01
	spDecayRt	$01, $06, $06, $06
	spReleaseRt	$05, $08, $0A, $0A
	spTotalLv	$12, $02, $02, $00

	; Patch $01
	; $3A
	; $01, $02, $01, $01,	$1F, $5F, $5F, $5F
	; $10, $11, $09, $09,	$07, $00, $00, $00
	; $CF, $FF, $FF, $FF,	$1C, $22, $18, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $02, $01
	spRateScale	$00, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $09, $11, $09
	spSustainLv	$0C, $0F, $0F, $0F
	spDecayRt	$07, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1C, $18, $22, $00

	; Patch $02
	; $3D
	; $01, $01, $01, $01,	$94, $19, $19, $19
	; $0F, $0D, $0D, $0D,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$15, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$02, $00, $00, $00
	spAttackRt	$14, $19, $19, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $0D, $0D, $0D
	spSustainLv	$02, $01, $01, $01
	spDecayRt	$07, $04, $04, $04
	spReleaseRt	$05, $0A, $0A, $0A
	spTotalLv	$15, $00, $00, $00
