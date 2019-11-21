CC_Header:
	sHeaderInit						; Z80 offset is $DB52
	sHeaderPatch	CC_Patches
	sHeaderTick	$01
	sHeaderCh	$01
	sHeaderSFX	$80, $05, CC_FM5, $00, $00

CC_FM5:
	sPatFM		$00
	ssModZ80	$00, $01, $20, $F6
	dc.b nG5, $20
	sModOff
	sPatFM		$01
	dc.b nG6, $25, sHold

CC_Jump1:
	dc.b $03, sHold
	sJump		CC_Jump1
	dc.b $F2	; Unused

CC_Patches:

	; Patch $00
	; $34
	; $00, $0C, $03, $09,	$9F, $8F, $8C, $D5
	; $04, $02, $00, $00,	$00, $04, $0A, $08
	; $BF, $BF, $BF, $BF,	$00, $80, $1C, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $03, $0C, $09
	spRateScale	$02, $02, $02, $03
	spAttackRt	$1F, $0C, $0F, $15
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $00, $02, $00
	spSustainLv	$0B, $0B, $0B, $0B
	spDecayRt	$00, $0A, $04, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $1C, $00, $00

	; Patch $01
	; $34
	; $00, $0C, $03, $09,	$9F, $9F, $9F, $DF
	; $00, $00, $00, $00,	$00, $00, $0A, $08
	; $BF, $BF, $BF, $BF,	$00, $96, $1C, $89
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $03, $0C, $09
	spRateScale	$02, $02, $02, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$0B, $0B, $0B, $0B
	spDecayRt	$00, $0A, $00, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$00, $1C, $16, $09
