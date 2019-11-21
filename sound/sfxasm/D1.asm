D1_Header:
	sHeaderInit						; Z80 offset is $DCA1
	sHeaderPatch	D1_Patches
	sHeaderTick	$01
	sHeaderCh	$03
	sHeaderSFX	$80, $02, D1_FM3, $F5, $08
	sHeaderSFX	$80, $05, D1_FM5, $00, $00
	sHeaderSFX	$80, $06, D1_FM6, $00, $00

D1_FM6:
	sPatFM		$00
	dc.b nA0, $08, nRst, $02, nA0, $08
	sStop

D1_FM5:
	sPatFM		$01
	dc.b nRst, $12, nA5, $55
	sStop

D1_FM3:
	sPatFM		$02
	dc.b nRst, $02, nF5, $05, $04, $05, $04
	sStop

D1_Patches:

	; Patch $00
	; $3B
	; $03, $02, $03, $06,	$18, $1A, $1A, $96
	; $17, $0E, $0A, $10,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$00, $28, $39, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$03, $03, $02, $06
	spRateScale	$00, $00, $00, $02
	spAttackRt	$18, $1A, $1A, $16
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$17, $0A, $0E, $10
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $39, $28, $00

	; Patch $01
	; $04
	; $37, $72, $77, $49,	$1F, $1F, $1F, $1F
	; $07, $0A, $07, $0D,	$00, $0B, $00, $0B
	; $1F, $0F, $1F, $0F,	$23, $80, $23, $80
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$03, $07, $07, $04
	spMultiple	$07, $07, $02, $09
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $07, $0A, $0D
	spSustainLv	$01, $01, $00, $00
	spDecayRt	$00, $00, $0B, $0B
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $23, $00, $00

	; Patch $02
	; $3C
	; $0F, $00, $00, $00,	$1F, $1A, $18, $1C
	; $17, $11, $1A, $0E,	$00, $0F, $14, $10
	; $1F, $9F, $9F, $2F,	$07, $80, $26, $8C
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$0F, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $18, $1A, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$17, $1A, $11, $0E
	spSustainLv	$01, $09, $09, $02
	spDecayRt	$00, $14, $0F, $10
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$07, $26, $00, $0C
