C7_Header:
	sHeaderInit						; Z80 offset is $DA6F
	sHeaderPatch	C7_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, C7_PSG3, $02, $00

C7_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v1D
	ssModZ80	$01, $01, $E0, $CA
	dc.b nF4, $03, nFs4, $0D
	sStop

C7_Patches:
