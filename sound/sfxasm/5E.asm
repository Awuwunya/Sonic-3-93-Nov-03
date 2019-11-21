5E_Header:
	sHeaderInit						; Z80 offset is $C762
	sHeaderPatch	5E_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $02, 5E_FM3, $02, $00

5E_FM3:
	sPatFM		$00
	ssModZ80	$01, $01, $7F, $24

5E_Loop1:
	dc.b nB1, $22
	sLoop		$00, $0A, 5E_Loop1
	sStop

5E_Patches:

	; Patch $00
	; $04
	; $00, $10, $22, $30,	$0F, $0F, $0F, $0F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$19, $88, $30, $80
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$00, $02, $01, $03
	spMultiple	$00, $02, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $0F, $0F, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$19, $30, $08, $00
