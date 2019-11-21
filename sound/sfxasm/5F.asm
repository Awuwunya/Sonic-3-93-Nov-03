5F_Header:
	sHeaderInit						; Z80 offset is $C794
	sHeaderPatch	5F_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, 5F_FM3, $D9, $00

5F_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $09, $00
	dc.b nEb3, $30, sHold
	sModOff
	dc.b nC4, $70
	sStop

5F_Patches:

	; Patch $00
	; $04
	; $2F, $07, $06, $00,	$17, $17, $07, $17
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$30, $80, $20, $80
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$02, $00, $00, $00
	spMultiple	$0F, $06, $07, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$17, $07, $17, $17
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$30, $20, $00, $00
