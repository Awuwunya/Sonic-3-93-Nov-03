8E_Header:
	sHeaderInit						; Z80 offset is $CFD3
	sHeaderPatch	8E_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 8E_PSG3, $00, $03

8E_PSG3:
	sNoisePSG	$E7
	dc.b nBb6, $05, $05, $06
	sStop

8E_Patches:
