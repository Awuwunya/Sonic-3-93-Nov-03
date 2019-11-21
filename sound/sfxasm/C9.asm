C9_Header:
	sHeaderInit						; Z80 offset is $DAB7
	sHeaderPatch	C9_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, C9_FM5, $09, $05

C9_FM5:
	sPatFM		$00
	dc.b nC5, $02, nC5, $08
	sStop

C9_Patches:

	; Patch $00
	; $0B
	; $53, $55, $07, $0A,	$1F, $1F, $0F, $0F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $00, $00, $00, $06,	$10, $12, $10, $80
	spAlgorithm	$03
	spFeedback	$01
	spDetune	$05, $00, $05, $00
	spMultiple	$03, $07, $05, $0A
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $0F, $1F, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$00, $00, $00, $06
	spTotalLv	$10, $10, $12, $00
