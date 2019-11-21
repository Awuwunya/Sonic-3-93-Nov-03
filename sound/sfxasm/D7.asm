D7_Header:
	sHeaderInit						; Z80 offset is $DE73
	sHeaderPatch	D7_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, D7_FM5, $90, $00
	sHeaderSFX	$80, $C0, D7_PSG3, $00, $00

D7_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $C5, $1A
	dc.b nF7, $07
	sStop

D7_PSG3:
	sVolEnvPSG	v07
	dc.b nRst, $07
	ssModZ80	$01, $02, $05, $FF
	sNoisePSG	$E7
	dc.b nA5, $4F
	sStop

D7_Patches:

	; Patch $00
	; $FD
	; $09, $03, $00, $00,	$1F, $1F, $1F, $1F
	; $10, $0C, $0C, $0C,	$0B, $1F, $10, $05
	; $1F, $2F, $4F, $2F,	$09, $84, $92, $8E
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$09, $00, $03, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $0C, $0C, $0C
	spSustainLv	$01, $04, $02, $02
	spDecayRt	$0B, $10, $1F, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$09, $12, $04, $0E
