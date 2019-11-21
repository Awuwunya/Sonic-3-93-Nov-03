3C_Header:
	sHeaderInit						; Z80 offset is $C20B
	sHeaderPatch	3C_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $04, 3C_FM4, $0C, $05

3C_FM4:
	sPatFM		$00
	dc.b nRst, $01
	ssModZ80	$03, $01, $09, $FF
	dc.b nCs6, $25
	ssModZ80	$00, $01, $00, $00

3C_Loop1:
	dc.b sHold
	saVolFM		$01
	dc.b nCs6, $02
	sLoop		$00, $2A, 3C_Loop1
	sStop

3C_Patches:

	; Patch $00
	; $3C
	; $00, $44, $02, $02,	$1F, $1F, $1F, $15
	; $00, $1F, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$0D, $80, $28, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $04, $00
	spMultiple	$00, $02, $04, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $15
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $1F, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0D, $28, $00, $00
