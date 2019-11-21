CB_Header:
	sHeaderInit						; Z80 offset is $DAF7
	sHeaderPatch	CB_Patches
	sHeaderTick	$01
	sHeaderCh	$03
	sHeaderSFX	$80, $05, CB_FM5, $00, $00
	sHeaderSFX	$80, $04, CB_FM4, $00, $00
	sHeaderSFX	$80, $02, CB_FM3, $00, $02

CB_FM5:
	sPatFM		$00
	sJump		CB_Jump1

CB_FM4:
	sPatFM		$00
	ssDetune	$07
	dc.b nRst, $01

CB_Jump1:
	dc.b nA4, $20
	sStop

CB_FM3:
	sPatFM		$01
	dc.b nCs2, $03
	sStop

CB_Patches:

	; Patch $00
	; $3C
	; $05, $01, $0A, $01,	$56, $5C, $5C, $5C
	; $0E, $11, $11, $11,	$09, $0A, $06, $0A
	; $4F, $3F, $3F, $3F,	$1F, $80, $2B, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$05, $0A, $01, $01
	spRateScale	$01, $01, $01, $01
	spAttackRt	$16, $1C, $1C, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $11, $11, $11
	spSustainLv	$04, $03, $03, $03
	spDecayRt	$09, $06, $0A, $0A
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1F, $2B, $00, $00

	; Patch $01
	; $05
	; $00, $00, $00, $00,	$1F, $1F, $1F, $1F
	; $12, $0C, $0C, $0C,	$12, $08, $08, $08
	; $1F, $5F, $5F, $5F,	$07, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $0C, $0C, $0C
	spSustainLv	$01, $05, $05, $05
	spDecayRt	$12, $08, $08, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$07, $00, $00, $00
