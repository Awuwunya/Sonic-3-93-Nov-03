CE_Header:
	sHeaderInit						; Z80 offset is $DC15
	sHeaderPatch	CE_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, CE_FM5, $00, $01

CE_FM5:
	sPatFM		$00
	dc.b nC5, $06, nA4, $16
	sStop

CE_Patches:

	; Patch $00
	; $3C
	; $05, $01, $0A, $01,	$56, $5C, $5C, $5C
	; $0E, $11, $11, $11,	$09, $0A, $06, $0A
	; $4F, $3F, $3F, $3F,	$17, $80, $20, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$05, $0A, $01, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$16, $1C, $1C, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $11, $11, $11
	spSustainLv	$04, $03, $03, $03
	spDecayRt	$09, $06, $0A, $0A
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $20, $00, $00
