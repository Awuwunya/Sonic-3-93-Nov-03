53_Header:
	sHeaderInit						; Z80 offset is $C58C
	sHeaderPatch	53_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 53_PSG3, $00, $00

53_PSG3:
	sNoisePSG	$E7
	saVolPSG	$03
	dc.b nG3, $10
	sStop

53_Patches:
