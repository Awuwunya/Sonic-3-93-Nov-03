8B_Header:
	sHeaderInit						; Z80 offset is $CF45
	sHeaderPatch	8B_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 8B_FM5, $17, $04

8B_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0C, $01
	dc.b nC0, $08
	saVolFM		$10
	dc.b nE0
	sStop

8B_Patches:

	; Patch $00
	; $F1
	; $23, $30, $11, $30,	$1F, $18, $1F, $1F
	; $05, $1F, $09, $01,	$0B, $12, $03, $03
	; $1F, $0F, $4F, $2F,	$6F, $31, $00, $80
	spAlgorithm	$01
	spFeedback	$06
	spDetune	$02, $01, $03, $03
	spMultiple	$03, $01, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $18, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $09, $1F, $01
	spSustainLv	$01, $04, $00, $02
	spDecayRt	$0B, $03, $12, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$6F, $00, $31, $00
