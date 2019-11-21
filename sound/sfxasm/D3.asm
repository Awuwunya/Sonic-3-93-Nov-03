D3_Header:
	sHeaderInit						; Z80 offset is $DD71
	sHeaderPatch	D3_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, D3_FM5, $F8, $03

D3_FM5:
	sPatFM		$00
	dc.b nG3, $06, nRst, $06, nG3, $24
	sStop

D3_Patches:

	; Patch $00
	; $41
	; $01, $07, $01, $01,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $00
	; $1F, $FF, $1F, $0F,	$0C, $29, $15, $80
	spAlgorithm	$01
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spSustainLv	$01, $01, $0F, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0C, $15, $29, $00
