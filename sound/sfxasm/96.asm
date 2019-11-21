96_Header:
	sHeaderInit						; Z80 offset is $D12F
	sHeaderPatch	96_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 96_PSG3, $1E, $00

96_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v09
	ssModZ80	$02, $01, $09, $06
	dc.b nA2, $05, nRst, $01
	saVolPSG	$03
	saVolPSG	$10
	dc.b nRst, $01
	sStop

96_Patches:
