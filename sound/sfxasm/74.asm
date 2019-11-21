74_Header:
	sHeaderInit						; Z80 offset is $CAC2
	sHeaderPatch	74_Patches
	sHeaderTick	$01
	sHeaderCh	$02
	sHeaderSFX	$80, $A0, 74_PSG2, $00, $00
	sHeaderSFX	$80, $C0, 74_PSG3, $00, $00

74_PSG2:
	sVolEnvPSG	v0D
	dc.b nBb3, $01, nRst, nBb3, nRst, $03

74_Loop1:
	dc.b nBb3, $01, nRst, $01
	sLoop		$00, $0B, 74_Loop1
	sStop

74_PSG3:
	sVolEnvPSG	v0D
	dc.b nRst, $01, nAb3, nRst, nAb3, nRst, $03

74_Loop2:
	dc.b nAb3, $01, nRst, $01
	sLoop		$00, $0B, 74_Loop2
	sStop

74_Patches:
