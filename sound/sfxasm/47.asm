47_Header:
	sHeaderInit						; Z80 offset is $C3CC
	sHeaderPatch	47_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 47_PSG3, $00, $00

47_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v0D
	dc.b nB6, $02, sHold, nBb6, sHold, nA6, sHold, nAb6

47_Loop1:
	dc.b sHold, nG6
	saVolPSG	$01
	sLoop		$00, $0A, 47_Loop1
	sStop

47_Patches:
