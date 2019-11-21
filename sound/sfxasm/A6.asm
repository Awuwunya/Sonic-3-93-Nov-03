A6_Header:
	sHeaderInit						; Z80 offset is $D413
	sHeaderPatch	A6_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, A6_PSG3, $1F, $05

A6_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v16
	ssModZ80	$01, $01, $F0, $17
	dc.b nD4, $03, $03, $03, $03, $04
	sStop

A6_Patches:
