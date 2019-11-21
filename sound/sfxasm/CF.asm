CF_Header:
	sHeaderInit						; Z80 offset is $DC3F
	sHeaderPatch	CF_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, CF_FM5, $0D, $0A
	sHeaderSFX	$80, $06, CF_FM6, $0D, $09

CF_FM6:
	sJump		CF_Jump1

CF_FM5:
	ssDetune	$01

CF_Jump1:
	sPatFM		$00
	dc.b nF1, $03, nCs2, $1A
	sStop

CF_Patches:

	; Patch $00
	; $3D
	; $12, $77, $13, $30,	$5F, $5F, $5F, $5F
	; $0D, $0A, $0A, $0A,	$0D, $0D, $0D, $0D
	; $4F, $0F, $0F, $0F,	$10, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$01, $01, $07, $03
	spMultiple	$02, $03, $07, $00
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $0A, $0A, $0A
	spSustainLv	$04, $00, $00, $00
	spDecayRt	$0D, $0D, $0D, $0D
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$10, $00, $00, $00
