9E_Header:
	sHeaderInit						; Z80 offset is $D2AE
	sHeaderPatch	9E_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $A0, 9E_PSG2, $E1, $00
	sHeaderSFX	$80, $C0, 9E_PSG3, $E1, $00

9E_PSG2:
	ssModZ80	$0F, $01, $FF, $17
	sVolEnvPSG	v00
	dc.b nA7, $20
	sStop

9E_PSG3:
	sNoisePSG	$E7
	ssModZ80	$0F, $01, $FF, $47
	sVolEnvPSG	v00
	dc.b nA7, $20
	sStop

9E_Patches:
