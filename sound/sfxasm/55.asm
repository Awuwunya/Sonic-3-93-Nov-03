55_Header:
	sHeaderInit						; Z80 offset is $C5D1
	sHeaderPatch	55_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 55_FM5, $E4, $05

55_FM5:
	sPatFM		$00
	dc.b nB3, $02, sHold, nC4, sHold, nCs4, sHold, nD4
	dc.b $30

55_Loop1:
	dc.b sHold, $01
	saVolFM		$01
	sLoop		$00, $0A, 55_Loop1
	sStop

55_Patches:

	; Patch $00
	; $3C
	; $03, $01, $12, $01,	$1F, $11, $1F, $11
	; $00, $0D, $00, $00,	$00, $08, $00, $00
	; $0F, $3F, $0F, $0F,	$00, $8A, $05, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $01, $00, $00
	spMultiple	$03, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $11, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $0D, $00
	spSustainLv	$00, $00, $03, $00
	spDecayRt	$00, $00, $08, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $05, $0A, $00
