B3_Header:
	sHeaderInit						; Z80 offset is $D688
	sHeaderPatch	B3_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, B3_FM5, $00, $06
	sHeaderSFX	$80, $C0, B3_PSG3, $F0, $04

B3_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $B2, $11
	dc.b nC0, $03, $09
	saVolFM		$15
	sLoop		$00, $03, B3_FM5
	sStop

B3_PSG3:
	sNoisePSG	$E7
	ssModZ80	$01, $01, $04, $01
	dc.b nC0, $0F
	saVolPSG	$05
	sLoop		$00, $03, B3_PSG3
	sStop

B3_Patches:

	; Patch $00
	; $02
	; $10, $10, $10, $11,	$18, $18, $1A, $1F
	; $00, $05, $17, $10,	$00, $08, $0D, $00
	; $00, $0F, $0F, $1D,	$10, $00, $00, $80
	spAlgorithm	$02
	spFeedback	$00
	spDetune	$01, $01, $01, $01
	spMultiple	$00, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$18, $1A, $18, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $17, $05, $10
	spSustainLv	$00, $00, $00, $01
	spDecayRt	$00, $0D, $08, $00
	spReleaseRt	$00, $0F, $0F, $0D
	spTotalLv	$10, $00, $00, $00
