AD_Header:
	sHeaderInit						; Z80 offset is $D57A
	sHeaderPatch	AD_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, AD_FM5, $00, $08

AD_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $CB, $16
	dc.b nC0, $08, nC0, $08
	sStop

AD_Patches:

	; Patch $00
	; $F9
	; $20, $30, $10, $30,	$1F, $1F, $0B, $1F
	; $05, $18, $09, $02,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$0D, $8C, $03, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$02, $01, $03, $03
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $0B, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $09, $18, $02
	spSustainLv	$01, $04, $02, $02
	spDecayRt	$0B, $10, $1F, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0D, $03, $0C, $00
