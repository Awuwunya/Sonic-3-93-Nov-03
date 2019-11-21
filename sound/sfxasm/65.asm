65_Header:
	sHeaderInit						; Z80 offset is $C88C
	sHeaderPatch	65_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 65_PSG3, $00, $00

65_PSG3:
	sNoisePSG	$E7
	dc.b nCs4, $03
	sStop

65_Patches:
