Knuckles_Header:
	sHeaderInit						; Z80 offset is $BB19
	sHeaderPatch	Knuckles_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $05
	sHeaderDAC	Knuckles_DAC
	sHeaderFM	Knuckles_FM1, $00, $10
	sHeaderFM	Knuckles_FM2, $00, $10
	sHeaderFM	Knuckles_FM3, $00, $10
	sHeaderFM	Knuckles_FM4, $00, $10
	sHeaderFM	Knuckles_FM5, $00, $10
	sHeaderPSG	Knuckles_PSG1, $F4, $07, $00, v00
	sHeaderPSG	Knuckles_PSG2, $00, $02, $00, v00
	sHeaderPSG	Knuckles_PSG3, $00, $00, $00, v03

Knuckles_PSG2:
	sStop

Knuckles_FM1:
	sPan		spCenter
	sPatFM		$00
	ssModZ80	$07, $01, $03, $05

Knuckles_Jump1:
	dc.b nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4
	dc.b nF4, nRst, nE4, nEb4, nRst, nD4, $08, nRst
	dc.b $04, nCs4, $08, nRst, $04, nC4, $06, nRst
	dc.b nCs4, nRst, nC4, nFs4, nF4, nE4, nRst, nEb4
	dc.b nD4, nRst
	ssModZ80	$07, $01, $14, $05
	dc.b nCs4, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4
	dc.b nF4, nRst, nE4, nEb4, nRst, nD4, $08, nRst
	dc.b $04, nCs4, $08, nRst, $04, nG3, $06, nAb3
	dc.b nA3, nBb3, nAb3, nA3, nBb3, nB3
	saVolFM		$FF
	dc.b nA3
	saVolFM		$FF
	dc.b nBb3
	saVolFM		$FF
	dc.b nB3
	saVolFM		$FF
	dc.b nC4
	saVolFM		$FF
	dc.b nBb3
	saVolFM		$FF
	dc.b nB3
	saVolFM		$FF
	dc.b nC4
	saVolFM		$FF
	dc.b nCs4
	saVolFM		$08
	sPan		spLeft
	dc.b nG4, $06, nAb4, nA4, nBb4
	sPan		spRight
	dc.b nAb5, nA5, nBb5, nB5
	sPan		spLeft
	dc.b nA6, nBb6
	sPan		spRight
	dc.b nB6, nC7
	saVolFM		$FC
	sPan		spCenter
	dc.b nBb3, nB3, nC3, nCs4
	saVolFM		$04
	sJump		Knuckles_Jump1

Knuckles_FM2:
	sPan		spLeft
	sPatFM		$01
	ssModZ80	$07, $01, $01, $05

Knuckles_Jump2:
	dc.b nF2, $0C, nRst, $06, nF2, $0C, $06, nRst
	dc.b $0C, nF2, $06, nRst, nF2, $0C, nAb2, nRst
	dc.b nF2, nRst, $06, nF2, $0C, $06, nRst, $0C
	dc.b nF2, $06, nRst, nF2, $0C, nFs2, nRst, nF2
	dc.b nRst, $06, nF2, $0C, $06, nRst, $0C, nF2
	dc.b $06, nRst, nF2, $0C, nAb2, nRst, nC2, $06
	dc.b nRst, nD2, nRst, nCs2, nRst, nEb2, nRst, nD2
	dc.b nRst, nE2, nRst, nEb2, nRst, nF2, nRst, nRst
	dc.b $60
	sJump		Knuckles_Jump2

Knuckles_FM3:
	sPan		spRight
	sPatFM		$01
	ssModZ80	$07, $01, $01, $05

Knuckles_Jump3:
	dc.b nRst, $0C, nF3, $06, nRst, $12, nF3, $0C
	dc.b nRst, $06, nF3, nRst, $18, nBb3, $0C, nRst
	dc.b nF3, $06, nRst, $12, nF3, $0C, nRst, $06
	dc.b nF3, nRst, $18, nEb3, $0C, nRst, nF3, $06
	dc.b nRst, $12, nF3, $0C, nRst, $06, nF3, nRst
	dc.b $18, nBb3, $0C, nRst, $06, nCs2, nRst, nEb2
	dc.b nRst, nD2, nRst, nE2, nRst, nEb2, nRst, nF2
	dc.b nRst, nE2, nRst, nFs2, nRst, $60
	sJump		Knuckles_Jump3

Knuckles_FM4:
	sPan		spLeft
	dc.b nRst, $01
	sPatFM		$02
	ssModZ80	$07, $01, $03, $05

Knuckles_Jump4:
	dc.b nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4
	dc.b nF4, nRst, nE4, nEb4, nRst, nD4, $08, nRst
	dc.b $04, nCs4, $08, nRst, $04, nC4, $06, nRst
	dc.b nCs4, nRst, nC4, nFs4, nF4, nE4, nRst, nEb4
	dc.b nD4, nRst
	ssModZ80	$07, $01, $14, $05
	dc.b nCs4, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4
	dc.b nF4, nRst, nE4, nEb4, nRst, nD4, $08, nRst
	dc.b $04, nCs4, $08, nRst, $04, nG3, $06, nAb3
	dc.b nA3, nBb3, nAb3, nA3, nBb3, nB3
	saVolFM		$FF
	dc.b nA3
	saVolFM		$FF
	dc.b nBb3
	saVolFM		$FF
	dc.b nB3
	saVolFM		$FF
	dc.b nC4
	saVolFM		$FF
	dc.b nBb3
	saVolFM		$FF
	dc.b nB3
	saVolFM		$FF
	dc.b nC4
	saVolFM		$FF
	dc.b nCs4
	saVolFM		$08
	dc.b nRst, $48, nBb5, $06, nB4, nC6, nCs5
	sJump		Knuckles_Jump4

