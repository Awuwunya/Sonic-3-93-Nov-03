AA_Header:
	sHeaderInit						; Z80 offset is $D4C6
	sHeaderPatch	AA_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, AA_FM5, $00, $00

AA_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0C, $01
	dc.b nG0, $06

AA_Loop1:
	dc.b nC0, $0E
	saVolFM		$0D
	sLoop		$00, $06, AA_Loop1
	sStop

AA_Patches:

	; Patch $00
	; $FA
	; $1F, $30, $00, $32,	$13, $1F, $1F, $1F
	; $12, $0E, $11, $04,	$1B, $13, $09, $13
	; $1F, $1F, $4F, $2F,	$0E, $80, $05, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$01, $00, $03, $03
	spMultiple	$0F, $00, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$13, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $11, $0E, $04
	spSustainLv	$01, $04, $01, $02
	spDecayRt	$1B, $09, $13, $13
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $05, $00, $00
