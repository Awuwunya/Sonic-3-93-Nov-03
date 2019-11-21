B9_Header:
	sHeaderInit						; Z80 offset is $D7DB
	sHeaderPatch	B9_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, B9_FM5, $2C, $0B

B9_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $36, $95
	dc.b nFs2, $10

B9_Loop1:
	dc.b nC3, $10
	sLoop		$00, $07, B9_Loop1
	sStop

B9_Patches:

	; Patch $00
	; $1C
	; $31, $D7, $01, $00,	$10, $DB, $17, $15
	; $02, $0D, $0F, $0A,	$1C, $12, $0E, $13
	; $8F, $00, $00, $12,	$08, $80, $10, $80
	spAlgorithm	$04
	spFeedback	$03
	spDetune	$03, $00, $0D, $00
	spMultiple	$01, $01, $07, $00
	spRateScale	$00, $00, $03, $00
	spAttackRt	$10, $17, $1B, $15
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$02, $0F, $0D, $0A
	spSustainLv	$08, $00, $00, $01
	spDecayRt	$1C, $0E, $12, $13
	spReleaseRt	$0F, $00, $00, $02
	spTotalLv	$08, $10, $00, $00
