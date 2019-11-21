Ending_Header:
	sHeaderInit						; Z80 offset is $ADCC
	sHeaderPatch	Ending_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $30
	sHeaderDAC	Ending_DAC
	sHeaderFM	Ending_FM1, $00, $15
	sHeaderFM	Ending_FM2, $0C, $0E
	sHeaderFM	Ending_FM3, $00, $0D
	sHeaderFM	Ending_FM4, $0C, $1E
	sHeaderFM	Ending_FM5, $00, $1A
	sHeaderPSG	Ending_PSG1, $F4, $05, $00, v00
	sHeaderPSG	Ending_PSG2, $F4, $05, $00, v00
	sHeaderPSG	Ending_PSG3, $23, $04, $00, v00

Ending_FM1:
	ssModZ80	$01, $01, $01, $04

Ending_Jump1:
	sPatFM		$00
	dc.b nRst, $24, nAb4, $06, nG4, nAb4, $0C, nC4
	dc.b $06, nC4, nG4, nAb4, $2A, nBb4, $18, nBb3
	dc.b $30, nRst, $24, nEb4, $06, nB3, nFs4, $0C
	dc.b nEb4, $06, nEb4, nFs4, nB4, $2A, nCs5, $0C
	dc.b nF4, nAb4, $30, nRst, $24, nAb4, $06, nG4
	dc.b nAb4, $0C, nC4, $06, nC4, nG4, nAb4, $2A
	dc.b nBb4, $0C, nRst, nBb3, $30, nRst, $24, nEb4
	dc.b $06, nB3, nFs4, $0C, nF4, $06, nCs4, nAb4
	dc.b nCs5, $12, nRst, $18, nEb5, nAb4, $30
	saVolFM		$FE
	sPan		spCenter
	dc.b nRst, $36
	sPatFM		$01
	dc.b nF3, $06, nCs3, nEb3, nF3, nG3, nAb3, nBb3
	dc.b nC4, $3C, nC4, $0C, nCs4, nEb4, nEb4, $24
	dc.b nD4, $24, nBb3, $12, nRst, $06, nBb3, $24
	dc.b nAb3, $24, nG3, $18, nBb3, $1E, nRst, $06
	dc.b nAb3, $1E, nRst, $06, nEb3, $12, nRst, $06
	dc.b nC4, $30, nRst, $0C, nC4, nCs4, nEb4, nEb4
	dc.b $24, nD4, $24, nBb3, $12, nRst, $06, nBb3
	dc.b $24, nAb3, $24, nG3, $12, nRst, $06, nBb3
	dc.b $1E, nRst, $06, nAb3, $36, nRst, $06
	saTranspose	$0C
	sPatFM		$03
	dc.b nFs3, $30, nBb3, $30, nC4, $30, nFs4, $30
	dc.b nAb4, $30, nEb4, $18, nC4, $18, nD4, $12
	dc.b nEb4, $12, nD4, $0C, nBb3, $2A, nRst, $06
	dc.b nFs3, $30, nBb3, $30, nC4, $30, nFs4, $2A
	dc.b nRst, $06, nAb4, $2A, nRst, $06, nEb5, $2A
	dc.b nRst, $06, nD5, $12, nEb5, $12, nF5, $06
	dc.b nRst, $06, nBb4, $2A, nRst, $06
	saTranspose	$F4
	saVolFM		$02

Ending_Loop1:
	sPatFM		$06
	saVolFM		$FD
	dc.b nRst, $0C, nCs5, $06, nCs5, nRst, nCs5, $0C
	dc.b nCs5, $06, nCs5, nC5, nC5, nRst, $2A, nCs5
	dc.b $06, nCs5, nRst, nCs5, $0C, nCs5, $06, nCs5
	dc.b nFs4, nAb4, nC5, nEb5, nRst, $12, nRst, $0C
	dc.b nCs5, $06, nCs5, nRst, nCs5, $0C, nCs5, $06
	dc.b nCs5, nC5, nC5, nRst, $12, nEb5, $06, nCs5
	dc.b nRst, nCs5, $12, nC5, $06, nRst, $42
	saVolFM		$03
	sLoop		$00, $02, Ending_Loop1
	sJump		Ending_Jump1

Ending_FM2:
	sPan		spCenter
	sPatFM		$04

Ending_Loop2:
	dc.b nAb1, $06, nRst, nAb1, nRst, $4E
	sLoop		$00, $09, Ending_Loop2

Ending_Loop3:
	dc.b nAb1, $06, nRst, nAb1, nRst, nAb1, $06, nF1
	dc.b nEb1, nAb1, nRst, $30, nAb1, $06, nRst, $12
	dc.b nAb1, $06, nRst, $42, nEb2, $06, nRst, nEb2
	dc.b nRst, nEb2, nC2, nBb1, nEb2, nRst, $18, nC2
	dc.b $0C, nCs2, $06, nC2, nAb1, nRst, nAb1, nRst
	dc.b nAb1, nF1, nEb1, nAb1, nRst, nC1, $12, nCs1
	dc.b $06, nRst, nEb1, nRst
	sLoop		$00, $02, Ending_Loop3

Ending_Loop4:
	dc.b nFs2, $06, nFs2, nF2, nEb2, nCs2, nC2, nFs1
	dc.b nRst, $1E, nFs3, $06, nRst, $1E, nFs2, $06
	dc.b nFs2, nF2, nEb2, nCs2, nC2, nAb1, nFs1, nFs2
	dc.b nRst, $1E, nF2, $06, nF2, nC3, nF2, nAb2
	dc.b nC3, nF3, nRst, $1E, nF2, $06, nRst, $1E
	dc.b nBb2, $06, nBb2, nAb2, nG2, nF2, nEb2, nD2
	dc.b nBb1, nBb2, nRst, $1E
	sLoop		$00, $02, Ending_Loop4
	dc.b nRst, $0C, nFs1, $06, nFs1, nRst, nFs1, $0C
	dc.b nFs1, $06, nFs1, nFs1, nFs1, nRst, $2A, nFs1
	dc.b $06, nFs1, nRst, nFs1, $0C, nFs1, $06, nFs1
	dc.b nRst, $12, nFs1, $06, nRst, nC2, nEb2, nRst
	dc.b $0C, nFs1, $06, nFs1, nRst, nFs1, $0C, nFs1
	dc.b $06, nFs1, nFs1, nFs1, nRst, $12, nAb1, $06
	dc.b nAb1, nRst, nAb1, nRst, $0C, nAb1, $06, nRst
	dc.b $2A, nAb1, $06, nCs1, nEb1, nF1, nRst, $0C
	dc.b nFs1, $06, nFs1, nRst, nFs1, $0C, nFs1, $06
	dc.b nFs1, nFs1, nFs1, nRst, $2A, nFs1, $06, nFs1
	dc.b nRst, nFs1, $0C, nFs1, $06, nFs1, nRst, $12
	dc.b nFs1, $06, nRst, nC2, nEb2, nRst, $0C, nFs1
	dc.b $06, nFs1, nRst, nFs1, $0C, nFs1, $06, nFs1
	dc.b nFs1, nFs1, nRst, $12, nAb1, $06, nAb1, nRst
	dc.b nAb1, nAb1, nRst, nAb1, nRst, $2A, nAb1, $06
	dc.b nEb1, nC2, $0C
	sJump		Ending_Loop2

Ending_FM3:
	sPan		spRight
	sPatFM		$02
	dc.b nAb2, $06, nRst, nAb2, nRst, nEb3, nAb3, nRst
	dc.b nAb2, nRst, nAb2, nEb3, nAb3, nAb2, nRst, nAb2
	dc.b nRst, nAb2, nRst, nAb2, nRst, nBb3, nF3, nRst
	dc.b nAb2, nRst, nAb2, nF3, nBb3, nAb2, nRst, nAb2
	dc.b nRst, nB2, nRst, nB2, nRst, nFs3, nB3, nRst
	dc.b nB2, nRst, nB2, nFs3, nB3, nB2, nRst, nB2
	dc.b nRst, nCs3, nRst, nCs3, nRst, nAb3, nCs3, nRst
	dc.b nCs4, $0C, nC4, $06, nBb3, nAb3, nBb3, nG3
	dc.b nEb4, nEb3, nAb2, nRst, nAb2, nRst, nEb3, nAb3
	dc.b nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2, nRst
	dc.b nAb2, nRst, nAb2, nRst, nAb2, nRst, nBb3, nF3
	dc.b nRst, nAb2, nRst, nAb2, nF3, nBb3, nAb2, nRst
	dc.b nAb2, nRst, nB2, nRst, nB2, nRst, nFs3, nB3
	dc.b nRst, nCs4, $0C, nC4, $06, nBb3, nAb3, nBb3
	dc.b nG3, nEb4, nEb3, nAb2, nRst, nAb2, nRst, nEb3
	dc.b nAb3, nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2
	dc.b nRst, nAb2, nRst, nAb2, nRst, nAb2, nRst, nEb3
	dc.b nAb3, nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2
	dc.b nRst, nAb2, nRst, nAb2, nRst, nAb2, nRst, nEb3
	dc.b nAb3, nRst, nAb2, nRst, nAb2, nEb3, nAb3, nAb2
	dc.b nRst, nAb2, nRst, nBb2, nRst, nBb2, nRst, nBb3
	dc.b nF3, nRst, nBb2, nRst, nBb2, nF3, nBb3, nBb2
	dc.b nRst, nBb2, nRst, nBb2, nRst, nBb2, nRst, nEb3
	dc.b nG3, nRst, nBb2, nRst, nBb2, nEb3, nG3, nBb2
	dc.b nRst, nBb2, nRst, nAb2, nRst, nAb2, nRst, nC3
	dc.b nEb3, nRst, nCs4, $0C, nC4, $06, nBb3, nAb3
	dc.b nBb3, nG3, nEb4, nEb3, nAb2, nRst, nAb2, nRst
	dc.b nEb3, nAb3, nRst, nAb2, nRst, nAb2, nEb3, nAb3
	dc.b nAb2, nRst, nAb2, nRst, nBb2, nRst, nBb2, nRst
	dc.b nBb3, nF3, nRst, nBb2, nRst, nBb2, nF3, nBb3
	dc.b nBb2, nRst, nBb2, nRst, nBb2, nRst, nBb2, nRst
	dc.b nEb3, nG3, nRst, nBb2, nRst, nBb2, nEb3, nG3
	dc.b nBb2, nRst, nBb2, $0C, nAb2, $06, nRst, nAb2
	dc.b nRst, nEb3, nAb3, nRst, nAb2, nRst, nAb2, nEb3
	dc.b nAb3, nAb2, nRst, nAb2, $0C
	sPatFM		$01
	sPan		spLeft
	saVolFM		$04
	saTranspose	$0C
	dc.b nFs2, $06, nBb2, nC3, nCs3, nFs3, nBb3, nC4
	dc.b nCs4, nFs4, nBb4, nC5, nCs5, nFs5, nCs5, nBb4
	dc.b nFs4, nG4, nEb4, nC4, nAb3, nG3, nEb3, nC3
	dc.b nAb2, nC3, nEb3, nG3, nAb3, nC4, nEb4, nG4
	dc.b nAb4, nF4, nEb4, nC4, nBb3, nAb3, nF3, nEb3
	dc.b nC3, nBb2, nAb2, nF2, nEb2, nC2, nBb1, nF1
	dc.b nF2, nBb4, nA4, nF4, nD4, nBb3, nA3, nF3
	dc.b nD3, nBb2, nA2, nF2, nD2, nBb1, nA1, nF1
	dc.b nD1, nFs2, nBb2, nC3, nCs3, nFs3, nBb3, nC4
	dc.b nCs4, nFs4, nBb4, nC5, nCs5, nFs5, nCs5, nBb4
	dc.b nFs4, nG4, nEb4, nC4, nAb3, nG3, nEb3, nC3
	dc.b nAb2, nC3, nEb3, nG3, nAb3, nC4, nEb4, nG4
	dc.b nAb4, nF4, nEb4, nC4, nBb3, nAb3, nF3, nEb3
	dc.b nC3, nBb2, nAb2, nF2, nEb2, nC2, nBb1, nF1
	dc.b nF2, nBb4, nA4, nF4, nD4, nBb3, nA3, nF3
	dc.b nD3, nBb2, nA2, nF2, nD2, nBb1, nA1, nF1
	dc.b nD1
	sPatFM		$01
	sPan		spLeft
	dc.b nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3
	dc.b nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4
	dc.b nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4
	dc.b nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3
	dc.b nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4
	dc.b nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4
	dc.b nEb4, nEb4, nAb3, nAb3, nC4, nC4, nEb4, nEb4
	dc.b nAb3, nAb3, nC4, nC4, nEb4, nEb4, nAb3, nAb3
	dc.b nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3
	dc.b nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4
	dc.b nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4
	dc.b nFs3, nFs3, nC4, nC4, nCs4, nCs4, nFs3, nFs3
	dc.b nC4, nC4, nCs4, nCs4, nFs3, nFs3, nC4, nC4
	dc.b nCs4, nCs4, nFs3, nFs3, nC4, nC4, nCs4, nCs4
	dc.b nEb4, nEb4, nAb3, nAb3, nC4, nC4, nEb4, nEb4
	dc.b nAb3, nAb3, nC4, nC4, nEb4, nEb4, nAb3, nAb3
	saTranspose	$F4
	saVolFM		$FC
	sJump		Ending_FM3

Ending_FM4:
	ssModZ80	$01, $01, $01, $02
	ssModZ80	$07, $01, $01, $05
	sPan		spLeft
	sPatFM		$03
	dc.b nEb4, $60, nF4, $60, nFs4, $60, nAb4, $60
	dc.b nEb4, $60, nF4, $60, nFs4, $30, nAb4, nEb4
	dc.b $60, sHold, $60
	sPatFM		$01
	dc.b nEb4, $06, nRst, nEb4, nRst, $0C, nEb4, nEb4
	dc.b $36, nF4, $06, nRst, $12, nF4, $48, nG4
	dc.b $06, nRst, nG4, nRst, $0C, nG4, nG4, $36
	dc.b nEb4, $60, nEb4, $06, nRst, nEb4, nRst, $0C
	dc.b nEb4, nEb4, $36, nF4, $06, nRst, $12, nF4
	dc.b $48, nG4, $06, nRst, nG4, nRst, $0C, nG4
	dc.b nG4, $36, nEb4, $60
	saVolFM		$FD
	sPatFM		$05
	dc.b nFs3, $30, nBb3, nAb3, nEb4, nAb3, nC4, nF3
	dc.b $18, nF3, nD4, nF3, $0C, nF3, nFs3, $30
	dc.b nBb3, nAb3, nEb4, nAb3, nC4, nF3, $18, nF3
	dc.b nD4, nF3, $0C, nF3
	saVolFM		$03
	dc.b nRst, $60, nRst, nRst, nRst
	sPatFM		$01
	sPan		spRight
	saVolFM		$04
	dc.b nBb3, $06, nBb3, nAb4, nAb4, nBb4, nBb4, nBb3
	dc.b nBb3, nAb4, nAb4, nBb4, nBb4, nBb3, nBb3, nAb4
	dc.b nAb4, nBb4, nBb4, nBb3, nBb3, nAb4, nAb4, nBb4
	dc.b nBb4, nBb3, nBb3, nAb4, nAb4, nBb4, nBb4, nBb3
	dc.b nBb3, nAb4, nAb4, nBb4, nBb4, nBb3, nBb3, nAb4
	dc.b nAb4, nBb4, nBb4, nBb3, nBb3, nAb4, nAb4, nC5
	dc.b nC5, nEb4, nEb4, nAb4, nAb4, nC5, nC5, nEb4
	dc.b nEb4, nAb4, nAb4, nC5, nC5, nEb4, nEb4, nAb4
	dc.b nAb4
	saVolFM		$FC
	sJump		Ending_FM4

Ending_FM5:
	ssModZ80	$01, $01, $01, $06
	dc.b nRst, $08
	ssDetune	$01
	sJump		Ending_Jump1
	dc.b $F2, $F2	; Unused

Ending_PSG1:
	ssModZ80	$03, $01, $01, $04
	sVolEnvPSG	v11
	dc.b nC4, $60, nD4, $60, nEb4, $60, nF4, $60
	dc.b nC4, $60, nD4, $60, nEb4, $30, nF4, nC4
	dc.b $60, sHold, $60

Ending_Loop5:
	sVolEnvPSG	v1D
	saVolPSG	$FD
	dc.b nC4, $06, nRst, nC4, nRst, $0C, nC4, nC4
	dc.b $36, nD4, $06, nRst, $12, nD4, $48, nEb4
	dc.b $06, nRst, nEb4, nRst, $0C, nEb4, nEb4, $36
	dc.b nC4, $60
	saVolPSG	$03
	sLoop		$00, $02, Ending_Loop5
	sVolEnvPSG	v1D
	saVolPSG	$FE
	dc.b nCs4, $30, nFs4, nEb4, nC5, nC4, nAb4, nEb4
	dc.b $18, nD4, nBb4, nBb3, $0C, nC4, nCs4, $30
	dc.b nFs4, nEb4, nC5, nC4, nAb4, nEb4, $18, nD4
	dc.b nBb4, nBb3, $0C, nC4
	sVolEnvPSG	v12
	dc.b nRst, $0C, nBb3, $06, nBb3, nRst, nBb3, $0C
	dc.b nBb3, $06, nBb3, nC4, nC4, nRst, $1E, nRst
	dc.b $0C, nBb3, $06, nBb3, nRst, nBb3, $0C, nBb3
	dc.b $06, nCs4, nRst, $12, nC4, $06, nRst, $1E
	dc.b nBb3, $06, nBb3, nRst, nBb3, $0C, nBb3, $06
	dc.b nBb3, nC4, nC4, nRst, $12, nCs4, $06, nCs4
	dc.b nRst, nCs4, nCs4, $0C, nEb4, $06, nRst, $42
	dc.b nRst, $0C, nBb3, $06, nBb3, nRst, nBb3, $0C
	dc.b nBb3, $06, nBb3, nC4, nC4, nRst, $2A, nBb3
	dc.b $06, nBb3, nRst, nBb3, $0C, nBb3, $06, nCs4
	dc.b nRst, $12, nC4, $06, nRst, $1E, nBb3, $06
	dc.b nBb3, nRst, nBb3, $0C, nBb3, $06, nBb3, nC4
	dc.b nC4, nRst, $12, nCs4, $06, nCs4, nRst, nCs4
	dc.b $12, nEb4, $06, nRst, $42
	saVolPSG	$02
	sJump		Ending_PSG1

Ending_PSG2:
	sVolEnvPSG	v11
	dc.b nAb3, $60, nBb3, nB3, nCs4, nAb3, nBb3, nB3
	dc.b $30, nCs4, nAb3, $60, sHold, $60

Ending_Loop6:
	sVolEnvPSG	v1D
	saVolPSG	$FD
	dc.b nAb3, $06, nRst, nAb3, nRst, $0C, nAb3, nAb3
	dc.b $36, nBb3, $06, nRst, $12, nBb3, $48, nBb3
	dc.b $06, nRst, nBb3, nRst, $0C, nBb3, nBb3, $36
	dc.b nAb3, $60
	saVolPSG	$03
	sLoop		$00, $02, Ending_Loop6
	saVolPSG	$FE
	sVolEnvPSG	v1D
	dc.b nFs3, $30, nBb3, nAb3, nEb4, nAb3, nC4, nF3
	dc.b $18, nF3, nD4, nF3, $0C, nF3, nFs3, $30
	dc.b nBb3, nAb3, nEb4, nAb3, nC4, nF3, $18, nF3
	dc.b nD4, nF3, $0C, nF3
	sVolEnvPSG	v12
	dc.b nRst, nFs3, $06, nFs3, nRst, nFs3, $0C, nFs3
	dc.b $06, nFs3, nAb3, nAb3, nRst, $1E, nRst, $0C
	dc.b nFs3, $06, nFs3, nRst, nFs3, $0C, nFs3, $06
	dc.b nAb3, nRst, $12, nAb3, $06, nRst, $12, nRst
	dc.b $0C, nFs3, $06, nFs3, nRst, nFs3, $0C, nFs3
	dc.b $06, nFs3, nAb3, nAb3, nRst, $12, nBb3, $06
	dc.b nBb3, nRst, nBb3, nBb3, $0C, nC4, $06, nRst
	dc.b $42, nRst, $0C, nFs3, $06, nFs3, nRst, nFs3
	dc.b $0C, nFs3, $06, nFs3, nAb3, nAb3, nRst, $2A
	dc.b nFs3, $06, nFs3, nRst, nFs3, $0C, nFs3, $06
	dc.b nAb3, nRst, $12, nAb3, $06, nRst, $1E, nFs3
	dc.b $06, nFs3, nRst, nFs3, $0C, nFs3, $06, nFs3
	dc.b nAb3, nAb3, nRst, $12, nBb3, $06, nBb3, nRst
	dc.b nBb3, $12, nC4, $06, nRst, $42
	saVolPSG	$02
	sJump		Ending_PSG2

Ending_PSG3:
	sNoisePSG	$E7
	sCall		Ending_Call1
	sCall		Ending_Call2
	sVolEnvPSG	v0F
	dc.b nC4, $06, nC4
	sVolEnvPSG	v12
	dc.b $0C
	sVolEnvPSG	v0F
	dc.b nC4, $06
	sVolEnvPSG	v12
	dc.b nC4, $0C, nC4, $36
	sCall		Ending_Call3
	sCall		Ending_Call3
	sCall		Ending_Call4
	sVolEnvPSG	v0F
	dc.b nC4, $06, nC4
	sVolEnvPSG	v12
	dc.b $0C
	sVolEnvPSG	v0F
	dc.b nC4, $06, nC4
	sVolEnvPSG	v12
	dc.b $0C
	sVolEnvPSG	v12
	dc.b nC4, $18, $18
	sCall		Ending_Call1
	sCall		Ending_Call2
	sJump		Ending_PSG3

Ending_Call1:
	sVolEnvPSG	v0F
	dc.b nC4, $06, nC4
	sVolEnvPSG	v12
	dc.b $0C
	sLoop		$00, $10, Ending_Call1
	sRet

Ending_Call2:
	sVolEnvPSG	v0F
	dc.b nC4, $06, nC4
	sVolEnvPSG	v12
	dc.b nC4
	sVolEnvPSG	v0F
	dc.b nC4
	sLoop		$00, $10, Ending_Call2
	sRet

Ending_Call3:
	sVolEnvPSG	v0F
	dc.b nC4, $06, nRst, nC4, nC4
	sVolEnvPSG	v12
	dc.b nC4, $0C
	sVolEnvPSG	v0F
	dc.b nC4, $06, nC4
	sVolEnvPSG	v0F
	dc.b nC4, $06, nRst, nC4, nRst
	sVolEnvPSG	v12
	dc.b nC4, $0C
	sVolEnvPSG	v0F
	dc.b $06, $06
	sLoop		$00, $04, Ending_Call3
	sRet

Ending_Call4:
	sVolEnvPSG	v0F
	dc.b nC4, $06, nC4, nC4, nC4
	sVolEnvPSG	v12
	dc.b nC4, $0C
	sVolEnvPSG	v0F
	dc.b nC4, $06, nC4
	sVolEnvPSG	v12
	dc.b nC4, $06
	sVolEnvPSG	v0F
	dc.b nC4, nC4, nC4, nC4, nC4, nC4, nC4
	sLoop		$00, $07, Ending_Call4
	sRet

Ending_DAC:
	dc.b dCrashCymbal, $60, dCrashCymbal, $48, dElectricMidTom, $02, dElectricFloorTom, $16
	dc.b dCrashCymbal, $48, dSnare, $03, dSnare, $15, dCrashCymbal, $18
	dc.b dElectricHighTom, dKick, dElectricFloorTom, dCrashCymbal, $18, dKick, nRst, dKick
	dc.b nRst, dKick, nRst, dKick, dKick, $18, dKick, dKick
	dc.b dKick, dKick, dKick, dKick, dKick, dKick, $0C, dSnare
	dc.b $06, nRst, dSnare, dSnare, nRst, dSnare, nRst, dHighTom
	dc.b dHighTom, dHighTom, dMidTom, dMidTom, dLowTom, dLowTom

Ending_Loop7:
	dc.b dCrashCymbal, $06, nRst, dKick, nRst, dSnare, dKick, nRst
	dc.b dKick, $1E, dSnare, $18, dKick, $18, dSnare, $12
	dc.b dKick, $06, dKick, nRst, dKick, nRst, dSnare, $18
	dc.b dKick, $06, nRst, dKick, nRst, dSnare, dKick, nRst
	dc.b dKick, $1E, dSnare, $18, dKick, $18, dSnare, dKick
	dc.b dSnare
	sLoop		$00, $02, Ending_Loop7
	dc.b dKick, $18, dSnare, $12, dKick, $06, dKick, $18
	dc.b dCrashCymbal, dKick, dSnare, $12, dKick, $06, dKick, $18
	dc.b dSnare, $03, dSnare, $15, dKick, $18, dSnare, $12
	dc.b dKick, $06, dKick, $18, dSnare, dKick, $18, dSnare
	dc.b dKick, dSnare, dKick, $18, dSnare, $12, dKick, $06
	dc.b dKick, $18, dCrashCymbal, dKick, dSnare, $12, dKick, $06
	dc.b dKick, $18, dSnare, $03, dSnare, $15, dKick, $18
	dc.b dSnare, $12, dKick, $06, dKick, $0C, dKick, dClap
	dc.b $18, dTightSnare, $06, dTightSnare, nRst, nRst, dMidpitchSnare, dMidpitchSnare
	dc.b nRst, nRst, dLooseSnare, dLooseSnare, nRst, nRst, dLooserSnare, dLooserSnare
	dc.b dKick, dKick, dCrashCymbal, $60, nRst, $60, nRst, $60
	dc.b nRst, $60, nRst, $06, nRst, dSnare, dSnare, nRst
	dc.b dSnare, nRst, dSnare, dSnare, dSnare, dSnare, nRst, nRst
	dc.b $24, dSnare, $06, dSnare, nRst, dSnare, nRst, dSnare
	dc.b dCrashCymbal, $18, dCrashCymbal, nRst, $06, nRst, dSnare, dSnare
	dc.b nRst, dSnare, nRst, dSnare, dSnare, dSnare, dSnare, nRst
	dc.b nRst, nRst, dSnare, dSnare, nRst, dSnare, nRst, nRst
	dc.b dCrashCymbal, dHighTom, dHighTom, dHighTom, dMidTom, dMidTom, dMidTom, dMidTom
	dc.b dLowTom, dLowTom, dFloorTom, dFloorTom

Ending_Jump2:
	dc.b dCrashCymbal, $06, nRst, dKick, nRst, dSnare, dKick, nRst
	dc.b dKick, $1E, dSnare, $18, dKick, $18, dSnare, $12
	dc.b dKick, $06, dKick, nRst, dKick, nRst, dSnare, $18
	dc.b dKick, $06, nRst, dKick, nRst, dSnare, dKick, nRst
	dc.b dKick, $1E, dSnare, $18, dKick, $18, dSnare, dKick
	dc.b dSnare, dCrashCymbal, $18, dSnare, dKick, dSnare, dKick, dSnare
	dc.b dKick, dSnare, dKick, $18, dKick, dKick, dKick, dKick
	dc.b dKick, dKick, dKick, dKick, $0C, dSnare, $06, nRst
	dc.b dSnare, dSnare, nRst, dSnare, nRst, dHighTom, $04, $04
	dc.b $04, dHighTom, $06, dMidTom, dMidTom, dLowTom, dLowTom, dCrashCymbal
	dc.b $06, nRst, dKick, nRst, dSnare, dKick, nRst, dKick
	dc.b $1E, dSnare, $18, dKick, $18, dSnare, dKick, $0C
	dc.b dKick, dSnare, nRst, dKick, $06, nRst, dKick, nRst
	dc.b dSnare, dKick, nRst, dKick, $1E, dSnare, $18, dKick
	dc.b $18, dSnare, dKick, dSnare, dMuffledSnare, $06, nRst, dTightSnare
	dc.b nRst, dMidpitchSnare, dMidpitchSnare, nRst, dLooseSnare, nRst, dLooseSnare, dLooserSnare
	dc.b dLooserSnare, dCrashCymbal, $18, dKick, $18, dSnare, dKick, dSnare
	dc.b dKick, $06, nRst, dKick, nRst, dSnare, dKick, nRst
	dc.b dKick, $1E, dSnare, $18, dKick, $18, dSnare, dKick
	dc.b dSnare, dKick, $18, dSnare, $12, dKick, $06, dKick
	dc.b $18, dCrashCymbal, dKick, dSnare, $12, dKick, $06, dKick
	dc.b $18, dSnare, $03, dSnare, $15, dKick, $18, dSnare
	dc.b $12, dKick, $06, dKick, $18, dClap, dKick, $18
	dc.b dClap, dKick, dClap, dKick, $18, dSnare, $12, dKick
	dc.b $06, dKick, $18, dCrashCymbal, dKick, dSnare, $12, dKick
	dc.b $06, dKick, $18, dSnare, $03, dSnare, $15, dKick
	dc.b $18, dSnare, $12, dKick, $06, dKick, $0C, dKick
	dc.b dClap, $18, dTightSnare, $06, dTightSnare, nRst, nRst, dMidpitchSnare
	dc.b dMidpitchSnare, nRst, nRst, dLooseSnare, dLooseSnare, nRst, nRst, dLooserSnare
	dc.b dLooserSnare, dKick, dKick, dCrashCymbal, $60, nRst, $60, nRst
	dc.b $60, nRst, $60, nRst, $06, nRst, dSnare, dSnare
	dc.b nRst, dSnare, nRst, dSnare, dSnare, dSnare, dSnare, nRst
	dc.b nRst, $24, dSnare, $06, dSnare, nRst, dSnare, nRst
	dc.b dSnare, dCrashCymbal, $18, dCrashCymbal, nRst, $06, nRst, dSnare
	dc.b dSnare, nRst, dSnare, nRst, dSnare, dSnare, dSnare, dSnare
	dc.b nRst, nRst, nRst, dSnare, dSnare, nRst, dSnare, nRst
	dc.b nRst, dCrashCymbal, dHighTom, dHighTom, dHighTom, dMidTom, dMidTom, dMidTom
	dc.b dMidTom, dLowTom, dLowTom, dFloorTom, dFloorTom
	sJump		Ending_Jump2

Ending_Patches:

	; Patch $00
	; $3E
	; $07, $04, $61, $21,	$1F, $1F, $1C, $1C
	; $0A, $0C, $04, $04,	$07, $0D, $08, $02
	; $1D, $1F, $1E, $1E,	$26, $84, $84, $84
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$00, $06, $00, $02
	spMultiple	$07, $01, $04, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1C, $1F, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $04, $0C, $04
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$07, $08, $0D, $02
	spReleaseRt	$0D, $0E, $0F, $0E
	spTotalLv	$26, $04, $04, $04

	; Patch $01
	; $16
	; $79, $71, $32, $33,	$1F, $1F, $1F, $1F
	; $0A, $08, $0C, $0A,	$07, $0A, $07, $05
	; $2F, $AF, $AF, $5F,	$24, $80, $82, $80
	spAlgorithm	$06
	spFeedback	$02
	spDetune	$07, $03, $07, $03
	spMultiple	$09, $02, $01, $03
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $0C, $08, $0A
	spSustainLv	$02, $0A, $0A, $05
	spDecayRt	$07, $07, $0A, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$24, $02, $00, $00

	; Patch $02
	; $3A
	; $75, $0F, $61, $31,	$58, $1A, $1C, $98
	; $0A, $10, $10, $0B,	$00, $00, $00, $00
	; $5F, $BF, $3F, $FF,	$1B, $1E, $20, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$07, $06, $00, $03
	spMultiple	$05, $01, $0F, $01
	spRateScale	$01, $00, $00, $02
	spAttackRt	$18, $1C, $1A, $18
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $10, $10, $0B
	spSustainLv	$05, $03, $0B, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $20, $1E, $00

	; Patch $03
	; $3D
	; $01, $02, $02, $02,	$1F, $08, $8A, $0A
	; $08, $08, $08, $08,	$00, $01, $00, $00
	; $0F, $1F, $1F, $1F,	$1F, $88, $88, $87
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $02, $00, $00
	spAttackRt	$1F, $0A, $08, $0A
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $08, $08, $08
	spSustainLv	$00, $01, $01, $01
	spDecayRt	$00, $00, $01, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1F, $08, $08, $07

	; Patch $04
	; $28
	; $39, $35, $30, $31,	$DF, $DF, $9F, $9F
	; $0C, $07, $0A, $0A,	$07, $07, $07, $09
	; $2F, $1F, $1F, $FF,	$17, $32, $14, $80
	spAlgorithm	$00
	spFeedback	$05
	spDetune	$03, $03, $03, $03
	spMultiple	$09, $00, $05, $01
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0A, $07, $0A
	spSustainLv	$02, $01, $01, $0F
	spDecayRt	$07, $07, $07, $09
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $14, $32, $00

	; Patch $05
	; $03
	; $00, $D7, $33, $02,	$5F, $9F, $5F, $1F
	; $13, $0F, $0A, $0A,	$10, $0F, $02, $09
	; $35, $15, $25, $1A,	$13, $16, $15, $80
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$00, $03, $0D, $00
	spMultiple	$00, $03, $07, $02
	spRateScale	$01, $01, $02, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$13, $0A, $0F, $0A
	spSustainLv	$03, $02, $01, $01
	spDecayRt	$10, $02, $0F, $09
	spReleaseRt	$05, $05, $05, $0A
	spTotalLv	$13, $15, $16, $00

	; Patch $06
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
