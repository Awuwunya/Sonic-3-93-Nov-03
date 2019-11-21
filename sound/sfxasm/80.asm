80_Header:
	sHeaderInit						; Z80 offset is $CD05
	sHeaderPatch	80_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 80_FM5, $1E, $0C

80_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $F0, $A5
	dc.b nBb0, $16
	sStop

80_Patches:

	; Patch $00
	; $83
	; $11, $1D, $12, $10,	$01, $16, $0D, $1F
	; $00, $00, $00, $00,	$02, $02, $02, $02
	; $2F, $2F, $FF, $3F,	$1B, $2D, $1B, $80
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$01, $01, $01, $01
	spMultiple	$01, $02, $0D, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$01, $0D, $16, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$02, $0F, $02, $03
	spDecayRt	$02, $02, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $1B, $2D, $00
