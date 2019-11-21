4F_Header:
	sHeaderInit						; Z80 offset is $C4C0
	sHeaderPatch	4F_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $05, 4F_FM5, $00, $06
	sHeaderSFX	$80, $C0, 4F_PSG3, $00, $00

4F_FM5:
	sPatFM		$00
	dc.b nEb5, $06, sHold, nG6, $05

4F_Loop1:
	dc.b sHold
	saVolFM		$02
	dc.b $05
	sLoop		$00, $0A, 4F_Loop1
	sStop

4F_PSG3:
	sNoisePSG	$E7
	dc.b nBb5, $10

4F_Loop2:
	dc.b sHold
	saVolPSG	$01
	saTranspose	$FF
	dc.b $05
	sLoop		$00, $0A, 4F_Loop2
	sStop
	; 4F_Patches at $C4A7 ($19 before start of file) can not be converted, because the data does not exist.
