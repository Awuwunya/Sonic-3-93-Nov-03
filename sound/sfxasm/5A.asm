5A_Header:
	sHeaderInit						; Z80 offset is $C6CE
	sHeaderPatch	5A_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $02, 5A_FM3, $00, $03
	sHeaderSFX	$80, $C0, 5A_PSG3, $00, $00

5A_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $FA, $00
	dc.b nC1, $50
	sStop

5A_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v0D
	dc.b nEb5, $08

5A_Loop1:
	dc.b sHold, $08
	saVolPSG	$01
	sLoop		$00, $0A, 5A_Loop1
	sStop

5A_Patches:

	; Patch $00
	; $38
	; $01, $33, $33, $02,	$1F, $1F, $1F, $1F
	; $11, $00, $10, $00,	$00, $00, $00, $06
	; $FF, $0F, $1F, $0F,	$00, $13, $10, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$00, $03, $03, $00
	spMultiple	$01, $03, $03, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$11, $10, $00, $00
	spSustainLv	$0F, $01, $00, $00
	spDecayRt	$00, $00, $00, $06
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $10, $13, $00
