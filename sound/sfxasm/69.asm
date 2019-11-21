69_Header:
	sHeaderInit						; Z80 offset is $C922
	sHeaderPatch	69_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 69_FM5, $00, $00

69_FM5:
	sPatFM		$00
	dc.b nBb5, $30
	sStop

69_Patches:

	; Patch $00
	; $00
	; $53, $03, $1F, $20,	$1F, $1F, $1F, $10
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $00, $00, $00, $08,	$10, $23, $10, $80
	spAlgorithm	$00
	spFeedback	$00
	spDetune	$05, $01, $00, $02
	spMultiple	$03, $0F, $03, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $10
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$00, $00, $00, $08
	spTotalLv	$10, $10, $23, $00
