
;#############################################################################################################
;#############################################################################################################

macro SPC700_RT00_LTU_SPC700_Engine(Base)
%InsertMacroAtXPosition(<Base>)
namespace LTU_SPC700_Engine

Init:
	CLRP
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_DSPStatusFlags
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, #$FF
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_EchoBufferStartOffset
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, #$20
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_EchoDelay
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, #$01
	MOV.b A, #$00
	MOV.b Y, #$FE
	MOV X, A
CODE_0038:
	MOV.w $0100+x, A
	INC X
	BNE.b CODE_0038
	INC.b CODE_0038+$02
	DEC Y
	BNE.b CODE_0038
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_EchoLeftVolume
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_EchoRightVolume
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_MainLeftVolume
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_MainRightVolume
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.b !REGISTER_SPC700_ControlRegister, #$B0
	PCALL.w !REGISTER_SPC700_IPLROMLoc

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_RT01_LTU_SPC700_Engine(Base)
%InsertMacroAtXPosition(<Base>)
namespace LTU_SPC700_Engine

Main:
	CLRP
	MOV.b X, #$1F
	MOV SP, X
	MOV.b !REGISTER_SPC700_ControlRegister, #$30
	MOV.b !REGISTER_SPC700_APUPort3, #$7E
	MOV.b Y, #$08
CODE_100C:
	MOV.w A, DATA_1077-$01+y
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w A, DATA_107F-$01+y
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	DBNZ.b Y, CODE_100C
	MOV.b Y, #$50
	MOV.b A, #!REGISTER_DSP_ChannelXGAINEnvelope
	CLRC
CODE_101D:
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	ADC.b A, #$10
	CMP.b A, #!REGISTER_DSP_ChannelXGAINEnvelope+$80
	BNE.b CODE_101D
	MOV.b Y, #$00
	MOV.b A, #!REGISTER_DSP_ChannelXToggleADSROrGAIN
CODE_102B:
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	ADC.b A, #$10
	CMP.b A, #!REGISTER_DSP_ChannelXToggleADSROrGAIN+$80
	BNE.b CODE_102B
	MOV A, Y
	MOV.b X, #$A5
CODE_1038:
	MOV (X+), A
	CMP.b X, #$B5
	BNE.b CODE_1038
	MOV.b $11, A
	MOV.w $0B01, A
	DEC A
	MOV.b X, #$B5
CODE_1045:
	MOV (X+), A
	CMP.b X, #$C5
	BNE.b CODE_1045
CODE_104A:
	MOV.w A, DATA_1087+y
	MOV.w !REGISTER_SPC700_IPLROMLoc+y, A
	MOV.w A, DATA_1087+$01+y
	MOV.w !REGISTER_SPC700_IPLROMLoc+$01+y, A
	INC Y
	INC Y
	CMP.b Y, #$20
	BNE.b CODE_104A
	MOV.b $13, #$20
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_VoiceBits
	MOV.b A, !REGISTER_SPC700_ReadWriteToDSPRegister
	MOV.b $14, A
	CALL.w CODE_0765
	TCALL 15
	MOV.b A, #$7F
	MOV.b !REGISTER_SPC700_APUPort3, A
CODE_106E:
	CBNE.b !REGISTER_SPC700_APUPort0, CODE_106E
	MOV.b !REGISTER_SPC700_APUPort3, #$7E
	JMP.w CODE_0120

DATA_1077:
	db !REGISTER_DSP_VoiceBits,!REGISTER_DSP_PitchModulation,!REGISTER_DSP_KeyOffBits,!REGISTER_DSP_KeyOnBits,!REGISTER_DSP_SourceDirectoryOffset,!REGISTER_DSP_EchoFeedback,!REGISTER_DSP_EchoEnable,!REGISTER_DSP_NoiseEnable

DATA_107F:
	db $00,$00,$FF,$00,!SourceDirectoryOffset_FE00>>8,$00,$00,$00

DATA_1087:
	dw CODE_058F,CODE_03B3,CODE_03E1,CODE_06CE,CODE_03F3,CODE_060C,CODE_03A0,CODE_02EF
	dw CODE_03CC,CODE_0663,CODE_0675,CODE_0302,CODE_0341,CODE_0908,CODE_090C,CODE_06C4

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_RT02_LTU_SPC700_Engine(Base)
%InsertMacroAtXPosition(<Base>)
namespace LTU_SPC700_Engine

CODE_0120:
	CLR7.b $1B
	MOV.b !REGISTER_SPC700_APUPort2, $1B
CODE_0125:
	MOV.b A, !REGISTER_SPC700_Counter0
	BEQ.b CODE_0137
	SET7.b $1B
	SET6.b $1B
	MOV.b !REGISTER_SPC700_APUPort2, $1B
	CALL.w CODE_016E
	CLR6.b $1B
	BRA.b CODE_0120

CODE_0137:
	MOV.b A, !REGISTER_SPC700_APUPort3
	BEQ.b CODE_0125
CODE_013B:
	MOV.b A, !REGISTER_SPC700_APUPort3
	CMP.b A, !REGISTER_SPC700_APUPort3
	BNE.b CODE_013B
	CMP.b A, #$22
	BCS.b CODE_0125
	SET7.b $1B
	MOV.b !REGISTER_SPC700_APUPort2, $1B
	ASL A
	MOV.b $0C, A
	MOV X, A
	MOV.w A, DATA_0407-$02+x
	MOV.w CODE_0169+$01, A
	MOV.w A, DATA_0407-$01+x
	MOV.w CODE_0169+$02, A
	MOV.b A, !REGISTER_SPC700_APUPort0
	MOV.b X, !REGISTER_SPC700_APUPort1
	MOV.b Y, !REGISTER_SPC700_APUPort2
	MOV.b $09, A
	MOV.b $0A, X
	MOV.b $0B, Y
	MOV.b !REGISTER_SPC700_ControlRegister, $13
CODE_0169:
	CALL.w $FFFF
	BRA.b CODE_0120

CODE_016E:
	MOV.b A, $16
	TSET.w $0015, A
	MOV.b $16, #$00
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_VoiceBits
	MOV.b A, !REGISTER_SPC700_ReadWriteToDSPRegister
	CMP.b A, $14
	BEQ.b CODE_018F
	MOV.b $14, A
	MOV.b A, $17
	OR.b A, $15
	EOR.b A, #$FF
	AND.b A, $14
	BEQ.b CODE_018F
	OR.b A, $15
	MOV.b $15, A
CODE_018F:
	MOV.b X, #$07
CODE_0191:
	MOV.w A, DATA_095D+x
	AND.b A, $15
	BNE.b CODE_01A8
	INC.b $B5+x
	BNE.b CODE_019E
	DEC.b $B5+x
CODE_019E:
	MOV.b A, $AD+x
	BEQ.b CODE_01A8
	DEC A
	MOV.b $AD+x, A
	BNE.b CODE_01A8
	TCALL 8
CODE_01A8:
	DEC X
	BPL.b CODE_0191
	TCALL 13
	BCS.b CODE_01E3
	MOV.b A, $01
	CMP.b A, $00
	BEQ.b CODE_01E3
	MOV X, A
	CLRC
	ADC.b A, #$04
	AND.b A, #$3F
	MOV.b $01, A
	MOV.w A, $FF83+x
	BMI.b CODE_01E3
	MOV Y, A
	MOV.b A, #$FF
	MOV.w $FF83+x, A
	MOV.w A, DATA_0407-$02+y
	MOV.w CODE_01E0+$01, A
	MOV.w A, DATA_0407-$01+y
	MOV.w CODE_01E0+$02, A
	MOV.w A, $FF82+x
	MOV Y, A
	MOV.w A, $FF80+x
	PUSH A
	MOV.w A, $FF81+x
	MOV X, A
	POP A
CODE_01E0:
	CALL.w $FFFF
CODE_01E3:
	BBS7.b $11, CODE_01E7
	RET

CODE_01E7:
	MOV.b X, #$00
CODE_01E9:
	MOV.b A, $5D+x
	CMP.b A, $5E+x
	BNE.b CODE_01F3
	CMP.b A, #$FF
	BEQ.b CODE_0218
CODE_01F3:
	DEC A
	MOV.b $5D+x, A
	INC A
	BNE.b CODE_0218
	DEC.b $5E+x
	BPL.b CODE_0218
	MOV.b $08, X
	TCALL 14
	ASL A
	BCC.b CODE_0221
	MOV Y, A
	MOV.w A, DATA_0449+y
	MOV.w CODE_0210+$01, A
	MOV.w A, DATA_0449+$01+y
	MOV.w CODE_0210+$02, A
CODE_0210:
	CALL.w $FFFF
CODE_0213:
	MOV.b X, $08
	TCALL 9
	BRA.b CODE_01E9

CODE_0218:
	INC X
	INC X
	CMP.b X, $34
	BNE.b CODE_01E9
	JMP.w CODE_09C5

CODE_0221:
	PUSH X
	LSR A
	MOV.b $0F, A
	MOV.b X, $08
	MOV.b A, $1F+x
	ASL A
	MOV X, A
	CLRC
	MOV.w A, $FF00+x
	ADC.b A, $0F
	MOV.b $10, A
	POP X
	TCALL 14
	MOV.b $A3, A
	TCALL 14
	MOV.b $A4, A
	TCALL 13
	BCS.b CODE_0213
	PUSH X
	OR.b A, #!REGISTER_DSP_ChannelXSourceNumber
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.b X, $08
	MOV.b A, $1F+x
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	ASL A
	ASL A
	MOV X, A
	MOV A, Y
	OR.b A, #!REGISTER_DSP_ChannelXLeftVolume
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	PUSH Y
	MOV.b Y, $A4
	PUSH Y
	MOV.w A, $FD02+x
	MUL YA
	PUSH X
	MOV.b X, #$7F
	DIV YA, X
	TCALL 1
	POP X
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	POP Y
	MOV.w A, $FD03+x
	MUL YA
	PUSH X
	MOV.b X, #$7F
	DIV YA, X
	TCALL 1
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.b X, $08
	MOV.b A, $20+x
	LSR A
	POP X
	POP A
	OR.b A, #!REGISTER_DSP_ChannelXPitchLo
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	BCS.b CODE_02A4
	MOV.b Y, #$00
	MOV.b $05, Y
	MOV.b A, $10
	MOV.b X, #$0C
	DIV YA, X
	MOV X, A
	MOV.w A, DATA_0979+y
	MOV.b $04, A
	MOV.w A, DATA_096D+y
	DEC X
	BMI.b CODE_0298
CODE_0290:
	ASL A
	ROL.b $04
	ROL.b $05
	DEC X
	BPL.b CODE_0290
CODE_0298:
	MOVW.b YA, $04
	MOVW.b $02, YA
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	BRA.b CODE_02B4

CODE_02A4:
	MOV.w A, $FD00+x
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.b $02, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.w A, $FD01+x
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.b $03, A
CODE_02B4:
	MOV.b Y, $08
	POP A
	ASL A
	MOV X, A
	MOV.b A, $02
	MOV.b $C5+x, A
	MOV.b A, $03
	MOV.b $C6+x, A
	MOV A, X
	LSR A
	MOV X, A
	MOV.w A, $0020+y
	ASL A
	BCC.b CODE_02D0
	MOV.w A, DATA_095D+x
	TSET.w $0017, A
CODE_02D0:
	MOV.b A, $A3
	MOV.b $AD+x, A
	MOV.w A, $0020+y
	LSR A
	BCC.b CODE_02DE
	MOV.b A, #$00
	MOV.b $AD+x, A
CODE_02DE:
	MOV.w A, $001F+y
	MOV.b $A5+x, A
	MOV.b A, #$00
	MOV.b $B5+x, A
	MOV A, Y
	MOV.b $BD+x, A
	TCALL 4
	TCALL 12
	JMP.w CODE_0213

CODE_02EF:
	MOV.w A, DATA_095D+x
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_KeyOffBits
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	TSET.w $0016, A
	TCLR.w $0017, A
	MOV.b A, #$FF
	MOV.b $BD+x, A
CODE_0301:
	RET

CODE_0302:
	MOV.w A, DATA_0965+x
	OR.b A, #!REGISTER_DSP_ChannelXPitchLo
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV A, X
	ASL A
	MOV Y, A
	MOV.w A, $00C5+y
	MOV.b $04, A
	MOV.b $02, A
	MOV.w A, $00C6+y
	MOV.b $05, A
	LSR A
	ROR.b $02
	LSR A
	ROR.b $02
	LSR A
	ROR.b $02
	MOV.b $03, A
	MOV.b A, $BD+x
	LSR A
	MOV Y, A
	MOV.w A, $0099+y
	BPL.b CODE_0337
	EOR.b A, #$FF
	TCALL 3
	MOVW.b $02, YA
	MOVW.b YA, $04
	SUBW.b YA, $02
	BRA.b CODE_033A

CODE_0337:
	TCALL 3
	ADDW.b YA, $04
CODE_033A:
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	RET

CODE_0341:
	ASL A
	PUSH A
	MOV.b Y, $02
	MUL YA
	MOV.b $02, Y
	POP A
	MOV.b Y, $03
	MUL YA
	MOV.b $03, #$00
	ADDW.b YA, $02
	RET

CODE_0352:
	MOV A, X
	LSR A
	MOV Y, A
	TCALL 14
	SETC
	SBC.b A, #$80
	MOV.w $0099+y, A
	MOV A, Y
	ASL A
	MOV.b X, #$07
CODE_0360:
	CMP.b A, $BD+x
	BNE.b CODE_0367
	PUSH A
	TCALL 4
	POP A
CODE_0367:
	DEC X
	BPL.b CODE_0360
	RET

CODE_036B:
	TCALL 14
	MOV Y, A
	MOV A, X
	LSR A
	MOV X, A
	MOV A, Y
	BNE.b CODE_0373
CODE_0373:
	MOV.b $85+x, A
	RET

CODE_0376:
	MOV.b A, #$FF
	MOV.b $5D+x, A
	MOV.b $5E+x, A
	MOV.b A, $20+x
	ASL A
	ASL A
	BCC.b CODE_038F
	MOV.b A, $35+x
	MOV.b $49+x, A
	MOV.b A, $36+x
	MOV.b $4A+x, A
	MOV.b A, #$00
	MOV.b $71+x, A
	RET

CODE_038F:
	POP A
	POP A
	DEC.b $33
	BNE.b CODE_039D
	BBC7.b $1E, CODE_039A
	TCALL 15
	RET

CODE_039A:
	CLR7.b $11
	RET

CODE_039D:
	JMP.w CODE_0218

CODE_03A0:
	TCALL 14
	CMP.b A, #$FF
	BNE.b CODE_03AC
	TCALL 14
	MOV.b $5D+x, A
	TCALL 14
	MOV.b $5E+x, A
	RET

CODE_03AC:
	MOV.b $5D+x, A
	MOV.b A, #$00
	MOV.b $5E+x, A
	RET

CODE_03B3:
	PUSH Y
	MOV.b Y, #$00
	MOV.b $1A, Y
CODE_03B8:
	INC Y
	TCALL 7
	BCC.b CODE_03B8
	ROL.b $1A
CODE_03BE:
	TCALL 7
	ROL.b $1A
	DBNZ.b Y, CODE_03BE
	MOV.b Y, $1A
	DEC Y
	DEC Y
CODE_03C7:
	MOV.w A, $FFFF+y
	POP Y
	RET

CODE_03CC:
	DEC.b $71+x
	BPL.b CODE_03DE
	MOV.b A, ($49+x)
	MOV.b $72+x, A
	INC.b $49+x
	BNE.b CODE_03DA
	INC.b $4A+x
CODE_03DA:
	MOV.b A, #$07
	MOV.b $71+x, A
CODE_03DE:
	LSR.b $72+x
	RET

CODE_03E1:
	MOV.b A, $15
	MOV.b X, #$07
CODE_03E5:
	ASL A
	BCS.b CODE_03ED
	DEC X
	BPL.b CODE_03E5
	SETC
	RET

CODE_03ED:
	MOV.w A, DATA_0965+x
	MOV Y, A
	CLRC
	RET

CODE_03F3:
	MOV.b $06, A
	MOV.b $07, X
	MOV.b X, #$07
CODE_03F9:
	CMP.b A, $A5+x
	BEQ.b CODE_0402
	DEC X
	BPL.b CODE_03F9
	SETC
	RET

CODE_0402:
	MOV.w A, DATA_0965+x
	CLRC
	RET

DATA_0407:
	dw CODE_06C4,CODE_06A9,CODE_068F,CODE_06E8,CODE_0456,CODE_079C,CODE_07D9,CODE_086F
	dw CODE_0740,CODE_0747,CODE_0799,CODE_058B,CODE_0791,CODE_0788,CODE_082A,CODE_0783
	dw CODE_074E,CODE_0762,CODE_0750,CODE_0827,CODE_0844,CODE_0862,CODE_082D,CODE_0851
	dw CODE_0806,CODE_0765,CODE_087A,CODE_0884,CODE_0451,CODE_077C,CODE_0913,CODE_0560
	dw CODE_056C

DATA_0449:
	dw CODE_0376,CODE_0301,CODE_0352,CODE_036B

CODE_0451:
	MOV !REGISTER_SPC700_ControlRegister, #$80
	PCALL !REGISTER_SPC700_IPLROMLoc
CODE_0456:
	MOV.b $08, X
	MOV.b $07, A
	MOV.b $06, Y
	TCALL 13
	BCC.b CODE_0460
	RET

CODE_0460:
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, $06
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, $06
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, $07
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, $08
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.b A, #$00
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.w $FE00, A
	MOV.w $FE02, A
	MOV.b A, #$FB
	MOV.w $FE01, A
	MOV.w A, DATA_095D+x
	MOV.b $09, A
	TSET.w $0017, A
	MOV.b A, #$00
	MOV.b $B5+x, A
	MOV.b $AD+x, A
	DEC A
	MOV.b $BD+x, A
	MOV A, Y
	OR.b A, #!REGISTER_DSP_ChannelXWriteEnvelope
	MOV.b $0A, A
	CALL.w CODE_04EC
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_KeyOffBits
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, #$00
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_KeyOnBits
	MOV.b A, $09
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	TCLR.w $0015, A
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_VoiceBits
CODE_04B1:
	CALL.w CODE_0526
	CALL.w CODE_04C2
	CALL.w CODE_04EC
	CALL.w CODE_04C2
	BRA.b CODE_04B1

CODE_04BF:
	MOV.b !REGISTER_SPC700_APUPort3, #$7E
CODE_04C2:
	MOV.b A, !REGISTER_SPC700_ReadWriteToDSPRegister
	AND.b A, $09
	BEQ.b CODE_04BF
	TCLR.w !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, $0A
	MOV.b A, !REGISTER_SPC700_ReadWriteToDSPRegister
	BEQ.b CODE_04D6
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_VoiceBits
	RET

CODE_04D6:
	POP A
	POP A
	MOV.b A, $09
	TCLR.w $0017, A
	MOV.b A, #$66
	MOV.b !REGISTER_SPC700_APUPort3, A
CODE_04E1:
	CMP.b A, !REGISTER_SPC700_APUPort3
	BNE.b CODE_04E1
	MOV.b !REGISTER_SPC700_APUPort3, #$7E
	MOV.b !REGISTER_SPC700_ControlRegister, $13
	RET

CODE_04EC:
	MOV.b X, #$00
	MOV.b Y, #$7F
	MOV.b !REGISTER_SPC700_APUPort3, Y
CODE_04F2:
	CMP.b Y, !REGISTER_SPC700_APUPort3
	BNE.b CODE_04F2
	MOV.b A, !REGISTER_SPC700_APUPort0
	MOV.w $FB00+x, A
	MOV.b A, !REGISTER_SPC700_APUPort1
	MOV.w $FB01+x, A
	DEC Y
	INC X
	INC X
CODE_0503:
	CMP.b Y, !REGISTER_SPC700_APUPort3
	BNE.b CODE_0503
	MOV.b A, !REGISTER_SPC700_APUPort0
	MOV.w $FB00+x, A
	MOV.b A, !REGISTER_SPC700_APUPort1
	MOV.w $FB01+x, A
	INC Y
	INC X
	INC X
	CMP.b X, #$FC
	BCC.b CODE_04F2
	MOV.b A, #$FB
	MOV.w $FE03, A
	MOV.b A, #$03
	OR.w A, $FBF3
	MOV.w $FBF3, A
	RET

CODE_0526:
	MOV.b X, #$00
	MOV.b Y, #$7F
	MOV.b !REGISTER_SPC700_APUPort3, Y
CODE_052C:
	CMP.b Y, !REGISTER_SPC700_APUPort3
	BNE.b CODE_052C
	MOV.b A, !REGISTER_SPC700_APUPort0
	MOV.w $FC00+x, A
	MOV.b A, !REGISTER_SPC700_APUPort1
	MOV.w $FC01+x, A
	DEC Y
	INC X
	INC X
CODE_053D:
	CMP.b Y, !REGISTER_SPC700_APUPort3
	BNE.b CODE_053D
	MOV.b A, !REGISTER_SPC700_APUPort0
	MOV.w $FC00+x, A
	MOV.b A, !REGISTER_SPC700_APUPort1
	MOV.w $FC01+x, A
	INC Y
	INC X
	INC X
	CMP.b X, #$FC
	BCC.b CODE_052C
	MOV.b A, #$FC
	MOV.w $FE03, A
	MOV.b A, #$03
	OR.w A, $FCF3
	MOV.w $FCF3, A
	RET

CODE_0560:
	MOV.b X, #$7F
CODE_0562:
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, X
	MOV.b A, !REGISTER_SPC700_ReadWriteToDSPRegister
	MOV.w $F000+x, A
	DEC X
	BPL.b CODE_0562
CODE_056C:
	MOV.b !REGISTER_SPC700_APUPort3, #$7F
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_ChannelXFIRFilerCoefficients
	MOV.b A, #$C4
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.b A, #$2F
	MOV.b $F8, A
	MOV.b A, #$F9
	MOV.b $F9, A
	MOV.b A, #$E5
CODE_0580:
	CMP.b A, !REGISTER_SPC700_APUPort1
	BNE.b CODE_0580
	CALL.w !REGISTER_SPC700_APUPort1
	MOV.b !REGISTER_SPC700_APUPort3, #$7E
	RET

CODE_058B:
	SET7.b $11
	CLR4.b $11
CODE_058F:
	MOV.b $1C, #$00
	MOV.b $1D, #$0B
	MOV.b !REGISTER_SPC700_Timer0, $0D
	SET0.b $13
	MOV.b !REGISTER_SPC700_ControlRegister, $13
	MOV.b A, !REGISTER_SPC700_Counter0
	MOV.b Y, #$01
	MOV.b A, ($1C)+y
	MOV.b $1E, A
	BNE.b CODE_05AA
	JMP.w CODE_0799

CODE_05AA:
	AND.b A, #$7F
	MOV.b $33, A
	ASL A
	MOV.b $34, A
	MOV.w A, $0B00
	ADC.b A, #$00
	MOV.w CODE_03C7+$01, A
	MOV.b A, #$0B
	ADC.b A, #$00
	MOV.w CODE_03C7+$02, A
	MOV.b X, #$00
	MOV.b Y, #$00
CODE_05C4:
	MOV.w A, $0B02+y
	MOV.b $1F+x, A
	INC Y
	INC X
	INC X
	CMP.b X, $34
	BNE.b CODE_05C4
	MOV.b X, #$00
CODE_05D2:
	MOV.w A, $0B02+y
	MOV.b $20+x, A
	INC Y
	INC X
	INC X
	CMP.b X, $34
	BNE.b CODE_05D2
	MOV A, X
	MOV Y, A
	MOV.b X, #$00
	CLRC
CODE_05E3:
	MOV.w A, $0B02+y
	ADC.b A, #$00
	MOV.b $49+x, A
	MOV.b $35+x, A
	MOV.w A, $0B03+y
	ADC.b A, #$0B
	MOV.b $4A+x, A
	MOV.b $36+x, A
	MOV.b A, #$00
	MOV.b $71+x, A
	TCALL 9
	INC Y
	INC Y
	INC X
	INC X
	CMP.b X, $34
	BNE.b CODE_05E3
	MOV.b X, #$85
	MOV.b A, #$00
CODE_0606:
	MOV (X+), A
	CMP.b X, #$A3
	BNE.b CODE_0606
	RET

CODE_060C:
	PUSH A
	TCALL 13
	BCS.b CODE_063B
	OR.b A, #!REGISTER_DSP_ChannelXSourceNumber
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.b A, #$00
	MOV.b $B5+x, A
	MOV.b $AD+x, A
	DEC A
	MOV.b $BD+x, A
	POP A
	MOV.b $A5+x, A
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.b $06, X
	ASL A
	ASL A
	MOV X, A
	MOV.w A, $FE02+x
	OR.w A, $FE03+x
	BEQ.b CODE_0639
	PUSH X
	MOV.b X, $06
	MOV.w A, DATA_095D+x
	TSET.w $0017, A
	POP X
CODE_0639:
	CLRC
	RET

CODE_063B:
	POP A
	ASL A
	MOV X, A
	MOV.w A, $FF01+x
	BEQ.b CODE_0661
	MOV.b X, $00
	MOV.b A, $09
	MOV.w $FF80+x, A
	MOV.b A, $0A
	MOV.w $FF81+x, A
	MOV.b A, $0B
	MOV.w $FF82+x, A
	MOV.b A, $0C
	MOV.w $FF83+x, A
	MOV A, X
	CLRC
	ADC.b A, #$04
	AND.b A, #$3F
	MOV.b $00, A
CODE_0661:
	SETC
	RET

CODE_0663:
	MOV A, Y
	OR.b A, #!REGISTER_DSP_ChannelXPitchLo
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w A, $FD00+x
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.w A, $FD01+x
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	RET

CODE_0675:
	MOV A, Y
	OR.b A, #!REGISTER_DSP_ChannelXLeftVolume
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w A, $FD02+x
	PUSH Y
	PUSH X
	TCALL 2
	POP X
	PUSH X
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.w A, $FD03+x
	TCALL 2
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
CODE_068C:
	POP X
	POP Y
CODE_068E:
	RET

CODE_068F:
	BBS5.b $11, CODE_068E
	PUSH Y
	PUSH X
	TCALL 10
	BCS.b CODE_068C
	TCALL 6
	MOV A, Y
	OR.b A, #!REGISTER_DSP_ChannelXLeftVolume
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	POP A
	TCALL 2
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	POP A
	TCALL 2
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	BRA.b CODE_06CC

CODE_06A9:
	BBS5.b $11, CODE_068E
	PUSH Y
	PUSH X
	TCALL 10
	BCC.b CODE_06B4
CODE_06B1:
	POP X
	POP Y
CODE_06B3:
	RET

CODE_06B4:
	TCALL 5
	MOV A, Y
	OR.b A, #!REGISTER_DSP_ChannelXPitchLo
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	POP A
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	POP A
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	BRA.b CODE_06CC

CODE_06C4:
	BBS5.b $11, CODE_068E
	TCALL 10
	BCS.b CODE_06B3
	TCALL 6
	TCALL 5
CODE_06CC:
	MOV.b X, $06
CODE_06CE:
	BBS6.b $11, CODE_06D6
	CALL.w CODE_0747
	SET6.b $11
CODE_06D6:
	MOV.w A, DATA_095D+x
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_KeyOffBits
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, #$00
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_KeyOnBits
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	TCLR.w $0015, A
CODE_06E7:
	RET

CODE_06E8:
	BBS5.b $11, CODE_06E7
	PUSH X
	PUSH Y
	TCALL 10
	BCS.b CODE_06B1
	MOV.b $07, Y
	MOV A, Y
	OR.b A, #!REGISTER_DSP_ChannelXPitchLo
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w A, $FD00+x
	MOV.b $02, A
	MOV.w A, $FD01+x
	MOV.b $03, A
	MOV.b Y, #$10
	POP A
	MOV X, A
	BMI.b CODE_070A
	MUL YA
	BRA.b CODE_071A

CODE_070A:
	EOR.b A, #$FF
	INC A
	MUL YA
	EOR.b A, #$FF
	MOV X, A
	MOV A, Y
	EOR.b A, #$FF
	INC X
	BNE.b CODE_0718
	INC A
CODE_0718:
	MOV Y, A
	MOV A, X
CODE_071A:
	ADDW.b YA, $02
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	MOV.b A, $07
	OR.b A, #!REGISTER_DSP_ChannelXLeftVolume
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	POP A
	PUSH A
	AND.b A, #$0F
	ASL A
	ASL A
	ASL A
	TCALL 2
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	POP A
	XCN A
	AND.b A, #$0F
	ASL A
	ASL A
	ASL A
	TCALL 2
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	BRA.b CODE_06CC

CODE_0740:
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_DSPStatusFlags
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, #$FF
	RET

CODE_0747:
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_DSPStatusFlags
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, #!DSPStatusFlags_EchoEnableFlag
	RET

CODE_074E:
	SET5.b $11
CODE_0750:
	MOV.b X, #$07
CODE_0752:
	MOV.w A, $00BD+x
	BPL.b CODE_0758
	TCALL 8
CODE_0758:
	DEC X
	BPL.b CODE_0752
CODE_075B:
	MOV.b A, #$00
	MOV.b $00, A
	MOV.b $01, A
	RET

CODE_0762:
	CLR5.b $11
	RET

CODE_0765:
	MOV.b A, #$7F
	MOV.b $18, A
	MOV.b $19, A
	MOV X, A
	MOV Y, A
	CALL.w CODE_086F
	MOV.b $0D, #$A0
	CLR7.b $11
	CLR5.b $11
	CLR4.b $11
	CALL.w CODE_075B
CODE_077C:
	MOV.b X, #$07
CODE_077E:
	TCALL 8
	DEC X
	BPL.b CODE_077E
	RET

CODE_0783:
	MOV.b !REGISTER_SPC700_Timer0, A
	MOV.b $0D, A
	RET

CODE_0788:
	BBC4.b $11, CODE_0790
	MOV.b $11, $12
	CLR4.b $11
CODE_0790:
	RET

CODE_0791:
	BBS4.b $11, CODE_0790
	MOV.b $12, $11
	SET4.b $11
CODE_0799:
	CLR7.b $11
	RET

CODE_079C:
	MOV.b X, #$07
CODE_079E:
	MOV.w A, DATA_0965+x
	OR.b A, #!REGISTER_DSP_ChannelXLeftVolume
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.b A, !REGISTER_SPC700_ReadWriteToDSPRegister
	MOV.w $FFE0+x, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.b A, !REGISTER_SPC700_ReadWriteToDSPRegister
	MOV.w $FFE8+x, A
	DEC X
	BPL.b CODE_079E
	MOV.b Y, #$80
CODE_07B6:
	MOV.b X, #$07
CODE_07B8:
	MOV.w A, DATA_0965+x
	OR.b A, #!REGISTER_DSP_ChannelXLeftVolume
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.b A, !REGISTER_SPC700_ReadWriteToDSPRegister
	DEC A
	BPL.b CODE_07C6
	MOV.b A, #$00
CODE_07C6:
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.b A, !REGISTER_SPC700_ReadWriteToDSPRegister
	DEC A
	BPL.b CODE_07D1
	MOV.b A, #$00
CODE_07D1:
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	DEC X
	BPL.b CODE_07B8
	DBNZ.b Y, CODE_07B6
	RET

CODE_07D9:
	MOV.b Y, #$80
CODE_07DB:
	MOV.b X, #$07
CODE_07DD:
	MOV.w A, DATA_0965+x
	OR.b A, #!REGISTER_DSP_ChannelXLeftVolume
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.b A, !REGISTER_SPC700_ReadWriteToDSPRegister
	INC A
	CMP.w A, $FFE0+x
	BCC.b CODE_07EF
	MOV.w A, $FFE0+x
CODE_07EF:
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.b A, !REGISTER_SPC700_ReadWriteToDSPRegister
	INC A
	CMP.w A, $FFE8+x
	BCC.b CODE_07FE
	MOV.w A, $FFE8+x
CODE_07FE:
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	DEC X
	BPL.b CODE_07DD
	DBNZ.b Y, CODE_07DB
	RET

CODE_0806:
	TCALL 11
	BCS.b CODE_080B
	TCALL 8
	RET

CODE_080B:
	MOV.b A, $01
CODE_080D:
	MOV X, A
	CMP.b X, $00
	BEQ.b CODE_081E
	MOV.b A, $06
	CMP.w A, $FF80+x
	BNE.b CODE_081F
	MOV.b A, #$FF
	MOV.w $FF83+x, A
CODE_081E:
	RET

CODE_081F:
	MOV A, X
	CLRC
	ADC.b A, #$04
	AND.b A, #$3F
	BRA.b CODE_080D

CODE_0827:
	MOV.b $18, A
	RET

CODE_082A:
	MOV.b $19, A
CODE_082C:
	RET

CODE_082D:
	TCALL 11
	BCS.b CODE_082C
	OR.b A, #!REGISTER_DSP_ChannelXLeftVolume
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.b X, $07
	MOV A, X
	AND.b A, $18
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV A, Y
	AND.b A, $18
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	MOV.b A, $06
CODE_0844:
	ASL A
	ASL A
	PUSH A
	MOV A, X
	POP X
	MOV.w $FD02+x, A
	MOV A, Y
	MOV.w $FD03+x, A
CODE_0850:
	RET

CODE_0851:
	TCALL 11
	BCS.b CODE_0850
	OR.b A, #!REGISTER_DSP_ChannelXPitchLo
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.b X, $07
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, X
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	MOV.b A, $06
CODE_0862:
	ASL A
	ASL A
	PUSH A
	MOV A, X
	POP X
	MOV.w $FD00+x, A
	MOV A, Y
	MOV.w $FD01+x, A
	RET

CODE_086F:
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_MainLeftVolume
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, X
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, #!REGISTER_DSP_MainRightVolume
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	RET

CODE_087A:
	PUSH X
	PUSH Y
	CALL.w CODE_0799
	CALL.w CODE_077C
	POP Y
	POP X
CODE_0884:
	MOV.w CODE_08AB+$02, Y
	MOV.w CODE_08BC+$02, Y
	MOV.w CODE_08CF+$02, Y
	MOV.w CODE_08AB+$01, X
	MOV.w CODE_08BC+$01, X
	MOV.w CODE_08CF+$01, X
	MOV.b A, #$00
	MOV Y, A
	MOV X, A
	MOV.b !REGISTER_SPC700_APUPort3, X
CODE_089C:
	MOV.b !REGISTER_SPC700_APUPort2, X
	MOV.b !REGISTER_SPC700_APUPort1, !REGISTER_SPC700_APUPort3
	CMP.b X, !REGISTER_SPC700_APUPort3
	BEQ.b CODE_089C
	MOV.b X, !REGISTER_SPC700_APUPort3
	BMI.b CODE_08E0
	MOV.b A, !REGISTER_SPC700_APUPort0
CODE_08AB:
	MOV.w $FFFF+y, A
	INC Y
	BNE.b CODE_08BA
	INC.w CODE_08AB+$02
	INC.w CODE_08BC+$02
	INC.w CODE_08CF+$02
CODE_08BA:
	MOV.b A, !REGISTER_SPC700_APUPort1
CODE_08BC:
	MOV.w $FFFF+y, A
	INC Y
	BNE.b CODE_08CB
	INC.w CODE_08AB+$02
	INC.w CODE_08BC+$02
	INC.w CODE_08CF+$02
CODE_08CB:
	MOV.b !REGISTER_SPC700_APUPort3, X
	MOV.b A, !REGISTER_SPC700_APUPort2
CODE_08CF:
	MOV.w $FFFF+y, A
	INC Y
	BNE.b CODE_089C
	INC.w CODE_08AB+$02
	INC.w CODE_08BC+$02
	INC.w CODE_08CF+$02
	BRA.b CODE_089C

CODE_08E0:
	MOV.w A, CODE_08AB+$01
	MOV.b $06, A
	MOV.w A, CODE_08AB+$02
	MOV.b $07, A
	MOV A, X
	AND.b A, #$7F
	MOV X, A
	MOV.b A, !REGISTER_SPC700_APUPort0
	MOV.b ($06)+y, A
	DEC X
	BEQ.b CODE_0904
	INCW.b $06
	MOV.b A, !REGISTER_SPC700_APUPort1
	MOV.b ($06)+y, A
	DEC X
	BEQ.b CODE_0904
	INCW.b $06
	MOV.b A, !REGISTER_SPC700_APUPort2
	MOV.b ($06)+y, A
CODE_0904:
	MOV.b !REGISTER_SPC700_APUPort3, #$7E
	RET

CODE_0908:
	MOV.b Y, $18
	BRA.b CODE_090E

CODE_090C:
	MOV.b Y, $19
CODE_090E:
	MUL YA
	MOV.b X, #$7F
	DIV YA, X
	RET

CODE_0913:
	MOV.b X, #$08
	MOV.b Y, #$04
CODE_0917:
	MOV.b A, $B4+x
	CMP.b A, #$10
	BCC.b CODE_0922
	MOV.b $06, #$00
	BRA.b CODE_0927

CODE_0922:
	EOR.b A, #$0F
	XCN A
	MOV.b $06, A
CODE_0927:
	DEC X
	MOV.b A, $B4+x
	CMP.b A, #$10
	BCC.b CODE_0932
	MOV.b A, #$00
	BRA.b CODE_0934

CODE_0932:
	EOR.b A, #$0F
CODE_0934:
	OR.b A, $06
	MOV.w $00D4+y, A
	DEC X
	DBNZ.b Y, CODE_0917
	MOV.b !REGISTER_SPC700_APUPort0, $D5
	MOV.b !REGISTER_SPC700_APUPort1, $D6
	MOV.b !REGISTER_SPC700_APUPort2, $15
	MOV.b A, #$7F
	MOV.b !REGISTER_SPC700_APUPort3, A
CODE_0949:
	CBNE.b !REGISTER_SPC700_APUPort3, CODE_0949
	MOV.b !REGISTER_SPC700_APUPort0, $D7
	MOV.b !REGISTER_SPC700_APUPort1, $D8
	MOV.b A, #$00
	MOV.b !REGISTER_SPC700_APUPort3, A
CODE_0956:
	CBNE.b !REGISTER_SPC700_APUPort3, CODE_0956
	MOV.b !REGISTER_SPC700_APUPort3, #$7E
	RET

DATA_095D:
	db $01,$02,$04,$08,$10,$20,$40,$80

DATA_0965:
	db $00,$10,$20,$30,$40,$50,$60,$70

DATA_096D:
	db $82,$27,$F5,$ED,$13,$69,$F1,$AF,$A6,$DA,$4D,$05

DATA_0979:
	db $2C,$2F,$31,$34,$38,$3B,$3E,$42,$46,$4A,$4F,$54

DATA_0985:
	db $00,$02,$04,$06,$08,$0A,$0C,$0D,$0F,$10,$11,$13,$13,$14,$15,$15
	db $15,$15,$15,$14,$13,$13,$11,$10,$0F,$0D,$0C,$0A,$08,$06,$04,$02
	db $00,$FE,$FC,$FA,$F8,$F6,$F4,$F3,$F1,$F0,$EF,$ED,$ED,$EC,$EB,$EB
	db $EB,$EB,$EB,$EC,$ED,$ED,$EF,$F0,$F1,$F3,$F4,$F6,$F8,$FA,$FC,$FE

CODE_09C5:
	MOV X, #$07
CODE_09C7:
	MOV A, $BD+x
	BMI.b CODE_0A1C
	PUSH X
	LSR A
	MOV X, A
	MOV.b A, $99+x
	BEQ.b CODE_09D5
	POP X
	BRA.b CODE_0A1C

CODE_09D5:
	MOV.b A, $85+x
	MOV Y, A
	MOV.b A, $8F+x
	CLRC
	ADC.b A, #$07
	MOV.b $8F+x, A
	MOV.b $03, #$00
	PUSH X
	AND.b A, #$3F
	MOV X, A
	MOV.w A, DATA_0985+x
	POP X
	BMI.b CODE_09F2
	MUL YA
	MOV.b X, #$7F
	DIV YA, X
	BRA.b CODE_0A00

CODE_09F2:
	EOR.b A, #$FF
	INC A
	MUL YA
	MOV.b X, #$7F
	DIV YA, X
	BEQ.b CODE_0A00
	EOR.b A, #$FF
	INC A
	DEC.b $03
CODE_0A00:
	MOV.b $02, A
	POP X
	MOV.w A, DATA_0965+x
	OR.b A, #!REGISTER_DSP_ChannelXPitchLo
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV A, X
	ASL A
	MOV X, A
	MOV.b Y, $C6+x
	MOV.b A, $C5+x
	ADDW.b YA, $02
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC.b !REGISTER_SPC700_DSPRegisterIndex
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, Y
	MOV A, X
	LSR A
	MOV X, A
CODE_0A1C:
	DEC X
	BPL.b CODE_09C7
	RET

CODE_0A20:
	POP X
	BRA.b CODE_0A1C

UNK_0A23:
	db "v2.8 John Schappert/Jason Andersen 5/9/93"

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################

macro SPC700_LTU_GlobalSampleBank(Base)
%InsertMacroAtXPosition(<Base>)
namespace LTU_GlobalSampleBank

Ptrs:
	dw SPC700_Sample00	:	dw SPC700_Sample00+$1B

SPC700_Sample00:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################
