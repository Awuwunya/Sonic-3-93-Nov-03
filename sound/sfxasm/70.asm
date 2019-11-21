70_Header:
	sHeaderInit						; Z80 offset is $CA31
	sHeaderPatch	70_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $80, 70_PSG1, $00, $00

70_PSG1:
	sVolEnvPSG	v0D
	dc.b nF2, $05
	ssModZ80	$02, $01, $F8, $65
	dc.b nBb2, $15
	sStop

70_Patches:
