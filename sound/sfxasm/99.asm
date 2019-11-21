99_Header:
	sHeaderInit						; Z80 offset is $D1D1
	sHeaderPatch	99_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 99_FM5, $03, $05

99_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $08, $C5
	dc.b nCs1, $66
	sStop

99_Patches:

	; Patch $00
	; $3B
	; $65, $66, $41, $70,	$10, $11, $50, $D1
	; $06, $01, $01, $01,	$08, $00, $09, $00
	; $89, $F8, $F9, $F8,	$18, $80, $80, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$06, $04, $06, $07
	spMultiple	$05, $01, $06, $00
	spRateScale	$00, $01, $00, $03
	spAttackRt	$10, $10, $11, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $01, $01, $01
	spSustainLv	$08, $0F, $0F, $0F
	spDecayRt	$08, $09, $00, $00
	spReleaseRt	$09, $09, $08, $08
	spTotalLv	$18, $00, $00, $00
