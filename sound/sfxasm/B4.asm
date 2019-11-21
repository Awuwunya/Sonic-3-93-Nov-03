B4_Header:
	sHeaderInit						; Z80 offset is $D6D4
	sHeaderPatch	B4_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, B4_PSG3, $02, $00

B4_PSG3:
	sVolEnvPSG	v0D
	sNoisePSG	$E7
	ssModZ80	$01, $01, $03, $05
	dc.b nA2, $26
	sStop

B4_Patches:
