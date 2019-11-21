61_Header:
	sHeaderInit						; Z80 offset is $C7DD
	sHeaderPatch	61_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 61_PSG3, $1D, $00

61_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v0F
	dc.b nB3, $02, nRst, $03, nD4, $04
	saVolPSG	$02
	dc.b nD3, $04
	sStop

61_Patches:
