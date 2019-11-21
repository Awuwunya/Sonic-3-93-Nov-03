64_Header:
	sHeaderInit						; Z80 offset is $C87F
	sHeaderPatch	64_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $A0, 64_PSG2, $00, $00

64_PSG2:
	dc.b nA5, $02
	sStop

64_Patches:
