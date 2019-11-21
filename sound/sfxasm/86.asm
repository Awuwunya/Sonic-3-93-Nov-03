86_Header:
	sHeaderInit						; Z80 offset is $CE20
	sHeaderPatch	86_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, 86_FM5, $FA, $00
	sHeaderSFX	$80, $C0, 86_PSG3, $04, $00

86_FM5:
	sPatFM		$00
	dc.b nA5, $04

86_Loop1:
	dc.b nEb6, $02
	saVolFM		$05
	sLoop		$00, $05, 86_Loop1
	sStop

86_PSG3:
	ssModZ80	$01, $01, $1B, $08
	sNoisePSG	$E7
	dc.b nFs6, $07

86_Loop2:
	dc.b nE6, $05
	saVolPSG	$02
	sLoop		$00, $0C, 86_Loop2
	sStop

86_Patches:

	; Patch $00
	; $23
	; $0E, $0E, $0B, $00,	$18, $10, $0C, $14
	; $00, $0E, $19, $10,	$00, $0C, $00, $0F
	; $0C, $EF, $FF, $FF,	$00, $04, $00, $80
	spAlgorithm	$03
	spFeedback	$04
	spDetune	$00, $00, $00, $00
	spMultiple	$0E, $0B, $0E, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$18, $0C, $10, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $19, $0E, $10
	spSustainLv	$00, $0F, $0E, $0F
	spDecayRt	$00, $00, $0C, $0F
	spReleaseRt	$0C, $0F, $0F, $0F
	spTotalLv	$00, $00, $04, $00
