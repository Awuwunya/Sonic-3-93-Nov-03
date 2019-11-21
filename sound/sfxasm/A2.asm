A2_Header:
	sHeaderInit						; Z80 offset is $D344
	sHeaderPatch	A2_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $04, A2_FM4, $0C, $00

A2_FM4:
	sPatFM		$00
	ssModZ80	$01, $01, $27, $82

A2_Loop1:
	dc.b nC0, $0C
	saVolFM		$18
	sLoop		$00, $03, A2_Loop1
	sStop

A2_Patches:

	; Patch $00
	; $35
	; $14, $17, $04, $0C,	$0E, $10, $11, $0E
	; $0C, $15, $03, $06,	$16, $0E, $09, $10
	; $2F, $2F, $4C, $4F,	$2F, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$01, $00, $01, $00
	spMultiple	$04, $04, $07, $0C
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0E, $11, $10, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $03, $15, $06
	spSustainLv	$02, $04, $02, $04
	spDecayRt	$16, $09, $0E, $10
	spReleaseRt	$0F, $0C, $0F, $0F
	spTotalLv	$2F, $00, $00, $00
