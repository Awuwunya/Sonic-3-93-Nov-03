42_Header:
	sHeaderInit						; Z80 offset is $C317
	sHeaderPatch	42_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 42_PSG3, $0A, $00

42_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v05
	dc.b nCs6, $04
	ssModZ80	$02, $01, $06, $07
	dc.b nA2, $10
	sStop

42_Patches:
