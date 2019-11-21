76_Header:
	sHeaderInit						; Z80 offset is $CB23
	sHeaderPatch	76_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 76_FM5, $F2, $00

76_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $10, $FF
	dc.b nFs6, $05, nD7, $25
	sStop

76_Patches:

	; Patch $00
	; $3B
	; $3C, $39, $30, $31,	$DF, $1F, $1F, $DF
	; $04, $05, $04, $01,	$04, $04, $04, $02
	; $FF, $0F, $1F, $AF,	$29, $20, $0F, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$03, $03, $03, $03
	spMultiple	$0C, $00, $09, $01
	spRateScale	$03, $00, $00, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $04, $05, $01
	spSustainLv	$0F, $01, $00, $0A
	spDecayRt	$04, $04, $04, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$29, $0F, $20, $00
