35_Header:
	sHeaderInit						; Z80 offset is $C084
	sHeaderPatch	35_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 35_FM5, $F4, $00

35_FM5:
	sPatFM		$00
	dc.b nB3, $07, sHold, nAb3

35_Loop1:
	dc.b $01
	saVolFM		$01
	sLoop		$00, $2F, 35_Loop1
	sStop

35_Patches:

	; Patch $00
	; $30
	; $30, $30, $30, $30,	$9E, $D8, $DC, $DC
	; $0E, $0A, $04, $05,	$08, $08, $08, $08
	; $BF, $BF, $BF, $BF,	$14, $3C, $14, $80
	spAlgorithm	$00
	spFeedback	$06
	spDetune	$03, $03, $03, $03
	spMultiple	$00, $00, $00, $00
	spRateScale	$02, $03, $03, $03
	spAttackRt	$1E, $1C, $18, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $04, $0A, $05
	spSustainLv	$0B, $0B, $0B, $0B
	spDecayRt	$08, $08, $08, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$14, $14, $3C, $00
