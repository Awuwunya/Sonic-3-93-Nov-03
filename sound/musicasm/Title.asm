Title_Header:
	sHeaderInit						; Z80 offset is $A993
	sHeaderPatch	Title_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $02
	sHeaderDAC	Title_DAC
	sHeaderFM	Title_FM1, $18, $10
	sHeaderFM	Title_FM2, $18, $1B
	sHeaderFM	Title_FM3, $00, $05
	sHeaderFM	Title_FM4, $18, $18
	sHeaderFM	Title_FM5, $18, $13
	sHeaderPSG	Title_PSG1, $00, $01, $00, v00
	sHeaderPSG	Title_PSG2, $00, $01, $00, v00
	sHeaderPSG	Title_PSG3, $00, $04, $00, v00

Title_FM1:
	sPatFM		$00
	ssModZ80	$14, $01, $06, $06
	dc.b nRst, $60, nB3, $06, nRst, nB3, $0C, nC4
	dc.b $06, nRst, nC4, $0C, nD4, $0C, nRst, nD4
	dc.b $06, nRst, nBb3, $04, sHold, nB3, $0E, nRst
	dc.b $06, nB3, $0C, nC4, $06, nRst, nD4, $12
	dc.b nRst, $06, nD4, nRst, nD4, $12, nRst, $06
	saVolFM		$01
	dc.b nC4, $0C, nRst, nC4, nRst, nC4, nB3, nC4
	dc.b $06, nRst
	saVolFM		$01
	dc.b nAb3, $04, sHold, nA3, $5C, nRst, $0C
	saVolFM		$FE
	dc.b nB3, $06, nRst, nB3, $0C, nC4, $06, nRst
	dc.b nC4, $0C, nD4, $0C, nRst, nD4, $06, nRst
	dc.b nBb3, $04, sHold, nB3, $0E, nRst, $06, nB3
	dc.b $0C, nC4, $06, nRst, nD4, $12, nRst, $06
	dc.b nD4, nRst, nD4, $12, nRst, $06
	saVolFM		$FE
	dc.b nF4, $0C, nRst, nF4, nRst, nF4, nE4, nF4
	dc.b $06, nRst
	saVolFM		$FE
	dc.b nFs4, $04, sHold, nG4, $5C, nRst, $0C
	sStop

Title_FM2:
	sPatFM		$00
	ssModZ80	$15, $01, $06, $06
	dc.b nRst, $60, nRst, $03
	ssDetune	$03
	dc.b nG3, $06, nRst, nG3, $0C, nA3, $06, nRst
	dc.b nA3, $0C, nB3, $0C, nRst, nB3, $06, nRst
	dc.b nFs3, $04, sHold, nG3, $0E, nRst, $06, nG3
	dc.b $0C, nA3, $06, nRst, nB3, $12, nRst, $06
	dc.b nB3, nRst, nB3, $12, nRst, $06
	saVolFM		$01
	dc.b nA3, $0C, nRst, nA3, nRst, nA3, nG3, nA3
	dc.b $06, nRst
	saVolFM		$01
	dc.b nF3, $04, sHold, nFs3, $5C, nRst, $0C
	saVolFM		$FE
	dc.b nG3, $06, nRst, nG3, $0C, nA3, $06, nRst
	dc.b nA3, $0C, nB3, $0C, nRst, nB3, $06, nRst
	dc.b nFs3, $04, sHold, nG3, $0E, nRst, $06, nG3
	dc.b $0C, nA3, $06, nRst, nB3, $12, nRst, $06
	dc.b nB3, nRst, nB3, $12, nRst, $06
	saVolFM		$FE
	dc.b nC4, $0C, nRst, nC4, nRst, nC4, nB3, nC4
	dc.b $06, nRst
	saVolFM		$FE
	dc.b nBb3, $04, sHold, nB3, $5C, nRst, $0C
	sPatFM		$03
	saVolFM		$03
	dc.b nRst, $02
	sPan		spRight

Title_Loop1:
	sCall		Title_Call1
	sLoop		$00, $04, Title_Loop1
	sStop

Title_FM3:
	sPatFM		$01
	dc.b nRst, $06, nD2, $05, nRst, $01, nD2, $05
	dc.b nRst, $01, nRst, $06, nD2, $05, nRst, $0D
	dc.b nD2, $05, nRst, $01, nD2, $05, nRst, $07
	dc.b nD2, $05, nRst, $07, nD2, $05, nRst, $01
	dc.b nD2, $05, nRst, $01, nD2, $05, nRst, $01
	dc.b nD2, $05, nRst, $01
	sCall		Title_Call2
	sCall		Title_Call3
	dc.b nE2, $05, nRst, $01, nRst, $06
	sCall		Title_Call4
	dc.b nF2, $05, nRst, $01, nRst, $06
	sCall		Title_Call3
	dc.b nD2, $05, nRst, $01, nRst, $06
	sCall		Title_Call2
	sCall		Title_Call3
	dc.b nE2, $05, nRst, $01, nRst, $06
	sCall		Title_Call4
	dc.b nA2, $05, nRst, $01, nRst, $06, nG2, $05
	dc.b nRst, $01, nG2, $05, nRst, $01, nG2, $05
	dc.b nRst, $01, nRst, $06, nG2, $05, nRst, $01
	dc.b nRst, $06, nG2, $05, nRst, $01, nG2, $05
	dc.b nRst, $01, nRst, $06, nG2, $05, nRst, $01
	dc.b nG2, $05, nRst, $01, nRst, $06, nG2, $18
	sStop

Title_Call2:
	dc.b nG2, $05, nRst, $01, nG2, $05, nRst, $01
	dc.b nG2, $05, nRst, $01, nRst, $06, nG2, $05
	dc.b nRst, $01, nRst, $06, nG2, $05, nRst, $01
	dc.b nG2, $05, nRst, $01, nRst, $06, nG2, $05
	dc.b nRst, $01, nG2, $05, nRst, $01, nRst, $06
	dc.b nG2, $05, nRst, $01, nRst, $06, nG2, $05
	dc.b nRst, $01, nRst, $06
	sRet

Title_Call3:
	dc.b nD2, $05, nRst, $01, nD2, $05, nRst, $01
	dc.b nD2, $05, nRst, $01, nRst, $06, nD2, $05
	dc.b nRst, $01, nRst, $06, nD2, $05, nRst, $01
	dc.b nD2, $05, nRst, $01, nRst, $06, nD2, $05
	dc.b nRst, $01, nD2, $05, nRst, $01, nRst, $06
	dc.b nD2, $05, nRst, $01, nRst, $06
	sRet

Title_Call4:
	dc.b nF2, $05, nRst, $01, nF2, $05, nRst, $01
	dc.b nF2, $05, nRst, $01, nRst, $06, nF2, $05
	dc.b nRst, $01, nRst, $06, nF2, $05, nRst, $01
	dc.b nF2, $05, nRst, $01, nRst, $06, nF2, $05
	dc.b nRst, $01, nF2, $05, nRst, $01, nRst, $06
	dc.b nF2, $05, nRst, $01, nRst, $06
	sRet

Title_FM4:
	sPatFM		$03
	dc.b nRst, $60

Title_Loop2:
	sCall		Title_Call5
	sLoop		$00, $08, Title_Loop2

Title_Loop3:
	sCall		Title_Call6
	sLoop		$00, $04, Title_Loop3

Title_Loop4:
	sCall		Title_Call7
	sLoop		$00, $04, Title_Loop4

Title_Loop5:
	sCall		Title_Call5
	sLoop		$00, $08, Title_Loop5

Title_Loop6:
	sCall		Title_Call6
	sLoop		$00, $04, Title_Loop6

Title_Loop7:
	sCall		Title_Call5
	sLoop		$00, $04, Title_Loop7
	sPan		spLeft

Title_Loop8:
	sCall		Title_Call1
	sLoop		$00, $04, Title_Loop8
	sStop

Title_Call5:
	dc.b nG4, $06, nF4, nD4, nF4
	sRet

Title_Call6:
	dc.b nA4, $06, nG4, nE4, nG4
	sRet

Title_Call7:
	dc.b nD4, $06, nC4, nA3, nC4
	sRet

Title_Call1:
	dc.b nG4, $06
	saVolFM		$04
	dc.b nF4
	saVolFM		$04
	dc.b nD4
	saVolFM		$04
	dc.b nF4
	saVolFM		$04
	sRet

Title_FM5:
	dc.b nRst, $08
	saVolFM		$05
	sJump		Title_FM1

Title_PSG1:
	sVolEnvPSG	v0A
	dc.b nRst, $60, nG3, $60, nA3, nE3, nD3, nG3
	dc.b nA3, nC4, nD4
	sStop

Title_PSG2:
	sVolEnvPSG	v0A
	dc.b nRst, $60, nD3, $60, nF3, nC3, nFs3, nD3
	dc.b nF3, nA3, nB3
	sStop

Title_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v02

Title_Loop9:
	dc.b nB6, $06, nB6
	saVolPSG	$FC
	dc.b nB6, $06, nB6
	saVolPSG	$04
	dc.b nB6, $06, nB6
	saVolPSG	$FC
	dc.b nB6, $06, nB6
	saVolPSG	$04
	dc.b nB6, $06, nB6
	saVolPSG	$FC
	dc.b nB6, $06, nB6
	saVolPSG	$04
	dc.b nB6, $06, nB6
	saVolPSG	$FC
	dc.b nB6, $06, nB6
	saVolPSG	$04
	sLoop		$00, $08, Title_Loop9
	dc.b nB6, $06, nB6
	saVolPSG	$FC
	dc.b nB6, $06, nB6
	saVolPSG	$04
	dc.b nB6, $06, nB6
	saVolPSG	$FC
	dc.b nB6, $06, nB6
	saVolPSG	$04
	dc.b nB6, $06, nB6
	saVolPSG	$FC
	dc.b nB6, $06, nB6, nB6, nB6, nB6, nB6
	sStop

Title_DAC:
	dc.b dKick, $06, dSnare, dSnare, nRst, dSnare, nRst, $0C
	dc.b dSnare, $06, dSnare, nRst, dSnare, nRst, dSnare, dSnare
	dc.b dSnare, dSnare, dKick, $06, nRst, $12, dSnare, $06
	dc.b nRst, $12, dKick, $06, nRst, $12, dSnare, $06
	dc.b nRst, $12, dKick, $06, nRst, $12, dSnare, $06
	dc.b nRst, $12, dKick, $06, nRst, $12, dSnare, $06
	dc.b nRst, $0C, dSnare, $06, dKick, $06, nRst, $12
	dc.b dSnare, $06, nRst, $12, dKick, $06, nRst, $12
	dc.b dSnare, $06, nRst, $12, dKick, $06, nRst, $12
	dc.b dSnare, $06, nRst, $12, dKick, $06, nRst, dSnare
	dc.b nRst, dSnare, $06, dSnare, nRst, dSnare, dKick, $06
	dc.b nRst, $12, dSnare, $06, nRst, $12, dKick, $06
	dc.b nRst, $12, dSnare, $06, nRst, $12, dKick, $06
	dc.b nRst, $12, dSnare, $06, nRst, $12, dKick, $06
	dc.b nRst, $12, dSnare, $06, nRst, $0C, dSnare, $06
	dc.b dKick, $06, nRst, $12, dSnare, $06, nRst, $12
	dc.b dKick, $06, nRst, $12, dSnare, $06, nRst, $12
	dc.b dSnare, $06, dSnare, dSnare, nRst, dSnare, nRst, dSnare
	dc.b dSnare, nRst, dSnare, dSnare, dSnare, dSnare, dSnare, dSnare
	dc.b dSnare
	sStop

Title_Patches:

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
	; $3C
	; $71, $31, $12, $11,	$17, $1F, $19, $2F
	; $04, $01, $07, $01,	$00, $00, $00, $00
	; $F7, $F8, $F7, $F8,	$1D, $84, $19, $84
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$07, $01, $03, $01
	spMultiple	$01, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $19, $1F, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $07, $01, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$07, $07, $08, $08
	spTotalLv	$1D, $19, $04, $04

	; Patch $03
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
