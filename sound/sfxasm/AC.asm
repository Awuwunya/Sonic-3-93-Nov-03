AC_Header:
	sHeaderInit						; Z80 offset is $D530
	sHeaderPatch	AC_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, AC_FM5, $00, $0B
	sHeaderSFX	$80, $04, AC_FM4, $00, $0C

AC_FM5:
	dc.b nRst, $04

AC_FM4:
	sPatFM		$00
	ssModZ80	$02, $01, $22, $B1

AC_Loop1:
	dc.b nC1, $06, nD1, nE1, nFs1
	saTranspose	$06
	saVolFM		$FE
	sLoop		$00, $04, AC_Loop1

AC_Loop2:
	dc.b nC1, $06
	saVolFM		$05
	sLoop		$00, $05, AC_Loop2
	sStop

AC_Patches:

	; Patch $00
	; $F6
	; $11, $00, $03, $03,	$1F, $1F, $1F, $1F
	; $10, $0C, $0C, $0C,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$09, $84, $92, $8E
	spAlgorithm	$06
	spFeedback	$06
	spDetune	$01, $00, $00, $00
	spMultiple	$01, $03, $00, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $0C, $0C, $0C
	spSustainLv	$01, $04, $02, $02
	spDecayRt	$0B, $10, $1F, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$09, $12, $04, $0E
