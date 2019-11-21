8C_Header:
	sHeaderInit						; Z80 offset is $CF75
	sHeaderPatch	8C_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 8C_FM5, $F9, $02

8C_FM5:
	sPatFM		$00
	dc.b nEb6, $05

8C_Loop1:
	dc.b nF6, $02
	saVolFM		$03
	sLoop		$00, $0E, 8C_Loop1
	sStop

8C_Patches:

	; Patch $00
	; $83
	; $1F, $17, $1E, $1F,	$1F, $1F, $16, $16
	; $00, $00, $00, $09,	$02, $12, $12, $09
	; $FF, $8F, $FF, $EF,	$0B, $16, $01, $82
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$01, $01, $01, $01
	spMultiple	$0F, $0E, $07, $0F
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $16, $1F, $16
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $09
	spSustainLv	$0F, $0F, $08, $0E
	spDecayRt	$02, $12, $12, $09
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0B, $01, $16, $02
