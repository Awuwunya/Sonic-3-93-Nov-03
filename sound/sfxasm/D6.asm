D6_Header:
	sHeaderInit						; Z80 offset is $DE4B
	sHeaderPatch	D6_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, D6_FM5, $00, $07

D6_FM5:
	sPatFM		$00
	dc.b nA3, $08
	sStop

D6_Patches:

	; Patch $00
	; $1C
	; $2E, $02, $0F, $02,	$1F, $1F, $1F, $1F
	; $18, $0F, $14, $0E,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$20, $80, $1B, $80
	spAlgorithm	$04
	spFeedback	$03
	spDetune	$02, $00, $00, $00
	spMultiple	$0E, $0F, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$18, $14, $0F, $0E
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $1B, $00, $00
