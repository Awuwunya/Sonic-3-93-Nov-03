B0_Header:
	sHeaderInit						; Z80 offset is $D60B
	sHeaderPatch	B0_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, B0_FM5, $00, $00

B0_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0C, $01

B0_Loop1:
	dc.b nC0, $0A
	saVolFM		$10
	sLoop		$00, $04, B0_Loop1
	sStop

B0_Patches:

	; Patch $00
	; $F9
	; $20, $30, $10, $30,	$1F, $1F, $1F, $1F
	; $02, $04, $11, $02,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$0E, $07, $04, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$02, $11, $04, $02
	spSustainLv	$01, $04, $02, $02
	spDecayRt	$0B, $10, $1F, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $04, $07, $00
