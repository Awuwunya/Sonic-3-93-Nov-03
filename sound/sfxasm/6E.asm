6E_Header:
	sHeaderInit						; Z80 offset is $CA00
	sHeaderPatch	6E_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 6E_FM5, $00, $00

6E_FM5:
	sPatFM		$00
	dc.b nD0, $0D

6E_Loop1:
	dc.b nD0, $0D
	saVolFM		$15
	sLoop		$00, $04, 6E_Loop1
	sStop

6E_Patches:

	; Patch $00
	; $54
	; $48, $02, $03, $01,	$1F, $1F, $1F, $1F
	; $11, $00, $0A, $00,	$00, $05, $00, $05
	; $FF, $0F, $FF, $0F,	$02, $80, $10, $80
	spAlgorithm	$04
	spFeedback	$02
	spDetune	$04, $00, $00, $00
	spMultiple	$08, $03, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$11, $0A, $00, $00
	spSustainLv	$0F, $0F, $00, $00
	spDecayRt	$00, $00, $05, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$02, $10, $00, $00
