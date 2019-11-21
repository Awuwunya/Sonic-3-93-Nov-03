45_Header:
	sHeaderInit						; Z80 offset is $C377
	sHeaderPatch	45_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 45_FM5, $00, $05

45_FM5:
	sPatFM		$00
	dc.b nEb3, $1B
	sStop

45_Patches:

	; Patch $00
	; $03
	; $32, $04, $70, $03,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $0D, $0C, $0B
	; $0F, $0F, $0F, $0F,	$08, $0D, $10, $80
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$03, $07, $00, $00
	spMultiple	$02, $00, $04, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $0C, $0D, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$08, $10, $0D, $00
