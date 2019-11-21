84_Header:
	sHeaderInit						; Z80 offset is $CDC5
	sHeaderPatch	84_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 84_FM5, $02, $07

84_FM5:
	sPatFM		$00
	dc.b nF0, $04, $03, $03, nC0, $1B
	sLoop		$00, $04, 84_FM5
	sStop

84_Patches:

	; Patch $00
	; $10
	; $06, $03, $03, $06,	$14, $16, $14, $18
	; $15, $19, $0C, $11,	$1E, $0F, $0E, $10
	; $13, $0D, $0E, $9C,	$00, $10, $0A, $80
	spAlgorithm	$00
	spFeedback	$02
	spDetune	$00, $00, $00, $00
	spMultiple	$06, $03, $03, $06
	spRateScale	$00, $00, $00, $00
	spAttackRt	$14, $14, $16, $18
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$15, $0C, $19, $11
	spSustainLv	$01, $00, $00, $09
	spDecayRt	$1E, $0E, $0F, $10
	spReleaseRt	$03, $0E, $0D, $0C
	spTotalLv	$00, $0A, $10, $00
