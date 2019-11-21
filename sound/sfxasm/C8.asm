C8_Header:
	sHeaderInit						; Z80 offset is $DA87
	sHeaderPatch	C8_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, C8_FM5, $0B, $08

C8_FM5:
	sPatFM		$00
	dc.b nB4, $17, nRst, nB4, nRst, nB4, nRst, nB5
	dc.b $20, nRst
	sStop

C8_Patches:

	; Patch $00
	; $3C
	; $30, $70, $16, $20,	$17, $19, $14, $14
	; $14, $02, $02, $02,	$1F, $1F, $1F, $1F
	; $1C, $16, $1A, $17,	$44, $80, $50, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$03, $01, $07, $02
	spMultiple	$00, $06, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $14, $19, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$14, $02, $02, $02
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$1F, $1F, $1F, $1F
	spReleaseRt	$0C, $0A, $06, $07
	spTotalLv	$44, $50, $00, $00
