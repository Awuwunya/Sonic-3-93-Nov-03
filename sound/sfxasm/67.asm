67_Header:
	sHeaderInit						; Z80 offset is $C8C3
	sHeaderPatch	67_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, 67_FM3, $2B, $00

67_FM3:
	sPatFM		$00

67_Loop1:
	dc.b nCs1, $02
	saVolFM		$01
	sLoop		$00, $08, 67_Loop1
	saVolFM		$E0
	sLoop		$00, $05, 67_Loop1
	sStop

67_Patches:

	; Patch $00
	; $35
	; $00, $00, $00, $00,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$15, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$15, $00, $00, $00
