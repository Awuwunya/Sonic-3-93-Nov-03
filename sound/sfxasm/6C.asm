6C_Header:
	sHeaderInit						; Z80 offset is $C997
	sHeaderPatch	6C_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 6C_FM5, $00, $00

6C_FM5:
	sPatFM		$00
	dc.b nC0, $25
	sStop

6C_Patches:

	; Patch $00
	; $20
	; $00, $01, $00, $00,	$1F, $1F, $1F, $1F
	; $00, $0C, $00, $00,	$00, $00, $00, $0C
	; $FF, $FF, $FF, $0F,	$04, $0A, $18, $80
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $0C, $00
	spSustainLv	$0F, $0F, $0F, $00
	spDecayRt	$00, $00, $00, $0C
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$04, $18, $0A, $00
