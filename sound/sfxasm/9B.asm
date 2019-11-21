9B_Header:
	sHeaderInit						; Z80 offset is $D22B
	sHeaderPatch	9B_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 9B_FM5, $D0, $06

9B_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $09, $F6
	dc.b nC0, $37
	sStop

9B_Patches:

	; Patch $00
	; $E4
	; $1F, $31, $16, $30,	$14, $1A, $1F, $1F
	; $00, $01, $09, $02,	$01, $05, $03, $05
	; $14, $0F, $0F, $0F,	$0D, $8C, $03, $80
	spAlgorithm	$04
	spFeedback	$04
	spDetune	$01, $01, $03, $03
	spMultiple	$0F, $06, $01, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$14, $1F, $1A, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $09, $01, $02
	spSustainLv	$01, $00, $00, $00
	spDecayRt	$01, $03, $05, $05
	spReleaseRt	$04, $0F, $0F, $0F
	spTotalLv	$0D, $03, $0C, $00
