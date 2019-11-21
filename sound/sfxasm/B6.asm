B6_Header:
	sHeaderInit						; Z80 offset is $D720
	sHeaderPatch	B6_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, B6_PSG3, $FF, $00

B6_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v15
	ssModZ80	$01, $01, $DD, $02
	dc.b nE5, $04

B6_Loop1:
	dc.b nG6, $01
	saVolPSG	$01
	sLoop		$00, $0C, B6_Loop1
	sStop

B6_Patches:
