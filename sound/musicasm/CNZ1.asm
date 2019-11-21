CNZ1_Header:
	sHeaderInit						; Z80 offset is $8000
	sHeaderPatch	CNZ1_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $41
	sHeaderDAC	CNZ1_DAC
	sHeaderFM	CNZ1_FM1, $03, $15
	sHeaderFM	CNZ1_FM2, $03, $15
	sHeaderFM	CNZ1_FM3, $03, $14
	sHeaderFM	CNZ1_FM4, $1B, $12
	sHeaderFM	CNZ1_FM5, $03, $18
	sHeaderPSG	CNZ1_PSG1, $03, $05, $00, v0C
	sHeaderPSG	CNZ1_PSG2, $03, $05, $00, v0C
	sHeaderPSG	CNZ1_PSG3, $00, $03, $00, v0C
	dc.b $F2, $F2	; Unused

CNZ1_DAC:
	dc.b dKick, $18, dKick, $14, dSnare, $0C, dKick, $04
	dc.b dKick, $18, dSnare, $0C, dKick, $14, dKick, $18
	dc.b dKick, $04, dKick, $20, dSnare, $04, dSnare, $08
	dc.b dSnare, $04, dKick, $18, dKick, $14, dSnare, $0C
	dc.b dKick, $04, dKick, $18, dSnare, $0C, dKick, $14
	dc.b dKick, $18, dKick, $04, dKick, $08, dSnare, $10
	dc.b dSnare, $08, dSnare, $04, dSnare, dSnare, dSnare, dKick
	dc.b $08, dKick, $04, dSnare, $0C, dKick, $08, dKick
	dc.b $04, dSnare, $08, dKick, $0C, dKick, $04, dSnare
	dc.b $0C, dKick, $08, dKick, $04, dSnare, $0C, dKick
	dc.b $08, dKick, $04, dSnare, $0C, dKick, $08, dKick
	dc.b $04, dSnare, $08, dKick, $0C, dKick, $04, dSnare
	dc.b $0C, dKick, $08, dKick, $04, dSnare, $0C, dKick
	dc.b $08, dKick, $04, dSnare, $0C, dKick, $08, dKick
	dc.b $04, dSnare, $08, dKick, $0C, dKick, $04, dSnare
	dc.b $0C, dKick, $08, dKick, $04, dSnare, $0C, dKick
	dc.b $08, dKick, $04, dSnare, $0C, dKick, $08, dKick
	dc.b $04, dSnare, $08, dKick, $0C, dKick, $04, dSnare
	dc.b $0C, dKick, $08, dKick, $04, dSnare, dSnare, dSnare
	dc.b dKick, $08, dKick, $04, dSnare, $0C, dKick, $08
	dc.b dKick, $04, dSnare, $08, dKick, $0C, dKick, $04
	dc.b dSnare, $0C, dKick, $08, dKick, $04, dSnare, $0C
	dc.b dKick, $08, dKick, $04, dSnare, $0C, dKick, $08
	dc.b dKick, $04, dSnare, $08, dKick, $0C, dKick, $04
	dc.b dSnare, $0C, dKick, $08, dKick, $04, dSnare, $0C
	dc.b dKick, $08, dKick, $04, dSnare, $0C, dKick, $08
	dc.b dKick, $04, dSnare, $08, dKick, $0C, dKick, $04
	dc.b dSnare, $0C, dKick, $08, dKick, $04, dSnare, $0C
	dc.b dKick, $08, dSnare, $04, dKick, $08, dSnare, $04
	dc.b dKick, $08, dSnare, $04, dKick, $08, dSnare, $04
	dc.b dKick, $08, dKick, $04, dSnare, $0C, dKick, $08
	dc.b dKick, $04, dSnare, dSnare, dSnare, dKick, $0C, dSnare
	dc.b dKick, dSnare, $08, dKick, $0C, dKick, $04, dSnare
	dc.b $08
	sPan		spRight
	dc.b dClap, $04
	sPan		spCenter
	dc.b dKick, $08, dClap, $04, dSnare, $08
	sPan		spLeft
	dc.b dClap, $04
	sPan		spCenter
	dc.b dKick, $0C, dSnare, dKick, dSnare, $08, dKick, $0C
	dc.b dKick, $04, dSnare, $08
	sPan		spLeft
	dc.b dClap, $04
	sPan		spCenter
	dc.b dKick, $08, dClap, $04, dSnare, $08
	sPan		spRight
	dc.b dClap, $04
	sPan		spCenter
	dc.b dKick, $0C, dSnare, dKick, dSnare, $08, dKick, $0C
	dc.b dKick, $04, dSnare, $08
	sPan		spRight
	dc.b dClap, $04
	sPan		spCenter
	dc.b dKick, $08, dClap, $04, dSnare, $08
	sPan		spLeft
	dc.b dClap, $04
	sPan		spCenter
	dc.b dKick, $0C
	sPan		spLeft
	dc.b dHighTom, $08, dMidTom, $04
	sPan		spCenter
	dc.b dKick, $08
	sPan		spRight
	dc.b dLowTom, $04, dFloorTom, $08
	sPan		spCenter
	dc.b dSnare, $0C, dKick, $04, dSnare, $0C, dKick, dSnare
	dc.b $04, dSnare, dSnare, dKick, $0C, dSnare, dKick, dSnare
	dc.b $08, dKick, $0C, dKick, $04, dSnare, $08
	sPan		spRight
	dc.b dClap, $04
	sPan		spCenter
	dc.b dKick, $08, dClap, $04, dSnare, $08
	sPan		spLeft
	dc.b dClap, $04
	sPan		spCenter
	dc.b dKick, $0C, dSnare, dKick, dSnare, $08, dKick, $0C
	dc.b dKick, $04, dSnare, $08
	sPan		spLeft
	dc.b dClap, $04
	sPan		spCenter
	dc.b dKick, $08, dClap, $04, dSnare, $08
	sPan		spRight
	dc.b dClap, $04
	sPan		spCenter
	dc.b dKick, $0C, dSnare, dKick, dSnare, $08, dKick, $0C
	dc.b dSnare, dSnare, $04, dSnare, $0C, dSnare, dKick, dSnare
	dc.b dKick, dSnare, $08, dSnare, $0C, dSnare, $10, dSnare
	dc.b $04, dSnare, dSnare, dSnare, dSnare, dSnare, dKick, $08
	dc.b dKick, $04, dSnare, $08, dKick, $0C, dKick, $04
	dc.b dSnare, $14, dKick, $04, dSnare, $08, dKick, $04
	dc.b dKick, $0C, dSnare, dKick, $08, dKick, $04, dSnare
	dc.b $08, dKick, $0C, dKick, $04, dSnare, $14, dKick
	dc.b $04, dSnare, $08, dKick, $04, dSnare, $0C, dSnare
	dc.b dKick, $08, dKick, $04, dSnare, $08, dKick, $0C
	dc.b dKick, $04, dSnare, $14, dKick, $04, dSnare, $08
	dc.b dKick, $04, dKick, $0C, dSnare, dKick, dSnare, $08
	dc.b dKick, $0C, dKick, $04, dSnare, $08, dKick, $0C
	dc.b dSnare, dSnare, $04, dSnare, $0C, dSnare, $04, dSnare
	dc.b dSnare, dKick, $08, dKick, $04, dSnare, $08, dKick
	dc.b $0C, dKick, $04, dSnare, $14, dKick, $04, dSnare
	dc.b $08, dKick, $04, dKick, $0C, dSnare, dKick, $08
	dc.b dKick, $04, dSnare, $08, dKick, $0C, dKick, $04
	dc.b dSnare, $14, dKick, $04, dSnare, $08, dKick, $04
	dc.b dSnare, $0C, dSnare, dKick, $08, dKick, $04, dSnare
	dc.b $08, dKick, $0C, dKick, $04, dSnare, $14, dKick
	dc.b $04, dSnare, $08, dKick, $04, dKick, $0C, dSnare
	dc.b $04, dSnare, dSnare, dSnare, $08, dSnare, $0C, dSnare
	dc.b $04, dSnare, $0C, dSnare, $08, dSnare, $0C, dSnare
	dc.b $04, dSnare, $08, dSnare, $04, dSnare, $0C, dSnare
	sJump		CNZ1_DAC
	dc.b $F2	; Unused

CNZ1_FM1:
	sPan		spLeft

CNZ1_Jump1:
	sPatFM		$1C
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	sPan		spRight
	dc.b nC4, $14, nC4, $04, nRst, $08, nC4, $0C
	dc.b nC4, $04, nRst, $18, nEb4, $02, nE4, $06
	dc.b nC4, $04, nRst, $0C, nBb3, $08, nBb3, $04
	dc.b nRst, $08, nBb3, $04, nRst, $08, nBb3, $04
	dc.b nRst, $08, nBb3, $04, nBb3, $0C, nA3, nRst
	dc.b $08, nA3, $02, nA3, nBb3, $0C, nC4, $14
	dc.b nC4, $04, nRst, $08, nC4, $0C, nC4, $04
	dc.b nRst, $18, nEb4, $02, nE4, $06, nC4, $04
	dc.b nRst, $0C, nBb3, $08, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nBb3, $0C, nA3, nRst, $08, nA3
	dc.b $02, nA3, nBb3, $0C, nC4, $14, nC4, $04
	dc.b nE4, $14, nC4, $04, nRst, $08, nRst, $04
	dc.b nRst, $12, nRst, nBb3, $08, nBb3, $04, nRst
	dc.b $08, nBb3, $04, nRst, $08, nBb3, $04, nRst
	dc.b $08, nBb3, $04, nBb3, $0C, nA3, nRst, $18
	dc.b nC4, $14, nC4, $04, nE4, $14, nC4, $04
	dc.b nRst, $08, nRst, $04, nRst, $12, nRst, nBb3
	dc.b $08, nBb3, $04, nRst, $08, nBb3, $04, nRst
	dc.b $08, nBb3, $04, nRst, $08, nBb3, $04, nBb3
	dc.b $0C, nA3, nRst, $18, nC4, $14, nC4, $04
	dc.b nE4, $14, nC4, $04, nRst, $08, nRst, $04
	dc.b nRst, $12, nRst, nBb3, $08, nBb3, $04, nRst
	dc.b $08, nBb3, $04, nRst, $08, nBb3, $04, nRst
	dc.b $08, nBb3, $04, nBb3, $0C, nA3, nRst, $18
	dc.b nC4, $14, nC4, $04, nE4, $14, nC4, $04
	dc.b nRst, $08, nRst, $04, nRst, $12, nRst, nF3
	dc.b $08, nF3, $04, nRst, $08, nE3, $04, nRst
	dc.b $08, nE3, $0C, nE3, $04, nD3, $0C, nD3
	dc.b nE3, $04, nRst, $18
	sPatFM		$0D
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	saVolFM		$02
	dc.b nRst, $08, nC4, nC4, $04, nB3, $0C, nB3
	dc.b $08, nC4, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	sPan		spRight
	saVolFM		$FE
	dc.b nB2, $0C, nC3, $04, nRst, $08, nC3, $04
	dc.b nB2, $08, nC3, $04, nRst
	sPatFM		$0D
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	saVolFM		$02
	dc.b nRst, $08, nG3, nG3, $04, nE3, $0C, nE3
	dc.b $08, nG3, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	sPan		spRight
	saVolFM		$FE
	dc.b nG3, $0C, nB3, $04, nRst, $08, nB3, $04
	dc.b nG3, $08, nE3, $04, nRst
	sPatFM		$0D
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	saVolFM		$02
	dc.b nRst, $08, nA3, nA3, $04, nF3, $0C, nF3
	dc.b $08, nA3, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	sPan		spRight
	saVolFM		$FE
	dc.b nRst, $0C, nC3, nC3, $04, nA2, $08, nC3
	dc.b $04, nA3, $18, nA3, $14, nG3, $04, nRst
	dc.b $34
	sPatFM		$0D
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	saVolFM		$02
	dc.b nRst, $08, nC4, nC4, $04, nB3, $0C, nB3
	dc.b $08, nC4, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	sPan		spRight
	saVolFM		$FE
	dc.b nB2, $0C, nC3, $04, nRst, $08, nC3, $04
	dc.b nB2, $08, nC3, $04, nRst
	sPatFM		$0D
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	saVolFM		$02
	dc.b nRst, $08, nG3, nG3, $04, nE3, $0C, nE3
	dc.b $08, nG3, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	sPan		spRight
	saVolFM		$FE
	dc.b nG3, $0C, nB3, $04, nRst, $08, nB3, $04
	dc.b nG3, $08, nE3, $04, nRst
	sPatFM		$0D
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	saVolFM		$02
	dc.b nRst, $08, nA3, nA3, $04, nF3, $0C, nF3
	dc.b $08, nA3, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	sPan		spRight
	saVolFM		$FE
	dc.b nF3, $10, nFs3, $0C, nA3, nBb3, $18, nD4
	dc.b $14, nE4, $04, nRst, $08, nG4, $10, nBb4
	dc.b $0C, nBb4, nC4, $08, nC4, $04, nC4, $08
	dc.b nC4, $04, nRst, $0C, nE4, $14, nF4, $04
	dc.b nRst, $08, nF4, $04, nE4, $08, nRst, $10
	dc.b nBb3, $08, nBb3, $04, nBb3, $08, nBb3, $04
	dc.b nRst, $0C, nD4, $14, nEb4, $04, nRst, $08
	dc.b nEb4, $04, nD4, $08, nRst, $10, nBb3, $08
	dc.b nBb3, $04, nBb3, $08, nBb3, $04, nRst, $0C
	dc.b nBb3, $08, nF3, $0C, nA3, $04, nRst, $08
	dc.b nBb3, $04, nA3, $08, nRst, $10
	sPatFM		$18
	ssDetune	$01
	ssModZ80	$0A, $01, $06, $06
	dc.b nBb4, $18, nBb4, $14, nA4, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$01
	ssModZ80	$0A, $01, $03, $06
	sPan		spRight
	dc.b nBb3, $0C, nG3, $04, nBb3, $0C, nD4, nC4
	dc.b $08, nC4, $04, nC4, $08, nC4, $04, nRst
	dc.b $0C, nE4, $14, nF4, $04, nRst, $08, nF4
	dc.b $04, nE4, $18, nBb3, $08, nBb3, $04, nBb3
	dc.b $08, nBb3, $04, nRst, $0C, nD4, $14, nEb4
	dc.b $04, nRst, $08, nEb4, $04, nD4, $18, nBb3
	dc.b $08, nBb3, $04, nBb3, $08, nBb3, $04, nRst
	dc.b $0C, nBb3, $08, nF3, $0C, nA3, $04, nRst
	dc.b $08, nBb3, $04, nA3, $18
	sPatFM		$18
	ssDetune	$01
	ssModZ80	$0A, $01, $06, $06
	dc.b nB3, $04, nRst, nB3, nRst, $08, nB3, $04
	dc.b nB3, nRst, $08, nB3, $04, nRst, nB3, nRst
	dc.b $08, nB3, $04, nB3, $0C, nA3, $02, nG3
	dc.b nF3, nE3, nD3, nC3, nB2, nRst, $0A
	sJump		CNZ1_Jump1
	dc.b $F2	; Unused

CNZ1_FM2:
	sPan		spRight

CNZ1_Jump2:
	sPatFM		$1C
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	sPan		spLeft
	dc.b nE3, $14, nE3, $04, nRst, $08, nE3, $0C
	dc.b nE3, $04, nRst, $0C, nE3, $04, nG3, nC4
	dc.b nG3, $08, nE3, $04, nRst, $0C, nD3, $08
	dc.b nD3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b nD3, $04, nRst, $08, nD3, $04, nD3, $0C
	dc.b nC3, nRst, $08, nC3, $02, nC3, nD3, $0C
	dc.b nE3, $14, nE3, $04, nRst, $08, nE3, $0C
	dc.b nE3, $04, nRst, $0C, nE3, $04, nG3, nC4
	dc.b nG3, $08, nE3, $04, nRst, $0C, nD3, $08
	dc.b nD3, $04, nRst, $08, nD3, $04, nRst, $08
	dc.b nD3, $04, nRst, $08, nD3, $04, nD3, $0C
	dc.b nC3, nRst, $08, nC3, $02, nC3, nD3, $0C
	dc.b nE3, $14, nE3, $04, nG3, $14, nE3, $04
	dc.b nRst, $08, nC4, $04, nC5, $12, nRst, nD3
	dc.b $08, nD3, $04, nRst, $08, nD3, $04, nRst
	dc.b $08, nD3, $04, nRst, $08, nD3, $04, nD3
	dc.b $0C, nC3, nRst, $18, nE3, $14, nE3, $04
	dc.b nG3, $14, nE3, $04, nRst, $08, nC4, $04
	dc.b nC5, $12, nRst, nD3, $08, nD3, $04, nRst
	dc.b $08, nD3, $04, nRst, $08, nD3, $04, nRst
	dc.b $08, nD3, $04, nD3, $0C, nC3, nRst, $18
	dc.b nE3, $14, nE3, $04, nG3, $14, nE3, $04
	dc.b nRst, $08, nC4, $04, nC5, $12, nRst, nD3
	dc.b $08, nD3, $04, nRst, $08, nD3, $04, nRst
	dc.b $08, nD3, $04, nRst, $08, nD3, $04, nD3
	dc.b $0C, nC3, nRst, $18, nE3, $14, nE3, $04
	dc.b nG3, $14, nE3, $04, nRst, $08, nC4, $04
	dc.b nC5, $12, nRst, nBb2, $08, nBb2, $04, nRst
	dc.b $08, nC3, $04, nRst, $08, nC3, $0C, nC3
	dc.b $04, nBb2, $0C, nBb2, nBb2, $04, nRst, $18
	sPatFM		$0D
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	saVolFM		$02
	dc.b nRst, $08, nA3, nA3, $04, nG3, $0C, nG3
	dc.b $08, nA3, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	sPan		spLeft
	saVolFM		$FE
	dc.b nG2, $0C, nA2, $04, nRst, $08, nA2, $04
	dc.b nG2, $08, nA2, $04, nRst
	sPatFM		$0D
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	saVolFM		$02
	dc.b nRst, $08, nE3, nE3, $04, nC3, $0C, nC3
	dc.b $08, nE3, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	sPan		spLeft
	saVolFM		$FE
	dc.b nE3, $0C, nG3, $04, nRst, $08, nG3, $04
	dc.b nE3, $08, nC3, $04, nRst
	sPatFM		$0D
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	saVolFM		$02
	dc.b nRst, $08, nF3, nF3, $04, nD3, $0C, nD3
	dc.b $08, nF3, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	sPan		spLeft
	saVolFM		$FE
	dc.b nRst, $0C, nA2, nA2, $04, nF2, $08, nA2
	dc.b $04, nC3, $18, nC3, $14, nB2, $04, nRst
	dc.b $08, nG3, $04, nG3, $08, nA3, $04, nB3
	dc.b $08, nG3, $04, nA3, $08, nB3, $04, nRst
	sPatFM		$0D
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	saVolFM		$02
	dc.b nRst, $08, nA3, nA3, $04, nG3, $0C, nG3
	dc.b $08, nA3, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	sPan		spLeft
	saVolFM		$FE
	dc.b nG2, $0C, nA2, $04, nRst, $08, nA2, $04
	dc.b nG2, $08, nA2, $04, nRst
	sPatFM		$0D
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	saVolFM		$02
	dc.b nRst, $08, nE3, nE3, $04, nC3, $0C, nC3
	dc.b $08, nE3, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	sPan		spLeft
	saVolFM		$FE
	dc.b nE3, $0C, nG3, $04, nRst, $08, nG3, $04
	dc.b nE3, $08, nC3, $04, nRst
	sPatFM		$0D
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	saVolFM		$02
	dc.b nRst, $08, nF3, nF3, $04, nD3, $0C, nD3
	dc.b $08, nF3, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	sPan		spLeft
	saVolFM		$FE
	dc.b nD3, $10, nD3, $0C, nC3, nD3, $18, nBb3
	dc.b $14, nBb3, $04, nRst, $08, nBb3, $10, nD4
	dc.b $0C, nE4, nA3, $08, nA3, $04, nA3, $08
	dc.b nA3, $04, nRst, $0C, nG3, $14, nA3, $04
	dc.b nRst, $08, nA3, $04, nG3, $08, nRst, $10
	dc.b nG3, $08, nG3, $04, nG3, $08, nG3, $04
	dc.b nRst, $0C, nF3, $14, nG3, $04, nRst, $08
	dc.b nG3, $04, nF3, $08, nRst, $10, nF3, $08
	dc.b nF3, $04, nF3, $08, nF3, $04, nRst, $0C
	dc.b nF3, $08, nC3, $0C, nC3, $04, nRst, $08
	dc.b nD3, $04, nC3, $08, nRst, $10
	sPatFM		$18
	ssDetune	$01
	ssModZ80	$0A, $01, $06, $06
	dc.b nD4, $18, nD4, $14, nC4, $04, nRst, $08
	sPatFM		$1C
	ssDetune	$FF
	ssModZ80	$0A, $01, $03, $06
	sPan		spLeft
	dc.b nG3, $0C, nEb3, $04, nG3, $0C, nBb3, nA3
	dc.b $08, nA3, $04, nA3, $08, nA3, $04, nRst
	dc.b $0C, nG3, $14, nA3, $04, nRst, $08, nA3
	dc.b $04, nG3, $18, nG3, $08, nG3, $04, nG3
	dc.b $08, nG3, $04, nRst, $0C, nF3, $14, nG3
	dc.b $04, nRst, $08, nG3, $04, nF3, $18, nF3
	dc.b $08, nF3, $04, nF3, $08, nF3, $04, nRst
	dc.b $0C, nF3, $08, nC3, $0C, nC3, $04, nRst
	dc.b $08, nD3, $04, nC3, $18
	sPatFM		$18
	ssDetune	$01
	ssModZ80	$0A, $01, $06, $06
	dc.b nF3, $04, nRst, nF3, nRst, $08, nF3, $04
	dc.b nF3, nRst, $08, nF3, $04, nRst, nF3, nRst
	dc.b $08, nF3, $04, nF3, $0C, nE3, $02, nD3
	dc.b nC3, nB2, nA2, nG2, nF2, nRst, $0A
	sJump		CNZ1_Jump2
	dc.b $F2	; Unused

CNZ1_FM3:
	sPatFM		$05
	ssDetune	$FD
	ssModZ80	$14, $01, $07, $06

CNZ1_Jump3:
	dc.b nC4, $0C, nBb3, $02, nA3, nG3, nF3, nE3
	dc.b nD3, nC3, nBb2, nA2, nG2, nC4, $0C, nC4
	dc.b $04, nRst, $30, nBb3, $08, nBb3, $04, nRst
	dc.b $08, nBb3, $04, nRst, $08, nBb3, $04, nRst
	dc.b $08, nBb3, $04, nBb3, $0C, nA3, nRst, $08
	dc.b nA3, $04, nBb3, $0C, nC4, nBb3, $02, nA3
	dc.b nG3, nF3, nE3, nD3, nC3, nBb2, nA2, nG2
	dc.b nC4, $0C, nC4, $04, nRst, $30, nBb3, $08
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nBb3, $0C
	dc.b nA3, nE4, $18, nC4, nRst, $2C, nE4, $04
	dc.b nD4, nRst, $08, nC4, $04, nRst, $08, nBb3
	dc.b $18, nBb3, nBb3, $04, nRst, $08, nA3, $04
	dc.b nRst, $08, nA3, $04, nRst, $08, nA3, nG3
	dc.b $1C, nRst, $2C, nE4, $04, nD4, nRst, $08
	dc.b nC4, $04, nRst, $08, nBb3, $18, nBb3, nBb3
	dc.b $08, nRst, $04, nA3, $08, nRst, $04, nE4
	dc.b $18, nC4, nRst, $2C, nE4, $04, nD4, nRst
	dc.b $08, nC4, $04, nRst, $08, nBb3, $18, nBb3
	dc.b nBb3, $04, nRst, $08, nA3, $04, nRst, $08
	dc.b nA3, $04, nRst, $08, nA3, nG3, $1C, nRst
	dc.b $2C, nE4, $04, nD4, nRst, $08, nC4, $04
	dc.b nRst, $08, nG3, $14, nA3, $04, nRst, $08
	dc.b nA3, $0C, nA3, $04, nBb3, nRst, $08, nBb3
	dc.b $04, nRst, $08, nC4, $04, nRst, $08
	sPatFM		$10
	ssDetune	$01
	ssModZ80	$0F, $01, $07, $06
	saVolFM		$04
	dc.b nC4, nD4, $04, nF4, $50, nC4, $04, nB3
	dc.b $08, nC4, $04, nC4, $2C, nRst, $28, nD4
	dc.b $08, nE4, $04, nF4, $18, nD4, $14, nF4
	dc.b $04, nRst, $08, nD4, $0C, nD4, $04, nC4
	dc.b $08, nD4, $04, nC4, $08, nD4, $04, nE4
	dc.b $18, nE4, $14, nD4, $04, nRst, $24, nD4
	dc.b $08, nE4, $04, nF4, $50, nC4, $04, nB3
	dc.b $08, nC4, $04, nC4, $2C, nRst, $28, nD4
	dc.b $08, nE4, $04, nF4, $18, nD4, $14, nF4
	dc.b $04, nRst, $08, nD4, $0C, nD4, $04, nC4
	dc.b $08, nD4, $04, nE4, $0C, nF4, $18, nF4
	dc.b $14, nE4, $04, nRst, $2C
	sPatFM		$05
	ssDetune	$FD
	ssModZ80	$14, $01, $07, $06
	saVolFM		$FC
	dc.b nE4, $04, nF4, $08, nF4, $04, nF4, $08
	dc.b nF4, $04, nE4, $08, nF4, $04, nC4, $24
	dc.b nRst, $0C, nC4, $08, nD4, $04, nEb4, $08
	dc.b nEb4, $04, nEb4, $08, nEb4, $04, nD4, $08
	dc.b nEb4, $04, nBb3, $24, nRst, $0C, nF3, $08
	dc.b nBb3, $04, nD4, nRst, $08, nC4, $04, nRst
	dc.b $08, nBb3, nRst, $04, nBb3, nRst, nA3, $18
	dc.b nRst, $0C, nEb3, $04, nF3, $08, nAb3, $04
	dc.b nBb3, $08, nAb3, $04, nBb3, $08, nBb3, $04
	dc.b nBb3, $08, nAb3, $0C, nA3, $04, nRst, $08
	dc.b nD4, $04, nRst, $08, nBb3, $04, nD4, $0C
	dc.b nG4, nF4, $08, nF4, $04, nF4, $08, nF4
	dc.b $04, nE4, $08, nF4, $04, nC4, $24, nRst
	dc.b $0C, nC4, $08, nD4, $04, nEb4, $08, nEb4
	dc.b $04, nEb4, $08, nEb4, $04, nD4, $08, nEb4
	dc.b $04, nBb3, $24, nRst, $0C, nF3, $08, nBb3
	dc.b $04, nD4, nRst, $08, nC4, $04, nRst, $08
	dc.b nBb3, nRst, $04, nBb3, nRst, nA3, $18, nRst
	dc.b $0C, nEb4, $04, nF4, $08, nAb4, $04, nG4
	dc.b $08, nG4, $0C, nG4, $04, nG4, nRst, $08
	dc.b nG4, nG4, $0C, nG4, $04, nG4, nRst, $10
	dc.b nA3, $04, nBb3, $0C
	sJump		CNZ1_Jump3
	dc.b $F2	; Unused

CNZ1_FM4:
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nC1, $16, nRst, $02, nA0, $12, nRst, $02
	dc.b nBb0, nRst, $0A, nBb0, $02, nRst, nA0, $16
	dc.b nRst, $02, nBb0, $06, nRst, $02, nB0, nRst
	dc.b nC1, $12, nRst, $02, nC1, nRst, $16, nBb0
	dc.b $02, nRst, nC1, $08, nF0, $04, nFs0, $08
	dc.b nG0, $04, nBb0, $08, nBb1, $04, nB0, $08
	dc.b nB1, $04, nC1, $16, nRst, $02, nA0, $12
	dc.b nRst, $02, nBb0, nRst, $0A, nBb0, $02, nRst
	dc.b nA0, $16, nRst, $02, nBb0, $06, nRst, $02
	dc.b nB0, nRst, nC1, $12, nRst, $02, nC1, nRst
	dc.b $16, nBb0, $02, nRst, nC1, $08, nF0, $04
	dc.b nFs0, $08, nG0, $04, nEb1, $08, nC1, $04
	dc.b nF1, $08, nEb1, $04, nC1, $14, nC1, $04
	dc.b nBb0, $08, nC1, $04, nBb0, $08, nC1, $04
	dc.b nRst, $08, nG0, $04, nBb0, $08, nC1, $04
	dc.b nEb1, $08, nC1, $04, nBb0, $0C, nC1, $14
	dc.b nC1, $04, nRst, $08, nC1, $04, nBb0, $08
	dc.b nC1, $04, nC1, $08, nF0, $04, nF0, $08
	dc.b nG0, $04, nEb1, $08, nC1, $04, nF1, $08
	dc.b nEb1, $04, nC1, $14, nC1, $04, nBb0, $08
	dc.b nC1, $04, nBb0, $08, nC1, $04, nRst, $08
	dc.b nG0, $04, nBb0, $08, nC1, $04, nEb1, $08
	dc.b nC1, $04, nBb0, $0C, nC1, $14, nC1, $04
	dc.b nRst, $08, nC1, $04, nBb0, $08, nC1, $04
	dc.b nC1, $08, nF0, $04, nF0, $08, nG0, $04
	dc.b nEb1, $08, nC1, $04, nF1, $08, nEb1, $04
	dc.b nC1, $14, nC1, $04, nBb0, $08, nC1, $04
	dc.b nBb0, $08, nC1, $04, nRst, $08, nG0, $04
	dc.b nBb0, $08, nC1, $04, nEb1, $08, nC1, $04
	dc.b nBb0, $0C, nC1, $14, nC1, $04, nRst, $08
	dc.b nC1, $04, nBb0, $08, nC1, $04, nC1, $08
	dc.b nF0, $04, nF0, $08, nG0, $04, nEb1, $08
	dc.b nC1, $04, nF1, $08, nEb1, $04, nC1, $14
	dc.b nC1, $04, nBb0, $08, nC1, $04, nBb0, $08
	dc.b nC1, $04, nRst, $08, nG0, $04, nBb0, $08
	dc.b nC1, $04, nEb1, $08, nC1, $04, nBb0, $0C
	dc.b nC1, $08, nC1, $06, nRst, nC1, $02, nRst
	dc.b $0A, nC1, $02, nRst, nC2, $08, nC1, $02
	dc.b nRst, nC1, $0A, nRst, $02, nC1, $06, nRst
	dc.b nC1, $16, nRst, $02, nF1, $04, nRst, $08
	dc.b nF1, $06, nRst, nC1, $12, nRst, $02, nF1
	dc.b nRst, $0A, nF1, $02, nRst, nC1, $0A, nRst
	dc.b $02, nF1, $0A, nRst, $02, nC1, $0A, nRst
	dc.b $02, nE1, $04, nRst, $08, nE1, $06, nRst
	dc.b nC1, $12, nRst, $02, nE1, nRst, $0A, nE1
	dc.b $02, nRst, nC1, $0A, nRst, $02, nE1, $0A
	dc.b nRst, $02, nC1, $0A, nRst, $02, nD1, $04
	dc.b nRst, $08, nD1, $06, nRst, nA0, $12, nRst
	dc.b $02, nD1, nRst, $0A, nD1, $02, nRst, nA0
	dc.b $0A, nRst, $02, nD1, $0A, nRst, $02, nA1
	dc.b $0A, nRst, $02, nG1, $04, nRst, $08, nG1
	dc.b nG1, $02, nRst, $0A, nD1, nRst, $02, nG0
	dc.b nRst, $0A, nG1, $02, nRst, nG1, $06, nRst
	dc.b $02, nA1, nRst, nB1, $06, nRst, $02, nG1
	dc.b nRst, nA1, $06, nRst, $02, nB1, nRst, nF1
	dc.b $04, nRst, $08, nF1, $06, nRst, nC1, $12
	dc.b nRst, $02, nF1, nRst, $0A, nF1, $02, nRst
	dc.b nC1, $0A, nRst, $02, nF1, $0A, nRst, $02
	dc.b nC1, $0A, nRst, $02, nE1, $04, nRst, $08
	dc.b nE1, $06, nRst, nC1, $12, nRst, $02, nE1
	dc.b nRst, $0A, nE1, $02, nRst, nC1, $0A, nRst
	dc.b $02, nE1, $0A, nRst, $02, nC1, $0A, nRst
	dc.b $02, nD1, $04, nRst, $08, nD1, $06, nRst
	dc.b nA0, $12, nRst, $02, nD1, nRst, $0A, nD1
	dc.b $02, nRst, nA0, $0A, nRst, $02, nD1, $0A
	dc.b nRst, $02, nA1, $0A, nRst, $02, nG1, $04
	dc.b nRst, $08, nG1, nG1, $02, nRst, $0A, nD2
	dc.b nRst, $02, nC2, nRst, $0A, nC2, nRst, $02
	dc.b nC2, nRst, nC2, $0A, nRst, $02, nG1, $0A
	dc.b nRst, $02, nF1, $08
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF2, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $02, nRst, $0E, nF1, $08
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF2, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $02, nRst, $0A, nF1, $04
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF2, $0A, nRst, $02
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $0A, nRst, $02, nBb0, $08
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nBb1, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $02, nRst, $0E, nBb0, $08
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nBb1, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $02, nRst, $0A, nBb0, $04
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nBb1, $0A, nRst, $02, nBb1, $0A, nRst, $02
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $08
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF2, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $02, nRst, $0A
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF2, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $04, nRst, $08, nF1, $04, nRst, $08
	dc.b nF1, $04
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF2, $0A, nRst, $02
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $0A, nRst, $02, nF1, $08
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nBb1, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $02, nRst, $0A, nF1, $04
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nAb1, $08
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $02, nRst, $0A, nF1, $02, nRst, nEb1
	dc.b $0A, nRst, $02, nBb1, $0A, nRst, $02, nEb1
	dc.b $0A, nRst, $02, nF1, $08
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF2, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $02, nRst, $0E, nF1, $08
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF2, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $02, nRst, $0A, nF1, $04
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF2, $0A, nRst, $02
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $0A, nRst, $02, nBb0, $08
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nBb1, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $02, nRst, $0E, nBb0, $08
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nBb1, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $02, nRst, $0A, nBb0, $04
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nBb1, $0A, nRst, $02, nBb1, $0A, nRst, $02
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $08
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF2, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $02, nRst, $0A
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF2, $0C
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $04, nRst, $08, nF1, $04, nRst, $08
	dc.b nF1, $04
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF2, $0A, nRst, $02
	sPatFM		$22
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, $0A, nRst, $02
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nCs2, $14, nB1, $10, nCs2, $14, nB1, $04
	dc.b nCs2, nRst, $20
	sJump		CNZ1_FM4
	dc.b $80, $0C, $F2	; Unused

CNZ1_FM5:
	dc.b nRst, $02
	sPatFM		$06
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	ssDetune	$01

CNZ1_Jump4:
	dc.b nC4, $0C, nBb3, $02, nA3, nG3, nF3, nE3
	dc.b nD3, nC3, nBb2, nA2, nG2, nC4, $0C, nC4
	dc.b $04, nRst, $30, nBb3, $08, nBb3, $04, nRst
	dc.b $08, nBb3, $04, nRst, $08, nBb3, $04, nRst
	dc.b $08, nBb3, $04, nBb3, $0C, nA3, nRst, $08
	dc.b nA3, $04, nBb3, $0C, nC4, nBb3, $02, nA3
	dc.b nG3, nF3, nE3, nD3, nC3, nBb2, nA2, nG2
	dc.b nC4, $0C, nC4, $04, nRst, $30, nBb3, $08
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nBb3, $0C
	dc.b nA3, nE4, $18, nC4, nRst, $2C, nE4, $04
	dc.b nD4, nRst, $08, nC4, $04, nRst, $08, nBb3
	dc.b $18, nBb3, nBb3, $04, nRst, $08, nA3, $04
	dc.b nRst, $08, nA3, $04, nRst, $08, nA3, nG3
	dc.b $1C, nRst, $2C, nE4, $04, nD4, nRst, $08
	dc.b nC4, $04, nRst, $08, nBb3, $18, nBb3, nBb3
	dc.b $08, nRst, $04, nA3, $08, nRst, $04, nE4
	dc.b $18, nC4, nRst, $2C, nE4, $04, nD4, nRst
	dc.b $08, nC4, $04, nRst, $08, nBb3, $18, nBb3
	dc.b nBb3, $04, nRst, $08, nA3, $04, nRst, $08
	dc.b nA3, $04, nRst, $08, nA3, nG3, $1C, nRst
	dc.b $2C, nE4, $04, nD4, nRst, $08, nC4, $04
	dc.b nRst, $08, nG3, $14, nA3, $04, nRst, $08
	dc.b nA3, $0C, nA3, $04, nBb3, nRst, $08, nBb3
	dc.b $04, nRst, $08, nC4, $04, nRst, $08
	sPatFM		$12
	ssDetune	$FF
	ssModZ80	$0F, $01, $07, $06
	saVolFM		$04
	dc.b nC4, nD4, $04, nF4, $50, nC4, $04, nB3
	dc.b $08, nC4, $04, nC4, $2C, nRst, $28, nD4
	dc.b $08, nE4, $04, nF4, $18, nD4, $14, nF4
	dc.b $04, nRst, $08, nD4, $0C, nD4, $04, nC4
	dc.b $08, nD4, $04, nC4, $08, nD4, $04, nE4
	dc.b $18, nE4, $14, nD4, $04, nRst, $24, nD4
	dc.b $08, nE4, $04, nF4, $50, nC4, $04, nB3
	dc.b $08, nC4, $04, nC4, $2C, nRst, $28, nD4
	dc.b $08, nE4, $04, nF4, $18, nD4, $14, nF4
	dc.b $04, nRst, $08, nD4, $0C, nD4, $04, nC4
	dc.b $08, nD4, $04, nE4, $0C, nF4, $18, nF4
	dc.b $14, nE4, $04, nRst, $38
	sPatFM		$05
	ssDetune	$03
	ssModZ80	$14, $01, $07, $06
	saVolFM		$08
	saVolFM		$FC
	dc.b nE4, $04, nF4, $08, nF4, $04, nF4, $08
	dc.b nF4, $04, nE4, $08, nF4, $04, nC4, $24
	dc.b nRst, $0C, nC4, $08, nD4, $04, nEb4, $08
	dc.b nEb4, $04, nEb4, $08, nEb4, $04, nD4, $08
	dc.b nEb4, $04, nBb3, $24, nRst, $0C, nF3, $08
	dc.b nBb3, $04, nD4, nRst, $08, nC4, $04, nRst
	dc.b $08, nBb3, nRst, $04, nBb3, nRst, nA3, $18
	dc.b nEb3, $04, nF3, $08, nAb3, $04, nBb3, $08
	dc.b nAb3, $04, nBb3, $08, nBb3, $04, nBb3, $08
	dc.b nAb3, $0C, nA3, $04, nRst, $0C, nRst, $08
	dc.b nD4, $04, nRst, $08, nBb3, $04, nD4, $0C
	dc.b nG4, nF4, $08, nF4, $04, nF4, $08, nF4
	dc.b $04, nE4, $08, nF4, $04, nC4, $24, nRst
	dc.b $0C, nC4, $08, nD4, $04, nEb4, $08, nEb4
	dc.b $04, nEb4, $08, nEb4, $04, nD4, $08, nEb4
	dc.b $04, nBb3, $24, nRst, $0C, nF3, $08, nBb3
	dc.b $04, nD4, nRst, $08, nC4, $04, nRst, $08
	dc.b nBb3, nRst, $04, nBb3, nRst, nA3, $18, nRst
	dc.b $0C, nEb4, $04, nF4, $08, nAb4, $04, nG4
	dc.b $08, nG4, $0C, nG4, $04, nG4, nRst, $08
	dc.b nG4, nG4, $0C, nG4, $04, nG4, nRst, $10
	dc.b nA3, $04
	saVolFM		$F8
	sJump		CNZ1_Jump4
	dc.b $AF, $0C, $F2	; Unused

CNZ1_PSG1:
	sVolEnvPSG	v0A

CNZ1_Jump5:
	dc.b nC4, $14, nC4, $04, nRst, $08, nC4, $0C
	dc.b nC4, $04, nRst, $18, nEb4, $02, nE4, $06
	dc.b nC4, $04, nRst, $0C, nBb3, $08, nBb3, $04
	dc.b nRst, $08, nBb3, $04, nRst, $08, nBb3, $04
	dc.b nRst, $08, nBb3, $04, nBb3, $0C, nA3, nRst
	dc.b $08, nA3, $02, nA3, nBb3, $0C, nC4, $14
	dc.b nC4, $04, nRst, $08, nC4, $0C, nC4, $04
	dc.b nRst, $18, nEb4, $02, nE4, $06, nC4, $04
	dc.b nRst, $0C, nBb3, $08, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nBb3, $0C, nA3, nRst, $08, nA3
	dc.b $02, nA3, nBb3, $0C
	saTranspose	$F4
	dc.b nRst, $18, nC4, $02, nRst, $0A, nG3, $02
	dc.b nRst, $06, nC4, $02, nRst, $0A, nC4, $04
	dc.b nC5, $12, nRst, $3E, nF4, $02, nRst, nBb4
	dc.b nRst, $0A, nA4, $02, nRst, $0A, nA4, $02
	dc.b nRst, $0A, nA4, $02, nRst, $06, nG4, $16
	dc.b nRst, $06, nC4, $02, nRst, $0A, nG3, $02
	dc.b nRst, $06, nC4, $02, nRst, $0A, nC4, $04
	dc.b nC5, $12, nRst, $3E, nF4, $02, nRst, nBb4
	dc.b nRst, $0A, nA4, $02, nRst, $16, nBb4, $02
	dc.b nRst, $0A, nC5, $02, nRst, $16, nC4, $02
	dc.b nRst, $0A, nG3, $02, nRst, $06, nC4, $02
	dc.b nRst, $0A, nC4, $04, nC5, $12, nRst, $3E
	dc.b nF4, $02, nRst, nBb4, nRst, $0A, nA4, $02
	dc.b nRst, $0A, nA4, $02, nRst, $0A, nA4, $02
	dc.b nRst, $06, nG4, $16, nRst, $06, nC4, $02
	dc.b nRst, $0A, nG3, $02, nRst, $06, nC4, $02
	dc.b nRst, $0A, nC4, $04, nC5, $12, nRst, $06
	dc.b nC4, $02, nRst, $0A, nG3, $06, nRst, $02
	dc.b nG3, nRst, $0A, nA3, $02, nRst, $0A, nA3
	dc.b $02, nRst, $0A, nA3, $02, nRst, nBb3, nRst
	dc.b $0A, nBb3, $02, nRst, $0A, nC4, $04, nRst
	dc.b $20, nC5, $02, nRst, $06, nC5, $02, nRst
	dc.b nB4, $0A, nRst, $02, nB4, $04, nRst, nC5
	dc.b $02, nRst, $3E, nG4, $02, nRst, $06, nG4
	dc.b $02, nRst, nE4, $0A, nRst, $02, nE4, $04
	dc.b nRst, nG4, $02, nRst, $3E, nA4, $02, nRst
	dc.b $06, nA4, $02, nRst, nF4, $0A, nRst, $02
	dc.b nF4, $04, nRst, nA4, $02, nRst, $32, nG4
	dc.b $02, nRst, $0A, nC5, $02, nRst, $0A, nD5
	dc.b $02, nRst, $0A, nC5, $02, nRst, $06, nB4
	dc.b $02, nRst, $3E, nC5, $02, nRst, $06, nC5
	dc.b $02, nRst, nB4, $0A, nRst, $02, nB4, $04
	dc.b nRst, nC5, $02, nRst, $3E, nG4, $02, nRst
	dc.b $06, nG4, $02, nRst, nE4, $0A, nRst, $02
	dc.b nE4, $04, nRst, nG4, $02, nRst, $3E, nA4
	dc.b $02, nRst, $06, nA4, $02, nRst, nF4, $0A
	dc.b nRst, $02, nF4, $04, nRst, nA4, $02, nRst
	dc.b $0A, nF3, $02, nRst, $0E, nFs3, $02, nRst
	dc.b $0A, nA3, $02, nRst, $0A, nG3, $02, nRst
	dc.b $0A, nG3, $02, nRst, $06, nG4, $02, nRst
	dc.b $0A, nG3, $02, nRst, nG3, $06, nRst, $02
	dc.b nC4, nRst, $0A, nE4, $0E, nRst, $02, nF4
	dc.b $0A, nRst, $02, nG4, $0A, nRst, $02, nC4
	dc.b nRst, $06, nC4, $02, nRst, nC4, nRst, $06
	dc.b nC5, $02, nRst, $0A, nC4, $02, nRst, nC5
	dc.b nRst, $06, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, $0A, nC4, $02, nRst, nC5, $08, nC4
	dc.b $02, nRst, nC5, $08, nRst, $04, nBb3, $02
	dc.b nRst, $06, nBb3, $02, nRst, nBb3, nRst, $06
	dc.b nBb4, $02, nRst, $0A, nBb3, $02, nRst, nBb4
	dc.b nRst, $06, nBb3, $02, nRst, $0A, nBb3, $02
	dc.b nRst, $0A, nBb3, $02, nRst, nBb4, $08, nBb3
	dc.b $02, nRst, nBb4, $08, nRst, $04, nBb3, $02
	dc.b nRst, $06, nBb3, $02, nRst, nBb3, nRst, $06
	dc.b nBb4, $02, nRst, $0A, nBb3, $02, nRst, nBb4
	dc.b $06, nRst, $02, nA4, nRst, $0A, nF3, $02
	dc.b nRst, $0A, nF3, $02, nRst, nF4, $08, nF3
	dc.b $02, nRst, nF4, $08, nRst, $3C, nD4, $02
	dc.b nRst, $0A, nBb3, $02, nRst, nD4, $06, nRst
	dc.b nG4, nRst, nC4, $02, nRst, $06, nC4, $02
	dc.b nRst, nC4, nRst, $06, nC5, $02, nRst, $0A
	dc.b nC4, $02, nRst, nC5, nRst, $06, nC4, $02
	dc.b nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, nC5, $08, nC4, $02, nRst, nC5, $08
	dc.b nRst, $04, nBb3, $02, nRst, $06, nBb3, $02
	dc.b nRst, nBb3, nRst, $06, nBb4, $02, nRst, $0A
	dc.b nBb3, $02, nRst, nBb4, nRst, $06, nBb3, $02
	dc.b nRst, $0A, nBb3, $02, nRst, $0A, nBb3, $02
	dc.b nRst, nBb4, $08, nBb3, $02, nRst, nBb4, $08
	dc.b nRst, $04, nBb3, $02, nRst, $06, nBb3, $02
	dc.b nRst, nBb3, nRst, $06, nBb4, $02, nRst, $0A
	dc.b nBb3, $02, nRst, nBb4, $06, nRst, $02, nA4
	dc.b nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, nF4, $08, nF3, $02, nRst, nF4, $08
	dc.b nRst, $04, nB3, $02, nRst, $06, nB3, $02
	dc.b nRst, nB4, nRst, $06, nB3, $02, nRst, nB3
	dc.b nRst, $06, nB4, $02, nRst, nB3, nRst, $06
	dc.b nB3, $02, nRst, nB4, nRst, $06, nB3, $02
	dc.b nRst, nB3, nRst, $22
	saTranspose	$0C
	sJump		CNZ1_Jump5
	dc.b $F2	; Unused

CNZ1_PSG2:
	sVolEnvPSG	v0A
	ssDetune	$FF
	dc.b nRst, $01

CNZ1_Jump6:
	dc.b nC4, $14, nC4, $04, nRst, $08, nC4, $0C
	dc.b nC4, $04, nRst, $18, nEb4, $02, nE4, $06
	dc.b nC4, $04, nRst, $0C, nBb3, $08, nBb3, $04
	dc.b nRst, $08, nBb3, $04, nRst, $08, nBb3, $04
	dc.b nRst, $08, nBb3, $04, nBb3, $0C, nA3, nRst
	dc.b $08, nA3, $02, nA3, nBb3, $0C, nC4, $14
	dc.b nC4, $04, nRst, $08, nC4, $0C, nC4, $04
	dc.b nRst, $18, nEb4, $02, nE4, $06, nC4, $04
	dc.b nRst, $0C, nBb3, $08, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nRst, $08, nBb3, $04, nRst, $08
	dc.b nBb3, $04, nBb3, $0C, nA3, nRst, $08, nA3
	dc.b $02, nA3, nBb3, $0C
	saTranspose	$F4
	dc.b nRst, $18, nC4, $02, nRst, $0A, nG3, $02
	dc.b nRst, $06, nC4, $02, nRst, $0A, nC4, $04
	dc.b nC5, $12, nRst, $3E, nF4, $02, nRst, nBb4
	dc.b nRst, $0A, nA4, $02, nRst, $0A, nA4, $02
	dc.b nRst, $0A, nA4, $02, nRst, $06, nG4, $16
	dc.b nRst, $06, nC4, $02, nRst, $0A, nG3, $02
	dc.b nRst, $06, nC4, $02, nRst, $0A, nC4, $04
	dc.b nC5, $12, nRst, $3E, nF4, $02, nRst, nBb4
	dc.b nRst, $0A, nA4, $02, nRst, $16, nBb4, $02
	dc.b nRst, $0A, nC5, $02, nRst, $16, nC4, $02
	dc.b nRst, $0A, nG3, $02, nRst, $06, nC4, $02
	dc.b nRst, $0A, nC4, $04, nC5, $12, nRst, $3E
	dc.b nF4, $02, nRst, nBb4, nRst, $0A, nA4, $02
	dc.b nRst, $0A, nA4, $02, nRst, $0A, nA4, $02
	dc.b nRst, $06, nG4, $16, nRst, $06, nC4, $02
	dc.b nRst, $0A, nG3, $02, nRst, $06, nC4, $02
	dc.b nRst, $0A, nC4, $04, nC5, $12, nRst, $06
	dc.b nC4, $02, nRst, $0A, nG3, $06, nRst, $02
	dc.b nG3, nRst, $0A, nA3, $02, nRst, $0A, nA3
	dc.b $02, nRst, $0A, nA3, $02, nRst, nBb3, nRst
	dc.b $0A, nBb3, $02, nRst, $0A, nC4, $04, nRst
	dc.b $20, nC5, $02, nRst, $06, nC5, $02, nRst
	dc.b nB4, $0A, nRst, $02, nB4, $04, nRst, nC5
	dc.b $02, nRst, $3E, nG4, $02, nRst, $06, nG4
	dc.b $02, nRst, nE4, $0A, nRst, $02, nE4, $04
	dc.b nRst, nG4, $02, nRst, $3E, nA4, $02, nRst
	dc.b $06, nA4, $02, nRst, nF4, $0A, nRst, $02
	dc.b nF4, $04, nRst, nA4, $02, nRst, $32, nG4
	dc.b $02, nRst, $0A, nC5, $02, nRst, $0A, nD5
	dc.b $02, nRst, $0A, nC5, $02, nRst, $06, nB4
	dc.b $02, nRst, $3E, nC5, $02, nRst, $06, nC5
	dc.b $02, nRst, nB4, $0A, nRst, $02, nB4, $04
	dc.b nRst, nC5, $02, nRst, $3E, nG4, $02, nRst
	dc.b $06, nG4, $02, nRst, nE4, $0A, nRst, $02
	dc.b nE4, $04, nRst, nG4, $02, nRst, $3E, nA4
	dc.b $02, nRst, $06, nA4, $02, nRst, nF4, $0A
	dc.b nRst, $02, nF4, $04, nRst, nA4, $02, nRst
	dc.b $0A, nF3, $02, nRst, $0E, nFs3, $02, nRst
	dc.b $0A, nA3, $02, nRst, $0A, nG3, $02, nRst
	dc.b $0A, nG3, $02, nRst, $06, nG4, $02, nRst
	dc.b $0A, nG3, $02, nRst, nG3, $06, nRst, $02
	dc.b nC4, nRst, $0A, nE4, $0E, nRst, $02, nF4
	dc.b $0A, nRst, $02, nG4, $0A, nRst, $02, nC4
	dc.b nRst, $06, nC4, $02, nRst, nC4, nRst, $06
	dc.b nC5, $02, nRst, $0A, nC4, $02, nRst, nC5
	dc.b nRst, $06, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, $0A, nC4, $02, nRst, nC5, $08, nC4
	dc.b $02, nRst, nC5, $08, nRst, $04, nBb3, $02
	dc.b nRst, $06, nBb3, $02, nRst, nBb3, nRst, $06
	dc.b nBb4, $02, nRst, $0A, nBb3, $02, nRst, nBb4
	dc.b nRst, $06, nBb3, $02, nRst, $0A, nBb3, $02
	dc.b nRst, $0A, nBb3, $02, nRst, nBb4, $08, nBb3
	dc.b $02, nRst, nBb4, $08, nRst, $04, nBb3, $02
	dc.b nRst, $06, nBb3, $02, nRst, nBb3, nRst, $06
	dc.b nBb4, $02, nRst, $0A, nBb3, $02, nRst, nBb4
	dc.b $06, nRst, $02, nA4, nRst, $0A, nF3, $02
	dc.b nRst, $0A, nF3, $02, nRst, nF4, $08, nF3
	dc.b $02, nRst, nF4, $08, nRst, $3C, nD4, $02
	dc.b nRst, $0A, nBb3, $02, nRst, nD4, $06, nRst
	dc.b nG4, nRst, nC4, $02, nRst, $06, nC4, $02
	dc.b nRst, nC4, nRst, $06, nC5, $02, nRst, $0A
	dc.b nC4, $02, nRst, nC5, nRst, $06, nC4, $02
	dc.b nRst, $0A, nC4, $02, nRst, $0A, nC4, $02
	dc.b nRst, nC5, $08, nC4, $02, nRst, nC5, $08
	dc.b nRst, $04, nBb3, $02, nRst, $06, nBb3, $02
	dc.b nRst, nBb3, nRst, $06, nBb4, $02, nRst, $0A
	dc.b nBb3, $02, nRst, nBb4, nRst, $06, nBb3, $02
	dc.b nRst, $0A, nBb3, $02, nRst, $0A, nBb3, $02
	dc.b nRst, nBb4, $08, nBb3, $02, nRst, nBb4, $08
	dc.b nRst, $04, nBb3, $02, nRst, $06, nBb3, $02
	dc.b nRst, nBb3, nRst, $06, nBb4, $02, nRst, $0A
	dc.b nBb3, $02, nRst, nBb4, $06, nRst, $02, nA4
	dc.b nRst, $0A, nF3, $02, nRst, $0A, nF3, $02
	dc.b nRst, nF4, $08, nF3, $02, nRst, nF4, $08
	dc.b nRst, $04, nB3, $02, nRst, $06, nB3, $02
	dc.b nRst, nB4, nRst, $06, nB3, $02, nRst, nB3
	dc.b nRst, $06, nB4, $02, nRst, nB3, nRst, $06
	dc.b nB3, $02, nRst, nB4, nRst, $06, nB3, $02
	dc.b nRst, nB3, nRst, $22
	saTranspose	$0C
	sJump		CNZ1_Jump6
	dc.b $F2	; Unused

CNZ1_PSG3:
	sVolEnvPSG	v02
	sNoisePSG	$E7

CNZ1_Loop1:
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v08
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $28
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v08
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $34
	sLoop		$01, $02, CNZ1_Loop1

CNZ1_Loop2:
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sLoop		$01, $07, CNZ1_Loop2
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $3C

CNZ1_Loop3:
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sLoop		$01, $03, CNZ1_Loop3
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $34

CNZ1_Loop4:
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $0C
	sLoop		$01, $03, CNZ1_Loop4
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $34

CNZ1_Loop5:
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v08
	dc.b nBb6, $0C
	sLoop		$01, $1E, CNZ1_Loop5
	sVolEnvPSG	v01
	dc.b nBb6, $08
	sVolEnvPSG	v01
	dc.b nBb6, $04
	sVolEnvPSG	v08
	dc.b nBb6, $24
	sJump		CNZ1_PSG3
	dc.b $F2	; Unused

CNZ1_Patches:

	; Patch $00
	; $3C
	; $01, $00, $00, $00,	$1F, $1F, $15, $1F
	; $11, $0D, $12, $05,	$07, $04, $09, $02
	; $55, $3A, $25, $1A,	$1A, $80, $07, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $15, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$11, $12, $0D, $05
	spSustainLv	$05, $02, $03, $01
	spDecayRt	$07, $09, $04, $02
	spReleaseRt	$05, $05, $0A, $0A
	spTotalLv	$1A, $07, $00, $00

	; Patch $01
	; $3D
	; $01, $01, $01, $01,	$94, $19, $19, $19
	; $0F, $0D, $0D, $0D,	$07, $04, $04, $04
	; $25, $1A, $1A, $1A,	$15, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$02, $00, $00, $00
	spAttackRt	$14, $19, $19, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $0D, $0D, $0D
	spSustainLv	$02, $01, $01, $01
	spDecayRt	$07, $04, $04, $04
	spReleaseRt	$05, $0A, $0A, $0A
	spTotalLv	$15, $00, $00, $00

	; Patch $02
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

	; Patch $03
	; $34
	; $70, $72, $31, $31,	$1F, $1F, $1F, $1F
	; $10, $06, $06, $06,	$01, $06, $06, $06
	; $35, $1A, $15, $1A,	$10, $80, $18, $80
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$07, $03, $07, $03
	spMultiple	$00, $01, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$10, $06, $06, $06
	spSustainLv	$03, $01, $01, $01
	spDecayRt	$01, $06, $06, $06
	spReleaseRt	$05, $05, $0A, $0A
	spTotalLv	$10, $18, $00, $00

	; Patch $04
	; $3E
	; $77, $71, $32, $31,	$1F, $1F, $1F, $1F
	; $0D, $06, $00, $00,	$08, $06, $00, $00
	; $15, $0A, $0A, $0A,	$1B, $80, $80, $80
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$07, $03, $07, $03
	spMultiple	$07, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $00, $06, $00
	spSustainLv	$01, $00, $00, $00
	spDecayRt	$08, $00, $06, $00
	spReleaseRt	$05, $0A, $0A, $0A
	spTotalLv	$1B, $00, $00, $00

	; Patch $05
	; $34
	; $33, $41, $7E, $74,	$5B, $9F, $5F, $1F
	; $04, $07, $07, $08,	$00, $00, $00, $00
	; $FF, $FF, $EF, $FF,	$23, $80, $29, $87
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$03, $07, $04, $07
	spMultiple	$03, $0E, $01, $04
	spRateScale	$01, $01, $02, $00
	spAttackRt	$1B, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $07, $07, $08
	spSustainLv	$0F, $0E, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $29, $00, $07

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

	; Patch $07
	; $3C
	; $32, $32, $71, $42,	$1F, $18, $1F, $1E
	; $07, $1F, $07, $1F,	$00, $00, $00, $00
	; $1F, $0F, $1F, $0F,	$1E, $80, $0C, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$03, $07, $03, $04
	spMultiple	$02, $01, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $18, $1E
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $07, $1F, $1F
	spSustainLv	$01, $01, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $0C, $00, $00

	; Patch $08
	; $3C
	; $71, $72, $3F, $34,	$8D, $52, $9F, $1F
	; $09, $00, $00, $0D,	$00, $00, $00, $00
	; $23, $08, $02, $F7,	$15, $80, $1D, $87
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$07, $03, $07, $03
	spMultiple	$01, $0F, $02, $04
	spRateScale	$02, $02, $01, $00
	spAttackRt	$0D, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$09, $00, $00, $0D
	spSustainLv	$02, $00, $00, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$03, $02, $08, $07
	spTotalLv	$15, $1D, $00, $07

	; Patch $09
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

	; Patch $0A
	; $3A
	; $31, $53, $31, $41,	$8D, $4F, $15, $52
	; $06, $08, $07, $04,	$02, $00, $00, $00
	; $1F, $1F, $2F, $2F,	$19, $20, $2A, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $03, $05, $04
	spMultiple	$01, $01, $03, $01
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0D, $15, $0F, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $07, $08, $04
	spSustainLv	$01, $02, $01, $02
	spDecayRt	$02, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$19, $2A, $20, $00

	; Patch $0B
	; $3C
	; $36, $31, $76, $71,	$94, $9F, $96, $9F
	; $12, $00, $14, $0F,	$04, $0A, $04, $0D
	; $2F, $0F, $4F, $2F,	$33, $80, $1A, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$03, $07, $03, $07
	spMultiple	$06, $06, $01, $01
	spRateScale	$02, $02, $02, $02
	spAttackRt	$14, $16, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$12, $14, $00, $0F
	spSustainLv	$02, $04, $00, $02
	spDecayRt	$04, $04, $0A, $0D
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$33, $1A, $00, $00

	; Patch $0C
	; $34
	; $33, $41, $7E, $74,	$5B, $9F, $5F, $1F
	; $04, $07, $07, $08,	$00, $00, $00, $00
	; $FF, $FF, $EF, $FF,	$23, $90, $29, $97
	spAlgorithm	$04
	spFeedback	$06
	spDetune	$03, $07, $04, $07
	spMultiple	$03, $0E, $01, $04
	spRateScale	$01, $01, $02, $00
	spAttackRt	$1B, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$04, $07, $07, $08
	spSustainLv	$0F, $0E, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $29, $10, $17

	; Patch $0D
	; $38
	; $63, $31, $31, $31,	$10, $13, $1A, $1B
	; $0E, $00, $00, $00,	$00, $00, $00, $00
	; $3F, $0F, $0F, $0F,	$1A, $19, $1A, $80
	spAlgorithm	$00
	spFeedback	$07
	spDetune	$06, $03, $03, $03
	spMultiple	$03, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $1A, $13, $1B
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $00, $00, $00
	spSustainLv	$03, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $1A, $19, $00

	; Patch $0E
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

	; Patch $0F
	; $04
	; $71, $41, $31, $31,	$12, $12, $12, $12
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$23, $80, $23, $80
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$07, $03, $04, $03
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $12, $12, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$23, $23, $00, $00

	; Patch $10
	; $14
	; $75, $72, $35, $32,	$9F, $9F, $9F, $9F
	; $05, $05, $00, $0A,	$05, $05, $07, $05
	; $2F, $FF, $0F, $2F,	$1E, $80, $14, $80
	spAlgorithm	$04
	spFeedback	$02
	spDetune	$07, $03, $07, $03
	spMultiple	$05, $05, $02, $02
	spRateScale	$02, $02, $02, $02
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $00, $05, $0A
	spSustainLv	$02, $00, $0F, $02
	spDecayRt	$05, $07, $05, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $14, $00, $00

	; Patch $11
	; $3D
	; $01, $00, $01, $02,	$12, $1F, $1F, $14
	; $07, $02, $02, $0A,	$05, $05, $05, $05
	; $2F, $2F, $2F, $AF,	$1C, $80, $82, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $00, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$12, $1F, $1F, $14
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$07, $02, $02, $0A
	spSustainLv	$02, $02, $02, $0A
	spDecayRt	$05, $05, $05, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1C, $02, $00, $00

	; Patch $12
	; $1C
	; $73, $72, $33, $32,	$94, $99, $94, $99
	; $08, $0A, $08, $0A,	$00, $05, $00, $05
	; $3F, $4F, $3F, $4F,	$1E, $80, $19, $80
	spAlgorithm	$04
	spFeedback	$03
	spDetune	$07, $03, $07, $03
	spMultiple	$03, $03, $02, $02
	spRateScale	$02, $02, $02, $02
	spAttackRt	$14, $14, $19, $19
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$08, $08, $0A, $0A
	spSustainLv	$03, $03, $04, $04
	spDecayRt	$00, $00, $05, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $19, $00, $00

	; Patch $13
	; $31
	; $33, $01, $00, $00,	$9F, $1F, $1F, $1F
	; $0D, $0A, $0A, $0A,	$0A, $07, $07, $07
	; $FF, $AF, $AF, $AF,	$1E, $1E, $1E, $80
	spAlgorithm	$01
	spFeedback	$06
	spDetune	$03, $00, $00, $00
	spMultiple	$03, $00, $01, $00
	spRateScale	$02, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $0A, $0A, $0A
	spSustainLv	$0F, $0A, $0A, $0A
	spDecayRt	$0A, $07, $07, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $1E, $1E, $00

	; Patch $14
	; $3A
	; $70, $76, $30, $71,	$1F, $95, $1F, $1F
	; $0E, $0F, $05, $0C,	$07, $06, $06, $07
	; $2F, $4F, $1F, $5F,	$21, $12, $28, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$07, $03, $07, $07
	spMultiple	$00, $00, $06, $01
	spRateScale	$00, $00, $02, $00
	spAttackRt	$1F, $1F, $15, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $05, $0F, $0C
	spSustainLv	$02, $01, $04, $05
	spDecayRt	$07, $06, $06, $07
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$21, $28, $12, $00

	; Patch $15
	; $28
	; $71, $00, $30, $01,	$1F, $1F, $1D, $1F
	; $13, $13, $06, $05,	$03, $03, $02, $05
	; $4F, $4F, $2F, $3F,	$0E, $14, $1E, $80
	spAlgorithm	$00
	spFeedback	$05
	spDetune	$07, $03, $00, $00
	spMultiple	$01, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1D, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$13, $06, $13, $05
	spSustainLv	$04, $02, $04, $03
	spDecayRt	$03, $02, $03, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0E, $1E, $14, $00

	; Patch $16
	; $3E
	; $38, $01, $7A, $34,	$59, $D9, $5F, $9C
	; $0F, $04, $0F, $0A,	$02, $02, $05, $05
	; $AF, $AF, $66, $66,	$28, $80, $A3, $80
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$03, $07, $00, $03
	spMultiple	$08, $0A, $01, $04
	spRateScale	$01, $01, $03, $02
	spAttackRt	$19, $1F, $19, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $0F, $04, $0A
	spSustainLv	$0A, $06, $0A, $06
	spDecayRt	$02, $05, $02, $05
	spReleaseRt	$0F, $06, $0F, $06
	spTotalLv	$28, $23, $00, $00

	; Patch $17
	; $39
	; $32, $31, $72, $71,	$1F, $1F, $1F, $1F
	; $00, $00, $00, $00,	$00, $00, $00, $00
	; $0F, $0F, $0F, $0F,	$1B, $32, $28, $80
	spAlgorithm	$01
	spFeedback	$07
	spDetune	$03, $07, $03, $07
	spMultiple	$02, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$00, $00, $00, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $28, $32, $00

	; Patch $18
	; $07
	; $34, $74, $32, $71,	$1F, $1F, $1F, $1F
	; $0A, $0A, $05, $03,	$00, $00, $00, $00
	; $3F, $3F, $2F, $2F,	$8A, $8A, $80, $80
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$03, $03, $07, $07
	spMultiple	$04, $02, $04, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $05, $0A, $03
	spSustainLv	$03, $02, $03, $02
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0A, $00, $0A, $00

	; Patch $19
	; $3A
	; $31, $37, $31, $31,	$8D, $8D, $8E, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $00
	; $1F, $FF, $1F, $0F,	$17, $28, $26, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $03, $03, $03
	spMultiple	$01, $01, $07, $01
	spRateScale	$02, $02, $02, $01
	spAttackRt	$0D, $0E, $0D, $13
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0E, $0E, $0E, $03
	spSustainLv	$01, $01, $0F, $00
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $26, $28, $00

	; Patch $1A
	; $3B
	; $3A, $31, $71, $74,	$DF, $1F, $1F, $DF
	; $00, $0A, $0A, $05,	$00, $05, $05, $03
	; $0F, $5F, $1F, $5F,	$32, $1E, $0F, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$03, $07, $03, $07
	spMultiple	$0A, $01, $01, $04
	spRateScale	$03, $00, $00, $03
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $0A, $0A, $05
	spSustainLv	$00, $01, $05, $05
	spDecayRt	$00, $05, $05, $03
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$32, $0F, $1E, $00

	; Patch $1B
	; $3A
	; $32, $56, $32, $42,	$8D, $4F, $15, $52
	; $06, $08, $07, $04,	$02, $00, $00, $00
	; $1F, $1F, $2F, $2F,	$19, $20, $2A, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$03, $03, $05, $04
	spMultiple	$02, $02, $06, $02
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0D, $15, $0F, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$06, $07, $08, $04
	spSustainLv	$01, $02, $01, $02
	spDecayRt	$02, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$19, $2A, $20, $00

	; Patch $1C
	; $2C
	; $71, $74, $32, $32,	$1F, $12, $1F, $12
	; $00, $0A, $00, $0A,	$00, $00, $00, $00
	; $0F, $1F, $0F, $1F,	$16, $80, $17, $80
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$07, $03, $07, $03
	spMultiple	$01, $02, $04, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $12, $12
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$00, $00, $0A, $0A
	spSustainLv	$00, $00, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$16, $17, $00, $00

	; Patch $1D
	; $3A
	; $01, $07, $01, $01,	$8E, $8E, $8D, $53
	; $0E, $0E, $0E, $03,	$00, $00, $00, $07
	; $1F, $FF, $1F, $0F,	$18, $28, $27, $8F
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
	spTotalLv	$18, $27, $28, $0F

	; Patch $1E
	; $36
	; $7A, $32, $51, $11,	$1F, $1F, $59, $1C
	; $0A, $0D, $06, $0A,	$07, $00, $02, $02
	; $AF, $5F, $5F, $5F,	$1E, $8B, $81, $80
	spAlgorithm	$06
	spFeedback	$06
	spDetune	$07, $05, $03, $01
	spMultiple	$0A, $01, $02, $01
	spRateScale	$00, $01, $00, $00
	spAttackRt	$1F, $19, $1F, $1C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $06, $0D, $0A
	spSustainLv	$0A, $05, $05, $05
	spDecayRt	$07, $02, $00, $02
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $01, $0B, $00

	; Patch $1F
	; $3C
	; $71, $72, $3F, $34,	$8D, $52, $9F, $1F
	; $09, $00, $00, $0D,	$00, $00, $00, $00
	; $23, $08, $02, $F7,	$15, $85, $1D, $8A
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$07, $03, $07, $03
	spMultiple	$01, $0F, $02, $04
	spRateScale	$02, $02, $01, $00
	spAttackRt	$0D, $1F, $12, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$09, $00, $00, $0D
	spSustainLv	$02, $00, $00, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$03, $02, $08, $07
	spTotalLv	$15, $1D, $05, $0A

	; Patch $20
	; $3E
	; $77, $71, $32, $31,	$1F, $1F, $1F, $1F
	; $0D, $06, $00, $00,	$08, $06, $00, $00
	; $15, $0A, $0A, $0A,	$1B, $8F, $8F, $8F
	spAlgorithm	$06
	spFeedback	$07
	spDetune	$07, $03, $07, $03
	spMultiple	$07, $02, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0D, $00, $06, $00
	spSustainLv	$01, $00, $00, $00
	spDecayRt	$08, $00, $06, $00
	spReleaseRt	$05, $0A, $0A, $0A
	spTotalLv	$1B, $0F, $0F, $0F

	; Patch $21
	; $07
	; $34, $74, $32, $71,	$1F, $1F, $1F, $1F
	; $0A, $0A, $05, $03,	$00, $00, $00, $00
	; $3F, $3F, $2F, $2F,	$8A, $8A, $8A, $8A
	spAlgorithm	$07
	spFeedback	$00
	spDetune	$03, $03, $07, $07
	spMultiple	$04, $02, $04, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0A, $05, $0A, $03
	spSustainLv	$03, $02, $03, $02
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$0A, $0A, $0A, $0A

	; Patch $22
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
