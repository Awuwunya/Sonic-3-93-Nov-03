88_Header:
	sHeaderInit						; Z80 offset is $CE99
	sHeaderPatch	88_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 88_FM5, $E6, $06

88_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $19, $02
	dc.b nE5, $2C
	sStop

88_Patches:

	; Patch $00
	; $01
	; $70, $30, $00, $12,	$1F, $1F, $1F, $1F
	; $1F, $0B, $07, $01,	$08, $01, $09, $01
	; $CF, $1F, $FF, $FF,	$04, $03, $02, $80
	spAlgorithm	$01
	spFeedback	$00
	spDetune	$07, $00, $03, $01
	spMultiple	$00, $00, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$1F, $07, $0B, $01
	spSustainLv	$0C, $0F, $01, $0F
	spDecayRt	$08, $09, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$04, $02, $03, $00
