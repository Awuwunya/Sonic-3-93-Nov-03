DPZ_Header:
	sHeaderInit						; Z80 offset is $C988
	sHeaderPatch	DPZ_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $08
	sHeaderDAC	DPZ_DAC
	sHeaderFM	DPZ_FM1, $00, $10
	sHeaderFM	DPZ_FM2, $00, $10
	sHeaderFM	DPZ_FM3, $00, $10
	sHeaderFM	DPZ_FM4, $00, $10
	sHeaderFM	DPZ_FM5, $00, $10
	sHeaderPSG	DPZ_PSG1, $00, $02, $00, v00
	sHeaderPSG	DPZ_PSG2, $00, $02, $00, v00
	sHeaderPSG	DPZ_PSG3, $00, $02, $00, v00

DPZ_FM1:
	dc.b nRst, $30

DPZ_Jump1:
	dc.b nRst, $0C
	sPatFM		$00
	sPan		spCenter
	dc.b nE4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b nAb4, $0C, nB4, $06, nRst, nD5, $12, nCs5
	dc.b nB4, $03, nRst, $09, nA4, $12, nAb4, nE4
	dc.b $04, nRst, $08, nE4, $04, nRst, $08, nEb4
	dc.b $04, nRst, $08, nE4, $06, nFs4, nAb4, $0C
	dc.b nRst, nE4, $04, nRst, $02, nG4, $04, nRst
	dc.b $02, nAb4, $0C, nB4, nD5, $12, nCs5, nB4
	dc.b $04, nRst, $08, nA4, $12, nAb4, nA4, $04
	dc.b nRst, $08, nB4, $04, nRst, $08, nCs5, $04
	dc.b nRst, $08, nD5, $0C, nE5, $06, nRst, nA4
	dc.b nAb4, nA4, nAb4, nA4, nAb4, nA4, nAb4, nA4
	dc.b $0C, nAb4, $06, nA4, $0C, nAb4, $06, nA4
	dc.b $0C, nB4, $06, nBb4, nB4, nBb4, nB4, nBb4
	dc.b nB4, nBb4, nB4, nRst, nC5, nRst, nCs5, nRst
	dc.b nD5, nRst, nRst, $0C, nE4, $04, nRst, $02
	dc.b nG4, $04, nRst, $02, nAb4, $0C, nB4, nD5
	dc.b $12, nCs5, nA4, $0C, nAb4, $0F, nFs5, $03
	dc.b nAb5, $12, nE5, $30, sHold, $0C, nRst, $0C
	dc.b nE4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b nAb4, $0C, nB4, $06, nRst, nD5, $12, nCs5
	dc.b nB4, $04, nRst, $08, nA4, $12, nAb4, nE4
	dc.b $04, nRst, $08, nE4, $04, nRst, $08, nEb4
	dc.b $04, nRst, $08, nE4, $06, nFs4, nAb4, $0C
	dc.b nRst, nE4, $04, nRst, $02, nG4, $04, nRst
	dc.b $02, nAb4, $0C, nB4, nD5, $12, nCs5, nB4
	dc.b $04, nRst, $08, nA4, $12, nAb4, nA4, $04
	dc.b nRst, $08, nB4, $04, nRst, $08, nCs5, $04
	dc.b nRst, $08, nD5, $0C, nE5, nA4, $06, nAb4
	dc.b nA4, nAb4, nA4, nAb4, nA4, nAb4, nA4, $0C
	dc.b nAb4, $06, nA4, $0C, nAb4, $06, nA4, $0C
	dc.b nB4, $06, nBb4, nB4, nBb4, nB4, nBb4, nB4
	dc.b nBb4, nB4, nRst, nC5, nRst, nCs5, nRst, nD5
	dc.b nRst, nRst, $0C, nE4, $04, nRst, $02, nG4
	dc.b $04, nRst, $02, nAb4, $0C, nB4, nD5, $12
	dc.b nCs5, nA4, $0C, nAb4, $0F, nFs5, $03, nAb5
	dc.b $12, nE5, $30, sHold, $0C
	sPatFM		$01
	sPan		spLeft
	dc.b nCs5, $30, sHold, $30, nEb5, sHold, $30, $30
	dc.b sHold, $30, nE5, nE5, nE5, sHold, $30, nFs5
	dc.b sHold, $30, nE5, nFs5, nFs5, sHold, $30
	sPatFM		$00
	sPan		spCenter
	dc.b nAb5, $06, nA5, nRst, nAb5, nRst, nFs5, nRst
	dc.b nE5, nFs5, $18, nAb5, nEb5, $06, nE5, nRst
	dc.b nEb5, nRst, nB4, nCs5, nB4, $30, sHold, $06
	dc.b nAb5, nA5, nRst, nAb5, nRst, nFs5, nRst, nE5
	dc.b nFs5, $18, nAb5, nE5, $06, nFs5, nRst, nAb5
	dc.b nRst, nB5, nCs6, nB5, $30, sHold, $06, nAb5
	dc.b nA5, nRst, nAb5, nRst, nFs5, nRst, nE5, nFs5
	dc.b $18, nAb5, nEb5, $06, nE5, nRst, nEb5, nRst
	dc.b nB4, nCs5, nB4, $30, sHold, $06, nRst, $0C
	dc.b nB4, $06, nRst, nE5, $18, nEb5, nE5, nFs5
	dc.b $0C, nB4, nD5, nEb5, nFs5, nB5, $24
	sJump		DPZ_Jump1

DPZ_FM2:
	sPatFM		$02
	dc.b nRst, $30

DPZ_Jump2:
	sPatFM		$02
	dc.b nE2, $04, nRst, $08, nB2, $04, nRst, $08
	dc.b nE3, $0C, nB2, $04, nRst, $02, nD3, $04
	dc.b nRst, $08, nD3, $06, nCs3, $0C, nB2, nA2
	dc.b nE2, $04, nRst, $08, nE2, $04, nRst, $08
	dc.b nB2, $0C, nCs3, $06, nD3, nRst, nD3, nRst
	dc.b nCs3, $0C, nB2, $06, nA2, $0C, nE2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nE3, $0C
	dc.b nB2, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b nD3, $06, nCs3, $0C, nB2, nA2, nE2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nB2, $0C
	dc.b nCs3, $06, nD3, nRst, nD3, nRst, nCs3, $0C
	dc.b nB2, $06, nA2, $0C, nA2, $04, nRst, $08
	dc.b nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nA2, $04, nRst, $08, nB2, $04, nRst, $08
	dc.b nB2, $04, nRst, $08, nB2, $04, nRst, $08
	dc.b nB2, $04, nRst, $08, nB2, $04, nRst, $08
	dc.b nB2, $04, nRst, $08, nB2, $04, nRst, $08
	dc.b nB2, $04, nRst, $08, nE2, $04, nRst, $08
	dc.b nB2, $04, nRst, $08, nE3, $0C, nB2, $04
	dc.b nRst, $02, nD3, $04, nRst, $08, nD3, $06
	dc.b nCs3, $0C, nB2, nA2, nE2, $04, nRst, $08
	dc.b nE2, $04, nRst, $08, nB2, $0C, nCs3, $06
	dc.b nD3, nRst, nD3, nRst, nCs3, $0C, nB2, $06
	dc.b nA2, $0C, nE2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nE3, $0C, nB2, $04, nRst, $02
	dc.b nD3, $04, nRst, $08, nD3, $06, nCs3, $0C
	dc.b nB2, nA2, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nB2, $0C, nCs3, $06, nD3, nRst
	dc.b nD3, nRst, nCs3, $0C, nB2, $06, nA2, $0C
	dc.b nE2, $04, nRst, $08, nB2, $04, nRst, $08
	dc.b nE3, $0C, nB2, $04, nRst, $02, nD3, $04
	dc.b nRst, $08, nD3, $06, nCs3, $0C, nB2, nA2
	dc.b nE2, $04, nRst, $08, nE2, $04, nRst, $08
	dc.b nB2, $0C, nCs3, $06, nD3, nRst, nD3, nRst
	dc.b nCs3, $0C, nB2, $06, nA2, $0C, nA2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nE3, $0C
	dc.b nB2, $04, nRst, $02, nD3, $04, nRst, $08
	dc.b nD3, $06, nCs3, $0C, nB2, nA2, nE2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nB2, $0C
	dc.b nCs3, $06, nD3, nRst, nD3, nRst, nCs3, $0C
	dc.b nB2, $06, nA2, $0C, nA2, $04, nRst, $08
	dc.b nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nA2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nB2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b nFs2, $04, nRst, $08, nAb2, $04, nRst, $08
	dc.b nAb2, $04, nRst, $08, nAb2, $04, nRst, $08
	dc.b nAb2, $04, nRst, $08, nAb2, $04, nRst, $08
	dc.b nE2, $04, nRst, $08, nAb2, $04, nRst, $08
	dc.b nB2, $04, nRst, $08, nCs3, $04, nRst, $08
	dc.b nAb2, $04, nRst, $08, nCs3, $04, nRst, $08
	dc.b nEb3, $04, nRst, $08, nB2, $04, nRst, $08
	dc.b nEb3, $04, nRst, $08, nFs3, $04, nRst, $08
	dc.b nEb3, $0C, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nFs2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nCs3, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nEb3, $04
	dc.b nRst, $08, nCs3, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nCs3, $04, nRst, $08, nAb2, $04
	dc.b nRst, $08, nCs3, $04, nRst, $08, nEb3, $04
	dc.b nRst, $08, nD3, $04, nRst, $08, nFs3, $04
	dc.b nRst, $08, nA3, $04, nRst, $08, nD3, $04
	dc.b nRst, $08, nEb3, $04, nRst, $08, nEb3, $04
	dc.b nRst, $08, nFs3, $04, nRst, $08, nEb3, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nEb3, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nE2, $04, nRst, $08, nE2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08, nB2, $04, nRst, $08, nB2, $04
	dc.b nRst, $08
	sJump		DPZ_Jump2

DPZ_FM3:
	sPatFM		$00
	dc.b nRst, $30

DPZ_Jump3:
	sPatFM		$00
	dc.b nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, $0C, nAb4, $04, nRst, $02, nB4
	dc.b $04, nRst, $02, nE5, $0C, nFs5, $06, nRst
	dc.b nAb5, $12, nFs5, nE5, $04, nRst, $08, nCs5
	dc.b $12, nB4, nAb4, $04, nRst, $08, nAb4, $04
	dc.b nRst, $08, nFs4, $04, nRst, $08, nAb4, $06
	dc.b nA4, nB4, $0C, nRst, nAb4, $04, nRst, $02
	dc.b nB4, $04, nRst, $02, nE5, $0C, nFs5, $06
	dc.b nRst, nAb5, $12, nFs5, nE5, $04, nRst, $08
	dc.b nCs5, $12, nB4, nCs5, $04, nRst, $08, nEb5
	dc.b $04, nRst, $08, nE5, $04, nRst, $08, nFs5
	dc.b $0C, nA5, nD5, $06, nCs5, nD5, nCs5, nD5
	dc.b nCs5, nD5, nCs5, nD5, $0C, nCs5, $06, nD5
	dc.b $0C, nCs5, $06, nD5, $0C, nEb5, $06, nD5
	dc.b nEb5, nD5, nEb5, nD5, nEb5, nD5, nG5, nRst
	dc.b nFs5, nRst, nF5, nRst, nE5, nRst, nRst, $0C
	dc.b nAb4, $04, nRst, $02, nB4, $04, nRst, $02
	dc.b nE5, $0C, nFs5, $06, nRst, nAb5, $12, nFs5
	dc.b nE5, $04, nRst, $08, nB4, $0F, nA5, $03
	dc.b nB5, $12, nAb5, $30, sHold, $0C
	sPatFM		$03
	dc.b nA4, $24, nB4, $18, nCs5, $0C, nE5, $18
	dc.b nEb5, $24, nB4, $30, sHold, $0C, nAb4, $12
	dc.b nC5, nEb5, $0C, nFs5, $18, nE5, $0C, nCs5
	dc.b nRst, $30, nRst, nA4, $24, $18, nB4, $0C
	dc.b nCs5, $18, nEb5, $24, nB4, $18, nCs5, $0C
	dc.b nEb5, $18, nE5, $0C, nEb5, nE5, nFs5, nA5
	dc.b nAb5, nFs5, nE5
	sPatFM		$00
	dc.b $0C, nAb4, $06, nA4, nB4, $0C, nCs5, nB4
	dc.b $06, nCs5, nEb5, nE5, nFs5, nAb5, nA5, $0C
	sPatFM		$04
	sPan		spRight
	dc.b nE3, $06, nE4, nE5, nE4, nE5, nE3, nE4
	dc.b nEb5, nE5, nE3, nE4, nE5, nE3, nE4, nEb5
	dc.b nE5, nE3, nE4, nE5, nE4, nE5, nE3, nEb5
	dc.b nE4, nE5, nEb5, nE4, nE5, nE3, nE4, nEb5
	dc.b nE5, nE3, nE4, nE5, nE4, nE5, nE3, nE4
	dc.b nEb5, nE5, nE3, nE4, nE5, nE3, nE4, nEb5
	dc.b nE5, nE3, nE4, nE5, nE4, nE5, nE3, nEb5
	dc.b nE4, nE5, nEb5, nE4, nE5, nE3, nE4, nEb5
	dc.b nE5, nE3, nE4, nE5, nE4, nE5, nE3, nE4
	dc.b nEb5, nE5, nE3, nE4, nE5, nE3, nE4, nEb5
	dc.b nE5, nE3, nE4, nE5, nE4, nE5, nE3, nEb5
	dc.b nE4, nE5, nEb5, nE4, nE5, nE3, nE4, nEb5
	dc.b nE5, nA3, nA3, nFs5, nA3, nE5, nA3, nA3
	dc.b nE5, nAb5, nA3, nA3, nCs5, nA3, nA3, nCs5
	dc.b nE5, nB3, nB3, nFs5, nB3, nEb5, nB3, nE5
	dc.b nB3, nEb5, nE5, nB3, nFs5, nB3, nB3, nB4
	dc.b nEb5
	sJump		DPZ_Jump3

DPZ_FM4:
	dc.b nRst, $30

DPZ_Jump4:
	dc.b nRst, $0C
	sPatFM		$04
	sPan		spLeft
	dc.b nE5, $06, nRst, $0C, nD5, $06, nRst, nB4
	dc.b nD5, nE5, nRst, nD5, nRst, nB4, nD5, nE5
	dc.b nRst, $0C, nE5, $06, nRst, $0C, nD5, $06
	dc.b nRst, nB4, nD5, nE5, nRst, nD5, nRst, nB4
	dc.b nRst, nD5, nRst, $0C, nE5, $06, nRst, $0C
	dc.b nD5, $06, nRst, nB4, nD5, nE5, nRst, nD5
	dc.b nRst, nB4, nD5, nE5, nRst, $0C, nE5, $06
	dc.b nRst, $0C, nD5, $06, nRst, nB4, nD5, nE5
	dc.b nRst, nD5, nRst, nB4, nRst, nD5
	sPatFM		$01
	sPan		spRight
	dc.b nA5, $30, sHold, $18, nCs6, nFs5, $30, nB5
	dc.b $2D, nRst, $03
	sPatFM		$04
	sPan		spLeft
	dc.b nRst, $0C, nE5, $06, nRst, $0C, nD5, $06
	dc.b nRst, nB4, nD5, nE5, nRst, nD5, nRst, nB4
	dc.b nD5, nE5, nRst, $0C, nE5, $06, nRst, $0C
	dc.b nD5, $06, nRst, nB4, nD5, nE5, nRst, nD5
	dc.b nRst, nB4, nRst, nD5, nRst, $0C, nE5, $06
	dc.b nRst, $0C, nD5, $06, nRst, nB4, nD5, nE5
	dc.b nRst, nD5, nRst, nB4, nD5, nE5, nRst, $0C
	dc.b nE5, $06, nRst, $0C, nD5, $06, nRst, nB4
	dc.b nD5, nE5, nRst, nD5, nRst, nB4, nRst, nD5
	dc.b nRst, $0C, nE5, $06, nRst, $0C, nD5, $06
	dc.b nRst, nB4, nD5, nE5, nRst, nD5, nRst, nB4
	dc.b nD5, nE5, nRst, $0C, nE5, $06, nRst, $0C
	dc.b nD5, $06, nRst, nB4, nD5, nE5, nRst, nD5
	dc.b nRst, nB4, nRst, nD5
	sPatFM		$01
	sPan		spRight
	dc.b nA5, $30, sHold, $18, nCs6, nFs5, $30, nB5
	sPatFM		$04
	sPan		spLeft
	dc.b nRst, $0C, nE5, $06, nRst, $0C, nD5, $06
	dc.b nRst, nB4, nD5, nE5, nRst, nD5, nRst, nB4
	dc.b nD5, nE5, nRst, $0C, nE5, $06, nRst, $0C
	dc.b nD5, $06, nRst, nB4, nD5, nE5, nRst, nD5
	dc.b nRst, nB4, nRst, nD5
	sPan		spCenter
	dc.b nA5, nA4, nAb5, nA4, nFs5, nA4, nE5, nA4
	dc.b nA5, nA4, nAb5, nA4, nE5, nA4, nFs5, nA4
	dc.b nA5, nA4, nAb5, nA4, nFs5, nA4, nE5, nA4
	dc.b nA5, nA4, nAb5, nA4, nE5, nA4, nFs5, nA4
	dc.b nA5, nC5, nAb5, nC5, nFs5, nC5, nE5, nC5
	dc.b nA5, nC5, nAb5, nC5, nFs5, nC5, nE5, nC5
	dc.b nA5, nAb5, nFs5, nE5, nFs5, nE5, nEb5, nCs5
	dc.b nE5, nEb5, nCs5, nB4, nCs5, nB4, nA4, nAb4
	dc.b nA5, nA4, nAb5, nA4, nFs5, nA4, nE5, nA4
	dc.b nA5, nA4, nAb5, nA4, nFs5, nA4, nE5, nA4
	dc.b nA5, nB4, nAb5, nB4, nFs5, nB4, nE5, nB4
	dc.b nA5, nB4, nAb5, nB4, nFs5, nB4, nE5, nB4
	dc.b nAb5, nCs5, nEb5, nE5, nFs5, nAb5, nA5, nFs5
	dc.b nA5, nD5, nE5, nFs5, nA5, nFs5, nA5, nFs5
	sPatFM		$03
	dc.b nB5, $12, nFs5, nEb5, $0C, nB4, $30
	sPatFM		$04
	sPan		spLeft
	dc.b nRst, $0C, nA5, $06, nRst, nAb5, nRst, $0C
	dc.b nFs5, $06, nAb5, nRst, $0C, nAb5, $06, nRst
	dc.b $0C, nFs5, $06, nAb5, nRst, $0C, nA5, $06
	dc.b nRst, nAb5, nRst, nFs5, nRst, nAb5, nFs5, nRst
	dc.b nAb5, nRst, $0C, nFs5, $06, nAb5, nRst, $0C
	dc.b nA5, $06, nRst, nAb5, nRst, $0C, nFs5, $06
	dc.b nAb5, nRst, $0C, nAb5, $06, nRst, $0C, nFs5
	dc.b $06, nAb5, nRst, $0C, nA5, $06, nRst, nAb5
	dc.b nRst, nFs5, nRst, nAb5, nFs5, nRst, nAb5, nRst
	dc.b $0C, nFs5, $06, nAb5, nRst, $0C, nA5, $06
	dc.b nRst, nAb5, nRst, $0C, nFs5, $06, nAb5, nRst
	dc.b $0C, nAb5, $06, nRst, $0C, nFs5, $06, nAb5
	dc.b nRst, $0C, nA5, $06, nRst, nAb5, nRst, nFs5
	dc.b nRst, nAb5, nFs5, nRst, nAb5, nRst, $0C, nFs5
	dc.b $06, nAb5, nRst, $0C, nA5, $06, nRst, nA5
	dc.b nRst, $0C, nA5, $06, nA5, nRst, $0C, nE5
	dc.b $06, nRst, $0C, nE5, $06, nAb5, nRst, $0C
	dc.b nB5, $06, nRst, nFs5, nRst, nAb5, nRst, nFs5
	dc.b nAb5, nRst, nB5, nRst, $0C, nEb5, $06, nFs5
	sJump		DPZ_Jump4

DPZ_FM5:
	dc.b nRst, $30

DPZ_Jump5:
	dc.b nRst, $30, nRst
	sPatFM		$03
	sPan		spRight
	dc.b nRst, $18, nA5, $0C, nRst, nAb5, nRst, nE5
	dc.b nB4, nRst, $30, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, $18, nA5, $0C, nRst, nAb5, nRst, nE5
	dc.b nB4, nRst, $30, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst
	sPatFM		$01
	dc.b nA4, sHold, $30, nB4, sHold, $30, nC5, sHold
	dc.b $30, nCs5, nB4, nCs5, sHold, $30, nEb5, sHold
	dc.b $30, nCs5, nD5, nEb5, sHold, $30, nRst, $30
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, nRst, nRst, nRst, nRst, nRst
	sJump		DPZ_Jump5

DPZ_PSG1:
	sStop

DPZ_PSG2:
	sStop

DPZ_PSG3:
	sStop
	dc.b $F3, $E7, $80, $30, $80, $30, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $80, $BB, $05, $80	; Unused
	dc.b $13, $BB, $04, $80, $02, $BB, $04, $80	; Unused
	dc.b $0E, $BB, $05, $80, $13, $BB, $06, $01	; Unused
	dc.b $80, $11, $BB, $07, $80, $11, $BB, $04	; Unused
	dc.b $80, $02, $BB, $04, $80, $0E, $BB, $07	; Unused
	dc.b $80, $11, $BB, $06, $01, $80, $11, $80	; Unused
	dc.b $30, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $BA, $05, $80, $13	; Unused
	dc.b $BA, $04, $80, $02, $BA, $04, $80, $0E	; Unused
	dc.b $BA, $05, $80, $13, $BA, $06, $01, $80	; Unused
	dc.b $11, $BA, $07, $80, $11, $BA, $04, $80	; Unused
	dc.b $02, $BA, $04, $80, $0E, $BA, $07, $80	; Unused
	dc.b $11, $BA, $06, $01, $80, $11, $80, $30	; Unused
	dc.b $80, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $80, $80, $80, $80	; Unused
	dc.b $80, $80, $80, $80, $0C, $BA, $06, $BA	; Unused
	dc.b $80, $0C, $BA, $06, $BA, $80, $0C, $BA	; Unused
	dc.b $06, $BA, $80, $0C, $BA, $06, $BA, $80	; Unused
	dc.b $0C, $BA, $06, $BA, $80, $0C, $BA, $06	; Unused
	dc.b $BA, $80, $0C, $BA, $06, $BA, $80, $0C	; Unused
	dc.b $BA, $06, $BA, $80, $0C, $BA, $06, $BA	; Unused
	dc.b $80, $0C, $BA, $06, $BA, $80, $0C, $BA	; Unused
	dc.b $06, $BA, $80, $0C, $BA, $06, $BA, $80	; Unused
	dc.b $0C, $BA, $06, $BA, $80, $0C, $BA, $06	; Unused
	dc.b $BA, $80, $0C, $BA, $06, $BA, $80, $0C	; Unused
	dc.b $BA, $06, $BA, $80, $0C, $BA, $06, $BA	; Unused
	dc.b $80, $0C, $BA, $06, $BA, $80, $0C, $BA	; Unused
	dc.b $06, $BA, $80, $0C, $BA, $06, $BA, $80	; Unused
	dc.b $0C, $BA, $06, $BA, $80, $0C, $BA, $06	; Unused
	dc.b $BA, $80, $0C, $BA, $06, $BA, $80, $0C	; Unused
	dc.b $BA, $06, $BA, $80, $0C, $BA, $06, $BA	; Unused
	dc.b $80, $0C, $BA, $06, $BA, $80, $0C, $BA	; Unused
	dc.b $06, $BA, $80, $0C, $BA, $06, $BA, $80	; Unused
	dc.b $0C, $BA, $06, $BA, $80, $0C, $BA, $06	; Unused
	dc.b $BA, $80, $0C, $BA, $06, $BA, $80, $0C	; Unused
	dc.b $BA, $06, $BA, $F6, $F1, $D2	; Unused

DPZ_DAC:
	dc.b dSnare, $06, dSnare, dKick, $0C, dSnare, dKick

DPZ_Jump6:
	dc.b dKick, $0C, dKick, dSnare, dKick, dKick, $06, dSnare
	dc.b dKick, $0C, dSnare, dKick, dKick, dKick, dSnare, dKick
	dc.b dKick, $06, dSnare, dKick, $0C, dSnare, dKick, dKick
	dc.b dKick, dSnare, dKick, dKick, $06, dSnare, dKick, $0C
	dc.b dSnare, dKick, dKick, dKick, dSnare, dKick, dKick, $06
	dc.b dSnare, dKick, $0C, dSnare, dSnare, dKick, dSnare, $12
	dc.b dKick, $06, dSnare, $0C, dKick, dSnare, $12, dKick
	dc.b $06, dSnare, $0C, dKick, dSnare, $12, dKick, $06
	dc.b dSnare, $0C, dKick, dSnare, $12, dKick, $06, dSnare
	dc.b $0C, dKick, dKick, dSnare, dKick, dKick, $06, dSnare
	dc.b dKick, $0C, dSnare, dKick, dKick, dKick, dSnare, dKick
	dc.b dKick, $06, dSnare, dKick, $0C, dSnare, dSnare, dKick
	dc.b dKick, dSnare, dKick, dKick, $06, dSnare, dKick, $0C
	dc.b dSnare, dKick, dKick, dKick, dSnare, dKick, dKick, $06
	dc.b dSnare, dKick, $0C, dSnare, dKick, dKick, dKick, dSnare
	dc.b dKick, dKick, $06, dSnare, dKick, $0C, dSnare, dKick
	dc.b dKick, dKick, dSnare, dKick, dKick, $06, dSnare, dKick
	dc.b $0C, dSnare, dSnare, dKick, dSnare, $12, dKick, $06
	dc.b dSnare, $0C, dKick, dSnare, $12, dKick, $06, dSnare
	dc.b $0C, dKick, dSnare, $12, dKick, $06, dSnare, $0C
	dc.b dKick, dSnare, $12, dKick, $06, dSnare, $0C, dKick
	dc.b dKick, dSnare, dKick, dKick, $06, dSnare, dKick, $0C
	dc.b dSnare, dKick, dKick, dKick, dSnare, dKick, dKick, $06
	dc.b dSnare, dKick, $0C, dSnare, dSnare, dKick, dKick, dSnare
	dc.b dKick, dKick, $06, dSnare, dKick, $0C, dSnare, dKick
	dc.b dKick, dKick, dSnare, dKick, dKick, $06, dSnare, dKick
	dc.b $0C, dSnare, dKick, dKick, dKick, dSnare, dKick, dKick
	dc.b $06, dSnare, dKick, $0C, dSnare, dKick, dKick, dKick
	dc.b dSnare, dKick, dKick, $06, dSnare, dKick, $0C, dSnare
	dc.b dSnare, dKick, dKick, dSnare, dKick, dKick, $06, dSnare
	dc.b dKick, $0C, dSnare, dKick, dKick, dKick, dSnare, dKick
	dc.b dKick, $06, dSnare, dKick, $0C, dSnare, dKick, dKick
	dc.b dKick, dSnare, dKick, dKick, $06, dSnare, dKick, $0C
	dc.b dSnare, dKick, dKick, dKick, dSnare, dKick, dKick, $06
	dc.b dSnare, dKick, $0C, dSnare, dSnare, dKick, dSnare, $12
	dc.b dKick, $06, dSnare, $0C, dKick, dSnare, $12, dKick
	dc.b $06, dSnare, $0C, dKick, dSnare, $12, dKick, $06
	dc.b dSnare, $0C, dKick, dSnare, $12, dKick, $06, dSnare
	dc.b $0C, dKick, dSnare, $12, dKick, $06, dSnare, $0C
	dc.b dKick, dSnare, $12, dKick, $06, dSnare, $0C, dKick
	dc.b dSnare, $12, dKick, $06, dSnare, $0C, dKick, dSnare
	dc.b $12, dKick, $06, dSnare, $0C, dKick, dSnare, $12
	dc.b dKick, $06, dSnare, $0C, dKick, dSnare, $12, dKick
	dc.b $06, dSnare, $0C, dKick, dSnare, $12, dKick, $06
	dc.b dSnare, $0C, dKick, dSnare, dSnare, $06, dSnare, dSnare
	dc.b dSnare, dKick, $0C, dSnare, $12, dKick, $06, dSnare
	dc.b $0C, dKick, dSnare, $12, dKick, $06, dSnare, $0C
	dc.b dKick, dSnare, $12, dKick, $06, dSnare, $0C, dKick
	dc.b dSnare, dSnare, $06, dSnare, dKick, dSnare
	sJump		DPZ_Jump6

DPZ_Patches:

	; Patch $00
	; $03
	; $31, $F8, $03, $01,	$10, $0F, $11, $16
	; $05, $08, $02, $08,	$00, $00, $00, $00
	; $9F, $0F, $0F, $1F,	$17, $27, $22, $15
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$03, $00, $0F, $00
	spMultiple	$01, $03, $08, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$10, $11, $0F, $16
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$05, $02, $08, $08
	spSustainLv	$09, $00, $00, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$17, $22, $27, $15

	; Patch $01
	; $04
	; $14, $10, $60, $31,	$15, $18, $17, $0C
	; $01, $02, $01, $02,	$00, $00, $00, $00
	; $1F, $1F, $1F, $1F,	$37, $14, $27, $14
	spAlgorithm	$04
	spFeedback	$00
	spDetune	$01, $06, $01, $03
	spMultiple	$04, $00, $00, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$15, $17, $18, $0C
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$01, $01, $02, $02
	spSustainLv	$01, $01, $01, $01
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$37, $27, $14, $14

	; Patch $02
	; $28
	; $3B, $30, $21, $31,	$DF, $DF, $9D, $9F
	; $0C, $07, $0A, $0A,	$07, $07, $07, $09
	; $2F, $1F, $1F, $FF,	$25, $22, $14, $0F
	spAlgorithm	$00
	spFeedback	$05
	spDetune	$03, $02, $03, $03
	spMultiple	$0B, $01, $00, $01
	spRateScale	$03, $02, $03, $02
	spAttackRt	$1F, $1D, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $0A, $07, $0A
	spSustainLv	$02, $01, $01, $0F
	spDecayRt	$07, $07, $07, $09
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$25, $14, $22, $0F

	; Patch $03
	; $2C
	; $39, $30, $7B, $82,	$5F, $5F, $5F, $5F
	; $0F, $02, $16, $09,	$00, $00, $00, $00
	; $FF, $FF, $FF, $FF,	$2A, $13, $10, $13
	spAlgorithm	$04
	spFeedback	$05
	spDetune	$03, $07, $03, $08
	spMultiple	$09, $0B, $00, $02
	spRateScale	$01, $01, $01, $01
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0F, $16, $02, $09
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$00, $00, $00, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$2A, $10, $13, $13

	; Patch $04
	; $3C
	; $02, $02, $00, $02,	$1F, $1F, $1F, $1F
	; $0C, $03, $07, $02,	$04, $05, $04, $05
	; $FF, $FF, $FF, $FF,	$1A, $16, $1E, $16
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $00, $02, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spSustainRt	$0C, $07, $03, $02
	spSustainLv	$0F, $0F, $0F, $0F
	spDecayRt	$04, $04, $05, $05
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1A, $1E, $16, $16
