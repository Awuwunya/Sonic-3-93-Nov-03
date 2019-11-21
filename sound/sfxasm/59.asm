59_Header:
	sHeaderInit						; Z80 offset is $C68E
	sHeaderPatch	59_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, 59_FM3, $10, $08

59_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $31, $20
	dc.b nA1, $12, nBb1, $11, nB1, $10, nC2, $0F
	dc.b nCs2, $0E, nD2, $0D, nEb2, $0C, nE2, $0B
	dc.b nF2, $0A, nFs2, $08, $08
	sStop

59_Patches:

	; Patch $00
	; $05
	; $00, $0A, $03, $07,	$0D, $0D, $0D, $0D
	; $00, $00, $00, $00,	$00, $0F, $0B, $0E
	; $0F, $0F, $0F, $0F,	$2B, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $03, $0A, $07
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0D, $0D, $0D, $0D
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $0B, $0F, $0E
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2B, $00, $00, $00
