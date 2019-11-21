A1_Header:
	sHeaderInit						; Z80 offset is $D337
	sHeaderPatch	A1_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $A0, A1_PSG2, $FB, $02

A1_PSG2:
	dc.b nD4, $05
	sStop

A1_Patches:
