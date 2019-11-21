A3_Header:
	sHeaderInit						; Z80 offset is $D378
	sHeaderPatch	A3_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, A3_FM5, $F4, $00

A3_FM5:
	sPatFM		$00
	ssModZ80	$03, $01, $7F, $03
	dc.b nBb3, $05

A3_Loop1:
	dc.b nF5, $0B
	saVolFM		$17
	sLoop		$00, $03, A3_Loop1
	sStop

A3_Patches:

	; Patch $00
	; $20
	; $20, $68, $30, $33,	$1F, $1F, $1F, $1F
	; $15, $15, $15, $13,	$13, $0C, $0D, $10
	; $2F, $2F, $3F, $2F,	$3C, $1B, $24, $80
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$02, $03, $06, $03
	spMultiple	$00, $00, $08, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$15, $15, $15, $13
	spSustainLv	$02, $03, $02, $02
	spDecayRt	$13, $0D, $0C, $10
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$3C, $24, $1B, $00
