B7_Header:
	sHeaderInit						; Z80 offset is $D73F
	sHeaderPatch	B7_Patches
	sHeaderTick	$01
	sHeaderCh	$03
	sHeaderSFX	$80, $04, B7_FM4, $F2, $00
	sHeaderSFX	$80, $05, B7_FM5, $02, $06
	sHeaderSFX	$80, $02, B7_FM3, $F9, $08

B7_FM3:
	sPatFM		$01
	sJump		B7_Loop1

B7_FM5:
	dc.b nRst, $02

B7_FM4:
	sPatFM		$00
	ssModZ80	$01, $01, $74, $29

B7_Loop1:
	dc.b nD1, $07, nRst, $02, nD1, $09, nRst
	saVolFM		$11
	sLoop		$00, $04, B7_Loop1
	sStop

B7_Patches:

	; Patch $00
	; $38
	; $70, $30, $10, $30,	$1F, $1D, $15, $1F
	; $00, $0C, $0E, $07,	$06, $0F, $06, $12
	; $04, $12, $07, $18,	$10, $07, $0C, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$07, $01, $03, $03
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $15, $1D, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $0E, $0C, $07
	spSustainLv	$00, $00, $01, $01
	spDecayRt	$06, $06, $0F, $12
	spReleaseRt	$04, $07, $02, $08
	spTotalLv	$10, $0C, $07, $00

	; Patch $01
	; $38
	; $01, $31, $10, $30,	$1F, $1D, $15, $1F
	; $25, $1C, $0E, $07,	$06, $0F, $06, $12
	; $03, $04, $07, $18,	$17, $22, $02, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$00, $01, $03, $03
	spMultiple	$01, $00, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $15, $1D, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $0E, $1C, $07
	spSustainLv	$00, $00, $00, $01
	spDecayRt	$06, $06, $0F, $12
	spReleaseRt	$03, $07, $04, $08
	spTotalLv	$17, $02, $22, $00
