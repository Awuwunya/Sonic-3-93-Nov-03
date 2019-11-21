60_Header:
	sHeaderInit						; Z80 offset is $C7C5
	sHeaderPatch	60_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, 60_FM3, $F0, $0D

60_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $0F, $00
	dc.b nEb3, $30, sHold
	sModOff
	dc.b nB3, $70
	sStop
	; 60_Patches at $C7AC ($19 before start of file) can not be converted, because the data does not exist.
