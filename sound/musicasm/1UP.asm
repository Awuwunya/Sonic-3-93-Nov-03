1UP_Header:
	sHeaderInit						; Z80 offset is $C76A
	sHeaderPatch	1UP_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $77
	sHeaderDAC	1UP_DAC
	sHeaderFM	1UP_FM1, $0C, $07
	sHeaderFM	1UP_FM2, $0C, $15
	sHeaderFM	1UP_FM3, $00, $07
	sHeaderFM	1UP_FM4, $18, $15
	sHeaderFM	1UP_FM5, $0C, $0C
	sHeaderPSG	1UP_PSG1, $00, $02, $00, v00
	sHeaderPSG	1UP_PSG2, $00, $02, $00, v00
	sHeaderPSG	1UP_PSG3, $00, $00, $00, v00

1UP_FM1:
	sPatFM		$01
	ssModZ80	$14, $01, $06, $06
	dc.b nB3, $03, nRst, nB3, $06, nC4, $03, nRst
	dc.b nC4, $06, nD4, $03, sHold, nEb4, $02, sHold
	dc.b nE4, $02, sHold, nF4, $02, sHold, nFs4, $09
	dc.b nD4, $06, nG4, $03, nRst, nG4, $02, nRst
	dc.b $01, nG4, $02, nRst, $01, nG4, $04, nRst
	dc.b $02, nG4, $04, nRst, $02, nG4, $0C, nRst
	dc.b $01
	sStop

1UP_FM2:
	sPatFM		$03
	ssModZ80	$15, $01, $06, $06
	dc.b nRst, $01
	ssDetune	$03
	dc.b nG3, $03, nRst, nG3, $06, nA3, $03, nRst
	dc.b nA3, $06, nB3, $09, nRst, $03, nA3, $09
	dc.b nRst, $03, nG3, $03, nRst, nG3, $02, nRst
	dc.b $01, nG3, $02, nRst, $01, nG3, $04, nRst
	dc.b $02, nG3, $04, nRst, $02, nG3, $0C, nRst
	dc.b $01
	sStop

1UP_FM3:
	sPatFM		$00
	dc.b nG2, $02, nRst, $01, nRst, $03, nG3, $02
	dc.b nRst, $01, nG3, $02, nRst, $01, nA2, $02
	dc.b nRst, $01, nRst, $03, nA3, $02, nRst, $01
	dc.b nA3, $02, nRst, $01, nB2, $02, nRst, $01
	dc.b nRst, $03, nB3, $02, nRst, $01, nB3, $02
	dc.b nRst, $01, nA2, $02, nRst, $01, nRst, $03
	dc.b nA3, $02, nRst, $01, nA3, $02, nRst, $01
	dc.b nG2, $05, nRst, $01, nD2, $05, nRst, $01
	dc.b nG2, $05, nRst, $01, nD2, $05, nRst, $01
	dc.b nG2, $0C
	sStop

1UP_FM4:
	sPatFM		$03
	dc.b nG4, $03, nF4, nD4, nF4, nG4, $03, nF4
	dc.b nD4, nF4, nG4, $03, nF4, nD4, nF4, nA4
	dc.b $03, nG4, nE4, nG4, nG4, $01, sHold, nAb4
	dc.b sHold, nA4, sHold, nBb4, sHold, nB4, sHold, nC5
	dc.b sHold, nCs5, sHold, nD5, sHold, nEb5, sHold, nE5
	dc.b sHold, nF5, sHold, nFs5, sHold, nG5, sHold, nFs5
	dc.b sHold, nF5, sHold, nE5, sHold, nEb5, sHold, nD5
	dc.b sHold, nCs5, sHold, nC5, sHold, nB4, sHold, nBb4
	dc.b sHold, nA4, sHold, nAb4, sHold, nG4, $0C, nRst
	dc.b $01
	sStop

1UP_FM5:
	dc.b nRst, $04
	sJump		1UP_FM1
	dc.b $F2	; Unused

1UP_PSG1:
	sVolEnvPSG	v0A
	dc.b nG3, $18, nA3, $18, nB3, $24
	sStop

1UP_PSG2:
	sVolEnvPSG	v0A
	dc.b nD4, $18, nFs4, $18, nG4, $24
	sStop

1UP_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v02
	dc.b nB6, $03, nB6
	saVolPSG	$FC
	dc.b nB6, $03, nB6
	saVolPSG	$04
	dc.b nB6, $03, nB6
	saVolPSG	$FC
	dc.b nB6, $03, nB6
	saVolPSG	$04
	dc.b nB6, $03, nB6
	saVolPSG	$FC
	dc.b nB6, $03, nB6
	saVolPSG	$04
	dc.b nB6, $03, nB6
	saVolPSG	$FC
	dc.b nB6, $03, nB6
	saVolPSG	$04
	dc.b nB6, $03, nB6
	saVolPSG	$FC
	dc.b nB6, $03, nB6
	saVolPSG	$04
	dc.b nB6, $03, nB6
	saVolPSG	$FC
	dc.b nB6, $03, nB6
	saVolPSG	$04
	dc.b nB6, $0C
	sStop

1UP_DAC:
	dc.b nRst, $30, dHiTimpani, $06, dLowTimpani, dHiTimpani, dLowTimpani, dHiTimpani
	dc.b $0C
	sStop

1UP_Patches:

	; Patch $00
	; $3B
	; $0D, $01, $00, $00,	$9F, $1F, $1F, $1F
	; $0E, $0D, $09, $09,	$00, $00, $00, $00
	; $DF, $DF, $DF, $DF,	$33, $15, $17, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$0D, $00, $01, $00
	spRateScale	$02, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $09, $0D, $09
	spSustainLv	$0D, $0D, $0D, $0D
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$33, $17, $15, $00

	; Patch $01
	; $3A
	; $01, $07, $01, $01,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $07
	; $1F, $FF, $1F, $0F,	$18, $28, $27, $80
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
	spTotalLv	$18, $27, $28, $00

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
