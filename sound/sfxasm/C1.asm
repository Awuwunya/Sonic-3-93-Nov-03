C1_Header:
	sHeaderInit						; Z80 offset is $D956
	sHeaderPatch	C1_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, C1_FM5, $FB, $02

C1_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $85, $32
	dc.b nBb2, $10

C1_Loop1:
	saVolFM		$0F
	dc.b nBb2, $0D, nRst, $02
	sLoop		$00, $04, C1_Loop1
	sStop

C1_Patches:

	; Patch $00
	; $83
	; $13, $10, $1F, $1D,	$11, $1C, $0C, $14
	; $00, $10, $00, $00,	$02, $02, $02, $02
	; $2F, $2F, $FF, $3F,	$03, $0D, $64, $87
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$01, $01, $01, $01
	spMultiple	$03, $0F, $00, $0D
	spRateScale	$00, $00, $00, $00
	spAttackRt	$11, $0C, $1C, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $10, $00
	spSustainLv	$02, $0F, $02, $03
	spDecayRt	$02, $02, $02, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$03, $64, $0D, $07
