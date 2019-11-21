B2_Header:
	sHeaderInit						; Z80 offset is $D652
	sHeaderPatch	B2_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, B2_FM5, $00, $10
	sHeaderSFX	$80, $04, B2_FM4, $00, $0C

B2_FM5:
	dc.b nRst, $04

B2_FM4:
	sPatFM		$00
	ssModZ80	$01, $01, $4C, $2E
	dc.b nFs0, $08, nE0
	sStop

B2_Patches:

	; Patch $00
	; $33
	; $21, $11, $11, $11,	$0F, $1F, $04, $1F
	; $1F, $01, $05, $00,	$10, $09, $08, $00
	; $06, $03, $01, $1A,	$06, $10, $10, $80
	spAlgorithm	$03
	spFeedback	$06
	spDetune	$02, $01, $01, $01
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $04, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1F, $05, $01, $00
	spSustainLv	$00, $00, $00, $01
	spDecayRt	$10, $08, $09, $00
	spReleaseRt	$06, $01, $03, $0A
	spTotalLv	$06, $10, $10, $00
