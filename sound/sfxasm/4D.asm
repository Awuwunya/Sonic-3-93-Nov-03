4D_Header:
	sHeaderInit						; Z80 offset is $C483
	sHeaderPatch	4D_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, 4D_PSG3, $00, $00

4D_PSG3:
	sNoisePSG	$E7
	dc.b nA6, $05

4D_Jump1:
	dc.b nB6, $10, sHold
	sJump		4D_Jump1
	dc.b $F2	; Unused

4D_Patches:
