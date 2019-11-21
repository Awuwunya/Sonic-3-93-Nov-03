C4_Header:
	sHeaderInit						; Z80 offset is $D9E8
	sHeaderPatch	C4_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, C4_FM5, $20, $06

C4_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0F, $F4
	dc.b nD1, $33
	sStop

C4_Patches:

	; Patch $00
	; $05
	; $05, $30, $79, $30,	$07, $0C, $08, $0F
	; $00, $00, $00, $00,	$01, $00, $01, $00
	; $0F, $0F, $2F, $0F,	$4D, $81, $86, $8D
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$00, $07, $03, $03
	spMultiple	$05, $09, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$07, $08, $0C, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $02, $00, $00
	spDecayRt	$01, $01, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$4D, $06, $01, $0D
