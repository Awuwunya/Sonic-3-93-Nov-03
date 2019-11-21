C3_Header:
	sHeaderInit						; Z80 offset is $D9BB
	sHeaderPatch	C3_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $80, C3_PSG1, $0F, $03
	sHeaderSFX	$80, $A0, C3_PSG2, $11, $04

C3_PSG1:
	dc.b nRst, $03

C3_PSG2:
	dc.b nRst, $03
	sVolEnvPSG	v16
	ssModZ80	$03, $01, $ED, $10
	dc.b nD0, $07
	saTranspose	$01
	sLoop		$00, $10, C3_PSG2
	dc.b nRst, $03, nEb0, $05, nRst, $03, nEb0, $05
	sStop

C3_Patches:
