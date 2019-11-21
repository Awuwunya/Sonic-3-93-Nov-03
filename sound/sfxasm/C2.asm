C2_Header:
	sHeaderInit						; Z80 offset is $D98E
	sHeaderPatch	C2_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, C2_FM5, $E5, $06

C2_FM5:
	sPatFM		$00
	ssModZ80	$02, $01, $06, $D7
	dc.b nD0, $64
	sStop

C2_Patches:

	; Patch $00
	; $EB
	; $1F, $77, $D0, $11,	$1C, $0B, $0F, $0F
	; $00, $00, $00, $00,	$00, $00, $00, $03
	; $D2, $00, $03, $17,	$13, $30, $A0, $80
	spAlgorithm	$03
	spFeedback	$05
	spDetune	$01, $0D, $07, $01
	spMultiple	$0F, $00, $07, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1C, $0F, $0B, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$0D, $00, $00, $01
	spDecayRt	$00, $00, $00, $03
	spReleaseRt	$02, $03, $00, $07
	spTotalLv	$13, $20, $30, $00
