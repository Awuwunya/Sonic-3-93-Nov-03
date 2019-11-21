85_Header:
	sHeaderInit						; Z80 offset is $CDF6
	sHeaderPatch	85_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 85_FM5, $00, $05

85_FM5:
	sPatFM		$00
	dc.b nAb3, $07, nG2, $13
	sStop

85_Patches:

	; Patch $00
	; $34
	; $08, $07, $03, $00,	$1F, $1F, $1F, $1F
	; $19, $12, $19, $11,	$05, $12, $00, $0F
	; $09, $04, $F0, $FF,	$00, $80, $00, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$08, $03, $07, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$19, $19, $12, $11
	spSustainLv	$00, $0F, $00, $0F
	spDecayRt	$05, $00, $12, $0F
	spReleaseRt	$09, $00, $04, $0F
	spTotalLv	$00, $00, $00, $00
