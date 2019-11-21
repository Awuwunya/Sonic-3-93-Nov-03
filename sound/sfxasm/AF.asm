AF_Header:
	sHeaderInit						; Z80 offset is $D5DC
	sHeaderPatch	AF_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, AF_FM5, $00, $02

AF_FM5:
	sPatFM		$00
	dc.b nBb0, $13
	saVolFM		$14
	sLoop		$00, $02, AF_FM5
	sStop

AF_Patches:

	; Patch $00
	; $FA
	; $00, $02, $00, $00,	$19, $0C, $1F, $1F
	; $00, $00, $00, $00,	$10, $10, $10, $00
	; $FF, $FF, $FF, $FF,	$64, $25, $05, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $02, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$19, $1F, $0C, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$10, $10, $10, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$64, $05, $25, $00
