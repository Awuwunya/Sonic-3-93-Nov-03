GameOver_Header:
	sHeaderInit						; Z80 offset is $B83C
	sHeaderPatch	GameOver_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $05
	sHeaderDAC	GameOver_DAC
	sHeaderFM	GameOver_FM1, $00, $11
	sHeaderFM	GameOver_FM2, $00, $11
	sHeaderFM	GameOver_FM3, $F4, $0E
	sHeaderFM	GameOver_FM4, $00, $12
	sHeaderFM	GameOver_FM5, $00, $12
	sHeaderPSG	GameOver_PSG1, $F4, $03, $03, v00
	sHeaderPSG	GameOver_PSG2, $E8, $03, $03, v00
	sHeaderPSG	GameOver_PSG3, $00, $00, $00, v03

GameOver_FM1:
	sPan		spLeft
	sPatFM		$00
	ssModZ80	$07, $01, $02, $05
	dc.b nF2, $30, nC3, $20, nF2, $10, nG2, $30
	dc.b nD3, $20, nG2, $10, nEb3, $18, nD3, nCs3
	dc.b nC3, nAb3, $08, nG3, nFs3, nF3, nE3, nEb3
	dc.b nD3, nCs3, nC3, nB3, nBb3, nA3
	ssModZ80	$07, $01, $09, $05
	dc.b nAb2, $60
	sStop

GameOver_FM2:
	sPan		spRight
	sPatFM		$00
	ssModZ80	$07, $01, $01, $05
	dc.b nRst, $01, nF2, $30, nC3, $20, nF2, $10
	dc.b nG2, $30, nD3, $20, nG2, $10, nG3, $18
	dc.b nFs3, nF3, nE3, nAb3, $08, nG3, nFs3, nF3
	dc.b nE3, nEb3, nD3, nCs3, nC3, nB3, nBb3, nA3
	ssModZ80	$07, $01, $09, $05
	dc.b nAb2, $60
	sStop

GameOver_FM3:
	sPatFM		$01
	ssModZ80	$07, $01, $0F, $05
	dc.b nC5, $30, nF5, $20, nC5, $10, nB4, $30
	dc.b nF5, $20, nB4, $10, nBb4, $08, nEb5, nBb4
	dc.b nA4, nD5, nA4, nAb4, nCs5, nAb4, nG4, nC5
	dc.b nG4, nCs5, nC5, nB4, nBb4, nA4, nAb4, nG4
	dc.b nFs4, nF4, nE4, nEb4, nD4
	ssModZ80	$28, $01, $18, $05
	dc.b nCs4, $60
	sPatFM		$00
	dc.b nRst, $01
	sStop

GameOver_FM4:
	sPan		spLeft
	sPatFM		$03
	saTranspose	$E8
	ssModZ80	$07, $01, $03, $05
	dc.b nC5, $30, nF5, $20, nC5, $10, nB4, $30
	dc.b nF5, $20, nB4, $10, nBb4, $08, nEb5, nBb4
	dc.b nA4, nD5, nA4, nAb4, nCs5, nAb4, nG4, nC5
	dc.b nG4
	sPatFM		$01
	saTranspose	$18
	ssModZ80	$07, $01, $0F, $05
	sPan		spRight
	dc.b nG5, $08, nG4, nD5
	sPan		spCenter
	dc.b nE4, nA4, nB3
	sPan		spLeft
	dc.b nD4, nE3, nA3
	sPan		spCenter
	dc.b nB2, nE3, nF2
	sPan		spLeft
	dc.b nAb2, $60
	sPatFM		$00
	dc.b nRst, $01
	sStop

GameOver_FM5:
	sPan		spRight
	sPatFM		$04
	saVolFM		$FB
	ssModZ80	$07, $01, $03, $05
	dc.b nC5, $30, nF5, $20, nC5, $10, nB4, $30
	dc.b nF5, $20, nB4, $10, nBb4, $08, nEb5, nBb4
	dc.b nA4, nD5, nA4, nAb4, nCs5, nAb4, nG4, nC5
	dc.b nG4
	sPatFM		$02
	saVolFM		$05
	ssModZ80	$07, $01, $0F, $05
	dc.b nG5, $08, nA4, nD5
	sPan		spCenter
	dc.b nE4, nA4, nB3
	sPan		spLeft
	dc.b nD4, nE3, nA3
	sPan		spCenter
	dc.b nA2, nE3, nE2
	sPan		spRight
	dc.b nAb2, $60
	sPatFM		$00
	dc.b nRst, $01
	sStop

GameOver_PSG1:
	sVolEnvPSG	v09
	dc.b nA3, $60, nG3, nBb4, $08, nEb5, nBb4, nA4
	dc.b nD5, nA4, nAb4, nCs5, nAb4, nG4, nC5, nG4
	dc.b nCs5, nC5, nB4, nBb4, nA4, nAb4, nG4, nFs4
	dc.b nF4, nE4, nEb4, nD4, nCs4, $60
	sStop

GameOver_PSG2:
	sVolEnvPSG	v09
	dc.b nC5, $30, nF5, $20, nC5, $10, nB4, $30
	dc.b nF5, $20, nB4, $10, nRst, $60, nRst, $60
	sModEnv		$FF
	dc.b nCs4, $60
	sStop

GameOver_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v01
	dc.b nB6, $10, nB6, nB6, nB6, nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6, nB6, nB6, nB6, nB6
	sVolEnvPSG	v02
	dc.b nB6, nB6, $18, nB6, nB6, nB6, nB6, nB6
	dc.b nB6, nB6, nB6, $60
	sStop

GameOver_DAC:
	dc.b dKick, $30, dSnare, $20, dKick, $10, dKick, $20
	dc.b dKick, $10, dSnare, dKick, dKick, dKick, $08, dSnare
	dc.b dSnare, dKick, dHighTom, dHighTom, dKick, dMidTom, dMidTom, dKick
	dc.b dLowTom, dLowTom, dElectricHighTom, dElectricHighTom, dKick, dSnare, dElectricMidTom, dElectricMidTom
	dc.b dKick, dElectricLowTom, dElectricLowTom, dSnare, dElectricFloorTom, dElectricFloorTom, dCrashCymbal, $60
	sStop

GameOver_Patches:

	; Patch $00
	; $31
	; $34, $35, $30, $31,	$DF, $DF, $9F, $9F
	; $0C, $07, $0C, $09,	$07, $07, $07, $08
	; $2F, $1F, $1F, $2F,	$17, $32, $14, $80
	spAlgorithm	$01
	spFeedback	$06
	spDetune	$03, $03, $03, $03
	spMultiple	$04, $00, $05, $01
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0C, $07, $09
	spSustainLv	$02, $01, $01, $02
	spDecayRt	$07, $07, $07, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $14, $32, $00

	; Patch $01
	; $3A
	; $51, $08, $51, $02,	$1E, $1E, $1E, $10
	; $1F, $1F, $1F, $0F,	$00, $00, $00, $02
	; $0F, $0F, $0F, $1F,	$18, $24, $22, $81
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$05, $05, $00, $00
	spMultiple	$01, $01, $08, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1E, $1E, $1E, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1F, $1F, $1F, $0F
	spSustainLv	$00, $00, $00, $01
	spDecayRt	$00, $00, $00, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $22, $24, $01

	; Patch $02
	; $3C
	; $01, $02, $0F, $04,	$8D, $52, $9F, $1F
	; $09, $00, $00, $0D,	$00, $00, $00, $00
	; $23, $08, $02, $F7,	$15, $80, $1D, $87
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $0F, $02, $04
	spRateScale	$02, $02, $01, $00
	spAttackRt	$0D, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$09, $00, $00, $0D
	spSustainLv	$02, $00, $00, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$03, $02, $08, $07
	spTotalLv	$15, $1D, $00, $07

	; Patch $03
	; $3A
	; $01, $07, $01, $01,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $07
	; $1F, $FF, $1F, $0F,	$1C, $28, $27, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spSustainLv	$01, $01, $0F, $00
	spDecayRt	$00, $00, $00, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1C, $27, $28, $00

	; Patch $04
	; $1F
	; $66, $31, $53, $22,	$1C, $98, $1F, $1F
	; $12, $0F, $0F, $0F,	$00, $00, $00, $00
	; $FF, $0F, $0F, $0F,	$8C, $8D, $8A, $8B
	spAlgorithm	$07
	spFeedback	$03
	spDetune	$06, $05, $03, $02
	spMultiple	$06, $03, $01, $02
	spRateScale	$00, $00, $02, $00
	spAttackRt	$1C, $1F, $18, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $0F, $0F, $0F
	spSustainLv	$0F, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0C, $0A, $0D, $0B
