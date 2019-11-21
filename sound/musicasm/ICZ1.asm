ICZ1_Header:
	sHeaderInit						; Z80 offset is $C499
	sHeaderPatch	ICZ1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $19
	sHeaderDAC	ICZ1_DAC
	sHeaderFM	ICZ1_FM1, $18, $18
	sHeaderFM	ICZ1_FM2, $0C, $10
	sHeaderFM	ICZ1_FM3, $0C, $1E
	sHeaderFM	ICZ1_FM4, $0C, $1E
	sHeaderFM	ICZ1_FM5, $18, $1B
	sHeaderPSG	ICZ1_PSG1, $00, $03, $00, v00
	sHeaderPSG	ICZ1_PSG2, $00, $05, $00, v00
	sHeaderPSG	ICZ1_PSG3, $00, $01, $00, v00

ICZ1_FM1:
	sPatFM		$02
	saTranspose	$F4
	saVolFM		$05
	dc.b nF5, $06, nRst, $02, nF5, $06, nRst, nF5
	dc.b $04, nF5, $06, nRst, nF5, $06, nRst, $02
	dc.b nF5, $06, nRst, nF5, $04, nF5, $06, nRst
	dc.b nF5, $06, nRst, nF5, nRst, nD5, nRst, $2A
	dc.b nD5, $06, nRst, $02, nD5, $06, nRst, nD5
	dc.b nRst, nD5, $04, nD5, $06, nRst
	saTranspose	$0C
	saVolFM		$F8

ICZ1_Loop1:
	sPatFM		$00
	ssModZ80	$20, $01, $05, $05
	dc.b nBb4, $03, sHold, nB4, $15, nG4, $06, nRst
	dc.b nD4, $60, nRst, $0C, nBb4, $02, sHold, nB4
	dc.b $04, nRst, $06, nB4, $12, nRst, $06, nB4
	dc.b $03, sHold, nC5, $15, nB4, $06, nRst, nA4
	dc.b $60, sHold, nA4, $30, nRst, $18, nBb4, $02
	dc.b sHold, nB4, $16, nG4, $06, nRst, nD4, $60
	dc.b nRst, $0C, nCs5, $02, sHold, nD5, $04, nRst
	dc.b $06, nD5, $18, nC5, nB4, $06, nRst, nA4
	dc.b $60, sHold, $48
	sLoop		$00, $02, ICZ1_Loop1
	saVolFM		$03
	sPatFM		$02
	saTranspose	$E8
	dc.b nRst, $08, nG4, $04, nA4, nRst, nG4, nA4
	dc.b nRst, nG4, nRst, $08, nAb4, $03, sHold, nA4
	dc.b $0D, nG4, $04, nRst, $28, nG4, $04, nA4
	dc.b nRst, nG4, nA4, nRst, nG4, nRst, $08, nB4
	dc.b $03, sHold, nC5, $0D, nB4, $04, nRst, $08
	dc.b nA4, $08, nRst, $04, nG4, $08, nRst, $04
	dc.b nB4, $03, sHold, nC5, $11, nD5, $04, nRst
	dc.b $0C, nA4, $24, nRst, $0C, nF4, $04, nRst
	dc.b $08, nF4, $0C, nE4, $08, nF4, $04, nRst
	dc.b $08, nE4, $04, nD4, $30, nRst, $0C, nRst
	dc.b $08, nG4, $04, nA4, nRst, nG4, nA4, nRst
	dc.b nG4, nRst, $08, nAb4, $03, sHold, nA4, $0D
	dc.b nG4, $04, nRst, $28, nG4, $04, nA4, nRst
	dc.b nG4, nA4, nRst, nG4, nRst, $08, nB4, $03
	dc.b sHold, nC5, $0D, nB4, $04, nRst, $08, nA4
	dc.b $08, nRst, $04, nG4, $08, nRst, $04, nC5
	dc.b $10, nRst, $04, nD5, $04, nRst, $0C, nEb5
	dc.b $03, sHold, nE5, $2D, nRst, $0C, nA4, $04
	dc.b nG4, nA4, nB4, nA4, nB4, nC5, nB4, nC5
	dc.b nD5, nC5, nD5, nE5, nD5, nE5, nF5, nE5
	dc.b nF5, nG5, nF5, nG5, nA5, nG5, nA5
	saTranspose	$18
	dc.b nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst
	saVolFM		$FD
	sJump		ICZ1_Loop1
	dc.b $F2	; Unused

ICZ1_FM2:
	sPatFM		$01
	dc.b nD2, $04, nRst, nD2, nRst, $08, nD2, $04
	dc.b nD2, nRst, $08, nD2, $04, nRst, nD2, nRst
	dc.b $08, nD2, $04, nD2, nRst, $08, nD2, $04
	dc.b nRst, $08, nD2, $04, nRst, $08, nG2, $06
	dc.b nRst, $2A, nD2, $04, nRst, nD2, nRst, $08
	dc.b nD2, $04, nRst, $08, nD2, $04, nD2, nRst
	dc.b $08

ICZ1_Jump1:
	dc.b nG2, $04, nRst, $08, nG2, $04, nRst, nG2
	dc.b nRst, $08, nG2, $04, nG2, nRst, $08, nG2
	dc.b $05, nRst, $07, nD2, $05, nRst, $07, nG2
	dc.b $05, nRst, $07, nD2, $05, nRst, $07, nG2
	dc.b $04, nRst, $08, nG2, $04, nRst, nG2, nRst
	dc.b $08, nG2, $04, nG2, nRst, $08, nG2, $05
	dc.b nRst, $07, nD2, $05, nRst, $07, nG2, $05
	dc.b nRst, $07, nD2, $05, nRst, $07, nF2, $04
	dc.b nRst, $08, nF2, $04, nRst, nF2, nRst, $08
	dc.b nF2, $04, nF2, nRst, $08, nF2, $05, nRst
	dc.b $07, nC2, $05, nRst, $07, nF2, $05, nRst
	dc.b $07, nC2, $05, nRst, $07, nF2, $04, nRst
	dc.b $08, nF2, $04, nRst, nF2, nRst, $08, nF2
	dc.b $04, nF2, nRst, $08, nF2, $05, nRst, $07
	dc.b nC2, $05, nRst, $07, nF2, $05, nRst, $07
	dc.b nC2, $05, nRst, $07, nG2, $04, nRst, $08
	dc.b nG2, $04, nRst, nG2, nRst, $08, nG2, $04
	dc.b nG2, nRst, $08, nG2, $05, nRst, $07, nD2
	dc.b $05, nRst, $07, nG2, $05, nRst, $07, nD2
	dc.b $05, nRst, $07, nG2, $04, nRst, $08, nG2
	dc.b $04, nRst, nG2, nRst, $08, nG2, $04, nG2
	dc.b nRst, $08, nG2, $05, nRst, $07, nD2, $05
	dc.b nRst, $07, nG2, $05, nRst, $07, nD2, $05
	dc.b nRst, $07, nF2, $04, nRst, $08, nF2, $04
	dc.b nRst, nF2, nRst, $08, nF2, $04, nF2, nRst
	dc.b $08, nF2, $05, nRst, $07, nC2, $05, nRst
	dc.b $07, nF2, $05, nRst, $07, nC2, $05, nRst
	dc.b $07, nF2, $04, nRst, $08, nF2, $04, nRst
	dc.b nF2, nRst, $08, nF2, $04, nF2, nRst, $08
	dc.b nF2, $05, nRst, $07, nC2, $05, nRst, $07
	dc.b nA2, $05, nRst, $07, nF2, $05, nRst, $07
	sJump		ICZ1_Jump1
	dc.b $F2	; Unused

ICZ1_FM3:
	sPan		spLeft
	sPatFM		$02
	dc.b nRst, $01, nC5, $06, nRst, $02, nC5, $06
	dc.b nRst, nC5, $04, nC5, $06, nRst, nC5, $06
	dc.b nRst, $02, nC5, $06, nRst, nC5, $04, nC5
	dc.b $06, nRst, nC5, $06, nRst, nC5, nRst, nA4
	dc.b nRst, $2A, nA4, $06, nRst, $02, nA4, $06
	dc.b nRst, nA4, nRst, nA4, $04, nA4, $06, nRst
	dc.b $05

ICZ1_Jump2:
	dc.b nG3, $04, nRst, $08, nD3, $04, nRst, $04
	dc.b nG3, $04, nRst, $08, nD3, $04, nG3, nRst
	dc.b $08, nG3, $04, nRst, $20, nD3, $08, nRst
	dc.b $04, nG3, $04, nRst, $08, nD3, $04, nRst
	dc.b $04, nG3, $04, nRst, $08, nD3, $04, nG3
	dc.b nRst, $08, nD3, $08, nRst, $04, nG3, $04
	dc.b nRst, $08, nG3, $0C, nD3, nF3, $04, nRst
	dc.b $08, nD3, $04, nRst, $04, nF3, $04, nRst
	dc.b $08, nD3, $04, nF3, nRst, $08, nF3, $04
	dc.b nRst, $20, nD3, $08, nRst, $04, nF3, $04
	dc.b nRst, $08, nD3, $04, nRst, $04, nF3, $04
	dc.b nRst, $08, nD3, $04, nF3, nRst, $08, nD3
	dc.b $08, nRst, $04, nA3, $04, nRst, $08, nA3
	dc.b $0C, nD3
	sJump		ICZ1_Jump2
	dc.b $F2	; Unused

ICZ1_FM4:
	sPan		spRight
	sPatFM		$02
	dc.b nRst, $02, nF4, $06, nRst, $02, nF4, $06
	dc.b nRst, nF4, $04, nF4, $06, nRst, nF4, $06
	dc.b nRst, $02, nF4, $06, nRst, nF4, $04, nF4
	dc.b $06, nRst, nF4, $06, nRst, nF4, nRst, nD4
	dc.b nRst, $2A, nD4, $06, nRst, $02, nD4, $06
	dc.b nRst, nD4, nRst, nD4, $04, nD4, $06, nRst
	dc.b $04

ICZ1_Jump3:
	dc.b nB3, $04, nRst, $08, nD3, $04, nRst, $04
	dc.b nB3, $04, nRst, $08, nD3, $04, nB3, nRst
	dc.b $08, nB3, $04, nRst, $20, nD3, $08, nRst
	dc.b $04, nB3, $04, nRst, $08, nD3, $04, nRst
	dc.b $04, nB3, $04, nRst, $08, nD3, $04, nB3
	dc.b nRst, $08, nD3, $08, nRst, $04, nB3, $04
	dc.b nRst, $08, nB3, $0C, nD3, nA3, $04, nRst
	dc.b $08, nD3, $04, nRst, $04, nA3, $04, nRst
	dc.b $08, nD3, $04, nA3, nRst, $08, nA3, $04
	dc.b nRst, $20, nD3, $08, nRst, $04, nA3, $04
	dc.b nRst, $08, nD3, $04, nRst, $04, nA3, $04
	dc.b nRst, $08, nD3, $04, nA3, nRst, $08, nD3
	dc.b $08, nRst, $04, nC4, $04, nRst, $08, nC4
	dc.b $0C, nD3
	sJump		ICZ1_Jump3
	dc.b $F2	; Unused

ICZ1_FM5:
	dc.b nRst, $60, nRst, nRst, $09
	ssDetune	$05
	sJump		ICZ1_Loop1
	dc.b $F2	; Unused

ICZ1_DAC:
	dc.b dKick, $18, dKick, dKick, dKick
	sJump		ICZ1_DAC
	dc.b $F2	; Unused

ICZ1_PSG1:
	sVolEnvPSG	v05
	dc.b nRst, $60, nRst

ICZ1_Loop2:
	sCall		ICZ1_Call1
	sLoop		$00, $04, ICZ1_Loop2

ICZ1_Jump4:
	dc.b nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst

ICZ1_Loop3:
	sCall		ICZ1_Call1
	sLoop		$00, $06, ICZ1_Loop3
	sJump		ICZ1_Jump4

