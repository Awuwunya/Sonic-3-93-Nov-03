GumballMachine_Header:
	sHeaderInit						; Z80 offset is $AE04
	sHeaderPatch	GumballMachine_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $1E
	sHeaderDAC	GumballMachine_DAC
	sHeaderFM	GumballMachine_FM1, $F4, $1D
	sHeaderFM	GumballMachine_FM2, $F4, $1D
	sHeaderFM	GumballMachine_FM3, $F4, $0C
	sHeaderFM	GumballMachine_FM4, $F4, $19
	sHeaderFM	GumballMachine_FM5, $F4, $1C
	sHeaderPSG	GumballMachine_PSG1, $DC, $03, $00, v00
	sHeaderPSG	GumballMachine_PSG2, $E8, $03, $00, v00
	sHeaderPSG	GumballMachine_PSG3, $00, $00, $00, v03

GumballMachine_FM1:
	sPan		spRight
	saVolFM		$08
	sPatFM		$00
	ssModZ80	$07, $01, $08, $05
	dc.b nRst, $01, nA5, $06, nC5, nF5, nA5, nB5
	dc.b nD5, nG5, nB5, nC6, nE5, nA5, nC6, nD6
	dc.b nF5, nB5, nD6, nE6, nG5, nC6, nE6, nF6
	dc.b nA5, nD6, nF6
	saVolFM		$FF
	dc.b nE6
	saVolFM		$FF
	dc.b nD6
	saVolFM		$FF
	dc.b nC6
	saVolFM		$FF
	dc.b nB5
	saVolFM		$FF
	dc.b nA5
	saVolFM		$FF
	dc.b nG5
	saVolFM		$FF
	dc.b nF5
	saVolFM		$FF
	dc.b nD5
	sPatFM		$01

GumballMachine_Jump1:
	ssModZ80	$07, $01, $08, $05
	sPan		spRight
	dc.b nF5, $12, $03, nBb5, nB5, $02, nRst, $0A
	dc.b nF5, $05, nRst, $07, nE5, $12, $03, nBb5
	dc.b nB5, $02, nRst, $0A, nE5, $05, nRst, $07
	dc.b nEb5, $12, $03, nBb5, nC6, $05, nRst, $07
	dc.b nEb5, $05, nRst, $07, nD5, $0D, nRst, $05
	dc.b nD5, $0F, nRst, $03, nD5, $06, nRst, nCs5
	dc.b $0D, nRst, $05, nCs5, $0C, nG5, $06, nF5
	dc.b $04, nRst, $08, nC5, $0D, nRst, $05, nC5
	dc.b $0C, nG5, $06, nF5, $05, nRst, $07, nD5
	dc.b $05, nRst, $07, nD5, $05, nRst, $07, nB4
	dc.b $05, nRst, $07, nB4, $05, nRst, $07, nC5
	dc.b $23, nRst, $0D, nF5, $12, $03, nBb5, nC6
	dc.b nRst, $09, nF5, $05, nRst, $07, nE5, $12
	dc.b $03, nBb5, nB5, $02, nRst, $0A, nE5, $05
	dc.b nRst, $07, nEb5, $12, $03, nBb5, nC6, $06
	dc.b nRst, nEb5, $05, nRst, $07, nD5, $0E, nRst
	dc.b $04, nD5, $0F, nRst, $03, nD5, $06, nRst
	dc.b nCs5, $0E, nRst, $04, nCs5, $0C, nG5, $06
	dc.b nF5, $05, nRst, $07, nC5, $0E, nRst, $04
	dc.b nC5, $0C, nG5, $06, nF5, nRst, nC5, $08
	dc.b nRst, $04, nC5, $0C, nD5, $04, nRst, $08
	dc.b nBb4, $05, nRst, $07, nA4, $30
	sPan		spLeft
	sPatFM		$02
	ssModZ80	$07, $01, $03, $05
	saTranspose	$0C
	saVolFM		$F6
	dc.b nRst, $0C, nD5, $18, $07, nRst, $05, nF5
	dc.b $12, nRst, $06, nF5, $11, nRst, $07, nE5
	dc.b $12, nRst, $06, nE5, $0F, nRst, $09, nE5
	dc.b $30, nRst, $0C, nD5, $12, nRst, $06, nD5
	dc.b nRst, nD5, nRst, nD5, nRst, nD5, nRst, nD5
	dc.b $05, nRst, $07, nE5, $11, nRst, $07, nE5
	dc.b $11, nRst, $07, nE5, $11, nRst, $07, nE5
	dc.b $18, sHold, $05, nRst, $07, nD5, $13, nRst
	dc.b $05, nD5, $07, nRst, $05, nF5, $12, nRst
	dc.b $06, nF5, $10, nRst, $08, nE5, $11, nRst
	dc.b $07, nE5, $0F, nRst, $09, nF5, $30, sHold
	dc.b $05, nRst, $07, nD5, $12, nRst, $06, nD5
	dc.b nRst, nD5, nRst, nD5, nRst, nD5, nRst, nD5
	dc.b $05, nRst, $07, nE5, $08, nRst, $10, nE5
	dc.b $18, nE5, $18, nE5, $18
	saTranspose	$F4
	sPatFM		$01
	saVolFM		$0A
	sJump		GumballMachine_Jump1

GumballMachine_FM2:
	sPatFM		$01
	saVolFM		$08
	sPan		spLeft
	ssModZ80	$07, $01, $09, $05
	dc.b nA5, $06, nC5, nF5, nA5, nB5, nD5, nG5
	dc.b nB5, nC6, nE5, nA5, nC6, nD6, nF5, nB5
	dc.b nD6, nE6, nG5, nC6, nE6, nF6, nA5, nD6
	dc.b nF6
	saVolFM		$FF
	dc.b nE6
	saVolFM		$FF
	dc.b nD6
	saVolFM		$FF
	dc.b nC6
	saVolFM		$FF
	dc.b nB5
	saVolFM		$FF
	dc.b nA5
	saVolFM		$FF
	dc.b nG5
	saVolFM		$FF
	dc.b nF5
	saVolFM		$FF
	dc.b nD5

GumballMachine_Jump2:
	ssModZ80	$07, $01, $09, $05
	sPan		spLeft
	dc.b nA5, $12, $03, nBb5, nC6, $05, nRst, $07
	dc.b nA5, $05, nRst, $07, nA5, $12, $03, nBb5
	dc.b nC6, $05, nRst, $07, nA5, $05, nRst, $07
	dc.b nA5, $12, $03, nBb5, nC6, $05, nRst, $07
	dc.b nA5, $04, nRst, $08, nG5, $0E, nRst, $04
	dc.b nF5, $11, nRst, $01, nE5, $06, nRst, nF5
	dc.b $0F, nRst, $03, nCs5, $0C, nG5, $06, nF5
	dc.b $04, nRst, $08, nF5, $0D, nRst, $05, nC5
	dc.b $0C, nG5, $06, nF5, $05, nRst, $07, nF5
	dc.b $04, nRst, $08, nF5, $05, nRst, $07, nE5
	dc.b $06, nRst, nF5, $05, nRst, $07, nG5, $24
	dc.b nRst, $0C, nA5, $12, $03, nBb5, nC6, nRst
	dc.b $09, nA5, $04, nRst, $08, nA5, $12, $03
	dc.b nBb5, nC6, $05, nRst, $07, nA5, $05, nRst
	dc.b $07, nA5, $12, $03, nBb5, nC6, $06, nRst
	dc.b nA5, $04, nRst, $08, nG5, $0F, nRst, $03
	dc.b nF5, $11, nRst, $01, nE5, $07, nRst, $05
	dc.b nF5, $10, nRst, $02, nCs5, $0C, nG5, $06
	dc.b nF5, $05, nRst, $07, nF5, $0F, nRst, $03
	dc.b nC5, $0C, nG5, $06, nF5, nRst, nE5, $0C
	dc.b nC5, nD5, $04, nRst, $08, nE5, $06, nRst
	dc.b nF5, $30
	sPan		spRight
	sPatFM		$02
	ssModZ80	$07, $01, $03, $05
	saTranspose	$0C
	saVolFM		$F6
	dc.b nRst, $0C, nD5, $18, $07, nRst, $05, nF5
	dc.b $12, nRst, $06, nF5, $11, nRst, $07, nE5
	dc.b $12, nRst, $06, nE5, $0F, nRst, $09, nE5
	dc.b $30, nRst, $0C, nD5, $12, nRst, $06, nD5
	dc.b nRst, nD5, nRst, nD5, nRst, nD5, nRst, nD5
	dc.b $05, nRst, $07, nE5, $11, nRst, $07, nE5
	dc.b $11, nRst, $07, nE5, $11, nRst, $07, nE5
	dc.b $18, sHold, $05, nRst, $07, nD5, $13, nRst
	dc.b $05, nD5, $07, nRst, $05, nF5, $12, nRst
	dc.b $06, nF5, $10, nRst, $08, nE5, $11, nRst
	dc.b $07, nE5, $0F, nRst, $09, nF5, $30, sHold
	dc.b $05, nRst, $07, nD5, $12, nRst, $06, nD5
	dc.b nRst, nD5, nRst, nD5, nRst, nD5, nRst, nD5
	dc.b $05, nRst, $07, nE5, $08, nRst, $10, nE5
	dc.b $18, nE5, $18, nE5, $18
	saTranspose	$F4
	sPatFM		$01
	saVolFM		$0A
	sJump		GumballMachine_Jump2

GumballMachine_FM3:
	sPatFM		$03
	sPan		spCenter
	dc.b nF4, $18, nG4, nA4, nB4, nC5, nD5, nRst
	dc.b $06, nC5, nB4, $0C, nA4, nG4

GumballMachine_Jump3:
	dc.b nF4, $09, nRst, $03, nF5, $05, nRst, $07
	dc.b nF4, $0A, nRst, $02, nF5, $07, nRst, $05
	dc.b nE4, $0C, nE5, $06, nE4, $07, nRst, $05
	dc.b nE4, $06, nE5, $07, nRst, $05, nEb4, $0B
	dc.b nRst, $01, nEb5, $06, nRst, nEb4, $0B, nRst
	dc.b $01, nEb5, $06, nRst, nD4, $0A, nRst, $02
	dc.b nD5, $06, nD4, nRst, nD4, nD5, $07, nRst
	dc.b $05, nCs4, $0C, nCs5, $07, nRst, $05, nCs4
	dc.b $0B, nRst, $01, nCs5, $06, nRst, nC4, $0A
	dc.b nRst, $02, nC5, $06, nC4, nRst, nC4, nC5
	dc.b $09, nRst, $03, nD4, $0B, nRst, $01, nD5
	dc.b $07, nRst, $05, nD4, $0C, nD5, $04, nRst
	dc.b $02, nD5, $06, nRst, nC5, nC4, $07, nRst
	dc.b $05, nD4, $06, nRst, nE4, nRst, nF4, $0A
	dc.b nRst, $02, nF5, $05, nRst, $07, nF4, $0C
	dc.b nF5, $07, nRst, $05, nE4, $0C, nE5, $06
	dc.b nE4, nRst, nE4, nE5, $08, nRst, $04, nEb4
	dc.b $0B, nRst, $01, nEb5, $06, nRst, nEb4, $0C
	dc.b nEb5, $06, nRst, nD4, $0A, nRst, $02, nD5
	dc.b $06, nD4, nRst, nD4, nD5, $08, nRst, $04
	dc.b nCs4, $0A, nRst, $02, nCs5, $06, nRst, nCs4
	dc.b $0B, nRst, $01, nCs5, $06, nRst, nC4, $0B
	dc.b nRst, $01, nC5, $06, nC4, $07, nRst, $05
	dc.b nC4, $06, nC5, nRst, nC5, nRst, nC4, nRst
	dc.b nD4, nRst, nE4, $05, nRst, $07, nF4, $06
	dc.b nRst, nC4, $05, nRst, $07, nA3, $06, nRst
	dc.b nF3, $07, nRst, $05, nBb3, $0C, nBb4, $05
	dc.b nRst, $07, nBb3, $0C, nBb4, $05, nRst, $01
	dc.b nBb3, $06, nRst, nBb3, nC4, $08, nRst, $04
	dc.b nD4, $06, nRst, nF4, $05, nRst, $07, nA3
	dc.b $0A, nRst, $02, nA4, $06, nRst, nA3, $07
	dc.b nRst, $05, nA4, $06, nA3, nRst, nA3, nBb3
	dc.b nRst, nC4, $07, nRst, $05, nE4, $06, nRst
	dc.b nG3, $09, nRst, $03, nG4, $06, nRst, nG3
	dc.b $0A, nRst, $02, nG4, $06, nG3, nRst, nG3
	dc.b nA3, nRst, nB3, $09, nRst, $03, nD4, $06
	dc.b nRst, nC4, $0C, nC5, $06, nRst, nC4, $08
	dc.b nRst, $04, nC5, $06, nC4, nRst, nC4, nD4
	dc.b nRst, nE4, $07, nRst, $05, nG4, $06, nRst
	dc.b nBb3, $08, nRst, $04, nBb4, $06, nRst, nBb3
	dc.b $0B, nRst, $01, nBb4, $05, nRst, $01, nBb3
	dc.b $06, nRst, nBb3, nC4, $08, nRst, $04, nD4
	dc.b $06, nRst, nF4, nRst, nA3, $0C, nA4, $06
	dc.b nRst, nA3, $0C, nA4, $06, nRst, nD4, $05
	dc.b nRst, $07, nD4, nRst, $05, nE4, $07, nRst
	dc.b $05, nF4, $07, nRst, $05, nG4, $07, nRst
	dc.b $05, nG3, $12, nRst, $06, nG3, nRst, nG3
	dc.b $07, nRst, $05, nG3, $06, nRst, nA3, $07
	dc.b nRst, $05, nB3, $06, nRst, nC4, nRst, $12
	dc.b nE4, $0D, nRst, $0B, nG4, $0E, nRst, $0A
	dc.b nC5, $12, nRst, $06
	sJump		GumballMachine_Jump3

GumballMachine_FM4:
	sPatFM		$00
	saVolFM		$FB
	sPan		spCenter
	ssModZ80	$07, $01, $05, $05
	dc.b nC6, $06, nF5, nA5, nC6, nD6, nG5, nB5
	dc.b nD6, nE6, nA5, nC6, nE6, nF6, nB5, nD6
	dc.b nF6, nG6, nC6, nE6, nG6, nA6, nD6, nF6
	dc.b nA6, nG5, nA5, nB5, nC6, nD6, nE6, nF6
	dc.b nG6
	saVolFM		$05

GumballMachine_Jump4:
	dc.b nF5, $18, nG5, $0C, nF5, nE5, $18, nF5
	dc.b $0C, nE5, nEb5, $18, nF5, $0C, nEb5, $0B
	dc.b nRst, $01, nD5, $18, nE5, $0C, nD5, $0B
	dc.b nRst, $01, nCs5, $18, nRst, $06, nEb5, nCs5
	dc.b $0B, nRst, $01, nC5, $19, nRst, $05, nD5
	dc.b $06, nC5, $0C, nF5, $18, nD5, $16, nRst
	dc.b $02, nC5, $18, nD5, $0C, nE5, $0B, nRst
	dc.b $01, nF5, $18, nG5, $0C, nF5, nE5, $18
	dc.b nF5, $0C, nE5, nEb5, $18, nF5, $0C, nEb5
	dc.b $0B, nRst, $01, nD5, $18, nE5, $0C, nD5
	dc.b nCs5, $1A, nRst, $04, nEb5, $06, nCs5, $0B
	dc.b nRst, $01, nC5, $19, nRst, $05, nD5, $06
	dc.b nC5, $0C, nG5, nF5, nE5, nC5, nF5, nC5
	dc.b nA4, nF4, $0B, nRst, $01, nBb4, $30, nD5
	dc.b $12, nC5, nBb4, $0C, nA4, $2F, nRst, $01
	dc.b nC5, $12, nBb4, $11, nRst, $01, nA4, $0C
	dc.b nG4, $30, $0C, nB4, nC5, nD5, $0A, nRst
	dc.b $02, nC5, $17, nRst, $01, nD5, $18, nE5
	dc.b nG5, nBb4, $2F, nRst, $01, nD5, $0C, nC5
	dc.b nBb4, nD5, nCs5, $18, nA4, $17, nRst, $01
	dc.b nD5, $18, nC5, $17, nRst, $01, nB4, $18
	dc.b nG4, $17, nRst, $01, nA4, $18, nB4, nC5
	dc.b nE5, $16, nRst, $02, nG5, $18, nBb5, $17
	dc.b nRst, $01
	sJump		GumballMachine_Jump4

GumballMachine_FM5:
	sPan		spCenter
	dc.b nRst, $30, nRst, nRst, nRst

GumballMachine_Jump5:
	sPatFM		$01
	dc.b nF3, $03, nRst, $09, nF4, $04, nRst, $08
	dc.b nF3, $04, nRst, $08, nF4, $03, nRst, $09
	dc.b nE3, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b nE3, $04, nRst, $08, nE4, $04, nRst, $08
	dc.b nEb3, $03, nRst, $09, nEb4, $04, nRst, $08
	dc.b nEb3, $04, nRst, $08, nEb4, $04, nRst, $08
	dc.b nD3, $03, nRst, $09, nD4, $04, nRst, $08
	dc.b nD3, $05, nRst, $07, nD4, $04, nRst, $08
	dc.b nCs3, $03, nRst, $09, nCs4, $04, nRst, $08
	dc.b nCs3, $03, nRst, $09, nCs4, $03, nRst, $09
	dc.b nC3, $03, nRst, $09, nC4, $03, nRst, $09
	dc.b nC3, $03, nRst, $09, nC4, $04, nRst, $08
	dc.b nD3, $03, nRst, $09, nD4, $04, nRst, $08
	dc.b nD3, $04, nRst, $08, nD4, $04, nRst, $08
	dc.b nRst, $06, nC4, $05, nRst, $01, nC3, $04
	dc.b nRst, $08, nD3, $04, nRst, $08, nE3, $03
	dc.b nRst, $09, nF3, $03, nRst, $09, nF4, $04
	dc.b nRst, $08, nF3, $03, nRst, $09, nF4, $03
	dc.b nRst, $09, nE3, $02, nRst, $0A, nE4, $03
	dc.b nRst, $09, nE3, $03, nRst, $09, nE4, $03
	dc.b nRst, $09, nEb3, $03, nRst, $09, nEb4, $03
	dc.b nRst, $09, nEb3, $03, nRst, $09, nEb4, $03
	dc.b nRst, $09, nD3, $03, nRst, $09, nD4, $03
	dc.b nRst, $09, nD3, $04, nRst, $08, nD4, $04
	dc.b nRst, $08, nCs3, $02, nRst, $0A, nCs4, $03
	dc.b nRst, $09, nCs3, $03, nRst, $09, nCs4, $03
	dc.b nRst, $09, nC3, $04, nRst, $08, nC4, $04
	dc.b nRst, $08, nC3, $04, nRst, $08, nC4, $03
	dc.b nRst, $09, nRst, $06, nG3, $05, nRst, $01
	dc.b nC3, $03, nRst, $09, nD3, $05, nRst, $07
	dc.b nE3, $04, nRst, $08, nF3, $02, nRst, $0A
	dc.b nC3, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nF2, $03, nRst, $09
	sPatFM		$00
	ssModZ80	$07, $01, $07, $05
	saVolFM		$F4
	dc.b nRst, $0C, nD5, $18, nF5, $06, nRst, nBb5
	dc.b $13, nRst, $05, nD6, $0F, nRst, $09, nC6
	dc.b $10, nRst, $08, nA5, $0E, nRst, $0A, nC6
	dc.b $30, nRst, $0C, nB5, $11, nRst, $07, nB5
	dc.b $06, nRst, nB5, $05, nRst, $07, nG5, $06
	dc.b nRst, nA5, $05, nRst, $07, nB5, $06, nRst
	dc.b nC6, $10, nRst, $08, nBb5, $11, nRst, $07
	dc.b nA5, $12, nRst, $06, nG5, $18, sHold, $05
	dc.b nRst, $07, nD5, $13, nRst, $05, nF5, $06
	dc.b nRst, nBb5, $12, nRst, $06, nD6, $10, nRst
	dc.b $08, nCs6, $10, nRst, $08, nA5, $11, nRst
	dc.b $07, nD6, $30, sHold, $04, nRst, $08, nB5
	dc.b $12, nRst, $06, nB5, $05, nRst, $07, nB5
	dc.b $05, nRst, $07, nG5, $05, nRst, $07, nA5
	dc.b $05, nRst, $07, nB5, $06, nRst, nC6, $08
	dc.b nRst, $10, nBb5, $18, nA5, $18, nG5, $18
	saVolFM		$0C
	ssModZ80	$00, $00, $00, $00
	sJump		GumballMachine_Jump5

GumballMachine_PSG1:
	sVolEnvPSG	v00
	dc.b nRst, $02, nA5, $06, nC5, nF5, nA5, nB5
	dc.b nD5, nG5, nB5, nC6, nE5, nA5, nC6, nD6
	dc.b nF5, nB5, nD6, nE6, nG5, nC6, nE6, nF6
	dc.b nA5, nD6, nF6, nE6, nD6, nC6, nB5, nA5
	dc.b nG5, nF5, nD5

GumballMachine_Jump6:
	dc.b nF5, $12, $03, nBb5, nC6, $02, nRst, $0A
	dc.b nF5, $05, nRst, $07, nE5, $12, $03, nBb5
	dc.b nC6, $02, nRst, $0A, nE5, $05, nRst, $07
	dc.b nEb5, $12, $03, nBb5, nC6, $05, nRst, $07
	dc.b nEb5, $05, nRst, $07, nD5, $0D, nRst, $05
	dc.b nD5, $0F, nRst, $03, nD5, $06, nRst, nCs5
	dc.b $0D, nRst, $05, nCs5, $0C, nG5, $06, nF5
	dc.b $04, nRst, $08, nC5, $0D, nRst, $05, nC5
	dc.b $0C, nG5, $06, nF5, $05, nRst, $07, nD5
	dc.b $05, nRst, $07, nD5, $05, nRst, $07, nB4
	dc.b $05, nRst, $07, nB4, $05, nRst, $07, nC5
	dc.b $23, nRst, $0D, nF5, $12, $03, nBb5, nC6
	dc.b nRst, $09, nF5, $05, nRst, $07, nE5, $12
	dc.b $03, nBb5, nC6, $02, nRst, $0A, nE5, $05
	dc.b nRst, $07, nEb5, $12, $03, nBb5, nC6, $06
	dc.b nRst, nEb5, $05, nRst, $07, nD5, $0E, nRst
	dc.b $04, nD5, $0F, nRst, $03, nD5, $06, nRst
	dc.b nCs5, $0E, nRst, $04, nCs5, $0C, nG5, $06
	dc.b nF5, $05, nRst, $07, nC5, $0E, nRst, $04
	dc.b nC5, $0C, nG5, $06, nF5, nRst, nC5, $08
	dc.b nRst, $04, nC5, $0C, nD5, $04, nRst, $08
	dc.b nBb4, $05, nRst, $07, nA4, $30
	sVolEnvPSG	v09
	saVolPSG	$FF
	dc.b nF5, $05, nRst, $07, nBb5, $06, nRst, nD6
	dc.b $05, nRst, $07, nBb5, $06, nRst, nF6, $05
	dc.b nRst, $07, nBb5, $06, nRst, nD6, nRst, nF6
	dc.b nRst, nF5, nRst, nA5, nRst, nC6, nRst, nA5
	dc.b $07, nRst, $05, nF6, nRst, $07, nC6, $06
	dc.b nRst, nA5, nRst, nC6, $05, nRst, $07, nG5
	dc.b $06, nRst, nB5, nRst, nD6, $05, nRst, $07
	dc.b nB5, nRst, $05, nG6, $06, nRst, nB5, nRst
	dc.b nD6, nRst, nG6, $05, nRst, $07, nE5, $05
	dc.b nRst, $07, nG5, $06, nRst, nC6, $05, nRst
	dc.b $07, nD6, $06, nRst, nE6, nRst, nD6, $05
	dc.b nRst, $07, nC6, $05, nRst, $07, nBb5, $05
	dc.b nRst, $07, nF5, $05, nRst, $07, nBb5, $06
	dc.b nRst, nD6, nRst, nBb5, nRst, nF6, $05, nRst
	dc.b $07, nD6, nRst, $05, nBb5, $06, nRst, nD6
	dc.b $05, nRst, $07, nE5, $06, nRst, nA5, nRst
	dc.b nCs6, nRst, nE6, $05, nRst, $07, nD6, $05
	dc.b nRst, $07, nA5, $06, nRst, nF5, $07, nRst
	dc.b $05, nD5, $04, nRst, $08, nD5, $05, nRst
	dc.b $07, nD5, $05, nRst, $07, nG5, $05, nRst
	dc.b $07, nB5, $05, nRst, $07, nD6, $06, nRst
	dc.b nG5, $05, nRst, $07, nB5, $06, nRst, nD6
	dc.b $05, nRst, $07, nG5, $06, nRst, $12, nG5
	dc.b $18, nF5, $18, nE5, $18
	saVolPSG	$01
	sVolEnvPSG	v00
	sJump		GumballMachine_Jump6

GumballMachine_PSG2:
	sVolEnvPSG	v00
	dc.b nRst, $03, nA5, $06, nC5, nF5, nA5, nB5
	dc.b nD5, nG5, nB5, nC6, nE5, nA5, nC6, nD6
	dc.b nF5, nB5, nD6, nE6, nG5, nC6, nE6, nF6
	dc.b nA5, nD6, nF6, nE6, nD6, nC6, nB5, nA5
	dc.b nG5, nF5, nD5

GumballMachine_Jump7:
	dc.b nA5, $12, $03, nBb5, nC6, $05, nRst, $07
	dc.b nA5, $05, nRst, $07, nA5, $12, $03, nBb5
	dc.b nC6, $05, nRst, $07, nA5, $05, nRst, $07
	dc.b nA5, $12, $03, nBb5, nC6, $05, nRst, $07
	dc.b nA5, $04, nRst, $08, nG5, $0E, nRst, $04
	dc.b nF5, $11, nRst, $01, nE5, $06, nRst, nF5
	dc.b $0F, nRst, $03, nCs5, $0C, nG5, $06, nF5
	dc.b $04, nRst, $08, nF5, $0D, nRst, $05, nC5
	dc.b $0C, nG5, $06, nF5, $05, nRst, $07, nF5
	dc.b $04, nRst, $08, nF5, $05, nRst, $07, nE5
	dc.b $06, nRst, nF5, $05, nRst, $07, nG5, $24
	dc.b nRst, $0C, nA5, $12, $03, nBb5, nC6, nRst
	dc.b $09, nA5, $04, nRst, $08, nA5, $12, $03
	dc.b nBb5, nC6, $05, nRst, $07, nA5, $05, nRst
	dc.b $07, nA5, $12, $03, nBb5, nC6, $06, nRst
	dc.b nA5, $04, nRst, $08, nG5, $0F, nRst, $03
	dc.b nF5, $11, nRst, $01, nE5, $07, nRst, $05
	dc.b nF5, $10, nRst, $02, nCs5, $0C, nG5, $06
	dc.b nF5, $05, nRst, $07, nF5, $0F, nRst, $03
	dc.b nC5, $0C, nG5, $06, nF5, nRst, nE5, $0C
	dc.b nC5, nD5, $04, nRst, $08, nE5, $06, nRst
	dc.b nF5, $30
	sVolEnvPSG	v09
	saVolPSG	$FF
	dc.b nBb4, $05, nRst, $07, nD5, $06, nRst, nF5
	dc.b $05, nRst, $07, nD5, $06, nRst, nBb5, $05
	dc.b nRst, $07, nD5, $06, nRst, nF5, nRst, nBb5
	dc.b nRst, nA4, nRst, nC5, nRst, nF5, nRst, nC5
	dc.b $07, nRst, $05, nA5, nRst, $07, nC5, $06
	dc.b nRst, nF5, nRst, nA5, $05, nRst, $07, nG4
	dc.b $06, nRst, nB4, nRst, nD5, $05, nRst, $07
	dc.b nB4, nRst, $05, nG5, $06, nRst, nB4, nRst
	dc.b nD5, nRst, nG5, $05, nRst, $07, nC5, $05
	dc.b nRst, $07, nE5, $06, nRst, nG5, $05, nRst
	dc.b $07, nE5, $06, nRst, nC6, nRst, nBb5, $05
	dc.b nRst, $07, nA5, $05, nRst, $07, nG5, $05
	dc.b nRst, $07, nBb4, $05, nRst, $07, nD5, $06
	dc.b nRst, nF5, nRst, nD5, nRst, nBb5, $05, nRst
	dc.b $07, nD5, nRst, $05, nF5, $06, nRst, nBb5
	dc.b $05, nRst, $07, nA4, $06, nRst, nCs5, nRst
	dc.b nE5, nRst, nA5, $05, nRst, $07, nD5, $05
	dc.b nRst, $07, nF5, $06, nRst, nA5, $07, nRst
	dc.b $05, nD6, $04, nRst, $08, nG5, $05, nRst
	dc.b $07, nG4, $05, nRst, $07, nB4, $05, nRst
	dc.b $07, nD5, $05, nRst, $07, nG5, $06, nRst
	dc.b nD5, $05, nRst, $07, nG5, $06, nRst, nB5
	dc.b $05, nRst, $07, nC5, $06, nRst, $12, nC5
	dc.b $18, nD5, $18, nE5, $18
	saVolPSG	$01
	sVolEnvPSG	v00
	sJump		GumballMachine_Jump7

GumballMachine_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	v02
	dc.b nB6, $18, nB6, nB6, nB6, nB6, nB6
	sVolEnvPSG	v01
	dc.b nB6, $0C
	sVolEnvPSG	v02
	dc.b nB6, $0C, nB6, nB6

GumballMachine_Jump8:
	dc.b nRst, nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6, nB6, nRst, nB6, $18, $0C, nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6, $18, nRst, $0C
	sVolEnvPSG	v01
	dc.b nB6, $18, $0C, nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6, nB6, nRst, nB6, $18, $0C
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6, nB6
	sVolEnvPSG	v01
	dc.b nB6, nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6, nB6, $18
	sVolEnvPSG	v02
	dc.b nB6, $0C
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6, nB6, $18
	sVolEnvPSG	v02
	dc.b nB6, $0C
	sVolEnvPSG	v01
	dc.b nB6, nB6, $18
	sVolEnvPSG	v02
	dc.b nB6, $0C, nRst, $30
	sVolEnvPSG	v02
	dc.b nB6, $0C
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6, nB6, nB6, $18
	sVolEnvPSG	v02
	dc.b nB6, $0C
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6, $18, nB6, nB6, nB6, nB6, $0C
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6
	sVolEnvPSG	v01
	dc.b nB6
	sVolEnvPSG	v02
	dc.b nB6, nRst, $18
	sVolEnvPSG	v01
	dc.b nB6
	sJump		GumballMachine_Jump8

GumballMachine_DAC:
	dc.b dKick, $18, dKick, dKick, dKick, dKick, dKick, $0C
	dc.b dSnare, nRst, $06, dSnare, dKick, dSnare, dSnare, $0C
	dc.b dSnare

GumballMachine_Jump9:
	dc.b dCrashCymbal, $0C, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dCrashCymbal, dSnare, dKick, $06, dSnare, dSnare, $0C
	dc.b dCrashCymbal, dSnare, $06, dSnare, dKick, $0C, dSnare, dKick
	dc.b dSnare, $06, dSnare, dKick, $0C, dSnare, $06, dSnare
	dc.b dKick, dSnare, $0C, $06, dKick, dSnare, dClap, $0C
	dc.b dCrashCymbal, $0C, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dCrashCymbal, dSnare, dKick, $06, dSnare, dSnare, $0C
	dc.b dCrashCymbal, dSnare, $06, dSnare, dKick, $0C, dSnare, dKick
	dc.b dSnare, $06, dSnare, dKick, dSnare, dSnare, dSnare, dMuffledSnare
	dc.b dSnare, $0C, $06, dMuffledSnare, dSnare, dMuffledSnare, dSnare, dKick
	dc.b $0C, dCrashCymbal, dKick, $06, dKick, dSnare, $0C, dKick
	dc.b $06, dKick, dSnare, dKick, $0C, $06, dSnare, $0C
	dc.b dKick, dSnare, dKick, $06, dKick, dSnare, $0C, dKick
	dc.b $06, dKick, dSnare, dKick, $0C, $06, dSnare, $0C
	dc.b dCrashCymbal, dSnare, dKick, $06, $0C, dSnare, $06, dCrashCymbal
	dc.b $0C, dSnare, dKick, $06, dKick, dSnare, dSnare, dMuffledSnare
	dc.b $0C, dSnare, dMuffledSnare, dSnare, dElectricHighTom, $06, dElectricMidTom, dElectricLowTom
	dc.b dElectricFloorTom, dSnare, dSnare, dSnare, dSnare, dKick, $0C, dCrashCymbal
	dc.b dKick, $06, dKick, dSnare, $0C, dKick, $06, dKick
	dc.b dSnare, dKick, $0C, $06, dSnare, $0C, dKick, dCrashCymbal
	dc.b dKick, dCrashCymbal, dKick, dCrashCymbal, dKick, dCrashCymbal, dKick, dSnare
	dc.b dKick, dSnare, dSnare, $06, $0C, dElectricHighTom, $06, dSnare
	dc.b dElectricLowTom, dSnare, dElectricFloorTom, dMuffledSnare, dSnare, $0C, $06, dMuffledSnare
	dc.b $0C, dSnare, dCrashCymbal, dClap, dClap, dClap
	sJump		GumballMachine_Jump9

GumballMachine_Patches:

	; Patch $00
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

	; Patch $01
	; $3E
	; $07, $01, $02, $01,	$1F, $1F, $1F, $1F
	; $0D, $06, $00, $00,	$08, $06, $00, $00
	; $15, $0A, $0A, $0A,	$1B, $80, $80, $80
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$07, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $00, $06, $00
	spSustainLv	$01, $00, $00, $00
	spDecayRt	$08, $00, $06, $00
	spReleaseRt	$05, $0A, $0A, $0A
	spTotalLv	$1B, $00, $00, $00

	; Patch $02
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

	; Patch $03
	; $20
	; $36, $35, $30, $31,	$DF, $DF, $9F, $9F
	; $07, $06, $09, $06,	$07, $06, $06, $08
	; $20, $10, $10, $F8,	$19, $37, $13, $80
	spAlgorithm	$00
	spFeedback	$04
	spDetune	$03, $03, $03, $03
	spMultiple	$06, $00, $05, $01
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $09, $06, $06
	spSustainLv	$02, $01, $01, $0F
	spDecayRt	$07, $06, $06, $08
	spReleaseRt	$00, $00, $00, $08
	spTotalLv	$19, $13, $37, $00
