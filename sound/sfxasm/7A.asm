7A_Header:
	sHeaderInit						; Z80 offset is $CBC4
	sHeaderPatch	7A_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $C0, 7A_PSG3, $0C, $00
	sHeaderSFX	$80, $05, 7A_FM5, $00, $03

7A_PSG3:
	sVolEnvPSG	v0D
	sNoisePSG	$E7
	dc.b nF5, $05, nA5, $05, sHold

7A_Loop1:
	dc.b $07
	saVolPSG	$01
	dc.b sHold
	sLoop		$00, $0F, 7A_Loop1
	sStop

7A_FM5:
	sPatFM		$00
	dc.b nCs3, $14
	sStop

7A_Patches:

	; Patch $00
	; $00
	; $00, $03, $02, $00,	$D9, $DF, $1F, $1F
	; $12, $11, $14, $0F,	$0A, $00, $0A, $0D
	; $FF, $FF, $FF, $FF,	$22, $07, $27, $80
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $02, $03, $00
	spRateScale	$03, $00, $03, $00
	spAttackRt	$19, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $14, $11, $0F
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$0A, $0A, $00, $0D
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$22, $27, $07, $00
