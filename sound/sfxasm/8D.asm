8D_Header:
	sHeaderInit						; Z80 offset is $CFA6
	sHeaderPatch	8D_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 8D_FM5, $E3, $02

8D_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $FA, $41
	dc.b nD3, $1A
	sStop

8D_Patches:

	; Patch $00
	; $0A
	; $40, $3B, $11, $31,	$1F, $1F, $1B, $0C
	; $05, $18, $05, $10,	$03, $03, $00, $05
	; $1F, $2F, $1F, $2F,	$10, $60, $0E, $80
	spAlgorithm	$02
	spFeedback	$01
	spDetune	$04, $01, $03, $03
	spMultiple	$00, $01, $0B, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1B, $1F, $0C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $05, $18, $10
	spSustainLv	$01, $01, $02, $02
	spDecayRt	$03, $00, $03, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$10, $0E, $60, $00
