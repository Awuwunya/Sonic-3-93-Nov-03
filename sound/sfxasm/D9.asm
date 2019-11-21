D9_Header:
	sHeaderInit						; Z80 offset is $DEDC
	sHeaderPatch	D9_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $A0, D9_PSG2, $00, $00

D9_PSG2:
	sVolEnvPSG	v03

D9_Loop1:
	dc.b nD5, $04, nE5, nFs5
	saVolPSG	$01
	saTranspose	$FF
	sLoop		$00, $05, D9_Loop1

D9_Loop2:
	dc.b nD5, $04, nE5, nFs5
	saVolPSG	$01
	saTranspose	$01
	sLoop		$00, $07, D9_Loop2
	sStop

D9_Patches:
