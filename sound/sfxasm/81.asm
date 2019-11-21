81_Header:
	sHeaderInit						; Z80 offset is $CD32
	sHeaderPatch	81_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 81_FM5, $F6, $06

81_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $14, $F6
	dc.b nF2, $1E
	saVolFM		$0C
	sLoop		$00, $05, 81_FM5
	sStop

81_Patches:

	; Patch $00
	; $82
	; $1D, $10, $1B, $10,	$04, $10, $0D, $1F
	; $00, $00, $00, $00,	$02, $02, $02, $02
	; $2F, $2F, $FF, $3F,	$1B, $2D, $1B, $80
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$01, $01, $01, $01
	spMultiple	$0D, $0B, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$04, $0D, $10, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$02, $0F, $02, $03
	spDecayRt	$02, $02, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $1B, $2D, $00
