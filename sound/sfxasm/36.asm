36_Header:
	sHeaderInit						; Z80 offset is $C0B6
	sHeaderPatch	36_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $A0, 36_PSG2, $00, $00
	sHeaderSFX	$80, $C0, 36_PSG3, $00, $00

36_PSG2:
	sVolEnvPSG	v0D
	dc.b nBb3, $01, nRst, nBb3, nRst, $03

36_Loop1:
	dc.b nBb3, $01, nRst, $01
	sLoop		$00, $0B, 36_Loop1
	sStop

36_PSG3:
	sVolEnvPSG	v0D
	dc.b nRst, $01, nAb3, nRst, nAb3, nRst, $03

36_Loop2:
	dc.b nAb3, $01, nRst, $01
	sLoop		$00, $0B, 36_Loop2
	sStop

36_Patches:
