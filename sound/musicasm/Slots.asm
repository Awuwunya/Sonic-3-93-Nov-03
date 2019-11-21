Slots_Header:
	sHeaderInit						; Z80 offset is $A31C
	sHeaderPatch	Slots_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $20
	sHeaderDAC	Slots_DAC
	sHeaderFM	Slots_FM1, $F4, $0C
	sHeaderFM	Slots_FM2, $F4, $0E
	sHeaderFM	Slots_FM3, $00, $15
	sHeaderFM	Slots_FM4, $00, $20
	sHeaderFM	Slots_FM5, $00, $0B
	sHeaderPSG	Slots_PSG1, $E8, $05, $03, v00
	sHeaderPSG	Slots_PSG2, $E8, $05, $03, v00
	sHeaderPSG	Slots_PSG3, $00, $00, $00, v03

Slots_FM1:
	sPatFM		$00
	sPan		spCenter
	ssModZ80	$07, $01, $02, $05
	dc.b nD4, $05, nRst, $07, nD4, $05, nRst, $07
	dc.b nD4, $06, nA3, $05, nRst, $07, nA3, $06
	dc.b nB3, $05, nRst, $07, nB3, $0C, nCs4, $05
	dc.b nRst, $07, nCs4, $0C, nD4, $05, nRst, $07
	dc.b nD4, $05, nRst, $07, nD4, $06, nA3, $05
	dc.b nRst, $07, nA3, $06, nB3, $05, nRst, $07
	dc.b nA3, $0C, nCs4, $05, nRst, $07, nA3, $0C
	dc.b nD4, $05, nRst, $07, nD4, $05, nRst, $07
	dc.b nD4, $06, nA3, $05, nRst, $07, nA3, $06
	dc.b nB3, $05, nRst, $07, nB3, $0C, nCs4, $05
	dc.b nRst, $07, nCs4, $0C, nD4, $05, nRst, $07
	dc.b nD4, $05, nRst, $07, nD4, $06, nA3, $05
	dc.b nRst, $07, nA3, $06, nB3, $05, nRst, $07
	dc.b nA3, $0C, nCs4, $05, nRst, $07, nA3, $0C

Slots_Jump1:
	dc.b nD4, $05, nRst, $07, nD4, $05, nRst, $07
	dc.b nD4, $06, nA3, $05, nRst, $07, nA3, $06
	dc.b nB3, $05, nRst, $07, nB3, $0C, nCs4, $05
	dc.b nRst, $07, nCs4, $0C, nD4, $05, nRst, $07
	dc.b nD4, $05, nRst, $07, nD4, $06, nA3, $05
	dc.b nRst, $07, nA3, $06, nB3, $05, nRst, $07
	dc.b nA3, $0C, nCs4, $05, nRst, $07, nA3, $0C
	dc.b nD4, $05, nRst, $07, nD4, $05, nRst, $07
	dc.b nD4, $06, nA3, $05, nRst, $07, nA3, $06
	dc.b nB3, $05, nRst, $07, nB3, $0C, nCs4, $05
	dc.b nRst, $07, nCs4, $0C, nD4, $05, nRst, $07
	dc.b nD4, $05, nRst, $07, nD4, $06, nA3, $05
	dc.b nRst, $07, nA3, $06, nB3, $05, nRst, $07
	dc.b nA3, $0C, nCs4, $05, nRst, $07, nA3, $0C
	dc.b nG3, $06, nRst, nG3, nRst, nG3, nRst, nG3
	dc.b nG3, nRst, nG3, nA3, nRst, nB3, $0A, nRst
	dc.b $02, nD4, $0A, nRst, $02, nFs3, $06, nRst
	dc.b nFs3, nRst, nFs3, nRst, nFs3, nCs4, nRst, nCs4
	dc.b nRst, nCs4, nB3, nCs4, nD4, nFs4, nG3, nRst
	dc.b nG3, nRst, nG3, nRst, nG3, nAb3, nRst, nAb3
	dc.b nRst, nAb3, nA3, nB3, nCs4, nD4, nA3, nRst
	dc.b $12, nA3, $48, nD4, $06, nRst, nD4, nRst
	dc.b nD4, nRst, nA3, nB3, nRst, nB3, nA3, nRst
	dc.b nB3, $0A, nRst, $02, nCs4, $0A, nRst, $02
	dc.b nD4, $06, nRst, nD4, nRst, nD4, nA3, nRst
	dc.b nA3, nB3, nRst, nA3, $0A, nRst, $02, nCs4
	dc.b $06, nRst, nA3, $0A, nRst, $02, nD4, $06
	dc.b nRst, nD4, nRst, nD4, nA3, nRst, nA3, nB3
	dc.b nRst, nB3, $0A, nRst, $02, nCs4, $06, nRst
	dc.b nCs4, $0A, nRst, $02, nD4, $06, nRst, nD4
	dc.b nRst, nD4, nA3, nRst, nA3, nB3, nRst, nA3
	dc.b $0A, nRst, $02, nCs4, $06, nRst, nA3, $0A
	dc.b nRst, $02, nG3, $06, nRst, nG3, nRst, nG3
	dc.b nRst, nG3, nG3, nRst, nG3, nA3, $0A, nRst
	dc.b $02, nB3, $06, nRst, nD4, $0A, nRst, $02
	dc.b nFs3, $06, nRst, nFs3, nRst, nFs3, nRst, nFs3
	dc.b nFs3, $0A, nRst, $02, nB3, $06, nRst, nCs4
	dc.b nD4, nRst, nFs4, $0A, nRst, $02, nG3, $06
	dc.b nRst, nA3, nRst, nB3, nRst, nD4, nA3, nRst
	dc.b nB3, nRst, nB3, nCs4, nRst, nE4, $0A, nRst
	dc.b $02, nD4, $08, nRst, $10, nD3, $48, nG3
	dc.b $06, nRst, nD4, nRst, nG3, nRst, nD4, nG3
	dc.b nRst, nG3, nA3, nRst, nB3, nRst, nD4, $0A
	dc.b nRst, $02, nFs3, $06, nRst, nCs4, nRst, nFs3
	dc.b nRst, nCs4, nFs3, nRst, nFs3, nAb3, nRst, nA3
	dc.b nRst, nCs4, $0A, nRst, $02, nE3, $06, nRst
	dc.b nB3, nRst, nE3, nRst, nB3, nE3, nRst, nE3
	dc.b nFs3, nRst, nAb3, nRst, nB3, $0A, nRst, $02
	dc.b nA3, $18, nB3, nCs4, nA3, $0A, nRst, $02
	dc.b nAb3, $0A, nRst, $02, nG3, $06, nRst, nD4
	dc.b nRst, nG3, nRst, nD4, nG3, nRst, nG3, nA3
	dc.b nRst, nB3, nRst, nD4, $0A, nRst, $02, nFs3
	dc.b $06, nRst, nCs4, nRst, nFs3, nRst, nCs4, nFs3
	dc.b nRst, nFs3, nAb3, nRst, nA3, nRst, nCs4, $0A
	dc.b nRst, $02, nE3, $06, nRst, nB3, nRst, nE3
	dc.b nRst, nB3, nE3, nRst, nE3, nFs3, $0A, nRst
	dc.b $02, nAb3, $0A, nRst, $02, nB3, $0A, nRst
	dc.b $02, nA3, $0A, nRst, $0E, nE4, $18, nA4
	dc.b $06, nRst, nE4, nRst, nA3, $18
	sJump		Slots_Jump1

Slots_FM2:
	sPatFM		$01
	sPan		spLeft
	ssModZ80	$07, $01, $08, $05

Slots_Call1:
	dc.b nRst, $60, nRst, nRst, nRst

Slots_Jump2:
	dc.b nRst, $0C, nA4, $18, nD5, $04, nRst, $08
	dc.b nE5, $12, nD5, nE5, $04, nRst, $08, nFs5
	dc.b $04, nRst, $08, nG5, $04, nRst, $08, nFs5
	dc.b $06, nD5, nRst, nD5, $36, nRst, $0C, nA4
	dc.b $18, nD5, $04, nRst, $08, nE5, $04, nFs5
	dc.b nE5, nD5, $16, nRst, $02, nE5, $04, nRst
	dc.b $08, nFs5, $04, nRst, $08, nG5, $06, nRst
	dc.b nFs5, nD5, nRst, nA5, $36, sHold, $06, nRst
	dc.b $06, nB5, $18, nG5, $06, nRst, nCs6, $02
	dc.b nD6, $10, nCs6, $12, nB5, $04, nRst, $08
	dc.b nA5, $04, nRst, $08, nB5, $06, nRst, nA5
	dc.b nFs5, nRst, nD5, $36, nRst, $0C, nE5, $14
	dc.b nRst, $04, nE5, $08, nRst, $04, nFs5, $0C
	dc.b nE5, $06, nRst, nAb5, $0C, nB5, $04, nRst
	dc.b $08, nA5, $04, nRst, $14, nG5, $18, nFs5
	dc.b nE5, nRst, $0C, nA4, $18, nD5, $04, nRst
	dc.b $08, nE5, $12, nD5, nE5, $04, nRst, $08
	dc.b nFs5, $04, nRst, $08, nG5, $06, nRst, nFs5
	dc.b nD5, nRst, nD5, $36, nRst, $0C, nA4, $18
	dc.b nD5, $06, nRst, nE5, nFs5, nE5, nD5, $12
	dc.b nE5, $04, nRst, $08, nFs5, $02, nRst, $0A
	dc.b nG5, $06, nRst, nFs5, nD5, nRst, nA5, $36
	dc.b nRst, $0C, nA5, $02, nB5, $16, nG5, $06
	dc.b nRst, nCs6, $02, nD6, $10, nCs6, $12, nB5
	dc.b $04, nRst, $08, nA5, $04, nRst, $08, nB5
	dc.b $06, nRst, nA5, nFs5, nRst, nD5, $32, nRst
	dc.b $04, nE5, $12, nRst, $06, nG5, $14, nRst
	dc.b $04, nFs5, $12, nRst, $06, nE5, $12, nRst
	dc.b $06, nD5, $0A, nRst, $0E, nD5, $18, nCs5
	dc.b nC5, nB4, nD5, $06, nRst, nB4, nRst, nG5
	dc.b $12, nD5, $10, nG5, $06, nRst, $08, nFs5
	dc.b $06, nRst, nG5, nRst, nFs5, nCs5, nRst, nFs5
	dc.b $36, nRst, $0C, nE5, $10, nRst, $08, nE5
	dc.b $06, nRst, nE5, $0C, nD5, $04, nRst, $08
	dc.b nCs5, $06, nRst, nE5, $04, nRst, $08, nD5
	dc.b $0C, nCs5, $04, nRst, $08, nB4, $0C, nCs5
	dc.b $04, nRst, $08, nD5, $0C, nCs5, $04, nRst
	dc.b $08, nB4, $0C, nA4, $04, nRst, $08, nRst
	dc.b $0C, nG4, $0E, nRst, $0A, nD5, $04, nRst
	dc.b $08, nG5, $12, nRst, $06, nD5, $12, nRst
	dc.b $06, nA5, $10, nRst, $08, nFs5, $10, nRst
	dc.b $08, nFs5, $28, nRst, $08, nG5, $0C, nRst
	dc.b $06, nG5, $0C, nRst, $06, nG5, nRst, nB4
	dc.b $10, nRst, $02, nAb5, $0C, nRst, $06, nB4
	dc.b nRst, nCs5, $04, nRst, $02, nA5, $06, nRst
	dc.b nCs5, $04, nRst, $02, nA5, $04, nRst, $08
	dc.b nCs5, $04, nRst, $08, nCs5, $26, nRst, $0A
	sJump		Slots_Jump2

Slots_FM3:
	sPatFM		$02
	sPan		spCenter
	ssModZ80	$07, $01, $07, $05
	dc.b nRst, $60, nRst, nRst, nRst

Slots_Jump3:
	dc.b nRst, $0C, nD5, $18, nCs5, $04, nRst, $08
	dc.b nB4, $12, nA4, nCs5, $04, nRst, $08, nD5
	dc.b $04, nRst, $08, nD5, $06, nRst, nD5, nE5
	dc.b $04, nRst, $08, nFs5, $36, nRst, $0C, nD5
	dc.b $18, nCs5, $04, nRst, $08, nB4, $12, nA4
	dc.b nCs5, $04, nRst, $08, nD5, $04, nRst, $08
	dc.b nD5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b nE5, $04, nRst, $08, nFs5, $04, nRst, $08
	dc.b nFs5, $04, nRst, $02, nFs5, $04, nRst, $08
	dc.b nE5, $06, nRst, nD5, $0C, sHold, nD5, $06
	dc.b nRst, nG4, $12, nRst, $06, nG4, nRst, nG4
	dc.b $0E, nRst, $04, nB4, $0E, nRst, $04, nD5
	dc.b $06, nRst, nCs5, nRst, nCs5, $04, nRst, $08
	dc.b nCs5, $06, nB4, $04, nRst, $08, nA4, $2E
	dc.b nRst, $08, nRst, $0C, nG4, $12, nRst, $06
	dc.b nG4, $08, nRst, $04, nRst, $0C, nAb4, $12
	dc.b nRst, $06, nAb4, nRst, nA4, $04, nRst, $14
	dc.b nA4, $18, nB4, nCs5, nRst, $0C, nD5, $14
	dc.b nRst, $04, nCs5, nRst, $08, nB4, $0E, nRst
	dc.b $04, nA4, $0E, nRst, $04, nCs5, nRst, $08
	dc.b nD5, $06, nRst, nD5, nRst, nD5, nE5, nRst
	dc.b nFs5, $2C, nRst, $0A, nRst, $0C, nD5, $18
	dc.b nCs5, $04, nRst, $08, nB4, $12, nA4, nCs5
	dc.b $04, nRst, $08, nD5, $04, nRst, $08, nD5
	dc.b $04, nRst, $08, nD5, $04, nRst, $02, nE5
	dc.b $04, nRst, $08, nFs5, $04, nRst, $08, nFs5
	dc.b $04, nRst, $02, nFs5, $04, nRst, $08, nE5
	dc.b $06, nRst, nD5, $0C, nRst, nG4, $18, nB4
	dc.b $04, nRst, $08, nD5, $10, nRst, $02, nFs5
	dc.b $0E, nRst, $04, nG5, $06, nRst, nFs5, nRst
	dc.b nFs5, nRst, nFs5, nE5, nRst, nD5, $2A, nRst
	dc.b $0C, nB4, $12, nRst, $06, nD5, $12, nRst
	dc.b $06, nCs5, $12, nRst, $06, nE5, $12, nRst
	dc.b $06, nFs5, $0E, nRst, $0A, nFs5, $14, nRst
	dc.b $04, nG5, $12, nRst, $06, nA5, $12, nRst
	dc.b $06, nG5, $1E, nRst, $06, nA5, nRst, nB5
	dc.b $0E, nRst, $04, nA5, $0E, nRst, $04, nG5
	dc.b nRst, $08, nA5, $1C, nRst, $02, nG5, $06
	dc.b nRst, nFs5, $34, nRst, $02, nRst, $0C, nG5
	dc.b $12, nRst, $06, nG5, nRst, nG5, $0C, nFs5
	dc.b $04, nRst, $08, nE5, $0C, nD5, $06, nRst
	dc.b nCs5, $12, nRst, $06, nD5, $12, nRst, $06
	dc.b nE5, $12, nRst, $06, nFs5, $12, nRst, $06
	dc.b nRst, $0C, nG5, $10, nRst, $08, nG5, $04
	dc.b nRst, $08, nG5, $18, nA5, $06, nRst, nB5
	dc.b nRst, nA5, $12, nRst, $06, nCs5, $12, nRst
	dc.b $06, nFs5, $26, nRst, $0A, nE5, $0C, nRst
	dc.b $06, nE5, $0E, nRst, $04, nE5, $06, nRst
	dc.b nE5, $0C, nRst, $06, nE5, $0C, nRst, $06
	dc.b nD5, nRst, nCs5, $04, nRst, $02, nCs5, $04
	dc.b nRst, $08, nCs5, $02, nRst, $04, nCs5, nRst
	dc.b $08, nB4, $04, nRst, $08, nA4, $06, nRst
	dc.b $2A
	sJump		Slots_Jump3

Slots_FM4:
	sPatFM		$03
	sPan		spCenter
	ssModZ80	$07, $01, $09, $05
	dc.b nRst, $60, nRst, nRst, nRst

Slots_Jump4:
	dc.b nD5, $18, nCs5, nB4, nA4, nD5, nCs5, nB4
	dc.b nA4, nD5, nCs5, $16, nRst, $02, nB4, $18
	dc.b nA4, nD5, $30, nE5, $18, nFs5, nG5, $30
	dc.b nB5, $18, nD6, nCs6, nB5, nA5, nFs5, nG5
	dc.b $30, nAb5, nA5, $08, nRst, $10, nCs6, $18
	dc.b nB5, nA5, nD6, nCs6, nB5, nA5, nG5, nFs5
	dc.b nE5, nD5, nD5, nCs5, nB4, nA4, nG4, nFs4
	dc.b nE4, nD4, nG4, nA4, nB4, nD5, nCs5, nB4
	dc.b nA4, nFs4, nG4, nB4, nA4, nCs5, $16, nRst
	dc.b $02, nD5, $16, nRst, $02, nD5, $18, nE5
	dc.b nFs5, $16, nRst, $02
	saVolFM		$FC
	dc.b nG5, $0C, nD6, $06, nB5, nG6, nD6, nB5
	dc.b nG6, nD6, nB5, nG6, nD6, nB5, nG6, nD6
	dc.b nB5, nFs5, $0C, nD6, $06, nA5, nFs6, nD6
	dc.b nA5, nFs6, nD6, nA5, nFs6, nD6, nA5, nFs6
	dc.b nD6, nA5, nE5, $0C, nB5, $06, nG5, nE6
	dc.b nB5, nG5, nB5, nE5, $0C, nB5, $06, nAb5
	dc.b nE6, nB5, nAb5, nB5, nA5, $0D, nCs6, $06
	dc.b nRst, $05, nA5, $0D, nCs6, $06, nRst, $05
	dc.b nA5, $0D, nCs6, $06, nRst, $05, nA5, $0D
	dc.b nCs6, $06, nRst, $05, nG5, $0C, nD6, $06
	dc.b nB5, nG6, nD6, nB5, nG6, nD6, nB5, nG6
	dc.b nD6, nB5, nG6, nD6, nB5, nFs5, $0C, nD6
	dc.b $06, nA5, nFs6, nD6, nA5, nFs6, nD6, nA5
	dc.b nFs6, nD6, nA5, nFs6, nD6, nA5, nG5, $0C
	dc.b nD6, $06, nB5, nG6, nD6, nB5, nD6, nAb5
	dc.b $0C, nD6, $06, nB5, nAb6, nD6, nB5, nD6
	dc.b nA5, nB5, nCs6, nD6, nB5, nCs6, nD6, nE6
	dc.b nD6, nCs6, nB5, nA5, nG5, nFs5, nE5, nCs5
	saVolFM		$04
	sJump		Slots_Jump4

Slots_FM5:
	sPatFM		$04
	sPan		spRight
	ssModZ80	$07, $01, $08, $05
	dc.b nRst, $01

Slots_Call2:
	dc.b nRst, $60, nRst, nRst, nRst

Slots_Jump5:
	dc.b nRst, $0C, nA4, $18, nD5, $04, nRst, $08
	dc.b nE5, $12, nD5, nE5, $04, nRst, $08, nFs5
	dc.b $04, nRst, $08, nG5, $04, nRst, $08, nFs5
	dc.b $06, nD5, nRst, nD5, $36, nRst, $0C, nA4
	dc.b $18, nD5, $04, nRst, $08, nE5, $04, nFs5
	dc.b nE5, nD5, $16, nRst, $02, nE5, $04, nRst
	dc.b $08, nFs5, $04, nRst, $08, nG5, $06, nRst
	dc.b nFs5, nD5, nRst, nA5, $36, sHold, $06, nRst
	dc.b $06, nB5, $18, nG5, $06, nRst, nCs6, $02
	dc.b nD6, $10, nCs6, $12, nB5, $04, nRst, $08
	dc.b nA5, $04, nRst, $08, nB5, $06, nRst, nA5
	dc.b nFs5, nRst, nD5, $36, nRst, $0C, nE5, $14
	dc.b nRst, $04, nE5, $08, nRst, $04, nFs5, $0C
	dc.b nE5, $06, nRst, nAb5, $0C, nB5, $04, nRst
	dc.b $08, nA5, $04, nRst, $14, nG5, $18, nFs5
	dc.b nE5, nRst, $0C, nA4, $18, nD5, $04, nRst
	dc.b $08, nE5, $12, nD5, nE5, $04, nRst, $08
	dc.b nFs5, $04, nRst, $08, nG5, $06, nRst, nFs5
	dc.b nD5, nRst, nD5, $36, nRst, $0C, nA4, $18
	dc.b nD5, $06, nRst, nE5, nFs5, nE5, nD5, $12
	dc.b nE5, $04, nRst, $08, nFs5, $02, nRst, $0A
	dc.b nG5, $06, nRst, nFs5, nD5, nRst, nA5, $36
	dc.b nRst, $0C, nA5, $02, nB5, $16, nG5, $06
	dc.b nRst, nCs6, $02, nD6, $10, nCs6, $12, nB5
	dc.b $04, nRst, $08, nA5, $04, nRst, $08, nB5
	dc.b $06, nRst, nA5, nFs5, nRst, nD5, $32, nRst
	dc.b $04, nE5, $12, nRst, $06, nG5, $14, nRst
	dc.b $04, nFs5, $12, nRst, $06, nE5, $12, nRst
	dc.b $06, nD5, $0A, nRst, $0E, nD5, $18, nCs5
	dc.b nC5, nB4, nD5, $06, nRst, nB4, nRst, nG5
	dc.b $12, nD5, $10, nG5, $06, nRst, $08, nFs5
	dc.b $06, nRst, nG5, nRst, nFs5, nCs5, nRst, nFs5
	dc.b $36, nRst, $0C, nE5, $10, nRst, $08, nE5
	dc.b $06, nRst, nE5, $0C, nD5, $04, nRst, $08
	dc.b nCs5, $06, nRst, nE5, $04, nRst, $08, nD5
	dc.b $0C, nCs5, $04, nRst, $08, nB4, $0C, nCs5
	dc.b $04, nRst, $08, nD5, $0C, nCs5, $04, nRst
	dc.b $08, nB4, $0C, nA4, $04, nRst, $08, nRst
	dc.b $0C, nB4, $10, nRst, $08, nB4, $06, nRst
	dc.b nD5, $12, nRst, $06, nB5, $10, nRst, $08
	dc.b nCs5, $10, nRst, $08, nCs5, $0E, nRst, $0A
	dc.b nCs5, $26, nRst, $0A, nB4, $0C, nRst, $06
	dc.b nB4, $0C, nRst, $06, nB4, nRst, nAb5, $0E
	dc.b nRst, $04, nB4, $0C, nRst, $06, nAb5, nRst
	dc.b nA5, $04, nRst, $02, nCs5, $04, nRst, $08
	dc.b nA5, $02, nRst, $04, nCs5, nRst, $08, nA5
	dc.b $04, nRst, $08, nA5, $26, nRst, $0A
	sJump		Slots_Jump5

Slots_PSG1:
	sVolEnvPSG	v09
	dc.b nRst, $02
	sCall		Slots_Call1

Slots_PSG2:
	sVolEnvPSG	v09
	dc.b nRst, $03
	sCall		Slots_Call2

Slots_PSG3:
	sNoisePSG	$E7

Slots_Loop1:
	sCall		Slots_Call3
	sLoop		$00, $04, Slots_Loop1

Slots_Loop2:
	sCall		Slots_Call3
	sLoop		$00, $07, Slots_Loop2
	sCall		Slots_Call4

Slots_Loop3:
	sCall		Slots_Call5
	sLoop		$00, $07, Slots_Loop3
	sCall		Slots_Call6

Slots_Loop4:
	sCall		Slots_Call5
	sLoop		$00, $03, Slots_Loop4
	sCall		Slots_Call6
	sCall		Slots_Call7

Slots_Loop5:
	sCall		Slots_Call5
	sLoop		$00, $02, Slots_Loop5
	sCall		Slots_Call8
	sJump		Slots_Loop2

Slots_Call3:
	sVolEnvPSG	v01
	dc.b nB6, $18, nB6, nB6, nB6
	sRet

Slots_Call4:
	dc.b nRst, $30
	sVolEnvPSG	v01
	dc.b nB6, $18
	sVolEnvPSG	v02
	dc.b nB6, $18
	sRet

Slots_Call5:
	sVolEnvPSG	v01
	dc.b nB6, $0C, nB6, nB6, nB6, nB6, nB6, nB6
	dc.b nB6
	sRet

Slots_Call6:
	dc.b nRst, $30
	sVolEnvPSG	v02
	dc.b nB6, $18, nB6
	sRet

Slots_Call7:
	dc.b nRst, $0C
	sVolEnvPSG	v01
	dc.b nB6, $0C, nB6, nB6, nB6, nB6, nB6, nB6
	sRet

Slots_Call8:
	sVolEnvPSG	v02
	dc.b nB6, $18, nB6, nB6, nB6
	sRet

Slots_DAC:
	dc.b dElectricFloorTom, $0C, dElectricFloorTom, dMuffledSnare, $12, dElectricHighTom, $06, dKick
	dc.b dElectricHighTom, dElectricMidTom, dElectricMidTom, dElectricLowTom, dElectricLowTom, dClap, $0C, dElectricFloorTom
	dc.b dElectricFloorTom, dKick, $06, $0C, dKick, dSnare, dElectricMidTom, $06
	dc.b dElectricLowTom, $0C, dClap, dElectricFloorTom, dElectricFloorTom, dMuffledSnare, $06, dElectricFloorTom
	dc.b $0C, $06, dElectricHighTom, dElectricHighTom, $0C, dElectricMidTom, $06, dElectricMidTom
	dc.b dElectricLowTom, dClap, $0C, dKick, dKick, $06, dSnare, $0C
	dc.b dKick, $06, dElectricMidTom, dElectricLowTom, dKick, dSnare, dSnare, $0C
	dc.b dMuffledSnare, dSnare, $06, dSnare

Slots_Jump6:
	dc.b dKick, $18, dMuffledSnare, $12, dSnare, $06, dKick, dElectricHighTom
	dc.b $12, dElectricMidTom, $0C, dClap, dKick, $18, dMuffledSnare, $12
	dc.b dSnare, $06, dKick, dElectricMidTom, $12, dElectricFloorTom, $0C, dClap
	dc.b dKick, $18, dMuffledSnare, $06, dSnare, $0C, $06, dKick
	dc.b dElectricHighTom, dElectricHighTom, $0C, dElectricMidTom, dClap, dKick, $18, dMuffledSnare
	dc.b $0C, dSnare, $06, dSnare, dKick, dElectricMidTom, dElectricMidTom, $0C
	dc.b dElectricFloorTom, dClap, dKick, $18, dMuffledSnare, $12, dSnare, $06
	dc.b dKick, dElectricHighTom, $12, dElectricMidTom, $0C, dClap, dKick, $18
	dc.b dMuffledSnare, $12, dSnare, $06, dKick, dElectricMidTom, $12, dElectricFloorTom
	dc.b $0C, dClap, dKick, $18, dMuffledSnare, $06, dSnare, $0C
	dc.b $06, dKick, dElectricHighTom, dElectricHighTom, $0C, dElectricMidTom, dClap, dCrashCymbal
	dc.b $18, dCrashCymbal, dMuffledSnare, $06, dSnare, dSnare, dSnare, dMuffledSnare
	dc.b dSnare, dSnare, dSnare, dKick, dKick, dSnare, $0C, dKick
	dc.b dElectricLowTom, $06, dKick, $0C, dElectricHighTom, $06, $0C, dElectricLowTom
	dc.b $06, dKick, dSnare, $0C, dKick, $06, dKick, dSnare
	dc.b $0C, dKick, dElectricLowTom, $06, dKick, $0C, dElectricHighTom, $06
	dc.b $0C, dElectricLowTom, $06, dKick, dElectricLowTom, $0C, dKick, $06
	dc.b dKick, dSnare, $0C, dKick, dElectricLowTom, $06, dKick, $0C
	dc.b dElectricHighTom, $06, $0C, dElectricLowTom, $06, dKick, dSnare, dSnare
	dc.b dKick, dKick, dSnare, $0C, dKick, dElectricLowTom, $06, dKick
	dc.b $0C, dElectricHighTom, $06, $0C, dMuffledSnare, $06, dSnare, $0C
	dc.b $06, dKick, dKick, dSnare, $0C, dKick, dElectricLowTom, $06
	dc.b dKick, $0C, dElectricHighTom, $06, $0C, dElectricLowTom, $06, dKick
	dc.b dSnare, $0C, dKick, $06, dKick, dSnare, $0C, dKick
	dc.b dElectricLowTom, $06, dKick, $0C, dElectricHighTom, $06, $0C, dElectricLowTom
	dc.b $06, dKick, dElectricLowTom, $0C, dKick, $06, dKick, dSnare
	dc.b $0C, dKick, dElectricLowTom, $06, dKick, $0C, dElectricHighTom, $06
	dc.b $0C, dElectricLowTom, $06, dKick, dSnare, dSnare, dCrashCymbal, $18
	dc.b dCrashCymbal, dMuffledSnare, $06, dSnare, $0C, $06, dElectricHighTom, dElectricMidTom
	dc.b dElectricLowTom, dElectricFloorTom, dKick, $0C, dSnare, dKick, $06, $0C
	dc.b dElectricHighTom, $06, dKick, $0C, dSnare, dKick, $06, $0C
	dc.b dElectricLowTom, $06, dKick, $0C, dSnare, dKick, $06, dKick
	dc.b dElectricMidTom, dElectricMidTom, dKick, $0C, dSnare, dKick, $06, dKick
	dc.b dElectricFloorTom, dElectricFloorTom, dKick, $0C, dSnare, dKick, $06, dKick
	dc.b dElectricHighTom, dElectricHighTom, dKick, $0C, dSnare, dKick, $06, dKick
	dc.b dElectricLowTom, dElectricLowTom, dCrashCymbal, $18, dCrashCymbal, dMuffledSnare, $06, dElectricHighTom
	dc.b dSnare, dElectricLowTom, dMuffledSnare, $0C, dSnare, $06, dSnare, dCrashCymbal
	dc.b $0C, dSnare, dKick, $06, $0C, dElectricHighTom, $06, dKick
	dc.b $0C, dSnare, dKick, $06, $0C, dElectricLowTom, $06, dKick
	dc.b $0C, dSnare, dKick, $06, dKick, dElectricMidTom, dElectricMidTom, dKick
	dc.b $0C, dSnare, dKick, $06, dKick, dElectricFloorTom, dElectricFloorTom, dKick
	dc.b $0C, dSnare, dKick, $06, dKick, dElectricHighTom, dElectricHighTom, dKick
	dc.b $0C, dSnare, dKick, $06, dKick, dElectricLowTom, dElectricLowTom, dSnare
	dc.b dSnare, dKick, dSnare, dSnare, dKick, dSnare, dKick, dSnare
	dc.b $0C, dKick, $06, dKick, dClap, $18
	sJump		Slots_Jump6

Slots_Patches:

	; Patch $00
	; $3B
	; $0D, $01, $00, $00,	$9F, $1F, $1F, $1F
	; $0E, $0D, $09, $09,	$00, $00, $00, $00
	; $DF, $DF, $DF, $DF,	$33, $15, $17, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$0D, $00, $01, $00
	spRateScale	$02, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $09, $0D, $09
	spSustainLv	$0D, $0D, $0D, $0D
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$33, $17, $15, $00

	; Patch $01
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

	; Patch $02
	; $3C
	; $01, $02, $0F, $04,	$8D, $52, $9F, $1F
	; $09, $00, $00, $0D,	$00, $00, $00, $00
	; $23, $08, $02, $F7,	$15, $80, $1D, $87
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $0F, $02, $04
	spRateScale	$02, $02, $01, $00
	spAttackRt	$0D, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$09, $00, $00, $0D
	spSustainLv	$02, $00, $00, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$03, $02, $08, $07
	spTotalLv	$15, $1D, $00, $07

	; Patch $03
	; $06
	; $01, $01, $01, $01,	$1F, $0F, $0F, $0F
	; $0A, $0A, $08, $08,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$32, $94, $80, $80
	spAlgorithm	$06
	spFeedback	$00
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $0F, $0F, $0F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $08, $0A, $08
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$32, $00, $14, $00

	; Patch $04
	; $3A
	; $31, $25, $73, $41,	$5F, $1F, $1F, $9C
	; $08, $05, $04, $1E,	$03, $04, $02, $06
	; $2F, $2F, $1F, $0F,	$29, $27, $1F, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $07, $02, $04
	spMultiple	$01, $03, $05, $01
	spRateScale	$01, $00, $00, $02
	spAttackRt	$1F, $1F, $1F, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $04, $05, $1E
	spSustainLv	$02, $01, $02, $00
	spDecayRt	$03, $02, $04, $06
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$29, $1F, $27, $00
