98_Header:
	sHeaderInit						; Z80 offset is $D199
	sHeaderPatch	98_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, 98_FM5, $00, $06
	sHeaderSFX	$80, $04, 98_FM4, $00, $06

98_FM5:
	dc.b nE0, $03, nC0, $07, nA0, $0A, nEb1, $07

98_FM4:
	sPatFM		$00
	dc.b nAb0, $08, nBb0, $08
	sStop

98_Patches:

	; Patch $00
	; $FA
	; $11, $31, $13, $30,	$0A, $0F, $1F, $1F
	; $05, $18, $09, $02,	$06, $0F, $06, $02
	; $0F, $07, $4F, $2F,	$07, $0E, $0E, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$01, $01, $03, $03
	spMultiple	$01, $03, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0A, $1F, $0F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $09, $18, $02
	spSustainLv	$00, $04, $00, $02
	spDecayRt	$06, $06, $0F, $02
	spReleaseRt	$0F, $0F, $07, $0F
	spTotalLv	$07, $0E, $0E, $00
