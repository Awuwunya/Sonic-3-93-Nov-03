5C_Header:
	sHeaderInit						; Z80 offset is $C739
	sHeaderPatch	5C_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 5C_FM5, $EE, $00

5C_FM5:
	sPatFM		$00
	dc.b nB2, $06, nEb3
	sStop
	; 5C_Patches at $C502 ($237 before start of file) can not be converted, because the data does not exist.