Knuckles_FM5:
	sPan		spRight
	dc.b nRst, $02
	sPatFM		$02
	ssModZ80	$07, $01, $03, $05

Knuckles_Jump5:
	dc.b nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4
	dc.b nF4, nRst, nE4, nEb4, nRst, nD4, $08, nRst
	dc.b $04, nCs4, $08, nRst, $04, nC4, $06, nRst
	dc.b nCs4, nRst, nC4, nFs4, nF4, nE4, nRst, nEb4
	dc.b nD4, nRst
	ssModZ80	$07, $01, $14, $05
	dc.b nCs4, $18
	ssModZ80	$07, $01, $03, $05
	dc.b nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4
	dc.b nF4, nRst, nE4, nEb4, nRst, nD4, $08, nRst
	dc.b $04, nCs4, $08, nRst, $04, nG3, $06, nAb3
	dc.b nA3, nBb3, nAb3, nA3, nBb3, nB3
	saVolFM		$FF
	dc.b nA3
	saVolFM		$FF
	dc.b nBb3
	saVolFM		$FF
	dc.b nB3
	saVolFM		$FF
	dc.b nC4
	saVolFM		$FF
	dc.b nBb3
	saVolFM		$FF
	dc.b nB3
	saVolFM		$FF
	dc.b nC4
	saVolFM		$FF
	dc.b nCs4
	saVolFM		$08
	dc.b nRst, $48, nBb4, $06, nB5, nC5, nCs6
	sJump		Knuckles_Jump5

Knuckles_PSG1:
	dc.b nRst, $02
	sVolEnvPSG	v09

Knuckles_Jump6:
	dc.b nC4, $06, nRst, nCs4, nRst, nC4, nG4, nFs4
	dc.b nF4, nRst, nE4, nEb4, nRst, nD4, $08, nRst
	dc.b $04, nCs4, $08, nRst, $04, nC4, $06, nRst
	dc.b nCs4, nRst, nC4, nFs4, nF4, nE4, nRst, nEb4
	dc.b nD4, nRst, nCs4, $18, nC4, $06, nRst, nCs4
	dc.b nRst, nC4, nG4, nFs4, nF4, nRst, nE4, nEb4
	dc.b nRst, nD4, $08, nRst, $04, nCs4, $08, nRst
	dc.b $04, nG3, $06, nAb3, nA3, nBb3, nAb3, nA3
	dc.b nBb3, nB3, nA3, nBb3, nB3, nC4, nBb3, nB3
	dc.b nC4, nCs4, nG4, $06, nAb4, nA4, nBb4, nAb3
	dc.b nA3, nBb3, nB3, nA4, nBb4, nB4, nC5, nBb3
	dc.b nB3, nC4, nCs4
	sJump		Knuckles_Jump6

Knuckles_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v01
	dc.b nB6, $18, nB6, nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6, nB6, nB6, nB6, $0C
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6, $18, nB6, nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6, $06, nB6, nB6, nB6, nB6, nB6, nB6
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6, $06, nB6, nB6, nB6, nB6, nB6, nB6
	dc.b nB6, nRst, $48
	sVolEnvPSG	v01
	dc.b nB6, $06, nB6, nB6, nB6
	sJump		Knuckles_PSG3

Knuckles_DAC:
	dc.b dKick, $18, dMuffledSnare, dKick, dMuffledSnare, dKick, dMuffledSnare, dKick
	dc.b dMuffledSnare, $0C, dSnare, dKick, $18, dMuffledSnare, dKick, dMuffledSnare
	dc.b dKick, $06, dSnare, dSnare, dSnare, dKick, dSnare, dSnare
	dc.b dSnare, dKick, dSnare, dSnare, dSnare, dMuffledSnare, dSnare, dSnare
	dc.b dSnare, dKick, $18, dKick, dKick, dMuffledSnare, $06, dSnare
	dc.b dSnare, dSnare
	sJump		Knuckles_DAC

Knuckles_Patches:

	; Patch $00
	; $3A
	; $01, $07, $01, $01,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $07
	; $1F, $FF, $1F, $0F,	$18, $28, $27, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0E, $0D, $0E, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spSustainLv	$01, $01, $0F, $00
	spDecayRt	$00, $00, $00, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$18, $27, $28, $00

	; Patch $01
	; $31
	; $34, $35, $30, $31,	$DF, $DF, $9F, $9F
	; $0C, $07, $0C, $09,	$07, $07, $07, $08
	; $2F, $1F, $1F, $2F,	$17, $32, $14, $80
	spAlgorithm	$01
	spFeedback	$06
	spDetune	$03, $03, $03, $03
	spMultiple	$04, $00, $05, $01
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0C, $07, $09
	spSustainLv	$02, $01, $01, $02
	spDecayRt	$07, $07, $07, $08
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $14, $32, $00

	; Patch $02
	; $3D
	; $01, $01, $00, $00,	$8E, $52, $14, $4C
	; $08, $08, $0E, $03,	$00, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$1B, $80, $80, $9B
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $00, $01, $00
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0E, $14, $12, $0C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $0E, $08, $03
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $00, $00, $1B
