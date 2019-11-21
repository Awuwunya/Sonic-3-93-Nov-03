4C_Header:
	sHeaderInit						; Z80 offset is $C460
	sHeaderPatch	4C_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 4C_FM5, $05, $00

4C_Patches:

	; Patch $00
	; $3C
	; $00, $01, $01, $00,	$1F, $12, $1A, $1F
	; $10, $00, $1F, $00,	$09, $13, $0A, $12
	; $FF, $0F, $FF, $0F,	$00, $80, $00, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $01, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1A, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $1F, $00, $00
	spSustainLv	$0F, $0F, $00, $00
	spDecayRt	$09, $0A, $13, $12
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
	; 4C_FM5 at $C3F6 ($6A before start of file) can not be converted, because the data does not exist.