ICZ1_Call1:
	dc.b nG3, $04, nRst, $08, nB3, $08, nD4, $04
	dc.b nRst, $08, nC4, $04, nB3, nRst, $08, nG3
	dc.b $04, nRst, $20, nG3, $04, nRst, $08, nG3
	dc.b $04, nRst, $08, nB3, $08, nD4, $04, nRst
	dc.b $08, nC4, $04, nB3, nRst, $08, nG3, $04
	dc.b nRst, $08, nG3, $04, nRst, $08, nG3, $04
	dc.b nRst, $08, nG3, $04, nRst, $08, nF3, $04
	dc.b nRst, $08, nA3, $08, nC4, $04, nRst, $08
	dc.b nB3, $04, nA3, nRst, $08, nF3, $04, nRst
	dc.b $20, nF3, $04, nRst, $08, nF3, $04, nRst
	dc.b $08, nA3, $08, nC4, $04, nRst, $08, nB3
	dc.b $04, nA3, nRst, $08, nF3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b nF3, $04, nRst, $08
	sRet

ICZ1_PSG2:
	dc.b nRst, $09
	sJump		ICZ1_PSG1
	dc.b $F2	; Unused

ICZ1_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v02
	dc.b nB6, $04, nRst, $08
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04
	saVolPSG	$01
	dc.b nB6, $04, nRst, $08
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04
	saVolPSG	$01
	dc.b nB6, $04, nRst, $04
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04
	saVolPSG	$01
	dc.b nB6, $04
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04, nB6, $08, nRst, $04
	saVolPSG	$01
	dc.b nB6, $04, nRst, $2C
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04, nB6, $08, nRst, $04
	dc.b nB6, $08, nRst, $04, nB6, $08, nRst, $04
	saVolPSG	$02

ICZ1_Loop4:
	dc.b nB6, $04, nRst, $08
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04
	saVolPSG	$01
	dc.b nB6, $04, nRst, $08
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04
	saVolPSG	$01
	dc.b nB6, $04, nRst, $04
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04
	saVolPSG	$01
	dc.b nB6, $04
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04
	saVolPSG	$01
	dc.b nB6, $04, nRst, $08
	sLoop		$00, $03, ICZ1_Loop4
	dc.b nB6, $04, nRst, $08
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04
	saVolPSG	$01
	dc.b nB6, $04, nRst, $04
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04
	saVolPSG	$01
	dc.b nB6, $04
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04
	saVolPSG	$01
	dc.b nB6, $04, nRst, $04
	saVolPSG	$FF
	dc.b nB6, $08, nRst, $04
	saVolPSG	$01
	dc.b nB6, $04
	saVolPSG	$FF
	dc.b nB6, $08
	saVolPSG	$01
	dc.b nRst, $04
	sJump		ICZ1_Loop4
	dc.b $F2	; Unused

ICZ1_Patches:

	; Patch $00
	; $3A
	; $01, $02, $01, $00,	$53, $1C, $5D, $11
	; $02, $12, $14, $0F,	$02, $03, $01, $00
	; $1F, $4F, $1F, $0F,	$24, $20, $24, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $02, $00
	spRateScale	$01, $01, $00, $00
	spAttackRt	$13, $1D, $1C, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$02, $14, $12, $0F
	spSustainLv	$01, $01, $04, $00
	spDecayRt	$02, $01, $03, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $24, $20, $00

	; Patch $01
	; $3C
	; $01, $00, $00, $00,	$1F, $1F, $15, $1F
	; $11, $0D, $12, $05,	$07, $04, $09, $02
	; $55, $3A, $25, $1A,	$1A, $80, $07, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $15, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$11, $12, $0D, $05
	spSustainLv	$05, $02, $03, $01
	spDecayRt	$07, $09, $04, $02
	spReleaseRt	$05, $05, $0A, $0A
	spTotalLv	$1A, $07, $00, $00

	; Patch $02
	; $3D
	; $01, $02, $02, $04,	$94, $19, $19, $19
	; $0F, $0D, $0D, $0D,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$15, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $04
	spRateScale	$02, $00, $00, $00
	spAttackRt	$14, $19, $19, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $0D, $0D, $0D
	spSustainLv	$02, $01, $01, $01
	spDecayRt	$07, $04, $04, $04
	spReleaseRt	$05, $0A, $0A, $0A
	spTotalLv	$15, $00, $00, $00
