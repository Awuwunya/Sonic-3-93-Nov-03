4A_Header:
	sHeaderInit						; Z80 offset is $C41E
	sHeaderPatch	4A_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 4A_PSG3, $00, $00

4A_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v0D
	dc.b nFs4, $04

4A_Loop1:
	dc.b sHold, $0F
	saVolPSG	$01
	sLoop		$00, $04, 4A_Loop1
	sStop

4A_Patches:
