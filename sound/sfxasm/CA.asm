CA_Header:
	sHeaderInit						; Z80 offset is $DAE1
	sHeaderPatch	CA_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $80, CA_PSG1, $00, $00

CA_PSG1:
	sVolEnvPSG	v0D
	dc.b nF2, $05
	ssModZ80	$02, $01, $F8, $65
	dc.b nBb2, $15
	sStop

CA_Patches:
