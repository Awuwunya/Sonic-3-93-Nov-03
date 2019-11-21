90_Header:
	sHeaderInit						; Z80 offset is $CFFC
	sHeaderPatch	90_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 90_FM5, $FD, $00

90_FM5:
	sPatFM		$00
	ssModZ80	$02, $01, $A2, $42

90_Loop1:
	dc.b nCs2, $0D
	saVolFM		$10
	dc.b nCs2, $0D
	sLoop		$00, $02, 90_Loop1
	sStop

90_Patches:

	; Patch $00
	; $7B
	; $21, $16, $17, $90,	$1F, $13, $1F, $0F
	; $12, $10, $05, $12,	$05, $02, $01, $03
	; $2F, $4F, $5F, $2F,	$1A, $08, $1F, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$02, $01, $01, $09
	spMultiple	$01, $07, $06, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $13, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $05, $10, $12
	spSustainLv	$02, $05, $04, $02
	spDecayRt	$05, $01, $02, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $1F, $08, $00
