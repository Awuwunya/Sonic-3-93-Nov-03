BC_Header:
	sHeaderInit						; Z80 offset is $D88C
	sHeaderPatch	BC_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, BC_FM5, $10, $04

BC_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0C, $01
	dc.b nC0, $08, nC0
	sStop

BC_Patches:

	; Patch $00
	; $F9
	; $22, $31, $11, $32,	$0F, $0E, $1F, $1F
	; $05, $18, $09, $02,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$0E, $17, $14, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$02, $01, $01, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $1F, $0E, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $09, $18, $02
	spSustainLv	$01, $04, $02, $02
	spDecayRt	$0B, $10, $1F, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $14, $17, $00
