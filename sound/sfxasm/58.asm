58_Header:
	sHeaderInit						; Z80 offset is $C671
	sHeaderPatch	58_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 58_PSG3, $00, $03

58_PSG3:
	ssModZ80	$01, $01, $F0, $08
	sNoisePSG	$E7
	dc.b nE5, $07

58_Loop1:
	dc.b nG6, $01
	saVolPSG	$01
	sLoop		$00, $0C, 58_Loop1
	sStop

58_Patches:
