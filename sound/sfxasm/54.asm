54_Header:
	sHeaderInit						; Z80 offset is $C59D
	sHeaderPatch	54_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $02, 54_FM3, $00, $00
	sHeaderSFX	$80, $04, 54_FM4, $02, $00

54_FM4:
	ssDetune	$90

54_FM3:
	sPatFM		$00
	dc.b nEb1, $7F, sHold
	sJump		54_FM3
	dc.b $F2	; Unused

54_Patches:

	; Patch $00
	; $2F
	; $32, $04, $02, $34,	$08, $08, $08, $08
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$80, $80, $80, $80
	spAlgorithm	$07
	spFeedback	$05
	spDetune	$03, $00, $00, $03
	spMultiple	$02, $02, $04, $04
	spRateScale	$00, $00, $00, $00
	spAttackRt	$08, $08, $08, $08
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $00, $00, $00
