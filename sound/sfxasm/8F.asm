8F_Header:
	sHeaderInit						; Z80 offset is $CFE4
	sHeaderPatch	8F_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 8F_PSG3, $00, $03

8F_PSG3:
	sNoisePSG	$E7
	ssModZ80	$01, $01, $01, $01
	dc.b nB6, $09
	saVolPSG	$04
	dc.b nG6, $06
	sStop

8F_Patches:
