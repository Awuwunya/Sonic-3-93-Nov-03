ALZ_Header:
	sHeaderInit						; Z80 offset is $BE82
	sHeaderPatch	ALZ_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $00
	sHeaderDAC	ALZ_DAC
	sHeaderFM	ALZ_FM1, $00, $15
	sHeaderFM	ALZ_FM2, $00, $0B
	sHeaderFM	ALZ_FM3, $00, $15
	sHeaderFM	ALZ_FM4, $00, $15
	sHeaderFM	ALZ_FM5, $00, $19
	sHeaderPSG	ALZ_PSG1, $E8, $04, $00, v00
	sHeaderPSG	ALZ_PSG2, $E8, $02, $00, v00
	sHeaderPSG	ALZ_PSG3, $E8, $02, $00, v00

ALZ_FM1:
	sPan		spCenter
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	dc.b nC4, $08, nF4, nG4, nF4, nG4, nC5, nG4
	dc.b nC5, nD5, nF5, $18

ALZ_Jump1:
	dc.b nRst, $60, nRst, nRst, nRst
	sPatFM		$04
	dc.b nRst, $18, nG5, $30, nC5, $06, nRst, $12
	dc.b nRst, $54, nG5, $06, nRst, nG5, $12, nC5
	dc.b $06, nRst, $0C, nG4, $06, nRst, nG4, $12
	dc.b nC4, $06, nRst, $18
	sPatFM		$03
	dc.b nRst, $30, nRst, $06, nC4, nE4, nG4, nE4
	dc.b nG4, nC5, nE5, nF5, $0C, nE5, nD5, nC5
	dc.b $06, nRst, $12, nG5, $18, nE5, $0C, nF5
	dc.b nE5, nD5, nE5, $08, nRst, $0A, nC4, $06
	dc.b nE4, nG4, nE4, nG4, nC5, nE5, nF5, $0C
	dc.b nE5, nD5, nC5, $06, nRst, $12, nG5, $18
	dc.b nE5, $0C, nF5, nE5, nD5, nC5, $08, nRst
	dc.b $0A, nC6, $06, nG5, nE5, nG5, nE5, nC5
	dc.b nG4
	sPatFM		$00
	dc.b nRst, $18, nG4, $06, nRst, $1E, nF4, $06
	dc.b nRst, $1E, nC5, $06, nRst, $1E, nG4, $06
	dc.b nRst, $1E, nE5, $06, nRst, $12, nRst, $0C
	dc.b nC5, $06, nRst, $1E, nG5, $06, nRst, $2A
	dc.b nRst, $36
	sPatFM		$03
	dc.b nC4, $06, nE4, nG4, nE4, nG4, nC5, nE5
	dc.b nF5, $0C, nE5, nD5, nC5, $06, nRst, $12
	dc.b nG5, $18, nE5, $0C, nF5, nE5, nD5, nE5
	dc.b $08, nRst, $0A, nC4, $06, nE4, nG4, nE4
	dc.b nG4, nC5, nE5, nF5, $0C, nE5, nD5, nC5
	dc.b $06, nRst, $12, nG5, $18, nE5, $0C, nF5
	dc.b nE5, nD5, nC5, $08, nRst, $0A, nC6, $06
	dc.b nG5, nE5, nG5, nE5, nC5, nG4
	sPatFM		$00
	dc.b nRst, $18, nG4, $06, nRst, $1E, nF4, $06
	dc.b nRst, $1E, nC5, $06, nRst, $1E, nG4, $06
	dc.b nRst, $1E, nE5, $06, nRst, $12, nRst, $0C
	dc.b nC5, $06, nRst, $1E, nG5, $06, nRst, $12
	dc.b nD5, $06, nRst, nE5, nRst, nG3, $0C, nG3
	dc.b $06, nRst, nBb3, nRst, $12, nD4, $0C, nC4
	dc.b $06, nRst, $12
	saVolFM		$03
	sPatFM		$04
	dc.b nE5, $18, nD5, $06, nRst, nE5, nRst, nD5
	dc.b nRst, nE5, nRst, nD5, nE5, nRst, $0C, nF5
	dc.b $18, nE5, $06, nRst, nF5, nRst, nE5, nRst
	dc.b nF5, nRst, nE5, nF5, nRst, $0C, nG5, $18
	dc.b nF5, $06, nRst, nG5, nRst, nF5, nRst, nG5
	dc.b nRst, nF5, nE5, nRst, $0C, nA4, $1E, nRst
	dc.b $06, nB4, nRst, nB4, nRst, nB4, $0C, nG4
	dc.b $06, nRst, nG4, nRst, nE5, $18, nD5, $06
	dc.b nRst, nE5, nRst, nD5, nRst, nE5, nRst, nD5
	dc.b nE5, nRst, $0C, nF5, $18, nE5, $06, nRst
	dc.b nF5, nRst, nE5, nRst, nF5, nRst, nE5, nF5
	dc.b nRst, $0C, nG5, $18, nF5, $06, nRst, nG5
	dc.b nRst, nF5, nRst, nG5, nRst, nF5, nE5, nRst
	dc.b $0C, nA4, $1E, nRst, $06, nBb4, nRst, nBb4
	dc.b nRst, nB4, $0C, nRst, nC5, $06, nRst, nF5
	dc.b $3C, nE5, $0C, nC5, nA4, nE5, $06, nRst
	dc.b nRst, $0C, nD5, $08, nRst, $28, nC5, $06
	dc.b nRst, nC5, nRst, nC5, nRst
	saVolFM		$FD
	sJump		ALZ_Jump1
	dc.b $F2	; Unused

ALZ_FM2:
	sPatFM		$01
	ssModZ80	$0D, $01, $02, $06
	dc.b nC2, $48, nC2, $06, nC2, nC2, nC2

ALZ_Loop1:
	dc.b nC2, $06, nRst, nC2, nRst, nC2, nRst, nC2
	dc.b nC2, $05, nRst, $07, nC2, $06, nG2, nC2
	dc.b nC2, $05, nRst, $07, nC2, $06, nC2
	sLoop		$00, $0C, ALZ_Loop1
	dc.b nC2, $06, nRst, nC2, nRst, nC2, nRst, nC2
	dc.b nC2, $05, nRst, $07, nC2, $03, nRst, nC2
	dc.b $0C, nC2, nC2, nC2, $06, nC2, nC2, nRst
	dc.b nC2, nRst, nC2, nC2, $05, nRst, $07, nC2
	dc.b $05, nRst, $07, nC2, $06, nG2, nC2, nG2
	dc.b nC2, nC2, nRst, nC2, nRst, nC2, nRst, nC2
	dc.b nC2, $05, nRst, $07, nC2, $03, nRst, nC2
	dc.b $0C, nC2, nC2, nC2, nC3, $01, nRst, $0B
	dc.b nC2, $12, nC2, $05, nRst, $0D, nC2, $05
	dc.b nRst, $07, nC2, $06, nC3, nC2, nC2

ALZ_Loop2:
	dc.b nC2, $06, nRst, nC2, nRst, nC2, nRst, nC2
	dc.b nC2, $05, nRst, $07, nC2, $06, nG2, nC2
	dc.b nC2, $05, nRst, $07, nC2, $06, nC2
	sLoop		$00, $04, ALZ_Loop2
	dc.b nC2, $06, nRst, nC2, nRst, nC2, nRst, nC2
	dc.b nC2, $05, nRst, $07, nC2, $03, nRst, nC2
	dc.b $0C, nC2, nC2, nC2, $06, nC2, nC2, nRst
	dc.b nC2, nRst, nC2, nC2, $05, nRst, $07, nC2
	dc.b $05, nRst, $07, nC2, $06, nG2, nC2, nG2
	dc.b nC2, nC2, nRst, nC2, nRst, nC2, nRst, nC2
	dc.b nC2, $05, nRst, $07, nC2, $03, nRst, nC2
	dc.b $0C, nC2, nC2, nC2, nC3, $01, nRst, $0B
	dc.b nC2, $12, nC2, $06, nC2, $0C, nC2, $05
	dc.b nRst, $13

ALZ_Loop3:
	dc.b nC2, $18, nC2, $0C, nC2, nC2, nC2, nC2
	dc.b nC2
	sLoop		$00, $08, ALZ_Loop3
	dc.b nC2, $18, nC2, $0C, nC2, nC2, $06, nG2
	dc.b $02, nRst, $04, nC3, $0C, nG2, nE2, nC2
	dc.b nRst, nC2, $06, nRst, $12, nC2, $06, nC2
	dc.b nC2, $0C, nC2, nG2, nC2
	sJump		ALZ_Loop1
	dc.b $F2	; Unused

ALZ_FM3:
	sPatFM		$04
	ssModZ80	$0D, $01, $02, $06
	dc.b nRst, $18, nF5, $30, nE4, $06, nG4, nC5
	dc.b nE5

ALZ_Loop4:
	sPatFM		$02
	dc.b nF4, $06, nRst, $0C, nF4, $06, nRst, $0C
	dc.b nE4, $06, nRst, $12, nE4, $06, nRst, nE4
	dc.b nRst, nE4, nRst, nD4, nRst, $0C, nD4, $06
	dc.b nRst, $0C, nE4, $06, nRst, $12, nE4, $06
	dc.b nRst, nE4, nRst, nE4, nRst, nF4, nRst, $0C
	dc.b nF4, $06, nRst, $0C, nE4, $06, nRst, $12
	dc.b nE4, $06, nRst, nE4, nRst, nE4, nRst, nD4
	dc.b nRst, $0C, nD4, $06, nRst, $0C, nC4, $06
	dc.b nRst, $12, nC4, $06, nRst, nC4, nRst, nC4
	dc.b nRst
	sLoop		$00, $03, ALZ_Loop4
	sPatFM		$04
	dc.b nRst, $0C, nG4, $08, nRst, $0A, nG4, $06
	dc.b nRst, $0C, nG4, $08, nRst, $0A, nG4, $08
	dc.b nRst, $0A, nG4, $20, nG4, $0C, nRst, $10
	dc.b nG4, $06, nG4, $08, nRst, $04, nG4, $08
	dc.b nRst, $0A, nG4, $20, nG4, $0C, nRst, $10
	dc.b nG4, $06, nG4, $08, nRst, $04, nG4, $08
	dc.b nRst, $0A, nG4, $1E, nG4, $0E, nRst, $40
	sPatFM		$02
	dc.b nF4, $06, nRst, $0C, nF4, $06, nRst, $0C
	dc.b nE4, $06, nRst, $12, nE4, $06, nRst, nE4
	dc.b nRst, nE4, nRst, nD4, nRst, $0C, nD4, $06
	dc.b nRst, $0C, nE4, $06, nRst, $12, nE4, $06
	dc.b nRst, nE4, nRst, nE4, nRst, nF4, nRst, $0C
	dc.b nF4, $06, nRst, $0C, nE4, $06, nRst, $12
	dc.b nE4, $06, nRst, nE4, nRst, nE4, nRst, nD4
	dc.b nRst, $0C, nD4, $06, nRst, $0C, nC4, $06
	dc.b nRst, $12, nC4, $06, nRst, nC4, nRst, nC4
	dc.b nRst
	sPatFM		$04
	dc.b nRst, $0C, nG4, $08, nRst, $0A, nG4, $06
	dc.b nRst, $0C, nG4, $08, nRst, $0A, nG4, $08
	dc.b nRst, $0A, nG4, $20, nG4, $0C, nRst, $10
	dc.b nG4, $06, nG4, $08, nRst, $04, nG4, $08
	dc.b nRst, $0A, nG4, $1E, nG4, $0C, nRst, $12
	dc.b nG4, $06, nG4, nRst, nG4, nRst, $0C, nE4
	dc.b $1E, nRst, $06, nF4, nRst, $12, nA4, $0C
	dc.b nG4, $06, nRst, $12
	sPatFM		$03
	saVolFM		$FD
	dc.b nC5, $54, nG4, $06, nRst, nD5, $54, nC5
	dc.b $06, nRst, nE5, $48, nC5, $08, nRst, $1C
	dc.b nRst, $18, nG5, $08, nRst, $10, nD5, $08
	dc.b nRst, $10, nE5, $08, nRst, $04, nC5, $54
	dc.b nG4, $06, nRst, nD5, $54, nC5, $06, nRst
	dc.b nE5, $48, nC6, $08, nRst, $10, nF5, $24
	dc.b nE5, $18, nG5, $08, nRst, $28, nRst, $60
	sPatFM		$02
	dc.b nRst, $3C, nC4, $06, nRst, nC4, nRst, nC4
	dc.b nRst
	saVolFM		$03
	sJump		ALZ_Loop4
	dc.b $F2	; Unused

ALZ_FM4:
	sPatFM		$04
	ssModZ80	$0D, $01, $02, $06
	dc.b nRst, $18, nG5, $30, nC5, $06, nRst, $12

ALZ_Loop5:
	sPatFM		$02
	dc.b nC4, $06, nRst, $0C, nC4, $06, nRst, $0C
	dc.b nC4, $06, nRst, $12, nC4, $06, nRst, nC4
	dc.b nRst, nC4, nRst, nC4, nRst, $0C, nC4, $06
	dc.b nRst, $0C, nC4, $06, nRst, $12, nC4, $06
	dc.b nRst, nC4, nRst, nC4, nRst, nC4, nRst, $0C
	dc.b nC4, $06, nRst, $0C, nC4, $06, nRst, $12
	dc.b nC4, $06, nRst, nC4, nRst, nC4, nRst, nC4
	dc.b nRst, $0C, nC4, $06, nRst, $0C, nG3, $06
	dc.b nRst, $12, nG3, $06, nRst, nG3, nRst, nG3
	dc.b nRst
	sLoop		$00, $03, ALZ_Loop5
	sPatFM		$04
	dc.b nRst, $0C, nF4, $08, nRst, $0A, nF4, $06
	dc.b nRst, $0C, nF4, $08, nRst, $0A, nF4, $08
	dc.b nRst, $0A, nE4, $20, nE4, $0C, nRst, $10
	dc.b nE4, $06, nE4, $08, nRst, $04, nE4, $08
	dc.b nRst, $0A, nF4, $20, nF4, $0C, nRst, $10
	dc.b nF4, $06, nF4, $08, nRst, $04, nF4, $08
	dc.b nRst, $0A, nE4, $18, nD4, $06, nRst, nE4
	dc.b $08, nRst, $40
	sPatFM		$02
	dc.b nC4, $06, nRst, $0C, nC4, $06, nRst, $0C
	dc.b nC4, $06, nRst, $12, nC4, $06, nRst, nC4
	dc.b nRst, nC4, nRst, nC4, nRst, $0C, nC4, $06
	dc.b nRst, $0C, nC4, $06, nRst, $12, nC4, $06
	dc.b nRst, nC4, nRst, nC4, nRst, nC4, nRst, $0C
	dc.b nC4, $06, nRst, $0C, nC4, $06, nRst, $12
	dc.b nC4, $06, nRst, nC4, nRst, nC4, nRst, nC4
	dc.b nRst, $0C, nC4, $06, nRst, $0C, nG3, $06
	dc.b nRst, $12, nG3, $06, nRst, nG3, nRst, nG3
	dc.b nRst
	sPatFM		$04
	dc.b nRst, $0C, nF4, $08, nRst, $0A, nF4, $06
	dc.b nRst, $0C, nF4, $08, nRst, $0A, nF4, $08
	dc.b nRst, $0A, nE4, $20, nE4, $0C, nRst, $10
	dc.b nE4, $06, nE4, $08, nRst, $04, nE4, $08
	dc.b nRst, $0A, nF4, $1E, nF4, $0C, nRst, $12
	dc.b nF4, $06, nF4, nRst, nF4, nRst, $0C, nC4
	dc.b $1E, nRst, $06, nD4, nRst, $12, nF4, $0C
	dc.b nE4, $06, nRst, $1E, nRst, $60, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, $0C
	sPatFM		$2D
	dc.b nF5, $06, nG5, nC6, nG5, nF5, nE5, nC5
	dc.b $05, nRst, $2B, nRst, $3C
	sPatFM		$02
	dc.b nG3, $06, nRst, nG3, nRst, nG3, nRst
	sJump		ALZ_Loop5
	dc.b $F2	; Unused

ALZ_FM5:
	dc.b nRst, $0E
	sPatFM		$00
	ssModZ80	$0D, $01, $02, $06
	dc.b nC4, $08, nF4, nG4, nF4, nG4, nC5, nG4
	dc.b nC5, nD5, nF5, $18

ALZ_Jump2:
	dc.b nRst, $60, nRst, nRst, nRst
	sPatFM		$04
	dc.b nRst, $18, nG5, $30, nC5, $06, nRst, $12
	dc.b nRst, $54, nG5, $06, nRst, nG5, $12, nC5
	dc.b $06, nRst, $0C, nG4, $06, nRst, nG4, $12
	dc.b nC4, $06, nRst, $18
	sPatFM		$03
	dc.b nRst, $30, nRst, $06, nC4, nE4, nG4, nE4
	dc.b nG4, nC5, nE5, nF5, $0C, nE5, nD5, nC5
	dc.b $06, nRst, $12, nG5, $18, nE5, $0C, nF5
	dc.b nE5, nD5, nE5, $08, nRst, $0A, nC4, $06
	dc.b nE4, nG4, nE4, nG4, nC5, nE5, nF5, $0C
	dc.b nE5, nD5, nC5, $06, nRst, $12, nG5, $18
	dc.b nE5, $0C, nF5, nE5, nD5, nC5, $08, nRst
	dc.b $0A, nC6, $06, nG5, nE5, nG5, nE5, nC5
	dc.b nG4
	sPatFM		$00
	dc.b nRst, $18, nG4, $06, nRst, $1E, nF4, $06
	dc.b nRst, $1E, nC5, $06, nRst, $1E, nG4, $06
	dc.b nRst, $1E, nE5, $06, nRst, $12, nRst, $0C
	dc.b nC5, $06, nRst, $1E, nG5, $06, nRst, $2A
	dc.b nRst, $36
	sPatFM		$03
	dc.b nC4, $06, nE4, nG4, nE4, nG4, nC5, nE5
	dc.b nF5, $0C, nE5, nD5, nC5, $06, nRst, $12
	dc.b nG5, $18, nE5, $0C, nF5, nE5, nD5, nE5
	dc.b $08, nRst, $0A, nC4, $06, nE4, nG4, nE4
	dc.b nG4, nC5, nE5, nF5, $0C, nE5, nD5, nC5
	dc.b $06, nRst, $12, nG5, $18, nE5, $0C, nF5
	dc.b nE5, nD5, nC5, $08, nRst, $0A, nC6, $06
	dc.b nG5, nE5, nG5, nE5, nC5, nG4
	sPatFM		$00
	dc.b nRst, $18, nG4, $06, nRst, $1E, nF4, $06
	dc.b nRst, $1E, nC5, $06, nRst, $1E, nG4, $06
	dc.b nRst, $1E, nE5, $06, nRst, $12, nRst, $0C
	dc.b nC5, $06, nRst, $1E, nG5, $06, nRst, $12
	dc.b nD5, $06, nRst, nE5, nRst, nG3, $0C, nG3
	dc.b $06, nRst, nBb3, nRst, $12, nD4, $0C, nC4
	dc.b $06, nRst, $12
	sPatFM		$04
	saVolFM		$03
	dc.b nE5, $18, nD5, $06, nRst, nE5, nRst, nD5
	dc.b nRst, nE5, nRst, nD5, nE5, nRst, $0C, nF5
	dc.b $18, nE5, $06, nRst, nF5, nRst, nE5, nRst
	dc.b nF5, nRst, nE5, nF5, nRst, $0C, nG5, $18
	dc.b nF5, $06, nRst, nG5, nRst, nF5, nRst, nG5
	dc.b nRst, nF5, nE5, nRst, $0C, nA4, $1E, nRst
	dc.b $06, nB4, nRst, nB4, nRst, nB4, $0C, nG4
	dc.b $06, nRst, nG4, nRst, nE5, $18, nD5, $06
	dc.b nRst, nE5, nRst, nD5, nRst, nE5, nRst, nD5
	dc.b nE5, nRst, $0C, nF5, $18, nE5, $06, nRst
	dc.b nF5, nRst, nE5, nRst, nF5, nRst, nE5, nF5
	dc.b nRst, $0C, nG5, $18, nF5, $06, nRst, nG5
	dc.b nRst, nF5, nRst, nG5, nRst, nF5, nE5, nRst
	dc.b $0C, nA4, $1E, nRst, $06, nBb4, nRst, nBb4
	dc.b nRst, nB4, $0C, nRst, nC5, $06, nRst, nF5
	dc.b $3C, nE5, $0C, nC5, nA4, nE5, $06, nRst
	dc.b nRst, $0C, nD5, $08, nRst, $28, nC5, $06
	dc.b nRst, nC5, nRst, nC5, nRst
	saVolFM		$FD
	sJump		ALZ_Jump2
	dc.b $F2	; Unused

ALZ_DAC:
	dc.b dSnare, $18, dKick, dKick, dSnare, $06, dSnare, dSnare
	dc.b dSnare

ALZ_Loop6:
	dc.b dKick, $18, dSnare, $12, dKick, dKick, $0C, dSnare
	dc.b dKick
	sLoop		$00, $03, ALZ_Loop6
	dc.b dKick, $18, dSnare, $12, dKick, dKick, $0C, dSnare
	dc.b $06, dKick, dSnare, dSnare, dKick, $0C, dKick, $06
	dc.b dKick, dSnare, $12, dKick, dKick, $0C, dSnare, dKick

ALZ_Loop7:
	dc.b dKick, $18, dSnare, $12, dKick, dKick, $0C, dSnare
	dc.b dKick
	sLoop		$00, $02, ALZ_Loop7
	dc.b dKick, $18, dSnare, $12, dKick, $0C, dSnare, $06
	dc.b dKick, $0C, dSnare, dKick

ALZ_Loop8:
	dc.b dKick, $18, dSnare, $12, dKick, dKick, $0C, dSnare
	dc.b dKick
	sLoop		$00, $03, ALZ_Loop8
	dc.b dKick, $18, dSnare, $12, dKick, dSnare, $0C, dSnare
	dc.b dSnare, $06, dSnare

ALZ_Loop9:
	dc.b dKick, $18, dSnare, $12, dKick, dKick, $0C, dSnare
	dc.b dKick
	sLoop		$00, $02, ALZ_Loop9
	dc.b dKick, $18, dSnare, $12, dKick, dKick, $0C, dSnare
	dc.b $06, dSnare, dSnare, $0C, dKick, dSnare, dSnare, dSnare
	dc.b $06, dSnare, dKick, dSnare, $0C, dSnare, $06, dSnare
	dc.b dSnare, dKick, dSnare

ALZ_Loop10:
	dc.b dKick, $18, dSnare, $12, dKick, dKick, $0C, dSnare
	dc.b dKick
	sLoop		$00, $03, ALZ_Loop10
	dc.b dKick, $18, dSnare, $12, dKick, dSnare, $0C, dSnare
	dc.b dSnare, $06, dSnare

ALZ_Loop11:
	dc.b dKick, $18, dSnare, $12, dKick, dKick, $0C, dSnare
	dc.b dKick
	sLoop		$00, $02, ALZ_Loop11
	dc.b dKick, $18, dSnare, $12, dKick, dKick, $0C, dSnare
	dc.b $06, dSnare, dSnare, $0C, dKick, dSnare, $06, dSnare
	dc.b dSnare, $18, dSnare, $0C, dSnare, $06, dSnare, dSnare
	dc.b dSnare, dSnare, dSnare, dKick, $0C, dKick, dSnare, $18
	dc.b dKick, $0C, dKick, dSnare, dKick, dKick, dKick, dSnare
	dc.b $18, dKick, $0C, dKick, dSnare, dKick, dKick, dKick
	dc.b dSnare, dKick, dSnare, dKick, dSnare, dKick, dKick, dKick
	dc.b dSnare, $18, dKick, $0C, dKick, dSnare, dSnare, dKick
	dc.b dKick, dSnare, $18, dKick, $0C, dKick, dSnare, dKick
	dc.b dKick, dKick, dSnare, $18, dKick, $0C, dKick, dSnare
	dc.b dKick, dKick, dKick, dSnare, dKick, dSnare, dKick, dSnare
	dc.b dKick, dKick, dKick, dSnare, $18, dSnare, $06, dKick
	dc.b dKick, $0C, dSnare, $06, dSnare, dSnare, $0C, dKick
	dc.b dKick, dSnare, $18, dKick, $0C, dKick, dSnare, dSnare
	dc.b dKick, dSnare, dSnare, dKick, dSnare, dKick, dSnare, dSnare
	dc.b $06, dSnare
	sJump		ALZ_Loop6
	dc.b $F2	; Unused

ALZ_PSG1:
	ssModZ80	$0D, $01, $02, $06
	dc.b nRst, $12, nD5, $01, nE5, nF5, nG5, nA5
	dc.b nB5, nC6, $30, nF5, $06, nE5, $02, nD5
	dc.b nC5, nB4, $01, nA4, nG4, nF4, nE4, nD4
	dc.b nC4, nB3, nA3, nG3, nF3, nE3

ALZ_Jump3:
	dc.b nRst, $3C, nG4, $06, nRst, nC5, nRst, nG4
	dc.b nRst, nD5, nRst, nG4, nD5, nRst, nC5, nRst
	dc.b nE5, nRst, $30, nRst, $3C, nG4, $06, nRst
	dc.b nC5, nRst, nG4, nRst, nD5, nRst, nG4, nD5
	dc.b nRst, nC5, nRst, nC5, nRst, $30, nRst, $12
	dc.b nD5, $01, nE5, nF5, nG5, nA5, nB5, nC6
	dc.b $30, nF5, $06, nE5, $02, nD5, nC5, nB4
	dc.b $01, nA4, nG4, nF4, nE4, nD4, nC4, nB3
	dc.b nA3, nG3, nF3, nE3, nRst, $54, nC6, $06
	dc.b nRst, nC6, $12, nG5, $06, nRst, $0C, nC5
	dc.b $06, nRst, nC5, $12, nG4, $06, nRst, $18
	dc.b nRst, $30, nRst, $06, nE4, nG4, nC5, nG4
	dc.b nC5, nE5, nG5, nRst, $0C, nC4, $06, nRst
	dc.b $12, nC4, $06, nRst, $2A, nC4, $06, nRst
	dc.b nC4, nRst, $0C, nC4, $06, nRst, $1E, nE4
	dc.b $06, nG4, nC5, nG4, nC5, nE5, nG5, nRst
	dc.b $0C, nC4, $06, nRst, $12, nC4, $06, nRst
	dc.b $2A, nC4, $06, nRst, nC4, nRst, $0C, nC4
	dc.b $06, nRst, $1E, nC6, $06, nG5, nE5, nG5
	dc.b nE5, nC5, nG4, nRst, $0C, nC4, $08, nRst
	dc.b $0A, nC4, $06, nRst, $0C, nC4, $08, nRst
	dc.b $0A, nC4, $08, nRst, $0A, nC4, $20, nC4
	dc.b $0C, nRst, $10, nC4, $06, nC4, $08, nRst
	dc.b $04, nC4, $08, nRst, $0A, nC4, $20, nC4
	dc.b $0C, nRst, $10, nC4, $06, nC4, $08, nRst
	dc.b $04, nC4, $08, nRst, $0A, nC4, $18, nB3
	dc.b $06, nRst, nC4, $08, nRst, $16, nE4, $06
	dc.b nG4, nC5, nG4, nC5, nE5, nG5, nRst, $0C
	dc.b nC4, $06, nRst, $12, nC4, $06, nRst, $2A
	dc.b nC4, $06, nRst, nC4, nRst, $0C, nC4, $06
	dc.b nRst, $1E, nE4, $06, nG4, nC5, nG4, nC5
	dc.b nE5, nG5, nRst, $0C, nC4, $06, nRst, $12
	dc.b nC4, $06, nRst, $2A, nC4, $06, nRst, nC4
	dc.b nRst, $0C, nC4, $06, nRst, $1E, nC6, $06
	dc.b nG5, nE5, nG5, nE5, nC5, nG4, nRst, $0C
	dc.b nC4, $08, nRst, $0A, nC4, $06, nRst, $0C
	dc.b nC4, $08, nRst, $0A, nC4, $08, nRst, $0A
	dc.b nC4, $20, nC4, $0C, nRst, $10, nC4, $06
	dc.b nC4, $08, nRst, $04, nC4, $08, nRst, $0A
	dc.b nC4, $1E, nC4, $0C, nRst, $12, nC4, $06
	dc.b nC4, nRst, nC4, nRst, $0C, nG3, $1E, nRst
	dc.b $06, nBb3, nRst, $12, nD4, $0C, nC4, $06
	dc.b nRst, $12, nC5, $18, nB4, $06, nRst, nC5
	dc.b nRst, nB4, nRst, nC5, nRst, nB4, nC5, nRst
	dc.b $0C, nD5, $18, nC5, $06, nRst, nD5, nRst
	dc.b nC5, nRst, nD5, nRst, nC5, nD5, nRst, $0C
	dc.b nE5, $18, nD5, $06, nRst, nE5, nRst, nD5
	dc.b nRst, nE5, nRst, nD5, nC5, nRst, $0C, nF4
	dc.b $1E, nRst, $06, nG4, nRst, nG4, nRst, nG4
	dc.b $0C, nE4, $06, nRst, nD4, nRst, nC5, $18
	dc.b nB4, $06, nRst, nC5, nRst, nB4, nRst, nC5
	dc.b nRst, nB4, nC5, nRst, $0C, nD5, $18, nC5
	dc.b $06, nRst, nD5, nRst, nC5, nRst, nD5, nRst
	dc.b nC5, nD5, nRst, $0C, nE5, $18, nD5, $06
	dc.b nRst, nE5, nRst, nD5, nRst, nE5, nRst, nD5
	dc.b nC5, nRst, $0C, nF4, $1E, nRst, $06, nFs4
	dc.b nRst, nFs4, nRst, nG4, $0C, nRst, nA4, $06
	dc.b nRst, nA4, $3C, nE5, $0C, nRst, $18, nG4
	dc.b $06, nRst, nRst, $0C, nG4, $08, nRst, $28
	dc.b nG4, $06, nRst, nG4, nRst, nG4, nRst
	sJump		ALZ_Jump3
	dc.b $F2	; Unused

ALZ_PSG2:
	sStop
	dc.b $F2	; Unused

ALZ_PSG3:
	sStop

ALZ_Patches:

	; Patch $00
	; $3C
	; $44, $31, $12, $61,	$1F, $1F, $1F, $1F
	; $0A, $08, $0B, $01,	$00, $0F, $00, $00
	; $1F, $3F, $5F, $1F,	$21, $87, $10, $88
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$04, $01, $03, $06
	spMultiple	$04, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $0B, $08, $01
	spSustainLv	$01, $05, $03, $01
	spDecayRt	$00, $00, $0F, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $10, $07, $08

	; Patch $01
	; $38
	; $75, $13, $71, $11,	$DF, $5F, $1F, $1F
	; $0C, $0D, $01, $01,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$1E, $1E, $1E, $81
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$07, $07, $01, $01
	spMultiple	$05, $01, $03, $01
	spRateScale	$03, $00, $01, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $01, $0D, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $1E, $1E, $01

	; Patch $02
	; $3D
	; $71, $51, $41, $11,	$1F, $1F, $1F, $1F
	; $01, $01, $01, $01,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$20, $85, $85, $85
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$07, $04, $05, $01
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $01, $01, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$20, $05, $05, $05

	; Patch $03
	; $3D
	; $51, $61, $71, $21,	$1C, $18, $18, $1B
	; $06, $05, $04, $05,	$06, $05, $06, $06
	; $6F, $8F, $5F, $7F,	$17, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$05, $07, $06, $02
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1C, $18, $18, $1B
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $04, $05, $05
	spSustainLv	$06, $05, $08, $07
	spDecayRt	$06, $06, $05, $06
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $00, $00, $00

	; Patch $04
	; $07
	; $78, $54, $42, $11,	$1F, $1F, $1F, $1F
	; $01, $01, $01, $01,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$8A, $84, $83, $84
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$07, $04, $05, $01
	spMultiple	$08, $02, $04, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $01, $01, $01
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0A, $03, $04, $04
