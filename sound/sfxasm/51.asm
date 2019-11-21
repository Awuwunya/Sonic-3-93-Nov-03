51_Header:
	sHeaderInit						; Z80 offset is $C51B
	sHeaderPatch	51_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 51_FM5, $00, $08

51_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $E0, $14
	dc.b nEb3, $09
	sStop

51_Patches:

	; Patch $00
	; $3E
	; $00, $05, $04, $04,	$1F, $1F, $16, $16
	; $00, $00, $00, $00,	$00, $13, $11, $10
	; $0F, $0F, $0F, $0F,	$00, $80, $80, $80
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $04, $05, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $16, $1F, $16
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $11, $13, $10
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
