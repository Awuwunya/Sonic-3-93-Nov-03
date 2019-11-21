72_Header:
	sHeaderInit						; Z80 offset is $CA71
	sHeaderPatch	72_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 72_PSG3, $00, $00

72_PSG3:
	ssModZ80	$01, $01, $F0, $08
	sNoisePSG	$E7
	dc.b nEb5, $04, nCs6, $04

72_Loop1:
	dc.b nEb5, $01
	saVolPSG	$01
	sLoop		$00, $06, 72_Loop1
	sStop

72_Patches:
