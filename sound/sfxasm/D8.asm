D8_Header:
	sHeaderInit						; Z80 offset is $DEB4
	sHeaderPatch	D8_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, D8_FM5, $00, $02

D8_FM5:
	sPatFM		$00
	dc.b nAb5, $15
	sStop

D8_Patches:

	; Patch $00
	; $3E
	; $34, $00, $75, $02,	$59, $D9, $5F, $9C
	; $0F, $04, $0F, $0A,	$02, $02, $05, $05
	; $FF, $FF, $FF, $FF,	$28, $00, $23, $00
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$03, $07, $00, $00
	spMultiple	$04, $05, $00, $02
	spRateScale	$01, $01, $03, $02
	spAttackRt	$19, $1F, $19, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $0F, $04, $0A
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$02, $05, $02, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$28, $23, $00, $00
