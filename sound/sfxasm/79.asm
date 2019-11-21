79_Header:
	sHeaderInit						; Z80 offset is $CBB2
	sHeaderPatch	79_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $A0, 79_PSG2, $0C, $00

79_PSG2:
	ssModZ80	$01, $01, $E6, $35
	dc.b nCs1, $06
	sStop

79_Patches:
