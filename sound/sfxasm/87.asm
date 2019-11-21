87_Header:
	sHeaderInit						; Z80 offset is $CE6A
	sHeaderPatch	87_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 87_FM5, $07, $04

87_FM5:
	sPatFM		$00
	dc.b nEb3, $07
	sLoop		$00, $04, 87_FM5
	dc.b nB2, $12
	sStop

87_Patches:

	; Patch $00
	; $F3
	; $10, $70, $3C, $3A,	$1F, $1F, $1F, $1F
	; $17, $1F, $1F, $17,	$00, $00, $00, $00
	; $FF, $08, $0F, $FF,	$33, $1B, $33, $80
	spAlgorithm	$03
	spFeedback	$06
	spDetune	$01, $03, $07, $03
	spMultiple	$00, $0C, $00, $0A
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$17, $1F, $1F, $17
	spSustainLv	$0F, $00, $00, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $08, $0F
	spTotalLv	$33, $33, $1B, $00
