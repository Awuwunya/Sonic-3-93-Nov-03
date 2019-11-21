93_Header:
	sHeaderInit						; Z80 offset is $D07F
	sHeaderPatch	93_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 93_FM5, $F1, $08

93_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $7C, $95
	dc.b nB3, $07
	saVolFM		$0A
	dc.b nB3, $07
	saVolFM		$F0
	sStop

93_Patches:

	; Patch $00
	; $3B
	; $04, $0D, $19, $02,	$14, $14, $12, $14
	; $0C, $04, $04, $04,	$02, $02, $02, $03
	; $DF, $2F, $2F, $2F,	$22, $24, $27, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$00, $01, $00, $00
	spMultiple	$04, $09, $0D, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$14, $12, $14, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $04, $04, $04
	spSustainLv	$0D, $02, $02, $02
	spDecayRt	$02, $02, $02, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$22, $27, $24, $00
