43_Header:
	sHeaderInit						; Z80 offset is $C32F
	sHeaderPatch	43_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 43_PSG3, $00, $00

43_PSG3:
	sVolEnvPSG	v0D
	sNoisePSG	$E7
	dc.b nD3, $15, sHold

43_Loop1:
	dc.b $02
	saVolPSG	$01
	dc.b sHold
	sLoop		$00, $10, 43_Loop1
	sStop

43_Patches:
