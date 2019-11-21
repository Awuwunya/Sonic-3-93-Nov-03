75_Header:
	sHeaderInit						; Z80 offset is $CAF7
	sHeaderPatch	75_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 75_FM5, $00, $00

75_FM5:
	sPatFM		$00
	dc.b nRst, $01, nBb0, $0A, nRst, $02
	sStop

75_Patches:

	; Patch $00
	; $FA
	; $21, $30, $10, $32,	$2F, $1F, $2F, $2F
	; $05, $08, $09, $02,	$06, $0F, $06, $02
	; $1F, $2F, $4F, $2F,	$0F, $1A, $0E, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$01, $00, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $0F, $1F, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $09, $08, $02
	spSustainLv	$01, $04, $02, $02
	spDecayRt	$06, $06, $0F, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0F, $0E, $1A, $00
