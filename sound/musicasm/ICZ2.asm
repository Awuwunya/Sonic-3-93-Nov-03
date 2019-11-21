ICZ2_Header:
	sHeaderInit						; Z80 offset is $CA37
	sHeaderPatch	ICZ2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $23
	sHeaderDAC	ICZ2_DAC
	sHeaderFM	ICZ2_FM1, $18, $18
	sHeaderFM	ICZ2_FM2, $00, $0D
	sHeaderFM	ICZ2_FM3, $0C, $1E
	sHeaderFM	ICZ2_FM4, $0C, $1E
	sHeaderFM	ICZ2_FM5, $18, $20
	sHeaderPSG	ICZ2_PSG1, $00, $03, $00, v00
	sHeaderPSG	ICZ2_PSG2, $00, $05, $00, v00
	sHeaderPSG	ICZ2_PSG3, $00, $04, $00, v00

ICZ2_FM1:
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
	saVolFM		$FB

ICZ2_Loop1:
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
	sLoop		$00, $02, ICZ2_Loop1
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
	sJump		ICZ2_Loop1
	dc.b $F2	; Unused

ICZ2_FM2:
	sPatFM		$01
	dc.b nD2, $04, nRst, nD2, nRst, $08, nD2, $04
	dc.b nD2, nRst, $08, nD2, $04, nRst, nD2, nRst
	dc.b $08, nD2, $04, nD2, nRst, $08, nD2, $04
	dc.b nRst, $08, nD2, $04, nRst, $08, nG2, $06
	dc.b nRst, $2A, nD2, $04, nRst, nD2, nRst, $08
	dc.b nD2, $04, nRst, $08, nD2, $04, nD2, nRst
	dc.b $08

ICZ2_Jump1:
	dc.b nG2, $04, nRst, $08, nG2, $04, nRst, $08
	dc.b nG2, $04, nRst, $08, nD2, nG2, $04, nRst
	dc.b $08, nG2, $04, nG2, nRst, $08, nG2, $0C
	dc.b nD2, nG2, $04, nRst, $08, nG2, $04, nRst
	dc.b $08, nG2, $04, nRst, $08, nD2, nG2, $04
	dc.b nRst, $08, nG2, $04, nG2, nRst, $08, nG2
	dc.b $0C, nD2, nF2, $04, nRst, $08, nF2, $04
	dc.b nRst, $08, nF2, $04, nRst, $08, nD2, nF2
	dc.b $04, nRst, $08, nF2, $04, nF2, nRst, $08
	dc.b nF2, $0C, nD2, nF2, $04, nRst, $08, nF2
	dc.b $04, nRst, $08, nF2, $04, nRst, $08, nD2
	dc.b nA2, $04, nRst, $08, nA2, $04, nA2, nRst
	dc.b $08, nA2, $0C, nD2
	sJump		ICZ2_Jump1
	dc.b $F2	; Unused

ICZ2_FM3:
	sPan		spLeft
	sPatFM		$02
	dc.b nRst, $01, nC5, $06, nRst, $02, nC5, $06
	dc.b nRst, nC5, $04, nC5, $06, nRst, nC5, $06
	dc.b nRst, $02, nC5, $06, nRst, nC5, $04, nC5
	dc.b $06, nRst, nC5, $06, nRst, nC5, nRst, nA4
	dc.b nRst, $2A, nA4, $06, nRst, $02, nA4, $06
	dc.b nRst, nA4, nRst, nA4, $04, nA4, $06, nRst
	dc.b $05

ICZ2_Jump2:
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
	sJump		ICZ2_Jump2
	dc.b $F2	; Unused

ICZ2_FM4:
	sPan		spRight
	sPatFM		$02
	dc.b nRst, $02, nF4, $06, nRst, $02, nF4, $06
	dc.b nRst, nF4, $04, nF4, $06, nRst, nF4, $06
	dc.b nRst, $02, nF4, $06, nRst, nF4, $04, nF4
	dc.b $06, nRst, nF4, $06, nRst, nF4, nRst, nD4
	dc.b nRst, $2A, nD4, $06, nRst, $02, nD4, $06
	dc.b nRst, nD4, nRst, nD4, $04, nD4, $06, nRst
	dc.b $04

ICZ2_Jump3:
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
	sJump		ICZ2_Jump3
	dc.b $F2	; Unused

ICZ2_FM5:
	dc.b nRst, $60, nRst, nRst, $09
	ssDetune	$05
	sJump		ICZ2_Loop1
	dc.b $F2	; Unused

ICZ2_DAC:
	dc.b dKick, $04, nRst, $10, dKick, $04, dSnare, $04
	dc.b nRst, $08, dKick, $04, nRst, $14, dKick, $04
	dc.b nRst, $08, dSnare, $04, nRst, $08, dKick, $04
	dc.b nRst, $08, dKick, $04, nRst, $14, dSnare, $04
	dc.b nRst, $10, dSnare, $04, dSnare, $04, nRst, dSnare
	dc.b nRst, $08, dSnare, $04, dSnare, nRst, dSnare, dSnare
	dc.b nRst, dSnare

ICZ2_Jump5:
	dc.b dKick, $04, nRst, $10, dKick, $04, dSnare, nRst
	dc.b $08, dKick, $04, nRst, $08, dKick, $04, nRst
	dc.b dSnare, dKick, nRst, $08, dSnare, $04, nRst, $08
	dc.b dKick, $04, nRst, $08, dKick, $04, nRst, $10
	dc.b dKick, $04, dSnare, nRst, $08, dKick, $04, nRst
	dc.b $08, dKick, $04, nRst, dSnare, dKick, nRst, $08
	dc.b dSnare, $04, nRst, $08, dKick, $04, nRst, dSnare
	dc.b dKick, $04, nRst, $10, dKick, $04, dSnare, nRst
	dc.b $08, dKick, $04, nRst, $08, dKick, $04, nRst
	dc.b dSnare, dKick, nRst, $08, dSnare, $04, nRst, $08
	dc.b dKick, $04, nRst, $08, dKick, $04, nRst, $10
	dc.b dKick, $04, dSnare, nRst, $08, dKick, $04, nRst
	dc.b $08, dKick, $04, nRst, dSnare, dKick, nRst, $08
	dc.b dSnare, $04, nRst, $08, dKick, $04, nRst, dSnare
	dc.b dKick, $04, nRst, $10, dKick, $04, dSnare, nRst
	dc.b $08, dKick, $04, nRst, $08, dKick, $04, nRst
	dc.b dSnare, dKick, nRst, $08, dSnare, $04, nRst, $08
	dc.b dKick, $04, nRst, $08, dKick, $04, nRst, $10
	dc.b dKick, $04, dSnare, nRst, $08, dKick, $04, nRst
	dc.b $08, dKick, $04, nRst, dSnare, dKick, nRst, $08
	dc.b dSnare, $04, nRst, $08, dKick, $04, nRst, dSnare
	dc.b dKick, $04, nRst, $10, dKick, $04, dSnare, nRst
	dc.b $08, dKick, $04, nRst, $08, dKick, $04, nRst
	dc.b dSnare, dKick, nRst, $08, dSnare, $04, nRst, $08
	dc.b dKick, $04, nRst, $08, dKick, $04, nRst, $08
	dc.b dSnare, $04, nRst, $08, dSnare, $04, nRst, dSnare
	dc.b nRst, $08, dSnare, $04, dSnare, nRst, $08, dSnare
	dc.b $04, nRst, dSnare, dSnare, nRst, dSnare, dSnare, nRst
	dc.b $08
	sJump		ICZ2_Jump5
	dc.b $F2	; Unused

ICZ2_PSG1:
	sVolEnvPSG	v05
	dc.b nRst, $60, nRst

ICZ2_Loop2:
	sCall		ICZ2_Call1
	sLoop		$00, $04, ICZ2_Loop2

ICZ2_Jump4:
	dc.b nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst

ICZ2_Loop3:
	sCall		ICZ2_Call1
	sLoop		$00, $06, ICZ2_Loop3
	sJump		ICZ2_Jump4

ICZ2_Call1:
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

ICZ2_PSG2:
	dc.b nRst, $09
	sJump		ICZ2_PSG1
	dc.b $F2	; Unused

ICZ2_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v02
	dc.b nB6, $04, nRst, $08
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04
	saVolPSG	$04
	dc.b nB6, $04, nRst, $08
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04
	saVolPSG	$04
	dc.b nB6, $04, nRst, $04
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04
	saVolPSG	$04
	dc.b nB6, $04
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04, nB6, $08, nRst, $04
	saVolPSG	$04
	dc.b nB6, $04, nRst, $2C
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04, nB6, $08, nRst, $04
	dc.b nB6, $08, nRst, $04, nB6, $08, nRst, $04
	saVolPSG	$04

ICZ2_Loop4:
	dc.b nB6, $04, nRst, $08
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04
	saVolPSG	$04
	dc.b nB6, $04, nRst, $08
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04
	saVolPSG	$04
	dc.b nB6, $04, nRst, $04
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04
	saVolPSG	$04
	dc.b nB6, $04
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04
	saVolPSG	$04
	dc.b nB6, $04, nRst, $08
	sLoop		$00, $03, ICZ2_Loop4
	dc.b nB6, $04, nRst, $08
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04
	saVolPSG	$04
	dc.b nB6, $04, nRst, $04
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04
	saVolPSG	$04
	dc.b nB6, $04
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04
	saVolPSG	$04
	dc.b nB6, $04, nRst, $04
	saVolPSG	$FC
	dc.b nB6, $08, nRst, $04
	saVolPSG	$04
	dc.b nB6, $04
	saVolPSG	$FC
	dc.b nB6, $08
	saVolPSG	$04
	dc.b nRst, $04
	sJump		ICZ2_Loop4
	dc.b $F2	; Unused

ICZ2_Patches:

	; Patch $00
	; $3D
	; $01, $00, $04, $02,	$1F, $1F, $1F, $1F
	; $10, $06, $06, $06,	$01, $06, $06, $06
	; $35, $1A, $18, $1A,	$12, $82, $82, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $04, $00, $02
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
	; $01, $02, $02, $03,	$94, $19, $19, $19
	; $0F, $0D, $0D, $0D,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$15, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $03
	spRateScale	$02, $00, $00, $00
	spAttackRt	$14, $19, $19, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $0D, $0D, $0D
	spSustainLv	$02, $01, $01, $01
	spDecayRt	$07, $04, $04, $04
	spReleaseRt	$05, $0A, $0A, $0A
	spTotalLv	$15, $00, $00, $00
