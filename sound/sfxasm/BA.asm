BA_Header:
	sHeaderInit						; Z80 offset is $D80F
	sHeaderPatch	BA_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $C0, BA_PSG3, $00, $04
	sHeaderSFX	$80, $05, BA_FM5, $00, $01

BA_PSG3:
	sVolEnvPSG	v15
	sNoisePSG	$E7
	dc.b nF5, $05, nA5, $05, sHold

BA_Loop1:
	dc.b $07
	saVolPSG	$01
	dc.b sHold
	sLoop		$00, $0F, BA_Loop1
	sStop

BA_FM5:
	sPatFM		$00
	dc.b nG1, $1C
	sStop

BA_Patches:

	; Patch $00
	; $52
	; $ED, $F3, $13, $F1,	$1F, $1F, $1F, $1F
	; $03, $11, $0E, $0F,	$01, $00, $0A, $0D
	; $FF, $FF, $FF, $FF,	$22, $17, $07, $80
	spAlgorithm	$02
	spFeedback	$02
	spDetune	$0E, $01, $0F, $0F
	spMultiple	$0D, $03, $03, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$03, $0E, $11, $0F
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$01, $0A, $00, $0D
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$22, $07, $17, $00
