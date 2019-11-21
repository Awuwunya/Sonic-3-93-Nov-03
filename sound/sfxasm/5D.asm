5D_Header:
	sHeaderInit						; Z80 offset is $C749
	sHeaderPatch	5D_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 5D_PSG3, $00, $00

5D_PSG3:
	sNoisePSG	$E7
	dc.b nB4, $08

5D_Loop1:
	dc.b nAb6
	saVolPSG	$01
	sLoop		$00, $03, 5D_Loop1
	dc.b $10, sHold
	sStop

5D_Patches:
