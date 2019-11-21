78_Header:
	sHeaderInit						; Z80 offset is $CB7F
	sHeaderPatch	78_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 78_FM5, $F2, $04

78_FM5:
	sPatFM		$00
	dc.b nCs3

78_Loop1:
	dc.b $02, sHold, nB2, $01, sHold
	saTranspose	$02
	sLoop		$00, $26, 78_Loop1
	sStop

78_Patches:

	; Patch $00
	; $3B
	; $3C, $39, $30, $31,	$DF, $1F, $1F, $DF
	; $04, $05, $04, $01,	$04, $04, $04, $02
	; $FF, $0F, $1F, $AF,	$29, $20, $0F, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$03, $03, $03, $03
	spMultiple	$0C, $00, $09, $01
	spRateScale	$03, $00, $00, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $04, $05, $01
	spSustainLv	$0F, $01, $00, $0A
	spDecayRt	$04, $04, $04, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$29, $0F, $20, $00
