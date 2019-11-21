56_Header:
	sHeaderInit						; Z80 offset is $C609
	sHeaderPatch	56_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 56_FM5, $00, $10

56_FM5:
	sPatFM		$00

56_Loop1:
	dc.b nCs3, $03
	saTranspose	$FF
	saVolFM		$02
	sLoop		$00, $10, 56_Loop1
	sStop

56_Patches:

	; Patch $00
	; $06
	; $00, $09, $09, $09,	$1F, $0D, $0D, $0D
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$20, $80, $80, $80
	spAlgorithm	$06
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $09, $09, $09
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $0D, $0D, $0D
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $00, $00, $00
