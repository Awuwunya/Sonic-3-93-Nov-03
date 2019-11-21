AE_Header:
	sHeaderInit						; Z80 offset is $D5A9
	sHeaderPatch	AE_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, AE_FM5, $F2, $05

AE_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $EB, $16
	dc.b nBb5, $05, nG5, $03, nBb5, $05, nG5, $03
	sStop

AE_Patches:

	; Patch $00
	; $11
	; $0F, $0F, $0B, $0F,	$5F, $5F, $5F, $5F
	; $1C, $1A, $13, $12,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$14, $28, $2A, $80
	spAlgorithm	$01
	spFeedback	$02
	spDetune	$00, $00, $00, $00
	spMultiple	$0F, $0B, $0F, $0F
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1C, $13, $1A, $12
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$14, $2A, $28, $00
