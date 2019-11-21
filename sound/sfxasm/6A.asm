6A_Header:
	sHeaderInit						; Z80 offset is $C94A
	sHeaderPatch	6A_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 6A_FM5, $E2, $05

6A_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $35, $00

6A_Loop1:
	dc.b nFs6, $14
	sLoop		$00, $0A, 6A_Loop1
	sStop

6A_Patches:

	; Patch $00
	; $34
	; $0B, $0F, $06, $03,	$1F, $1F, $1F, $0F
	; $00, $00, $0C, $00,	$00, $08, $00, $09
	; $FF, $0F, $FF, $0F,	$08, $86, $08, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$0B, $06, $0F, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $0C, $00, $00
	spSustainLv	$0F, $0F, $00, $00
	spDecayRt	$00, $00, $08, $09
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$08, $08, $06, $00
