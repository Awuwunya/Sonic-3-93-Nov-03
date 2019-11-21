7E_Header:
	sHeaderInit						; Z80 offset is $CC8E
	sHeaderPatch	7E_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, 7E_FM5, $00, $00
	sHeaderSFX	$80, $C0, 7E_PSG3, $0D, $00

7E_FM5:
	sPatFM		$00
	dc.b nRst, $01
	ssModZ80	$01, $01, $40, $48
	dc.b nD0, $06, nE0, $02
	sStop

7E_PSG3:
	sVolEnvPSG	v0D
	dc.b nRst, $0B
	sNoisePSG	$E7
	dc.b nA5, $01, sHold

7E_Loop1:
	dc.b $02
	saVolPSG	$01
	dc.b sHold
	sLoop		$00, $10, 7E_Loop1
	sStop

7E_Patches:

	; Patch $00
	; $FA
	; $02, $03, $00, $05,	$12, $11, $0F, $13
	; $05, $18, $09, $02,	$06, $0F, $06, $02
	; $1F, $2F, $4F, $2F,	$2F, $1A, $0E, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $00, $03, $05
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $0F, $11, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $09, $18, $02
	spSustainLv	$01, $04, $02, $02
	spDecayRt	$06, $06, $0F, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2F, $0E, $1A, $00
