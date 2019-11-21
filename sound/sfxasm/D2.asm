D2_Header:
	sHeaderInit						; Z80 offset is $DD1C
	sHeaderPatch	D2_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, D2_FM5, $00, $02

D2_FM5:
	sPatFM		$00
	dc.b nRst, $01
	ssModZ80	$03, $01, $5D, $0F
	dc.b nB3, $0A
	sModOff
	sPatFM		$01

D2_Loop1:
	dc.b nC5, $02
	saVolFM		$01
	dc.b sHold
	sLoop		$00, $19, D2_Loop1
	sStop

D2_Patches:

	; Patch $00
	; $20
	; $36, $35, $30, $31,	$DF, $DF, $9F, $9F
	; $07, $06, $09, $06,	$07, $06, $06, $08
	; $2F, $1F, $1F, $FF,	$16, $30, $13, $80
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$03, $03, $03, $03
	spMultiple	$06, $00, $05, $01
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $09, $06, $06
	spSustainLv	$02, $01, $01, $0F
	spDecayRt	$07, $06, $06, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$16, $13, $30, $00

	; Patch $01
	; $20
	; $31, $33, $30, $31,	$9F, $9F, $9F, $9F
	; $07, $06, $09, $06,	$07, $06, $06, $08
	; $2F, $1F, $1F, $FF,	$19, $23, $11, $80
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$03, $03, $03, $03
	spMultiple	$01, $00, $03, $01
	spRateScale	$02, $02, $02, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $09, $06, $06
	spSustainLv	$02, $01, $01, $0F
	spDecayRt	$07, $06, $06, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$19, $11, $23, $00
