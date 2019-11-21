6B_Header:
	sHeaderInit						; Z80 offset is $C97C
	sHeaderPatch	6B_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 6B_FM5, $00, $00

6B_FM5:
	sPatFM		$00
	ssModZ80	$01, $01, $0D, $00
	dc.b nFs4, $0C, sHold
	ssModZ80	$00, $01, $00, $00
	dc.b $4B
	sStop
	; 6B_Patches at $C963 ($19 before start of file) can not be converted, because the data does not exist.
