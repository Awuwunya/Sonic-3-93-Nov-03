A4_Header:
	sHeaderInit						; Z80 offset is $D3AE
	sHeaderPatch	A4_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, A4_FM5, $F3, $07

A4_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $03, $CA
	dc.b nCs3, $61
	ssModZ80	$01, $01, $DF, $05
	dc.b sHold, $16
	sStop

A4_Patches:

	; Patch $00
	; $35
	; $06, $07, $03, $05,	$11, $07, $0B, $EE
	; $0C, $15, $03, $06,	$0C, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$2E, $8D, $80, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$06, $03, $07, $05
	spRateScale	$00, $00, $00, $03
	spAttackRt	$11, $0B, $07, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $03, $15, $06
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$0C, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2E, $00, $0D, $00
