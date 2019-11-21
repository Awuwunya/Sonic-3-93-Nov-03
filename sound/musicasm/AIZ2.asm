AIZ2_Header:
	sHeaderInit						; Z80 offset is $A210
	sHeaderPatch	AIZ2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $25
	sHeaderDAC	AIZ2_DAC
	sHeaderFM	AIZ2_FM1, $18, $12
	sHeaderFM	AIZ2_FM2, $0C, $19
	sHeaderFM	AIZ2_FM3, $0C, $19
	sHeaderFM	AIZ2_FM4, $0C, $19
	sHeaderFM	AIZ2_FM5, $0C, $19
	sHeaderPSG	AIZ2_PSG1, $F4, $04, $00, v0C
	sHeaderPSG	AIZ2_PSG2, $F4, $04, $00, v0C
	sHeaderPSG	AIZ2_PSG3, $00, $04, $00, v0C
	dc.b $F2, $F2	; Unused

AIZ2_DAC:
	dc.b dKick, $0C, dKick, dSnare, dKick, $06, dSnare, $0C
	dc.b dSnare, $06, dKick, $0C, dSnare, dKick, dKick, dKick
	dc.b dSnare, dKick, $06, dSnare, $0C, dSnare, $06, dKick
	dc.b dSnare, dSnare, $0C, dKick, $06, dSnare, dKick, $0C
	dc.b dKick, dSnare, dKick, $06, dSnare, $0C, dSnare, $06
	dc.b dKick, $0C, dSnare, dKick, dKick, dKick, dSnare, dKick
	dc.b $06, dSnare, $0C, dSnare, $06, dKick, dSnare, dSnare
	dc.b $0C, dKick, $06, dSnare, dKick, $0C, dKick, dSnare
	dc.b dKick, $06, dSnare, $0C, dSnare, $06, dKick, $0C
	dc.b dSnare, dKick, dKick, dKick, dSnare, dKick, $06, dSnare
	dc.b $0C, dSnare, $06, dKick, dSnare, dSnare, $0C, dKick
	dc.b $06, dSnare, dKick, $0C, dKick, dSnare, dKick, $06
	dc.b dSnare, $0C, dSnare, $06, dKick, $0C, dSnare, dKick
	dc.b dKick, dKick, dSnare, dKick, $06, dSnare, $0C, dSnare
	dc.b $06, dKick, dSnare, dSnare, dSnare, dMidTom, $0C, dKick
	dc.b dKick, dSnare, dKick, $06, dSnare, $0C, dSnare, $06
	dc.b dKick, $0C, dSnare, dKick, dKick, dKick, dSnare, dKick
	dc.b $06, dSnare, $0C, dSnare, $06, dKick, dSnare, dSnare
	dc.b $0C, dKick, $06, dSnare, dKick, $0C, dKick, dSnare
	dc.b dKick, $06, dSnare, $0C, dSnare, $06, dKick, $0C
	dc.b dSnare, dKick, dKick, dKick, dSnare, dKick, $06, dSnare
	dc.b $0C, dSnare, $06, dKick, dSnare, dSnare, $0C, dKick
	dc.b $06, dSnare, dKick, $0C, dKick, dSnare, dKick, $06
	dc.b dSnare, $0C, dSnare, $06, dKick, $0C, dSnare, dKick
	dc.b dKick, dKick, dSnare, dKick, $06, dSnare, $0C, dSnare
	dc.b $06, dKick, dSnare, dSnare, $0C, dKick, $06, dSnare
	dc.b dKick, $0C, dKick, dSnare, dKick, $06, dSnare, $0C
	dc.b dSnare, $06, dKick, $0C, dSnare, dKick, dKick, $18
	dc.b dKick, $15, dSnare, $02, dSnare, $01, dSnare, $06
	dc.b dSnare, $0C, dSnare, dSnare, $06, dSnare, $0C, dKick
	dc.b dKick, dSnare, dKick, $06, dSnare, $0C, dSnare, $06
	dc.b dKick, $0C, dSnare, dKick, dKick, dKick, dSnare, dKick
	dc.b $06, dSnare, $0C, dSnare, $06, dKick, dSnare, dSnare
	dc.b $0C, dKick, $06, dSnare, dKick, $0C, dKick, dSnare
	dc.b dKick, $06, dSnare, $0C, dSnare, $06, dKick, $0C
	dc.b dSnare, dKick, dKick, dKick, dSnare, dKick, $06, dSnare
	dc.b $0C, dSnare, $06, dKick, dSnare, dSnare, $0C, dKick
	dc.b $06, dSnare, dKick, $0C, dKick, dSnare, dKick, $06
	dc.b dSnare, $0C, dSnare, $06, dKick, $0C, dSnare, dKick
	dc.b dKick, dKick, dSnare, dKick, $06, dSnare, $0C, dSnare
	dc.b $06, dKick, dSnare, dSnare, $0C, dKick, $06, dSnare
	dc.b dKick, $0C, dKick, dSnare, dKick, $06, dSnare, $0C
	dc.b dSnare, $06, dKick, $0C, dSnare, dKick, dKick, $06
	dc.b dSnare, $0C, dSnare, $06, dMidTom, $0C, dKick, $06
	dc.b dSnare, $0C, dSnare, $06, dHighTom, $0C, dSnare, $06
	dc.b dSnare, dFloorTom, dSnare, dKick, $0C, dKick, dSnare, dKick
	dc.b $06, dSnare, $0C, dSnare, $06, dKick, $0C, dSnare
	dc.b dKick, dKick, dKick, dSnare, dKick, $06, dSnare, $0C
	dc.b dSnare, $06, dKick, dSnare, dSnare, $0C, dKick, $06
	dc.b dSnare, dKick, $0C, dKick, dSnare, dKick, $06, dSnare
	dc.b $0C, dSnare, $06, dKick, $0C, dSnare, dKick, dKick
	dc.b dKick, dSnare, dKick, $06, dSnare, $0C, dSnare, $06
	dc.b dKick, dSnare, dSnare, dSnare, dMidTom, $0C, dKick, dKick
	dc.b dSnare, dKick, $06, dSnare, $0C, dSnare, $06, dKick
	dc.b $0C, dSnare, dKick, dKick, dKick, dSnare, dKick, $06
	dc.b dSnare, $0C, dSnare, $06, dKick, dSnare, dSnare, $0C
	dc.b dKick, $06, dSnare, dKick, $0C, dKick, dSnare, dKick
	dc.b $06, dSnare, $0C, dSnare, $06, dKick, $0C, dSnare
	dc.b dKick, dKick, dKick, dSnare, $06, dSnare, dKick, dSnare
	dc.b $0C, dSnare, $06, dKick, dSnare, dSnare, dSnare, dSnare
	dc.b dSnare, dKick, $0C, dKick, dSnare, dKick, $06, dSnare
	dc.b $0C, dSnare, $06, dKick, $0C, dSnare, dKick, dKick
	dc.b dKick, dSnare, dKick, $06, dSnare, $0C, dSnare, $06
	dc.b dKick, dSnare, dSnare, $0C, dKick, $06, dSnare, dKick
	dc.b $0C, dKick, dSnare, dKick, $06, dSnare, $0C, dSnare
	dc.b $06, dKick, $0C, dSnare, dKick, dKick, dKick, dSnare
	dc.b $06, dKick, $0C, dKick, $06, dHighTom, dMidTom, $0C
	dc.b dFloorTom, $06, dSnare, dSnare, dMidTom, $0C
	sJump		AIZ2_DAC
	dc.b $F2	; Unused

AIZ2_FM1:
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nC1, $0C
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nC2, $03, nRst, $09
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nA0, $0C
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nA1, $03, nRst
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $0C, nBb0, $03, nRst, nA0, $0C, nBb0
	dc.b nG0, nC1
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nC2, $03, nRst, $09
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nA0, $0C
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nA1, $03, nRst
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $0C, nF0, $06, nRst
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF1, $03, nRst, $09
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nG0, $06
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nG1, $0C
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nC1
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nC2, $03, nRst, $09
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nA0, $0C
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nA1, $03, nRst
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $0C, nBb0, $03, nRst, nA0, $0C, nBb0
	dc.b nG0, nC1
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nC2, $03, nRst, $09
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nA0, $0C
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nA1, $03, nRst
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $0C, nF0, $06, nRst
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF1, $03, nRst, $09
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nG0, $06
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nG1, $0C
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nC1
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nC2, $03, nRst, $09
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nA0, $0C
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nA1, $03, nRst
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $0C, nBb0, $03, nRst, nA0, $0C, nBb0
	dc.b nG0, nC1
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nC2, $03, nRst, $09
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nA0, $0C
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nA1, $03, nRst
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $0C, nF0, $06, nRst
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF1, $03, nRst, $09
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nG0, $06
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nG1, $0C
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nC1
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nC2, $03, nRst, $09
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nA0, $0C
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nA1, $03, nRst
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nBb0, $0C, nBb0, $03, nRst, nA0, $0C, nBb0
	dc.b nG0, nF0, $06
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF1, $03, nRst, $09
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF0, $0C
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nF1, $03, nRst
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nG0, $0C, nRst, $06
	sPatFM		$14
	ssDetune	$00
	ssModZ80	$02, $01, $01, $02
	dc.b nG1
	sPatFM		$15
	ssDetune	$00
	ssModZ80	$03, $01, $02, $05
	dc.b nF1, nEb1, nF1, nEb1, nD1, nBb0, nC1, $18
	dc.b nEb1, $12, nF1, $0C, nEb1, $03, nRst, nF1
	dc.b $0C, nG1, nEb1, nC1, $18, nEb1, $12, nF1
	dc.b $0C, nEb1, $03, nRst, nF1, $0C, nG1, nBb1
	dc.b nC1, $18, nEb1, $12, nF1, $0C, nEb1, $03
	dc.b nRst, nF1, $0C, nG1, nEb1, nC1, $18, nEb1
	dc.b $12, nF1, $0C, nEb1, $03, nRst, nF1, $0C
	dc.b nG0, nBb0, nC1, $18, nEb1, $12, nF1, $0C
	dc.b nEb1, $03, nRst, nF1, $0C, nG1, nEb1, nC1
	dc.b $18, nEb1, $12, nF1, $0C, nEb1, $03, nRst
	dc.b nF1, $0C, nG1, nBb1, nC1, $18, nEb1, $12
	dc.b nF1, $0C, nEb1, $03, nRst, nF1, $0C, nF1
	dc.b nEb1, nG0, $18, nD1, $12, nF1, $0C, nFs1
	dc.b $03, nRst, nG1, $0C, nG0, $18, nC1, nC1
	dc.b $12, nEb1, $0C, nC1, $03, nRst, nEb1, $0C
	dc.b nF1, nG1, nF0, $18, nF0, $12, nG0, $0C
	dc.b nF0, $03, nRst, nG0, $0C, nBb0, nB0, nC1
	dc.b $18, nC1, $12, nEb1, $0C, nC1, $03, nRst
	dc.b nEb1, $0C, nF1, nG1, nF0, $18, nF0, $12
	dc.b nG0, $0C, nF0, $03, nRst, nG0, $0C, nBb0
	dc.b nB0, nC1, $18, nC1, $12, nEb1, $0C, nC1
	dc.b $03, nRst, nEb1, $0C, nF1, nG1, nF0, $18
	dc.b nF0, $12, nG0, $0C, nF0, $03, nRst, nG0
	dc.b $0C, nBb0, nB0, nC1, $18, nC1, $12, nEb1
	dc.b $0C, nC1, $03, nRst, nEb1, $0C, nF1, nG1
	dc.b nF0, $12, nF1, $03, nRst, $09, nF0, $06
	dc.b nG0, $18, nG1, $03, nRst, $09, nFs0, $0C
	dc.b nFs1, $03, nRst, $09, nF0, $18, nF0, $12
	dc.b nF0, $0C, nF0, $03, nRst, nC1, $0C, nF1
	dc.b nF0, nG0, $18, nG0, $12, nG0, $0C, nG0
	dc.b $03, nRst, nD1, $0C, nG1, nG0, nC1, nG0
	dc.b nBb0, nG0, $06, nC1, $0C, nC1, $06, nG0
	dc.b $0C, nBb0, nG0, nC1, nG0, nBb0, nG0, $06
	dc.b nC1, $0C, nC1, $06, nG0, $0C, nBb0, nG0
	dc.b nF0, $18, nF0, $12, nF0, $0C, nF0, $03
	dc.b nRst, nC1, $0C, nF1, nF0, nG0, $18, nG0
	dc.b $12, nG0, $0C, nG0, $03, nRst, nD1, $0C
	dc.b nG1, nG0, nC1, nG0, nBb0, nG0, $06, nC1
	dc.b $0C, nC1, $06, nG0, $0C, nBb0, nG0, nC1
	dc.b nC1, nEb1, nEb1, $06, nF1, $0C, nEb1, $06
	dc.b nF1, $0C, nG0, nFs0, nF0, $18, nF0, $12
	dc.b nF0, $0C, nF0, $03, nRst, nC1, $0C, nF1
	dc.b nF0, nG0, $18, nG0, $12, nG0, $0C, nG0
	dc.b $03, nRst, nD1, $0C, nG1, nG0, nAb0, $18
	dc.b nAb0, $12, nAb0, $0C, nAb0, $03, nRst, nEb1
	dc.b $0C, nAb1, nAb0, nBb0, $18, nBb0, $12, nBb0
	dc.b $0C, nBb0, $03, nRst, nD1, $0C, nEb1, nF1
	sJump		AIZ2_FM1
	dc.b $F2	; Unused

AIZ2_FM2:
	dc.b nRst, $0C
	sPatFM		$12
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nG3, $06, nRst, $0C, nA3, $06, nRst, $0C
	dc.b nBb3, $06, nRst, $36
	sPatFM		$06
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	dc.b nC4, $02, nRst, $16, nD3, $02, nRst, $04
	dc.b nC3, $02, nRst, $34
	sPatFM		$12
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nBb3, $06, nRst, $0C, nA3, $06
	dc.b nRst, $0C, nG3, $06, nRst, $2A
	sPatFM		$06
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $30, nF3, $02, nRst, $04, nA3, $02
	dc.b nRst, $04, nF4, $02, nRst, $04, nEb4, $1D
	dc.b nRst, $01
	sPatFM		$12
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nG3, $06, nRst, $0C, nA3, $06
	dc.b nRst, $0C, nBb3, $06, nRst, $2A
	sPatFM		$06
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nC4, $02, nRst, $16, nD3, $02
	dc.b nRst, $04, nC3, $02, nRst, $34
	sPatFM		$12
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nBb3, $06, nRst, $0C, nA3, $06
	dc.b nRst, $0C, nG3, $06, nRst, $2A
	sPatFM		$06
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	dc.b nA3, $02, nRst, $10, nA3, $02, nRst, $10
	dc.b nB3, $17, nRst, $01
	sPatFM		$04
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01
	dc.b nEb3, $0B, nRst, $01, nD3, $05, nRst, $0D
	dc.b nBb2, $05, nRst, $0D, nG2, $3B, nRst, $3D
	sPatFM		$04
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01
	dc.b nEb3, $0B, nRst, $01, nD3, $05, nRst, $0D
	dc.b nBb2, $05, nRst, $0D, nC3, $3B, nRst, $3D
	sPatFM		$04
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01
	dc.b nEb3, $0B, nRst, $01, nD3, $05, nRst, $0D
	dc.b nBb2, $05, nRst, $0D, nG2, $3B, nRst, $31
	sPatFM		$04
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nEb2, $0B, nRst, $01, nG2, $0B
	dc.b nRst, $01, nEb3, $0B, nRst, $01, nD3, $05
	dc.b nRst, $0D, nBb2, $05, nRst, $0D, nC3, $3B
	dc.b nRst, $01
	sPatFM		$17
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nA3, $05, nRst, $01, nB3, $05
	dc.b nRst, $07, nB3, $02, nRst, $04, nB3, $02
	dc.b nRst, $04, nB3, $02, nRst, $04, nB3, $02
	dc.b nRst, $0A, nC4, $05, nRst, $01, nB3, $1D
	dc.b nRst, $0D, nBb3, $0B, nRst, $01, nBb3, $0B
	dc.b nRst, $0D, nA3, $05, nRst, $0D, nBb3, $05
	dc.b nRst, $19, nC3, $05, nRst, $01, nG3, $05
	dc.b nRst, $01, nC4, $05, nRst, $01, nBb3, $05
	dc.b nRst, $07, nBb3, $05, nRst, $07, nA3, $05
	dc.b nRst, $07, nA3, $05, nRst, $07, nF3, $05
	dc.b nRst, $01, nC3, $05, nRst, $1F, nBb3, $0B
	dc.b nRst, $01, nBb3, $0B, nRst, $0D, nA3, $05
	dc.b nRst, $0D, nBb3, $05, nRst, $19, nC3, $05
	dc.b nRst, $01, nG3, $05, nRst, $01, nC4, $05
	dc.b nRst, $01, nBb3, $05, nRst, $07, nBb3, $05
	dc.b nRst, $07, nA3, $05, nRst, $07, nA3, $05
	dc.b nRst, $07, nBb3, $05, nRst, $01, nC4, $05
	dc.b nRst, $1F, nBb3, $0B, nRst, $01, nBb3, $0B
	dc.b nRst, $0D, nA3, $05, nRst, $0D, nBb3, $05
	dc.b nRst, $19, nC3, $05, nRst, $01, nG3, $05
	dc.b nRst, $01, nC4, $05, nRst, $01, nBb3, $05
	dc.b nRst, $07, nBb3, $05, nRst, $07, nA3, $05
	dc.b nRst, $07, nA3, $05, nRst, $07, nF3, $05
	dc.b nRst, $01, nC3, $05, nRst, $1F, nBb3, $0B
	dc.b nRst, $01, nBb3, $0B, nRst, $0D, nA3, $05
	dc.b nRst, $0D, nBb3, $05, nRst, $19, nC3, $05
	dc.b nRst, $01, nG3, $05, nRst, $01, nC4, $05
	dc.b nRst, $01, nBb3, $05, nRst, $07, nBb3, $05
	dc.b nRst, $07, nA3, $05, nRst, $07
	sPatFM		$06
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	dc.b nA3, $02, nRst, $04, nBb3, $02, nRst, $04
	dc.b nC4, $02, nRst, $04, nEb4, $02, nRst, $04
	dc.b nD4, $02, nRst, $04, nBb3, $02, nRst, $04
	dc.b nC4, $02, nRst, $04
	sPatFM		$12
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nAb3, $0B, nRst, $01, nC4, $0B
	dc.b nRst, $01, nG4, $0B, nRst, $01, nF4, $05
	dc.b nRst, $0D, nEb4, $05, nRst, $0D, nD4, $05
	dc.b nRst, $07, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nG3, $05
	dc.b nRst, $07, nB3, $05, nRst, $0D, nC4, $05
	dc.b nRst, $0D, nD4, $05, nRst, $07, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nD4, $03
	dc.b nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b nRst, $01, nD4, $03, nRst, $01, nC4, $03
	dc.b nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b nRst, $01, nC4, $03, nRst, $01, nG3, $03
	dc.b nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b nRst, $01, nG3, $03, nRst, $0D, nAb3, $0B
	dc.b nRst, $01, nC4, $0B, nRst, $01, nG4, $0B
	dc.b nRst, $01, nF4, $05, nRst, $0D, nEb4, $05
	dc.b nRst, $0D, nD4, $05, nRst, $07, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nG3, $05, nRst, $07, nB3, $05
	dc.b nRst, $0D, nC4, $05, nRst, $0D, nD4, $05
	dc.b nRst, $07, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nD4, $05
	dc.b nRst, $01, nEb4, $05, nRst, $01, nF4, $03
	dc.b nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b nRst, $01, nEb4, $05, nRst, $01, nF4, $05
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $2D, nF3, $05, nRst, $01, nG3, $05
	dc.b nRst, $01, nAb3, $05, nRst, $0D, nBb3, $05
	dc.b nRst, $0D, nC4, $05, nRst, $2B, nG3, $05
	dc.b nRst, $01, nAb3, $05, nRst, $01, nBb3, $05
	dc.b nRst, $0D, nC4, $05, nRst, $0D, nD4, $05
	dc.b nRst, $07, nAb2, $05, nRst, $01, nC3, $05
	dc.b nRst, $01, nEb3, $05, nRst, $01, nAb3, $05
	dc.b nRst, $01, nEb3, $05, nRst, $01, nAb3, $05
	dc.b nRst, $01, nC4, $05, nRst, $01, nEb4, $05
	dc.b nRst, $01, nC4, $05, nRst, $01, nEb4, $05
	dc.b nRst, $01, nAb4, $05, nRst, $01, nC5, $05
	dc.b nRst, $01, nAb4, $05, nRst, $01, nC5, $05
	dc.b nRst, $01, nEb5, $05, nRst, $01, nAb5, $05
	dc.b nRst, $60, nRst, $01
	sJump		AIZ2_FM2
	dc.b $F2	; Unused

AIZ2_FM3:
	sPatFM		$12
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nEb3, $06, nRst, $0C, nF3, $06
	dc.b nRst, $0C, nG3, $06, nRst, $36
	sPatFM		$06
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	dc.b nG3, $02, nRst, $16, nF2, $02, nRst, $04
	dc.b nG2, $02, nRst, $34
	sPatFM		$12
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nG3, $06, nRst, $0C, nF3, $06
	dc.b nRst, $0C, nEb3, $06, nRst, $2A
	sPatFM		$06
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $30, nD3, $02, nRst, $04, nF3, $02
	dc.b nRst, $04, nD4, $02, nRst, $04, nC4, $1D
	dc.b nRst, $01
	sPatFM		$12
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nEb3, $06, nRst, $0C, nF3, $06
	dc.b nRst, $0C, nG3, $06, nRst, $2A
	sPatFM		$06
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nG3, $02, nRst, $16, nF2, $02
	dc.b nRst, $04, nG2, $02, nRst, $34
	sPatFM		$12
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nG3, $06, nRst, $0C, nF3, $06
	dc.b nRst, $0C, nEb3, $06, nRst, $2A
	sPatFM		$06
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	dc.b nF3, $02, nRst, $10, nF3, $02, nRst, $10
	dc.b nG3, $17, nRst, $01
	sPatFM		$04
	ssDetune	$FF
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01
	dc.b nEb3, $0B, nRst, $01, nD3, $05, nRst, $0D
	dc.b nBb2, $05, nRst, $0D, nG2, $3B, nRst, $31
	sPatFM		$04
	ssDetune	$FF
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nEb2, $0B, nRst, $01, nG2, $0B
	dc.b nRst, $01, nEb3, $0B, nRst, $01, nD3, $05
	dc.b nRst, $0D, nBb2, $05, nRst, $0D, nC3, $3B
	dc.b nRst, $3D
	sPatFM		$04
	ssDetune	$FF
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01
	dc.b nEb3, $0B, nRst, $01, nD3, $05, nRst, $0D
	dc.b nBb2, $05, nRst, $0D, nG2, $3B, nRst, $3D
	sPatFM		$04
	ssDetune	$FF
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb2, $0B, nRst, $01, nG2, $0B, nRst, $01
	dc.b nEb3, $0B, nRst, $01, nD3, $05, nRst, $0D
	dc.b nBb2, $05, nRst, $0D, nC3, $3B, nRst, $01
	sPatFM		$04
	ssDetune	$FF
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nCs4, $05, nRst, $01, nD4, $05
	dc.b nRst, $07, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $04, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $0A, nEb4, $05, nRst, $01, nD4, $1D
	dc.b nRst, $0D, nG3, $0B, nRst, $01, nG3, $0B
	dc.b nRst, $0D, nF3, $05, nRst, $0D, nG3, $05
	dc.b nRst, $19
	sPatFM		$10
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nC5, $05, nRst, $07, nA4, $05, nRst, $01
	dc.b nBb4, $05, nRst, $07, nG4, $05, nRst, $07
	dc.b nC5, $05, nRst, $07, nA4, $05, nRst, $01
	dc.b nBb4, $05, nRst, $07, nG4, $05, nRst, $1F
	dc.b nG3, $0B, nRst, $01, nG3, $0B, nRst, $0D
	dc.b nF3, $05, nRst, $0D, nG3, $05, nRst, $19
	sPatFM		$10
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nC5, $05, nRst, $07, nA4, $05, nRst, $01
	dc.b nBb4, $05, nRst, $07, nG4, $05, nRst, $07
	dc.b nC5, $05, nRst, $07, nA4, $05, nRst, $01
	dc.b nBb4, $05, nRst, $07, nG4, $05, nRst, $1F
	dc.b nG3, $0B, nRst, $01, nG3, $0B, nRst, $0D
	dc.b nF3, $05, nRst, $0D, nG3, $05, nRst, $19
	sPatFM		$10
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nC5, $05, nRst, $07, nA4, $05, nRst, $01
	dc.b nBb4, $05, nRst, $07, nG4, $05, nRst, $07
	dc.b nC5, $05, nRst, $07, nA4, $05, nRst, $01
	dc.b nBb4, $05, nRst, $07, nG4, $05, nRst, $1F
	dc.b nG3, $0B, nRst, $01, nG3, $0B, nRst, $0D
	dc.b nF3, $05, nRst, $0D, nG3, $05, nRst, $4F
	dc.b nF3, $02, nRst, $04, nG3, $02, nRst, $04
	dc.b nA3, $02, nRst, $04, nC4, $02, nRst, $04
	dc.b nBb3, $02, nRst, $04, nG3, $02, nRst, $04
	dc.b nA3, $02, nRst, $04
	sPatFM		$12
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, $0C, nAb3, $0B, nRst, $01, nC4, $0B
	dc.b nRst, $01, nG4, $0B, nRst, $01, nF4, $05
	dc.b nRst, $0D, nEb4, $05, nRst, $0D, nD4, $05
	dc.b nRst, $07, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nG3, $05
	dc.b nRst, $07, nB3, $05, nRst, $0D, nC4, $05
	dc.b nRst, $0D, nD4, $05, nRst, $07, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nD4, $03
	dc.b nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b nRst, $01, nD4, $03, nRst, $01, nD4, $03
	dc.b nRst, $01, nD4, $03, nRst, $01, nC4, $03
	dc.b nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b nRst, $01, nC4, $03, nRst, $01, nC4, $03
	dc.b nRst, $01, nC4, $03, nRst, $01, nG3, $03
	dc.b nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b nRst, $01, nG3, $03, nRst, $01, nG3, $03
	dc.b nRst, $01, nG3, $03, nRst, $0D, nAb3, $0B
	dc.b nRst, $01, nC4, $0B, nRst, $01, nG4, $0B
	dc.b nRst, $01, nF4, $05, nRst, $0D, nEb4, $05
	dc.b nRst, $0D, nD4, $05, nRst, $07, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nB3, $03, nRst, $01, nB3, $03
	dc.b nRst, $01, nG3, $05, nRst, $07, nB3, $05
	dc.b nRst, $0D, nC4, $05, nRst, $0D, nD4, $05
	dc.b nRst, $07, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nEb4, $03
	dc.b nRst, $01, nEb4, $03, nRst, $01, nD4, $05
	dc.b nRst, $01, nEb4, $05, nRst, $01, nF4, $03
	dc.b nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b nRst, $01, nF4, $03, nRst, $01, nF4, $03
	dc.b nRst, $01, nEb4, $05, nRst, $01, nF4, $05
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $01, nG4, $03, nRst, $01, nG4, $03
	dc.b nRst, $2D, nD3, $05, nRst, $01, nEb3, $05
	dc.b nRst, $01, nF3, $05, nRst, $0D, nG3, $05
	dc.b nRst, $0D, nAb3, $05, nRst, $2B, nEb3, $05
	dc.b nRst, $01, nF3, $05, nRst, $01, nG3, $05
	dc.b nRst, $0D, nAb3, $05, nRst, $0D, nBb3, $05
	dc.b nRst, $07
	sPatFM		$10
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nC5, $23, nRst, $01, nC5, $05, nRst, $01
	dc.b nD5, $05, nRst, $01, nEb5, $11, nRst, $01
	dc.b nD5, $11, nRst, $01, nC5, $0B, nRst, $01
	dc.b nG5, $5F, nRst, $01
	sJump		AIZ2_FM3
	dc.b $F2	; Unused

AIZ2_FM4:
	sPatFM		$16
	ssDetune	$00
	ssModZ80	$0A, $01, $06, $06
	dc.b nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst
	dc.b $06, nG3, $0C, nRst, $06, nG3, $0C, nRst
	dc.b $06, nG3, $0C, nRst, $60
	sPatFM		$16
	ssDetune	$00
	ssModZ80	$0A, $01, $06, $06
	dc.b nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst
	dc.b nA3, $03, nRst, $09, nG3, $06, nRst, $0C
	dc.b nF3
	sPatFM		$17
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nC4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b nC5, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b nBb4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b nBb4, $01, nRst, $05, nC5, $01, nRst, $35
	sPatFM		$16
	ssDetune	$00
	ssModZ80	$0A, $01, $06, $06
	dc.b nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst
	dc.b $06, nG3, $0C, nRst, $06, nG3, $0C, nRst
	dc.b $06, nG3, $0C, nRst, $60
	sPatFM		$16
	ssDetune	$00
	ssModZ80	$0A, $01, $06, $06
	dc.b nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst
	dc.b nA3, $03, nRst, $09, nG3, $06, nRst, $0C
	dc.b nF3, nRst, $60
	sPatFM		$16
	ssDetune	$00
	ssModZ80	$0A, $01, $06, $06
	dc.b nRst, $0C, nEb3, nRst, $06, nEb3, $0C, nRst
	dc.b $06, nF3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b $06, nF3, $0C, nRst, nG3, nRst, $06, nG3
	dc.b $0C, nRst, $06, nF3, $0C, nRst, $06, nF3
	dc.b $0C, nRst, $06, nF3, $0C, nRst, nEb3, nRst
	dc.b $06, nEb3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b $06, nF3, $0C, nRst, $06, nF3, $0C
	sPatFM		$17
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nRst, nA4, $05, nRst, $01, nBb4, $05, nRst
	dc.b $07, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b $04, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b $0A, nC5, $05, nRst, $01, nBb4, $1D, nRst
	dc.b $01
	sPatFM		$16
	ssDetune	$00
	ssModZ80	$0A, $01, $06, $06
	dc.b nRst, $0C, nEb3, nRst, $06, nEb3, $0C, nRst
	dc.b $06, nF3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b $06, nF3, $0C, nRst, nG3, nRst, $06, nG3
	dc.b $0C, nRst, $06, nF3, $0C, nRst, $06, nF3
	dc.b $0C, nRst, $06, nF3, $0C, nRst, nEb3, nRst
	dc.b $06, nEb3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b $06, nF3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b $54
	sPatFM		$04
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b nBb4, $11, nRst, $07, nBb4, $05, nRst, $07
	dc.b nBb4, $05, nRst, $07, nG4, $05, nRst, $07
	dc.b nA4, $05, nRst, $0D, nF4, $05, nRst, $0D
	dc.b nC4, $29, nRst, $07, nEb4, $05, nRst, $01
	dc.b nF4, $05, nRst, $01, nG4, $05, nRst, $0D
	dc.b nC4, $05, nRst, $0D, nBb4, $11, nRst, $07
	dc.b nBb4, $05, nRst, $07, nBb4, $05, nRst, $07
	dc.b nC5, $05, nRst, $07, nA4, $2F, nRst, $25
	dc.b nEb4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b nBb4, $0B, nRst, $07, nBb4, $02, nRst, $04
	dc.b nBb4, $02, nRst, $0A, nBb4, $05, nRst, $07
	dc.b nG4, $05, nRst, $07, nA4, $05, nRst, $0D
	dc.b nF4, $05, nRst, $0D, nC4, $23, nRst, $0D
	dc.b nEb4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b nG4, $05, nRst, $0D, nC4, $05, nRst, $0D
	dc.b nBb4, $11, nRst, $07, nBb4, $05, nRst, $07
	dc.b nBb4, $05, nRst, $07, nC5, $05, nRst, $07
	dc.b nA4, $11, nRst, $01, nBb4, $11, nRst, $01
	dc.b nC5, $23, nRst, $19
	sPatFM		$04
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb3, $2F, nRst, $01, nC3, $2F, nRst, $01
	dc.b nG3, $0F, nRst, $01, nF3, $0F, nRst, $01
	dc.b nEb3, $0F, nRst, $01, nD3, $0F, nRst, $01
	dc.b nEb3, $0F, nRst, $01, nF3, $0F, nRst, $01
	dc.b nG3, $0C
	sPatFM		$04
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nG3, nBb3, $0B, nRst, $01, nEb4, $0B, nRst
	dc.b $01, nD4, $05, nRst, $0D, nBb3, $05, nRst
	dc.b $0D, nC4, $05, nRst, $07, nG3, $2F, nRst
	dc.b $01
	sPatFM		$04
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nBb3, $05, nRst, $0D, nAb3, $05, nRst, $0D
	dc.b nG3, $05, nRst, $07
	sPatFM		$04
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nEb3, $2F, nRst, $01, nC3, $2F, nRst, $01
	dc.b nG3, $0F, nRst, $01, nF3, $0F, nRst, $01
	dc.b nEb3, $0F, nRst, $01, nD3, $0F, nRst, $01
	dc.b nEb3, $0F, nRst, $01, nF3, $0F, nRst, $01
	dc.b nG3, $0C
	sPatFM		$04
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nG3, nBb3, $0B, nRst, $01, nEb4, $0B, nRst
	dc.b $01, nD4, $05, nRst, $0D, nBb3, $05, nRst
	dc.b $0D, nC4, $05, nRst, $07, nG3, $2F, nRst
	dc.b $01, nBb3, $05, nRst, $0D, nAb3, $05, nRst
	dc.b $0D, nG3, $05, nRst, $07
	sPatFM		$06
	ssDetune	$03
	ssModZ80	$0F, $01, $06, $06
	dc.b nAb3, $1D, nRst, $07, nAb3, $02, nRst, $04
	dc.b nBb3, $02, nRst, $04, nC4, $11, nRst, $01
	dc.b nBb3, $11, nRst, $01, nAb3, $0B, nRst, $01
	dc.b nBb3, $1D, nRst, $07, nBb3, $02, nRst, $04
	dc.b nC4, $02, nRst, $04, nD4, $11, nRst, $01
	dc.b nC4, $11, nRst, $01, nBb3, $0B, nRst, $01
	dc.b nC4, $2F, nRst, $01, nAb3, $2F, nRst, $01
	dc.b nEb4, $17, nRst, $01, nD4, $17, nRst, $01
	dc.b nEb4, $17, nRst, $01, nF4, $17, nRst, $01
	sJump		AIZ2_FM4
	dc.b $F2	; Unused

AIZ2_FM5:
	sPatFM		$16
	ssDetune	$00
	ssModZ80	$0A, $01, $06, $06
	dc.b nC3, $0C, nBb3, nC3, $06, nBb3, $0C, nC3
	dc.b $06, nBb3, $0C, nC3, $06, nBb3, $0C, nC3
	dc.b $06, nBb3, $60, $0C
	sPatFM		$16
	ssDetune	$00
	ssModZ80	$0A, $01, $06, $06
	dc.b nC3, nBb3, nC3, $06, nBb3, $0C, nC3, nC4
	dc.b $06, nC3, nBb3, $0C, nC3, $06, nA3, $0C
	sPatFM		$17
	ssDetune	$01
	ssModZ80	$0F, $01, $06, $06
	dc.b nC4, $06, nC4, nC5, nC4, nBb4, nC4, nBb4
	dc.b nC5, $36
	sPatFM		$16
	ssDetune	$00
	ssModZ80	$0A, $01, $06, $06
	dc.b nC3, $0C, nBb3, nC3, $06, nBb3, $0C, nC3
	dc.b $06, nBb3, $0C, nC3, $06, nBb3, $0C, nC3
	dc.b $06, nBb3, $60, $0C
	sPatFM		$16
	ssDetune	$00
	ssModZ80	$0A, $01, $06, $06
	dc.b nC3, nBb3, nC3, $06, nBb3, $0C, nC3, nC4
	dc.b $06, nC3, nBb3, $0C, nC3, $06, nA3, $60
	dc.b $0C
	sPatFM		$16
	ssDetune	$00
	ssModZ80	$0A, $01, $06, $06
	dc.b nC3, nG3, nC3, $06, nG3, $0C, nC3, $06
	dc.b nA3, $0C, nC3, $06, nA3, $0C, nC3, $06
	dc.b nA3, $0C, nC3, nBb3, nC3, $06, nBb3, $0C
	dc.b nC3, $06, nA3, $0C, nC3, $06, nA3, $0C
	dc.b nC3, $06, nA3, $0C, nC3, nG3, nC3, $06
	dc.b nG3, $0C, nC3, $06, nA3, $0C, nC3, $06
	dc.b nA3, $0C, nC3, $06, nA3, $0C
	sPatFM		$04
	ssDetune	$FF
	ssModZ80	$0F, $01, $06, $06
	dc.b sHold, $0C, nD4, $06, nEb4, $0C, nEb4, $06
	dc.b nEb4, nEb4, nEb4, $0C, nF4, $06, nEb4, $1E
	sPatFM		$16
	ssDetune	$00
	ssModZ80	$0A, $01, $06, $06
	dc.b nC3, $0C, nG3, nC3, $06, nG3, $0C, nC3
	dc.b $06, nA3, $0C, nC3, $06, nA3, $0C, nC3
	dc.b $06, nA3, $0C, nC3, nBb3, nC3, $06, nBb3
	dc.b $0C, nC3, $06, nA3, $0C, nC3, $06, nA3
	dc.b $0C, nC3, $06, nA3, $0C, nC3, nG3, nC3
	dc.b $06, nG3, $0C, nC3, $06, nA3, $0C, nC3
	dc.b $06, nA3, $0C, nC3, $06, nA3, $60, $60
	dc.b $60, $60, $60, $60, $60, $60, $0C
	sPatFM		$10
	ssDetune	$00
	ssModZ80	$0F, $01, $06, $06
	dc.b nC5, nA4, $06, nBb4, $0C, nG4, nC5, $42
	dc.b nAb4, $0C, nC5, nG5, nF5, $12, nEb5, nD5
	dc.b $0C, nB4, $24, nG4, $0C, nB4, $12, nC5
	dc.b nD5, $0C, nEb5, $30, nD5, nC5, nG4, $3C
	dc.b nAb4, $0C, nC5, nG5, nF5, $12, nEb5, nD5
	dc.b $0C, nB4, $24, nG4, $0C, nB4, $12, nC5
	dc.b nD5, $0C, nEb5, $24, nD5, $06, nEb5, nF5
	dc.b $24, nEb5, $06, nF5, nG5, $60, $60
	sPatFM		$06
	ssDetune	$FD
	ssModZ80	$0F, $01, $06, $06
	dc.b nD3, $24, nD3, $06, nEb3, nF3, $12, nEb3
	dc.b nD3, $0C, nEb3, $30, nC3, nG3, $18, nF3
	dc.b nG3, nAb3
	sJump		AIZ2_FM5
	dc.b $F2	; Unused

AIZ2_PSG1:
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst
	dc.b $06, nG3, $0C, nRst, $06, nG3, $0C, nRst
	dc.b $06, nG3, $0C, nRst, $60
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst
	dc.b nA3, $03, nRst, $09, nG3, $06, nRst, $0C
	dc.b nF3
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nC4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b nC5, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b nBb4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b nBb4, $01, nRst, $05, nC5, $01, nRst, $35
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst
	dc.b $06, nG3, $0C, nRst, $06, nG3, $0C, nRst
	dc.b $06, nG3, $0C, nRst, $60
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nRst, $0C, nG3, nRst, $06, nG3, $0C, nRst
	dc.b nA3, $03, nRst, $09, nG3, $06, nRst, $0C
	dc.b nF3, nRst, $60
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nRst, $0C, nEb3, nRst, $06, nEb3, $0C, nRst
	dc.b $06, nF3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b $06, nF3, $0C, nRst, nG3, nRst, $06, nG3
	dc.b $0C, nRst, $06, nF3, $0C, nRst, $06, nF3
	dc.b $0C, nRst, $06, nF3, $0C, nRst, nEb3, nRst
	dc.b $06, nEb3, $0C, nRst, $06, nF3, $0C, nRst
	dc.b $06, nF3, $0C, nRst, $06, nF3, $0C
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nRst, nA4, $05, nRst, $01, nBb4, $05, nRst
	dc.b $07, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b $04, nBb4, $02, nRst, $04, nBb4, $02, nRst
	dc.b $0A, nC5, $05, nRst, $01, nBb4, $1D, nRst
	dc.b $60, nRst, nRst, nRst, $01
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nRst, $0C, nA3, $05, nRst, $01, nB3, $05
	dc.b nRst, $07, nB3, $02, nRst, $04, nB3, $02
	dc.b nRst, $04, nB3, $02, nRst, $04, nB3, $02
	dc.b nRst, $0A, nC4, $05, nRst, $01, nB3, $1D
	dc.b nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, $01
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nEb5, nRst, $05, nC5, $01, nRst, $05, nAb4
	dc.b $01, nRst, $05, nEb4, $01, nRst, $05, nC4
	dc.b $01, nRst, $05, nAb3, $01, nRst, $05, nEb3
	dc.b $01, nRst, $05, nC3, $01, nRst, $05, nC5
	dc.b $01, nRst, $05, nAb4, $01, nRst, $05, nEb4
	dc.b $01, nRst, $05, nC4, $01, nRst, $05, nAb3
	dc.b $01, nRst, $05, nEb3, $01, nRst, $05, nC3
	dc.b $01, nRst, $05, nAb2, $01, nRst, $05, nD5
	dc.b $01, nRst, $05, nBb4, $01, nRst, $05, nF4
	dc.b $01, nRst, $05, nD4, $01, nRst, $05, nBb3
	dc.b $01, nRst, $05, nF3, $01, nRst, $05, nD3
	dc.b $01, nRst, $05, nBb2, $01, nRst, $05, nBb4
	dc.b $01, nRst, $05, nF4, $01, nRst, $05, nD4
	dc.b $01, nRst, $05, nBb3, $01, nRst, $05, nF3
	dc.b $01, nRst, $05, nD3, $01, nRst, $05, nBb2
	dc.b $01, nRst, $05, nF2, $01, nRst, $60, nRst
	dc.b nRst, $05
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nEb5, $01, nRst, $05, nC5, $01, nRst, $05
	dc.b nAb4, $01, nRst, $05, nEb4, $01, nRst, $05
	dc.b nC4, $01, nRst, $05, nAb3, $01, nRst, $05
	dc.b nEb3, $01, nRst, $05, nC3, $01, nRst, $05
	dc.b nC5, $01, nRst, $05, nAb4, $01, nRst, $05
	dc.b nEb4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b nAb3, $01, nRst, $05, nEb3, $01, nRst, $05
	dc.b nC3, $01, nRst, $05, nAb2, $01, nRst, $05
	dc.b nD5, $01, nRst, $05, nBb4, $01, nRst, $05
	dc.b nF4, $01, nRst, $05, nD4, $01, nRst, $05
	dc.b nBb3, $01, nRst, $05, nF3, $01, nRst, $05
	dc.b nD3, $01, nRst, $05, nBb2, $01, nRst, $05
	dc.b nBb4, $01, nRst, $05, nF4, $01, nRst, $05
	dc.b nD4, $01, nRst, $05, nBb3, $01, nRst, $05
	dc.b nF3, $01, nRst, $05, nD3, $01, nRst, $05
	dc.b nBb2, $01, nRst, $05, nF2, $01, nRst, $60
	dc.b nRst, nRst, $05
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nEb4, $0B, nRst, $07, nEb4, $02, nRst, $4C
	dc.b nF4, $0B, nRst, $07, nF4, $02, nRst, $60
	dc.b nRst, nRst, $4C
	sJump		AIZ2_PSG1
	dc.b $F2	; Unused

AIZ2_PSG2:
	sVolEnvPSG	v0A
	ssDetune	$FF
	ssModZ80	$0F, $01, $01, $06
	dc.b nC3, $0C, nBb3, nC3, $06, nBb3, $0C, nC3
	dc.b $06, nBb3, $0C, nC3, $06, nBb3, $0C, nC3
	dc.b $06, nBb3, $0C, nRst, $60
	sVolEnvPSG	v0A
	ssDetune	$FF
	ssModZ80	$0F, $01, $01, $06
	dc.b nC3, $0C, nBb3, nC3, $06, nBb3, $0C, nC3
	dc.b $06, nRst, nC4, $03, nRst, nC3, $06, nBb3
	dc.b nRst, nC3, nA3, $0C
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nC4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b nC5, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b nBb4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b nBb4, $01, nRst, $05, nC5, $01, nRst, $35
	sVolEnvPSG	v0A
	ssDetune	$FF
	ssModZ80	$0F, $01, $01, $06
	dc.b nC3, $0C, nBb3, nC3, $06, nBb3, $0C, nC3
	dc.b $06, nBb3, $0C, nC3, $06, nBb3, $0C, nC3
	dc.b $06, nBb3, $0C, nRst, $60
	sVolEnvPSG	v0A
	ssDetune	$FF
	ssModZ80	$0F, $01, $01, $06
	dc.b nC3, $0C, nBb3, nC3, $06, nBb3, $0C, nC3
	dc.b $06, nRst, nC4, $03, nRst, nC3, $06, nBb3
	dc.b nRst, nC3, nA3, $0C, nRst, $60
	sVolEnvPSG	v0A
	ssDetune	$FF
	ssModZ80	$0F, $01, $01, $06
	dc.b nC3, $0C, nG3, nC3, $06, nG3, $0C, nC3
	dc.b $06, nA3, $0C, nC3, $06, nA3, $0C, nC3
	dc.b $06, nA3, $0C, nC3, nBb3, nC3, $06, nBb3
	dc.b $0C, nC3, $06, nA3, $0C, nC3, $06, nA3
	dc.b $0C, nC3, $06, nA3, $0C, nC3, nG3, nC3
	dc.b $06, nG3, $0C, nC3, $06, nA3, $0C, nC3
	dc.b $06, nA3, $0C, nC3, $06, nA3, $0C
	sVolEnvPSG	v0A
	ssDetune	$FF
	ssModZ80	$0F, $01, $01, $06
	dc.b nRst, nD4, $05, nRst, $01, nEb4, $05, nRst
	dc.b $07, nEb4, $02, nRst, $04, nEb4, $02, nRst
	dc.b $04, nEb4, $02, nRst, $04, nEb4, $02, nRst
	dc.b $0A, nF4, $05, nRst, $01, nEb4, $1D, nRst
	dc.b $60, nRst, nRst, nRst, $01
	sVolEnvPSG	v0A
	ssDetune	$FF
	ssModZ80	$0F, $01, $01, $06
	dc.b nRst, $0C, nCs4, $05, nRst, $01, nD4, $05
	dc.b nRst, $07, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $04, nD4, $02, nRst, $04, nD4, $02
	dc.b nRst, $0A, nEb4, $05, nRst, $01, nD4, $1D
	dc.b nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst
	dc.b nRst, nRst, $01
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nEb5, nRst, $05, nC5, $01, nRst, $05, nAb4
	dc.b $01, nRst, $05, nEb4, $01, nRst, $05, nC4
	dc.b $01, nRst, $05, nAb3, $01, nRst, $05, nEb3
	dc.b $01, nRst, $05, nC3, $01, nRst, $05, nC5
	dc.b $01, nRst, $05, nAb4, $01, nRst, $05, nEb4
	dc.b $01, nRst, $05, nC4, $01, nRst, $05, nAb3
	dc.b $01, nRst, $05, nEb3, $01, nRst, $05, nC3
	dc.b $01, nRst, $05, nAb2, $01, nRst, $05, nD5
	dc.b $01, nRst, $05, nBb4, $01, nRst, $05, nF4
	dc.b $01, nRst, $05, nD4, $01, nRst, $05, nBb3
	dc.b $01, nRst, $05, nF3, $01, nRst, $05, nD3
	dc.b $01, nRst, $05, nBb2, $01, nRst, $05, nBb4
	dc.b $01, nRst, $05, nF4, $01, nRst, $05, nD4
	dc.b $01, nRst, $05, nBb3, $01, nRst, $05, nF3
	dc.b $01, nRst, $05, nD3, $01, nRst, $05, nBb2
	dc.b $01, nRst, $05, nF2, $01, nRst, $60, nRst
	dc.b nRst, $05
	sVolEnvPSG	v0A
	ssDetune	$00
	ssModZ80	$0F, $01, $01, $06
	dc.b nEb5, $01, nRst, $05, nC5, $01, nRst, $05
	dc.b nAb4, $01, nRst, $05, nEb4, $01, nRst, $05
	dc.b nC4, $01, nRst, $05, nAb3, $01, nRst, $05
	dc.b nEb3, $01, nRst, $05, nC3, $01, nRst, $05
	dc.b nC5, $01, nRst, $05, nAb4, $01, nRst, $05
	dc.b nEb4, $01, nRst, $05, nC4, $01, nRst, $05
	dc.b nAb3, $01, nRst, $05, nEb3, $01, nRst, $05
	dc.b nC3, $01, nRst, $05, nAb2, $01, nRst, $05
	dc.b nD5, $01, nRst, $05, nBb4, $01, nRst, $05
	dc.b nF4, $01, nRst, $05, nD4, $01, nRst, $05
	dc.b nBb3, $01, nRst, $05, nF3, $01, nRst, $05
	dc.b nD3, $01, nRst, $05, nBb2, $01, nRst, $05
	dc.b nBb4, $01, nRst, $05, nF4, $01, nRst, $05
	dc.b nD4, $01, nRst, $05, nBb3, $01, nRst, $05
	dc.b nF3, $01, nRst, $05, nD3, $01, nRst, $05
	dc.b nBb2, $01, nRst, $05, nF2, $01, nRst, $60
	dc.b nRst, nRst, $05
	sVolEnvPSG	v0A
	ssDetune	$FF
	ssModZ80	$0F, $01, $01, $06
	dc.b nC4, $0B, nRst, $07, nC4, $02, nRst, $4C
	dc.b nD4, $0B, nRst, $07, nD4, $02, nRst, $60
	dc.b nRst, nRst, $4C
	sJump		AIZ2_PSG2
	dc.b $F2	; Unused

AIZ2_PSG3:
	sVolEnvPSG	v02
	sNoisePSG	$E7

AIZ2_Loop1:
	dc.b nBb6, $06, nBb6, nBb6, $0C
	sLoop		$01, $1C, AIZ2_Loop1
	dc.b nBb6, nBb6, nBb6, nBb6, $3C

AIZ2_Loop2:
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6
	sLoop		$01, $03, AIZ2_Loop2
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, $60, $06

AIZ2_Loop3:
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C, nBb6, $06, nBb6, nBb6
	dc.b $0C, nBb6, $06, nBb6, nBb6, nBb6, nBb6, $0C
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, nBb6, $06
	dc.b nBb6, nBb6, $0C, nBb6, $06, nBb6
	sLoop		$01, $04, AIZ2_Loop3

AIZ2_Loop4:
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $0C
	sLoop		$01, $0A, AIZ2_Loop4
	dc.b nBb6, $06, nBb6, nBb6, $0C, nBb6, $06, nBb6
	dc.b nBb6, $0C, nBb6, $06, nBb6, nBb6, $0C, nBb6
	dc.b $06, nBb6, nBb6, $60, $0C
	sJump		AIZ2_Loop1
	dc.b $F2	; Unused

AIZ2_Patches:

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