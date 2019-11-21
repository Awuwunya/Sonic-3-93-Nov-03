46_Header:
	sHeaderInit						; Z80 offset is $C39F
	sHeaderPatch	46_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 46_FM5, $00, $00

46_FM5:
	sPatFM		$00
	ssModZ80	$05, $01, $1B, $37
	dc.b nC5, $30
	sStop

46_Patches:

	; Patch $00
	; $07
	; $03, $13, $23, $33,	$0F, $0F, $0F, $0F
	; $00, $00, $00, $00,	$0B, $0B, $0A, $0C
	; $0F, $0F, $0F, $0F,	$80, $80, $80, $80
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$00, $02, $01, $03
	spMultiple	$03, $03, $03, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $0F, $0F, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$0B, $0A, $0B, $0C
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
