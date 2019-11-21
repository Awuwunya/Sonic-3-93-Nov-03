BD_Header:
	sHeaderInit						; Z80 offset is $D8BA
	sHeaderPatch	BD_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, BD_PSG3, $00, $00

BD_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v1D
	ssModZ80	$01, $01, $FE, $53
	dc.b nAb6, $06, nEb5, $38
	sStop

BD_Patches:
