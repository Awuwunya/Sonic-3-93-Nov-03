34_Header:
	sHeaderInit						; Z80 offset is $C05C
	sHeaderPatch	34_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $04, 34_FM4, $00, $05
	sHeaderSFX	$80, $05, 34_FM5, $00, $08

34_FM4:
	sPatFM		$00
	dc.b nA5, $02, $05, $05, $05, $05, $05, $05
	dc.b $3A
	sStop

34_FM5:
	sPatFM		$00
	dc.b nRst, $02, nG5, $02, $05, $15, $02, $05
	dc.b $32
	sStop
	; 34_Patches at $C043 ($19 before start of file) can not be converted, because the data does not exist.
