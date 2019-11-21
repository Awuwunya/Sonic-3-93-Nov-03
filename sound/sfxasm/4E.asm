4E_Header:
	sHeaderInit						; Z80 offset is $C498
	sHeaderPatch	4E_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, 4E_FM3, $00, $10

4E_FM3:
	sPatFM		$00
	dc.b nBb6, $10
	sStop

4E_Patches:

	; Patch $00
	; $38
	; $00, $30, $00, $01,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$00, $00, $00, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$00, $00, $03, $00
	spMultiple	$00, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
