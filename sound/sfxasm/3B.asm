3B_Header:
	sHeaderInit						; Z80 offset is $C1BC
	sHeaderPatch	3B_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $04, 3B_FM4, $0C, $04
	sHeaderSFX	$80, $05, 3B_FM5, $0E, $02

3B_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $83, $0C

3B_Loop2:
	dc.b nA0, $05, $05
	saVolFM		$03
	sLoop		$00, $0A, 3B_Loop2
	sStop

3B_FM4:
	dc.b nRst, $06
	sPatFM		$00
	ssModZ80	$01, $01, $6F, $0E

3B_Loop1:
	dc.b nC1, $04, $05
	saVolFM		$03
	sLoop		$00, $0A, 3B_Loop1
	sStop

3B_Patches:

	; Patch $00
	; $35
	; $14, $1A, $04, $09,	$0E, $10, $11, $0E
	; $0C, $15, $03, $06,	$16, $0E, $09, $10
	; $2F, $2F, $4F, $4F,	$2F, $12, $12, $80
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$01, $00, $01, $00
	spMultiple	$04, $04, $0A, $09
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0E, $11, $10, $0E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $03, $15, $06
	spSustainLv	$02, $04, $02, $04
	spDecayRt	$16, $09, $0E, $10
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2F, $12, $12, $00
