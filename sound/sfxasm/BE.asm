BE_Header:
	sHeaderInit						; Z80 offset is $D8D2
	sHeaderPatch	BE_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, BE_FM5, $F3, $05

BE_FM5:
	sPatFM		$00
	dc.b nBb2, $7E
	sStop

BE_Patches:

	; Patch $00
	; $35
	; $06, $02, $03, $05,	$0A, $06, $0A, $D9
	; $0C, $07, $03, $0A,	$08, $0A, $10, $09
	; $62, $07, $1F, $1F,	$2E, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$06, $03, $02, $05
	spRateScale	$00, $00, $00, $03
	spAttackRt	$0A, $0A, $06, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $03, $07, $0A
	spSustainLv	$06, $01, $00, $01
	spDecayRt	$08, $10, $0A, $09
	spReleaseRt	$02, $0F, $07, $0F
	spTotalLv	$2E, $00, $00, $00
