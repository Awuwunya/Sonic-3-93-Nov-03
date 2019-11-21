C6_Header:
	sHeaderInit						; Z80 offset is $DA42
	sHeaderPatch	C6_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, C6_FM5, $03, $00

C6_FM5:
	sPatFM		$00
	ssModZ80	$03, $01, $FD, $02
	dc.b nE1, $16
	sStop

C6_Patches:

	; Patch $00
	; $FA
	; $21, $47, $20, $30,	$04, $08, $07, $12
	; $06, $0E, $09, $02,	$00, $10, $01, $01
	; $00, $00, $00, $FE,	$37, $4C, $00, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $02, $04, $03
	spMultiple	$01, $00, $07, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$04, $07, $08, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $09, $0E, $02
	spSustainLv	$00, $00, $00, $0F
	spDecayRt	$00, $01, $10, $01
	spReleaseRt	$00, $00, $00, $0E
	spTotalLv	$37, $00, $4C, $00
