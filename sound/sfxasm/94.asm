94_Header:
	sHeaderInit						; Z80 offset is $D0B2
	sHeaderPatch	94_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, 94_FM5, $00, $06
	sHeaderSFX	$80, $04, 94_FM4, $00, $06

94_FM5:
	dc.b nE0, $05

94_FM4:
	sPatFM		$00
	dc.b nAb0, $09, nBb0, $07
	sStop

94_Patches:

	; Patch $00
	; $FA
	; $21, $30, $10, $32,	$1F, $0F, $1F, $1F
	; $05, $18, $09, $02,	$06, $0F, $06, $02
	; $1F, $07, $4F, $2F,	$0F, $0E, $0E, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$01, $00, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $0F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $09, $18, $02
	spSustainLv	$01, $04, $00, $02
	spDecayRt	$06, $06, $0F, $02
	spReleaseRt	$0F, $0F, $07, $0F
	spTotalLv	$0F, $0E, $0E, $00
