7B_Header:
	sHeaderInit						; Z80 offset is $CC05
	sHeaderPatch	7B_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 7B_PSG3, $00, $00

7B_PSG3:
	sVolEnvPSG	v0D
	sNoisePSG	$E7
	dc.b nA5, $03, nRst, $03, nA5, $01, sHold

7B_Loop1:
	dc.b $01
	saVolPSG	$01
	dc.b sHold
	sLoop		$00, $15, 7B_Loop1
	sStop

7B_Patches:
