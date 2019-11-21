A9_Header:
	sHeaderInit						; Z80 offset is $D494
	sHeaderPatch	A9_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, A9_FM5, $00, $03

A9_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0C, $01

A9_Loop1:
	dc.b nC0, $0B
	sLoop		$00, $02, A9_Loop1
	sStop

A9_Patches:

	; Patch $00
	; $FA
	; $20, $30, $11, $30,	$0C, $11, $1F, $1F
	; $12, $0E, $11, $04,	$1B, $13, $09, $13
	; $1F, $1F, $4F, $2F,	$0E, $80, $05, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$00, $01, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0C, $1F, $11, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $11, $0E, $04
	spSustainLv	$01, $04, $01, $02
	spDecayRt	$1B, $09, $13, $13
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $05, $00, $00
