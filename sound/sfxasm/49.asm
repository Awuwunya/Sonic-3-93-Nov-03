49_Header:
	sHeaderInit						; Z80 offset is $C414
	sHeaderPatch	49_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, 49_FM5, $FA, $0C
	; 49_FM5 at $C3F6 ($1E before start of file) can not be converted, because the data does not exist.
	; 49_Patches at $C3FB ($19 before start of file) can not be converted, because the data does not exist.
