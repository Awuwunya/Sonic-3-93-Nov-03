B1_Header:
	sHeaderInit						; Z80 offset is $D63F
	sHeaderPatch	B1_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, B1_PSG3, $14, $02

B1_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v11
	dc.b nCs6, $04, nEb5, $7F
	sStop

B1_Patches:
