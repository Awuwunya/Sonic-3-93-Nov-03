9D_Header:
	sHeaderInit						; Z80 offset is $D288
	sHeaderPatch	9D_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $A0, 9D_PSG2, $E1, $05
	sHeaderSFX	$80, $C0, 9D_PSG3, $E1, $05

9D_PSG2:
	ssModZ80	$0F, $01, $FF, $17
	sVolEnvPSG	v00
	dc.b nA7, $20
	sStop

9D_PSG3:
	sNoisePSG	$E7
	ssModZ80	$0F, $01, $FF, $47
	sVolEnvPSG	v00
	dc.b nA7, $20
	sStop

9D_Patches:
