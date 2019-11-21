9F_Header:
	sHeaderInit						; Z80 offset is $D2D4
	sHeaderPatch	9F_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 9F_FM5, $17, $04

9F_FM5:
	sPatFM		$00
	ssModZ80	$06, $01, $58, $97
	dc.b nC0, $06

9F_Loop1:
	dc.b nE0, $09
	saVolFM		$0E
	sLoop		$00, $06, 9F_Loop1
	sStop

9F_Patches:

	; Patch $00
	; $F2
	; $26, $6C, $10, $30,	$1F, $0C, $12, $15
	; $17, $10, $08, $09,	$1D, $17, $13, $13
	; $11, $19, $1F, $1F,	$5F, $7C, $00, $80
	spAlgorithm	$02
	spFeedback	$06
	spDetune	$02, $01, $06, $03
	spMultiple	$06, $00, $0C, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $12, $0C, $15
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$17, $08, $10, $09
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$1D, $13, $17, $13
	spReleaseRt	$01, $0F, $09, $0F
	spTotalLv	$5F, $00, $7C, $00
