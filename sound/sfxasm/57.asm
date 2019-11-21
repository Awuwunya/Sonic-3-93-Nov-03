57_Header:
	sHeaderInit						; Z80 offset is $C63A
	sHeaderPatch	57_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 57_FM5, $02, $17

57_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $FF, $4B
	dc.b nA0, $29

57_Loop1:
	saVolFM		$FE
	dc.b sHold, nA0, $20
	sLoop		$00, $07, 57_Loop1
	sStop

57_Patches:

	; Patch $00
	; $02
	; $26, $0A, $02, $18,	$0F, $0F, $0F, $0D
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$21, $16, $10, $80
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$02, $00, $00, $01
	spMultiple	$06, $02, $0A, $08
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $0F, $0F, $0D
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $10, $16, $00
