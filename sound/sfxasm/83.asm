83_Header:
	sHeaderInit						; Z80 offset is $CD96
	sHeaderPatch	83_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 83_FM5, $15, $05

83_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $20, $85
	dc.b nD0, $03, nB0, $1E
	sStop

83_Patches:

	; Patch $00
	; $35
	; $02, $FD, $01, $F6,	$0F, $16, $14, $11
	; $06, $04, $0F, $08,	$02, $03, $03, $04
	; $7F, $6F, $3F, $2F,	$31, $28, $0E, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $00, $0F, $0F
	spMultiple	$02, $01, $0D, $06
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $14, $16, $11
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $0F, $04, $08
	spSustainLv	$07, $03, $06, $02
	spDecayRt	$02, $03, $03, $04
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$31, $0E, $28, $00
