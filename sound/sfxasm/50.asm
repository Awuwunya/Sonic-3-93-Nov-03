50_Header:
	sHeaderInit						; Z80 offset is $C4F1
	sHeaderPatch	50_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 50_FM5, $F8, $00

50_FM5:
	sPatFM		$00
	dc.b nG2, $03, nB2, $07
	sStop

50_Patches:

	; Patch $00
	; $3C
	; $00, $0A, $00, $00,	$1F, $1F, $1F, $0F
	; $00, $16, $15, $0F,	$00, $00, $00, $00
	; $0F, $AF, $FF, $FF,	$00, $80, $04, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $0A, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $15, $16, $0F
	spSustainLv	$00, $0F, $0A, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $04, $00, $00
